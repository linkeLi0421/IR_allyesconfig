; ModuleID = '/llk/IR_all_yes/kernel/sched/debug.c_pt.bc'
source_filename = "../kernel/sched/debug.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.rq = type { %struct.raw_spinlock, i32, i32, i32, [8 x i8], %struct.__call_single_data, i32, %struct.atomic_t, i32, i64, [24 x i8], [2 x %struct.uclamp_rq], i32, [76 x i8], %struct.cfs_rq, %struct.rt_rq, %struct.dl_rq, %struct.list_head, ptr, i32, ptr, ptr, ptr, i32, ptr, i32, i64, [88 x i8], i64, i64, i32, %struct.atomic_t, i64, i32, i32, ptr, ptr, i32, i32, ptr, i8, i8, i32, i32, i32, %struct.cpu_stop_work, i32, i32, %struct.list_head, [12 x i8], %struct.sched_avg, %struct.sched_avg, %struct.sched_avg, %struct.sched_avg, i64, i64, i32, i64, i64, %struct.rcuwait, i64, i64, i64, i32, i32, %struct.__call_single_data, %struct.hrtimer, i64, %struct.sched_info, i64, i32, i32, i32, i32, i32, ptr, i32, i32, %struct.cpu_stop_work, ptr, ptr, i32, i32, %struct.rb_root, i32, i32, i32, i32, i32, i32, i64, [80 x i8] }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.uclamp_rq = type { i32, [5 x %struct.uclamp_bucket] }
%struct.uclamp_bucket = type { i32 }
%struct.cfs_rq = type { %struct.load_weight, i32, i32, i32, i32, i64, i64, i32, i64, i64, %struct.rb_root_cached, ptr, ptr, ptr, ptr, i32, [36 x i8], %struct.sched_avg, i64, [120 x i8], %struct.anon.45, i32, i32, i32, i32, i64, ptr, ptr, i32, %struct.list_head, ptr, i32, i32, i64, i64, i64, i64, i32, i32, %struct.list_head, [24 x i8] }
%struct.load_weight = type { i32, i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.anon.45 = type { %struct.raw_spinlock, i32, i32, i32, i32, [68 x i8] }
%struct.rt_rq = type { %struct.rt_prio_array, i32, i32, %struct.anon.47, i32, i32, i32, %struct.plist_head, i32, i32, i64, i64, %struct.raw_spinlock, i32, ptr, ptr }
%struct.rt_prio_array = type { [4 x i32], [100 x %struct.list_head] }
%struct.anon.47 = type { i32, i32 }
%struct.plist_head = type { %struct.list_head }
%struct.dl_rq = type { %struct.rb_root_cached, i32, %struct.anon.48, i32, i32, %struct.rb_root_cached, i64, i64, i64, i64 }
%struct.anon.48 = type { i64, i64 }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t, %union.anon }
%union.anon = type { i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.sd_flag_debug = type { i32, ptr }
%struct.uts_namespace = type { %struct.new_utsname, ptr, ptr, %struct.ns_common }
%struct.new_utsname = type { [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8] }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.111, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr, i32, [36 x i8], %struct.sched_avg }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr, ptr, ptr, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.uclamp_se = type { i16, [2 x i8] }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [24 x i8] }
%union.rcu_special = type { i32 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.51 }
%union.anon.51 = type { %struct.anon.52 }
%struct.anon.52 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.111 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.sched_domain = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i64, [3 x i32], [3 x i32], [3 x i32], [3 x i32], [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, %union.anon.49, ptr, i32, [0 x i32] }
%union.anon.49 = type { %struct.callback_head }
%struct.cgroup = type { %struct.cgroup_subsys_state, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, %struct.cgroup_file, %struct.cgroup_file, i16, i16, i16, i16, [14 x ptr], ptr, %struct.list_head, [14 x %struct.list_head], ptr, ptr, ptr, %struct.list_head, %struct.cgroup_base_stat, %struct.cgroup_base_stat, %struct.prev_cputime, %struct.list_head, %struct.mutex, %struct.wait_queue_head, %struct.work_struct, %struct.psi_group, %struct.cgroup_bpf, %struct.atomic_t, %struct.cgroup_freezer_state, [0 x i64] }
%struct.cgroup_subsys_state = type { ptr, ptr, %struct.percpu_ref, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i64, %struct.atomic_t, %struct.work_struct, %struct.rcu_work, ptr }
%struct.percpu_ref = type { i32, ptr }
%struct.rcu_work = type { %struct.work_struct, %struct.callback_head, ptr }
%struct.cgroup_file = type { ptr, i32, %struct.timer_list }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.cgroup_base_stat = type { %struct.task_cputime }
%struct.task_cputime = type { i64, i64, i64 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.psi_group = type { %struct.mutex, ptr, [6 x i64], i64, i64, %struct.delayed_work, [2 x [6 x i64]], [6 x [3 x i32]], ptr, %struct.timer_list, %struct.wait_queue_head, %struct.atomic_t, %struct.mutex, %struct.list_head, [6 x i32], i32, i64, [6 x i64], i64, i64 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.cgroup_bpf = type { [23 x ptr], [23 x %struct.list_head], [23 x i32], %struct.list_head, ptr, %struct.percpu_ref, %struct.work_struct }
%struct.cgroup_freezer_state = type { i8, i32, i32, i32 }
%struct.task_group = type { %struct.cgroup_subsys_state, ptr, ptr, i32, i32, [72 x i8], %struct.atomic_t, ptr, ptr, %struct.rt_bandwidth, %struct.callback_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.cfs_bandwidth, [2 x i32], [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [72 x i8] }
%struct.rt_bandwidth = type { %struct.raw_spinlock, i64, i64, %struct.hrtimer, i32 }
%struct.cfs_bandwidth = type { %struct.raw_spinlock, i64, i64, i64, i64, i64, i64, i8, i8, i8, %struct.hrtimer, %struct.hrtimer, %struct.list_head, i32, i32, i32, i64, i64 }
%struct.sched_entity_stats = type { %struct.sched_entity, %struct.sched_statistics }
%struct.root_domain = type { %struct.atomic_t, %struct.atomic_t, %struct.callback_head, ptr, ptr, i32, i32, ptr, %struct.atomic_t, %struct.dl_bw, %struct.cpudl, i64, %struct.irq_work, %struct.raw_spinlock, i32, i32, %struct.atomic_t, %struct.atomic_t, ptr, %struct.cpupri, i32, ptr }
%struct.dl_bw = type { %struct.raw_spinlock, i64, i64 }
%struct.cpudl = type { %struct.raw_spinlock, i32, ptr, ptr }
%struct.irq_work = type { %struct.__call_single_node, ptr, %struct.rcuwait }
%struct.cpupri = type { [101 x %struct.cpupri_vec], ptr }
%struct.cpupri_vec = type { %struct.atomic_t, ptr }
%struct.signal_struct = type { %struct.refcount_struct, %struct.atomic_t, i32, %struct.list_head, %struct.wait_queue_head, ptr, %struct.sigpending, %struct.hlist_head, i32, i32, ptr, i32, i32, ptr, i8, i32, %struct.list_head, %struct.hrtimer, i64, [2 x %struct.cpu_itimer], %struct.thread_group_cputimer, %struct.posix_cputimers, [4 x ptr], ptr, i32, ptr, ptr, %struct.seqlock_t, i64, i64, i64, i64, i64, i64, %struct.prev_cputime, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.task_io_accounting, i64, [16 x %struct.rlimit], %struct.pacct_struct, ptr, i32, ptr, i8, i16, i16, ptr, %struct.mutex, %struct.rw_semaphore }
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
%struct.file = type { %union.anon.17, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.17 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.130, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.131, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.132, ptr, %struct.address_space, %struct.list_head, %union.anon.133, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.130 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.131 = type { %struct.callback_head }
%union.anon.132 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%union.anon.133 = type { ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }

@sched_feat_keys = dso_local global { [25 x { %struct.atomic_t, { ptr } }], [56 x i8] } { [25 x { %struct.atomic_t, { ptr } }] [{ %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } }, { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } }, { %struct.atomic_t, { ptr } } zeroinitializer, { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } }, { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } }, { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } }, { %struct.atomic_t, { ptr } } zeroinitializer, { %struct.atomic_t, { ptr } } zeroinitializer, { %struct.atomic_t, { ptr } } zeroinitializer, { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } }, { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } }, { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } }, { %struct.atomic_t, { ptr } } zeroinitializer, { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } }, { %struct.atomic_t, { ptr } } zeroinitializer, { %struct.atomic_t, { ptr } } zeroinitializer, { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } }, { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } }, { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } }, { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } }, { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } }, { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } }, { %struct.atomic_t, { ptr } } zeroinitializer, { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } }, { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } }], [56 x i8] zeroinitializer }, align 32
@__initcall__kmod_debug__486_343_sched_init_debug7 = internal global ptr @sched_init_debug, section ".initcall7.init", align 4
@debugfs_sched = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@sd_sysctl_cpus = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__cpu_possible_mask = external dso_local local_unnamed_addr global %struct.cpumask, align 4
@sd_dentry = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"domains\00", [24 x i8] zeroinitializer }, align 32
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"cpu%d\00", [26 x i8] zeroinitializer }, align 32
@runqueues = external dso_local global %struct.rq, section ".data..percpu..shared_aligned", align 128
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@update_sched_domain_debugfs.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@sched_domains_mutex = external dso_local global %struct.mutex, align 4
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"kernel/sched/debug.c\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"domain%d\00", [23 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@print_cfs_rq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 590, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\01c\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"print_cfs_rq\00", [19 x i8] zeroinitializer }, align 32
@print_cfs_rq._entry_ptr = internal global ptr @print_cfs_rq._entry, section ".printk_index", align 4
@sched_debug_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.1 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.375, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@group_path = internal global { [4096 x i8], [1024 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cfs_rq[%d]:%s\0A\00", [17 x i8] zeroinitializer }, align 32
@print_cfs_rq._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.7, ptr @.str.2, i32 591, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\01ccfs_rq[%d]:%s\0A\00", [47 x i8] zeroinitializer }, align 32
@print_cfs_rq._entry_ptr.11 = internal global ptr @print_cfs_rq._entry.9, section ".printk_index", align 4
@print_cfs_rq._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.7, ptr @.str.2, i32 591, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@print_cfs_rq._entry_ptr.14 = internal global ptr @print_cfs_rq._entry.13, section ".printk_index", align 4
@.str.15 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"  .%-30s: %Ld.%06ld\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"exec_clock\00", [21 x i8] zeroinitializer }, align 32
@print_cfs_rq._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.7, ptr @.str.2, i32 597, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\01c  .%-30s: %Ld.%06ld\0A\00", [41 x i8] zeroinitializer }, align 32
@print_cfs_rq._entry_ptr.19 = internal global ptr @print_cfs_rq._entry.17, section ".printk_index", align 4
@.str.20 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"MIN_vruntime\00", [19 x i8] zeroinitializer }, align 32
@print_cfs_rq._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.7, ptr @.str.2, i32 609, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@print_cfs_rq._entry_ptr.22 = internal global ptr @print_cfs_rq._entry.21, section ".printk_index", align 4
@.str.23 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"min_vruntime\00", [19 x i8] zeroinitializer }, align 32
@print_cfs_rq._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.7, ptr @.str.2, i32 611, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@print_cfs_rq._entry_ptr.25 = internal global ptr @print_cfs_rq._entry.24, section ".printk_index", align 4
@.str.26 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"max_vruntime\00", [19 x i8] zeroinitializer }, align 32
@print_cfs_rq._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.7, ptr @.str.2, i32 613, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@print_cfs_rq._entry_ptr.28 = internal global ptr @print_cfs_rq._entry.27, section ".printk_index", align 4
@.str.29 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"spread\00", [25 x i8] zeroinitializer }, align 32
@print_cfs_rq._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.7, ptr @.str.2, i32 616, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@print_cfs_rq._entry_ptr.31 = internal global ptr @print_cfs_rq._entry.30, section ".printk_index", align 4
@.str.32 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"spread0\00", [24 x i8] zeroinitializer }, align 32
@print_cfs_rq._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.7, ptr @.str.2, i32 619, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@print_cfs_rq._entry_ptr.34 = internal global ptr @print_cfs_rq._entry.33, section ".printk_index", align 4
@.str.35 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"  .%-30s: %d\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"nr_spread_over\00", [17 x i8] zeroinitializer }, align 32
@print_cfs_rq._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.7, ptr @.str.2, i32 621, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\01c  .%-30s: %d\0A\00", [16 x i8] zeroinitializer }, align 32
@print_cfs_rq._entry_ptr.39 = internal global ptr @print_cfs_rq._entry.37, section ".printk_index", align 4
@.str.40 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"nr_running\00", [21 x i8] zeroinitializer }, align 32
@print_cfs_rq._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.7, ptr @.str.2, i32 622, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@print_cfs_rq._entry_ptr.42 = internal global ptr @print_cfs_rq._entry.41, section ".printk_index", align 4
@.str.43 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"h_nr_running\00", [19 x i8] zeroinitializer }, align 32
@print_cfs_rq._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.7, ptr @.str.2, i32 623, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@print_cfs_rq._entry_ptr.45 = internal global ptr @print_cfs_rq._entry.44, section ".printk_index", align 4
@.str.46 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"idle_nr_running\00", [16 x i8] zeroinitializer }, align 32
@print_cfs_rq._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.7, ptr @.str.2, i32 625, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@print_cfs_rq._entry_ptr.48 = internal global ptr @print_cfs_rq._entry.47, section ".printk_index", align 4
@.str.49 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"idle_h_nr_running\00", [46 x i8] zeroinitializer }, align 32
@print_cfs_rq._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.7, ptr @.str.2, i32 627, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@print_cfs_rq._entry_ptr.51 = internal global ptr @print_cfs_rq._entry.50, section ".printk_index", align 4
@.str.52 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"  .%-30s: %ld\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"load\00", [27 x i8] zeroinitializer }, align 32
@print_cfs_rq._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.7, ptr @.str.2, i32 628, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\01c  .%-30s: %ld\0A\00", [47 x i8] zeroinitializer }, align 32
@print_cfs_rq._entry_ptr.56 = internal global ptr @print_cfs_rq._entry.54, section ".printk_index", align 4
@.str.57 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"  .%-30s: %lu\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"load_avg\00", [23 x i8] zeroinitializer }, align 32
@print_cfs_rq._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.7, ptr @.str.2, i32 631, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\01c  .%-30s: %lu\0A\00", [47 x i8] zeroinitializer }, align 32
@print_cfs_rq._entry_ptr.61 = internal global ptr @print_cfs_rq._entry.59, section ".printk_index", align 4
@.str.62 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"runnable_avg\00", [19 x i8] zeroinitializer }, align 32
@print_cfs_rq._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.7, ptr @.str.2, i32 633, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@print_cfs_rq._entry_ptr.64 = internal global ptr @print_cfs_rq._entry.63, section ".printk_index", align 4
@.str.65 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"util_avg\00", [23 x i8] zeroinitializer }, align 32
@print_cfs_rq._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.7, ptr @.str.2, i32 635, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@print_cfs_rq._entry_ptr.67 = internal global ptr @print_cfs_rq._entry.66, section ".printk_index", align 4
@.str.68 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"  .%-30s: %u\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"util_est_enqueued\00", [46 x i8] zeroinitializer }, align 32
@print_cfs_rq._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.7, ptr @.str.2, i32 637, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\01c  .%-30s: %u\0A\00", [16 x i8] zeroinitializer }, align 32
@print_cfs_rq._entry_ptr.72 = internal global ptr @print_cfs_rq._entry.70, section ".printk_index", align 4
@.str.73 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"removed.load_avg\00", [47 x i8] zeroinitializer }, align 32
@print_cfs_rq._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.7, ptr @.str.2, i32 639, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@print_cfs_rq._entry_ptr.75 = internal global ptr @print_cfs_rq._entry.74, section ".printk_index", align 4
@.str.76 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"removed.util_avg\00", [47 x i8] zeroinitializer }, align 32
@print_cfs_rq._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.7, ptr @.str.2, i32 641, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@print_cfs_rq._entry_ptr.78 = internal global ptr @print_cfs_rq._entry.77, section ".printk_index", align 4
@.str.79 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"removed.runnable_avg\00", [43 x i8] zeroinitializer }, align 32
@print_cfs_rq._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.7, ptr @.str.2, i32 643, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@print_cfs_rq._entry_ptr.81 = internal global ptr @print_cfs_rq._entry.80, section ".printk_index", align 4
@.str.82 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tg_load_avg_contrib\00", [44 x i8] zeroinitializer }, align 32
@print_cfs_rq._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.7, ptr @.str.2, i32 646, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@print_cfs_rq._entry_ptr.84 = internal global ptr @print_cfs_rq._entry.83, section ".printk_index", align 4
@.str.85 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"tg_load_avg\00", [20 x i8] zeroinitializer }, align 32
@print_cfs_rq._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.7, ptr @.str.2, i32 648, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@print_cfs_rq._entry_ptr.87 = internal global ptr @print_cfs_rq._entry.86, section ".printk_index", align 4
@.str.88 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"throttled\00", [22 x i8] zeroinitializer }, align 32
@print_cfs_rq._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.7, ptr @.str.2, i32 653, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@print_cfs_rq._entry_ptr.90 = internal global ptr @print_cfs_rq._entry.89, section ".printk_index", align 4
@.str.91 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"throttle_count\00", [17 x i8] zeroinitializer }, align 32
@print_cfs_rq._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.7, ptr @.str.2, i32 655, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@print_cfs_rq._entry_ptr.93 = internal global ptr @print_cfs_rq._entry.92, section ".printk_index", align 4
@print_rt_rq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.94, ptr @.str.2, i32 666, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"print_rt_rq\00", [20 x i8] zeroinitializer }, align 32
@print_rt_rq._entry_ptr = internal global ptr @print_rt_rq._entry, section ".printk_index", align 4
@.str.95 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rt_rq[%d]:%s\0A\00", [18 x i8] zeroinitializer }, align 32
@print_rt_rq._entry.96 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.94, ptr @.str.2, i32 667, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\01crt_rq[%d]:%s\0A\00", [16 x i8] zeroinitializer }, align 32
@print_rt_rq._entry_ptr.98 = internal global ptr @print_rt_rq._entry.96, section ".printk_index", align 4
@print_rt_rq._entry.99 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.94, ptr @.str.2, i32 667, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@print_rt_rq._entry_ptr.100 = internal global ptr @print_rt_rq._entry.99, section ".printk_index", align 4
@.str.101 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rt_nr_running\00", [18 x i8] zeroinitializer }, align 32
@print_rt_rq._entry.102 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.94, ptr @.str.2, i32 680, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@print_rt_rq._entry_ptr.103 = internal global ptr @print_rt_rq._entry.102, section ".printk_index", align 4
@.str.104 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rt_nr_migratory\00", [16 x i8] zeroinitializer }, align 32
@print_rt_rq._entry.105 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.94, ptr @.str.2, i32 682, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@print_rt_rq._entry_ptr.106 = internal global ptr @print_rt_rq._entry.105, section ".printk_index", align 4
@.str.107 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"  .%-30s: %Ld\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rt_throttled\00", [19 x i8] zeroinitializer }, align 32
@print_rt_rq._entry.109 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.94, ptr @.str.2, i32 684, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\01c  .%-30s: %Ld\0A\00", [47 x i8] zeroinitializer }, align 32
@print_rt_rq._entry_ptr.111 = internal global ptr @print_rt_rq._entry.109, section ".printk_index", align 4
@.str.112 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rt_time\00", [24 x i8] zeroinitializer }, align 32
@print_rt_rq._entry.113 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.94, ptr @.str.2, i32 685, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@print_rt_rq._entry_ptr.114 = internal global ptr @print_rt_rq._entry.113, section ".printk_index", align 4
@.str.115 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rt_runtime\00", [21 x i8] zeroinitializer }, align 32
@print_rt_rq._entry.116 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.94, ptr @.str.2, i32 686, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@print_rt_rq._entry_ptr.117 = internal global ptr @print_rt_rq._entry.116, section ".printk_index", align 4
@print_dl_rq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.118, ptr @.str.2, i32 697, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"print_dl_rq\00", [20 x i8] zeroinitializer }, align 32
@print_dl_rq._entry_ptr = internal global ptr @print_dl_rq._entry, section ".printk_index", align 4
@.str.119 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"dl_rq[%d]:\0A\00", [20 x i8] zeroinitializer }, align 32
@print_dl_rq._entry.120 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.118, ptr @.str.2, i32 698, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\01cdl_rq[%d]:\0A\00", [18 x i8] zeroinitializer }, align 32
@print_dl_rq._entry_ptr.122 = internal global ptr @print_dl_rq._entry.120, section ".printk_index", align 4
@.str.123 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dl_nr_running\00", [18 x i8] zeroinitializer }, align 32
@print_dl_rq._entry.124 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.118, ptr @.str.2, i32 703, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@print_dl_rq._entry_ptr.125 = internal global ptr @print_dl_rq._entry.124, section ".printk_index", align 4
@.str.126 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dl_nr_migratory\00", [16 x i8] zeroinitializer }, align 32
@print_dl_rq._entry.127 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.118, ptr @.str.2, i32 705, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@print_dl_rq._entry_ptr.128 = internal global ptr @print_dl_rq._entry.127, section ".printk_index", align 4
@.str.129 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"  .%-30s: %lld\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dl_bw->bw\00", [22 x i8] zeroinitializer }, align 32
@print_dl_rq._entry.131 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.132, ptr @.str.118, ptr @.str.2, i32 710, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\01c  .%-30s: %lld\0A\00", [46 x i8] zeroinitializer }, align 32
@print_dl_rq._entry_ptr.133 = internal global ptr @print_dl_rq._entry.131, section ".printk_index", align 4
@.str.134 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dl_bw->total_bw\00", [16 x i8] zeroinitializer }, align 32
@print_dl_rq._entry.135 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.132, ptr @.str.118, ptr @.str.2, i32 711, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@print_dl_rq._entry_ptr.136 = internal global ptr @print_dl_rq._entry.135, section ".printk_index", align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@.str.137 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s (%d, #threads: %d)\0A\00", [41 x i8] zeroinitializer }, align 32
@proc_sched_show_task._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.138, ptr @.str.139, ptr @.str.2, i32 962, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\01c%s (%d, #threads: %d)\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"proc_sched_show_task\00", [43 x i8] zeroinitializer }, align 32
@proc_sched_show_task._entry_ptr = internal global ptr @proc_sched_show_task._entry, section ".printk_index", align 4
@.str.140 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"-------------------------------------------------------------------\0A\00", [59 x i8] zeroinitializer }, align 32
@proc_sched_show_task._entry.141 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.142, ptr @.str.139, ptr @.str.2, i32 965, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"\01c-------------------------------------------------------------------\0A\00", [57 x i8] zeroinitializer }, align 32
@proc_sched_show_task._entry_ptr.143 = internal global ptr @proc_sched_show_task._entry.141, section ".printk_index", align 4
@.str.144 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%-45s:%14Ld.%06ld\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"se.exec_start\00", [18 x i8] zeroinitializer }, align 32
@proc_sched_show_task._entry.146 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.139, ptr @.str.2, i32 970, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\01c%-45s:%14Ld.%06ld\0A\00", [43 x i8] zeroinitializer }, align 32
@proc_sched_show_task._entry_ptr.148 = internal global ptr @proc_sched_show_task._entry.146, section ".printk_index", align 4
@.str.149 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"se.vruntime\00", [20 x i8] zeroinitializer }, align 32
@proc_sched_show_task._entry.150 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.139, ptr @.str.2, i32 971, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@proc_sched_show_task._entry_ptr.151 = internal global ptr @proc_sched_show_task._entry.150, section ".printk_index", align 4
@.str.152 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"se.sum_exec_runtime\00", [44 x i8] zeroinitializer }, align 32
@proc_sched_show_task._entry.153 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.139, ptr @.str.2, i32 972, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@proc_sched_show_task._entry_ptr.154 = internal global ptr @proc_sched_show_task._entry.153, section ".printk_index", align 4
@.str.155 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%-45s:%21Ld\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"se.nr_migrations\00", [47 x i8] zeroinitializer }, align 32
@proc_sched_show_task._entry.157 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.158, ptr @.str.139, ptr @.str.2, i32 976, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\01c%-45s:%21Ld\0A\00", [17 x i8] zeroinitializer }, align 32
@proc_sched_show_task._entry_ptr.159 = internal global ptr @proc_sched_show_task._entry.157, section ".printk_index", align 4
@sched_schedstats = external dso_local global %struct.static_key_false, align 4
@.str.160 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sum_sleep_runtime\00", [46 x i8] zeroinitializer }, align 32
@proc_sched_show_task._entry.161 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.139, ptr @.str.2, i32 981, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@proc_sched_show_task._entry_ptr.162 = internal global ptr @proc_sched_show_task._entry.161, section ".printk_index", align 4
@.str.163 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sum_block_runtime\00", [46 x i8] zeroinitializer }, align 32
@proc_sched_show_task._entry.164 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.139, ptr @.str.2, i32 982, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@proc_sched_show_task._entry_ptr.165 = internal global ptr @proc_sched_show_task._entry.164, section ".printk_index", align 4
@.str.166 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"wait_start\00", [21 x i8] zeroinitializer }, align 32
@proc_sched_show_task._entry.167 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.139, ptr @.str.2, i32 983, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@proc_sched_show_task._entry_ptr.168 = internal global ptr @proc_sched_show_task._entry.167, section ".printk_index", align 4
@.str.169 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sleep_start\00", [20 x i8] zeroinitializer }, align 32
@proc_sched_show_task._entry.170 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.139, ptr @.str.2, i32 984, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@proc_sched_show_task._entry_ptr.171 = internal global ptr @proc_sched_show_task._entry.170, section ".printk_index", align 4
@.str.172 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"block_start\00", [20 x i8] zeroinitializer }, align 32
@proc_sched_show_task._entry.173 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.139, ptr @.str.2, i32 985, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@proc_sched_show_task._entry_ptr.174 = internal global ptr @proc_sched_show_task._entry.173, section ".printk_index", align 4
@.str.175 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sleep_max\00", [22 x i8] zeroinitializer }, align 32
@proc_sched_show_task._entry.176 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.139, ptr @.str.2, i32 986, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@proc_sched_show_task._entry_ptr.177 = internal global ptr @proc_sched_show_task._entry.176, section ".printk_index", align 4
@.str.178 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"block_max\00", [22 x i8] zeroinitializer }, align 32
@proc_sched_show_task._entry.179 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.139, ptr @.str.2, i32 987, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@proc_sched_show_task._entry_ptr.180 = internal global ptr @proc_sched_show_task._entry.179, section ".printk_index", align 4
@.str.181 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"exec_max\00", [23 x i8] zeroinitializer }, align 32
@proc_sched_show_task._entry.182 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.139, ptr @.str.2, i32 988, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@proc_sched_show_task._entry_ptr.183 = internal global ptr @proc_sched_show_task._entry.182, section ".printk_index", align 4
@.str.184 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"slice_max\00", [22 x i8] zeroinitializer }, align 32
@proc_sched_show_task._entry.185 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.139, ptr @.str.2, i32 989, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@proc_sched_show_task._entry_ptr.186 = internal global ptr @proc_sched_show_task._entry.185, section ".printk_index", align 4
@.str.187 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"wait_max\00", [23 x i8] zeroinitializer }, align 32
@proc_sched_show_task._entry.188 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.139, ptr @.str.2, i32 990, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@proc_sched_show_task._entry_ptr.189 = internal global ptr @proc_sched_show_task._entry.188, section ".printk_index", align 4
@.str.190 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"wait_sum\00", [23 x i8] zeroinitializer }, align 32
@proc_sched_show_task._entry.191 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.139, ptr @.str.2, i32 991, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@proc_sched_show_task._entry_ptr.192 = internal global ptr @proc_sched_show_task._entry.191, section ".printk_index", align 4
@.str.193 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"wait_count\00", [21 x i8] zeroinitializer }, align 32
@proc_sched_show_task._entry.194 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.158, ptr @.str.139, ptr @.str.2, i32 992, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@proc_sched_show_task._entry_ptr.195 = internal global ptr @proc_sched_show_task._entry.194, section ".printk_index", align 4
@.str.196 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"iowait_sum\00", [21 x i8] zeroinitializer }, align 32
@proc_sched_show_task._entry.197 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.139, ptr @.str.2, i32 993, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@proc_sched_show_task._entry_ptr.198 = internal global ptr @proc_sched_show_task._entry.197, section ".printk_index", align 4
@.str.199 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"iowait_count\00", [19 x i8] zeroinitializer }, align 32
@proc_sched_show_task._entry.200 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.158, ptr @.str.139, ptr @.str.2, i32 994, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@proc_sched_show_task._entry_ptr.201 = internal global ptr @proc_sched_show_task._entry.200, section ".printk_index", align 4
@.str.202 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"nr_migrations_cold\00", [45 x i8] zeroinitializer }, align 32
@proc_sched_show_task._entry.203 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.158, ptr @.str.139, ptr @.str.2, i32 995, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@proc_sched_show_task._entry_ptr.204 = internal global ptr @proc_sched_show_task._entry.203, section ".printk_index", align 4
@.str.205 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"nr_failed_migrations_affine\00", [36 x i8] zeroinitializer }, align 32
@proc_sched_show_task._entry.206 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.158, ptr @.str.139, ptr @.str.2, i32 996, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@proc_sched_show_task._entry_ptr.207 = internal global ptr @proc_sched_show_task._entry.206, section ".printk_index", align 4
@.str.208 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"nr_failed_migrations_running\00", [35 x i8] zeroinitializer }, align 32
@proc_sched_show_task._entry.209 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.158, ptr @.str.139, ptr @.str.2, i32 997, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@proc_sched_show_task._entry_ptr.210 = internal global ptr @proc_sched_show_task._entry.209, section ".printk_index", align 4
@.str.211 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"nr_failed_migrations_hot\00", [39 x i8] zeroinitializer }, align 32
@proc_sched_show_task._entry.212 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.158, ptr @.str.139, ptr @.str.2, i32 998, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@proc_sched_show_task._entry_ptr.213 = internal global ptr @proc_sched_show_task._entry.212, section ".printk_index", align 4
@.str.214 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"nr_forced_migrations\00", [43 x i8] zeroinitializer }, align 32
@proc_sched_show_task._entry.215 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.158, ptr @.str.139, ptr @.str.2, i32 999, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@proc_sched_show_task._entry_ptr.216 = internal global ptr @proc_sched_show_task._entry.215, section ".printk_index", align 4
@.str.217 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"nr_wakeups\00", [21 x i8] zeroinitializer }, align 32
@proc_sched_show_task._entry.218 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.158, ptr @.str.139, ptr @.str.2, i32 1000, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@proc_sched_show_task._entry_ptr.219 = internal global ptr @proc_sched_show_task._entry.218, section ".printk_index", align 4
@.str.220 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"nr_wakeups_sync\00", [16 x i8] zeroinitializer }, align 32
@proc_sched_show_task._entry.221 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.158, ptr @.str.139, ptr @.str.2, i32 1001, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@proc_sched_show_task._entry_ptr.222 = internal global ptr @proc_sched_show_task._entry.221, section ".printk_index", align 4
@.str.223 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"nr_wakeups_migrate\00", [45 x i8] zeroinitializer }, align 32
@proc_sched_show_task._entry.224 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.158, ptr @.str.139, ptr @.str.2, i32 1002, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@proc_sched_show_task._entry_ptr.225 = internal global ptr @proc_sched_show_task._entry.224, section ".printk_index", align 4
@.str.226 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"nr_wakeups_local\00", [47 x i8] zeroinitializer }, align 32
@proc_sched_show_task._entry.227 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.158, ptr @.str.139, ptr @.str.2, i32 1003, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@proc_sched_show_task._entry_ptr.228 = internal global ptr @proc_sched_show_task._entry.227, section ".printk_index", align 4
@.str.229 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nr_wakeups_remote\00", [46 x i8] zeroinitializer }, align 32
@proc_sched_show_task._entry.230 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.158, ptr @.str.139, ptr @.str.2, i32 1004, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@proc_sched_show_task._entry_ptr.231 = internal global ptr @proc_sched_show_task._entry.230, section ".printk_index", align 4
@.str.232 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nr_wakeups_affine\00", [46 x i8] zeroinitializer }, align 32
@proc_sched_show_task._entry.233 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.158, ptr @.str.139, ptr @.str.2, i32 1005, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@proc_sched_show_task._entry_ptr.234 = internal global ptr @proc_sched_show_task._entry.233, section ".printk_index", align 4
@.str.235 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"nr_wakeups_affine_attempts\00", [37 x i8] zeroinitializer }, align 32
@proc_sched_show_task._entry.236 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.158, ptr @.str.139, ptr @.str.2, i32 1006, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@proc_sched_show_task._entry_ptr.237 = internal global ptr @proc_sched_show_task._entry.236, section ".printk_index", align 4
@.str.238 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"nr_wakeups_passive\00", [45 x i8] zeroinitializer }, align 32
@proc_sched_show_task._entry.239 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.158, ptr @.str.139, ptr @.str.2, i32 1007, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@proc_sched_show_task._entry_ptr.240 = internal global ptr @proc_sched_show_task._entry.239, section ".printk_index", align 4
@.str.241 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"nr_wakeups_idle\00", [16 x i8] zeroinitializer }, align 32
@proc_sched_show_task._entry.242 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.158, ptr @.str.139, ptr @.str.2, i32 1008, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@proc_sched_show_task._entry_ptr.243 = internal global ptr @proc_sched_show_task._entry.242, section ".printk_index", align 4
@.str.244 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"avg_atom\00", [23 x i8] zeroinitializer }, align 32
@proc_sched_show_task._entry.245 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.139, ptr @.str.2, i32 1024, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@proc_sched_show_task._entry_ptr.246 = internal global ptr @proc_sched_show_task._entry.245, section ".printk_index", align 4
@.str.247 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"avg_per_cpu\00", [20 x i8] zeroinitializer }, align 32
@proc_sched_show_task._entry.248 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.139, ptr @.str.2, i32 1025, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@proc_sched_show_task._entry_ptr.249 = internal global ptr @proc_sched_show_task._entry.248, section ".printk_index", align 4
@.str.250 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"core_forceidle_sum\00", [45 x i8] zeroinitializer }, align 32
@proc_sched_show_task._entry.251 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.139, ptr @.str.2, i32 1028, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@proc_sched_show_task._entry_ptr.252 = internal global ptr @proc_sched_show_task._entry.251, section ".printk_index", align 4
@.str.253 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"nr_switches\00", [20 x i8] zeroinitializer }, align 32
@proc_sched_show_task._entry.254 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.158, ptr @.str.139, ptr @.str.2, i32 1032, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@proc_sched_show_task._entry_ptr.255 = internal global ptr @proc_sched_show_task._entry.254, section ".printk_index", align 4
@.str.256 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"nr_voluntary_switches\00", [42 x i8] zeroinitializer }, align 32
@proc_sched_show_task._entry.257 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.158, ptr @.str.139, ptr @.str.2, i32 1033, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@proc_sched_show_task._entry_ptr.258 = internal global ptr @proc_sched_show_task._entry.257, section ".printk_index", align 4
@.str.259 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"nr_involuntary_switches\00", [40 x i8] zeroinitializer }, align 32
@proc_sched_show_task._entry.260 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.158, ptr @.str.139, ptr @.str.2, i32 1034, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@proc_sched_show_task._entry_ptr.261 = internal global ptr @proc_sched_show_task._entry.260, section ".printk_index", align 4
@.str.262 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"se.load.weight\00", [17 x i8] zeroinitializer }, align 32
@proc_sched_show_task._entry.263 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.158, ptr @.str.139, ptr @.str.2, i32 1036, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@proc_sched_show_task._entry_ptr.264 = internal global ptr @proc_sched_show_task._entry.263, section ".printk_index", align 4
@.str.265 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"se.avg.load_sum\00", [16 x i8] zeroinitializer }, align 32
@proc_sched_show_task._entry.266 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.158, ptr @.str.139, ptr @.str.2, i32 1038, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@proc_sched_show_task._entry_ptr.267 = internal global ptr @proc_sched_show_task._entry.266, section ".printk_index", align 4
@.str.268 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"se.avg.runnable_sum\00", [44 x i8] zeroinitializer }, align 32
@proc_sched_show_task._entry.269 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.158, ptr @.str.139, ptr @.str.2, i32 1039, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@proc_sched_show_task._entry_ptr.270 = internal global ptr @proc_sched_show_task._entry.269, section ".printk_index", align 4
@.str.271 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"se.avg.util_sum\00", [16 x i8] zeroinitializer }, align 32
@proc_sched_show_task._entry.272 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.158, ptr @.str.139, ptr @.str.2, i32 1040, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@proc_sched_show_task._entry_ptr.273 = internal global ptr @proc_sched_show_task._entry.272, section ".printk_index", align 4
@.str.274 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"se.avg.load_avg\00", [16 x i8] zeroinitializer }, align 32
@proc_sched_show_task._entry.275 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.158, ptr @.str.139, ptr @.str.2, i32 1041, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@proc_sched_show_task._entry_ptr.276 = internal global ptr @proc_sched_show_task._entry.275, section ".printk_index", align 4
@.str.277 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"se.avg.runnable_avg\00", [44 x i8] zeroinitializer }, align 32
@proc_sched_show_task._entry.278 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.158, ptr @.str.139, ptr @.str.2, i32 1042, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@proc_sched_show_task._entry_ptr.279 = internal global ptr @proc_sched_show_task._entry.278, section ".printk_index", align 4
@.str.280 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"se.avg.util_avg\00", [16 x i8] zeroinitializer }, align 32
@proc_sched_show_task._entry.281 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.158, ptr @.str.139, ptr @.str.2, i32 1043, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@proc_sched_show_task._entry_ptr.282 = internal global ptr @proc_sched_show_task._entry.281, section ".printk_index", align 4
@.str.283 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"se.avg.last_update_time\00", [40 x i8] zeroinitializer }, align 32
@proc_sched_show_task._entry.284 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.158, ptr @.str.139, ptr @.str.2, i32 1044, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@proc_sched_show_task._entry_ptr.285 = internal global ptr @proc_sched_show_task._entry.284, section ".printk_index", align 4
@.str.286 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"se.avg.util_est.ewma\00", [43 x i8] zeroinitializer }, align 32
@proc_sched_show_task._entry.287 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.158, ptr @.str.139, ptr @.str.2, i32 1045, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@proc_sched_show_task._entry_ptr.288 = internal global ptr @proc_sched_show_task._entry.287, section ".printk_index", align 4
@.str.289 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"se.avg.util_est.enqueued\00", [39 x i8] zeroinitializer }, align 32
@proc_sched_show_task._entry.290 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.158, ptr @.str.139, ptr @.str.2, i32 1046, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@proc_sched_show_task._entry_ptr.291 = internal global ptr @proc_sched_show_task._entry.290, section ".printk_index", align 4
@.str.292 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"uclamp.min\00", [21 x i8] zeroinitializer }, align 32
@proc_sched_show_task._entry.293 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.158, ptr @.str.139, ptr @.str.2, i32 1049, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@proc_sched_show_task._entry_ptr.294 = internal global ptr @proc_sched_show_task._entry.293, section ".printk_index", align 4
@.str.295 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"uclamp.max\00", [21 x i8] zeroinitializer }, align 32
@proc_sched_show_task._entry.296 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.158, ptr @.str.139, ptr @.str.2, i32 1050, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@proc_sched_show_task._entry_ptr.297 = internal global ptr @proc_sched_show_task._entry.296, section ".printk_index", align 4
@.str.298 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"effective uclamp.min\00", [43 x i8] zeroinitializer }, align 32
@proc_sched_show_task._entry.299 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.158, ptr @.str.139, ptr @.str.2, i32 1051, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@proc_sched_show_task._entry_ptr.300 = internal global ptr @proc_sched_show_task._entry.299, section ".printk_index", align 4
@.str.301 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"effective uclamp.max\00", [43 x i8] zeroinitializer }, align 32
@proc_sched_show_task._entry.302 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.158, ptr @.str.139, ptr @.str.2, i32 1052, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@proc_sched_show_task._entry_ptr.303 = internal global ptr @proc_sched_show_task._entry.302, section ".printk_index", align 4
@.str.304 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"policy\00", [25 x i8] zeroinitializer }, align 32
@proc_sched_show_task._entry.305 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.158, ptr @.str.139, ptr @.str.2, i32 1054, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@proc_sched_show_task._entry_ptr.306 = internal global ptr @proc_sched_show_task._entry.305, section ".printk_index", align 4
@.str.307 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"prio\00", [27 x i8] zeroinitializer }, align 32
@proc_sched_show_task._entry.308 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.158, ptr @.str.139, ptr @.str.2, i32 1055, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@proc_sched_show_task._entry_ptr.309 = internal global ptr @proc_sched_show_task._entry.308, section ".printk_index", align 4
@.str.310 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"dl.runtime\00", [21 x i8] zeroinitializer }, align 32
@proc_sched_show_task._entry.311 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.158, ptr @.str.139, ptr @.str.2, i32 1057, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@proc_sched_show_task._entry_ptr.312 = internal global ptr @proc_sched_show_task._entry.311, section ".printk_index", align 4
@.str.313 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"dl.deadline\00", [20 x i8] zeroinitializer }, align 32
@proc_sched_show_task._entry.314 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.158, ptr @.str.139, ptr @.str.2, i32 1058, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@proc_sched_show_task._entry_ptr.315 = internal global ptr @proc_sched_show_task._entry.314, section ".printk_index", align 4
@.str.316 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"clock-delta\00", [20 x i8] zeroinitializer }, align 32
@proc_sched_show_task._entry.317 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.158, ptr @.str.139, ptr @.str.2, i32 1069, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@proc_sched_show_task._entry_ptr.318 = internal global ptr @proc_sched_show_task._entry.317, section ".printk_index", align 4
@resched_latency_warn.latency_check_ratelimit = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.319, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 360000, i32 1, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.319 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"latency_check_ratelimit.lock\00", [35 x i8] zeroinitializer }, align 32
@__func__.resched_latency_warn = private unnamed_addr constant [21 x i8] c"resched_latency_warn\00", align 1
@.str.320 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"sched: CPU %d need_resched set for > %llu ns (%d ticks) without schedule\0A\00", [54 x i8] zeroinitializer }, align 32
@sched_debug_verbose = dso_local global i8 0, section ".data..read_mostly", align 1
@.str.321 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"sched\00", [26 x i8] zeroinitializer }, align 32
@.str.322 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"features\00", [23 x i8] zeroinitializer }, align 32
@sched_feat_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr @sched_feat_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @sched_feat_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.323 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"verbose\00", [24 x i8] zeroinitializer }, align 32
@.str.324 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"latency_ns\00", [21 x i8] zeroinitializer }, align 32
@sysctl_sched_latency = external dso_local global i32, align 4
@.str.325 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"min_granularity_ns\00", [45 x i8] zeroinitializer }, align 32
@sysctl_sched_min_granularity = external dso_local global i32, align 4
@.str.326 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"idle_min_granularity_ns\00", [40 x i8] zeroinitializer }, align 32
@sysctl_sched_idle_min_granularity = external dso_local global i32, align 4
@.str.327 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"wakeup_granularity_ns\00", [42 x i8] zeroinitializer }, align 32
@sysctl_sched_wakeup_granularity = external dso_local global i32, align 4
@.str.328 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"latency_warn_ms\00", [16 x i8] zeroinitializer }, align 32
@sysctl_resched_latency_warn_ms = external dso_local global i32, align 4
@.str.329 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"latency_warn_once\00", [46 x i8] zeroinitializer }, align 32
@sysctl_resched_latency_warn_once = external dso_local global i32, align 4
@.str.330 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tunable_scaling\00", [16 x i8] zeroinitializer }, align 32
@sched_scaling_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr @sched_scaling_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @sched_scaling_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.331 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"migration_cost_ns\00", [46 x i8] zeroinitializer }, align 32
@sysctl_sched_migration_cost = external dso_local global i32, section ".data..read_mostly", align 4
@.str.332 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"nr_migrate\00", [21 x i8] zeroinitializer }, align 32
@sysctl_sched_nr_migrate = external dso_local global i32, section ".data..read_mostly", align 4
@.str.333 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"debug\00", [26 x i8] zeroinitializer }, align 32
@sched_debug_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @sched_debug_open, ptr null, ptr @seq_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.336 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@.str.337 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"NO_\00", [28 x i8] zeroinitializer }, align 32
@sched_feat_names = internal constant { [25 x ptr], [60 x i8] } { [25 x ptr] [ptr @.str.338, ptr @.str.339, ptr @.str.340, ptr @.str.341, ptr @.str.342, ptr @.str.343, ptr @.str.344, ptr @.str.345, ptr @.str.346, ptr @.str.347, ptr @.str.348, ptr @.str.349, ptr @.str.350, ptr @.str.351, ptr @.str.352, ptr @.str.353, ptr @.str.354, ptr @.str.355, ptr @.str.356, ptr @.str.357, ptr @.str.358, ptr @.str.359, ptr @.str.360, ptr @.str.361, ptr @.str.362], [60 x i8] zeroinitializer }, align 32
@sysctl_sched_features = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str.338 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"GENTLE_FAIR_SLEEPERS\00", [43 x i8] zeroinitializer }, align 32
@.str.339 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"START_DEBIT\00", [20 x i8] zeroinitializer }, align 32
@.str.340 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"NEXT_BUDDY\00", [21 x i8] zeroinitializer }, align 32
@.str.341 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"LAST_BUDDY\00", [21 x i8] zeroinitializer }, align 32
@.str.342 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"CACHE_HOT_BUDDY\00", [16 x i8] zeroinitializer }, align 32
@.str.343 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"WAKEUP_PREEMPTION\00", [46 x i8] zeroinitializer }, align 32
@.str.344 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"HRTICK\00", [25 x i8] zeroinitializer }, align 32
@.str.345 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"HRTICK_DL\00", [22 x i8] zeroinitializer }, align 32
@.str.346 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DOUBLE_TICK\00", [20 x i8] zeroinitializer }, align 32
@.str.347 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"NONTASK_CAPACITY\00", [47 x i8] zeroinitializer }, align 32
@.str.348 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"TTWU_QUEUE\00", [21 x i8] zeroinitializer }, align 32
@.str.349 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"SIS_PROP\00", [23 x i8] zeroinitializer }, align 32
@.str.350 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"WARN_DOUBLE_CLOCK\00", [46 x i8] zeroinitializer }, align 32
@.str.351 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"RT_PUSH_IPI\00", [20 x i8] zeroinitializer }, align 32
@.str.352 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"RT_RUNTIME_SHARE\00", [47 x i8] zeroinitializer }, align 32
@.str.353 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"LB_MIN\00", [25 x i8] zeroinitializer }, align 32
@.str.354 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ATTACH_AGE_LOAD\00", [16 x i8] zeroinitializer }, align 32
@.str.355 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"WA_IDLE\00", [24 x i8] zeroinitializer }, align 32
@.str.356 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"WA_WEIGHT\00", [22 x i8] zeroinitializer }, align 32
@.str.357 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"WA_BIAS\00", [24 x i8] zeroinitializer }, align 32
@.str.358 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"UTIL_EST\00", [23 x i8] zeroinitializer }, align 32
@.str.359 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"UTIL_EST_FASTUP\00", [16 x i8] zeroinitializer }, align 32
@.str.360 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"LATENCY_WARN\00", [19 x i8] zeroinitializer }, align 32
@.str.361 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ALT_PERIOD\00", [21 x i8] zeroinitializer }, align 32
@.str.362 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"BASE_SLICE\00", [21 x i8] zeroinitializer }, align 32
@.str.363 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s \00", [28 x i8] zeroinitializer }, align 32
@sysctl_sched_tunable_scaling = external dso_local local_unnamed_addr global i32, align 4
@.str.364 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@sched_debug_sops = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @sched_debug_start, ptr @sched_debug_stop, ptr @sched_debug_next, ptr @sched_debug_show }, [16 x i8] zeroinitializer }, align 32
@.str.365 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"min_interval\00", [19 x i8] zeroinitializer }, align 32
@.str.366 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"max_interval\00", [19 x i8] zeroinitializer }, align 32
@.str.367 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"max_newidle_lb_cost\00", [44 x i8] zeroinitializer }, align 32
@.str.368 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"busy_factor\00", [20 x i8] zeroinitializer }, align 32
@.str.369 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"imbalance_pct\00", [18 x i8] zeroinitializer }, align 32
@.str.370 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cache_nice_tries\00", [47 x i8] zeroinitializer }, align 32
@.str.371 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"name\00", [27 x i8] zeroinitializer }, align 32
@.str.372 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"flags\00", [26 x i8] zeroinitializer }, align 32
@sd_flags_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @sd_flags_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@sd_flag_debug = external dso_local local_unnamed_addr constant [0 x %struct.sd_flag_debug], align 4
@.str.373 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c" \00", [30 x i8] zeroinitializer }, align 32
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.374 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@.str.375 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sched_debug_lock\00", [47 x i8] zeroinitializer }, align 32
@.str.376 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"  .%-30s: %lld.%06ld\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.377 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"se->exec_start\00", [17 x i8] zeroinitializer }, align 32
@print_cfs_group_stats._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.378, ptr @.str.379, ptr @.str.2, i32 461, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.378 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\01c  .%-30s: %lld.%06ld\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.379 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"print_cfs_group_stats\00", [42 x i8] zeroinitializer }, align 32
@print_cfs_group_stats._entry_ptr = internal global ptr @print_cfs_group_stats._entry, section ".printk_index", align 4
@.str.380 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"se->vruntime\00", [19 x i8] zeroinitializer }, align 32
@print_cfs_group_stats._entry.381 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.378, ptr @.str.379, ptr @.str.2, i32 462, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@print_cfs_group_stats._entry_ptr.382 = internal global ptr @print_cfs_group_stats._entry.381, section ".printk_index", align 4
@.str.383 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"se->sum_exec_runtime\00", [43 x i8] zeroinitializer }, align 32
@print_cfs_group_stats._entry.384 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.378, ptr @.str.379, ptr @.str.2, i32 463, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@print_cfs_group_stats._entry_ptr.385 = internal global ptr @print_cfs_group_stats._entry.384, section ".printk_index", align 4
@print_cfs_group_stats._entry.386 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.378, ptr @.str.379, ptr @.str.2, i32 469, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@print_cfs_group_stats._entry_ptr.387 = internal global ptr @print_cfs_group_stats._entry.386, section ".printk_index", align 4
@print_cfs_group_stats._entry.388 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.378, ptr @.str.379, ptr @.str.2, i32 470, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@print_cfs_group_stats._entry_ptr.389 = internal global ptr @print_cfs_group_stats._entry.388, section ".printk_index", align 4
@print_cfs_group_stats._entry.390 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.378, ptr @.str.379, ptr @.str.2, i32 471, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@print_cfs_group_stats._entry_ptr.391 = internal global ptr @print_cfs_group_stats._entry.390, section ".printk_index", align 4
@print_cfs_group_stats._entry.392 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.378, ptr @.str.379, ptr @.str.2, i32 472, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@print_cfs_group_stats._entry_ptr.393 = internal global ptr @print_cfs_group_stats._entry.392, section ".printk_index", align 4
@print_cfs_group_stats._entry.394 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.378, ptr @.str.379, ptr @.str.2, i32 473, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@print_cfs_group_stats._entry_ptr.395 = internal global ptr @print_cfs_group_stats._entry.394, section ".printk_index", align 4
@print_cfs_group_stats._entry.396 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.378, ptr @.str.379, ptr @.str.2, i32 474, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@print_cfs_group_stats._entry_ptr.397 = internal global ptr @print_cfs_group_stats._entry.396, section ".printk_index", align 4
@print_cfs_group_stats._entry.398 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.378, ptr @.str.379, ptr @.str.2, i32 475, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@print_cfs_group_stats._entry_ptr.399 = internal global ptr @print_cfs_group_stats._entry.398, section ".printk_index", align 4
@print_cfs_group_stats._entry.400 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.378, ptr @.str.379, ptr @.str.2, i32 476, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@print_cfs_group_stats._entry_ptr.401 = internal global ptr @print_cfs_group_stats._entry.400, section ".printk_index", align 4
@print_cfs_group_stats._entry.402 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.378, ptr @.str.379, ptr @.str.2, i32 477, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@print_cfs_group_stats._entry_ptr.403 = internal global ptr @print_cfs_group_stats._entry.402, section ".printk_index", align 4
@print_cfs_group_stats._entry.404 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.132, ptr @.str.379, ptr @.str.2, i32 478, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@print_cfs_group_stats._entry_ptr.405 = internal global ptr @print_cfs_group_stats._entry.404, section ".printk_index", align 4
@.str.406 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"se->load.weight\00", [16 x i8] zeroinitializer }, align 32
@print_cfs_group_stats._entry.407 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.132, ptr @.str.379, ptr @.str.2, i32 481, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@print_cfs_group_stats._entry_ptr.408 = internal global ptr @print_cfs_group_stats._entry.407, section ".printk_index", align 4
@.str.409 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"se->avg.load_avg\00", [47 x i8] zeroinitializer }, align 32
@print_cfs_group_stats._entry.410 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.132, ptr @.str.379, ptr @.str.2, i32 483, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@print_cfs_group_stats._entry_ptr.411 = internal global ptr @print_cfs_group_stats._entry.410, section ".printk_index", align 4
@.str.412 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"se->avg.util_avg\00", [47 x i8] zeroinitializer }, align 32
@print_cfs_group_stats._entry.413 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.132, ptr @.str.379, ptr @.str.2, i32 484, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@print_cfs_group_stats._entry_ptr.414 = internal global ptr @print_cfs_group_stats._entry.413, section ".printk_index", align 4
@.str.415 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"se->avg.runnable_avg\00", [43 x i8] zeroinitializer }, align 32
@print_cfs_group_stats._entry.416 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.132, ptr @.str.379, ptr @.str.2, i32 485, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@print_cfs_group_stats._entry_ptr.417 = internal global ptr @print_cfs_group_stats._entry.416, section ".printk_index", align 4
@.str.420 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Sched Debug Version: v0.11, %s %.*s\0A\00", [59 x i8] zeroinitializer }, align 32
@sched_debug_header._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.421, ptr @.str.422, ptr @.str.2, i32 797, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.421 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\01cSched Debug Version: v0.11, %s %.*s\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.422 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sched_debug_header\00", [45 x i8] zeroinitializer }, align 32
@sched_debug_header._entry_ptr = internal global ptr @sched_debug_header._entry, section ".printk_index", align 4
@.str.423 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%-40s: %Ld.%06ld\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.424 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ktime\00", [26 x i8] zeroinitializer }, align 32
@sched_debug_header._entry.425 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.426, ptr @.str.422, ptr @.str.2, i32 803, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.426 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\01c%-40s: %Ld.%06ld\0A\00", [44 x i8] zeroinitializer }, align 32
@sched_debug_header._entry_ptr.427 = internal global ptr @sched_debug_header._entry.425, section ".printk_index", align 4
@.str.428 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sched_clk\00", [22 x i8] zeroinitializer }, align 32
@sched_debug_header._entry.429 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.426, ptr @.str.422, ptr @.str.2, i32 804, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@sched_debug_header._entry_ptr.430 = internal global ptr @sched_debug_header._entry.429, section ".printk_index", align 4
@.str.431 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"cpu_clk\00", [24 x i8] zeroinitializer }, align 32
@sched_debug_header._entry.432 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.426, ptr @.str.422, ptr @.str.2, i32 805, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@sched_debug_header._entry_ptr.433 = internal global ptr @sched_debug_header._entry.432, section ".printk_index", align 4
@.str.434 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%-40s: %Ld\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.435 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"jiffies\00", [24 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@sched_debug_header._entry.436 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.437, ptr @.str.422, ptr @.str.2, i32 806, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.437 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\01c%-40s: %Ld\0A\00", [18 x i8] zeroinitializer }, align 32
@sched_debug_header._entry_ptr.438 = internal global ptr @sched_debug_header._entry.436, section ".printk_index", align 4
@sched_debug_header._entry.439 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.422, ptr @.str.2, i32 813, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@sched_debug_header._entry_ptr.440 = internal global ptr @sched_debug_header._entry.439, section ".printk_index", align 4
@.str.441 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sysctl_sched\0A\00", [18 x i8] zeroinitializer }, align 32
@sched_debug_header._entry.442 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.443, ptr @.str.422, ptr @.str.2, i32 814, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.443 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\01csysctl_sched\0A\00", [16 x i8] zeroinitializer }, align 32
@sched_debug_header._entry_ptr.444 = internal global ptr @sched_debug_header._entry.442, section ".printk_index", align 4
@.str.445 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"  .%-40s: %Ld.%06ld\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.446 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sysctl_sched_latency\00", [43 x i8] zeroinitializer }, align 32
@sched_debug_header._entry.447 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.448, ptr @.str.422, ptr @.str.2, i32 820, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.448 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\01c  .%-40s: %Ld.%06ld\0A\00", [41 x i8] zeroinitializer }, align 32
@sched_debug_header._entry_ptr.449 = internal global ptr @sched_debug_header._entry.447, section ".printk_index", align 4
@.str.450 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"sysctl_sched_min_granularity\00", [35 x i8] zeroinitializer }, align 32
@sched_debug_header._entry.451 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.448, ptr @.str.422, ptr @.str.2, i32 821, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@sched_debug_header._entry_ptr.452 = internal global ptr @sched_debug_header._entry.451, section ".printk_index", align 4
@.str.453 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"sysctl_sched_idle_min_granularity\00", [62 x i8] zeroinitializer }, align 32
@sched_debug_header._entry.454 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.448, ptr @.str.422, ptr @.str.2, i32 822, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@sched_debug_header._entry_ptr.455 = internal global ptr @sched_debug_header._entry.454, section ".printk_index", align 4
@.str.456 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"sysctl_sched_wakeup_granularity\00", [32 x i8] zeroinitializer }, align 32
@sched_debug_header._entry.457 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.448, ptr @.str.422, ptr @.str.2, i32 823, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@sched_debug_header._entry_ptr.458 = internal global ptr @sched_debug_header._entry.457, section ".printk_index", align 4
@.str.459 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"  .%-40s: %Ld\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.460 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"sysctl_sched_child_runs_first\00", [34 x i8] zeroinitializer }, align 32
@sysctl_sched_child_runs_first = external dso_local local_unnamed_addr global i32, align 4
@sched_debug_header._entry.461 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.462, ptr @.str.422, ptr @.str.2, i32 824, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.462 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\01c  .%-40s: %Ld\0A\00", [47 x i8] zeroinitializer }, align 32
@sched_debug_header._entry_ptr.463 = internal global ptr @sched_debug_header._entry.461, section ".printk_index", align 4
@.str.464 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sysctl_sched_features\00", [42 x i8] zeroinitializer }, align 32
@sched_debug_header._entry.465 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.462, ptr @.str.422, ptr @.str.2, i32 825, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@sched_debug_header._entry_ptr.466 = internal global ptr @sched_debug_header._entry.465, section ".printk_index", align 4
@.str.467 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"  .%-40s: %d (%s)\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.468 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"sysctl_sched_tunable_scaling\00", [35 x i8] zeroinitializer }, align 32
@sched_tunable_scaling_names = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.474, ptr @.str.475, ptr @.str.476], [20 x i8] zeroinitializer }, align 32
@sched_debug_header._entry.469 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.470, ptr @.str.422, ptr @.str.2, i32 832, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.470 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\01c  .%-40s: %d (%s)\0A\00", [43 x i8] zeroinitializer }, align 32
@sched_debug_header._entry_ptr.471 = internal global ptr @sched_debug_header._entry.469, section ".printk_index", align 4
@sched_debug_header._entry.472 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.422, ptr @.str.2, i32 833, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@sched_debug_header._entry_ptr.473 = internal global ptr @sched_debug_header._entry.472, section ".printk_index", align 4
@init_uts_ns = external dso_local global %struct.uts_namespace, align 4
@.str.474 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"none\00", [27 x i8] zeroinitializer }, align 32
@.str.475 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"logarithmic\00", [20 x i8] zeroinitializer }, align 32
@.str.476 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"linear\00", [25 x i8] zeroinitializer }, align 32
@.str.477 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"cpu#%d\0A\00", [24 x i8] zeroinitializer }, align 32
@print_cpu._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.478, ptr @.str.479, ptr @.str.2, i32 728, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.478 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"\01ccpu#%d\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.479 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"print_cpu\00", [22 x i8] zeroinitializer }, align 32
@print_cpu._entry_ptr = internal global ptr @print_cpu._entry, section ".printk_index", align 4
@print_cpu._entry.480 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.479, ptr @.str.2, i32 742, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@print_cpu._entry_ptr.481 = internal global ptr @print_cpu._entry.480, section ".printk_index", align 4
@print_cpu._entry.482 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.479, ptr @.str.2, i32 743, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@print_cpu._entry_ptr.483 = internal global ptr @print_cpu._entry.482, section ".printk_index", align 4
@.str.484 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"nr_uninterruptible\00", [45 x i8] zeroinitializer }, align 32
@print_cpu._entry.485 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.479, ptr @.str.2, i32 744, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@print_cpu._entry_ptr.486 = internal global ptr @print_cpu._entry.485, section ".printk_index", align 4
@.str.487 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"next_balance\00", [19 x i8] zeroinitializer }, align 32
@print_cpu._entry.488 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.479, ptr @.str.2, i32 745, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@print_cpu._entry_ptr.489 = internal global ptr @print_cpu._entry.488, section ".printk_index", align 4
@.str.490 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"curr->pid\00", [22 x i8] zeroinitializer }, align 32
@print_cpu._entry.491 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.479, ptr @.str.2, i32 746, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@print_cpu._entry_ptr.492 = internal global ptr @print_cpu._entry.491, section ".printk_index", align 4
@.str.493 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"clock\00", [26 x i8] zeroinitializer }, align 32
@print_cpu._entry.494 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.479, ptr @.str.2, i32 747, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@print_cpu._entry_ptr.495 = internal global ptr @print_cpu._entry.494, section ".printk_index", align 4
@.str.496 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"clock_task\00", [21 x i8] zeroinitializer }, align 32
@print_cpu._entry.497 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.479, ptr @.str.2, i32 748, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@print_cpu._entry_ptr.498 = internal global ptr @print_cpu._entry.497, section ".printk_index", align 4
@.str.499 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"avg_idle\00", [23 x i8] zeroinitializer }, align 32
@print_cpu._entry.500 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.479, ptr @.str.2, i32 754, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@print_cpu._entry_ptr.501 = internal global ptr @print_cpu._entry.500, section ".printk_index", align 4
@.str.502 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"max_idle_balance_cost\00", [42 x i8] zeroinitializer }, align 32
@print_cpu._entry.503 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.479, ptr @.str.2, i32 755, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@print_cpu._entry_ptr.504 = internal global ptr @print_cpu._entry.503, section ".printk_index", align 4
@.str.505 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"yld_count\00", [22 x i8] zeroinitializer }, align 32
@print_cpu._entry.506 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.479, ptr @.str.2, i32 761, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@print_cpu._entry_ptr.507 = internal global ptr @print_cpu._entry.506, section ".printk_index", align 4
@.str.508 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sched_count\00", [20 x i8] zeroinitializer }, align 32
@print_cpu._entry.509 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.479, ptr @.str.2, i32 762, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@print_cpu._entry_ptr.510 = internal global ptr @print_cpu._entry.509, section ".printk_index", align 4
@.str.511 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sched_goidle\00", [19 x i8] zeroinitializer }, align 32
@print_cpu._entry.512 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.479, ptr @.str.2, i32 763, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@print_cpu._entry_ptr.513 = internal global ptr @print_cpu._entry.512, section ".printk_index", align 4
@.str.514 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ttwu_count\00", [21 x i8] zeroinitializer }, align 32
@print_cpu._entry.515 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.479, ptr @.str.2, i32 764, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@print_cpu._entry_ptr.516 = internal global ptr @print_cpu._entry.515, section ".printk_index", align 4
@.str.517 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ttwu_local\00", [21 x i8] zeroinitializer }, align 32
@print_cpu._entry.518 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.479, ptr @.str.2, i32 765, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@print_cpu._entry_ptr.519 = internal global ptr @print_cpu._entry.518, section ".printk_index", align 4
@print_cpu._entry.520 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.479, ptr @.str.2, i32 774, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@print_cpu._entry_ptr.521 = internal global ptr @print_cpu._entry.520, section ".printk_index", align 4
@print_rq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.522, ptr @.str.2, i32 564, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.522 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"print_rq\00", [23 x i8] zeroinitializer }, align 32
@print_rq._entry_ptr = internal global ptr @print_rq._entry, section ".printk_index", align 4
@.str.523 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"runnable tasks:\0A\00", [47 x i8] zeroinitializer }, align 32
@print_rq._entry.524 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.525, ptr @.str.522, ptr @.str.2, i32 565, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.525 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\01crunnable tasks:\0A\00", [45 x i8] zeroinitializer }, align 32
@print_rq._entry_ptr.526 = internal global ptr @print_rq._entry.524, section ".printk_index", align 4
@.str.527 = internal constant { [111 x i8], [49 x i8] } { [111 x i8] c" S            task   PID         tree-key  switches  prio     wait-time             sum-exec        sum-sleep\0A\00", [49 x i8] zeroinitializer }, align 32
@print_rq._entry.528 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.529, ptr @.str.522, ptr @.str.2, i32 567, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.529 = internal constant { [113 x i8], [47 x i8] } { [113 x i8] c"\01c S            task   PID         tree-key  switches  prio     wait-time             sum-exec        sum-sleep\0A\00", [47 x i8] zeroinitializer }, align 32
@print_rq._entry_ptr.530 = internal global ptr @print_rq._entry.528, section ".printk_index", align 4
@.str.531 = internal constant { [111 x i8], [49 x i8] } { [111 x i8] c"-------------------------------------------------------------------------------------------------------------\0A\00", [49 x i8] zeroinitializer }, align 32
@print_rq._entry.532 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.533, ptr @.str.522, ptr @.str.2, i32 569, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.533 = internal constant { [113 x i8], [47 x i8] } { [113 x i8] c"\01c-------------------------------------------------------------------------------------------------------------\0A\00", [47 x i8] zeroinitializer }, align 32
@print_rq._entry_ptr.534 = internal global ptr @print_rq._entry.532, section ".printk_index", align 4
@init_task = external dso_local global %struct.task_struct, align 128
@print_rq.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.535 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.536 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.537 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@.str.538 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c">R\00", [29 x i8] zeroinitializer }, align 32
@print_task._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.539, ptr @.str.540, ptr @.str.2, i32 534, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.539 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\01c>R\00", [27 x i8] zeroinitializer }, align 32
@.str.540 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"print_task\00", [21 x i8] zeroinitializer }, align 32
@print_task._entry_ptr = internal global ptr @print_task._entry, section ".printk_index", align 4
@.str.541 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c" %c\00", [28 x i8] zeroinitializer }, align 32
@print_task._entry.542 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.543, ptr @.str.540, ptr @.str.2, i32 536, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.543 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\01c %c\00", [26 x i8] zeroinitializer }, align 32
@print_task._entry_ptr.544 = internal global ptr @print_task._entry.542, section ".printk_index", align 4
@.str.545 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c" %15s %5d %9Ld.%06ld %9Ld %5d \00", [33 x i8] zeroinitializer }, align 32
@print_task._entry.546 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.547, ptr @.str.540, ptr @.str.2, i32 542, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.547 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\01c %15s %5d %9Ld.%06ld %9Ld %5d \00", [63 x i8] zeroinitializer }, align 32
@print_task._entry_ptr.548 = internal global ptr @print_task._entry.546, section ".printk_index", align 4
@.str.549 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%9lld.%06ld %9lld.%06ld %9lld.%06ld %9lld.%06ld\00", [48 x i8] zeroinitializer }, align 32
@print_task._entry.550 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.551, ptr @.str.540, ptr @.str.2, i32 548, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.551 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\01c%9lld.%06ld %9lld.%06ld %9lld.%06ld %9lld.%06ld\00", [46 x i8] zeroinitializer }, align 32
@print_task._entry_ptr.552 = internal global ptr @print_task._entry.550, section ".printk_index", align 4
@.str.553 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c" %s\00", [28 x i8] zeroinitializer }, align 32
@print_task._entry.554 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.555, ptr @.str.540, ptr @.str.2, i32 554, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.555 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\01c %s\00", [26 x i8] zeroinitializer }, align 32
@print_task._entry_ptr.556 = internal global ptr @print_task._entry.554, section ".printk_index", align 4
@print_task._entry.557 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.555, ptr @.str.540, ptr @.str.2, i32 554, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@print_task._entry_ptr.558 = internal global ptr @print_task._entry.557, section ".printk_index", align 4
@print_task._entry.559 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.540, ptr @.str.2, i32 557, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@print_task._entry_ptr.560 = internal global ptr @print_task._entry.559, section ".printk_index", align 4
@task_index_to_char.state_char = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"RSDTtXZPI\00", [22 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.561 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@___asan_gen_.562 = private unnamed_addr constant [16 x i8] c"sched_feat_keys\00", align 1
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 79, i32 19 }
@___asan_gen_.565 = private unnamed_addr constant [14 x i8] c"debugfs_sched\00", align 1
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 298, i32 23 }
@___asan_gen_.568 = private unnamed_addr constant [15 x i8] c"sd_sysctl_cpus\00", align 1
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 347, i32 23 }
@___asan_gen_.571 = private unnamed_addr constant [10 x i8] c"sd_dentry\00", align 1
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 348, i32 24 }
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 412, i32 34 }
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 419, i32 30 }
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 424, i32 3 }
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 427, i32 31 }
@___asan_gen_.600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 590, i32 2 }
@___asan_gen_.601 = private unnamed_addr constant [17 x i8] c"sched_debug_lock\00", align 1
@___asan_gen_.604 = private unnamed_addr constant [11 x i8] c"group_path\00", align 1
@___asan_gen_.606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 497, i32 13 }
@___asan_gen_.618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 591, i32 2 }
@___asan_gen_.630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 596, i32 2 }
@___asan_gen_.636 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 608, i32 2 }
@___asan_gen_.642 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 610, i32 2 }
@___asan_gen_.648 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 612, i32 2 }
@___asan_gen_.654 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 615, i32 2 }
@___asan_gen_.660 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 618, i32 2 }
@___asan_gen_.672 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 620, i32 2 }
@___asan_gen_.678 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 622, i32 2 }
@___asan_gen_.684 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 623, i32 2 }
@___asan_gen_.690 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 624, i32 2 }
@___asan_gen_.696 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 626, i32 2 }
@___asan_gen_.708 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 628, i32 2 }
@___asan_gen_.720 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 630, i32 2 }
@___asan_gen_.726 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 632, i32 2 }
@___asan_gen_.732 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 634, i32 2 }
@___asan_gen_.744 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 636, i32 2 }
@___asan_gen_.750 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 638, i32 2 }
@___asan_gen_.756 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 640, i32 2 }
@___asan_gen_.762 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 642, i32 2 }
@___asan_gen_.768 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 645, i32 2 }
@___asan_gen_.774 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 647, i32 2 }
@___asan_gen_.780 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 652, i32 2 }
@___asan_gen_.786 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 654, i32 2 }
@___asan_gen_.792 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 666, i32 2 }
@___asan_gen_.804 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 667, i32 2 }
@___asan_gen_.810 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 680, i32 2 }
@___asan_gen_.816 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 682, i32 2 }
@___asan_gen_.828 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 684, i32 2 }
@___asan_gen_.834 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 685, i32 2 }
@___asan_gen_.840 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 686, i32 2 }
@___asan_gen_.846 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 697, i32 2 }
@___asan_gen_.855 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 698, i32 2 }
@___asan_gen_.861 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 703, i32 2 }
@___asan_gen_.867 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 705, i32 2 }
@___asan_gen_.879 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 710, i32 2 }
@___asan_gen_.885 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 711, i32 2 }
@___asan_gen_.897 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 961, i32 2 }
@___asan_gen_.906 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 963, i32 2 }
@___asan_gen_.918 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 970, i32 2 }
@___asan_gen_.924 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 971, i32 2 }
@___asan_gen_.930 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 972, i32 2 }
@___asan_gen_.942 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 976, i32 2 }
@___asan_gen_.948 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 981, i32 3 }
@___asan_gen_.954 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 982, i32 3 }
@___asan_gen_.960 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 983, i32 3 }
@___asan_gen_.966 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 984, i32 3 }
@___asan_gen_.972 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 985, i32 3 }
@___asan_gen_.978 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 986, i32 3 }
@___asan_gen_.984 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 987, i32 3 }
@___asan_gen_.990 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 988, i32 3 }
@___asan_gen_.996 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 989, i32 3 }
@___asan_gen_.1002 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 990, i32 3 }
@___asan_gen_.1008 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 991, i32 3 }
@___asan_gen_.1014 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 992, i32 3 }
@___asan_gen_.1020 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 993, i32 3 }
@___asan_gen_.1026 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 994, i32 3 }
@___asan_gen_.1032 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 995, i32 3 }
@___asan_gen_.1038 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 996, i32 3 }
@___asan_gen_.1044 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 997, i32 3 }
@___asan_gen_.1050 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 998, i32 3 }
@___asan_gen_.1056 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 999, i32 3 }
@___asan_gen_.1062 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 1000, i32 3 }
@___asan_gen_.1068 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 1001, i32 3 }
@___asan_gen_.1074 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 1002, i32 3 }
@___asan_gen_.1080 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 1003, i32 3 }
@___asan_gen_.1086 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 1004, i32 3 }
@___asan_gen_.1092 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 1005, i32 3 }
@___asan_gen_.1098 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 1006, i32 3 }
@___asan_gen_.1104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 1007, i32 3 }
@___asan_gen_.1110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 1008, i32 3 }
@___asan_gen_.1116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 1024, i32 3 }
@___asan_gen_.1122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 1025, i32 3 }
@___asan_gen_.1128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 1028, i32 3 }
@___asan_gen_.1134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 1032, i32 2 }
@___asan_gen_.1140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 1033, i32 2 }
@___asan_gen_.1146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 1034, i32 2 }
@___asan_gen_.1152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 1036, i32 2 }
@___asan_gen_.1158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 1038, i32 2 }
@___asan_gen_.1164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 1039, i32 2 }
@___asan_gen_.1170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 1040, i32 2 }
@___asan_gen_.1176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 1041, i32 2 }
@___asan_gen_.1182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 1042, i32 2 }
@___asan_gen_.1188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 1043, i32 2 }
@___asan_gen_.1194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 1044, i32 2 }
@___asan_gen_.1200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 1045, i32 2 }
@___asan_gen_.1206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 1046, i32 2 }
@___asan_gen_.1212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 1049, i32 2 }
@___asan_gen_.1218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 1050, i32 2 }
@___asan_gen_.1224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 1051, i32 2 }
@___asan_gen_.1230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 1052, i32 2 }
@___asan_gen_.1236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 1054, i32 2 }
@___asan_gen_.1242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 1055, i32 2 }
@___asan_gen_.1248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 1057, i32 3 }
@___asan_gen_.1254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 1058, i32 3 }
@___asan_gen_.1260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 1069, i32 3 }
@___asan_gen_.1261 = private unnamed_addr constant [24 x i8] c"latency_check_ratelimit\00", align 1
@___asan_gen_.1266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 1084, i32 9 }
@___asan_gen_.1269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 1086, i32 2 }
@___asan_gen_.1272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 304, i32 37 }
@___asan_gen_.1275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 306, i32 22 }
@___asan_gen_.1276 = private unnamed_addr constant [16 x i8] c"sched_feat_fops\00", align 1
@___asan_gen_.1278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 162, i32 37 }
@___asan_gen_.1281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 307, i32 22 }
@___asan_gen_.1284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 312, i32 21 }
@___asan_gen_.1287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 313, i32 21 }
@___asan_gen_.1290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 314, i32 21 }
@___asan_gen_.1293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 315, i32 21 }
@___asan_gen_.1296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 317, i32 21 }
@___asan_gen_.1299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 318, i32 21 }
@___asan_gen_.1302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 321, i32 22 }
@___asan_gen_.1303 = private unnamed_addr constant [19 x i8] c"sched_scaling_fops\00", align 1
@___asan_gen_.1305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 210, i32 37 }
@___asan_gen_.1308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 322, i32 21 }
@___asan_gen_.1311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 323, i32 21 }
@___asan_gen_.1314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 339, i32 22 }
@___asan_gen_.1315 = private unnamed_addr constant [17 x i8] c"sched_debug_fops\00", align 1
@___asan_gen_.1317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 291, i32 37 }
@___asan_gen_.1319 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.1320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1319, i32 156, i32 2 }
@___asan_gen_.1323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 104, i32 19 }
@___asan_gen_.1324 = private unnamed_addr constant [17 x i8] c"sched_feat_names\00", align 1
@___asan_gen_.1326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 51, i32 27 }
@___asan_gen_.1329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1400, i32 7, i32 1 }
@___asan_gen_.1332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1400, i32 13, i32 1 }
@___asan_gen_.1335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1400, i32 20, i32 1 }
@___asan_gen_.1338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1400, i32 27, i32 1 }
@___asan_gen_.1341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1400, i32 33, i32 1 }
@___asan_gen_.1344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1400, i32 38, i32 1 }
@___asan_gen_.1347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1400, i32 40, i32 1 }
@___asan_gen_.1350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1400, i32 41, i32 1 }
@___asan_gen_.1353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1400, i32 42, i32 1 }
@___asan_gen_.1356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1400, i32 47, i32 1 }
@___asan_gen_.1359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1400, i32 57, i32 1 }
@___asan_gen_.1362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1400, i32 63, i32 1 }
@___asan_gen_.1365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1400, i32 70, i32 1 }
@___asan_gen_.1368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1400, i32 82, i32 1 }
@___asan_gen_.1371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1400, i32 85, i32 1 }
@___asan_gen_.1374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1400, i32 86, i32 1 }
@___asan_gen_.1377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1400, i32 87, i32 1 }
@___asan_gen_.1380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1400, i32 89, i32 1 }
@___asan_gen_.1383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1400, i32 90, i32 1 }
@___asan_gen_.1386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1400, i32 91, i32 1 }
@___asan_gen_.1389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1400, i32 96, i32 1 }
@___asan_gen_.1392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1400, i32 97, i32 1 }
@___asan_gen_.1395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1400, i32 99, i32 1 }
@___asan_gen_.1398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1400, i32 101, i32 1 }
@___asan_gen_.1400 = private unnamed_addr constant [27 x i8] c"../kernel/sched/features.h\00", align 1
@___asan_gen_.1401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1400, i32 102, i32 1 }
@___asan_gen_.1404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 64, i32 17 }
@___asan_gen_.1407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 201, i32 16 }
@___asan_gen_.1408 = private unnamed_addr constant [17 x i8] c"sched_debug_sops\00", align 1
@___asan_gen_.1410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 904, i32 36 }
@___asan_gen_.1413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 381, i32 2 }
@___asan_gen_.1416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 382, i32 2 }
@___asan_gen_.1419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 383, i32 2 }
@___asan_gen_.1422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 384, i32 2 }
@___asan_gen_.1425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 385, i32 2 }
@___asan_gen_.1428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 386, i32 2 }
@___asan_gen_.1431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 387, i32 2 }
@___asan_gen_.1434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 391, i32 22 }
@___asan_gen_.1435 = private unnamed_addr constant [14 x i8] c"sd_flags_fops\00", align 1
@___asan_gen_.1437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 369, i32 37 }
@___asan_gen_.1440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 357, i32 15 }
@___asan_gen_.1442 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.1443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1442, i32 108, i32 2 }
@___asan_gen_.1446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 496, i32 8 }
@___asan_gen_.1461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 461, i32 2 }
@___asan_gen_.1467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 462, i32 2 }
@___asan_gen_.1473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 463, i32 2 }
@___asan_gen_.1476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 469, i32 3 }
@___asan_gen_.1479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 470, i32 3 }
@___asan_gen_.1482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 471, i32 3 }
@___asan_gen_.1485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 472, i32 3 }
@___asan_gen_.1488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 473, i32 3 }
@___asan_gen_.1491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 474, i32 3 }
@___asan_gen_.1494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 475, i32 3 }
@___asan_gen_.1497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 476, i32 3 }
@___asan_gen_.1500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 477, i32 3 }
@___asan_gen_.1503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 478, i32 3 }
@___asan_gen_.1509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 481, i32 2 }
@___asan_gen_.1515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 483, i32 2 }
@___asan_gen_.1521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 484, i32 2 }
@___asan_gen_.1527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 485, i32 2 }
@___asan_gen_.1539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 794, i32 2 }
@___asan_gen_.1551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 803, i32 2 }
@___asan_gen_.1557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 804, i32 2 }
@___asan_gen_.1563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 805, i32 2 }
@___asan_gen_.1575 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 806, i32 2 }
@___asan_gen_.1578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 813, i32 2 }
@___asan_gen_.1587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 814, i32 2 }
@___asan_gen_.1599 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 820, i32 2 }
@___asan_gen_.1605 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 821, i32 2 }
@___asan_gen_.1611 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 822, i32 2 }
@___asan_gen_.1617 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 823, i32 2 }
@___asan_gen_.1629 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 824, i32 2 }
@___asan_gen_.1635 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 825, i32 2 }
@___asan_gen_.1642 = private unnamed_addr constant [28 x i8] c"sched_tunable_scaling_names\00", align 1
@___asan_gen_.1644 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 777, i32 20 }
@___asan_gen_.1650 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 829, i32 2 }
@___asan_gen_.1653 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 833, i32 2 }
@___asan_gen_.1656 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 778, i32 2 }
@___asan_gen_.1659 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 779, i32 2 }
@___asan_gen_.1662 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 780, i32 2 }
@___asan_gen_.1674 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 728, i32 2 }
@___asan_gen_.1677 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 742, i32 2 }
@___asan_gen_.1680 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 743, i32 2 }
@___asan_gen_.1686 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 744, i32 2 }
@___asan_gen_.1692 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 745, i32 2 }
@___asan_gen_.1698 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 746, i32 2 }
@___asan_gen_.1704 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 747, i32 2 }
@___asan_gen_.1710 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 748, i32 2 }
@___asan_gen_.1716 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 754, i32 2 }
@___asan_gen_.1722 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 755, i32 2 }
@___asan_gen_.1728 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 761, i32 3 }
@___asan_gen_.1734 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 762, i32 3 }
@___asan_gen_.1740 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 763, i32 3 }
@___asan_gen_.1746 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 764, i32 3 }
@___asan_gen_.1752 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 765, i32 3 }
@___asan_gen_.1755 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 774, i32 2 }
@___asan_gen_.1761 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 564, i32 2 }
@___asan_gen_.1770 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 565, i32 2 }
@___asan_gen_.1779 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 566, i32 2 }
@___asan_gen_.1788 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 568, i32 2 }
@___asan_gen_.1791 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 572, i32 2 }
@___asan_gen_.1797 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1856, i32 695, i32 2 }
@___asan_gen_.1809 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 534, i32 3 }
@___asan_gen_.1818 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 536, i32 3 }
@___asan_gen_.1827 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 538, i32 2 }
@___asan_gen_.1836 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 544, i32 2 }
@___asan_gen_.1848 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 554, i32 2 }
@___asan_gen_.1849 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.1850 = private constant [24 x i8] c"../kernel/sched/debug.c\00", align 1
@___asan_gen_.1851 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1850, i32 557, i32 2 }
@___asan_gen_.1852 = private unnamed_addr constant [11 x i8] c"state_char\00", align 1
@___asan_gen_.1853 = private unnamed_addr constant [25 x i8] c"../include/linux/sched.h\00", align 1
@___asan_gen_.1854 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1853, i32 1638, i32 20 }
@___asan_gen_.1855 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1856 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.1857 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1856, i32 723, i32 2 }
@llvm.compiler.used = appending global [591 x ptr] [ptr @__initcall__kmod_debug__486_343_sched_init_debug7, ptr @print_cfs_group_stats._entry, ptr @print_cfs_group_stats._entry.381, ptr @print_cfs_group_stats._entry.384, ptr @print_cfs_group_stats._entry.386, ptr @print_cfs_group_stats._entry.388, ptr @print_cfs_group_stats._entry.390, ptr @print_cfs_group_stats._entry.392, ptr @print_cfs_group_stats._entry.394, ptr @print_cfs_group_stats._entry.396, ptr @print_cfs_group_stats._entry.398, ptr @print_cfs_group_stats._entry.400, ptr @print_cfs_group_stats._entry.402, ptr @print_cfs_group_stats._entry.404, ptr @print_cfs_group_stats._entry.407, ptr @print_cfs_group_stats._entry.410, ptr @print_cfs_group_stats._entry.413, ptr @print_cfs_group_stats._entry.416, ptr @print_cfs_group_stats._entry_ptr, ptr @print_cfs_group_stats._entry_ptr.382, ptr @print_cfs_group_stats._entry_ptr.385, ptr @print_cfs_group_stats._entry_ptr.387, ptr @print_cfs_group_stats._entry_ptr.389, ptr @print_cfs_group_stats._entry_ptr.391, ptr @print_cfs_group_stats._entry_ptr.393, ptr @print_cfs_group_stats._entry_ptr.395, ptr @print_cfs_group_stats._entry_ptr.397, ptr @print_cfs_group_stats._entry_ptr.399, ptr @print_cfs_group_stats._entry_ptr.401, ptr @print_cfs_group_stats._entry_ptr.403, ptr @print_cfs_group_stats._entry_ptr.405, ptr @print_cfs_group_stats._entry_ptr.408, ptr @print_cfs_group_stats._entry_ptr.411, ptr @print_cfs_group_stats._entry_ptr.414, ptr @print_cfs_group_stats._entry_ptr.417, ptr @print_cfs_rq._entry, ptr @print_cfs_rq._entry.13, ptr @print_cfs_rq._entry.17, ptr @print_cfs_rq._entry.21, ptr @print_cfs_rq._entry.24, ptr @print_cfs_rq._entry.27, ptr @print_cfs_rq._entry.30, ptr @print_cfs_rq._entry.33, ptr @print_cfs_rq._entry.37, ptr @print_cfs_rq._entry.41, ptr @print_cfs_rq._entry.44, ptr @print_cfs_rq._entry.47, ptr @print_cfs_rq._entry.50, ptr @print_cfs_rq._entry.54, ptr @print_cfs_rq._entry.59, ptr @print_cfs_rq._entry.63, ptr @print_cfs_rq._entry.66, ptr @print_cfs_rq._entry.70, ptr @print_cfs_rq._entry.74, ptr @print_cfs_rq._entry.77, ptr @print_cfs_rq._entry.80, ptr @print_cfs_rq._entry.83, ptr @print_cfs_rq._entry.86, ptr @print_cfs_rq._entry.89, ptr @print_cfs_rq._entry.9, ptr @print_cfs_rq._entry.92, ptr @print_cfs_rq._entry_ptr, ptr @print_cfs_rq._entry_ptr.11, ptr @print_cfs_rq._entry_ptr.14, ptr @print_cfs_rq._entry_ptr.19, ptr @print_cfs_rq._entry_ptr.22, ptr @print_cfs_rq._entry_ptr.25, ptr @print_cfs_rq._entry_ptr.28, ptr @print_cfs_rq._entry_ptr.31, ptr @print_cfs_rq._entry_ptr.34, ptr @print_cfs_rq._entry_ptr.39, ptr @print_cfs_rq._entry_ptr.42, ptr @print_cfs_rq._entry_ptr.45, ptr @print_cfs_rq._entry_ptr.48, ptr @print_cfs_rq._entry_ptr.51, ptr @print_cfs_rq._entry_ptr.56, ptr @print_cfs_rq._entry_ptr.61, ptr @print_cfs_rq._entry_ptr.64, ptr @print_cfs_rq._entry_ptr.67, ptr @print_cfs_rq._entry_ptr.72, ptr @print_cfs_rq._entry_ptr.75, ptr @print_cfs_rq._entry_ptr.78, ptr @print_cfs_rq._entry_ptr.81, ptr @print_cfs_rq._entry_ptr.84, ptr @print_cfs_rq._entry_ptr.87, ptr @print_cfs_rq._entry_ptr.90, ptr @print_cfs_rq._entry_ptr.93, ptr @print_cpu._entry, ptr @print_cpu._entry.480, ptr @print_cpu._entry.482, ptr @print_cpu._entry.485, ptr @print_cpu._entry.488, ptr @print_cpu._entry.491, ptr @print_cpu._entry.494, ptr @print_cpu._entry.497, ptr @print_cpu._entry.500, ptr @print_cpu._entry.503, ptr @print_cpu._entry.506, ptr @print_cpu._entry.509, ptr @print_cpu._entry.512, ptr @print_cpu._entry.515, ptr @print_cpu._entry.518, ptr @print_cpu._entry.520, ptr @print_cpu._entry_ptr, ptr @print_cpu._entry_ptr.481, ptr @print_cpu._entry_ptr.483, ptr @print_cpu._entry_ptr.486, ptr @print_cpu._entry_ptr.489, ptr @print_cpu._entry_ptr.492, ptr @print_cpu._entry_ptr.495, ptr @print_cpu._entry_ptr.498, ptr @print_cpu._entry_ptr.501, ptr @print_cpu._entry_ptr.504, ptr @print_cpu._entry_ptr.507, ptr @print_cpu._entry_ptr.510, ptr @print_cpu._entry_ptr.513, ptr @print_cpu._entry_ptr.516, ptr @print_cpu._entry_ptr.519, ptr @print_cpu._entry_ptr.521, ptr @print_dl_rq._entry, ptr @print_dl_rq._entry.120, ptr @print_dl_rq._entry.124, ptr @print_dl_rq._entry.127, ptr @print_dl_rq._entry.131, ptr @print_dl_rq._entry.135, ptr @print_dl_rq._entry_ptr, ptr @print_dl_rq._entry_ptr.122, ptr @print_dl_rq._entry_ptr.125, ptr @print_dl_rq._entry_ptr.128, ptr @print_dl_rq._entry_ptr.133, ptr @print_dl_rq._entry_ptr.136, ptr @print_rq._entry, ptr @print_rq._entry.524, ptr @print_rq._entry.528, ptr @print_rq._entry.532, ptr @print_rq._entry_ptr, ptr @print_rq._entry_ptr.526, ptr @print_rq._entry_ptr.530, ptr @print_rq._entry_ptr.534, ptr @print_rt_rq._entry, ptr @print_rt_rq._entry.102, ptr @print_rt_rq._entry.105, ptr @print_rt_rq._entry.109, ptr @print_rt_rq._entry.113, ptr @print_rt_rq._entry.116, ptr @print_rt_rq._entry.96, ptr @print_rt_rq._entry.99, ptr @print_rt_rq._entry_ptr, ptr @print_rt_rq._entry_ptr.100, ptr @print_rt_rq._entry_ptr.103, ptr @print_rt_rq._entry_ptr.106, ptr @print_rt_rq._entry_ptr.111, ptr @print_rt_rq._entry_ptr.114, ptr @print_rt_rq._entry_ptr.117, ptr @print_rt_rq._entry_ptr.98, ptr @print_task._entry, ptr @print_task._entry.542, ptr @print_task._entry.546, ptr @print_task._entry.550, ptr @print_task._entry.554, ptr @print_task._entry.557, ptr @print_task._entry.559, ptr @print_task._entry_ptr, ptr @print_task._entry_ptr.544, ptr @print_task._entry_ptr.548, ptr @print_task._entry_ptr.552, ptr @print_task._entry_ptr.556, ptr @print_task._entry_ptr.558, ptr @print_task._entry_ptr.560, ptr @proc_sched_show_task._entry, ptr @proc_sched_show_task._entry.141, ptr @proc_sched_show_task._entry.146, ptr @proc_sched_show_task._entry.150, ptr @proc_sched_show_task._entry.153, ptr @proc_sched_show_task._entry.157, ptr @proc_sched_show_task._entry.161, ptr @proc_sched_show_task._entry.164, ptr @proc_sched_show_task._entry.167, ptr @proc_sched_show_task._entry.170, ptr @proc_sched_show_task._entry.173, ptr @proc_sched_show_task._entry.176, ptr @proc_sched_show_task._entry.179, ptr @proc_sched_show_task._entry.182, ptr @proc_sched_show_task._entry.185, ptr @proc_sched_show_task._entry.188, ptr @proc_sched_show_task._entry.191, ptr @proc_sched_show_task._entry.194, ptr @proc_sched_show_task._entry.197, ptr @proc_sched_show_task._entry.200, ptr @proc_sched_show_task._entry.203, ptr @proc_sched_show_task._entry.206, ptr @proc_sched_show_task._entry.209, ptr @proc_sched_show_task._entry.212, ptr @proc_sched_show_task._entry.215, ptr @proc_sched_show_task._entry.218, ptr @proc_sched_show_task._entry.221, ptr @proc_sched_show_task._entry.224, ptr @proc_sched_show_task._entry.227, ptr @proc_sched_show_task._entry.230, ptr @proc_sched_show_task._entry.233, ptr @proc_sched_show_task._entry.236, ptr @proc_sched_show_task._entry.239, ptr @proc_sched_show_task._entry.242, ptr @proc_sched_show_task._entry.245, ptr @proc_sched_show_task._entry.248, ptr @proc_sched_show_task._entry.251, ptr @proc_sched_show_task._entry.254, ptr @proc_sched_show_task._entry.257, ptr @proc_sched_show_task._entry.260, ptr @proc_sched_show_task._entry.263, ptr @proc_sched_show_task._entry.266, ptr @proc_sched_show_task._entry.269, ptr @proc_sched_show_task._entry.272, ptr @proc_sched_show_task._entry.275, ptr @proc_sched_show_task._entry.278, ptr @proc_sched_show_task._entry.281, ptr @proc_sched_show_task._entry.284, ptr @proc_sched_show_task._entry.287, ptr @proc_sched_show_task._entry.290, ptr @proc_sched_show_task._entry.293, ptr @proc_sched_show_task._entry.296, ptr @proc_sched_show_task._entry.299, ptr @proc_sched_show_task._entry.302, ptr @proc_sched_show_task._entry.305, ptr @proc_sched_show_task._entry.308, ptr @proc_sched_show_task._entry.311, ptr @proc_sched_show_task._entry.314, ptr @proc_sched_show_task._entry.317, ptr @proc_sched_show_task._entry_ptr, ptr @proc_sched_show_task._entry_ptr.143, ptr @proc_sched_show_task._entry_ptr.148, ptr @proc_sched_show_task._entry_ptr.151, ptr @proc_sched_show_task._entry_ptr.154, ptr @proc_sched_show_task._entry_ptr.159, ptr @proc_sched_show_task._entry_ptr.162, ptr @proc_sched_show_task._entry_ptr.165, ptr @proc_sched_show_task._entry_ptr.168, ptr @proc_sched_show_task._entry_ptr.171, ptr @proc_sched_show_task._entry_ptr.174, ptr @proc_sched_show_task._entry_ptr.177, ptr @proc_sched_show_task._entry_ptr.180, ptr @proc_sched_show_task._entry_ptr.183, ptr @proc_sched_show_task._entry_ptr.186, ptr @proc_sched_show_task._entry_ptr.189, ptr @proc_sched_show_task._entry_ptr.192, ptr @proc_sched_show_task._entry_ptr.195, ptr @proc_sched_show_task._entry_ptr.198, ptr @proc_sched_show_task._entry_ptr.201, ptr @proc_sched_show_task._entry_ptr.204, ptr @proc_sched_show_task._entry_ptr.207, ptr @proc_sched_show_task._entry_ptr.210, ptr @proc_sched_show_task._entry_ptr.213, ptr @proc_sched_show_task._entry_ptr.216, ptr @proc_sched_show_task._entry_ptr.219, ptr @proc_sched_show_task._entry_ptr.222, ptr @proc_sched_show_task._entry_ptr.225, ptr @proc_sched_show_task._entry_ptr.228, ptr @proc_sched_show_task._entry_ptr.231, ptr @proc_sched_show_task._entry_ptr.234, ptr @proc_sched_show_task._entry_ptr.237, ptr @proc_sched_show_task._entry_ptr.240, ptr @proc_sched_show_task._entry_ptr.243, ptr @proc_sched_show_task._entry_ptr.246, ptr @proc_sched_show_task._entry_ptr.249, ptr @proc_sched_show_task._entry_ptr.252, ptr @proc_sched_show_task._entry_ptr.255, ptr @proc_sched_show_task._entry_ptr.258, ptr @proc_sched_show_task._entry_ptr.261, ptr @proc_sched_show_task._entry_ptr.264, ptr @proc_sched_show_task._entry_ptr.267, ptr @proc_sched_show_task._entry_ptr.270, ptr @proc_sched_show_task._entry_ptr.273, ptr @proc_sched_show_task._entry_ptr.276, ptr @proc_sched_show_task._entry_ptr.279, ptr @proc_sched_show_task._entry_ptr.282, ptr @proc_sched_show_task._entry_ptr.285, ptr @proc_sched_show_task._entry_ptr.288, ptr @proc_sched_show_task._entry_ptr.291, ptr @proc_sched_show_task._entry_ptr.294, ptr @proc_sched_show_task._entry_ptr.297, ptr @proc_sched_show_task._entry_ptr.300, ptr @proc_sched_show_task._entry_ptr.303, ptr @proc_sched_show_task._entry_ptr.306, ptr @proc_sched_show_task._entry_ptr.309, ptr @proc_sched_show_task._entry_ptr.312, ptr @proc_sched_show_task._entry_ptr.315, ptr @proc_sched_show_task._entry_ptr.318, ptr @sched_debug_header._entry, ptr @sched_debug_header._entry.425, ptr @sched_debug_header._entry.429, ptr @sched_debug_header._entry.432, ptr @sched_debug_header._entry.436, ptr @sched_debug_header._entry.439, ptr @sched_debug_header._entry.442, ptr @sched_debug_header._entry.447, ptr @sched_debug_header._entry.451, ptr @sched_debug_header._entry.454, ptr @sched_debug_header._entry.457, ptr @sched_debug_header._entry.461, ptr @sched_debug_header._entry.465, ptr @sched_debug_header._entry.469, ptr @sched_debug_header._entry.472, ptr @sched_debug_header._entry_ptr, ptr @sched_debug_header._entry_ptr.427, ptr @sched_debug_header._entry_ptr.430, ptr @sched_debug_header._entry_ptr.433, ptr @sched_debug_header._entry_ptr.438, ptr @sched_debug_header._entry_ptr.440, ptr @sched_debug_header._entry_ptr.444, ptr @sched_debug_header._entry_ptr.449, ptr @sched_debug_header._entry_ptr.452, ptr @sched_debug_header._entry_ptr.455, ptr @sched_debug_header._entry_ptr.458, ptr @sched_debug_header._entry_ptr.463, ptr @sched_debug_header._entry_ptr.466, ptr @sched_debug_header._entry_ptr.471, ptr @sched_debug_header._entry_ptr.473, ptr @sched_feat_keys, ptr @debugfs_sched, ptr @sd_sysctl_cpus, ptr @sd_dentry, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @sched_debug_lock, ptr @group_path, ptr @.str.8, ptr @.str.10, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.23, ptr @.str.26, ptr @.str.29, ptr @.str.32, ptr @.str.35, ptr @.str.36, ptr @.str.38, ptr @.str.40, ptr @.str.43, ptr @.str.46, ptr @.str.49, ptr @.str.52, ptr @.str.53, ptr @.str.55, ptr @.str.57, ptr @.str.58, ptr @.str.60, ptr @.str.62, ptr @.str.65, ptr @.str.68, ptr @.str.69, ptr @.str.71, ptr @.str.73, ptr @.str.76, ptr @.str.79, ptr @.str.82, ptr @.str.85, ptr @.str.88, ptr @.str.91, ptr @.str.94, ptr @.str.95, ptr @.str.97, ptr @.str.101, ptr @.str.104, ptr @.str.107, ptr @.str.108, ptr @.str.110, ptr @.str.112, ptr @.str.115, ptr @.str.118, ptr @.str.119, ptr @.str.121, ptr @.str.123, ptr @.str.126, ptr @.str.129, ptr @.str.130, ptr @.str.132, ptr @.str.134, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.142, ptr @.str.144, ptr @.str.145, ptr @.str.147, ptr @.str.149, ptr @.str.152, ptr @.str.155, ptr @.str.156, ptr @.str.158, ptr @.str.160, ptr @.str.163, ptr @.str.166, ptr @.str.169, ptr @.str.172, ptr @.str.175, ptr @.str.178, ptr @.str.181, ptr @.str.184, ptr @.str.187, ptr @.str.190, ptr @.str.193, ptr @.str.196, ptr @.str.199, ptr @.str.202, ptr @.str.205, ptr @.str.208, ptr @.str.211, ptr @.str.214, ptr @.str.217, ptr @.str.220, ptr @.str.223, ptr @.str.226, ptr @.str.229, ptr @.str.232, ptr @.str.235, ptr @.str.238, ptr @.str.241, ptr @.str.244, ptr @.str.247, ptr @.str.250, ptr @.str.253, ptr @.str.256, ptr @.str.259, ptr @.str.262, ptr @.str.265, ptr @.str.268, ptr @.str.271, ptr @.str.274, ptr @.str.277, ptr @.str.280, ptr @.str.283, ptr @.str.286, ptr @.str.289, ptr @.str.292, ptr @.str.295, ptr @.str.298, ptr @.str.301, ptr @.str.304, ptr @.str.307, ptr @.str.310, ptr @.str.313, ptr @.str.316, ptr @resched_latency_warn.latency_check_ratelimit, ptr @.str.319, ptr @.str.320, ptr @.str.321, ptr @.str.322, ptr @sched_feat_fops, ptr @.str.323, ptr @.str.324, ptr @.str.325, ptr @.str.326, ptr @.str.327, ptr @.str.328, ptr @.str.329, ptr @.str.330, ptr @sched_scaling_fops, ptr @.str.331, ptr @.str.332, ptr @.str.333, ptr @sched_debug_fops, ptr @.str.336, ptr @.str.337, ptr @sched_feat_names, ptr @.str.338, ptr @.str.339, ptr @.str.340, ptr @.str.341, ptr @.str.342, ptr @.str.343, ptr @.str.344, ptr @.str.345, ptr @.str.346, ptr @.str.347, ptr @.str.348, ptr @.str.349, ptr @.str.350, ptr @.str.351, ptr @.str.352, ptr @.str.353, ptr @.str.354, ptr @.str.355, ptr @.str.356, ptr @.str.357, ptr @.str.358, ptr @.str.359, ptr @.str.360, ptr @.str.361, ptr @.str.362, ptr @.str.363, ptr @.str.364, ptr @sched_debug_sops, ptr @.str.365, ptr @.str.366, ptr @.str.367, ptr @.str.368, ptr @.str.369, ptr @.str.370, ptr @.str.371, ptr @.str.372, ptr @sd_flags_fops, ptr @.str.373, ptr @.str.374, ptr @.str.375, ptr @.str.376, ptr @.str.377, ptr @.str.378, ptr @.str.379, ptr @.str.380, ptr @.str.383, ptr @.str.406, ptr @.str.409, ptr @.str.412, ptr @.str.415, ptr @.str.420, ptr @.str.421, ptr @.str.422, ptr @.str.423, ptr @.str.424, ptr @.str.426, ptr @.str.428, ptr @.str.431, ptr @.str.434, ptr @.str.435, ptr @.str.437, ptr @.str.441, ptr @.str.443, ptr @.str.445, ptr @.str.446, ptr @.str.448, ptr @.str.450, ptr @.str.453, ptr @.str.456, ptr @.str.459, ptr @.str.460, ptr @.str.462, ptr @.str.464, ptr @.str.467, ptr @.str.468, ptr @sched_tunable_scaling_names, ptr @.str.470, ptr @.str.474, ptr @.str.475, ptr @.str.476, ptr @.str.477, ptr @.str.478, ptr @.str.479, ptr @.str.484, ptr @.str.487, ptr @.str.490, ptr @.str.493, ptr @.str.496, ptr @.str.499, ptr @.str.502, ptr @.str.505, ptr @.str.508, ptr @.str.511, ptr @.str.514, ptr @.str.517, ptr @.str.522, ptr @.str.523, ptr @.str.525, ptr @.str.527, ptr @.str.529, ptr @.str.531, ptr @.str.533, ptr @.str.535, ptr @.str.536, ptr @.str.537, ptr @.str.538, ptr @.str.539, ptr @.str.540, ptr @.str.541, ptr @.str.543, ptr @.str.545, ptr @.str.547, ptr @.str.549, ptr @.str.551, ptr @.str.553, ptr @.str.555, ptr @task_index_to_char.state_char, ptr @.str.561], section "llvm.metadata"
@0 = internal global [432 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sched_feat_keys to i32), i32 200, i32 256, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debugfs_sched to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_sysctl_cpus to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_dentry to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_cfs_rq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1849 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sched_debug_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @group_path to i32), i32 4096, i32 5120, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_cfs_rq._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1849 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_cfs_rq._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1849 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_cfs_rq._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1849 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_cfs_rq._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1849 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_cfs_rq._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1849 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_cfs_rq._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1849 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_cfs_rq._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1849 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_cfs_rq._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1849 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_cfs_rq._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1849 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_cfs_rq._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1849 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_cfs_rq._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1849 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_cfs_rq._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1849 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_cfs_rq._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1849 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_cfs_rq._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1849 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_cfs_rq._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1849 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_cfs_rq._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1849 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_cfs_rq._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1849 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_cfs_rq._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1849 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_cfs_rq._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1849 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_cfs_rq._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1849 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_cfs_rq._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1849 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_cfs_rq._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1849 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_cfs_rq._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1849 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_cfs_rq._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1849 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_cfs_rq._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1849 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_rt_rq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1849 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_rt_rq._entry.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1849 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_rt_rq._entry.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1849 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_rt_rq._entry.102 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1849 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_rt_rq._entry.105 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1849 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_rt_rq._entry.109 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1849 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_rt_rq._entry.113 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1849 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_rt_rq._entry.116 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1849 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_dl_rq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1849 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.846 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.846 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_dl_rq._entry.120 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1849 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_dl_rq._entry.124 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1849 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_dl_rq._entry.127 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1849 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.879 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.879 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_dl_rq._entry.131 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1849 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.879 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.879 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_dl_rq._entry.135 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1849 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @proc_sched_show_task._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1849 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @proc_sched_show_task._entry.141 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1849 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @proc_sched_show_task._entry.146 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1849 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @proc_sched_show_task._entry.150 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1849 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @proc_sched_show_task._entry.153 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1849 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @proc_sched_show_task._entry.157 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1849 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @proc_sched_show_task._entry.161 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1849 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @proc_sched_show_task._entry.164 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1849 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @proc_sched_show_task._entry.167 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1849 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @proc_sched_show_task._entry.170 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1849 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @proc_sched_show_task._entry.173 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1849 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @proc_sched_show_task._entry.176 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1849 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @proc_sched_show_task._entry.179 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1849 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @proc_sched_show_task._entry.182 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1849 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @proc_sched_show_task._entry.185 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1849 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @proc_sched_show_task._entry.188 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1849 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @proc_sched_show_task._entry.191 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1849 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @proc_sched_show_task._entry.194 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1849 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @proc_sched_show_task._entry.197 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1849 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @proc_sched_show_task._entry.200 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1849 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @proc_sched_show_task._entry.203 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1849 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @proc_sched_show_task._entry.206 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1849 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @proc_sched_show_task._entry.209 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1849 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1050 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @proc_sched_show_task._entry.212 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1849 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1050 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @proc_sched_show_task._entry.215 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1849 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1062 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @proc_sched_show_task._entry.218 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1849 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1062 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @proc_sched_show_task._entry.221 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1849 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.223 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @proc_sched_show_task._entry.224 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1849 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.226 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @proc_sched_show_task._entry.227 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1849 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.229 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @proc_sched_show_task._entry.230 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1849 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.232 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @proc_sched_show_task._entry.233 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1849 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.235 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @proc_sched_show_task._entry.236 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1849 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.238 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @proc_sched_show_task._entry.239 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1849 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.241 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @proc_sched_show_task._entry.242 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1849 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.244 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @proc_sched_show_task._entry.245 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1849 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.247 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @proc_sched_show_task._entry.248 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1849 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.250 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @proc_sched_show_task._entry.251 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1849 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.253 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @proc_sched_show_task._entry.254 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1849 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.256 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @proc_sched_show_task._entry.257 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1849 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.259 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @proc_sched_show_task._entry.260 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1849 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.262 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @proc_sched_show_task._entry.263 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1849 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.265 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @proc_sched_show_task._entry.266 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1849 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.268 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @proc_sched_show_task._entry.269 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1849 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.271 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @proc_sched_show_task._entry.272 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1849 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.274 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @proc_sched_show_task._entry.275 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1849 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.277 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @proc_sched_show_task._entry.278 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1849 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.280 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @proc_sched_show_task._entry.281 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1849 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.283 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @proc_sched_show_task._entry.284 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1849 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.286 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @proc_sched_show_task._entry.287 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1849 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.289 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @proc_sched_show_task._entry.290 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1849 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.292 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @proc_sched_show_task._entry.293 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1849 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.295 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @proc_sched_show_task._entry.296 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1849 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.298 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @proc_sched_show_task._entry.299 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1849 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.301 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @proc_sched_show_task._entry.302 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1849 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.304 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @proc_sched_show_task._entry.305 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1849 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.307 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @proc_sched_show_task._entry.308 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1849 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.310 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @proc_sched_show_task._entry.311 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1849 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.313 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @proc_sched_show_task._entry.314 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1849 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.316 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @proc_sched_show_task._entry.317 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1849 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @resched_latency_warn.latency_check_ratelimit to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1261 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.319 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.320 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.321 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.322 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sched_feat_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.1276 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.323 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.324 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.325 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.326 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.327 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.328 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.329 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.330 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sched_scaling_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.331 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.332 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.333 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sched_debug_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.336 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.337 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sched_feat_names to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.1324 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.338 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.339 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.340 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.341 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.342 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.343 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.344 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.345 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.346 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.347 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.348 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.349 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.350 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.351 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.352 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.353 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.354 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.355 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.356 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.357 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.358 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.359 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.360 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.361 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.362 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.363 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.364 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sched_debug_sops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1408 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.365 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.366 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.367 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.368 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.369 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.370 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.371 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.372 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_flags_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.1435 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.373 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.374 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.375 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.376 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.377 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_cfs_group_stats._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1849 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.378 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.379 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.380 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_cfs_group_stats._entry.381 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1849 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.383 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_cfs_group_stats._entry.384 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1849 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_cfs_group_stats._entry.386 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1849 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_cfs_group_stats._entry.388 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1849 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_cfs_group_stats._entry.390 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1849 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_cfs_group_stats._entry.392 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1849 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_cfs_group_stats._entry.394 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1849 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_cfs_group_stats._entry.396 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1849 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_cfs_group_stats._entry.398 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1849 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_cfs_group_stats._entry.400 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1849 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_cfs_group_stats._entry.402 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1849 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_cfs_group_stats._entry.404 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1849 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.406 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_cfs_group_stats._entry.407 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1849 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.409 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_cfs_group_stats._entry.410 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1849 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.412 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_cfs_group_stats._entry.413 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1849 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.415 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_cfs_group_stats._entry.416 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1849 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.420 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sched_debug_header._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1849 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.421 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.422 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.423 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.424 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sched_debug_header._entry.425 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1849 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.426 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.428 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sched_debug_header._entry.429 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1849 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.431 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sched_debug_header._entry.432 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1849 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.434 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.435 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sched_debug_header._entry.436 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1849 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.437 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sched_debug_header._entry.439 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1849 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.441 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sched_debug_header._entry.442 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1849 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.443 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.445 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.446 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sched_debug_header._entry.447 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1849 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.448 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.450 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sched_debug_header._entry.451 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1849 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.453 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sched_debug_header._entry.454 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1849 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.456 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sched_debug_header._entry.457 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1849 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.459 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.460 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sched_debug_header._entry.461 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1849 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.462 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.464 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sched_debug_header._entry.465 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1849 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.467 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.468 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sched_tunable_scaling_names to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1642 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sched_debug_header._entry.469 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1849 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.470 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sched_debug_header._entry.472 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1849 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.474 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.475 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.476 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.477 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_cpu._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1849 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.478 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.479 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_cpu._entry.480 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1849 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_cpu._entry.482 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1849 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1680 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.484 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_cpu._entry.485 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1849 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.487 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1692 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_cpu._entry.488 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1849 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1692 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.490 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_cpu._entry.491 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1849 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.493 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1704 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_cpu._entry.494 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1849 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1704 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.496 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_cpu._entry.497 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1849 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.499 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_cpu._entry.500 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1849 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.502 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1722 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_cpu._entry.503 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1849 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1722 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.505 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1728 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_cpu._entry.506 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1849 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1728 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.508 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1734 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_cpu._entry.509 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1849 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1734 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.511 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1740 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_cpu._entry.512 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1849 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1740 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.514 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1746 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_cpu._entry.515 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1849 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1746 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.517 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1752 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_cpu._entry.518 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1849 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1752 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_cpu._entry.520 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1849 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1755 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_rq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1849 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1761 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.522 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1761 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.523 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_rq._entry.524 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1849 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.525 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.527 to i32), i32 111, i32 160, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1779 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_rq._entry.528 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1849 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1779 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.529 to i32), i32 113, i32 160, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1779 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.531 to i32), i32 111, i32 160, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1788 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_rq._entry.532 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1849 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1788 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.533 to i32), i32 113, i32 160, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1788 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.535 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1791 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.536 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1797 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.537 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1797 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.538 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1809 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_task._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1849 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1809 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.539 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1809 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.540 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1809 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.541 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1818 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_task._entry.542 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1849 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1818 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.543 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1818 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.545 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1827 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_task._entry.546 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1849 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1827 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.547 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1827 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.549 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1836 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_task._entry.550 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1849 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1836 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.551 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1836 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.553 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_task._entry.554 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1849 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.555 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_task._entry.557 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1849 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_task._entry.559 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1849 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1851 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @task_index_to_char.state_char to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1852 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.561 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1857 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sched_init_debug() #0 section ".init.text" align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.321, ptr noundef null) #13
  store ptr %call, ptr @debugfs_sched, align 4
  %call1 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.322, i16 noundef zeroext 420, ptr noundef %call, ptr noundef null, ptr noundef nonnull @sched_feat_fops) #13
  %0 = load ptr, ptr @debugfs_sched, align 4
  tail call void @debugfs_create_bool(ptr noundef nonnull @.str.323, i16 noundef zeroext 420, ptr noundef %0, ptr noundef nonnull @sched_debug_verbose) #13
  %1 = load ptr, ptr @debugfs_sched, align 4
  tail call void @debugfs_create_u32(ptr noundef nonnull @.str.324, i16 noundef zeroext 420, ptr noundef %1, ptr noundef nonnull @sysctl_sched_latency) #13
  %2 = load ptr, ptr @debugfs_sched, align 4
  tail call void @debugfs_create_u32(ptr noundef nonnull @.str.325, i16 noundef zeroext 420, ptr noundef %2, ptr noundef nonnull @sysctl_sched_min_granularity) #13
  %3 = load ptr, ptr @debugfs_sched, align 4
  tail call void @debugfs_create_u32(ptr noundef nonnull @.str.326, i16 noundef zeroext 420, ptr noundef %3, ptr noundef nonnull @sysctl_sched_idle_min_granularity) #13
  %4 = load ptr, ptr @debugfs_sched, align 4
  tail call void @debugfs_create_u32(ptr noundef nonnull @.str.327, i16 noundef zeroext 420, ptr noundef %4, ptr noundef nonnull @sysctl_sched_wakeup_granularity) #13
  %5 = load ptr, ptr @debugfs_sched, align 4
  tail call void @debugfs_create_u32(ptr noundef nonnull @.str.328, i16 noundef zeroext 420, ptr noundef %5, ptr noundef nonnull @sysctl_resched_latency_warn_ms) #13
  %6 = load ptr, ptr @debugfs_sched, align 4
  tail call void @debugfs_create_u32(ptr noundef nonnull @.str.329, i16 noundef zeroext 420, ptr noundef %6, ptr noundef nonnull @sysctl_resched_latency_warn_once) #13
  %7 = load ptr, ptr @debugfs_sched, align 4
  %call2 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.330, i16 noundef zeroext 420, ptr noundef %7, ptr noundef null, ptr noundef nonnull @sched_scaling_fops) #13
  %8 = load ptr, ptr @debugfs_sched, align 4
  tail call void @debugfs_create_u32(ptr noundef nonnull @.str.331, i16 noundef zeroext 420, ptr noundef %8, ptr noundef nonnull @sysctl_sched_migration_cost) #13
  %9 = load ptr, ptr @debugfs_sched, align 4
  tail call void @debugfs_create_u32(ptr noundef nonnull @.str.332, i16 noundef zeroext 420, ptr noundef %9, ptr noundef nonnull @sysctl_sched_nr_migrate) #13
  tail call void @mutex_lock_nested(ptr noundef nonnull @sched_domains_mutex, i32 noundef 0) #13
  tail call void @update_sched_domain_debugfs()
  tail call void @mutex_unlock(ptr noundef nonnull @sched_domains_mutex) #13
  %10 = load ptr, ptr @debugfs_sched, align 4
  %call3 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.333, i16 noundef zeroext 292, ptr noundef %10, ptr noundef null, ptr noundef nonnull @sched_debug_fops) #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @update_sched_domain_debugfs() local_unnamed_addr #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %buf = alloca [32 x i8], align 1
  %0 = load ptr, ptr @debugfs_sched, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr @sd_sysctl_cpus, align 4
  %cmp.i.not = icmp eq ptr %1, null
  br i1 %cmp.i.not, label %if.then1, label %if.end5

if.then1:                                         ; preds = %if.end
  %call2 = tail call zeroext i1 @alloc_cpumask_var(ptr noundef nonnull @sd_sysctl_cpus, i32 noundef 3264) #13
  br i1 %call2, label %if.end4, label %cleanup

if.end4:                                          ; preds = %if.then1
  %2 = load ptr, ptr @sd_sysctl_cpus, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %3 = load i32, ptr @nr_cpu_ids, align 4
  %sub.i.i = add i32 %3, 31
  %4 = lshr i32 %sub.i.i, 3
  %mul.i.i = and i32 %4, 536870908
  %5 = call ptr @memcpy(ptr %2, ptr @__cpu_possible_mask, i32 %mul.i.i)
  br label %if.end5

if.end5:                                          ; preds = %if.end4, %if.end
  %6 = load ptr, ptr @sd_dentry, align 4
  %tobool6.not = icmp eq ptr %6, null
  br i1 %tobool6.not, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end5
  %7 = load ptr, ptr @debugfs_sched, align 4
  %call8 = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str, ptr noundef %7) #13
  store ptr %call8, ptr @sd_dentry, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end5
  %8 = load ptr, ptr @sd_sysctl_cpus, align 4
  %call1057 = call i32 @cpumask_next(i32 noundef -1, ptr noundef %8) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %9 = load i32, ptr @nr_cpu_ids, align 4
  %cmp58 = icmp ult i32 %call1057, %9
  br i1 %cmp58, label %for.body, label %cleanup

for.body:                                         ; preds = %__cpumask_clear_cpu.exit, %if.end9
  %call1059 = phi i32 [ %call10, %__cpumask_clear_cpu.exit ], [ %call1057, %if.end9 ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buf) #13
  %10 = call ptr @memset(ptr %buf, i32 255, i32 32)
  %call11 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buf, i32 noundef 32, ptr noundef nonnull @.str.1, i32 noundef %call1059)
  %11 = load ptr, ptr @sd_dentry, align 4
  %call13 = call ptr @debugfs_lookup(ptr noundef nonnull %buf, ptr noundef %11) #13
  call void @debugfs_remove(ptr noundef %call13) #13
  %12 = load ptr, ptr @sd_dentry, align 4
  %call15 = call ptr @debugfs_create_dir(ptr noundef nonnull %buf, ptr noundef %12) #13
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call1059
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx, align 4
  %add = add i32 %14, ptrtoint (ptr @runqueues to i32)
  %15 = inttoptr i32 %add to ptr
  %sd21 = getelementptr inbounds %struct.rq, ptr %15, i32 0, i32 36
  %16 = ptrtoint ptr %sd21 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %sd21, align 4
  %call.i = call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @sched_domains_mutex, i32 0, i32 5), i32 noundef -1) #13
  %tobool24.not = icmp eq i32 %call.i, 0
  br i1 %tobool24.not, label %lor.lhs.false, label %do.end34

lor.lhs.false:                                    ; preds = %for.body
  %call25 = call i32 @rcu_read_lock_held() #13
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %land.lhs.true, label %do.end34

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call27 = call i32 @debug_lockdep_rcu_enabled() #13
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %do.end34, label %land.lhs.true29

land.lhs.true29:                                  ; preds = %land.lhs.true
  %.b52 = load i1, ptr @update_sched_domain_debugfs.__warned, align 1
  br i1 %.b52, label %do.end34, label %if.then31

if.then31:                                        ; preds = %land.lhs.true29
  store i1 true, ptr @update_sched_domain_debugfs.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 424, ptr noundef nonnull @.str.3) #13
  br label %do.end34

do.end34:                                         ; preds = %if.then31, %land.lhs.true29, %land.lhs.true, %lor.lhs.false, %for.body
  %tobool37.not54 = icmp eq ptr %17, null
  br i1 %tobool37.not54, label %for.end, label %for.body38

for.body38:                                       ; preds = %for.body38, %do.end34
  %i.056 = phi i32 [ %inc, %for.body38 ], [ 0, %do.end34 ]
  %sd.055 = phi ptr [ %19, %for.body38 ], [ %17, %do.end34 ]
  %call40 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buf, i32 noundef 32, ptr noundef nonnull @.str.4, i32 noundef %i.056)
  %call42 = call ptr @debugfs_create_dir(ptr noundef nonnull %buf, ptr noundef %call15) #13
  %min_interval.i = getelementptr inbounds %struct.sched_domain, ptr %sd.055, i32 0, i32 3
  call void @debugfs_create_ulong(ptr noundef nonnull @.str.365, i16 noundef zeroext 420, ptr noundef %call42, ptr noundef %min_interval.i) #13
  %max_interval.i = getelementptr inbounds %struct.sched_domain, ptr %sd.055, i32 0, i32 4
  call void @debugfs_create_ulong(ptr noundef nonnull @.str.366, i16 noundef zeroext 420, ptr noundef %call42, ptr noundef %max_interval.i) #13
  %max_newidle_lb_cost.i = getelementptr inbounds %struct.sched_domain, ptr %sd.055, i32 0, i32 14
  call void @debugfs_create_u64(ptr noundef nonnull @.str.367, i16 noundef zeroext 420, ptr noundef %call42, ptr noundef %max_newidle_lb_cost.i) #13
  %busy_factor.i = getelementptr inbounds %struct.sched_domain, ptr %sd.055, i32 0, i32 5
  call void @debugfs_create_u32(ptr noundef nonnull @.str.368, i16 noundef zeroext 420, ptr noundef %call42, ptr noundef %busy_factor.i) #13
  %imbalance_pct.i = getelementptr inbounds %struct.sched_domain, ptr %sd.055, i32 0, i32 6
  call void @debugfs_create_u32(ptr noundef nonnull @.str.369, i16 noundef zeroext 420, ptr noundef %call42, ptr noundef %imbalance_pct.i) #13
  %cache_nice_tries.i = getelementptr inbounds %struct.sched_domain, ptr %sd.055, i32 0, i32 7
  call void @debugfs_create_u32(ptr noundef nonnull @.str.370, i16 noundef zeroext 420, ptr noundef %call42, ptr noundef %cache_nice_tries.i) #13
  %name.i = getelementptr inbounds %struct.sched_domain, ptr %sd.055, i32 0, i32 37
  call void @debugfs_create_str(ptr noundef nonnull @.str.371, i16 noundef zeroext 292, ptr noundef %call42, ptr noundef %name.i) #13
  %flags.i = getelementptr inbounds %struct.sched_domain, ptr %sd.055, i32 0, i32 9
  %call.i53 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.372, i16 noundef zeroext 292, ptr noundef %call42, ptr noundef %flags.i, ptr noundef nonnull @sd_flags_fops) #13
  %inc = add i32 %i.056, 1
  %18 = ptrtoint ptr %sd.055 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sd.055, align 8
  %tobool37.not = icmp eq ptr %19, null
  br i1 %tobool37.not, label %for.end, label %for.body38

for.end:                                          ; preds = %for.body38, %do.end34
  %20 = load ptr, ptr @sd_sysctl_cpus, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.not.i.i.i = icmp ugt i32 %21, %call1059
  br i1 %cmp.not.i.i.i, label %__cpumask_clear_cpu.exit, label %land.rhs.i.i.i

land.rhs.i.i.i:                                   ; preds = %for.end
  %.b37.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i, label %__cpumask_clear_cpu.exit, label %if.then.i.i.i, !prof !853

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.374, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
  br label %__cpumask_clear_cpu.exit

__cpumask_clear_cpu.exit:                         ; preds = %if.then.i.i.i, %land.rhs.i.i.i, %for.end
  %rem.i.i = and i32 %call1059, 31
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %div2.i.i = lshr i32 %call1059, 5
  %add.ptr.i.i = getelementptr i32, ptr %20, i32 %div2.i.i
  %neg.i.i = xor i32 %shl.i.i, -1
  %22 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %add.ptr.i.i, align 4
  %and.i.i = and i32 %23, %neg.i.i
  store i32 %and.i.i, ptr %add.ptr.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf) #13
  %24 = load ptr, ptr @sd_sysctl_cpus, align 4
  %call10 = call i32 @cpumask_next(i32 noundef %call1059, ptr noundef %24) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %25 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call10, %25
  br i1 %cmp, label %for.body, label %cleanup

cleanup:                                          ; preds = %__cpumask_clear_cpu.exit, %if.end9, %if.then1, %entry
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @alloc_cpumask_var(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_lookup(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dirty_sched_domain_sysctl(i32 noundef %cpu) local_unnamed_addr #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @sd_sysctl_cpus, align 4
  %cmp.i.not = icmp eq ptr %0, null
  br i1 %cmp.i.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %1 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.not.i.i.i = icmp ugt i32 %1, %cpu
  br i1 %cmp.not.i.i.i, label %__cpumask_set_cpu.exit, label %land.rhs.i.i.i

land.rhs.i.i.i:                                   ; preds = %if.then
  %.b37.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i, label %__cpumask_set_cpu.exit, label %if.then.i.i.i, !prof !853

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.374, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
  br label %__cpumask_set_cpu.exit

__cpumask_set_cpu.exit:                           ; preds = %if.then.i.i.i, %land.rhs.i.i.i, %if.then
  %rem.i.i = and i32 %cpu, 31
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %div2.i.i = lshr i32 %cpu, 5
  %add.ptr.i.i = getelementptr i32, ptr %0, i32 %div2.i.i
  %2 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr.i.i, align 4
  %or.i.i = or i32 %3, %shl.i.i
  store i32 %or.i.i, ptr %add.ptr.i.i, align 4
  br label %if.end

if.end:                                           ; preds = %__cpumask_set_cpu.exit, %entry
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @print_cfs_rq(ptr noundef %m, i32 noundef %cpu, ptr noundef %cfs_rq) local_unnamed_addr #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %buf = alloca [128 x i8], align 1
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %cpu
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %add = add i32 %1, ptrtoint (ptr @runqueues to i32)
  %2 = inttoptr i32 %add to ptr
  %tobool.not = icmp eq ptr %m, null
  br i1 %tobool.not, label %do.end5, label %if.then

if.then:                                          ; preds = %entry
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %m, ptr noundef nonnull @.str.5) #13
  br label %do.end8

do.end5:                                          ; preds = %entry
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #16
  br label %do.end8

do.end8:                                          ; preds = %do.end5, %if.then
  %call.i = tail call i32 @_raw_spin_trylock(ptr noundef nonnull @sched_debug_lock) #13
  %tobool10.not = icmp eq i32 %call.i, 0
  br i1 %tobool10.not, label %if.else24, label %if.then11

if.then11:                                        ; preds = %do.end8
  %tg = getelementptr inbounds %struct.cfs_rq, ptr %cfs_rq, i32 0, i32 30
  %3 = ptrtoint ptr %tg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %tg, align 4
  %call.i536 = tail call i32 @autogroup_path(ptr noundef %4, ptr noundef nonnull @group_path, i32 noundef 4096) #13
  %tobool.not.i = icmp eq i32 %call.i536, 0
  br i1 %tobool.not.i, label %if.end.i, label %task_group_path.exit

if.end.i:                                         ; preds = %if.then11
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 128
  %kn.i.i = getelementptr inbounds %struct.cgroup, ptr %6, i32 0, i32 11
  %7 = ptrtoint ptr %kn.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %kn.i.i, align 8
  %call.i.i.i = tail call i32 @kernfs_path_from_node(ptr noundef %8, ptr noundef null, ptr noundef nonnull @group_path, i32 noundef 4096) #13
  br label %task_group_path.exit

task_group_path.exit:                             ; preds = %if.end.i, %if.then11
  br i1 %tobool.not, label %do.end18, label %if.then14

if.then14:                                        ; preds = %task_group_path.exit
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %m, ptr noundef nonnull @.str.8, i32 noundef %cpu, ptr noundef nonnull @group_path) #13
  br label %do.end23

do.end18:                                         ; preds = %task_group_path.exit
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %cpu, ptr noundef nonnull @group_path) #16
  br label %do.end23

do.end23:                                         ; preds = %do.end18, %if.then14
  tail call void @_raw_spin_unlock(ptr noundef nonnull @sched_debug_lock) #13
  br label %do.body46

if.else24:                                        ; preds = %do.end8
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %buf) #13
  %9 = call ptr @memset(ptr %buf, i32 255, i32 128)
  %tg26 = getelementptr inbounds %struct.cfs_rq, ptr %cfs_rq, i32 0, i32 30
  %10 = ptrtoint ptr %tg26 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tg26, align 4
  %call.i537 = call i32 @autogroup_path(ptr noundef %11, ptr noundef nonnull %buf, i32 noundef 125) #13
  %tobool.not.i538 = icmp eq i32 %call.i537, 0
  br i1 %tobool.not.i538, label %if.end.i541, label %task_group_path.exit542

if.end.i541:                                      ; preds = %if.else24
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 128
  %kn.i.i539 = getelementptr inbounds %struct.cgroup, ptr %13, i32 0, i32 11
  %14 = ptrtoint ptr %kn.i.i539 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %kn.i.i539, align 8
  %call.i.i.i540 = call i32 @kernfs_path_from_node(ptr noundef %15, ptr noundef null, ptr noundef nonnull %buf, i32 noundef 125) #13
  br label %task_group_path.exit542

task_group_path.exit542:                          ; preds = %if.end.i541, %if.else24
  %add.ptr29 = getelementptr inbounds i8, ptr %buf, i32 124
  %16 = ptrtoint ptr %add.ptr29 to i32
  call void @__asan_storeN_noabort(i32 %16, i32 4)
  store i32 774778368, ptr %add.ptr29, align 1
  br i1 %tobool.not, label %do.end38, label %if.then33

if.then33:                                        ; preds = %task_group_path.exit542
  call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %m, ptr noundef nonnull @.str.8, i32 noundef %cpu, ptr noundef nonnull %buf) #13
  br label %do.end44

do.end38:                                         ; preds = %task_group_path.exit542
  %call41 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %cpu, ptr noundef nonnull %buf) #16
  br label %do.end44

do.end44:                                         ; preds = %do.end38, %if.then33
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %buf) #13
  br label %do.body46

do.body46:                                        ; preds = %do.end44, %do.end23
  %exec_clock57 = getelementptr inbounds %struct.cfs_rq, ptr %cfs_rq, i32 0, i32 5
  %17 = ptrtoint ptr %exec_clock57 to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %exec_clock57, align 8
  %cmp.i544 = icmp slt i64 %18, 0
  br i1 %tobool.not, label %do.end55, label %if.then48

if.then48:                                        ; preds = %do.body46
  br i1 %cmp.i544, label %if.end181.i, label %if.end375.i

if.end181.i:                                      ; preds = %if.then48
  %sub.i = sub i64 0, %18
  %19 = call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %sub.i) #17, !srcloc !854
  %20 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %sub.i, i64 %19, i32 0) #17, !srcloc !855
  %asmresult10.i.i = extractvalue { i64, i32 } %20, 0
  %div161565.i = lshr i64 %asmresult10.i.i, 18
  %sub183.i = sub nsw i64 0, %div161565.i
  br label %nsec_high.exit

if.end375.i:                                      ; preds = %if.then48
  %21 = call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %18) #17, !srcloc !854
  %22 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %18, i64 %21, i32 0) #17, !srcloc !855
  %asmresult10.i566.i = extractvalue { i64, i32 } %22, 0
  %div380564.i = lshr i64 %asmresult10.i566.i, 18
  br label %nsec_high.exit

nsec_high.exit:                                   ; preds = %if.end375.i, %if.end181.i
  %retval.0.i = phi i64 [ %sub183.i, %if.end181.i ], [ %div380564.i, %if.end375.i ]
  %23 = call i64 @llvm.abs.i64(i64 %18, i1 false) #13
  %conv17.i = trunc i64 %23 to i32
  %24 = call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %23) #17, !srcloc !854
  %25 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %23, i64 %24, i32 0) #17, !srcloc !855
  %asmresult10.i.i543 = extractvalue { i64, i32 } %25, 0
  %div162263.i = lshr i64 %asmresult10.i.i543, 18
  %conv163.i = trunc i64 %div162263.i to i32
  %mul164.neg.i = mul i32 %conv163.i, -1000000
  %sub165.i = add i32 %mul164.neg.i, %conv17.i
  call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %m, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, i64 noundef %retval.0.i, i32 noundef %sub165.i) #13
  br label %do.body65

do.end55:                                         ; preds = %do.body46
  br i1 %cmp.i544, label %if.end181.i549, label %if.end375.i552

if.end181.i549:                                   ; preds = %do.end55
  %sub.i545 = sub i64 0, %18
  %26 = call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %sub.i545) #17, !srcloc !854
  %27 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %sub.i545, i64 %26, i32 0) #17, !srcloc !855
  %asmresult10.i.i546 = extractvalue { i64, i32 } %27, 0
  %div161565.i547 = lshr i64 %asmresult10.i.i546, 18
  %sub183.i548 = sub nsw i64 0, %div161565.i547
  br label %nsec_high.exit554

if.end375.i552:                                   ; preds = %do.end55
  %28 = call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %18) #17, !srcloc !854
  %29 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %18, i64 %28, i32 0) #17, !srcloc !855
  %asmresult10.i566.i550 = extractvalue { i64, i32 } %29, 0
  %div380564.i551 = lshr i64 %asmresult10.i566.i550, 18
  br label %nsec_high.exit554

nsec_high.exit554:                                ; preds = %if.end375.i552, %if.end181.i549
  %retval.0.i553 = phi i64 [ %sub183.i548, %if.end181.i549 ], [ %div380564.i551, %if.end375.i552 ]
  %30 = call i64 @llvm.abs.i64(i64 %18, i1 false) #13
  %conv17.i555 = trunc i64 %30 to i32
  %31 = call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %30) #17, !srcloc !854
  %32 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %30, i64 %31, i32 0) #17, !srcloc !855
  %asmresult10.i.i556 = extractvalue { i64, i32 } %32, 0
  %div162263.i557 = lshr i64 %asmresult10.i.i556, 18
  %conv163.i558 = trunc i64 %div162263.i557 to i32
  %mul164.neg.i559 = mul i32 %conv163.i558, -1000000
  %sub165.i560 = add i32 %mul164.neg.i559, %conv17.i555
  %call61 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.16, i64 noundef %retval.0.i553, i32 noundef %sub165.i560) #16
  br label %do.body65

do.body65:                                        ; preds = %nsec_high.exit554, %nsec_high.exit
  %33 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !856
  %and.i.i = and i32 %33, 128
  %tobool.not.i561 = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i561, label %if.then.i, label %_raw_spin_rq_lock_irqsave.exit

if.then.i:                                        ; preds = %do.body65
  call void @trace_hardirqs_off() #13
  br label %_raw_spin_rq_lock_irqsave.exit

_raw_spin_rq_lock_irqsave.exit:                   ; preds = %if.then.i, %do.body65
  call void @raw_spin_rq_lock_nested(ptr noundef %2, i32 noundef 0) #13
  %rb_leftmost = getelementptr inbounds %struct.cfs_rq, ptr %cfs_rq, i32 0, i32 10, i32 1
  %34 = ptrtoint ptr %rb_leftmost to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %rb_leftmost, align 4
  %tobool69.not = icmp eq ptr %35, null
  br i1 %tobool69.not, label %if.end72, label %if.then70

if.then70:                                        ; preds = %_raw_spin_rq_lock_irqsave.exit
  %call71 = call ptr @__pick_first_entity(ptr noundef %cfs_rq) #13
  %vruntime = getelementptr inbounds %struct.sched_entity, ptr %call71, i32 0, i32 6
  %36 = ptrtoint ptr %vruntime to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %vruntime, align 16
  br label %if.end72

if.end72:                                         ; preds = %if.then70, %_raw_spin_rq_lock_irqsave.exit
  %MIN_vruntime.0 = phi i64 [ %37, %if.then70 ], [ -1, %_raw_spin_rq_lock_irqsave.exit ]
  %call73 = call ptr @__pick_last_entity(ptr noundef %cfs_rq) #13
  %tobool74.not = icmp eq ptr %call73, null
  br i1 %tobool74.not, label %if.end77, label %if.then75

if.then75:                                        ; preds = %if.end72
  %vruntime76 = getelementptr inbounds %struct.sched_entity, ptr %call73, i32 0, i32 6
  %38 = ptrtoint ptr %vruntime76 to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %vruntime76, align 16
  br label %if.end77

if.end77:                                         ; preds = %if.then75, %if.end72
  %max_vruntime.0 = phi i64 [ %39, %if.then75 ], [ -1, %if.end72 ]
  %min_vruntime78 = getelementptr inbounds %struct.cfs_rq, ptr %cfs_rq, i32 0, i32 6
  %40 = ptrtoint ptr %min_vruntime78 to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %min_vruntime78, align 32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__per_cpu_offset to i32))
  %42 = load i32, ptr @__per_cpu_offset, align 4
  %add86 = add i32 %42, ptrtoint (ptr @runqueues to i32)
  %43 = inttoptr i32 %add86 to ptr
  %min_vruntime87 = getelementptr inbounds %struct.rq, ptr %43, i32 0, i32 14, i32 6
  %44 = ptrtoint ptr %min_vruntime87 to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %min_vruntime87, align 32
  call void @raw_spin_rq_unlock(ptr noundef %2) #13
  br i1 %tobool.not.i561, label %if.then.i564, label %do.body2.i

if.then.i564:                                     ; preds = %if.end77
  call void @trace_hardirqs_on() #13
  br label %do.body2.i

do.body2.i:                                       ; preds = %if.then.i564, %if.end77
  %46 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #13, !srcloc !857
  %and.i.i.i = and i32 %46, 128
  %tobool10.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool10.not.i, label %if.then14.i, label %raw_spin_rq_unlock_irqrestore.exit, !prof !858

if.then14.i:                                      ; preds = %do.body2.i
  call void @warn_bogus_irq_restore() #13
  br label %raw_spin_rq_unlock_irqrestore.exit

raw_spin_rq_unlock_irqrestore.exit:               ; preds = %if.then14.i, %do.body2.i
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %33) #13, !srcloc !859
  %cmp.i616 = icmp slt i64 %MIN_vruntime.0, 0
  br i1 %tobool.not, label %do.end96, label %if.then90

if.then90:                                        ; preds = %raw_spin_rq_unlock_irqrestore.exit
  br i1 %cmp.i616, label %if.end181.i570, label %if.end375.i573

if.end181.i570:                                   ; preds = %if.then90
  %sub.i566 = sub i64 0, %MIN_vruntime.0
  %47 = call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %sub.i566) #17, !srcloc !854
  %48 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %sub.i566, i64 %47, i32 0) #17, !srcloc !855
  %asmresult10.i.i567 = extractvalue { i64, i32 } %48, 0
  %div161565.i568 = lshr i64 %asmresult10.i.i567, 18
  %sub183.i569 = sub nsw i64 0, %div161565.i568
  br label %nsec_high.exit575

if.end375.i573:                                   ; preds = %if.then90
  %49 = call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %MIN_vruntime.0) #17, !srcloc !854
  %50 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %MIN_vruntime.0, i64 %49, i32 0) #17, !srcloc !855
  %asmresult10.i566.i571 = extractvalue { i64, i32 } %50, 0
  %div380564.i572 = lshr i64 %asmresult10.i566.i571, 18
  br label %nsec_high.exit575

nsec_high.exit575:                                ; preds = %if.end375.i573, %if.end181.i570
  %retval.0.i574 = phi i64 [ %sub183.i569, %if.end181.i570 ], [ %div380564.i572, %if.end375.i573 ]
  %51 = call i64 @llvm.abs.i64(i64 %MIN_vruntime.0, i1 false) #13
  %conv17.i576 = trunc i64 %51 to i32
  %52 = call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %51) #17, !srcloc !854
  %53 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %51, i64 %52, i32 0) #17, !srcloc !855
  %asmresult10.i.i577 = extractvalue { i64, i32 } %53, 0
  %div162263.i578 = lshr i64 %asmresult10.i.i577, 18
  %conv163.i579 = trunc i64 %div162263.i578 to i32
  %mul164.neg.i580 = mul i32 %conv163.i579, -1000000
  %sub165.i581 = add i32 %mul164.neg.i580, %conv17.i576
  call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %m, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.20, i64 noundef %retval.0.i574, i32 noundef %sub165.i581) #13
  %cmp.i582 = icmp slt i64 %41, 0
  br i1 %cmp.i582, label %if.end181.i587, label %if.end375.i590

if.end181.i587:                                   ; preds = %nsec_high.exit575
  %sub.i583 = sub i64 0, %41
  %54 = call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %sub.i583) #17, !srcloc !854
  %55 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %sub.i583, i64 %54, i32 0) #17, !srcloc !855
  %asmresult10.i.i584 = extractvalue { i64, i32 } %55, 0
  %div161565.i585 = lshr i64 %asmresult10.i.i584, 18
  %sub183.i586 = sub nsw i64 0, %div161565.i585
  br label %nsec_high.exit592

if.end375.i590:                                   ; preds = %nsec_high.exit575
  %56 = call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %41) #17, !srcloc !854
  %57 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %41, i64 %56, i32 0) #17, !srcloc !855
  %asmresult10.i566.i588 = extractvalue { i64, i32 } %57, 0
  %div380564.i589 = lshr i64 %asmresult10.i566.i588, 18
  br label %nsec_high.exit592

nsec_high.exit592:                                ; preds = %if.end375.i590, %if.end181.i587
  %retval.0.i591 = phi i64 [ %sub183.i586, %if.end181.i587 ], [ %div380564.i589, %if.end375.i590 ]
  %58 = call i64 @llvm.abs.i64(i64 %41, i1 false) #13
  %conv17.i593 = trunc i64 %58 to i32
  %59 = call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %58) #17, !srcloc !854
  %60 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %58, i64 %59, i32 0) #17, !srcloc !855
  %asmresult10.i.i594 = extractvalue { i64, i32 } %60, 0
  %div162263.i595 = lshr i64 %asmresult10.i.i594, 18
  %conv163.i596 = trunc i64 %div162263.i595 to i32
  %mul164.neg.i597 = mul i32 %conv163.i596, -1000000
  %sub165.i598 = add i32 %mul164.neg.i597, %conv17.i593
  call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %m, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.23, i64 noundef %retval.0.i591, i32 noundef %sub165.i598) #13
  %cmp.i599 = icmp slt i64 %max_vruntime.0, 0
  br i1 %cmp.i599, label %if.end181.i604, label %if.end375.i607

if.end181.i604:                                   ; preds = %nsec_high.exit592
  %sub.i600 = sub i64 0, %max_vruntime.0
  %61 = call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %sub.i600) #17, !srcloc !854
  %62 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %sub.i600, i64 %61, i32 0) #17, !srcloc !855
  %asmresult10.i.i601 = extractvalue { i64, i32 } %62, 0
  %div161565.i602 = lshr i64 %asmresult10.i.i601, 18
  %sub183.i603 = sub nsw i64 0, %div161565.i602
  br label %if.then138

if.end375.i607:                                   ; preds = %nsec_high.exit592
  %63 = call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %max_vruntime.0) #17, !srcloc !854
  %64 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %max_vruntime.0, i64 %63, i32 0) #17, !srcloc !855
  %asmresult10.i566.i605 = extractvalue { i64, i32 } %64, 0
  %div380564.i606 = lshr i64 %asmresult10.i566.i605, 18
  br label %if.then138

do.end96:                                         ; preds = %raw_spin_rq_unlock_irqrestore.exit
  br i1 %cmp.i616, label %if.end181.i621, label %if.end375.i624

if.end181.i621:                                   ; preds = %do.end96
  %sub.i617 = sub i64 0, %MIN_vruntime.0
  %65 = call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %sub.i617) #17, !srcloc !854
  %66 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %sub.i617, i64 %65, i32 0) #17, !srcloc !855
  %asmresult10.i.i618 = extractvalue { i64, i32 } %66, 0
  %div161565.i619 = lshr i64 %asmresult10.i.i618, 18
  %sub183.i620 = sub nsw i64 0, %div161565.i619
  br label %nsec_high.exit626

if.end375.i624:                                   ; preds = %do.end96
  %67 = call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %MIN_vruntime.0) #17, !srcloc !854
  %68 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %MIN_vruntime.0, i64 %67, i32 0) #17, !srcloc !855
  %asmresult10.i566.i622 = extractvalue { i64, i32 } %68, 0
  %div380564.i623 = lshr i64 %asmresult10.i566.i622, 18
  br label %nsec_high.exit626

nsec_high.exit626:                                ; preds = %if.end375.i624, %if.end181.i621
  %retval.0.i625 = phi i64 [ %sub183.i620, %if.end181.i621 ], [ %div380564.i623, %if.end375.i624 ]
  %69 = call i64 @llvm.abs.i64(i64 %MIN_vruntime.0, i1 false) #13
  %conv17.i627 = trunc i64 %69 to i32
  %70 = call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %69) #17, !srcloc !854
  %71 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %69, i64 %70, i32 0) #17, !srcloc !855
  %asmresult10.i.i628 = extractvalue { i64, i32 } %71, 0
  %div162263.i629 = lshr i64 %asmresult10.i.i628, 18
  %conv163.i630 = trunc i64 %div162263.i629 to i32
  %mul164.neg.i631 = mul i32 %conv163.i630, -1000000
  %sub165.i632 = add i32 %mul164.neg.i631, %conv17.i627
  %call100 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.20, i64 noundef %retval.0.i625, i32 noundef %sub165.i632) #16
  %cmp.i633 = icmp slt i64 %41, 0
  br i1 %cmp.i633, label %if.end181.i638, label %if.end375.i641

if.end181.i638:                                   ; preds = %nsec_high.exit626
  %sub.i634 = sub i64 0, %41
  %72 = call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %sub.i634) #17, !srcloc !854
  %73 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %sub.i634, i64 %72, i32 0) #17, !srcloc !855
  %asmresult10.i.i635 = extractvalue { i64, i32 } %73, 0
  %div161565.i636 = lshr i64 %asmresult10.i.i635, 18
  %sub183.i637 = sub nsw i64 0, %div161565.i636
  br label %nsec_high.exit643

if.end375.i641:                                   ; preds = %nsec_high.exit626
  %74 = call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %41) #17, !srcloc !854
  %75 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %41, i64 %74, i32 0) #17, !srcloc !855
  %asmresult10.i566.i639 = extractvalue { i64, i32 } %75, 0
  %div380564.i640 = lshr i64 %asmresult10.i566.i639, 18
  br label %nsec_high.exit643

nsec_high.exit643:                                ; preds = %if.end375.i641, %if.end181.i638
  %retval.0.i642 = phi i64 [ %sub183.i637, %if.end181.i638 ], [ %div380564.i640, %if.end375.i641 ]
  %76 = call i64 @llvm.abs.i64(i64 %41, i1 false) #13
  %conv17.i644 = trunc i64 %76 to i32
  %77 = call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %76) #17, !srcloc !854
  %78 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %76, i64 %77, i32 0) #17, !srcloc !855
  %asmresult10.i.i645 = extractvalue { i64, i32 } %78, 0
  %div162263.i646 = lshr i64 %asmresult10.i.i645, 18
  %conv163.i647 = trunc i64 %div162263.i646 to i32
  %mul164.neg.i648 = mul i32 %conv163.i647, -1000000
  %sub165.i649 = add i32 %mul164.neg.i648, %conv17.i644
  %call116 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.23, i64 noundef %retval.0.i642, i32 noundef %sub165.i649) #16
  %cmp.i650 = icmp slt i64 %max_vruntime.0, 0
  br i1 %cmp.i650, label %if.end181.i655, label %if.end375.i658

if.end181.i655:                                   ; preds = %nsec_high.exit643
  %sub.i651 = sub i64 0, %max_vruntime.0
  %79 = call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %sub.i651) #17, !srcloc !854
  %80 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %sub.i651, i64 %79, i32 0) #17, !srcloc !855
  %asmresult10.i.i652 = extractvalue { i64, i32 } %80, 0
  %div161565.i653 = lshr i64 %asmresult10.i.i652, 18
  %sub183.i654 = sub nsw i64 0, %div161565.i653
  br label %do.end144

if.end375.i658:                                   ; preds = %nsec_high.exit643
  %81 = call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %max_vruntime.0) #17, !srcloc !854
  %82 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %max_vruntime.0, i64 %81, i32 0) #17, !srcloc !855
  %asmresult10.i566.i656 = extractvalue { i64, i32 } %82, 0
  %div380564.i657 = lshr i64 %asmresult10.i566.i656, 18
  br label %do.end144

if.then138:                                       ; preds = %if.end375.i607, %if.end181.i604
  %retval.0.i608 = phi i64 [ %sub183.i603, %if.end181.i604 ], [ %div380564.i606, %if.end375.i607 ]
  %83 = call i64 @llvm.abs.i64(i64 %max_vruntime.0, i1 false) #13
  %conv17.i610 = trunc i64 %83 to i32
  %84 = call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %83) #17, !srcloc !854
  %85 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %83, i64 %84, i32 0) #17, !srcloc !855
  %asmresult10.i.i611 = extractvalue { i64, i32 } %85, 0
  %div162263.i612 = lshr i64 %asmresult10.i.i611, 18
  %conv163.i613 = trunc i64 %div162263.i612 to i32
  %mul164.neg.i614 = mul i32 %conv163.i613, -1000000
  %sub165.i615 = add i32 %mul164.neg.i614, %conv17.i610
  call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %m, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.26, i64 noundef %retval.0.i608, i32 noundef %sub165.i615) #13
  %sub = sub i64 %max_vruntime.0, %MIN_vruntime.0
  %cmp.i667 = icmp slt i64 %sub, 0
  br i1 %cmp.i667, label %if.end181.i672, label %if.end375.i675

if.end181.i672:                                   ; preds = %if.then138
  %sub.i668 = sub i64 0, %sub
  %86 = call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %sub.i668) #17, !srcloc !854
  %87 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %sub.i668, i64 %86, i32 0) #17, !srcloc !855
  %asmresult10.i.i669 = extractvalue { i64, i32 } %87, 0
  %div161565.i670 = lshr i64 %asmresult10.i.i669, 18
  %sub183.i671 = sub nsw i64 0, %div161565.i670
  br label %if.then155

if.end375.i675:                                   ; preds = %if.then138
  %88 = call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %sub) #17, !srcloc !854
  %89 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %sub, i64 %88, i32 0) #17, !srcloc !855
  %asmresult10.i566.i673 = extractvalue { i64, i32 } %89, 0
  %div380564.i674 = lshr i64 %asmresult10.i566.i673, 18
  br label %if.then155

do.end144:                                        ; preds = %if.end375.i658, %if.end181.i655
  %retval.0.i659 = phi i64 [ %sub183.i654, %if.end181.i655 ], [ %div380564.i657, %if.end375.i658 ]
  %90 = call i64 @llvm.abs.i64(i64 %max_vruntime.0, i1 false) #13
  %conv17.i661 = trunc i64 %90 to i32
  %91 = call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %90) #17, !srcloc !854
  %92 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %90, i64 %91, i32 0) #17, !srcloc !855
  %asmresult10.i.i662 = extractvalue { i64, i32 } %92, 0
  %div162263.i663 = lshr i64 %asmresult10.i.i662, 18
  %conv163.i664 = trunc i64 %div162263.i663 to i32
  %mul164.neg.i665 = mul i32 %conv163.i664, -1000000
  %sub165.i666 = add i32 %mul164.neg.i665, %conv17.i661
  %call132 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.26, i64 noundef %retval.0.i659, i32 noundef %sub165.i666) #16
  %sub735 = sub i64 %max_vruntime.0, %MIN_vruntime.0
  %cmp.i684 = icmp slt i64 %sub735, 0
  br i1 %cmp.i684, label %if.end181.i689, label %if.end375.i692

if.end181.i689:                                   ; preds = %do.end144
  %sub.i685 = sub i64 0, %sub735
  %93 = call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %sub.i685) #17, !srcloc !854
  %94 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %sub.i685, i64 %93, i32 0) #17, !srcloc !855
  %asmresult10.i.i686 = extractvalue { i64, i32 } %94, 0
  %div161565.i687 = lshr i64 %asmresult10.i.i686, 18
  %sub183.i688 = sub nsw i64 0, %div161565.i687
  br label %do.end161

if.end375.i692:                                   ; preds = %do.end144
  %95 = call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %sub735) #17, !srcloc !854
  %96 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %sub735, i64 %95, i32 0) #17, !srcloc !855
  %asmresult10.i566.i690 = extractvalue { i64, i32 } %96, 0
  %div380564.i691 = lshr i64 %asmresult10.i566.i690, 18
  br label %do.end161

if.then155:                                       ; preds = %if.end375.i675, %if.end181.i672
  %retval.0.i676 = phi i64 [ %sub183.i671, %if.end181.i672 ], [ %div380564.i674, %if.end375.i675 ]
  %97 = call i64 @llvm.abs.i64(i64 %sub, i1 false) #13
  %conv17.i678 = trunc i64 %97 to i32
  %98 = call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %97) #17, !srcloc !854
  %99 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %97, i64 %98, i32 0) #17, !srcloc !855
  %asmresult10.i.i679 = extractvalue { i64, i32 } %99, 0
  %div162263.i680 = lshr i64 %asmresult10.i.i679, 18
  %conv163.i681 = trunc i64 %div162263.i680 to i32
  %mul164.neg.i682 = mul i32 %conv163.i681, -1000000
  %sub165.i683 = add i32 %mul164.neg.i682, %conv17.i678
  call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %m, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.29, i64 noundef %retval.0.i676, i32 noundef %sub165.i683) #13
  %sub152 = sub i64 %41, %45
  %cmp.i701 = icmp slt i64 %sub152, 0
  br i1 %cmp.i701, label %if.end181.i706, label %if.end375.i709

if.end181.i706:                                   ; preds = %if.then155
  %sub.i702 = sub i64 0, %sub152
  %100 = call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %sub.i702) #17, !srcloc !854
  %101 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %sub.i702, i64 %100, i32 0) #17, !srcloc !855
  %asmresult10.i.i703 = extractvalue { i64, i32 } %101, 0
  %div161565.i704 = lshr i64 %asmresult10.i.i703, 18
  %sub183.i705 = sub nsw i64 0, %div161565.i704
  br label %nsec_high.exit711

if.end375.i709:                                   ; preds = %if.then155
  %102 = call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %sub152) #17, !srcloc !854
  %103 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %sub152, i64 %102, i32 0) #17, !srcloc !855
  %asmresult10.i566.i707 = extractvalue { i64, i32 } %103, 0
  %div380564.i708 = lshr i64 %asmresult10.i566.i707, 18
  br label %nsec_high.exit711

nsec_high.exit711:                                ; preds = %if.end375.i709, %if.end181.i706
  %retval.0.i710 = phi i64 [ %sub183.i705, %if.end181.i706 ], [ %div380564.i708, %if.end375.i709 ]
  %104 = call i64 @llvm.abs.i64(i64 %sub152, i1 false) #13
  %conv17.i712 = trunc i64 %104 to i32
  %105 = call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %104) #17, !srcloc !854
  %106 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %104, i64 %105, i32 0) #17, !srcloc !855
  %asmresult10.i.i713 = extractvalue { i64, i32 } %106, 0
  %div162263.i714 = lshr i64 %asmresult10.i.i713, 18
  %conv163.i715 = trunc i64 %div162263.i714 to i32
  %mul164.neg.i716 = mul i32 %conv163.i715, -1000000
  %sub165.i717 = add i32 %mul164.neg.i716, %conv17.i712
  call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %m, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.32, i64 noundef %retval.0.i710, i32 noundef %sub165.i717) #13
  %nr_spread_over = getelementptr inbounds %struct.cfs_rq, ptr %cfs_rq, i32 0, i32 15
  %107 = ptrtoint ptr %nr_spread_over to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %nr_spread_over, align 8
  call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %m, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.36, i32 noundef %108) #13
  %nr_running = getelementptr inbounds %struct.cfs_rq, ptr %cfs_rq, i32 0, i32 1
  %109 = ptrtoint ptr %nr_running to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %nr_running, align 8
  call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %m, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.40, i32 noundef %110) #13
  %h_nr_running = getelementptr inbounds %struct.cfs_rq, ptr %cfs_rq, i32 0, i32 2
  %111 = ptrtoint ptr %h_nr_running to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %h_nr_running, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %m, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.43, i32 noundef %112) #13
  %idle_nr_running = getelementptr inbounds %struct.cfs_rq, ptr %cfs_rq, i32 0, i32 3
  %113 = ptrtoint ptr %idle_nr_running to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %idle_nr_running, align 16
  call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %m, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.46, i32 noundef %114) #13
  %idle_h_nr_running = getelementptr inbounds %struct.cfs_rq, ptr %cfs_rq, i32 0, i32 4
  %115 = ptrtoint ptr %idle_h_nr_running to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %idle_h_nr_running, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %m, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.49, i32 noundef %116) #13
  %117 = ptrtoint ptr %cfs_rq to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %cfs_rq, align 128
  call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %m, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.53, i32 noundef %118) #13
  %load_avg = getelementptr inbounds %struct.cfs_rq, ptr %cfs_rq, i32 0, i32 17, i32 5
  %119 = ptrtoint ptr %load_avg to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %load_avg, align 32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %m, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.58, i32 noundef %120) #13
  %runnable_avg = getelementptr inbounds %struct.cfs_rq, ptr %cfs_rq, i32 0, i32 17, i32 6
  %121 = ptrtoint ptr %runnable_avg to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %runnable_avg, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %m, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.62, i32 noundef %122) #13
  %util_avg = getelementptr inbounds %struct.cfs_rq, ptr %cfs_rq, i32 0, i32 17, i32 7
  %123 = ptrtoint ptr %util_avg to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %util_avg, align 8
  call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %m, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.65, i32 noundef %124) #13
  %util_est = getelementptr inbounds %struct.cfs_rq, ptr %cfs_rq, i32 0, i32 17, i32 9
  %125 = ptrtoint ptr %util_est to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %util_est, align 16
  call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %m, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.69, i32 noundef %126) #13
  %load_avg311 = getelementptr inbounds %struct.cfs_rq, ptr %cfs_rq, i32 0, i32 20, i32 2
  %127 = ptrtoint ptr %load_avg311 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %load_avg311, align 16
  call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %m, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.73, i32 noundef %128) #13
  %util_avg327 = getelementptr inbounds %struct.cfs_rq, ptr %cfs_rq, i32 0, i32 20, i32 3
  %129 = ptrtoint ptr %util_avg327 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %util_avg327, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %m, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.76, i32 noundef %130) #13
  %runnable_avg343 = getelementptr inbounds %struct.cfs_rq, ptr %cfs_rq, i32 0, i32 20, i32 4
  %131 = ptrtoint ptr %runnable_avg343 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %runnable_avg343, align 8
  call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %m, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.79, i32 noundef %132) #13
  %tg_load_avg_contrib = getelementptr inbounds %struct.cfs_rq, ptr %cfs_rq, i32 0, i32 21
  %133 = ptrtoint ptr %tg_load_avg_contrib to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %tg_load_avg_contrib, align 128
  call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %m, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.82, i32 noundef %134) #13
  %tg371 = getelementptr inbounds %struct.cfs_rq, ptr %cfs_rq, i32 0, i32 30
  %135 = ptrtoint ptr %tg371 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %tg371, align 4
  %load_avg372 = getelementptr inbounds %struct.task_group, ptr %136, i32 0, i32 6
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %load_avg372, i32 noundef 4) #13
  %137 = ptrtoint ptr %load_avg372 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load volatile i32, ptr %load_avg372, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %m, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.85, i32 noundef %138) #13
  %throttled = getelementptr inbounds %struct.cfs_rq, ptr %cfs_rq, i32 0, i32 37
  %139 = ptrtoint ptr %throttled to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %throttled, align 8
  call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %m, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.88, i32 noundef %140) #13
  %throttle_count = getelementptr inbounds %struct.cfs_rq, ptr %cfs_rq, i32 0, i32 38
  %141 = ptrtoint ptr %throttle_count to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %throttle_count, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %m, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.91, i32 noundef %142) #13
  br label %do.end411

do.end161:                                        ; preds = %if.end375.i692, %if.end181.i689
  %retval.0.i693 = phi i64 [ %sub183.i688, %if.end181.i689 ], [ %div380564.i691, %if.end375.i692 ]
  %143 = call i64 @llvm.abs.i64(i64 %sub735, i1 false) #13
  %conv17.i695 = trunc i64 %143 to i32
  %144 = call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %143) #17, !srcloc !854
  %145 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %143, i64 %144, i32 0) #17, !srcloc !855
  %asmresult10.i.i696 = extractvalue { i64, i32 } %145, 0
  %div162263.i697 = lshr i64 %asmresult10.i.i696, 18
  %conv163.i698 = trunc i64 %div162263.i697 to i32
  %mul164.neg.i699 = mul i32 %conv163.i698, -1000000
  %sub165.i700 = add i32 %mul164.neg.i699, %conv17.i695
  %call148 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.29, i64 noundef %retval.0.i693, i32 noundef %sub165.i700) #16
  %sub152739 = sub i64 %41, %45
  %cmp.i718 = icmp slt i64 %sub152739, 0
  br i1 %cmp.i718, label %if.end181.i723, label %if.end375.i726

if.end181.i723:                                   ; preds = %do.end161
  %sub.i719 = sub i64 0, %sub152739
  %146 = call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %sub.i719) #17, !srcloc !854
  %147 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %sub.i719, i64 %146, i32 0) #17, !srcloc !855
  %asmresult10.i.i720 = extractvalue { i64, i32 } %147, 0
  %div161565.i721 = lshr i64 %asmresult10.i.i720, 18
  %sub183.i722 = sub nsw i64 0, %div161565.i721
  br label %nsec_high.exit728

if.end375.i726:                                   ; preds = %do.end161
  %148 = call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %sub152739) #17, !srcloc !854
  %149 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %sub152739, i64 %148, i32 0) #17, !srcloc !855
  %asmresult10.i566.i724 = extractvalue { i64, i32 } %149, 0
  %div380564.i725 = lshr i64 %asmresult10.i566.i724, 18
  br label %nsec_high.exit728

nsec_high.exit728:                                ; preds = %if.end375.i726, %if.end181.i723
  %retval.0.i727 = phi i64 [ %sub183.i722, %if.end181.i723 ], [ %div380564.i725, %if.end375.i726 ]
  %150 = call i64 @llvm.abs.i64(i64 %sub152739, i1 false) #13
  %conv17.i729 = trunc i64 %150 to i32
  %151 = call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %150) #17, !srcloc !854
  %152 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %150, i64 %151, i32 0) #17, !srcloc !855
  %asmresult10.i.i730 = extractvalue { i64, i32 } %152, 0
  %div162263.i731 = lshr i64 %asmresult10.i.i730, 18
  %conv163.i732 = trunc i64 %div162263.i731 to i32
  %mul164.neg.i733 = mul i32 %conv163.i732, -1000000
  %sub165.i734 = add i32 %mul164.neg.i733, %conv17.i729
  %call165 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.32, i64 noundef %retval.0.i727, i32 noundef %sub165.i734) #16
  %nr_spread_over177 = getelementptr inbounds %struct.cfs_rq, ptr %cfs_rq, i32 0, i32 15
  %153 = ptrtoint ptr %nr_spread_over177 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %nr_spread_over177, align 8
  %call178 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.36, i32 noundef %154) #16
  %nr_running190 = getelementptr inbounds %struct.cfs_rq, ptr %cfs_rq, i32 0, i32 1
  %155 = ptrtoint ptr %nr_running190 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %nr_running190, align 8
  %call191 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.40, i32 noundef %156) #16
  %h_nr_running203 = getelementptr inbounds %struct.cfs_rq, ptr %cfs_rq, i32 0, i32 2
  %157 = ptrtoint ptr %h_nr_running203 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %h_nr_running203, align 4
  %call204 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.43, i32 noundef %158) #16
  %idle_nr_running216 = getelementptr inbounds %struct.cfs_rq, ptr %cfs_rq, i32 0, i32 3
  %159 = ptrtoint ptr %idle_nr_running216 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %idle_nr_running216, align 16
  %call217 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.46, i32 noundef %160) #16
  %idle_h_nr_running229 = getelementptr inbounds %struct.cfs_rq, ptr %cfs_rq, i32 0, i32 4
  %161 = ptrtoint ptr %idle_h_nr_running229 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %idle_h_nr_running229, align 4
  %call230 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.49, i32 noundef %162) #16
  %163 = ptrtoint ptr %cfs_rq to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %cfs_rq, align 128
  %call244 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.53, i32 noundef %164) #16
  %load_avg257 = getelementptr inbounds %struct.cfs_rq, ptr %cfs_rq, i32 0, i32 17, i32 5
  %165 = ptrtoint ptr %load_avg257 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %load_avg257, align 32
  %call258 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.58, i32 noundef %166) #16
  %runnable_avg272 = getelementptr inbounds %struct.cfs_rq, ptr %cfs_rq, i32 0, i32 17, i32 6
  %167 = ptrtoint ptr %runnable_avg272 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %runnable_avg272, align 4
  %call273 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.62, i32 noundef %168) #16
  %util_avg287 = getelementptr inbounds %struct.cfs_rq, ptr %cfs_rq, i32 0, i32 17, i32 7
  %169 = ptrtoint ptr %util_avg287 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %util_avg287, align 8
  %call288 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.65, i32 noundef %170) #16
  %util_est302 = getelementptr inbounds %struct.cfs_rq, ptr %cfs_rq, i32 0, i32 17, i32 9
  %171 = ptrtoint ptr %util_est302 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %util_est302, align 16
  %call304 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.69, i32 noundef %172) #16
  %load_avg318 = getelementptr inbounds %struct.cfs_rq, ptr %cfs_rq, i32 0, i32 20, i32 2
  %173 = ptrtoint ptr %load_avg318 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %load_avg318, align 16
  %call319 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.73, i32 noundef %174) #16
  %util_avg334 = getelementptr inbounds %struct.cfs_rq, ptr %cfs_rq, i32 0, i32 20, i32 3
  %175 = ptrtoint ptr %util_avg334 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %util_avg334, align 4
  %call335 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.76, i32 noundef %176) #16
  %runnable_avg350 = getelementptr inbounds %struct.cfs_rq, ptr %cfs_rq, i32 0, i32 20, i32 4
  %177 = ptrtoint ptr %runnable_avg350 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %runnable_avg350, align 8
  %call351 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.79, i32 noundef %178) #16
  %tg_load_avg_contrib363 = getelementptr inbounds %struct.cfs_rq, ptr %cfs_rq, i32 0, i32 21
  %179 = ptrtoint ptr %tg_load_avg_contrib363 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %tg_load_avg_contrib363, align 128
  %call364 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.82, i32 noundef %180) #16
  %tg379 = getelementptr inbounds %struct.cfs_rq, ptr %cfs_rq, i32 0, i32 30
  %181 = ptrtoint ptr %tg379 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %tg379, align 4
  %load_avg380 = getelementptr inbounds %struct.task_group, ptr %182, i32 0, i32 6
  %call.i.i535 = call zeroext i1 @__kasan_check_read(ptr noundef %load_avg380, i32 noundef 4) #13
  %183 = ptrtoint ptr %load_avg380 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load volatile i32, ptr %load_avg380, align 4
  %call382 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.85, i32 noundef %184) #16
  %throttled394 = getelementptr inbounds %struct.cfs_rq, ptr %cfs_rq, i32 0, i32 37
  %185 = ptrtoint ptr %throttled394 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %throttled394, align 8
  %call395 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.88, i32 noundef %186) #16
  %throttle_count407 = getelementptr inbounds %struct.cfs_rq, ptr %cfs_rq, i32 0, i32 38
  %187 = ptrtoint ptr %throttle_count407 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %throttle_count407, align 4
  %call408 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.91, i32 noundef %188) #16
  br label %do.end411

do.end411:                                        ; preds = %nsec_high.exit728, %nsec_high.exit711
  %tg412 = getelementptr inbounds %struct.cfs_rq, ptr %cfs_rq, i32 0, i32 30
  %189 = ptrtoint ptr %tg412 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %tg412, align 4
  call fastcc void @print_cfs_group_stats(ptr noundef %m, i32 noundef %cpu, ptr noundef %190)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pick_first_entity(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pick_last_entity(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @print_cfs_group_stats(ptr noundef %m, i32 noundef %cpu, ptr nocapture noundef readonly %tg) unnamed_addr #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %se1 = getelementptr inbounds %struct.task_group, ptr %tg, i32 0, i32 1
  %0 = ptrtoint ptr %se1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %se1, align 8
  %arrayidx = getelementptr ptr, ptr %1, i32 %cpu
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %cleanup, label %do.body

do.body:                                          ; preds = %entry
  %tobool2.not = icmp eq ptr %m, null
  %exec_start7 = getelementptr inbounds %struct.sched_entity, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %exec_start7 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %exec_start7, align 32
  %cmp.i437 = icmp slt i64 %5, 0
  br i1 %tobool2.not, label %do.end, label %if.then3

if.then3:                                         ; preds = %do.body
  br i1 %cmp.i437, label %if.end181.i, label %if.end375.i

if.end181.i:                                      ; preds = %if.then3
  %sub.i = sub i64 0, %5
  %6 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %sub.i) #17, !srcloc !854
  %7 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %sub.i, i64 %6, i32 0) #17, !srcloc !855
  %asmresult10.i.i = extractvalue { i64, i32 } %7, 0
  %div161565.i = lshr i64 %asmresult10.i.i, 18
  %sub183.i = sub nsw i64 0, %div161565.i
  br label %nsec_high.exit

if.end375.i:                                      ; preds = %if.then3
  %8 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %5) #17, !srcloc !854
  %9 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %5, i64 %8, i32 0) #17, !srcloc !855
  %asmresult10.i566.i = extractvalue { i64, i32 } %9, 0
  %div380564.i = lshr i64 %asmresult10.i566.i, 18
  br label %nsec_high.exit

nsec_high.exit:                                   ; preds = %if.end375.i, %if.end181.i
  %retval.0.i401 = phi i64 [ %sub183.i, %if.end181.i ], [ %div380564.i, %if.end375.i ]
  %10 = tail call i64 @llvm.abs.i64(i64 %5, i1 false) #13
  %conv17.i = trunc i64 %10 to i32
  %11 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %10) #17, !srcloc !854
  %12 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %10, i64 %11, i32 0) #17, !srcloc !855
  %asmresult10.i.i402 = extractvalue { i64, i32 } %12, 0
  %div162263.i = lshr i64 %asmresult10.i.i402, 18
  %conv163.i = trunc i64 %div162263.i to i32
  %mul164.neg.i = mul i32 %conv163.i, -1000000
  %sub165.i = add i32 %mul164.neg.i, %conv17.i
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %m, ptr noundef nonnull @.str.376, ptr noundef nonnull @.str.377, i64 noundef %retval.0.i401, i32 noundef %sub165.i) #13
  %vruntime = getelementptr inbounds %struct.sched_entity, ptr %3, i32 0, i32 6
  %13 = ptrtoint ptr %vruntime to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %vruntime, align 16
  %cmp.i403 = icmp slt i64 %14, 0
  br i1 %cmp.i403, label %if.end181.i408, label %if.end375.i411

if.end181.i408:                                   ; preds = %nsec_high.exit
  %sub.i404 = sub i64 0, %14
  %15 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %sub.i404) #17, !srcloc !854
  %16 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %sub.i404, i64 %15, i32 0) #17, !srcloc !855
  %asmresult10.i.i405 = extractvalue { i64, i32 } %16, 0
  %div161565.i406 = lshr i64 %asmresult10.i.i405, 18
  %sub183.i407 = sub nsw i64 0, %div161565.i406
  br label %nsec_high.exit413

if.end375.i411:                                   ; preds = %nsec_high.exit
  %17 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %14) #17, !srcloc !854
  %18 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %14, i64 %17, i32 0) #17, !srcloc !855
  %asmresult10.i566.i409 = extractvalue { i64, i32 } %18, 0
  %div380564.i410 = lshr i64 %asmresult10.i566.i409, 18
  br label %nsec_high.exit413

nsec_high.exit413:                                ; preds = %if.end375.i411, %if.end181.i408
  %retval.0.i412 = phi i64 [ %sub183.i407, %if.end181.i408 ], [ %div380564.i410, %if.end375.i411 ]
  %19 = tail call i64 @llvm.abs.i64(i64 %14, i1 false) #13
  %conv17.i414 = trunc i64 %19 to i32
  %20 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %19) #17, !srcloc !854
  %21 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %19, i64 %20, i32 0) #17, !srcloc !855
  %asmresult10.i.i415 = extractvalue { i64, i32 } %21, 0
  %div162263.i416 = lshr i64 %asmresult10.i.i415, 18
  %conv163.i417 = trunc i64 %div162263.i416 to i32
  %mul164.neg.i418 = mul i32 %conv163.i417, -1000000
  %sub165.i419 = add i32 %mul164.neg.i418, %conv17.i414
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %m, ptr noundef nonnull @.str.376, ptr noundef nonnull @.str.380, i64 noundef %retval.0.i412, i32 noundef %sub165.i419) #13
  %sum_exec_runtime = getelementptr inbounds %struct.sched_entity, ptr %3, i32 0, i32 5
  %22 = ptrtoint ptr %sum_exec_runtime to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %sum_exec_runtime, align 8
  %cmp.i420 = icmp slt i64 %23, 0
  br i1 %cmp.i420, label %if.end181.i425, label %if.end375.i428

if.end181.i425:                                   ; preds = %nsec_high.exit413
  %sub.i421 = sub i64 0, %23
  %24 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %sub.i421) #17, !srcloc !854
  %25 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %sub.i421, i64 %24, i32 0) #17, !srcloc !855
  %asmresult10.i.i422 = extractvalue { i64, i32 } %25, 0
  %div161565.i423 = lshr i64 %asmresult10.i.i422, 18
  %sub183.i424 = sub nsw i64 0, %div161565.i423
  br label %nsec_high.exit430

if.end375.i428:                                   ; preds = %nsec_high.exit413
  %26 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %23) #17, !srcloc !854
  %27 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %23, i64 %26, i32 0) #17, !srcloc !855
  %asmresult10.i566.i426 = extractvalue { i64, i32 } %27, 0
  %div380564.i427 = lshr i64 %asmresult10.i566.i426, 18
  br label %nsec_high.exit430

nsec_high.exit430:                                ; preds = %if.end375.i428, %if.end181.i425
  %retval.0.i429 = phi i64 [ %sub183.i424, %if.end181.i425 ], [ %div380564.i427, %if.end375.i428 ]
  %28 = tail call i64 @llvm.abs.i64(i64 %23, i1 false) #13
  %conv17.i431 = trunc i64 %28 to i32
  %29 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %28) #17, !srcloc !854
  %30 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %28, i64 %29, i32 0) #17, !srcloc !855
  %asmresult10.i.i432 = extractvalue { i64, i32 } %30, 0
  %div162263.i433 = lshr i64 %asmresult10.i.i432, 18
  %conv163.i434 = trunc i64 %div162263.i433 to i32
  %mul164.neg.i435 = mul i32 %conv163.i434, -1000000
  %sub165.i436 = add i32 %mul164.neg.i435, %conv17.i431
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %m, ptr noundef nonnull @.str.376, ptr noundef nonnull @.str.383, i64 noundef %retval.0.i429, i32 noundef %sub165.i436) #13
  br label %do.end52

do.end:                                           ; preds = %do.body
  br i1 %cmp.i437, label %if.end181.i442, label %if.end375.i445

if.end181.i442:                                   ; preds = %do.end
  %sub.i438 = sub i64 0, %5
  %31 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %sub.i438) #17, !srcloc !854
  %32 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %sub.i438, i64 %31, i32 0) #17, !srcloc !855
  %asmresult10.i.i439 = extractvalue { i64, i32 } %32, 0
  %div161565.i440 = lshr i64 %asmresult10.i.i439, 18
  %sub183.i441 = sub nsw i64 0, %div161565.i440
  br label %nsec_high.exit447

if.end375.i445:                                   ; preds = %do.end
  %33 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %5) #17, !srcloc !854
  %34 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %5, i64 %33, i32 0) #17, !srcloc !855
  %asmresult10.i566.i443 = extractvalue { i64, i32 } %34, 0
  %div380564.i444 = lshr i64 %asmresult10.i566.i443, 18
  br label %nsec_high.exit447

nsec_high.exit447:                                ; preds = %if.end375.i445, %if.end181.i442
  %retval.0.i446 = phi i64 [ %sub183.i441, %if.end181.i442 ], [ %div380564.i444, %if.end375.i445 ]
  %35 = tail call i64 @llvm.abs.i64(i64 %5, i1 false) #13
  %conv17.i448 = trunc i64 %35 to i32
  %36 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %35) #17, !srcloc !854
  %37 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %35, i64 %36, i32 0) #17, !srcloc !855
  %asmresult10.i.i449 = extractvalue { i64, i32 } %37, 0
  %div162263.i450 = lshr i64 %asmresult10.i.i449, 18
  %conv163.i451 = trunc i64 %div162263.i450 to i32
  %mul164.neg.i452 = mul i32 %conv163.i451, -1000000
  %sub165.i453 = add i32 %mul164.neg.i452, %conv17.i448
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.378, ptr noundef nonnull @.str.377, i64 noundef %retval.0.i446, i32 noundef %sub165.i453) #16
  %vruntime26 = getelementptr inbounds %struct.sched_entity, ptr %3, i32 0, i32 6
  %38 = ptrtoint ptr %vruntime26 to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %vruntime26, align 16
  %cmp.i454 = icmp slt i64 %39, 0
  br i1 %cmp.i454, label %if.end181.i459, label %if.end375.i462

if.end181.i459:                                   ; preds = %nsec_high.exit447
  %sub.i455 = sub i64 0, %39
  %40 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %sub.i455) #17, !srcloc !854
  %41 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %sub.i455, i64 %40, i32 0) #17, !srcloc !855
  %asmresult10.i.i456 = extractvalue { i64, i32 } %41, 0
  %div161565.i457 = lshr i64 %asmresult10.i.i456, 18
  %sub183.i458 = sub nsw i64 0, %div161565.i457
  br label %nsec_high.exit464

if.end375.i462:                                   ; preds = %nsec_high.exit447
  %42 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %39) #17, !srcloc !854
  %43 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %39, i64 %42, i32 0) #17, !srcloc !855
  %asmresult10.i566.i460 = extractvalue { i64, i32 } %43, 0
  %div380564.i461 = lshr i64 %asmresult10.i566.i460, 18
  br label %nsec_high.exit464

nsec_high.exit464:                                ; preds = %if.end375.i462, %if.end181.i459
  %retval.0.i463 = phi i64 [ %sub183.i458, %if.end181.i459 ], [ %div380564.i461, %if.end375.i462 ]
  %44 = tail call i64 @llvm.abs.i64(i64 %39, i1 false) #13
  %conv17.i465 = trunc i64 %44 to i32
  %45 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %44) #17, !srcloc !854
  %46 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %44, i64 %45, i32 0) #17, !srcloc !855
  %asmresult10.i.i466 = extractvalue { i64, i32 } %46, 0
  %div162263.i467 = lshr i64 %asmresult10.i.i466, 18
  %conv163.i468 = trunc i64 %div162263.i467 to i32
  %mul164.neg.i469 = mul i32 %conv163.i468, -1000000
  %sub165.i470 = add i32 %mul164.neg.i469, %conv17.i465
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.378, ptr noundef nonnull @.str.380, i64 noundef %retval.0.i463, i32 noundef %sub165.i470) #16
  %sum_exec_runtime45 = getelementptr inbounds %struct.sched_entity, ptr %3, i32 0, i32 5
  %47 = ptrtoint ptr %sum_exec_runtime45 to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %sum_exec_runtime45, align 8
  %cmp.i471 = icmp slt i64 %48, 0
  br i1 %cmp.i471, label %if.end181.i476, label %if.end375.i479

if.end181.i476:                                   ; preds = %nsec_high.exit464
  %sub.i472 = sub i64 0, %48
  %49 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %sub.i472) #17, !srcloc !854
  %50 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %sub.i472, i64 %49, i32 0) #17, !srcloc !855
  %asmresult10.i.i473 = extractvalue { i64, i32 } %50, 0
  %div161565.i474 = lshr i64 %asmresult10.i.i473, 18
  %sub183.i475 = sub nsw i64 0, %div161565.i474
  br label %nsec_high.exit481

if.end375.i479:                                   ; preds = %nsec_high.exit464
  %51 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %48) #17, !srcloc !854
  %52 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %48, i64 %51, i32 0) #17, !srcloc !855
  %asmresult10.i566.i477 = extractvalue { i64, i32 } %52, 0
  %div380564.i478 = lshr i64 %asmresult10.i566.i477, 18
  br label %nsec_high.exit481

nsec_high.exit481:                                ; preds = %if.end375.i479, %if.end181.i476
  %retval.0.i480 = phi i64 [ %sub183.i475, %if.end181.i476 ], [ %div380564.i478, %if.end375.i479 ]
  %53 = tail call i64 @llvm.abs.i64(i64 %48, i1 false) #13
  %conv17.i482 = trunc i64 %53 to i32
  %54 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %53) #17, !srcloc !854
  %55 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %53, i64 %54, i32 0) #17, !srcloc !855
  %asmresult10.i.i483 = extractvalue { i64, i32 } %55, 0
  %div162263.i484 = lshr i64 %asmresult10.i.i483, 18
  %conv163.i485 = trunc i64 %div162263.i484 to i32
  %mul164.neg.i486 = mul i32 %conv163.i485, -1000000
  %sub165.i487 = add i32 %mul164.neg.i486, %conv17.i482
  %call49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.378, ptr noundef nonnull @.str.383, i64 noundef %retval.0.i480, i32 noundef %sub165.i487) #16
  br label %do.end52

do.end52:                                         ; preds = %nsec_high.exit481, %nsec_high.exit430
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @sched_schedstats, ptr blockaddress(@print_cfs_group_stats, %if.then58)) #13
          to label %do.body245 [label %if.then58], !srcloc !860

if.then58:                                        ; preds = %do.end52
  %my_q.i = getelementptr inbounds %struct.sched_entity, ptr %3, i32 0, i32 12
  %56 = ptrtoint ptr %my_q.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %my_q.i, align 4
  %tobool.not.i = icmp eq ptr %57, null
  %stats.i = getelementptr inbounds %struct.sched_entity_stats, ptr %3, i32 0, i32 1
  %stats1.i = getelementptr i8, ptr %3, i32 640
  %retval.0.i488 = select i1 %tobool.not.i, ptr %stats1.i, ptr %stats.i
  %58 = ptrtoint ptr %retval.0.i488 to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %retval.0.i488, align 128
  %cmp.i642 = icmp slt i64 %59, 0
  br i1 %tobool2.not, label %do.end69, label %if.then62

if.then62:                                        ; preds = %if.then58
  br i1 %cmp.i642, label %if.end181.i494, label %if.end375.i497

if.end181.i494:                                   ; preds = %if.then62
  %sub.i490 = sub i64 0, %59
  %60 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %sub.i490) #17, !srcloc !854
  %61 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %sub.i490, i64 %60, i32 0) #17, !srcloc !855
  %asmresult10.i.i491 = extractvalue { i64, i32 } %61, 0
  %div161565.i492 = lshr i64 %asmresult10.i.i491, 18
  %sub183.i493 = sub nsw i64 0, %div161565.i492
  br label %nsec_high.exit499

if.end375.i497:                                   ; preds = %if.then62
  %62 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %59) #17, !srcloc !854
  %63 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %59, i64 %62, i32 0) #17, !srcloc !855
  %asmresult10.i566.i495 = extractvalue { i64, i32 } %63, 0
  %div380564.i496 = lshr i64 %asmresult10.i566.i495, 18
  br label %nsec_high.exit499

nsec_high.exit499:                                ; preds = %if.end375.i497, %if.end181.i494
  %retval.0.i498 = phi i64 [ %sub183.i493, %if.end181.i494 ], [ %div380564.i496, %if.end375.i497 ]
  %64 = tail call i64 @llvm.abs.i64(i64 %59, i1 false) #13
  %conv17.i500 = trunc i64 %64 to i32
  %65 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %64) #17, !srcloc !854
  %66 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %64, i64 %65, i32 0) #17, !srcloc !855
  %asmresult10.i.i501 = extractvalue { i64, i32 } %66, 0
  %div162263.i502 = lshr i64 %asmresult10.i.i501, 18
  %conv163.i503 = trunc i64 %div162263.i502 to i32
  %mul164.neg.i504 = mul i32 %conv163.i503, -1000000
  %sub165.i505 = add i32 %mul164.neg.i504, %conv17.i500
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %m, ptr noundef nonnull @.str.376, ptr noundef nonnull @.str.166, i64 noundef %retval.0.i498, i32 noundef %sub165.i505) #13
  %sleep_start = getelementptr inbounds %struct.sched_statistics, ptr %retval.0.i488, i32 0, i32 6
  %67 = ptrtoint ptr %sleep_start to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %sleep_start, align 16
  %cmp.i506 = icmp slt i64 %68, 0
  br i1 %cmp.i506, label %if.end181.i511, label %if.end375.i514

if.end181.i511:                                   ; preds = %nsec_high.exit499
  %sub.i507 = sub i64 0, %68
  %69 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %sub.i507) #17, !srcloc !854
  %70 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %sub.i507, i64 %69, i32 0) #17, !srcloc !855
  %asmresult10.i.i508 = extractvalue { i64, i32 } %70, 0
  %div161565.i509 = lshr i64 %asmresult10.i.i508, 18
  %sub183.i510 = sub nsw i64 0, %div161565.i509
  br label %nsec_high.exit516

if.end375.i514:                                   ; preds = %nsec_high.exit499
  %71 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %68) #17, !srcloc !854
  %72 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %68, i64 %71, i32 0) #17, !srcloc !855
  %asmresult10.i566.i512 = extractvalue { i64, i32 } %72, 0
  %div380564.i513 = lshr i64 %asmresult10.i566.i512, 18
  br label %nsec_high.exit516

nsec_high.exit516:                                ; preds = %if.end375.i514, %if.end181.i511
  %retval.0.i515 = phi i64 [ %sub183.i510, %if.end181.i511 ], [ %div380564.i513, %if.end375.i514 ]
  %73 = tail call i64 @llvm.abs.i64(i64 %68, i1 false) #13
  %conv17.i517 = trunc i64 %73 to i32
  %74 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %73) #17, !srcloc !854
  %75 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %73, i64 %74, i32 0) #17, !srcloc !855
  %asmresult10.i.i518 = extractvalue { i64, i32 } %75, 0
  %div162263.i519 = lshr i64 %asmresult10.i.i518, 18
  %conv163.i520 = trunc i64 %div162263.i519 to i32
  %mul164.neg.i521 = mul i32 %conv163.i520, -1000000
  %sub165.i522 = add i32 %mul164.neg.i521, %conv17.i517
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %m, ptr noundef nonnull @.str.376, ptr noundef nonnull @.str.169, i64 noundef %retval.0.i515, i32 noundef %sub165.i522) #13
  %block_start = getelementptr inbounds %struct.sched_statistics, ptr %retval.0.i488, i32 0, i32 9
  %76 = ptrtoint ptr %block_start to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %block_start, align 8
  %cmp.i523 = icmp slt i64 %77, 0
  br i1 %cmp.i523, label %if.end181.i528, label %if.end375.i531

if.end181.i528:                                   ; preds = %nsec_high.exit516
  %sub.i524 = sub i64 0, %77
  %78 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %sub.i524) #17, !srcloc !854
  %79 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %sub.i524, i64 %78, i32 0) #17, !srcloc !855
  %asmresult10.i.i525 = extractvalue { i64, i32 } %79, 0
  %div161565.i526 = lshr i64 %asmresult10.i.i525, 18
  %sub183.i527 = sub nsw i64 0, %div161565.i526
  br label %nsec_high.exit533

if.end375.i531:                                   ; preds = %nsec_high.exit516
  %80 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %77) #17, !srcloc !854
  %81 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %77, i64 %80, i32 0) #17, !srcloc !855
  %asmresult10.i566.i529 = extractvalue { i64, i32 } %81, 0
  %div380564.i530 = lshr i64 %asmresult10.i566.i529, 18
  br label %nsec_high.exit533

nsec_high.exit533:                                ; preds = %if.end375.i531, %if.end181.i528
  %retval.0.i532 = phi i64 [ %sub183.i527, %if.end181.i528 ], [ %div380564.i530, %if.end375.i531 ]
  %82 = tail call i64 @llvm.abs.i64(i64 %77, i1 false) #13
  %conv17.i534 = trunc i64 %82 to i32
  %83 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %82) #17, !srcloc !854
  %84 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %82, i64 %83, i32 0) #17, !srcloc !855
  %asmresult10.i.i535 = extractvalue { i64, i32 } %84, 0
  %div162263.i536 = lshr i64 %asmresult10.i.i535, 18
  %conv163.i537 = trunc i64 %div162263.i536 to i32
  %mul164.neg.i538 = mul i32 %conv163.i537, -1000000
  %sub165.i539 = add i32 %mul164.neg.i538, %conv17.i534
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %m, ptr noundef nonnull @.str.376, ptr noundef nonnull @.str.172, i64 noundef %retval.0.i532, i32 noundef %sub165.i539) #13
  %sleep_max = getelementptr inbounds %struct.sched_statistics, ptr %retval.0.i488, i32 0, i32 7
  %85 = ptrtoint ptr %sleep_max to i32
  call void @__asan_load8_noabort(i32 %85)
  %86 = load i64, ptr %sleep_max, align 8
  %cmp.i540 = icmp slt i64 %86, 0
  br i1 %cmp.i540, label %if.end181.i545, label %if.end375.i548

if.end181.i545:                                   ; preds = %nsec_high.exit533
  %sub.i541 = sub i64 0, %86
  %87 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %sub.i541) #17, !srcloc !854
  %88 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %sub.i541, i64 %87, i32 0) #17, !srcloc !855
  %asmresult10.i.i542 = extractvalue { i64, i32 } %88, 0
  %div161565.i543 = lshr i64 %asmresult10.i.i542, 18
  %sub183.i544 = sub nsw i64 0, %div161565.i543
  br label %nsec_high.exit550

if.end375.i548:                                   ; preds = %nsec_high.exit533
  %89 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %86) #17, !srcloc !854
  %90 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %86, i64 %89, i32 0) #17, !srcloc !855
  %asmresult10.i566.i546 = extractvalue { i64, i32 } %90, 0
  %div380564.i547 = lshr i64 %asmresult10.i566.i546, 18
  br label %nsec_high.exit550

nsec_high.exit550:                                ; preds = %if.end375.i548, %if.end181.i545
  %retval.0.i549 = phi i64 [ %sub183.i544, %if.end181.i545 ], [ %div380564.i547, %if.end375.i548 ]
  %91 = tail call i64 @llvm.abs.i64(i64 %86, i1 false) #13
  %conv17.i551 = trunc i64 %91 to i32
  %92 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %91) #17, !srcloc !854
  %93 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %91, i64 %92, i32 0) #17, !srcloc !855
  %asmresult10.i.i552 = extractvalue { i64, i32 } %93, 0
  %div162263.i553 = lshr i64 %asmresult10.i.i552, 18
  %conv163.i554 = trunc i64 %div162263.i553 to i32
  %mul164.neg.i555 = mul i32 %conv163.i554, -1000000
  %sub165.i556 = add i32 %mul164.neg.i555, %conv17.i551
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %m, ptr noundef nonnull @.str.376, ptr noundef nonnull @.str.175, i64 noundef %retval.0.i549, i32 noundef %sub165.i556) #13
  %block_max = getelementptr inbounds %struct.sched_statistics, ptr %retval.0.i488, i32 0, i32 10
  %94 = ptrtoint ptr %block_max to i32
  call void @__asan_load8_noabort(i32 %94)
  %95 = load i64, ptr %block_max, align 16
  %cmp.i557 = icmp slt i64 %95, 0
  br i1 %cmp.i557, label %if.end181.i562, label %if.end375.i565

if.end181.i562:                                   ; preds = %nsec_high.exit550
  %sub.i558 = sub i64 0, %95
  %96 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %sub.i558) #17, !srcloc !854
  %97 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %sub.i558, i64 %96, i32 0) #17, !srcloc !855
  %asmresult10.i.i559 = extractvalue { i64, i32 } %97, 0
  %div161565.i560 = lshr i64 %asmresult10.i.i559, 18
  %sub183.i561 = sub nsw i64 0, %div161565.i560
  br label %nsec_high.exit567

if.end375.i565:                                   ; preds = %nsec_high.exit550
  %98 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %95) #17, !srcloc !854
  %99 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %95, i64 %98, i32 0) #17, !srcloc !855
  %asmresult10.i566.i563 = extractvalue { i64, i32 } %99, 0
  %div380564.i564 = lshr i64 %asmresult10.i566.i563, 18
  br label %nsec_high.exit567

nsec_high.exit567:                                ; preds = %if.end375.i565, %if.end181.i562
  %retval.0.i566 = phi i64 [ %sub183.i561, %if.end181.i562 ], [ %div380564.i564, %if.end375.i565 ]
  %100 = tail call i64 @llvm.abs.i64(i64 %95, i1 false) #13
  %conv17.i568 = trunc i64 %100 to i32
  %101 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %100) #17, !srcloc !854
  %102 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %100, i64 %101, i32 0) #17, !srcloc !855
  %asmresult10.i.i569 = extractvalue { i64, i32 } %102, 0
  %div162263.i570 = lshr i64 %asmresult10.i.i569, 18
  %conv163.i571 = trunc i64 %div162263.i570 to i32
  %mul164.neg.i572 = mul i32 %conv163.i571, -1000000
  %sub165.i573 = add i32 %mul164.neg.i572, %conv17.i568
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %m, ptr noundef nonnull @.str.376, ptr noundef nonnull @.str.178, i64 noundef %retval.0.i566, i32 noundef %sub165.i573) #13
  %exec_max = getelementptr inbounds %struct.sched_statistics, ptr %retval.0.i488, i32 0, i32 12
  %103 = ptrtoint ptr %exec_max to i32
  call void @__asan_load8_noabort(i32 %103)
  %104 = load i64, ptr %exec_max, align 32
  %cmp.i574 = icmp slt i64 %104, 0
  br i1 %cmp.i574, label %if.end181.i579, label %if.end375.i582

if.end181.i579:                                   ; preds = %nsec_high.exit567
  %sub.i575 = sub i64 0, %104
  %105 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %sub.i575) #17, !srcloc !854
  %106 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %sub.i575, i64 %105, i32 0) #17, !srcloc !855
  %asmresult10.i.i576 = extractvalue { i64, i32 } %106, 0
  %div161565.i577 = lshr i64 %asmresult10.i.i576, 18
  %sub183.i578 = sub nsw i64 0, %div161565.i577
  br label %nsec_high.exit584

if.end375.i582:                                   ; preds = %nsec_high.exit567
  %107 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %104) #17, !srcloc !854
  %108 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %104, i64 %107, i32 0) #17, !srcloc !855
  %asmresult10.i566.i580 = extractvalue { i64, i32 } %108, 0
  %div380564.i581 = lshr i64 %asmresult10.i566.i580, 18
  br label %nsec_high.exit584

nsec_high.exit584:                                ; preds = %if.end375.i582, %if.end181.i579
  %retval.0.i583 = phi i64 [ %sub183.i578, %if.end181.i579 ], [ %div380564.i581, %if.end375.i582 ]
  %109 = tail call i64 @llvm.abs.i64(i64 %104, i1 false) #13
  %conv17.i585 = trunc i64 %109 to i32
  %110 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %109) #17, !srcloc !854
  %111 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %109, i64 %110, i32 0) #17, !srcloc !855
  %asmresult10.i.i586 = extractvalue { i64, i32 } %111, 0
  %div162263.i587 = lshr i64 %asmresult10.i.i586, 18
  %conv163.i588 = trunc i64 %div162263.i587 to i32
  %mul164.neg.i589 = mul i32 %conv163.i588, -1000000
  %sub165.i590 = add i32 %mul164.neg.i589, %conv17.i585
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %m, ptr noundef nonnull @.str.376, ptr noundef nonnull @.str.181, i64 noundef %retval.0.i583, i32 noundef %sub165.i590) #13
  %slice_max = getelementptr inbounds %struct.sched_statistics, ptr %retval.0.i488, i32 0, i32 13
  %112 = ptrtoint ptr %slice_max to i32
  call void @__asan_load8_noabort(i32 %112)
  %113 = load i64, ptr %slice_max, align 8
  %cmp.i591 = icmp slt i64 %113, 0
  br i1 %cmp.i591, label %if.end181.i596, label %if.end375.i599

if.end181.i596:                                   ; preds = %nsec_high.exit584
  %sub.i592 = sub i64 0, %113
  %114 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %sub.i592) #17, !srcloc !854
  %115 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %sub.i592, i64 %114, i32 0) #17, !srcloc !855
  %asmresult10.i.i593 = extractvalue { i64, i32 } %115, 0
  %div161565.i594 = lshr i64 %asmresult10.i.i593, 18
  %sub183.i595 = sub nsw i64 0, %div161565.i594
  br label %nsec_high.exit601

if.end375.i599:                                   ; preds = %nsec_high.exit584
  %116 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %113) #17, !srcloc !854
  %117 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %113, i64 %116, i32 0) #17, !srcloc !855
  %asmresult10.i566.i597 = extractvalue { i64, i32 } %117, 0
  %div380564.i598 = lshr i64 %asmresult10.i566.i597, 18
  br label %nsec_high.exit601

nsec_high.exit601:                                ; preds = %if.end375.i599, %if.end181.i596
  %retval.0.i600 = phi i64 [ %sub183.i595, %if.end181.i596 ], [ %div380564.i598, %if.end375.i599 ]
  %118 = tail call i64 @llvm.abs.i64(i64 %113, i1 false) #13
  %conv17.i602 = trunc i64 %118 to i32
  %119 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %118) #17, !srcloc !854
  %120 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %118, i64 %119, i32 0) #17, !srcloc !855
  %asmresult10.i.i603 = extractvalue { i64, i32 } %120, 0
  %div162263.i604 = lshr i64 %asmresult10.i.i603, 18
  %conv163.i605 = trunc i64 %div162263.i604 to i32
  %mul164.neg.i606 = mul i32 %conv163.i605, -1000000
  %sub165.i607 = add i32 %mul164.neg.i606, %conv17.i602
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %m, ptr noundef nonnull @.str.376, ptr noundef nonnull @.str.184, i64 noundef %retval.0.i600, i32 noundef %sub165.i607) #13
  %wait_max = getelementptr inbounds %struct.sched_statistics, ptr %retval.0.i488, i32 0, i32 1
  %121 = ptrtoint ptr %wait_max to i32
  call void @__asan_load8_noabort(i32 %121)
  %122 = load i64, ptr %wait_max, align 8
  %cmp.i608 = icmp slt i64 %122, 0
  br i1 %cmp.i608, label %if.end181.i613, label %if.end375.i616

if.end181.i613:                                   ; preds = %nsec_high.exit601
  %sub.i609 = sub i64 0, %122
  %123 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %sub.i609) #17, !srcloc !854
  %124 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %sub.i609, i64 %123, i32 0) #17, !srcloc !855
  %asmresult10.i.i610 = extractvalue { i64, i32 } %124, 0
  %div161565.i611 = lshr i64 %asmresult10.i.i610, 18
  %sub183.i612 = sub nsw i64 0, %div161565.i611
  br label %nsec_high.exit618

if.end375.i616:                                   ; preds = %nsec_high.exit601
  %125 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %122) #17, !srcloc !854
  %126 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %122, i64 %125, i32 0) #17, !srcloc !855
  %asmresult10.i566.i614 = extractvalue { i64, i32 } %126, 0
  %div380564.i615 = lshr i64 %asmresult10.i566.i614, 18
  br label %nsec_high.exit618

nsec_high.exit618:                                ; preds = %if.end375.i616, %if.end181.i613
  %retval.0.i617 = phi i64 [ %sub183.i612, %if.end181.i613 ], [ %div380564.i615, %if.end375.i616 ]
  %127 = tail call i64 @llvm.abs.i64(i64 %122, i1 false) #13
  %conv17.i619 = trunc i64 %127 to i32
  %128 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %127) #17, !srcloc !854
  %129 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %127, i64 %128, i32 0) #17, !srcloc !855
  %asmresult10.i.i620 = extractvalue { i64, i32 } %129, 0
  %div162263.i621 = lshr i64 %asmresult10.i.i620, 18
  %conv163.i622 = trunc i64 %div162263.i621 to i32
  %mul164.neg.i623 = mul i32 %conv163.i622, -1000000
  %sub165.i624 = add i32 %mul164.neg.i623, %conv17.i619
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %m, ptr noundef nonnull @.str.376, ptr noundef nonnull @.str.187, i64 noundef %retval.0.i617, i32 noundef %sub165.i624) #13
  %wait_sum = getelementptr inbounds %struct.sched_statistics, ptr %retval.0.i488, i32 0, i32 3
  %130 = ptrtoint ptr %wait_sum to i32
  call void @__asan_load8_noabort(i32 %130)
  %131 = load i64, ptr %wait_sum, align 8
  %cmp.i625 = icmp slt i64 %131, 0
  br i1 %cmp.i625, label %if.end181.i630, label %if.end375.i633

if.end181.i630:                                   ; preds = %nsec_high.exit618
  %sub.i626 = sub i64 0, %131
  %132 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %sub.i626) #17, !srcloc !854
  %133 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %sub.i626, i64 %132, i32 0) #17, !srcloc !855
  %asmresult10.i.i627 = extractvalue { i64, i32 } %133, 0
  %div161565.i628 = lshr i64 %asmresult10.i.i627, 18
  %sub183.i629 = sub nsw i64 0, %div161565.i628
  br label %nsec_high.exit635

if.end375.i633:                                   ; preds = %nsec_high.exit618
  %134 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %131) #17, !srcloc !854
  %135 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %131, i64 %134, i32 0) #17, !srcloc !855
  %asmresult10.i566.i631 = extractvalue { i64, i32 } %135, 0
  %div380564.i632 = lshr i64 %asmresult10.i566.i631, 18
  br label %nsec_high.exit635

nsec_high.exit635:                                ; preds = %if.end375.i633, %if.end181.i630
  %retval.0.i634 = phi i64 [ %sub183.i629, %if.end181.i630 ], [ %div380564.i632, %if.end375.i633 ]
  %136 = tail call i64 @llvm.abs.i64(i64 %131, i1 false) #13
  %conv17.i636 = trunc i64 %136 to i32
  %137 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %136) #17, !srcloc !854
  %138 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %136, i64 %137, i32 0) #17, !srcloc !855
  %asmresult10.i.i637 = extractvalue { i64, i32 } %138, 0
  %div162263.i638 = lshr i64 %asmresult10.i.i637, 18
  %conv163.i639 = trunc i64 %div162263.i638 to i32
  %mul164.neg.i640 = mul i32 %conv163.i639, -1000000
  %sub165.i641 = add i32 %mul164.neg.i640, %conv17.i636
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %m, ptr noundef nonnull @.str.376, ptr noundef nonnull @.str.190, i64 noundef %retval.0.i634, i32 noundef %sub165.i641) #13
  %wait_count = getelementptr inbounds %struct.sched_statistics, ptr %retval.0.i488, i32 0, i32 2
  %139 = ptrtoint ptr %wait_count to i32
  call void @__asan_load8_noabort(i32 %139)
  %140 = load i64, ptr %wait_count, align 16
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %m, ptr noundef nonnull @.str.129, ptr noundef nonnull @.str.193, i64 noundef %140) #13
  br label %if.then247

do.end69:                                         ; preds = %if.then58
  br i1 %cmp.i642, label %if.end181.i647, label %if.end375.i650

if.end181.i647:                                   ; preds = %do.end69
  %sub.i643 = sub i64 0, %59
  %141 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %sub.i643) #17, !srcloc !854
  %142 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %sub.i643, i64 %141, i32 0) #17, !srcloc !855
  %asmresult10.i.i644 = extractvalue { i64, i32 } %142, 0
  %div161565.i645 = lshr i64 %asmresult10.i.i644, 18
  %sub183.i646 = sub nsw i64 0, %div161565.i645
  br label %nsec_high.exit652

if.end375.i650:                                   ; preds = %do.end69
  %143 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %59) #17, !srcloc !854
  %144 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %59, i64 %143, i32 0) #17, !srcloc !855
  %asmresult10.i566.i648 = extractvalue { i64, i32 } %144, 0
  %div380564.i649 = lshr i64 %asmresult10.i566.i648, 18
  br label %nsec_high.exit652

nsec_high.exit652:                                ; preds = %if.end375.i650, %if.end181.i647
  %retval.0.i651 = phi i64 [ %sub183.i646, %if.end181.i647 ], [ %div380564.i649, %if.end375.i650 ]
  %145 = tail call i64 @llvm.abs.i64(i64 %59, i1 false) #13
  %conv17.i653 = trunc i64 %145 to i32
  %146 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %145) #17, !srcloc !854
  %147 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %145, i64 %146, i32 0) #17, !srcloc !855
  %asmresult10.i.i654 = extractvalue { i64, i32 } %147, 0
  %div162263.i655 = lshr i64 %asmresult10.i.i654, 18
  %conv163.i656 = trunc i64 %div162263.i655 to i32
  %mul164.neg.i657 = mul i32 %conv163.i656, -1000000
  %sub165.i658 = add i32 %mul164.neg.i657, %conv17.i653
  %call75 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.378, ptr noundef nonnull @.str.166, i64 noundef %retval.0.i651, i32 noundef %sub165.i658) #16
  %sleep_start90 = getelementptr inbounds %struct.sched_statistics, ptr %retval.0.i488, i32 0, i32 6
  %148 = ptrtoint ptr %sleep_start90 to i32
  call void @__asan_load8_noabort(i32 %148)
  %149 = load i64, ptr %sleep_start90, align 16
  %cmp.i659 = icmp slt i64 %149, 0
  br i1 %cmp.i659, label %if.end181.i664, label %if.end375.i667

if.end181.i664:                                   ; preds = %nsec_high.exit652
  %sub.i660 = sub i64 0, %149
  %150 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %sub.i660) #17, !srcloc !854
  %151 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %sub.i660, i64 %150, i32 0) #17, !srcloc !855
  %asmresult10.i.i661 = extractvalue { i64, i32 } %151, 0
  %div161565.i662 = lshr i64 %asmresult10.i.i661, 18
  %sub183.i663 = sub nsw i64 0, %div161565.i662
  br label %nsec_high.exit669

if.end375.i667:                                   ; preds = %nsec_high.exit652
  %152 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %149) #17, !srcloc !854
  %153 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %149, i64 %152, i32 0) #17, !srcloc !855
  %asmresult10.i566.i665 = extractvalue { i64, i32 } %153, 0
  %div380564.i666 = lshr i64 %asmresult10.i566.i665, 18
  br label %nsec_high.exit669

nsec_high.exit669:                                ; preds = %if.end375.i667, %if.end181.i664
  %retval.0.i668 = phi i64 [ %sub183.i663, %if.end181.i664 ], [ %div380564.i666, %if.end375.i667 ]
  %154 = tail call i64 @llvm.abs.i64(i64 %149, i1 false) #13
  %conv17.i670 = trunc i64 %154 to i32
  %155 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %154) #17, !srcloc !854
  %156 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %154, i64 %155, i32 0) #17, !srcloc !855
  %asmresult10.i.i671 = extractvalue { i64, i32 } %156, 0
  %div162263.i672 = lshr i64 %asmresult10.i.i671, 18
  %conv163.i673 = trunc i64 %div162263.i672 to i32
  %mul164.neg.i674 = mul i32 %conv163.i673, -1000000
  %sub165.i675 = add i32 %mul164.neg.i674, %conv17.i670
  %call94 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.378, ptr noundef nonnull @.str.169, i64 noundef %retval.0.i668, i32 noundef %sub165.i675) #16
  %block_start109 = getelementptr inbounds %struct.sched_statistics, ptr %retval.0.i488, i32 0, i32 9
  %157 = ptrtoint ptr %block_start109 to i32
  call void @__asan_load8_noabort(i32 %157)
  %158 = load i64, ptr %block_start109, align 8
  %cmp.i676 = icmp slt i64 %158, 0
  br i1 %cmp.i676, label %if.end181.i681, label %if.end375.i684

if.end181.i681:                                   ; preds = %nsec_high.exit669
  %sub.i677 = sub i64 0, %158
  %159 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %sub.i677) #17, !srcloc !854
  %160 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %sub.i677, i64 %159, i32 0) #17, !srcloc !855
  %asmresult10.i.i678 = extractvalue { i64, i32 } %160, 0
  %div161565.i679 = lshr i64 %asmresult10.i.i678, 18
  %sub183.i680 = sub nsw i64 0, %div161565.i679
  br label %nsec_high.exit686

if.end375.i684:                                   ; preds = %nsec_high.exit669
  %161 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %158) #17, !srcloc !854
  %162 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %158, i64 %161, i32 0) #17, !srcloc !855
  %asmresult10.i566.i682 = extractvalue { i64, i32 } %162, 0
  %div380564.i683 = lshr i64 %asmresult10.i566.i682, 18
  br label %nsec_high.exit686

nsec_high.exit686:                                ; preds = %if.end375.i684, %if.end181.i681
  %retval.0.i685 = phi i64 [ %sub183.i680, %if.end181.i681 ], [ %div380564.i683, %if.end375.i684 ]
  %163 = tail call i64 @llvm.abs.i64(i64 %158, i1 false) #13
  %conv17.i687 = trunc i64 %163 to i32
  %164 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %163) #17, !srcloc !854
  %165 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %163, i64 %164, i32 0) #17, !srcloc !855
  %asmresult10.i.i688 = extractvalue { i64, i32 } %165, 0
  %div162263.i689 = lshr i64 %asmresult10.i.i688, 18
  %conv163.i690 = trunc i64 %div162263.i689 to i32
  %mul164.neg.i691 = mul i32 %conv163.i690, -1000000
  %sub165.i692 = add i32 %mul164.neg.i691, %conv17.i687
  %call113 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.378, ptr noundef nonnull @.str.172, i64 noundef %retval.0.i685, i32 noundef %sub165.i692) #16
  %sleep_max128 = getelementptr inbounds %struct.sched_statistics, ptr %retval.0.i488, i32 0, i32 7
  %166 = ptrtoint ptr %sleep_max128 to i32
  call void @__asan_load8_noabort(i32 %166)
  %167 = load i64, ptr %sleep_max128, align 8
  %cmp.i693 = icmp slt i64 %167, 0
  br i1 %cmp.i693, label %if.end181.i698, label %if.end375.i701

if.end181.i698:                                   ; preds = %nsec_high.exit686
  %sub.i694 = sub i64 0, %167
  %168 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %sub.i694) #17, !srcloc !854
  %169 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %sub.i694, i64 %168, i32 0) #17, !srcloc !855
  %asmresult10.i.i695 = extractvalue { i64, i32 } %169, 0
  %div161565.i696 = lshr i64 %asmresult10.i.i695, 18
  %sub183.i697 = sub nsw i64 0, %div161565.i696
  br label %nsec_high.exit703

if.end375.i701:                                   ; preds = %nsec_high.exit686
  %170 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %167) #17, !srcloc !854
  %171 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %167, i64 %170, i32 0) #17, !srcloc !855
  %asmresult10.i566.i699 = extractvalue { i64, i32 } %171, 0
  %div380564.i700 = lshr i64 %asmresult10.i566.i699, 18
  br label %nsec_high.exit703

nsec_high.exit703:                                ; preds = %if.end375.i701, %if.end181.i698
  %retval.0.i702 = phi i64 [ %sub183.i697, %if.end181.i698 ], [ %div380564.i700, %if.end375.i701 ]
  %172 = tail call i64 @llvm.abs.i64(i64 %167, i1 false) #13
  %conv17.i704 = trunc i64 %172 to i32
  %173 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %172) #17, !srcloc !854
  %174 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %172, i64 %173, i32 0) #17, !srcloc !855
  %asmresult10.i.i705 = extractvalue { i64, i32 } %174, 0
  %div162263.i706 = lshr i64 %asmresult10.i.i705, 18
  %conv163.i707 = trunc i64 %div162263.i706 to i32
  %mul164.neg.i708 = mul i32 %conv163.i707, -1000000
  %sub165.i709 = add i32 %mul164.neg.i708, %conv17.i704
  %call132 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.378, ptr noundef nonnull @.str.175, i64 noundef %retval.0.i702, i32 noundef %sub165.i709) #16
  %block_max147 = getelementptr inbounds %struct.sched_statistics, ptr %retval.0.i488, i32 0, i32 10
  %175 = ptrtoint ptr %block_max147 to i32
  call void @__asan_load8_noabort(i32 %175)
  %176 = load i64, ptr %block_max147, align 16
  %cmp.i710 = icmp slt i64 %176, 0
  br i1 %cmp.i710, label %if.end181.i715, label %if.end375.i718

if.end181.i715:                                   ; preds = %nsec_high.exit703
  %sub.i711 = sub i64 0, %176
  %177 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %sub.i711) #17, !srcloc !854
  %178 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %sub.i711, i64 %177, i32 0) #17, !srcloc !855
  %asmresult10.i.i712 = extractvalue { i64, i32 } %178, 0
  %div161565.i713 = lshr i64 %asmresult10.i.i712, 18
  %sub183.i714 = sub nsw i64 0, %div161565.i713
  br label %nsec_high.exit720

if.end375.i718:                                   ; preds = %nsec_high.exit703
  %179 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %176) #17, !srcloc !854
  %180 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %176, i64 %179, i32 0) #17, !srcloc !855
  %asmresult10.i566.i716 = extractvalue { i64, i32 } %180, 0
  %div380564.i717 = lshr i64 %asmresult10.i566.i716, 18
  br label %nsec_high.exit720

nsec_high.exit720:                                ; preds = %if.end375.i718, %if.end181.i715
  %retval.0.i719 = phi i64 [ %sub183.i714, %if.end181.i715 ], [ %div380564.i717, %if.end375.i718 ]
  %181 = tail call i64 @llvm.abs.i64(i64 %176, i1 false) #13
  %conv17.i721 = trunc i64 %181 to i32
  %182 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %181) #17, !srcloc !854
  %183 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %181, i64 %182, i32 0) #17, !srcloc !855
  %asmresult10.i.i722 = extractvalue { i64, i32 } %183, 0
  %div162263.i723 = lshr i64 %asmresult10.i.i722, 18
  %conv163.i724 = trunc i64 %div162263.i723 to i32
  %mul164.neg.i725 = mul i32 %conv163.i724, -1000000
  %sub165.i726 = add i32 %mul164.neg.i725, %conv17.i721
  %call151 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.378, ptr noundef nonnull @.str.178, i64 noundef %retval.0.i719, i32 noundef %sub165.i726) #16
  %exec_max166 = getelementptr inbounds %struct.sched_statistics, ptr %retval.0.i488, i32 0, i32 12
  %184 = ptrtoint ptr %exec_max166 to i32
  call void @__asan_load8_noabort(i32 %184)
  %185 = load i64, ptr %exec_max166, align 32
  %cmp.i727 = icmp slt i64 %185, 0
  br i1 %cmp.i727, label %if.end181.i732, label %if.end375.i735

if.end181.i732:                                   ; preds = %nsec_high.exit720
  %sub.i728 = sub i64 0, %185
  %186 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %sub.i728) #17, !srcloc !854
  %187 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %sub.i728, i64 %186, i32 0) #17, !srcloc !855
  %asmresult10.i.i729 = extractvalue { i64, i32 } %187, 0
  %div161565.i730 = lshr i64 %asmresult10.i.i729, 18
  %sub183.i731 = sub nsw i64 0, %div161565.i730
  br label %nsec_high.exit737

if.end375.i735:                                   ; preds = %nsec_high.exit720
  %188 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %185) #17, !srcloc !854
  %189 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %185, i64 %188, i32 0) #17, !srcloc !855
  %asmresult10.i566.i733 = extractvalue { i64, i32 } %189, 0
  %div380564.i734 = lshr i64 %asmresult10.i566.i733, 18
  br label %nsec_high.exit737

nsec_high.exit737:                                ; preds = %if.end375.i735, %if.end181.i732
  %retval.0.i736 = phi i64 [ %sub183.i731, %if.end181.i732 ], [ %div380564.i734, %if.end375.i735 ]
  %190 = tail call i64 @llvm.abs.i64(i64 %185, i1 false) #13
  %conv17.i738 = trunc i64 %190 to i32
  %191 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %190) #17, !srcloc !854
  %192 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %190, i64 %191, i32 0) #17, !srcloc !855
  %asmresult10.i.i739 = extractvalue { i64, i32 } %192, 0
  %div162263.i740 = lshr i64 %asmresult10.i.i739, 18
  %conv163.i741 = trunc i64 %div162263.i740 to i32
  %mul164.neg.i742 = mul i32 %conv163.i741, -1000000
  %sub165.i743 = add i32 %mul164.neg.i742, %conv17.i738
  %call170 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.378, ptr noundef nonnull @.str.181, i64 noundef %retval.0.i736, i32 noundef %sub165.i743) #16
  %slice_max185 = getelementptr inbounds %struct.sched_statistics, ptr %retval.0.i488, i32 0, i32 13
  %193 = ptrtoint ptr %slice_max185 to i32
  call void @__asan_load8_noabort(i32 %193)
  %194 = load i64, ptr %slice_max185, align 8
  %cmp.i744 = icmp slt i64 %194, 0
  br i1 %cmp.i744, label %if.end181.i749, label %if.end375.i752

if.end181.i749:                                   ; preds = %nsec_high.exit737
  %sub.i745 = sub i64 0, %194
  %195 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %sub.i745) #17, !srcloc !854
  %196 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %sub.i745, i64 %195, i32 0) #17, !srcloc !855
  %asmresult10.i.i746 = extractvalue { i64, i32 } %196, 0
  %div161565.i747 = lshr i64 %asmresult10.i.i746, 18
  %sub183.i748 = sub nsw i64 0, %div161565.i747
  br label %nsec_high.exit754

if.end375.i752:                                   ; preds = %nsec_high.exit737
  %197 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %194) #17, !srcloc !854
  %198 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %194, i64 %197, i32 0) #17, !srcloc !855
  %asmresult10.i566.i750 = extractvalue { i64, i32 } %198, 0
  %div380564.i751 = lshr i64 %asmresult10.i566.i750, 18
  br label %nsec_high.exit754

nsec_high.exit754:                                ; preds = %if.end375.i752, %if.end181.i749
  %retval.0.i753 = phi i64 [ %sub183.i748, %if.end181.i749 ], [ %div380564.i751, %if.end375.i752 ]
  %199 = tail call i64 @llvm.abs.i64(i64 %194, i1 false) #13
  %conv17.i755 = trunc i64 %199 to i32
  %200 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %199) #17, !srcloc !854
  %201 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %199, i64 %200, i32 0) #17, !srcloc !855
  %asmresult10.i.i756 = extractvalue { i64, i32 } %201, 0
  %div162263.i757 = lshr i64 %asmresult10.i.i756, 18
  %conv163.i758 = trunc i64 %div162263.i757 to i32
  %mul164.neg.i759 = mul i32 %conv163.i758, -1000000
  %sub165.i760 = add i32 %mul164.neg.i759, %conv17.i755
  %call189 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.378, ptr noundef nonnull @.str.184, i64 noundef %retval.0.i753, i32 noundef %sub165.i760) #16
  %wait_max204 = getelementptr inbounds %struct.sched_statistics, ptr %retval.0.i488, i32 0, i32 1
  %202 = ptrtoint ptr %wait_max204 to i32
  call void @__asan_load8_noabort(i32 %202)
  %203 = load i64, ptr %wait_max204, align 8
  %cmp.i761 = icmp slt i64 %203, 0
  br i1 %cmp.i761, label %if.end181.i766, label %if.end375.i769

if.end181.i766:                                   ; preds = %nsec_high.exit754
  %sub.i762 = sub i64 0, %203
  %204 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %sub.i762) #17, !srcloc !854
  %205 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %sub.i762, i64 %204, i32 0) #17, !srcloc !855
  %asmresult10.i.i763 = extractvalue { i64, i32 } %205, 0
  %div161565.i764 = lshr i64 %asmresult10.i.i763, 18
  %sub183.i765 = sub nsw i64 0, %div161565.i764
  br label %nsec_high.exit771

if.end375.i769:                                   ; preds = %nsec_high.exit754
  %206 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %203) #17, !srcloc !854
  %207 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %203, i64 %206, i32 0) #17, !srcloc !855
  %asmresult10.i566.i767 = extractvalue { i64, i32 } %207, 0
  %div380564.i768 = lshr i64 %asmresult10.i566.i767, 18
  br label %nsec_high.exit771

nsec_high.exit771:                                ; preds = %if.end375.i769, %if.end181.i766
  %retval.0.i770 = phi i64 [ %sub183.i765, %if.end181.i766 ], [ %div380564.i768, %if.end375.i769 ]
  %208 = tail call i64 @llvm.abs.i64(i64 %203, i1 false) #13
  %conv17.i772 = trunc i64 %208 to i32
  %209 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %208) #17, !srcloc !854
  %210 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %208, i64 %209, i32 0) #17, !srcloc !855
  %asmresult10.i.i773 = extractvalue { i64, i32 } %210, 0
  %div162263.i774 = lshr i64 %asmresult10.i.i773, 18
  %conv163.i775 = trunc i64 %div162263.i774 to i32
  %mul164.neg.i776 = mul i32 %conv163.i775, -1000000
  %sub165.i777 = add i32 %mul164.neg.i776, %conv17.i772
  %call208 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.378, ptr noundef nonnull @.str.187, i64 noundef %retval.0.i770, i32 noundef %sub165.i777) #16
  %wait_sum223 = getelementptr inbounds %struct.sched_statistics, ptr %retval.0.i488, i32 0, i32 3
  %211 = ptrtoint ptr %wait_sum223 to i32
  call void @__asan_load8_noabort(i32 %211)
  %212 = load i64, ptr %wait_sum223, align 8
  %cmp.i778 = icmp slt i64 %212, 0
  br i1 %cmp.i778, label %if.end181.i783, label %if.end375.i786

if.end181.i783:                                   ; preds = %nsec_high.exit771
  %sub.i779 = sub i64 0, %212
  %213 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %sub.i779) #17, !srcloc !854
  %214 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %sub.i779, i64 %213, i32 0) #17, !srcloc !855
  %asmresult10.i.i780 = extractvalue { i64, i32 } %214, 0
  %div161565.i781 = lshr i64 %asmresult10.i.i780, 18
  %sub183.i782 = sub nsw i64 0, %div161565.i781
  br label %nsec_high.exit788

if.end375.i786:                                   ; preds = %nsec_high.exit771
  %215 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %212) #17, !srcloc !854
  %216 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %212, i64 %215, i32 0) #17, !srcloc !855
  %asmresult10.i566.i784 = extractvalue { i64, i32 } %216, 0
  %div380564.i785 = lshr i64 %asmresult10.i566.i784, 18
  br label %nsec_high.exit788

nsec_high.exit788:                                ; preds = %if.end375.i786, %if.end181.i783
  %retval.0.i787 = phi i64 [ %sub183.i782, %if.end181.i783 ], [ %div380564.i785, %if.end375.i786 ]
  %217 = tail call i64 @llvm.abs.i64(i64 %212, i1 false) #13
  %conv17.i789 = trunc i64 %217 to i32
  %218 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %217) #17, !srcloc !854
  %219 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %217, i64 %218, i32 0) #17, !srcloc !855
  %asmresult10.i.i790 = extractvalue { i64, i32 } %219, 0
  %div162263.i791 = lshr i64 %asmresult10.i.i790, 18
  %conv163.i792 = trunc i64 %div162263.i791 to i32
  %mul164.neg.i793 = mul i32 %conv163.i792, -1000000
  %sub165.i794 = add i32 %mul164.neg.i793, %conv17.i789
  %call227 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.378, ptr noundef nonnull @.str.190, i64 noundef %retval.0.i787, i32 noundef %sub165.i794) #16
  %wait_count239 = getelementptr inbounds %struct.sched_statistics, ptr %retval.0.i488, i32 0, i32 2
  %220 = ptrtoint ptr %wait_count239 to i32
  call void @__asan_load8_noabort(i32 %220)
  %221 = load i64, ptr %wait_count239, align 16
  %call240 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.132, ptr noundef nonnull @.str.193, i64 noundef %221) #16
  br label %do.end251

do.body245:                                       ; preds = %do.end52
  br i1 %tobool2.not, label %do.end251, label %if.then247

if.then247:                                       ; preds = %do.body245, %nsec_high.exit635
  %222 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %3, align 128
  %conv = zext i32 %223 to i64
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %m, ptr noundef nonnull @.str.129, ptr noundef nonnull @.str.406, i64 noundef %conv) #13
  %load_avg = getelementptr inbounds %struct.sched_entity, ptr %3, i32 0, i32 15, i32 5
  %224 = ptrtoint ptr %load_avg to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %load_avg, align 32
  %conv263 = zext i32 %225 to i64
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %m, ptr noundef nonnull @.str.129, ptr noundef nonnull @.str.409, i64 noundef %conv263) #13
  %util_avg = getelementptr inbounds %struct.sched_entity, ptr %3, i32 0, i32 15, i32 7
  %226 = ptrtoint ptr %util_avg to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %util_avg, align 8
  %conv280 = zext i32 %227 to i64
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %m, ptr noundef nonnull @.str.129, ptr noundef nonnull @.str.412, i64 noundef %conv280) #13
  %runnable_avg = getelementptr inbounds %struct.sched_entity, ptr %3, i32 0, i32 15, i32 6
  %228 = ptrtoint ptr %runnable_avg to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %runnable_avg, align 4
  %conv297 = zext i32 %229 to i64
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %m, ptr noundef nonnull @.str.129, ptr noundef nonnull @.str.415, i64 noundef %conv297) #13
  br label %cleanup

do.end251:                                        ; preds = %do.body245, %nsec_high.exit788
  %230 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %3, align 128
  %conv255 = zext i32 %231 to i64
  %call256 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.132, ptr noundef nonnull @.str.406, i64 noundef %conv255) #16
  %load_avg270 = getelementptr inbounds %struct.sched_entity, ptr %3, i32 0, i32 15, i32 5
  %232 = ptrtoint ptr %load_avg270 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %load_avg270, align 32
  %conv271 = zext i32 %233 to i64
  %call272 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.132, ptr noundef nonnull @.str.409, i64 noundef %conv271) #16
  %util_avg287 = getelementptr inbounds %struct.sched_entity, ptr %3, i32 0, i32 15, i32 7
  %234 = ptrtoint ptr %util_avg287 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %util_avg287, align 8
  %conv288 = zext i32 %235 to i64
  %call289 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.132, ptr noundef nonnull @.str.412, i64 noundef %conv288) #16
  %runnable_avg304 = getelementptr inbounds %struct.sched_entity, ptr %3, i32 0, i32 15, i32 6
  %236 = ptrtoint ptr %runnable_avg304 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %runnable_avg304, align 4
  %conv305 = zext i32 %237 to i64
  %call306 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.132, ptr noundef nonnull @.str.415, i64 noundef %conv305) #16
  br label %cleanup

cleanup:                                          ; preds = %do.end251, %if.then247, %entry
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @print_rt_rq(ptr noundef %m, i32 noundef %cpu, ptr nocapture noundef readonly %rt_rq) local_unnamed_addr #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %buf = alloca [128 x i8], align 1
  %tobool.not = icmp eq ptr %m, null
  br i1 %tobool.not, label %do.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %m, ptr noundef nonnull @.str.5) #13
  br label %do.end2

do.end:                                           ; preds = %entry
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #16
  br label %do.end2

do.end2:                                          ; preds = %do.end, %if.then
  %call.i = tail call i32 @_raw_spin_trylock(ptr noundef nonnull @sched_debug_lock) #13
  %tobool4.not = icmp eq i32 %call.i, 0
  br i1 %tobool4.not, label %if.else16, label %if.then5

if.then5:                                         ; preds = %do.end2
  %tg = getelementptr inbounds %struct.rt_rq, ptr %rt_rq, i32 0, i32 15
  %0 = ptrtoint ptr %tg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tg, align 4
  %call.i149 = tail call i32 @autogroup_path(ptr noundef %1, ptr noundef nonnull @group_path, i32 noundef 4096) #13
  %tobool.not.i = icmp eq i32 %call.i149, 0
  br i1 %tobool.not.i, label %if.end.i, label %task_group_path.exit

if.end.i:                                         ; preds = %if.then5
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 128
  %kn.i.i = getelementptr inbounds %struct.cgroup, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %kn.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %kn.i.i, align 8
  %call.i.i.i = tail call i32 @kernfs_path_from_node(ptr noundef %5, ptr noundef null, ptr noundef nonnull @group_path, i32 noundef 4096) #13
  br label %task_group_path.exit

task_group_path.exit:                             ; preds = %if.end.i, %if.then5
  br i1 %tobool.not, label %do.end11, label %if.then8

if.then8:                                         ; preds = %task_group_path.exit
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %m, ptr noundef nonnull @.str.95, i32 noundef %cpu, ptr noundef nonnull @group_path) #13
  br label %do.end15

do.end11:                                         ; preds = %task_group_path.exit
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.97, i32 noundef %cpu, ptr noundef nonnull @group_path) #16
  br label %do.end15

do.end15:                                         ; preds = %do.end11, %if.then8
  tail call void @_raw_spin_unlock(ptr noundef nonnull @sched_debug_lock) #13
  br label %do.body37

if.else16:                                        ; preds = %do.end2
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %buf) #13
  %6 = call ptr @memset(ptr %buf, i32 255, i32 128)
  %tg18 = getelementptr inbounds %struct.rt_rq, ptr %rt_rq, i32 0, i32 15
  %7 = ptrtoint ptr %tg18 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tg18, align 4
  %call.i150 = call i32 @autogroup_path(ptr noundef %8, ptr noundef nonnull %buf, i32 noundef 125) #13
  %tobool.not.i151 = icmp eq i32 %call.i150, 0
  br i1 %tobool.not.i151, label %if.end.i154, label %task_group_path.exit155

if.end.i154:                                      ; preds = %if.else16
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 128
  %kn.i.i152 = getelementptr inbounds %struct.cgroup, ptr %10, i32 0, i32 11
  %11 = ptrtoint ptr %kn.i.i152 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %kn.i.i152, align 8
  %call.i.i.i153 = call i32 @kernfs_path_from_node(ptr noundef %12, ptr noundef null, ptr noundef nonnull %buf, i32 noundef 125) #13
  br label %task_group_path.exit155

task_group_path.exit155:                          ; preds = %if.end.i154, %if.else16
  %add.ptr21 = getelementptr inbounds i8, ptr %buf, i32 124
  %13 = ptrtoint ptr %add.ptr21 to i32
  call void @__asan_storeN_noabort(i32 %13, i32 4)
  store i32 774778368, ptr %add.ptr21, align 1
  br i1 %tobool.not, label %do.end29, label %if.then25

if.then25:                                        ; preds = %task_group_path.exit155
  call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %m, ptr noundef nonnull @.str.95, i32 noundef %cpu, ptr noundef nonnull %buf) #13
  br label %do.end35

do.end29:                                         ; preds = %task_group_path.exit155
  %call32 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.97, i32 noundef %cpu, ptr noundef nonnull %buf) #16
  br label %do.end35

do.end35:                                         ; preds = %do.end29, %if.then25
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %buf) #13
  br label %do.body37

do.body37:                                        ; preds = %do.end35, %do.end15
  %rt_nr_running45 = getelementptr inbounds %struct.rt_rq, ptr %rt_rq, i32 0, i32 1
  %14 = ptrtoint ptr %rt_nr_running45 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rt_nr_running45, align 8
  br i1 %tobool.not, label %do.end43, label %if.then39

if.then39:                                        ; preds = %do.body37
  call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %m, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.101, i32 noundef %15) #13
  %rt_nr_migratory = getelementptr inbounds %struct.rt_rq, ptr %rt_rq, i32 0, i32 4
  %16 = ptrtoint ptr %rt_nr_migratory to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rt_nr_migratory, align 8
  call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %m, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.104, i32 noundef %17) #13
  %rt_throttled = getelementptr inbounds %struct.rt_rq, ptr %rt_rq, i32 0, i32 9
  %18 = ptrtoint ptr %rt_throttled to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rt_throttled, align 8
  %conv = sext i32 %19 to i64
  call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %m, ptr noundef nonnull @.str.107, ptr noundef nonnull @.str.108, i64 noundef %conv) #13
  %rt_time = getelementptr inbounds %struct.rt_rq, ptr %rt_rq, i32 0, i32 10
  %20 = ptrtoint ptr %rt_time to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %rt_time, align 8
  %cmp.i = icmp slt i64 %21, 0
  br i1 %cmp.i, label %if.end181.i, label %if.end375.i

if.end181.i:                                      ; preds = %if.then39
  %sub.i = sub i64 0, %21
  %22 = call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %sub.i) #17, !srcloc !854
  %23 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %sub.i, i64 %22, i32 0) #17, !srcloc !855
  %asmresult10.i.i = extractvalue { i64, i32 } %23, 0
  %div161565.i = lshr i64 %asmresult10.i.i, 18
  %sub183.i = sub nsw i64 0, %div161565.i
  br label %nsec_high.exit

if.end375.i:                                      ; preds = %if.then39
  %24 = call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %21) #17, !srcloc !854
  %25 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %21, i64 %24, i32 0) #17, !srcloc !855
  %asmresult10.i566.i = extractvalue { i64, i32 } %25, 0
  %div380564.i = lshr i64 %asmresult10.i566.i, 18
  br label %nsec_high.exit

nsec_high.exit:                                   ; preds = %if.end375.i, %if.end181.i
  %retval.0.i = phi i64 [ %sub183.i, %if.end181.i ], [ %div380564.i, %if.end375.i ]
  %26 = call i64 @llvm.abs.i64(i64 %21, i1 false) #13
  %conv17.i = trunc i64 %26 to i32
  %27 = call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %26) #17, !srcloc !854
  %28 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %26, i64 %27, i32 0) #17, !srcloc !855
  %asmresult10.i.i156 = extractvalue { i64, i32 } %28, 0
  %div162263.i = lshr i64 %asmresult10.i.i156, 18
  %conv163.i = trunc i64 %div162263.i to i32
  %mul164.neg.i = mul i32 %conv163.i, -1000000
  %sub165.i = add i32 %mul164.neg.i, %conv17.i
  call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %m, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.112, i64 noundef %retval.0.i, i32 noundef %sub165.i) #13
  %rt_runtime = getelementptr inbounds %struct.rt_rq, ptr %rt_rq, i32 0, i32 11
  %29 = ptrtoint ptr %rt_runtime to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %rt_runtime, align 8
  %cmp.i157 = icmp slt i64 %30, 0
  br i1 %cmp.i157, label %if.end181.i162, label %if.end375.i165

if.end181.i162:                                   ; preds = %nsec_high.exit
  %sub.i158 = sub i64 0, %30
  %31 = call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %sub.i158) #17, !srcloc !854
  %32 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %sub.i158, i64 %31, i32 0) #17, !srcloc !855
  %asmresult10.i.i159 = extractvalue { i64, i32 } %32, 0
  %div161565.i160 = lshr i64 %asmresult10.i.i159, 18
  %sub183.i161 = sub nsw i64 0, %div161565.i160
  br label %nsec_high.exit167

if.end375.i165:                                   ; preds = %nsec_high.exit
  %33 = call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %30) #17, !srcloc !854
  %34 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %30, i64 %33, i32 0) #17, !srcloc !855
  %asmresult10.i566.i163 = extractvalue { i64, i32 } %34, 0
  %div380564.i164 = lshr i64 %asmresult10.i566.i163, 18
  br label %nsec_high.exit167

nsec_high.exit167:                                ; preds = %if.end375.i165, %if.end181.i162
  %retval.0.i166 = phi i64 [ %sub183.i161, %if.end181.i162 ], [ %div380564.i164, %if.end375.i165 ]
  %35 = call i64 @llvm.abs.i64(i64 %30, i1 false) #13
  %conv17.i168 = trunc i64 %35 to i32
  %36 = call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %35) #17, !srcloc !854
  %37 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %35, i64 %36, i32 0) #17, !srcloc !855
  %asmresult10.i.i169 = extractvalue { i64, i32 } %37, 0
  %div162263.i170 = lshr i64 %asmresult10.i.i169, 18
  %conv163.i171 = trunc i64 %div162263.i170 to i32
  %mul164.neg.i172 = mul i32 %conv163.i171, -1000000
  %sub165.i173 = add i32 %mul164.neg.i172, %conv17.i168
  call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %m, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.115, i64 noundef %retval.0.i166, i32 noundef %sub165.i173) #13
  br label %do.end114

do.end43:                                         ; preds = %do.body37
  %call46 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.101, i32 noundef %15) #16
  %rt_nr_migratory58 = getelementptr inbounds %struct.rt_rq, ptr %rt_rq, i32 0, i32 4
  %38 = ptrtoint ptr %rt_nr_migratory58 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %rt_nr_migratory58, align 8
  %call59 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.104, i32 noundef %39) #16
  %rt_throttled71 = getelementptr inbounds %struct.rt_rq, ptr %rt_rq, i32 0, i32 9
  %40 = ptrtoint ptr %rt_throttled71 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %rt_throttled71, align 8
  %conv72 = sext i32 %41 to i64
  %call73 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.110, ptr noundef nonnull @.str.108, i64 noundef %conv72) #16
  %rt_time88 = getelementptr inbounds %struct.rt_rq, ptr %rt_rq, i32 0, i32 10
  %42 = ptrtoint ptr %rt_time88 to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %rt_time88, align 8
  %cmp.i174 = icmp slt i64 %43, 0
  br i1 %cmp.i174, label %if.end181.i179, label %if.end375.i182

if.end181.i179:                                   ; preds = %do.end43
  %sub.i175 = sub i64 0, %43
  %44 = call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %sub.i175) #17, !srcloc !854
  %45 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %sub.i175, i64 %44, i32 0) #17, !srcloc !855
  %asmresult10.i.i176 = extractvalue { i64, i32 } %45, 0
  %div161565.i177 = lshr i64 %asmresult10.i.i176, 18
  %sub183.i178 = sub nsw i64 0, %div161565.i177
  br label %nsec_high.exit184

if.end375.i182:                                   ; preds = %do.end43
  %46 = call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %43) #17, !srcloc !854
  %47 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %43, i64 %46, i32 0) #17, !srcloc !855
  %asmresult10.i566.i180 = extractvalue { i64, i32 } %47, 0
  %div380564.i181 = lshr i64 %asmresult10.i566.i180, 18
  br label %nsec_high.exit184

nsec_high.exit184:                                ; preds = %if.end375.i182, %if.end181.i179
  %retval.0.i183 = phi i64 [ %sub183.i178, %if.end181.i179 ], [ %div380564.i181, %if.end375.i182 ]
  %48 = call i64 @llvm.abs.i64(i64 %43, i1 false) #13
  %conv17.i185 = trunc i64 %48 to i32
  %49 = call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %48) #17, !srcloc !854
  %50 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %48, i64 %49, i32 0) #17, !srcloc !855
  %asmresult10.i.i186 = extractvalue { i64, i32 } %50, 0
  %div162263.i187 = lshr i64 %asmresult10.i.i186, 18
  %conv163.i188 = trunc i64 %div162263.i187 to i32
  %mul164.neg.i189 = mul i32 %conv163.i188, -1000000
  %sub165.i190 = add i32 %mul164.neg.i189, %conv17.i185
  %call92 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.112, i64 noundef %retval.0.i183, i32 noundef %sub165.i190) #16
  %rt_runtime107 = getelementptr inbounds %struct.rt_rq, ptr %rt_rq, i32 0, i32 11
  %51 = ptrtoint ptr %rt_runtime107 to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %rt_runtime107, align 8
  %cmp.i191 = icmp slt i64 %52, 0
  br i1 %cmp.i191, label %if.end181.i196, label %if.end375.i199

if.end181.i196:                                   ; preds = %nsec_high.exit184
  %sub.i192 = sub i64 0, %52
  %53 = call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %sub.i192) #17, !srcloc !854
  %54 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %sub.i192, i64 %53, i32 0) #17, !srcloc !855
  %asmresult10.i.i193 = extractvalue { i64, i32 } %54, 0
  %div161565.i194 = lshr i64 %asmresult10.i.i193, 18
  %sub183.i195 = sub nsw i64 0, %div161565.i194
  br label %nsec_high.exit201

if.end375.i199:                                   ; preds = %nsec_high.exit184
  %55 = call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %52) #17, !srcloc !854
  %56 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %52, i64 %55, i32 0) #17, !srcloc !855
  %asmresult10.i566.i197 = extractvalue { i64, i32 } %56, 0
  %div380564.i198 = lshr i64 %asmresult10.i566.i197, 18
  br label %nsec_high.exit201

nsec_high.exit201:                                ; preds = %if.end375.i199, %if.end181.i196
  %retval.0.i200 = phi i64 [ %sub183.i195, %if.end181.i196 ], [ %div380564.i198, %if.end375.i199 ]
  %57 = call i64 @llvm.abs.i64(i64 %52, i1 false) #13
  %conv17.i202 = trunc i64 %57 to i32
  %58 = call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %57) #17, !srcloc !854
  %59 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %57, i64 %58, i32 0) #17, !srcloc !855
  %asmresult10.i.i203 = extractvalue { i64, i32 } %59, 0
  %div162263.i204 = lshr i64 %asmresult10.i.i203, 18
  %conv163.i205 = trunc i64 %div162263.i204 to i32
  %mul164.neg.i206 = mul i32 %conv163.i205, -1000000
  %sub165.i207 = add i32 %mul164.neg.i206, %conv17.i202
  %call111 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.115, i64 noundef %retval.0.i200, i32 noundef %sub165.i207) #16
  br label %do.end114

do.end114:                                        ; preds = %nsec_high.exit201, %nsec_high.exit167
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @print_dl_rq(ptr noundef %m, i32 noundef %cpu, ptr nocapture noundef readonly %dl_rq) local_unnamed_addr #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %m, null
  br i1 %tobool.not, label %do.end54, label %if.then50

if.then50:                                        ; preds = %entry
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %m, ptr noundef nonnull @.str.5) #13
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %m, ptr noundef nonnull @.str.119, i32 noundef %cpu) #13
  %dl_nr_running = getelementptr inbounds %struct.dl_rq, ptr %dl_rq, i32 0, i32 1
  %0 = ptrtoint ptr %dl_nr_running to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dl_nr_running, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %m, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.123, i32 noundef %1) #13
  %dl_nr_migratory = getelementptr inbounds %struct.dl_rq, ptr %dl_rq, i32 0, i32 3
  %2 = ptrtoint ptr %dl_nr_migratory to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dl_nr_migratory, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %m, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.126, i32 noundef %3) #13
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %cpu
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %add = add i32 %5, ptrtoint (ptr @runqueues to i32)
  %6 = inttoptr i32 %add to ptr
  %rd = getelementptr inbounds %struct.rq, ptr %6, i32 0, i32 35
  %7 = ptrtoint ptr %rd to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rd, align 8
  %bw = getelementptr inbounds %struct.root_domain, ptr %8, i32 0, i32 9, i32 1
  %9 = ptrtoint ptr %bw to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %bw, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %m, ptr noundef nonnull @.str.129, ptr noundef nonnull @.str.130, i64 noundef %10) #13
  %total_bw = getelementptr inbounds %struct.root_domain, ptr %8, i32 0, i32 9, i32 2
  %11 = ptrtoint ptr %total_bw to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %total_bw, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %m, ptr noundef nonnull @.str.129, ptr noundef nonnull @.str.134, i64 noundef %12) #13
  br label %do.end73

do.end54:                                         ; preds = %entry
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #16
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.121, i32 noundef %cpu) #16
  %dl_nr_running24 = getelementptr inbounds %struct.dl_rq, ptr %dl_rq, i32 0, i32 1
  %13 = ptrtoint ptr %dl_nr_running24 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dl_nr_running24, align 8
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.123, i32 noundef %14) #16
  %dl_nr_migratory37 = getelementptr inbounds %struct.dl_rq, ptr %dl_rq, i32 0, i32 3
  %15 = ptrtoint ptr %dl_nr_migratory37 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %dl_nr_migratory37, align 8
  %call38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.126, i32 noundef %16) #16
  %arrayidx93 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %cpu
  %17 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx93, align 4
  %add94 = add i32 %18, ptrtoint (ptr @runqueues to i32)
  %19 = inttoptr i32 %add94 to ptr
  %rd95 = getelementptr inbounds %struct.rq, ptr %19, i32 0, i32 35
  %20 = ptrtoint ptr %rd95 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rd95, align 8
  %bw56 = getelementptr inbounds %struct.root_domain, ptr %21, i32 0, i32 9, i32 1
  %22 = ptrtoint ptr %bw56 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %bw56, align 8
  %call57 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.132, ptr noundef nonnull @.str.130, i64 noundef %23) #16
  %total_bw69 = getelementptr inbounds %struct.root_domain, ptr %21, i32 0, i32 9, i32 2
  %24 = ptrtoint ptr %total_bw69 to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %total_bw69, align 8
  %call70 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.132, ptr noundef nonnull @.str.134, i64 noundef %25) #16
  br label %do.end73

do.end73:                                         ; preds = %do.end54, %if.then50
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sysrq_sched_debug_show() local_unnamed_addr #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @sched_debug_header(ptr noundef null)
  %call3 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_online_mask) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  %cmp4 = icmp ult i32 %call3, %0
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.body, %entry
  %call5 = phi i32 [ %call, %for.body ], [ %call3, %entry ]
  tail call void @touch_softlockup_watchdog() #13
  tail call void @touch_all_softlockup_watchdogs() #13
  tail call fastcc void @print_cpu(ptr noundef null, i32 noundef %call5)
  %call = tail call i32 @cpumask_next(i32 noundef %call5, ptr noundef nonnull @__cpu_online_mask) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %1 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call, %1
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %entry
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sched_debug_header(ptr noundef %m) unnamed_addr #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !856
  %and.i = and i32 %0, 128
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %if.then, label %do.end11

if.then:                                          ; preds = %entry
  tail call void @trace_hardirqs_off() #13
  br label %do.end11

do.end11:                                         ; preds = %if.then, %entry
  %call12 = tail call i64 @ktime_get() #13
  %call14 = tail call i64 @sched_clock() #13
  %call.i = tail call i64 @sched_clock() #13
  br i1 %tobool.not, label %if.then25, label %do.body27

if.then25:                                        ; preds = %do.end11
  tail call void @trace_hardirqs_on() #13
  br label %do.body27

do.body27:                                        ; preds = %if.then25, %do.end11
  %1 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #13, !srcloc !857
  %and.i.i = and i32 %1, 128
  %tobool35.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool35.not, label %if.then39, label %do.end42, !prof !858

if.then39:                                        ; preds = %do.body27
  tail call void @warn_bogus_irq_restore() #13
  br label %do.end42

do.end42:                                         ; preds = %if.then39, %do.body27
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #13, !srcloc !859
  %tobool48.not = icmp eq ptr %m, null
  %call67 = tail call i32 @strcspn(ptr noundef getelementptr inbounds (%struct.uts_namespace, ptr @init_uts_ns, i32 0, i32 0, i32 3), ptr noundef nonnull @.str.373)
  br i1 %tobool48.not, label %do.end59, label %if.then49

if.then49:                                        ; preds = %do.end42
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %m, ptr noundef nonnull @.str.420, ptr noundef getelementptr inbounds (%struct.uts_namespace, ptr @init_uts_ns, i32 0, i32 0, i32 2), i32 noundef %call67, ptr noundef getelementptr inbounds (%struct.uts_namespace, ptr @init_uts_ns, i32 0, i32 0, i32 3)) #13
  %cmp.i = icmp slt i64 %call12, 0
  br i1 %cmp.i, label %if.end181.i, label %if.end375.i

if.end181.i:                                      ; preds = %if.then49
  %sub.i = sub i64 0, %call12
  %2 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %sub.i) #17, !srcloc !854
  %3 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %sub.i, i64 %2, i32 0) #17, !srcloc !855
  %asmresult10.i.i = extractvalue { i64, i32 } %3, 0
  %div161565.i = lshr i64 %asmresult10.i.i, 18
  %sub183.i = sub nsw i64 0, %div161565.i
  br label %nsec_high.exit

if.end375.i:                                      ; preds = %if.then49
  %4 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %call12) #17, !srcloc !854
  %5 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %call12, i64 %4, i32 0) #17, !srcloc !855
  %asmresult10.i566.i = extractvalue { i64, i32 } %5, 0
  %div380564.i = lshr i64 %asmresult10.i566.i, 18
  br label %nsec_high.exit

nsec_high.exit:                                   ; preds = %if.end375.i, %if.end181.i
  %retval.0.i = phi i64 [ %sub183.i, %if.end181.i ], [ %div380564.i, %if.end375.i ]
  %6 = tail call i64 @llvm.abs.i64(i64 %call12, i1 false) #13
  %conv17.i = trunc i64 %6 to i32
  %7 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %6) #17, !srcloc !854
  %8 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %6, i64 %7, i32 0) #17, !srcloc !855
  %asmresult10.i.i335 = extractvalue { i64, i32 } %8, 0
  %div162263.i = lshr i64 %asmresult10.i.i335, 18
  %conv163.i = trunc i64 %div162263.i to i32
  %mul164.neg.i = mul i32 %conv163.i, -1000000
  %sub165.i = add i32 %mul164.neg.i, %conv17.i
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %m, ptr noundef nonnull @.str.423, ptr noundef nonnull @.str.424, i64 noundef %retval.0.i, i32 noundef %sub165.i) #13
  %cmp.i336 = icmp slt i64 %call14, 0
  br i1 %cmp.i336, label %if.end181.i341, label %if.end375.i344

if.end181.i341:                                   ; preds = %nsec_high.exit
  %sub.i337 = sub i64 0, %call14
  %9 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %sub.i337) #17, !srcloc !854
  %10 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %sub.i337, i64 %9, i32 0) #17, !srcloc !855
  %asmresult10.i.i338 = extractvalue { i64, i32 } %10, 0
  %div161565.i339 = lshr i64 %asmresult10.i.i338, 18
  %sub183.i340 = sub nsw i64 0, %div161565.i339
  br label %nsec_high.exit346

if.end375.i344:                                   ; preds = %nsec_high.exit
  %11 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %call14) #17, !srcloc !854
  %12 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %call14, i64 %11, i32 0) #17, !srcloc !855
  %asmresult10.i566.i342 = extractvalue { i64, i32 } %12, 0
  %div380564.i343 = lshr i64 %asmresult10.i566.i342, 18
  br label %nsec_high.exit346

nsec_high.exit346:                                ; preds = %if.end375.i344, %if.end181.i341
  %retval.0.i345 = phi i64 [ %sub183.i340, %if.end181.i341 ], [ %div380564.i343, %if.end375.i344 ]
  %13 = tail call i64 @llvm.abs.i64(i64 %call14, i1 false) #13
  %conv17.i347 = trunc i64 %13 to i32
  %14 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %13) #17, !srcloc !854
  %15 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %13, i64 %14, i32 0) #17, !srcloc !855
  %asmresult10.i.i348 = extractvalue { i64, i32 } %15, 0
  %div162263.i349 = lshr i64 %asmresult10.i.i348, 18
  %conv163.i350 = trunc i64 %div162263.i349 to i32
  %mul164.neg.i351 = mul i32 %conv163.i350, -1000000
  %sub165.i352 = add i32 %mul164.neg.i351, %conv17.i347
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %m, ptr noundef nonnull @.str.423, ptr noundef nonnull @.str.428, i64 noundef %retval.0.i345, i32 noundef %sub165.i352) #13
  %cmp.i353 = icmp slt i64 %call.i, 0
  br i1 %cmp.i353, label %if.end181.i358, label %if.end375.i361

if.end181.i358:                                   ; preds = %nsec_high.exit346
  %sub.i354 = sub i64 0, %call.i
  %16 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %sub.i354) #17, !srcloc !854
  %17 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %sub.i354, i64 %16, i32 0) #17, !srcloc !855
  %asmresult10.i.i355 = extractvalue { i64, i32 } %17, 0
  %div161565.i356 = lshr i64 %asmresult10.i.i355, 18
  %sub183.i357 = sub nsw i64 0, %div161565.i356
  br label %nsec_high.exit363

if.end375.i361:                                   ; preds = %nsec_high.exit346
  %18 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %call.i) #17, !srcloc !854
  %19 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %call.i, i64 %18, i32 0) #17, !srcloc !855
  %asmresult10.i566.i359 = extractvalue { i64, i32 } %19, 0
  %div380564.i360 = lshr i64 %asmresult10.i566.i359, 18
  br label %nsec_high.exit363

nsec_high.exit363:                                ; preds = %if.end375.i361, %if.end181.i358
  %retval.0.i362 = phi i64 [ %sub183.i357, %if.end181.i358 ], [ %div380564.i360, %if.end375.i361 ]
  %20 = tail call i64 @llvm.abs.i64(i64 %call.i, i1 false) #13
  %conv17.i364 = trunc i64 %20 to i32
  %21 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %20) #17, !srcloc !854
  %22 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %20, i64 %21, i32 0) #17, !srcloc !855
  %asmresult10.i.i365 = extractvalue { i64, i32 } %22, 0
  %div162263.i366 = lshr i64 %asmresult10.i.i365, 18
  %conv163.i367 = trunc i64 %div162263.i366 to i32
  %mul164.neg.i368 = mul i32 %conv163.i367, -1000000
  %sub165.i369 = add i32 %mul164.neg.i368, %conv17.i364
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %m, ptr noundef nonnull @.str.423, ptr noundef nonnull @.str.431, i64 noundef %retval.0.i362, i32 noundef %sub165.i369) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %23 = load volatile i32, ptr @jiffies, align 128
  %conv126 = zext i32 %23 to i64
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %m, ptr noundef nonnull @.str.434, ptr noundef nonnull @.str.435, i64 noundef %conv126) #13
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %m, ptr noundef nonnull @.str.5) #13
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %m, ptr noundef nonnull @.str.441) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sysctl_sched_latency to i32))
  %24 = load i32, ptr @sysctl_sched_latency, align 4
  %conv164 = zext i32 %24 to i64
  %25 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %conv164) #17
  %26 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %conv164, i64 %25, i32 0) #17
  %asmresult10.i566.i370 = extractvalue { i64, i32 } %26, 0
  %div380564.i371 = lshr i64 %asmresult10.i566.i370, 18
  %conv163.i377 = trunc i64 %div380564.i371 to i32
  %mul164.neg.i378 = mul i32 %conv163.i377, -1000000
  %sub165.i379 = add i32 %mul164.neg.i378, %24
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %m, ptr noundef nonnull @.str.445, ptr noundef nonnull @.str.446, i64 noundef %div380564.i371, i32 noundef %sub165.i379) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sysctl_sched_min_granularity to i32))
  %27 = load i32, ptr @sysctl_sched_min_granularity, align 4
  %conv184 = zext i32 %27 to i64
  %28 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %conv184) #17
  %29 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %conv184, i64 %28, i32 0) #17
  %asmresult10.i566.i380 = extractvalue { i64, i32 } %29, 0
  %div380564.i381 = lshr i64 %asmresult10.i566.i380, 18
  %conv163.i387 = trunc i64 %div380564.i381 to i32
  %mul164.neg.i388 = mul i32 %conv163.i387, -1000000
  %sub165.i389 = add i32 %mul164.neg.i388, %27
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %m, ptr noundef nonnull @.str.445, ptr noundef nonnull @.str.450, i64 noundef %div380564.i381, i32 noundef %sub165.i389) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sysctl_sched_idle_min_granularity to i32))
  %30 = load i32, ptr @sysctl_sched_idle_min_granularity, align 4
  %conv204 = zext i32 %30 to i64
  %31 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %conv204) #17
  %32 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %conv204, i64 %31, i32 0) #17
  %asmresult10.i566.i390 = extractvalue { i64, i32 } %32, 0
  %div380564.i391 = lshr i64 %asmresult10.i566.i390, 18
  %conv163.i397 = trunc i64 %div380564.i391 to i32
  %mul164.neg.i398 = mul i32 %conv163.i397, -1000000
  %sub165.i399 = add i32 %mul164.neg.i398, %30
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %m, ptr noundef nonnull @.str.445, ptr noundef nonnull @.str.453, i64 noundef %div380564.i391, i32 noundef %sub165.i399) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sysctl_sched_wakeup_granularity to i32))
  %33 = load i32, ptr @sysctl_sched_wakeup_granularity, align 4
  %conv224 = zext i32 %33 to i64
  %34 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %conv224) #17
  %35 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %conv224, i64 %34, i32 0) #17
  %asmresult10.i566.i400 = extractvalue { i64, i32 } %35, 0
  %div380564.i401 = lshr i64 %asmresult10.i566.i400, 18
  %conv163.i407 = trunc i64 %div380564.i401 to i32
  %mul164.neg.i408 = mul i32 %conv163.i407, -1000000
  %sub165.i409 = add i32 %mul164.neg.i408, %33
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %m, ptr noundef nonnull @.str.445, ptr noundef nonnull @.str.456, i64 noundef %div380564.i401, i32 noundef %sub165.i409) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sysctl_sched_child_runs_first to i32))
  %36 = load i32, ptr @sysctl_sched_child_runs_first, align 4
  %conv244 = zext i32 %36 to i64
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %m, ptr noundef nonnull @.str.459, ptr noundef nonnull @.str.460, i64 noundef %conv244) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sysctl_sched_features to i32))
  %37 = load i32, ptr @sysctl_sched_features, align 4
  %conv258 = zext i32 %37 to i64
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %m, ptr noundef nonnull @.str.459, ptr noundef nonnull @.str.464, i64 noundef %conv258) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sysctl_sched_tunable_scaling to i32))
  %38 = load i32, ptr @sysctl_sched_tunable_scaling, align 4
  %arrayidx = getelementptr [3 x ptr], ptr @sched_tunable_scaling_names, i32 0, i32 %38
  %39 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %m, ptr noundef nonnull @.str.467, ptr noundef nonnull @.str.468, i32 noundef %38, ptr noundef %40) #13
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %m, ptr noundef nonnull @.str.5) #13
  br label %do.end293

do.end59:                                         ; preds = %do.end42
  %call71 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.421, ptr noundef getelementptr inbounds (%struct.uts_namespace, ptr @init_uts_ns, i32 0, i32 0, i32 2), i32 noundef %call67, ptr noundef getelementptr inbounds (%struct.uts_namespace, ptr @init_uts_ns, i32 0, i32 0, i32 3)) #16
  %cmp.i410 = icmp slt i64 %call12, 0
  br i1 %cmp.i410, label %if.end181.i415, label %if.end375.i418

if.end181.i415:                                   ; preds = %do.end59
  %sub.i411 = sub i64 0, %call12
  %41 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %sub.i411) #17, !srcloc !854
  %42 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %sub.i411, i64 %41, i32 0) #17, !srcloc !855
  %asmresult10.i.i412 = extractvalue { i64, i32 } %42, 0
  %div161565.i413 = lshr i64 %asmresult10.i.i412, 18
  %sub183.i414 = sub nsw i64 0, %div161565.i413
  br label %nsec_high.exit420

if.end375.i418:                                   ; preds = %do.end59
  %43 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %call12) #17, !srcloc !854
  %44 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %call12, i64 %43, i32 0) #17, !srcloc !855
  %asmresult10.i566.i416 = extractvalue { i64, i32 } %44, 0
  %div380564.i417 = lshr i64 %asmresult10.i566.i416, 18
  br label %nsec_high.exit420

nsec_high.exit420:                                ; preds = %if.end375.i418, %if.end181.i415
  %retval.0.i419 = phi i64 [ %sub183.i414, %if.end181.i415 ], [ %div380564.i417, %if.end375.i418 ]
  %45 = tail call i64 @llvm.abs.i64(i64 %call12, i1 false) #13
  %conv17.i421 = trunc i64 %45 to i32
  %46 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %45) #17, !srcloc !854
  %47 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %45, i64 %46, i32 0) #17, !srcloc !855
  %asmresult10.i.i422 = extractvalue { i64, i32 } %47, 0
  %div162263.i423 = lshr i64 %asmresult10.i.i422, 18
  %conv163.i424 = trunc i64 %div162263.i423 to i32
  %mul164.neg.i425 = mul i32 %conv163.i424, -1000000
  %sub165.i426 = add i32 %mul164.neg.i425, %conv17.i421
  %call87 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.426, ptr noundef nonnull @.str.424, i64 noundef %retval.0.i419, i32 noundef %sub165.i426) #16
  %cmp.i427 = icmp slt i64 %call14, 0
  br i1 %cmp.i427, label %if.end181.i432, label %if.end375.i435

if.end181.i432:                                   ; preds = %nsec_high.exit420
  %sub.i428 = sub i64 0, %call14
  %48 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %sub.i428) #17, !srcloc !854
  %49 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %sub.i428, i64 %48, i32 0) #17, !srcloc !855
  %asmresult10.i.i429 = extractvalue { i64, i32 } %49, 0
  %div161565.i430 = lshr i64 %asmresult10.i.i429, 18
  %sub183.i431 = sub nsw i64 0, %div161565.i430
  br label %nsec_high.exit437

if.end375.i435:                                   ; preds = %nsec_high.exit420
  %50 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %call14) #17, !srcloc !854
  %51 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %call14, i64 %50, i32 0) #17, !srcloc !855
  %asmresult10.i566.i433 = extractvalue { i64, i32 } %51, 0
  %div380564.i434 = lshr i64 %asmresult10.i566.i433, 18
  br label %nsec_high.exit437

nsec_high.exit437:                                ; preds = %if.end375.i435, %if.end181.i432
  %retval.0.i436 = phi i64 [ %sub183.i431, %if.end181.i432 ], [ %div380564.i434, %if.end375.i435 ]
  %52 = tail call i64 @llvm.abs.i64(i64 %call14, i1 false) #13
  %conv17.i438 = trunc i64 %52 to i32
  %53 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %52) #17, !srcloc !854
  %54 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %52, i64 %53, i32 0) #17, !srcloc !855
  %asmresult10.i.i439 = extractvalue { i64, i32 } %54, 0
  %div162263.i440 = lshr i64 %asmresult10.i.i439, 18
  %conv163.i441 = trunc i64 %div162263.i440 to i32
  %mul164.neg.i442 = mul i32 %conv163.i441, -1000000
  %sub165.i443 = add i32 %mul164.neg.i442, %conv17.i438
  %call103 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.426, ptr noundef nonnull @.str.428, i64 noundef %retval.0.i436, i32 noundef %sub165.i443) #16
  %cmp.i444 = icmp slt i64 %call.i, 0
  br i1 %cmp.i444, label %if.end181.i449, label %if.end375.i452

if.end181.i449:                                   ; preds = %nsec_high.exit437
  %sub.i445 = sub i64 0, %call.i
  %55 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %sub.i445) #17, !srcloc !854
  %56 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %sub.i445, i64 %55, i32 0) #17, !srcloc !855
  %asmresult10.i.i446 = extractvalue { i64, i32 } %56, 0
  %div161565.i447 = lshr i64 %asmresult10.i.i446, 18
  %sub183.i448 = sub nsw i64 0, %div161565.i447
  br label %nsec_high.exit454

if.end375.i452:                                   ; preds = %nsec_high.exit437
  %57 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %call.i) #17, !srcloc !854
  %58 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %call.i, i64 %57, i32 0) #17, !srcloc !855
  %asmresult10.i566.i450 = extractvalue { i64, i32 } %58, 0
  %div380564.i451 = lshr i64 %asmresult10.i566.i450, 18
  br label %nsec_high.exit454

nsec_high.exit454:                                ; preds = %if.end375.i452, %if.end181.i449
  %retval.0.i453 = phi i64 [ %sub183.i448, %if.end181.i449 ], [ %div380564.i451, %if.end375.i452 ]
  %59 = tail call i64 @llvm.abs.i64(i64 %call.i, i1 false) #13
  %conv17.i455 = trunc i64 %59 to i32
  %60 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %59) #17, !srcloc !854
  %61 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %59, i64 %60, i32 0) #17, !srcloc !855
  %asmresult10.i.i456 = extractvalue { i64, i32 } %61, 0
  %div162263.i457 = lshr i64 %asmresult10.i.i456, 18
  %conv163.i458 = trunc i64 %div162263.i457 to i32
  %mul164.neg.i459 = mul i32 %conv163.i458, -1000000
  %sub165.i460 = add i32 %mul164.neg.i459, %conv17.i455
  %call119 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.426, ptr noundef nonnull @.str.431, i64 noundef %retval.0.i453, i32 noundef %sub165.i460) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %62 = load volatile i32, ptr @jiffies, align 128
  %conv132 = zext i32 %62 to i64
  %call133 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.437, ptr noundef nonnull @.str.435, i64 noundef %conv132) #16
  %call145 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #16
  %call157 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.443) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sysctl_sched_latency to i32))
  %63 = load i32, ptr @sysctl_sched_latency, align 4
  %conv173 = zext i32 %63 to i64
  %64 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %conv173) #17
  %65 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %conv173, i64 %64, i32 0) #17
  %asmresult10.i566.i461 = extractvalue { i64, i32 } %65, 0
  %div380564.i462 = lshr i64 %asmresult10.i566.i461, 18
  %conv163.i468 = trunc i64 %div380564.i462 to i32
  %mul164.neg.i469 = mul i32 %conv163.i468, -1000000
  %sub165.i470 = add i32 %mul164.neg.i469, %63
  %call177 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.448, ptr noundef nonnull @.str.446, i64 noundef %div380564.i462, i32 noundef %sub165.i470) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sysctl_sched_min_granularity to i32))
  %66 = load i32, ptr @sysctl_sched_min_granularity, align 4
  %conv193 = zext i32 %66 to i64
  %67 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %conv193) #17
  %68 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %conv193, i64 %67, i32 0) #17
  %asmresult10.i566.i471 = extractvalue { i64, i32 } %68, 0
  %div380564.i472 = lshr i64 %asmresult10.i566.i471, 18
  %conv163.i478 = trunc i64 %div380564.i472 to i32
  %mul164.neg.i479 = mul i32 %conv163.i478, -1000000
  %sub165.i480 = add i32 %mul164.neg.i479, %66
  %call197 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.448, ptr noundef nonnull @.str.450, i64 noundef %div380564.i472, i32 noundef %sub165.i480) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sysctl_sched_idle_min_granularity to i32))
  %69 = load i32, ptr @sysctl_sched_idle_min_granularity, align 4
  %conv213 = zext i32 %69 to i64
  %70 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %conv213) #17
  %71 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %conv213, i64 %70, i32 0) #17
  %asmresult10.i566.i481 = extractvalue { i64, i32 } %71, 0
  %div380564.i482 = lshr i64 %asmresult10.i566.i481, 18
  %conv163.i488 = trunc i64 %div380564.i482 to i32
  %mul164.neg.i489 = mul i32 %conv163.i488, -1000000
  %sub165.i490 = add i32 %mul164.neg.i489, %69
  %call217 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.448, ptr noundef nonnull @.str.453, i64 noundef %div380564.i482, i32 noundef %sub165.i490) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sysctl_sched_wakeup_granularity to i32))
  %72 = load i32, ptr @sysctl_sched_wakeup_granularity, align 4
  %conv233 = zext i32 %72 to i64
  %73 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %conv233) #17
  %74 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %conv233, i64 %73, i32 0) #17
  %asmresult10.i566.i491 = extractvalue { i64, i32 } %74, 0
  %div380564.i492 = lshr i64 %asmresult10.i566.i491, 18
  %conv163.i498 = trunc i64 %div380564.i492 to i32
  %mul164.neg.i499 = mul i32 %conv163.i498, -1000000
  %sub165.i500 = add i32 %mul164.neg.i499, %72
  %call237 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.448, ptr noundef nonnull @.str.456, i64 noundef %div380564.i492, i32 noundef %sub165.i500) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sysctl_sched_child_runs_first to i32))
  %75 = load i32, ptr @sysctl_sched_child_runs_first, align 4
  %conv250 = zext i32 %75 to i64
  %call251 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.462, ptr noundef nonnull @.str.460, i64 noundef %conv250) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sysctl_sched_features to i32))
  %76 = load i32, ptr @sysctl_sched_features, align 4
  %conv264 = zext i32 %76 to i64
  %call265 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.462, ptr noundef nonnull @.str.464, i64 noundef %conv264) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sysctl_sched_tunable_scaling to i32))
  %77 = load i32, ptr @sysctl_sched_tunable_scaling, align 4
  %arrayidx277 = getelementptr [3 x ptr], ptr @sched_tunable_scaling_names, i32 0, i32 %77
  %78 = ptrtoint ptr %arrayidx277 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %arrayidx277, align 4
  %call278 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.470, ptr noundef nonnull @.str.468, i32 noundef %77, ptr noundef %79) #16
  %call290 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #16
  br label %do.end293

do.end293:                                        ; preds = %nsec_high.exit454, %nsec_high.exit363
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @touch_all_softlockup_watchdogs() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @print_cpu(ptr noundef %m, i32 noundef %cpu) unnamed_addr #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %cpu
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %add = add i32 %1, ptrtoint (ptr @runqueues to i32)
  %2 = inttoptr i32 %add to ptr
  %tobool.not = icmp eq ptr %m, null
  br i1 %tobool.not, label %do.end5, label %if.then

if.then:                                          ; preds = %entry
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %m, ptr noundef nonnull @.str.477, i32 noundef %cpu) #13
  %nr_running = getelementptr inbounds %struct.rq, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %nr_running to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %nr_running, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %m, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.40, i32 noundef %4) #13
  %nr_switches = getelementptr inbounds %struct.rq, ptr %2, i32 0, i32 9
  %5 = ptrtoint ptr %nr_switches to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %nr_switches, align 32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %m, ptr noundef nonnull @.str.107, ptr noundef nonnull @.str.253, i64 noundef %6) #13
  %nr_uninterruptible = getelementptr inbounds %struct.rq, ptr %2, i32 0, i32 19
  %7 = ptrtoint ptr %nr_uninterruptible to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %nr_uninterruptible, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %m, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.484, i32 noundef %8) #13
  %next_balance = getelementptr inbounds %struct.rq, ptr %2, i32 0, i32 23
  %9 = ptrtoint ptr %next_balance to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %next_balance, align 4
  %conv = zext i32 %10 to i64
  %11 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %conv) #17
  %12 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %conv, i64 %11, i32 0) #17
  %asmresult10.i566.i = extractvalue { i64, i32 } %12, 0
  %div380564.i = lshr i64 %asmresult10.i566.i, 18
  %conv163.i = trunc i64 %div380564.i to i32
  %mul164.neg.i = mul i32 %conv163.i, -1000000
  %sub165.i = add i32 %mul164.neg.i, %10
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %m, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.487, i64 noundef %div380564.i, i32 noundef %sub165.i) #13
  %curr = getelementptr inbounds %struct.rq, ptr %2, i32 0, i32 20
  %13 = ptrtoint ptr %curr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %curr, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %14, i32 0, i32 68
  %15 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pid.i, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %m, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.490, i32 noundef %16) #13
  %clock = getelementptr inbounds %struct.rq, ptr %2, i32 0, i32 26
  %17 = ptrtoint ptr %clock to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %clock, align 32
  %cmp.i = icmp slt i64 %18, 0
  br i1 %cmp.i, label %if.end181.i, label %if.end375.i

if.end181.i:                                      ; preds = %if.then
  %sub.i = sub i64 0, %18
  %19 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %sub.i) #17, !srcloc !854
  %20 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %sub.i, i64 %19, i32 0) #17, !srcloc !855
  %asmresult10.i.i318 = extractvalue { i64, i32 } %20, 0
  %div161565.i = lshr i64 %asmresult10.i.i318, 18
  %sub183.i = sub nsw i64 0, %div161565.i
  br label %nsec_high.exit

if.end375.i:                                      ; preds = %if.then
  %21 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %18) #17, !srcloc !854
  %22 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %18, i64 %21, i32 0) #17, !srcloc !855
  %asmresult10.i566.i319 = extractvalue { i64, i32 } %22, 0
  %div380564.i320 = lshr i64 %asmresult10.i566.i319, 18
  br label %nsec_high.exit

nsec_high.exit:                                   ; preds = %if.end375.i, %if.end181.i
  %retval.0.i321 = phi i64 [ %sub183.i, %if.end181.i ], [ %div380564.i320, %if.end375.i ]
  %23 = tail call i64 @llvm.abs.i64(i64 %18, i1 false) #13
  %conv17.i322 = trunc i64 %23 to i32
  %24 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %23) #17, !srcloc !854
  %25 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %23, i64 %24, i32 0) #17, !srcloc !855
  %asmresult10.i.i323 = extractvalue { i64, i32 } %25, 0
  %div162263.i324 = lshr i64 %asmresult10.i.i323, 18
  %conv163.i325 = trunc i64 %div162263.i324 to i32
  %mul164.neg.i326 = mul i32 %conv163.i325, -1000000
  %sub165.i327 = add i32 %mul164.neg.i326, %conv17.i322
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %m, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.493, i64 noundef %retval.0.i321, i32 noundef %sub165.i327) #13
  %clock_task = getelementptr inbounds %struct.rq, ptr %2, i32 0, i32 28
  %26 = ptrtoint ptr %clock_task to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %clock_task, align 128
  %cmp.i328 = icmp slt i64 %27, 0
  br i1 %cmp.i328, label %if.end181.i333, label %if.end375.i336

if.end181.i333:                                   ; preds = %nsec_high.exit
  %sub.i329 = sub i64 0, %27
  %28 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %sub.i329) #17, !srcloc !854
  %29 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %sub.i329, i64 %28, i32 0) #17, !srcloc !855
  %asmresult10.i.i330 = extractvalue { i64, i32 } %29, 0
  %div161565.i331 = lshr i64 %asmresult10.i.i330, 18
  %sub183.i332 = sub nsw i64 0, %div161565.i331
  br label %nsec_high.exit338

if.end375.i336:                                   ; preds = %nsec_high.exit
  %30 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %27) #17, !srcloc !854
  %31 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %27, i64 %30, i32 0) #17, !srcloc !855
  %asmresult10.i566.i334 = extractvalue { i64, i32 } %31, 0
  %div380564.i335 = lshr i64 %asmresult10.i566.i334, 18
  br label %nsec_high.exit338

nsec_high.exit338:                                ; preds = %if.end375.i336, %if.end181.i333
  %retval.0.i337 = phi i64 [ %sub183.i332, %if.end181.i333 ], [ %div380564.i335, %if.end375.i336 ]
  %32 = tail call i64 @llvm.abs.i64(i64 %27, i1 false) #13
  %conv17.i339 = trunc i64 %32 to i32
  %33 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %32) #17, !srcloc !854
  %34 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %32, i64 %33, i32 0) #17, !srcloc !855
  %asmresult10.i.i340 = extractvalue { i64, i32 } %34, 0
  %div162263.i341 = lshr i64 %asmresult10.i.i340, 18
  %conv163.i342 = trunc i64 %div162263.i341 to i32
  %mul164.neg.i343 = mul i32 %conv163.i342, -1000000
  %sub165.i344 = add i32 %mul164.neg.i343, %conv17.i339
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %m, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.496, i64 noundef %retval.0.i337, i32 noundef %sub165.i344) #13
  %avg_idle = getelementptr inbounds %struct.rq, ptr %2, i32 0, i32 55
  %35 = ptrtoint ptr %avg_idle to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %avg_idle, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %m, ptr noundef nonnull @.str.107, ptr noundef nonnull @.str.499, i64 noundef %36) #13
  %max_idle_balance_cost = getelementptr inbounds %struct.rq, ptr %2, i32 0, i32 58
  %37 = ptrtoint ptr %max_idle_balance_cost to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %max_idle_balance_cost, align 32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %m, ptr noundef nonnull @.str.107, ptr noundef nonnull @.str.502, i64 noundef %38) #13
  br label %do.end157

do.end5:                                          ; preds = %entry
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.478, i32 noundef %cpu) #16
  %nr_running18 = getelementptr inbounds %struct.rq, ptr %2, i32 0, i32 1
  %39 = ptrtoint ptr %nr_running18 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %nr_running18, align 4
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.40, i32 noundef %40) #16
  %nr_switches34 = getelementptr inbounds %struct.rq, ptr %2, i32 0, i32 9
  %41 = ptrtoint ptr %nr_switches34 to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %nr_switches34, align 32
  %call35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.110, ptr noundef nonnull @.str.253, i64 noundef %42) #16
  %nr_uninterruptible50 = getelementptr inbounds %struct.rq, ptr %2, i32 0, i32 19
  %43 = ptrtoint ptr %nr_uninterruptible50 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %nr_uninterruptible50, align 4
  %call51 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.484, i32 noundef %44) #16
  %next_balance69 = getelementptr inbounds %struct.rq, ptr %2, i32 0, i32 23
  %45 = ptrtoint ptr %next_balance69 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %next_balance69, align 4
  %conv70 = zext i32 %46 to i64
  %47 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %conv70) #17
  %48 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %conv70, i64 %47, i32 0) #17
  %asmresult10.i566.i345 = extractvalue { i64, i32 } %48, 0
  %div380564.i346 = lshr i64 %asmresult10.i566.i345, 18
  %conv163.i352 = trunc i64 %div380564.i346 to i32
  %mul164.neg.i353 = mul i32 %conv163.i352, -1000000
  %sub165.i354 = add i32 %mul164.neg.i353, %46
  %call75 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.487, i64 noundef %div380564.i346, i32 noundef %sub165.i354) #16
  %curr88 = getelementptr inbounds %struct.rq, ptr %2, i32 0, i32 20
  %49 = ptrtoint ptr %curr88 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %curr88, align 8
  %pid.i355 = getelementptr inbounds %struct.task_struct, ptr %50, i32 0, i32 68
  %51 = ptrtoint ptr %pid.i355 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %pid.i355, align 8
  %call90 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.490, i32 noundef %52) #16
  %clock105 = getelementptr inbounds %struct.rq, ptr %2, i32 0, i32 26
  %53 = ptrtoint ptr %clock105 to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %clock105, align 32
  %cmp.i356 = icmp slt i64 %54, 0
  br i1 %cmp.i356, label %if.end181.i361, label %if.end375.i364

if.end181.i361:                                   ; preds = %do.end5
  %sub.i357 = sub i64 0, %54
  %55 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %sub.i357) #17, !srcloc !854
  %56 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %sub.i357, i64 %55, i32 0) #17, !srcloc !855
  %asmresult10.i.i358 = extractvalue { i64, i32 } %56, 0
  %div161565.i359 = lshr i64 %asmresult10.i.i358, 18
  %sub183.i360 = sub nsw i64 0, %div161565.i359
  br label %nsec_high.exit366

if.end375.i364:                                   ; preds = %do.end5
  %57 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %54) #17, !srcloc !854
  %58 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %54, i64 %57, i32 0) #17, !srcloc !855
  %asmresult10.i566.i362 = extractvalue { i64, i32 } %58, 0
  %div380564.i363 = lshr i64 %asmresult10.i566.i362, 18
  br label %nsec_high.exit366

nsec_high.exit366:                                ; preds = %if.end375.i364, %if.end181.i361
  %retval.0.i365 = phi i64 [ %sub183.i360, %if.end181.i361 ], [ %div380564.i363, %if.end375.i364 ]
  %59 = tail call i64 @llvm.abs.i64(i64 %54, i1 false) #13
  %conv17.i367 = trunc i64 %59 to i32
  %60 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %59) #17, !srcloc !854
  %61 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %59, i64 %60, i32 0) #17, !srcloc !855
  %asmresult10.i.i368 = extractvalue { i64, i32 } %61, 0
  %div162263.i369 = lshr i64 %asmresult10.i.i368, 18
  %conv163.i370 = trunc i64 %div162263.i369 to i32
  %mul164.neg.i371 = mul i32 %conv163.i370, -1000000
  %sub165.i372 = add i32 %mul164.neg.i371, %conv17.i367
  %call109 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.493, i64 noundef %retval.0.i365, i32 noundef %sub165.i372) #16
  %clock_task124 = getelementptr inbounds %struct.rq, ptr %2, i32 0, i32 28
  %62 = ptrtoint ptr %clock_task124 to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %clock_task124, align 128
  %cmp.i373 = icmp slt i64 %63, 0
  br i1 %cmp.i373, label %if.end181.i378, label %if.end375.i381

if.end181.i378:                                   ; preds = %nsec_high.exit366
  %sub.i374 = sub i64 0, %63
  %64 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %sub.i374) #17, !srcloc !854
  %65 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %sub.i374, i64 %64, i32 0) #17, !srcloc !855
  %asmresult10.i.i375 = extractvalue { i64, i32 } %65, 0
  %div161565.i376 = lshr i64 %asmresult10.i.i375, 18
  %sub183.i377 = sub nsw i64 0, %div161565.i376
  br label %nsec_high.exit383

if.end375.i381:                                   ; preds = %nsec_high.exit366
  %66 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %63) #17, !srcloc !854
  %67 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %63, i64 %66, i32 0) #17, !srcloc !855
  %asmresult10.i566.i379 = extractvalue { i64, i32 } %67, 0
  %div380564.i380 = lshr i64 %asmresult10.i566.i379, 18
  br label %nsec_high.exit383

nsec_high.exit383:                                ; preds = %if.end375.i381, %if.end181.i378
  %retval.0.i382 = phi i64 [ %sub183.i377, %if.end181.i378 ], [ %div380564.i380, %if.end375.i381 ]
  %68 = tail call i64 @llvm.abs.i64(i64 %63, i1 false) #13
  %conv17.i384 = trunc i64 %68 to i32
  %69 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %68) #17, !srcloc !854
  %70 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %68, i64 %69, i32 0) #17, !srcloc !855
  %asmresult10.i.i385 = extractvalue { i64, i32 } %70, 0
  %div162263.i386 = lshr i64 %asmresult10.i.i385, 18
  %conv163.i387 = trunc i64 %div162263.i386 to i32
  %mul164.neg.i388 = mul i32 %conv163.i387, -1000000
  %sub165.i389 = add i32 %mul164.neg.i388, %conv17.i384
  %call128 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.496, i64 noundef %retval.0.i382, i32 noundef %sub165.i389) #16
  %avg_idle140 = getelementptr inbounds %struct.rq, ptr %2, i32 0, i32 55
  %71 = ptrtoint ptr %avg_idle140 to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %avg_idle140, align 8
  %call141 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.110, ptr noundef nonnull @.str.499, i64 noundef %72) #16
  %max_idle_balance_cost153 = getelementptr inbounds %struct.rq, ptr %2, i32 0, i32 58
  %73 = ptrtoint ptr %max_idle_balance_cost153 to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %max_idle_balance_cost153, align 32
  %call154 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.110, ptr noundef nonnull @.str.502, i64 noundef %74) #16
  br label %do.end157

do.end157:                                        ; preds = %nsec_high.exit383, %nsec_high.exit338
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @sched_schedstats, ptr blockaddress(@print_cpu, %do.body164)) #13
          to label %if.end229 [label %do.body164], !srcloc !860

do.body164:                                       ; preds = %do.end157
  %yld_count172 = getelementptr inbounds %struct.rq, ptr %2, i32 0, i32 70
  %75 = ptrtoint ptr %yld_count172 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %yld_count172, align 64
  br i1 %tobool.not, label %do.end170, label %if.then166

if.then166:                                       ; preds = %do.body164
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %m, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.505, i32 noundef %76) #13
  %sched_count = getelementptr inbounds %struct.rq, ptr %2, i32 0, i32 71
  %77 = ptrtoint ptr %sched_count to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %sched_count, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %m, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.508, i32 noundef %78) #13
  %sched_goidle = getelementptr inbounds %struct.rq, ptr %2, i32 0, i32 72
  %79 = ptrtoint ptr %sched_goidle to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %sched_goidle, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %m, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.511, i32 noundef %80) #13
  %ttwu_count = getelementptr inbounds %struct.rq, ptr %2, i32 0, i32 73
  %81 = ptrtoint ptr %ttwu_count to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %ttwu_count, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %m, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.514, i32 noundef %82) #13
  %ttwu_local = getelementptr inbounds %struct.rq, ptr %2, i32 0, i32 74
  %83 = ptrtoint ptr %ttwu_local to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %ttwu_local, align 16
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %m, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.517, i32 noundef %84) #13
  tail call void @print_cfs_stats(ptr noundef nonnull %m, i32 noundef %cpu) #13
  tail call void @print_rt_stats(ptr noundef nonnull %m, i32 noundef %cpu) #13
  tail call void @print_dl_stats(ptr noundef nonnull %m, i32 noundef %cpu) #13
  tail call fastcc void @print_rq(ptr noundef nonnull %m, ptr noundef %2, i32 noundef %cpu)
  br label %if.then232

do.end170:                                        ; preds = %do.body164
  %call173 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.505, i32 noundef %76) #16
  %sched_count185 = getelementptr inbounds %struct.rq, ptr %2, i32 0, i32 71
  %85 = ptrtoint ptr %sched_count185 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %sched_count185, align 4
  %call186 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.508, i32 noundef %86) #16
  %sched_goidle198 = getelementptr inbounds %struct.rq, ptr %2, i32 0, i32 72
  %87 = ptrtoint ptr %sched_goidle198 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %sched_goidle198, align 8
  %call199 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.511, i32 noundef %88) #16
  %ttwu_count211 = getelementptr inbounds %struct.rq, ptr %2, i32 0, i32 73
  %89 = ptrtoint ptr %ttwu_count211 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %ttwu_count211, align 4
  %call212 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.514, i32 noundef %90) #16
  %ttwu_local224 = getelementptr inbounds %struct.rq, ptr %2, i32 0, i32 74
  %91 = ptrtoint ptr %ttwu_local224 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %ttwu_local224, align 16
  %call225 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.517, i32 noundef %92) #16
  tail call void @print_cfs_stats(ptr noundef null, i32 noundef %cpu) #13
  tail call void @print_rt_stats(ptr noundef null, i32 noundef %cpu) #13
  tail call void @print_dl_stats(ptr noundef null, i32 noundef %cpu) #13
  tail call fastcc void @print_rq(ptr noundef null, ptr noundef %2, i32 noundef %cpu)
  br label %do.end236

if.end229:                                        ; preds = %do.end157
  tail call void @print_cfs_stats(ptr noundef %m, i32 noundef %cpu) #13
  tail call void @print_rt_stats(ptr noundef %m, i32 noundef %cpu) #13
  tail call void @print_dl_stats(ptr noundef %m, i32 noundef %cpu) #13
  tail call fastcc void @print_rq(ptr noundef %m, ptr noundef %2, i32 noundef %cpu)
  br i1 %tobool.not, label %do.end236, label %if.then232

if.then232:                                       ; preds = %if.end229, %if.then166
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %m, ptr noundef nonnull @.str.5) #13
  br label %do.end241

do.end236:                                        ; preds = %if.end229, %do.end170
  %call238 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #16
  br label %do.end241

do.end241:                                        ; preds = %do.end236, %if.then232
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @proc_sched_show_task(ptr noundef %p, ptr noundef %ns, ptr noundef %m) local_unnamed_addr #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %m, null
  %comm3 = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 101
  %call.i1405 = tail call i32 @__task_pid_nr_ns(ptr noundef %p, i32 noundef 0, ptr noundef %ns) #13
  %signal.i1406 = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 111
  %0 = ptrtoint ptr %signal.i1406 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %signal.i1406, align 16
  %nr_threads.i1407 = getelementptr inbounds %struct.signal_struct, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %nr_threads.i1407 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nr_threads.i1407, align 8
  br i1 %tobool.not, label %do.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %m, ptr noundef nonnull @.str.137, ptr noundef %comm3, i32 noundef %call.i1405, i32 noundef %3) #13
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %m, ptr noundef nonnull @.str.140) #13
  %exec_start = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 18, i32 4
  %4 = ptrtoint ptr %exec_start to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %exec_start, align 32
  %cmp.i = icmp slt i64 %5, 0
  br i1 %cmp.i, label %if.end181.i, label %if.end375.i

if.end181.i:                                      ; preds = %if.then
  %sub.i = sub i64 0, %5
  %6 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %sub.i) #17, !srcloc !854
  %7 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %sub.i, i64 %6, i32 0) #17, !srcloc !855
  %asmresult10.i.i = extractvalue { i64, i32 } %7, 0
  %div161565.i = lshr i64 %asmresult10.i.i, 18
  %sub183.i = sub nsw i64 0, %div161565.i
  br label %nsec_high.exit

if.end375.i:                                      ; preds = %if.then
  %8 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %5) #17, !srcloc !854
  %9 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %5, i64 %8, i32 0) #17, !srcloc !855
  %asmresult10.i566.i = extractvalue { i64, i32 } %9, 0
  %div380564.i = lshr i64 %asmresult10.i566.i, 18
  br label %nsec_high.exit

nsec_high.exit:                                   ; preds = %if.end375.i, %if.end181.i
  %retval.0.i1369 = phi i64 [ %sub183.i, %if.end181.i ], [ %div380564.i, %if.end375.i ]
  %10 = tail call i64 @llvm.abs.i64(i64 %5, i1 false) #13
  %conv17.i = trunc i64 %10 to i32
  %11 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %10) #17, !srcloc !854
  %12 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %10, i64 %11, i32 0) #17, !srcloc !855
  %asmresult10.i.i1370 = extractvalue { i64, i32 } %12, 0
  %div162263.i = lshr i64 %asmresult10.i.i1370, 18
  %conv163.i = trunc i64 %div162263.i to i32
  %mul164.neg.i = mul i32 %conv163.i, -1000000
  %sub165.i = add i32 %mul164.neg.i, %conv17.i
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %m, ptr noundef nonnull @.str.144, ptr noundef nonnull @.str.145, i64 noundef %retval.0.i1369, i32 noundef %sub165.i) #13
  %vruntime = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 18, i32 6
  %13 = ptrtoint ptr %vruntime to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %vruntime, align 16
  %cmp.i1371 = icmp slt i64 %14, 0
  br i1 %cmp.i1371, label %if.end181.i1376, label %if.end375.i1379

if.end181.i1376:                                  ; preds = %nsec_high.exit
  %sub.i1372 = sub i64 0, %14
  %15 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %sub.i1372) #17, !srcloc !854
  %16 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %sub.i1372, i64 %15, i32 0) #17, !srcloc !855
  %asmresult10.i.i1373 = extractvalue { i64, i32 } %16, 0
  %div161565.i1374 = lshr i64 %asmresult10.i.i1373, 18
  %sub183.i1375 = sub nsw i64 0, %div161565.i1374
  br label %nsec_high.exit1381

if.end375.i1379:                                  ; preds = %nsec_high.exit
  %17 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %14) #17, !srcloc !854
  %18 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %14, i64 %17, i32 0) #17, !srcloc !855
  %asmresult10.i566.i1377 = extractvalue { i64, i32 } %18, 0
  %div380564.i1378 = lshr i64 %asmresult10.i566.i1377, 18
  br label %nsec_high.exit1381

nsec_high.exit1381:                               ; preds = %if.end375.i1379, %if.end181.i1376
  %retval.0.i1380 = phi i64 [ %sub183.i1375, %if.end181.i1376 ], [ %div380564.i1378, %if.end375.i1379 ]
  %19 = tail call i64 @llvm.abs.i64(i64 %14, i1 false) #13
  %conv17.i1382 = trunc i64 %19 to i32
  %20 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %19) #17, !srcloc !854
  %21 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %19, i64 %20, i32 0) #17, !srcloc !855
  %asmresult10.i.i1383 = extractvalue { i64, i32 } %21, 0
  %div162263.i1384 = lshr i64 %asmresult10.i.i1383, 18
  %conv163.i1385 = trunc i64 %div162263.i1384 to i32
  %mul164.neg.i1386 = mul i32 %conv163.i1385, -1000000
  %sub165.i1387 = add i32 %mul164.neg.i1386, %conv17.i1382
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %m, ptr noundef nonnull @.str.144, ptr noundef nonnull @.str.149, i64 noundef %retval.0.i1380, i32 noundef %sub165.i1387) #13
  %sum_exec_runtime = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 18, i32 5
  %22 = ptrtoint ptr %sum_exec_runtime to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %sum_exec_runtime, align 8
  %cmp.i1388 = icmp slt i64 %23, 0
  br i1 %cmp.i1388, label %if.end181.i1393, label %if.end375.i1396

if.end181.i1393:                                  ; preds = %nsec_high.exit1381
  %sub.i1389 = sub i64 0, %23
  %24 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %sub.i1389) #17, !srcloc !854
  %25 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %sub.i1389, i64 %24, i32 0) #17, !srcloc !855
  %asmresult10.i.i1390 = extractvalue { i64, i32 } %25, 0
  %div161565.i1391 = lshr i64 %asmresult10.i.i1390, 18
  %sub183.i1392 = sub nsw i64 0, %div161565.i1391
  br label %if.then92

if.end375.i1396:                                  ; preds = %nsec_high.exit1381
  %26 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %23) #17, !srcloc !854
  %27 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %23, i64 %26, i32 0) #17, !srcloc !855
  %asmresult10.i566.i1394 = extractvalue { i64, i32 } %27, 0
  %div380564.i1395 = lshr i64 %asmresult10.i566.i1394, 18
  br label %if.then92

do.end:                                           ; preds = %entry
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.138, ptr noundef %comm3, i32 noundef %call.i1405, i32 noundef %3) #16
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.142) #16
  %exec_start35 = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 18, i32 4
  %28 = ptrtoint ptr %exec_start35 to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %exec_start35, align 32
  %cmp.i1408 = icmp slt i64 %29, 0
  br i1 %cmp.i1408, label %if.end181.i1413, label %if.end375.i1416

if.end181.i1413:                                  ; preds = %do.end
  %sub.i1409 = sub i64 0, %29
  %30 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %sub.i1409) #17, !srcloc !854
  %31 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %sub.i1409, i64 %30, i32 0) #17, !srcloc !855
  %asmresult10.i.i1410 = extractvalue { i64, i32 } %31, 0
  %div161565.i1411 = lshr i64 %asmresult10.i.i1410, 18
  %sub183.i1412 = sub nsw i64 0, %div161565.i1411
  br label %nsec_high.exit1418

if.end375.i1416:                                  ; preds = %do.end
  %32 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %29) #17, !srcloc !854
  %33 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %29, i64 %32, i32 0) #17, !srcloc !855
  %asmresult10.i566.i1414 = extractvalue { i64, i32 } %33, 0
  %div380564.i1415 = lshr i64 %asmresult10.i566.i1414, 18
  br label %nsec_high.exit1418

nsec_high.exit1418:                               ; preds = %if.end375.i1416, %if.end181.i1413
  %retval.0.i1417 = phi i64 [ %sub183.i1412, %if.end181.i1413 ], [ %div380564.i1415, %if.end375.i1416 ]
  %34 = tail call i64 @llvm.abs.i64(i64 %29, i1 false) #13
  %conv17.i1419 = trunc i64 %34 to i32
  %35 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %34) #17, !srcloc !854
  %36 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %34, i64 %35, i32 0) #17, !srcloc !855
  %asmresult10.i.i1420 = extractvalue { i64, i32 } %36, 0
  %div162263.i1421 = lshr i64 %asmresult10.i.i1420, 18
  %conv163.i1422 = trunc i64 %div162263.i1421 to i32
  %mul164.neg.i1423 = mul i32 %conv163.i1422, -1000000
  %sub165.i1424 = add i32 %mul164.neg.i1423, %conv17.i1419
  %call40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.147, ptr noundef nonnull @.str.145, i64 noundef %retval.0.i1417, i32 noundef %sub165.i1424) #16
  %vruntime58 = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 18, i32 6
  %37 = ptrtoint ptr %vruntime58 to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %vruntime58, align 16
  %cmp.i1425 = icmp slt i64 %38, 0
  br i1 %cmp.i1425, label %if.end181.i1430, label %if.end375.i1433

if.end181.i1430:                                  ; preds = %nsec_high.exit1418
  %sub.i1426 = sub i64 0, %38
  %39 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %sub.i1426) #17, !srcloc !854
  %40 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %sub.i1426, i64 %39, i32 0) #17, !srcloc !855
  %asmresult10.i.i1427 = extractvalue { i64, i32 } %40, 0
  %div161565.i1428 = lshr i64 %asmresult10.i.i1427, 18
  %sub183.i1429 = sub nsw i64 0, %div161565.i1428
  br label %nsec_high.exit1435

if.end375.i1433:                                  ; preds = %nsec_high.exit1418
  %41 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %38) #17, !srcloc !854
  %42 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %38, i64 %41, i32 0) #17, !srcloc !855
  %asmresult10.i566.i1431 = extractvalue { i64, i32 } %42, 0
  %div380564.i1432 = lshr i64 %asmresult10.i566.i1431, 18
  br label %nsec_high.exit1435

nsec_high.exit1435:                               ; preds = %if.end375.i1433, %if.end181.i1430
  %retval.0.i1434 = phi i64 [ %sub183.i1429, %if.end181.i1430 ], [ %div380564.i1432, %if.end375.i1433 ]
  %43 = tail call i64 @llvm.abs.i64(i64 %38, i1 false) #13
  %conv17.i1436 = trunc i64 %43 to i32
  %44 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %43) #17, !srcloc !854
  %45 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %43, i64 %44, i32 0) #17, !srcloc !855
  %asmresult10.i.i1437 = extractvalue { i64, i32 } %45, 0
  %div162263.i1438 = lshr i64 %asmresult10.i.i1437, 18
  %conv163.i1439 = trunc i64 %div162263.i1438 to i32
  %mul164.neg.i1440 = mul i32 %conv163.i1439, -1000000
  %sub165.i1441 = add i32 %mul164.neg.i1440, %conv17.i1436
  %call63 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.147, ptr noundef nonnull @.str.149, i64 noundef %retval.0.i1434, i32 noundef %sub165.i1441) #16
  %sum_exec_runtime81 = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 18, i32 5
  %46 = ptrtoint ptr %sum_exec_runtime81 to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %sum_exec_runtime81, align 8
  %cmp.i1442 = icmp slt i64 %47, 0
  br i1 %cmp.i1442, label %if.end181.i1447, label %if.end375.i1450

if.end181.i1447:                                  ; preds = %nsec_high.exit1435
  %sub.i1443 = sub i64 0, %47
  %48 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %sub.i1443) #17, !srcloc !854
  %49 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %sub.i1443, i64 %48, i32 0) #17, !srcloc !855
  %asmresult10.i.i1444 = extractvalue { i64, i32 } %49, 0
  %div161565.i1445 = lshr i64 %asmresult10.i.i1444, 18
  %sub183.i1446 = sub nsw i64 0, %div161565.i1445
  br label %do.end97

if.end375.i1450:                                  ; preds = %nsec_high.exit1435
  %50 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %47) #17, !srcloc !854
  %51 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %47, i64 %50, i32 0) #17, !srcloc !855
  %asmresult10.i566.i1448 = extractvalue { i64, i32 } %51, 0
  %div380564.i1449 = lshr i64 %asmresult10.i566.i1448, 18
  br label %do.end97

if.then92:                                        ; preds = %if.end375.i1396, %if.end181.i1393
  %retval.0.i1397 = phi i64 [ %sub183.i1392, %if.end181.i1393 ], [ %div380564.i1395, %if.end375.i1396 ]
  %52 = tail call i64 @llvm.abs.i64(i64 %23, i1 false) #13
  %conv17.i1399 = trunc i64 %52 to i32
  %53 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %52) #17, !srcloc !854
  %54 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %52, i64 %53, i32 0) #17, !srcloc !855
  %asmresult10.i.i1400 = extractvalue { i64, i32 } %54, 0
  %div162263.i1401 = lshr i64 %asmresult10.i.i1400, 18
  %conv163.i1402 = trunc i64 %div162263.i1401 to i32
  %mul164.neg.i1403 = mul i32 %conv163.i1402, -1000000
  %sub165.i1404 = add i32 %mul164.neg.i1403, %conv17.i1399
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %m, ptr noundef nonnull @.str.144, ptr noundef nonnull @.str.152, i64 noundef %retval.0.i1397, i32 noundef %sub165.i1404) #13
  %nvcsw = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 90
  %55 = ptrtoint ptr %nvcsw to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %nvcsw, align 16
  %nivcsw = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 91
  %57 = ptrtoint ptr %nivcsw to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %nivcsw, align 4
  %add = add i32 %58, %56
  %nr_migrations = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 18, i32 8
  %59 = ptrtoint ptr %nr_migrations to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %nr_migrations, align 64
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %m, ptr noundef nonnull @.str.155, ptr noundef nonnull @.str.156, i64 noundef %60) #13
  br label %do.end104

do.end97:                                         ; preds = %if.end375.i1450, %if.end181.i1447
  %retval.0.i1451 = phi i64 [ %sub183.i1446, %if.end181.i1447 ], [ %div380564.i1449, %if.end375.i1450 ]
  %61 = tail call i64 @llvm.abs.i64(i64 %47, i1 false) #13
  %conv17.i1453 = trunc i64 %61 to i32
  %62 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %61) #17, !srcloc !854
  %63 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %61, i64 %62, i32 0) #17, !srcloc !855
  %asmresult10.i.i1454 = extractvalue { i64, i32 } %63, 0
  %div162263.i1455 = lshr i64 %asmresult10.i.i1454, 18
  %conv163.i1456 = trunc i64 %div162263.i1455 to i32
  %mul164.neg.i1457 = mul i32 %conv163.i1456, -1000000
  %sub165.i1458 = add i32 %mul164.neg.i1457, %conv17.i1453
  %call86 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.147, ptr noundef nonnull @.str.152, i64 noundef %retval.0.i1451, i32 noundef %sub165.i1458) #16
  %nvcsw1972 = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 90
  %64 = ptrtoint ptr %nvcsw1972 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %nvcsw1972, align 16
  %nivcsw1973 = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 91
  %66 = ptrtoint ptr %nivcsw1973 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %nivcsw1973, align 4
  %add1974 = add i32 %67, %65
  %nr_migrations100 = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 18, i32 8
  %68 = ptrtoint ptr %nr_migrations100 to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %nr_migrations100, align 64
  %call101 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.158, ptr noundef nonnull @.str.156, i64 noundef %69) #16
  br label %do.end104

do.end104:                                        ; preds = %do.end97, %if.then92
  %add1981 = phi i32 [ %add1974, %do.end97 ], [ %add, %if.then92 ]
  %nivcsw1978 = phi ptr [ %nivcsw1973, %do.end97 ], [ %nivcsw, %if.then92 ]
  %nvcsw1975 = phi ptr [ %nvcsw1972, %do.end97 ], [ %nvcsw, %if.then92 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @sched_schedstats, ptr blockaddress(@proc_sched_show_task, %if.then110)) #13
          to label %do.body700 [label %if.then110], !srcloc !860

if.then110:                                       ; preds = %do.end104
  %sum_sleep_runtime124 = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 29, i32 8
  %70 = ptrtoint ptr %sum_sleep_runtime124 to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %sum_sleep_runtime124, align 64
  %cmp.i1663 = icmp slt i64 %71, 0
  br i1 %tobool.not, label %do.end121, label %if.then113

if.then113:                                       ; preds = %if.then110
  br i1 %cmp.i1663, label %if.end181.i1464, label %if.end375.i1467

if.end181.i1464:                                  ; preds = %if.then113
  %sub.i1460 = sub i64 0, %71
  %72 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %sub.i1460) #17, !srcloc !854
  %73 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %sub.i1460, i64 %72, i32 0) #17, !srcloc !855
  %asmresult10.i.i1461 = extractvalue { i64, i32 } %73, 0
  %div161565.i1462 = lshr i64 %asmresult10.i.i1461, 18
  %sub183.i1463 = sub nsw i64 0, %div161565.i1462
  br label %nsec_high.exit1469

if.end375.i1467:                                  ; preds = %if.then113
  %74 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %71) #17, !srcloc !854
  %75 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %71, i64 %74, i32 0) #17, !srcloc !855
  %asmresult10.i566.i1465 = extractvalue { i64, i32 } %75, 0
  %div380564.i1466 = lshr i64 %asmresult10.i566.i1465, 18
  br label %nsec_high.exit1469

nsec_high.exit1469:                               ; preds = %if.end375.i1467, %if.end181.i1464
  %retval.0.i1468 = phi i64 [ %sub183.i1463, %if.end181.i1464 ], [ %div380564.i1466, %if.end375.i1467 ]
  %76 = tail call i64 @llvm.abs.i64(i64 %71, i1 false) #13
  %conv17.i1470 = trunc i64 %76 to i32
  %77 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %76) #17, !srcloc !854
  %78 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %76, i64 %77, i32 0) #17, !srcloc !855
  %asmresult10.i.i1471 = extractvalue { i64, i32 } %78, 0
  %div162263.i1472 = lshr i64 %asmresult10.i.i1471, 18
  %conv163.i1473 = trunc i64 %div162263.i1472 to i32
  %mul164.neg.i1474 = mul i32 %conv163.i1473, -1000000
  %sub165.i1475 = add i32 %mul164.neg.i1474, %conv17.i1470
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %m, ptr noundef nonnull @.str.144, ptr noundef nonnull @.str.160, i64 noundef %retval.0.i1468, i32 noundef %sub165.i1475) #13
  %sum_block_runtime = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 29, i32 11
  %79 = ptrtoint ptr %sum_block_runtime to i32
  call void @__asan_load8_noabort(i32 %79)
  %80 = load i64, ptr %sum_block_runtime, align 8
  %cmp.i1476 = icmp slt i64 %80, 0
  br i1 %cmp.i1476, label %if.end181.i1481, label %if.end375.i1484

if.end181.i1481:                                  ; preds = %nsec_high.exit1469
  %sub.i1477 = sub i64 0, %80
  %81 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %sub.i1477) #17, !srcloc !854
  %82 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %sub.i1477, i64 %81, i32 0) #17, !srcloc !855
  %asmresult10.i.i1478 = extractvalue { i64, i32 } %82, 0
  %div161565.i1479 = lshr i64 %asmresult10.i.i1478, 18
  %sub183.i1480 = sub nsw i64 0, %div161565.i1479
  br label %nsec_high.exit1486

if.end375.i1484:                                  ; preds = %nsec_high.exit1469
  %83 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %80) #17, !srcloc !854
  %84 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %80, i64 %83, i32 0) #17, !srcloc !855
  %asmresult10.i566.i1482 = extractvalue { i64, i32 } %84, 0
  %div380564.i1483 = lshr i64 %asmresult10.i566.i1482, 18
  br label %nsec_high.exit1486

nsec_high.exit1486:                               ; preds = %if.end375.i1484, %if.end181.i1481
  %retval.0.i1485 = phi i64 [ %sub183.i1480, %if.end181.i1481 ], [ %div380564.i1483, %if.end375.i1484 ]
  %85 = tail call i64 @llvm.abs.i64(i64 %80, i1 false) #13
  %conv17.i1487 = trunc i64 %85 to i32
  %86 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %85) #17, !srcloc !854
  %87 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %85, i64 %86, i32 0) #17, !srcloc !855
  %asmresult10.i.i1488 = extractvalue { i64, i32 } %87, 0
  %div162263.i1489 = lshr i64 %asmresult10.i.i1488, 18
  %conv163.i1490 = trunc i64 %div162263.i1489 to i32
  %mul164.neg.i1491 = mul i32 %conv163.i1490, -1000000
  %sub165.i1492 = add i32 %mul164.neg.i1491, %conv17.i1487
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %m, ptr noundef nonnull @.str.144, ptr noundef nonnull @.str.163, i64 noundef %retval.0.i1485, i32 noundef %sub165.i1492) #13
  %stats159 = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 29
  %88 = ptrtoint ptr %stats159 to i32
  call void @__asan_load8_noabort(i32 %88)
  %89 = load i64, ptr %stats159, align 128
  %cmp.i1493 = icmp slt i64 %89, 0
  br i1 %cmp.i1493, label %if.end181.i1498, label %if.end375.i1501

if.end181.i1498:                                  ; preds = %nsec_high.exit1486
  %sub.i1494 = sub i64 0, %89
  %90 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %sub.i1494) #17, !srcloc !854
  %91 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %sub.i1494, i64 %90, i32 0) #17, !srcloc !855
  %asmresult10.i.i1495 = extractvalue { i64, i32 } %91, 0
  %div161565.i1496 = lshr i64 %asmresult10.i.i1495, 18
  %sub183.i1497 = sub nsw i64 0, %div161565.i1496
  br label %nsec_high.exit1503

if.end375.i1501:                                  ; preds = %nsec_high.exit1486
  %92 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %89) #17, !srcloc !854
  %93 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %89, i64 %92, i32 0) #17, !srcloc !855
  %asmresult10.i566.i1499 = extractvalue { i64, i32 } %93, 0
  %div380564.i1500 = lshr i64 %asmresult10.i566.i1499, 18
  br label %nsec_high.exit1503

nsec_high.exit1503:                               ; preds = %if.end375.i1501, %if.end181.i1498
  %retval.0.i1502 = phi i64 [ %sub183.i1497, %if.end181.i1498 ], [ %div380564.i1500, %if.end375.i1501 ]
  %94 = tail call i64 @llvm.abs.i64(i64 %89, i1 false) #13
  %conv17.i1504 = trunc i64 %94 to i32
  %95 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %94) #17, !srcloc !854
  %96 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %94, i64 %95, i32 0) #17, !srcloc !855
  %asmresult10.i.i1505 = extractvalue { i64, i32 } %96, 0
  %div162263.i1506 = lshr i64 %asmresult10.i.i1505, 18
  %conv163.i1507 = trunc i64 %div162263.i1506 to i32
  %mul164.neg.i1508 = mul i32 %conv163.i1507, -1000000
  %sub165.i1509 = add i32 %mul164.neg.i1508, %conv17.i1504
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %m, ptr noundef nonnull @.str.144, ptr noundef nonnull @.str.166, i64 noundef %retval.0.i1502, i32 noundef %sub165.i1509) #13
  %sleep_start = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 29, i32 6
  %97 = ptrtoint ptr %sleep_start to i32
  call void @__asan_load8_noabort(i32 %97)
  %98 = load i64, ptr %sleep_start, align 16
  %cmp.i1510 = icmp slt i64 %98, 0
  br i1 %cmp.i1510, label %if.end181.i1515, label %if.end375.i1518

if.end181.i1515:                                  ; preds = %nsec_high.exit1503
  %sub.i1511 = sub i64 0, %98
  %99 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %sub.i1511) #17, !srcloc !854
  %100 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %sub.i1511, i64 %99, i32 0) #17, !srcloc !855
  %asmresult10.i.i1512 = extractvalue { i64, i32 } %100, 0
  %div161565.i1513 = lshr i64 %asmresult10.i.i1512, 18
  %sub183.i1514 = sub nsw i64 0, %div161565.i1513
  br label %nsec_high.exit1520

if.end375.i1518:                                  ; preds = %nsec_high.exit1503
  %101 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %98) #17, !srcloc !854
  %102 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %98, i64 %101, i32 0) #17, !srcloc !855
  %asmresult10.i566.i1516 = extractvalue { i64, i32 } %102, 0
  %div380564.i1517 = lshr i64 %asmresult10.i566.i1516, 18
  br label %nsec_high.exit1520

nsec_high.exit1520:                               ; preds = %if.end375.i1518, %if.end181.i1515
  %retval.0.i1519 = phi i64 [ %sub183.i1514, %if.end181.i1515 ], [ %div380564.i1517, %if.end375.i1518 ]
  %103 = tail call i64 @llvm.abs.i64(i64 %98, i1 false) #13
  %conv17.i1521 = trunc i64 %103 to i32
  %104 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %103) #17, !srcloc !854
  %105 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %103, i64 %104, i32 0) #17, !srcloc !855
  %asmresult10.i.i1522 = extractvalue { i64, i32 } %105, 0
  %div162263.i1523 = lshr i64 %asmresult10.i.i1522, 18
  %conv163.i1524 = trunc i64 %div162263.i1523 to i32
  %mul164.neg.i1525 = mul i32 %conv163.i1524, -1000000
  %sub165.i1526 = add i32 %mul164.neg.i1525, %conv17.i1521
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %m, ptr noundef nonnull @.str.144, ptr noundef nonnull @.str.169, i64 noundef %retval.0.i1519, i32 noundef %sub165.i1526) #13
  %block_start = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 29, i32 9
  %106 = ptrtoint ptr %block_start to i32
  call void @__asan_load8_noabort(i32 %106)
  %107 = load i64, ptr %block_start, align 8
  %cmp.i1527 = icmp slt i64 %107, 0
  br i1 %cmp.i1527, label %if.end181.i1532, label %if.end375.i1535

if.end181.i1532:                                  ; preds = %nsec_high.exit1520
  %sub.i1528 = sub i64 0, %107
  %108 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %sub.i1528) #17, !srcloc !854
  %109 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %sub.i1528, i64 %108, i32 0) #17, !srcloc !855
  %asmresult10.i.i1529 = extractvalue { i64, i32 } %109, 0
  %div161565.i1530 = lshr i64 %asmresult10.i.i1529, 18
  %sub183.i1531 = sub nsw i64 0, %div161565.i1530
  br label %nsec_high.exit1537

if.end375.i1535:                                  ; preds = %nsec_high.exit1520
  %110 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %107) #17, !srcloc !854
  %111 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %107, i64 %110, i32 0) #17, !srcloc !855
  %asmresult10.i566.i1533 = extractvalue { i64, i32 } %111, 0
  %div380564.i1534 = lshr i64 %asmresult10.i566.i1533, 18
  br label %nsec_high.exit1537

nsec_high.exit1537:                               ; preds = %if.end375.i1535, %if.end181.i1532
  %retval.0.i1536 = phi i64 [ %sub183.i1531, %if.end181.i1532 ], [ %div380564.i1534, %if.end375.i1535 ]
  %112 = tail call i64 @llvm.abs.i64(i64 %107, i1 false) #13
  %conv17.i1538 = trunc i64 %112 to i32
  %113 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %112) #17, !srcloc !854
  %114 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %112, i64 %113, i32 0) #17, !srcloc !855
  %asmresult10.i.i1539 = extractvalue { i64, i32 } %114, 0
  %div162263.i1540 = lshr i64 %asmresult10.i.i1539, 18
  %conv163.i1541 = trunc i64 %div162263.i1540 to i32
  %mul164.neg.i1542 = mul i32 %conv163.i1541, -1000000
  %sub165.i1543 = add i32 %mul164.neg.i1542, %conv17.i1538
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %m, ptr noundef nonnull @.str.144, ptr noundef nonnull @.str.172, i64 noundef %retval.0.i1536, i32 noundef %sub165.i1543) #13
  %sleep_max = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 29, i32 7
  %115 = ptrtoint ptr %sleep_max to i32
  call void @__asan_load8_noabort(i32 %115)
  %116 = load i64, ptr %sleep_max, align 8
  %cmp.i1544 = icmp slt i64 %116, 0
  br i1 %cmp.i1544, label %if.end181.i1549, label %if.end375.i1552

if.end181.i1549:                                  ; preds = %nsec_high.exit1537
  %sub.i1545 = sub i64 0, %116
  %117 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %sub.i1545) #17, !srcloc !854
  %118 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %sub.i1545, i64 %117, i32 0) #17, !srcloc !855
  %asmresult10.i.i1546 = extractvalue { i64, i32 } %118, 0
  %div161565.i1547 = lshr i64 %asmresult10.i.i1546, 18
  %sub183.i1548 = sub nsw i64 0, %div161565.i1547
  br label %nsec_high.exit1554

if.end375.i1552:                                  ; preds = %nsec_high.exit1537
  %119 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %116) #17, !srcloc !854
  %120 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %116, i64 %119, i32 0) #17, !srcloc !855
  %asmresult10.i566.i1550 = extractvalue { i64, i32 } %120, 0
  %div380564.i1551 = lshr i64 %asmresult10.i566.i1550, 18
  br label %nsec_high.exit1554

nsec_high.exit1554:                               ; preds = %if.end375.i1552, %if.end181.i1549
  %retval.0.i1553 = phi i64 [ %sub183.i1548, %if.end181.i1549 ], [ %div380564.i1551, %if.end375.i1552 ]
  %121 = tail call i64 @llvm.abs.i64(i64 %116, i1 false) #13
  %conv17.i1555 = trunc i64 %121 to i32
  %122 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %121) #17, !srcloc !854
  %123 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %121, i64 %122, i32 0) #17, !srcloc !855
  %asmresult10.i.i1556 = extractvalue { i64, i32 } %123, 0
  %div162263.i1557 = lshr i64 %asmresult10.i.i1556, 18
  %conv163.i1558 = trunc i64 %div162263.i1557 to i32
  %mul164.neg.i1559 = mul i32 %conv163.i1558, -1000000
  %sub165.i1560 = add i32 %mul164.neg.i1559, %conv17.i1555
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %m, ptr noundef nonnull @.str.144, ptr noundef nonnull @.str.175, i64 noundef %retval.0.i1553, i32 noundef %sub165.i1560) #13
  %block_max = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 29, i32 10
  %124 = ptrtoint ptr %block_max to i32
  call void @__asan_load8_noabort(i32 %124)
  %125 = load i64, ptr %block_max, align 16
  %cmp.i1561 = icmp slt i64 %125, 0
  br i1 %cmp.i1561, label %if.end181.i1566, label %if.end375.i1569

if.end181.i1566:                                  ; preds = %nsec_high.exit1554
  %sub.i1562 = sub i64 0, %125
  %126 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %sub.i1562) #17, !srcloc !854
  %127 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %sub.i1562, i64 %126, i32 0) #17, !srcloc !855
  %asmresult10.i.i1563 = extractvalue { i64, i32 } %127, 0
  %div161565.i1564 = lshr i64 %asmresult10.i.i1563, 18
  %sub183.i1565 = sub nsw i64 0, %div161565.i1564
  br label %nsec_high.exit1571

if.end375.i1569:                                  ; preds = %nsec_high.exit1554
  %128 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %125) #17, !srcloc !854
  %129 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %125, i64 %128, i32 0) #17, !srcloc !855
  %asmresult10.i566.i1567 = extractvalue { i64, i32 } %129, 0
  %div380564.i1568 = lshr i64 %asmresult10.i566.i1567, 18
  br label %nsec_high.exit1571

nsec_high.exit1571:                               ; preds = %if.end375.i1569, %if.end181.i1566
  %retval.0.i1570 = phi i64 [ %sub183.i1565, %if.end181.i1566 ], [ %div380564.i1568, %if.end375.i1569 ]
  %130 = tail call i64 @llvm.abs.i64(i64 %125, i1 false) #13
  %conv17.i1572 = trunc i64 %130 to i32
  %131 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %130) #17, !srcloc !854
  %132 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %130, i64 %131, i32 0) #17, !srcloc !855
  %asmresult10.i.i1573 = extractvalue { i64, i32 } %132, 0
  %div162263.i1574 = lshr i64 %asmresult10.i.i1573, 18
  %conv163.i1575 = trunc i64 %div162263.i1574 to i32
  %mul164.neg.i1576 = mul i32 %conv163.i1575, -1000000
  %sub165.i1577 = add i32 %mul164.neg.i1576, %conv17.i1572
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %m, ptr noundef nonnull @.str.144, ptr noundef nonnull @.str.178, i64 noundef %retval.0.i1570, i32 noundef %sub165.i1577) #13
  %exec_max = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 29, i32 12
  %133 = ptrtoint ptr %exec_max to i32
  call void @__asan_load8_noabort(i32 %133)
  %134 = load i64, ptr %exec_max, align 32
  %cmp.i1578 = icmp slt i64 %134, 0
  br i1 %cmp.i1578, label %if.end181.i1583, label %if.end375.i1586

if.end181.i1583:                                  ; preds = %nsec_high.exit1571
  %sub.i1579 = sub i64 0, %134
  %135 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %sub.i1579) #17, !srcloc !854
  %136 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %sub.i1579, i64 %135, i32 0) #17, !srcloc !855
  %asmresult10.i.i1580 = extractvalue { i64, i32 } %136, 0
  %div161565.i1581 = lshr i64 %asmresult10.i.i1580, 18
  %sub183.i1582 = sub nsw i64 0, %div161565.i1581
  br label %nsec_high.exit1588

if.end375.i1586:                                  ; preds = %nsec_high.exit1571
  %137 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %134) #17, !srcloc !854
  %138 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %134, i64 %137, i32 0) #17, !srcloc !855
  %asmresult10.i566.i1584 = extractvalue { i64, i32 } %138, 0
  %div380564.i1585 = lshr i64 %asmresult10.i566.i1584, 18
  br label %nsec_high.exit1588

nsec_high.exit1588:                               ; preds = %if.end375.i1586, %if.end181.i1583
  %retval.0.i1587 = phi i64 [ %sub183.i1582, %if.end181.i1583 ], [ %div380564.i1585, %if.end375.i1586 ]
  %139 = tail call i64 @llvm.abs.i64(i64 %134, i1 false) #13
  %conv17.i1589 = trunc i64 %139 to i32
  %140 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %139) #17, !srcloc !854
  %141 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %139, i64 %140, i32 0) #17, !srcloc !855
  %asmresult10.i.i1590 = extractvalue { i64, i32 } %141, 0
  %div162263.i1591 = lshr i64 %asmresult10.i.i1590, 18
  %conv163.i1592 = trunc i64 %div162263.i1591 to i32
  %mul164.neg.i1593 = mul i32 %conv163.i1592, -1000000
  %sub165.i1594 = add i32 %mul164.neg.i1593, %conv17.i1589
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %m, ptr noundef nonnull @.str.144, ptr noundef nonnull @.str.181, i64 noundef %retval.0.i1587, i32 noundef %sub165.i1594) #13
  %slice_max = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 29, i32 13
  %142 = ptrtoint ptr %slice_max to i32
  call void @__asan_load8_noabort(i32 %142)
  %143 = load i64, ptr %slice_max, align 8
  %cmp.i1595 = icmp slt i64 %143, 0
  br i1 %cmp.i1595, label %if.end181.i1600, label %if.end375.i1603

if.end181.i1600:                                  ; preds = %nsec_high.exit1588
  %sub.i1596 = sub i64 0, %143
  %144 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %sub.i1596) #17, !srcloc !854
  %145 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %sub.i1596, i64 %144, i32 0) #17, !srcloc !855
  %asmresult10.i.i1597 = extractvalue { i64, i32 } %145, 0
  %div161565.i1598 = lshr i64 %asmresult10.i.i1597, 18
  %sub183.i1599 = sub nsw i64 0, %div161565.i1598
  br label %nsec_high.exit1605

if.end375.i1603:                                  ; preds = %nsec_high.exit1588
  %146 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %143) #17, !srcloc !854
  %147 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %143, i64 %146, i32 0) #17, !srcloc !855
  %asmresult10.i566.i1601 = extractvalue { i64, i32 } %147, 0
  %div380564.i1602 = lshr i64 %asmresult10.i566.i1601, 18
  br label %nsec_high.exit1605

nsec_high.exit1605:                               ; preds = %if.end375.i1603, %if.end181.i1600
  %retval.0.i1604 = phi i64 [ %sub183.i1599, %if.end181.i1600 ], [ %div380564.i1602, %if.end375.i1603 ]
  %148 = tail call i64 @llvm.abs.i64(i64 %143, i1 false) #13
  %conv17.i1606 = trunc i64 %148 to i32
  %149 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %148) #17, !srcloc !854
  %150 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %148, i64 %149, i32 0) #17, !srcloc !855
  %asmresult10.i.i1607 = extractvalue { i64, i32 } %150, 0
  %div162263.i1608 = lshr i64 %asmresult10.i.i1607, 18
  %conv163.i1609 = trunc i64 %div162263.i1608 to i32
  %mul164.neg.i1610 = mul i32 %conv163.i1609, -1000000
  %sub165.i1611 = add i32 %mul164.neg.i1610, %conv17.i1606
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %m, ptr noundef nonnull @.str.144, ptr noundef nonnull @.str.184, i64 noundef %retval.0.i1604, i32 noundef %sub165.i1611) #13
  %wait_max = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 29, i32 1
  %151 = ptrtoint ptr %wait_max to i32
  call void @__asan_load8_noabort(i32 %151)
  %152 = load i64, ptr %wait_max, align 8
  %cmp.i1612 = icmp slt i64 %152, 0
  br i1 %cmp.i1612, label %if.end181.i1617, label %if.end375.i1620

if.end181.i1617:                                  ; preds = %nsec_high.exit1605
  %sub.i1613 = sub i64 0, %152
  %153 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %sub.i1613) #17, !srcloc !854
  %154 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %sub.i1613, i64 %153, i32 0) #17, !srcloc !855
  %asmresult10.i.i1614 = extractvalue { i64, i32 } %154, 0
  %div161565.i1615 = lshr i64 %asmresult10.i.i1614, 18
  %sub183.i1616 = sub nsw i64 0, %div161565.i1615
  br label %nsec_high.exit1622

if.end375.i1620:                                  ; preds = %nsec_high.exit1605
  %155 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %152) #17, !srcloc !854
  %156 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %152, i64 %155, i32 0) #17, !srcloc !855
  %asmresult10.i566.i1618 = extractvalue { i64, i32 } %156, 0
  %div380564.i1619 = lshr i64 %asmresult10.i566.i1618, 18
  br label %nsec_high.exit1622

nsec_high.exit1622:                               ; preds = %if.end375.i1620, %if.end181.i1617
  %retval.0.i1621 = phi i64 [ %sub183.i1616, %if.end181.i1617 ], [ %div380564.i1619, %if.end375.i1620 ]
  %157 = tail call i64 @llvm.abs.i64(i64 %152, i1 false) #13
  %conv17.i1623 = trunc i64 %157 to i32
  %158 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %157) #17, !srcloc !854
  %159 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %157, i64 %158, i32 0) #17, !srcloc !855
  %asmresult10.i.i1624 = extractvalue { i64, i32 } %159, 0
  %div162263.i1625 = lshr i64 %asmresult10.i.i1624, 18
  %conv163.i1626 = trunc i64 %div162263.i1625 to i32
  %mul164.neg.i1627 = mul i32 %conv163.i1626, -1000000
  %sub165.i1628 = add i32 %mul164.neg.i1627, %conv17.i1623
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %m, ptr noundef nonnull @.str.144, ptr noundef nonnull @.str.187, i64 noundef %retval.0.i1621, i32 noundef %sub165.i1628) #13
  %wait_sum = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 29, i32 3
  %160 = ptrtoint ptr %wait_sum to i32
  call void @__asan_load8_noabort(i32 %160)
  %161 = load i64, ptr %wait_sum, align 8
  %cmp.i1629 = icmp slt i64 %161, 0
  br i1 %cmp.i1629, label %if.end181.i1634, label %if.end375.i1637

if.end181.i1634:                                  ; preds = %nsec_high.exit1622
  %sub.i1630 = sub i64 0, %161
  %162 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %sub.i1630) #17, !srcloc !854
  %163 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %sub.i1630, i64 %162, i32 0) #17, !srcloc !855
  %asmresult10.i.i1631 = extractvalue { i64, i32 } %163, 0
  %div161565.i1632 = lshr i64 %asmresult10.i.i1631, 18
  %sub183.i1633 = sub nsw i64 0, %div161565.i1632
  br label %nsec_high.exit1639

if.end375.i1637:                                  ; preds = %nsec_high.exit1622
  %164 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %161) #17, !srcloc !854
  %165 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %161, i64 %164, i32 0) #17, !srcloc !855
  %asmresult10.i566.i1635 = extractvalue { i64, i32 } %165, 0
  %div380564.i1636 = lshr i64 %asmresult10.i566.i1635, 18
  br label %nsec_high.exit1639

nsec_high.exit1639:                               ; preds = %if.end375.i1637, %if.end181.i1634
  %retval.0.i1638 = phi i64 [ %sub183.i1633, %if.end181.i1634 ], [ %div380564.i1636, %if.end375.i1637 ]
  %166 = tail call i64 @llvm.abs.i64(i64 %161, i1 false) #13
  %conv17.i1640 = trunc i64 %166 to i32
  %167 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %166) #17, !srcloc !854
  %168 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %166, i64 %167, i32 0) #17, !srcloc !855
  %asmresult10.i.i1641 = extractvalue { i64, i32 } %168, 0
  %div162263.i1642 = lshr i64 %asmresult10.i.i1641, 18
  %conv163.i1643 = trunc i64 %div162263.i1642 to i32
  %mul164.neg.i1644 = mul i32 %conv163.i1643, -1000000
  %sub165.i1645 = add i32 %mul164.neg.i1644, %conv17.i1640
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %m, ptr noundef nonnull @.str.144, ptr noundef nonnull @.str.190, i64 noundef %retval.0.i1638, i32 noundef %sub165.i1645) #13
  %wait_count = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 29, i32 2
  %169 = ptrtoint ptr %wait_count to i32
  call void @__asan_load8_noabort(i32 %169)
  %170 = load i64, ptr %wait_count, align 16
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %m, ptr noundef nonnull @.str.155, ptr noundef nonnull @.str.193, i64 noundef %170) #13
  %iowait_sum = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 29, i32 5
  %171 = ptrtoint ptr %iowait_sum to i32
  call void @__asan_load8_noabort(i32 %171)
  %172 = load i64, ptr %iowait_sum, align 8
  %cmp.i1646 = icmp slt i64 %172, 0
  br i1 %cmp.i1646, label %if.end181.i1651, label %if.end375.i1654

if.end181.i1651:                                  ; preds = %nsec_high.exit1639
  %sub.i1647 = sub i64 0, %172
  %173 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %sub.i1647) #17, !srcloc !854
  %174 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %sub.i1647, i64 %173, i32 0) #17, !srcloc !855
  %asmresult10.i.i1648 = extractvalue { i64, i32 } %174, 0
  %div161565.i1649 = lshr i64 %asmresult10.i.i1648, 18
  %sub183.i1650 = sub nsw i64 0, %div161565.i1649
  br label %nsec_high.exit1656

if.end375.i1654:                                  ; preds = %nsec_high.exit1639
  %175 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %172) #17, !srcloc !854
  %176 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %172, i64 %175, i32 0) #17, !srcloc !855
  %asmresult10.i566.i1652 = extractvalue { i64, i32 } %176, 0
  %div380564.i1653 = lshr i64 %asmresult10.i566.i1652, 18
  br label %nsec_high.exit1656

nsec_high.exit1656:                               ; preds = %if.end375.i1654, %if.end181.i1651
  %retval.0.i1655 = phi i64 [ %sub183.i1650, %if.end181.i1651 ], [ %div380564.i1653, %if.end375.i1654 ]
  %177 = tail call i64 @llvm.abs.i64(i64 %172, i1 false) #13
  %conv17.i1657 = trunc i64 %177 to i32
  %178 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %177) #17, !srcloc !854
  %179 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %177, i64 %178, i32 0) #17, !srcloc !855
  %asmresult10.i.i1658 = extractvalue { i64, i32 } %179, 0
  %div162263.i1659 = lshr i64 %asmresult10.i.i1658, 18
  %conv163.i1660 = trunc i64 %div162263.i1659 to i32
  %mul164.neg.i1661 = mul i32 %conv163.i1660, -1000000
  %sub165.i1662 = add i32 %mul164.neg.i1661, %conv17.i1657
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %m, ptr noundef nonnull @.str.144, ptr noundef nonnull @.str.196, i64 noundef %retval.0.i1655, i32 noundef %sub165.i1662) #13
  %iowait_count = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 29, i32 4
  %180 = ptrtoint ptr %iowait_count to i32
  call void @__asan_load8_noabort(i32 %180)
  %181 = load i64, ptr %iowait_count, align 32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %m, ptr noundef nonnull @.str.155, ptr noundef nonnull @.str.199, i64 noundef %181) #13
  %nr_migrations_cold = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 29, i32 14
  %182 = ptrtoint ptr %nr_migrations_cold to i32
  call void @__asan_load8_noabort(i32 %182)
  %183 = load i64, ptr %nr_migrations_cold, align 16
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %m, ptr noundef nonnull @.str.155, ptr noundef nonnull @.str.202, i64 noundef %183) #13
  %nr_failed_migrations_affine = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 29, i32 15
  %184 = ptrtoint ptr %nr_failed_migrations_affine to i32
  call void @__asan_load8_noabort(i32 %184)
  %185 = load i64, ptr %nr_failed_migrations_affine, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %m, ptr noundef nonnull @.str.155, ptr noundef nonnull @.str.205, i64 noundef %185) #13
  %nr_failed_migrations_running = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 29, i32 16
  %186 = ptrtoint ptr %nr_failed_migrations_running to i32
  call void @__asan_load8_noabort(i32 %186)
  %187 = load i64, ptr %nr_failed_migrations_running, align 128
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %m, ptr noundef nonnull @.str.155, ptr noundef nonnull @.str.208, i64 noundef %187) #13
  %nr_failed_migrations_hot = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 29, i32 17
  %188 = ptrtoint ptr %nr_failed_migrations_hot to i32
  call void @__asan_load8_noabort(i32 %188)
  %189 = load i64, ptr %nr_failed_migrations_hot, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %m, ptr noundef nonnull @.str.155, ptr noundef nonnull @.str.211, i64 noundef %189) #13
  %nr_forced_migrations = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 29, i32 18
  %190 = ptrtoint ptr %nr_forced_migrations to i32
  call void @__asan_load8_noabort(i32 %190)
  %191 = load i64, ptr %nr_forced_migrations, align 16
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %m, ptr noundef nonnull @.str.155, ptr noundef nonnull @.str.214, i64 noundef %191) #13
  %nr_wakeups = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 29, i32 19
  %192 = ptrtoint ptr %nr_wakeups to i32
  call void @__asan_load8_noabort(i32 %192)
  %193 = load i64, ptr %nr_wakeups, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %m, ptr noundef nonnull @.str.155, ptr noundef nonnull @.str.217, i64 noundef %193) #13
  %nr_wakeups_sync = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 29, i32 20
  %194 = ptrtoint ptr %nr_wakeups_sync to i32
  call void @__asan_load8_noabort(i32 %194)
  %195 = load i64, ptr %nr_wakeups_sync, align 32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %m, ptr noundef nonnull @.str.155, ptr noundef nonnull @.str.220, i64 noundef %195) #13
  %nr_wakeups_migrate = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 29, i32 21
  %196 = ptrtoint ptr %nr_wakeups_migrate to i32
  call void @__asan_load8_noabort(i32 %196)
  %197 = load i64, ptr %nr_wakeups_migrate, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %m, ptr noundef nonnull @.str.155, ptr noundef nonnull @.str.223, i64 noundef %197) #13
  %nr_wakeups_local = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 29, i32 22
  %198 = ptrtoint ptr %nr_wakeups_local to i32
  call void @__asan_load8_noabort(i32 %198)
  %199 = load i64, ptr %nr_wakeups_local, align 16
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %m, ptr noundef nonnull @.str.155, ptr noundef nonnull @.str.226, i64 noundef %199) #13
  %nr_wakeups_remote = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 29, i32 23
  %200 = ptrtoint ptr %nr_wakeups_remote to i32
  call void @__asan_load8_noabort(i32 %200)
  %201 = load i64, ptr %nr_wakeups_remote, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %m, ptr noundef nonnull @.str.155, ptr noundef nonnull @.str.229, i64 noundef %201) #13
  %nr_wakeups_affine = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 29, i32 24
  %202 = ptrtoint ptr %nr_wakeups_affine to i32
  call void @__asan_load8_noabort(i32 %202)
  %203 = load i64, ptr %nr_wakeups_affine, align 64
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %m, ptr noundef nonnull @.str.155, ptr noundef nonnull @.str.232, i64 noundef %203) #13
  %nr_wakeups_affine_attempts = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 29, i32 25
  %204 = ptrtoint ptr %nr_wakeups_affine_attempts to i32
  call void @__asan_load8_noabort(i32 %204)
  %205 = load i64, ptr %nr_wakeups_affine_attempts, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %m, ptr noundef nonnull @.str.155, ptr noundef nonnull @.str.235, i64 noundef %205) #13
  %nr_wakeups_passive = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 29, i32 26
  %206 = ptrtoint ptr %nr_wakeups_passive to i32
  call void @__asan_load8_noabort(i32 %206)
  %207 = load i64, ptr %nr_wakeups_passive, align 16
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %m, ptr noundef nonnull @.str.155, ptr noundef nonnull @.str.238, i64 noundef %207) #13
  %nr_wakeups_idle = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 29, i32 27
  %208 = ptrtoint ptr %nr_wakeups_idle to i32
  call void @__asan_load8_noabort(i32 %208)
  %209 = load i64, ptr %nr_wakeups_idle, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %m, ptr noundef nonnull @.str.155, ptr noundef nonnull @.str.241, i64 noundef %209) #13
  br label %do.end625

do.end121:                                        ; preds = %if.then110
  br i1 %cmp.i1663, label %if.end181.i1668, label %if.end375.i1671

if.end181.i1668:                                  ; preds = %do.end121
  %sub.i1664 = sub i64 0, %71
  %210 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %sub.i1664) #17, !srcloc !854
  %211 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %sub.i1664, i64 %210, i32 0) #17, !srcloc !855
  %asmresult10.i.i1665 = extractvalue { i64, i32 } %211, 0
  %div161565.i1666 = lshr i64 %asmresult10.i.i1665, 18
  %sub183.i1667 = sub nsw i64 0, %div161565.i1666
  br label %nsec_high.exit1673

if.end375.i1671:                                  ; preds = %do.end121
  %212 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %71) #17, !srcloc !854
  %213 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %71, i64 %212, i32 0) #17, !srcloc !855
  %asmresult10.i566.i1669 = extractvalue { i64, i32 } %213, 0
  %div380564.i1670 = lshr i64 %asmresult10.i566.i1669, 18
  br label %nsec_high.exit1673

nsec_high.exit1673:                               ; preds = %if.end375.i1671, %if.end181.i1668
  %retval.0.i1672 = phi i64 [ %sub183.i1667, %if.end181.i1668 ], [ %div380564.i1670, %if.end375.i1671 ]
  %214 = tail call i64 @llvm.abs.i64(i64 %71, i1 false) #13
  %conv17.i1674 = trunc i64 %214 to i32
  %215 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %214) #17, !srcloc !854
  %216 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %214, i64 %215, i32 0) #17, !srcloc !855
  %asmresult10.i.i1675 = extractvalue { i64, i32 } %216, 0
  %div162263.i1676 = lshr i64 %asmresult10.i.i1675, 18
  %conv163.i1677 = trunc i64 %div162263.i1676 to i32
  %mul164.neg.i1678 = mul i32 %conv163.i1677, -1000000
  %sub165.i1679 = add i32 %mul164.neg.i1678, %conv17.i1674
  %call129 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.147, ptr noundef nonnull @.str.160, i64 noundef %retval.0.i1672, i32 noundef %sub165.i1679) #16
  %sum_block_runtime147 = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 29, i32 11
  %217 = ptrtoint ptr %sum_block_runtime147 to i32
  call void @__asan_load8_noabort(i32 %217)
  %218 = load i64, ptr %sum_block_runtime147, align 8
  %cmp.i1680 = icmp slt i64 %218, 0
  br i1 %cmp.i1680, label %if.end181.i1685, label %if.end375.i1688

if.end181.i1685:                                  ; preds = %nsec_high.exit1673
  %sub.i1681 = sub i64 0, %218
  %219 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %sub.i1681) #17, !srcloc !854
  %220 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %sub.i1681, i64 %219, i32 0) #17, !srcloc !855
  %asmresult10.i.i1682 = extractvalue { i64, i32 } %220, 0
  %div161565.i1683 = lshr i64 %asmresult10.i.i1682, 18
  %sub183.i1684 = sub nsw i64 0, %div161565.i1683
  br label %nsec_high.exit1690

if.end375.i1688:                                  ; preds = %nsec_high.exit1673
  %221 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %218) #17, !srcloc !854
  %222 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %218, i64 %221, i32 0) #17, !srcloc !855
  %asmresult10.i566.i1686 = extractvalue { i64, i32 } %222, 0
  %div380564.i1687 = lshr i64 %asmresult10.i566.i1686, 18
  br label %nsec_high.exit1690

nsec_high.exit1690:                               ; preds = %if.end375.i1688, %if.end181.i1685
  %retval.0.i1689 = phi i64 [ %sub183.i1684, %if.end181.i1685 ], [ %div380564.i1687, %if.end375.i1688 ]
  %223 = tail call i64 @llvm.abs.i64(i64 %218, i1 false) #13
  %conv17.i1691 = trunc i64 %223 to i32
  %224 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %223) #17, !srcloc !854
  %225 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %223, i64 %224, i32 0) #17, !srcloc !855
  %asmresult10.i.i1692 = extractvalue { i64, i32 } %225, 0
  %div162263.i1693 = lshr i64 %asmresult10.i.i1692, 18
  %conv163.i1694 = trunc i64 %div162263.i1693 to i32
  %mul164.neg.i1695 = mul i32 %conv163.i1694, -1000000
  %sub165.i1696 = add i32 %mul164.neg.i1695, %conv17.i1691
  %call152 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.147, ptr noundef nonnull @.str.163, i64 noundef %retval.0.i1689, i32 noundef %sub165.i1696) #16
  %stats169 = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 29
  %226 = ptrtoint ptr %stats169 to i32
  call void @__asan_load8_noabort(i32 %226)
  %227 = load i64, ptr %stats169, align 128
  %cmp.i1697 = icmp slt i64 %227, 0
  br i1 %cmp.i1697, label %if.end181.i1702, label %if.end375.i1705

if.end181.i1702:                                  ; preds = %nsec_high.exit1690
  %sub.i1698 = sub i64 0, %227
  %228 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %sub.i1698) #17, !srcloc !854
  %229 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %sub.i1698, i64 %228, i32 0) #17, !srcloc !855
  %asmresult10.i.i1699 = extractvalue { i64, i32 } %229, 0
  %div161565.i1700 = lshr i64 %asmresult10.i.i1699, 18
  %sub183.i1701 = sub nsw i64 0, %div161565.i1700
  br label %nsec_high.exit1707

if.end375.i1705:                                  ; preds = %nsec_high.exit1690
  %230 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %227) #17, !srcloc !854
  %231 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %227, i64 %230, i32 0) #17, !srcloc !855
  %asmresult10.i566.i1703 = extractvalue { i64, i32 } %231, 0
  %div380564.i1704 = lshr i64 %asmresult10.i566.i1703, 18
  br label %nsec_high.exit1707

nsec_high.exit1707:                               ; preds = %if.end375.i1705, %if.end181.i1702
  %retval.0.i1706 = phi i64 [ %sub183.i1701, %if.end181.i1702 ], [ %div380564.i1704, %if.end375.i1705 ]
  %232 = tail call i64 @llvm.abs.i64(i64 %227, i1 false) #13
  %conv17.i1708 = trunc i64 %232 to i32
  %233 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %232) #17, !srcloc !854
  %234 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %232, i64 %233, i32 0) #17, !srcloc !855
  %asmresult10.i.i1709 = extractvalue { i64, i32 } %234, 0
  %div162263.i1710 = lshr i64 %asmresult10.i.i1709, 18
  %conv163.i1711 = trunc i64 %div162263.i1710 to i32
  %mul164.neg.i1712 = mul i32 %conv163.i1711, -1000000
  %sub165.i1713 = add i32 %mul164.neg.i1712, %conv17.i1708
  %call175 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.147, ptr noundef nonnull @.str.166, i64 noundef %retval.0.i1706, i32 noundef %sub165.i1713) #16
  %sleep_start193 = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 29, i32 6
  %235 = ptrtoint ptr %sleep_start193 to i32
  call void @__asan_load8_noabort(i32 %235)
  %236 = load i64, ptr %sleep_start193, align 16
  %cmp.i1714 = icmp slt i64 %236, 0
  br i1 %cmp.i1714, label %if.end181.i1719, label %if.end375.i1722

if.end181.i1719:                                  ; preds = %nsec_high.exit1707
  %sub.i1715 = sub i64 0, %236
  %237 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %sub.i1715) #17, !srcloc !854
  %238 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %sub.i1715, i64 %237, i32 0) #17, !srcloc !855
  %asmresult10.i.i1716 = extractvalue { i64, i32 } %238, 0
  %div161565.i1717 = lshr i64 %asmresult10.i.i1716, 18
  %sub183.i1718 = sub nsw i64 0, %div161565.i1717
  br label %nsec_high.exit1724

if.end375.i1722:                                  ; preds = %nsec_high.exit1707
  %239 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %236) #17, !srcloc !854
  %240 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %236, i64 %239, i32 0) #17, !srcloc !855
  %asmresult10.i566.i1720 = extractvalue { i64, i32 } %240, 0
  %div380564.i1721 = lshr i64 %asmresult10.i566.i1720, 18
  br label %nsec_high.exit1724

nsec_high.exit1724:                               ; preds = %if.end375.i1722, %if.end181.i1719
  %retval.0.i1723 = phi i64 [ %sub183.i1718, %if.end181.i1719 ], [ %div380564.i1721, %if.end375.i1722 ]
  %241 = tail call i64 @llvm.abs.i64(i64 %236, i1 false) #13
  %conv17.i1725 = trunc i64 %241 to i32
  %242 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %241) #17, !srcloc !854
  %243 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %241, i64 %242, i32 0) #17, !srcloc !855
  %asmresult10.i.i1726 = extractvalue { i64, i32 } %243, 0
  %div162263.i1727 = lshr i64 %asmresult10.i.i1726, 18
  %conv163.i1728 = trunc i64 %div162263.i1727 to i32
  %mul164.neg.i1729 = mul i32 %conv163.i1728, -1000000
  %sub165.i1730 = add i32 %mul164.neg.i1729, %conv17.i1725
  %call198 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.147, ptr noundef nonnull @.str.169, i64 noundef %retval.0.i1723, i32 noundef %sub165.i1730) #16
  %block_start216 = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 29, i32 9
  %244 = ptrtoint ptr %block_start216 to i32
  call void @__asan_load8_noabort(i32 %244)
  %245 = load i64, ptr %block_start216, align 8
  %cmp.i1731 = icmp slt i64 %245, 0
  br i1 %cmp.i1731, label %if.end181.i1736, label %if.end375.i1739

if.end181.i1736:                                  ; preds = %nsec_high.exit1724
  %sub.i1732 = sub i64 0, %245
  %246 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %sub.i1732) #17, !srcloc !854
  %247 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %sub.i1732, i64 %246, i32 0) #17, !srcloc !855
  %asmresult10.i.i1733 = extractvalue { i64, i32 } %247, 0
  %div161565.i1734 = lshr i64 %asmresult10.i.i1733, 18
  %sub183.i1735 = sub nsw i64 0, %div161565.i1734
  br label %nsec_high.exit1741

if.end375.i1739:                                  ; preds = %nsec_high.exit1724
  %248 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %245) #17, !srcloc !854
  %249 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %245, i64 %248, i32 0) #17, !srcloc !855
  %asmresult10.i566.i1737 = extractvalue { i64, i32 } %249, 0
  %div380564.i1738 = lshr i64 %asmresult10.i566.i1737, 18
  br label %nsec_high.exit1741

nsec_high.exit1741:                               ; preds = %if.end375.i1739, %if.end181.i1736
  %retval.0.i1740 = phi i64 [ %sub183.i1735, %if.end181.i1736 ], [ %div380564.i1738, %if.end375.i1739 ]
  %250 = tail call i64 @llvm.abs.i64(i64 %245, i1 false) #13
  %conv17.i1742 = trunc i64 %250 to i32
  %251 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %250) #17, !srcloc !854
  %252 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %250, i64 %251, i32 0) #17, !srcloc !855
  %asmresult10.i.i1743 = extractvalue { i64, i32 } %252, 0
  %div162263.i1744 = lshr i64 %asmresult10.i.i1743, 18
  %conv163.i1745 = trunc i64 %div162263.i1744 to i32
  %mul164.neg.i1746 = mul i32 %conv163.i1745, -1000000
  %sub165.i1747 = add i32 %mul164.neg.i1746, %conv17.i1742
  %call221 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.147, ptr noundef nonnull @.str.172, i64 noundef %retval.0.i1740, i32 noundef %sub165.i1747) #16
  %sleep_max239 = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 29, i32 7
  %253 = ptrtoint ptr %sleep_max239 to i32
  call void @__asan_load8_noabort(i32 %253)
  %254 = load i64, ptr %sleep_max239, align 8
  %cmp.i1748 = icmp slt i64 %254, 0
  br i1 %cmp.i1748, label %if.end181.i1753, label %if.end375.i1756

if.end181.i1753:                                  ; preds = %nsec_high.exit1741
  %sub.i1749 = sub i64 0, %254
  %255 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %sub.i1749) #17, !srcloc !854
  %256 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %sub.i1749, i64 %255, i32 0) #17, !srcloc !855
  %asmresult10.i.i1750 = extractvalue { i64, i32 } %256, 0
  %div161565.i1751 = lshr i64 %asmresult10.i.i1750, 18
  %sub183.i1752 = sub nsw i64 0, %div161565.i1751
  br label %nsec_high.exit1758

if.end375.i1756:                                  ; preds = %nsec_high.exit1741
  %257 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %254) #17, !srcloc !854
  %258 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %254, i64 %257, i32 0) #17, !srcloc !855
  %asmresult10.i566.i1754 = extractvalue { i64, i32 } %258, 0
  %div380564.i1755 = lshr i64 %asmresult10.i566.i1754, 18
  br label %nsec_high.exit1758

nsec_high.exit1758:                               ; preds = %if.end375.i1756, %if.end181.i1753
  %retval.0.i1757 = phi i64 [ %sub183.i1752, %if.end181.i1753 ], [ %div380564.i1755, %if.end375.i1756 ]
  %259 = tail call i64 @llvm.abs.i64(i64 %254, i1 false) #13
  %conv17.i1759 = trunc i64 %259 to i32
  %260 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %259) #17, !srcloc !854
  %261 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %259, i64 %260, i32 0) #17, !srcloc !855
  %asmresult10.i.i1760 = extractvalue { i64, i32 } %261, 0
  %div162263.i1761 = lshr i64 %asmresult10.i.i1760, 18
  %conv163.i1762 = trunc i64 %div162263.i1761 to i32
  %mul164.neg.i1763 = mul i32 %conv163.i1762, -1000000
  %sub165.i1764 = add i32 %mul164.neg.i1763, %conv17.i1759
  %call244 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.147, ptr noundef nonnull @.str.175, i64 noundef %retval.0.i1757, i32 noundef %sub165.i1764) #16
  %block_max262 = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 29, i32 10
  %262 = ptrtoint ptr %block_max262 to i32
  call void @__asan_load8_noabort(i32 %262)
  %263 = load i64, ptr %block_max262, align 16
  %cmp.i1765 = icmp slt i64 %263, 0
  br i1 %cmp.i1765, label %if.end181.i1770, label %if.end375.i1773

if.end181.i1770:                                  ; preds = %nsec_high.exit1758
  %sub.i1766 = sub i64 0, %263
  %264 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %sub.i1766) #17, !srcloc !854
  %265 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %sub.i1766, i64 %264, i32 0) #17, !srcloc !855
  %asmresult10.i.i1767 = extractvalue { i64, i32 } %265, 0
  %div161565.i1768 = lshr i64 %asmresult10.i.i1767, 18
  %sub183.i1769 = sub nsw i64 0, %div161565.i1768
  br label %nsec_high.exit1775

if.end375.i1773:                                  ; preds = %nsec_high.exit1758
  %266 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %263) #17, !srcloc !854
  %267 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %263, i64 %266, i32 0) #17, !srcloc !855
  %asmresult10.i566.i1771 = extractvalue { i64, i32 } %267, 0
  %div380564.i1772 = lshr i64 %asmresult10.i566.i1771, 18
  br label %nsec_high.exit1775

nsec_high.exit1775:                               ; preds = %if.end375.i1773, %if.end181.i1770
  %retval.0.i1774 = phi i64 [ %sub183.i1769, %if.end181.i1770 ], [ %div380564.i1772, %if.end375.i1773 ]
  %268 = tail call i64 @llvm.abs.i64(i64 %263, i1 false) #13
  %conv17.i1776 = trunc i64 %268 to i32
  %269 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %268) #17, !srcloc !854
  %270 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %268, i64 %269, i32 0) #17, !srcloc !855
  %asmresult10.i.i1777 = extractvalue { i64, i32 } %270, 0
  %div162263.i1778 = lshr i64 %asmresult10.i.i1777, 18
  %conv163.i1779 = trunc i64 %div162263.i1778 to i32
  %mul164.neg.i1780 = mul i32 %conv163.i1779, -1000000
  %sub165.i1781 = add i32 %mul164.neg.i1780, %conv17.i1776
  %call267 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.147, ptr noundef nonnull @.str.178, i64 noundef %retval.0.i1774, i32 noundef %sub165.i1781) #16
  %exec_max285 = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 29, i32 12
  %271 = ptrtoint ptr %exec_max285 to i32
  call void @__asan_load8_noabort(i32 %271)
  %272 = load i64, ptr %exec_max285, align 32
  %cmp.i1782 = icmp slt i64 %272, 0
  br i1 %cmp.i1782, label %if.end181.i1787, label %if.end375.i1790

if.end181.i1787:                                  ; preds = %nsec_high.exit1775
  %sub.i1783 = sub i64 0, %272
  %273 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %sub.i1783) #17, !srcloc !854
  %274 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %sub.i1783, i64 %273, i32 0) #17, !srcloc !855
  %asmresult10.i.i1784 = extractvalue { i64, i32 } %274, 0
  %div161565.i1785 = lshr i64 %asmresult10.i.i1784, 18
  %sub183.i1786 = sub nsw i64 0, %div161565.i1785
  br label %nsec_high.exit1792

if.end375.i1790:                                  ; preds = %nsec_high.exit1775
  %275 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %272) #17, !srcloc !854
  %276 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %272, i64 %275, i32 0) #17, !srcloc !855
  %asmresult10.i566.i1788 = extractvalue { i64, i32 } %276, 0
  %div380564.i1789 = lshr i64 %asmresult10.i566.i1788, 18
  br label %nsec_high.exit1792

nsec_high.exit1792:                               ; preds = %if.end375.i1790, %if.end181.i1787
  %retval.0.i1791 = phi i64 [ %sub183.i1786, %if.end181.i1787 ], [ %div380564.i1789, %if.end375.i1790 ]
  %277 = tail call i64 @llvm.abs.i64(i64 %272, i1 false) #13
  %conv17.i1793 = trunc i64 %277 to i32
  %278 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %277) #17, !srcloc !854
  %279 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %277, i64 %278, i32 0) #17, !srcloc !855
  %asmresult10.i.i1794 = extractvalue { i64, i32 } %279, 0
  %div162263.i1795 = lshr i64 %asmresult10.i.i1794, 18
  %conv163.i1796 = trunc i64 %div162263.i1795 to i32
  %mul164.neg.i1797 = mul i32 %conv163.i1796, -1000000
  %sub165.i1798 = add i32 %mul164.neg.i1797, %conv17.i1793
  %call290 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.147, ptr noundef nonnull @.str.181, i64 noundef %retval.0.i1791, i32 noundef %sub165.i1798) #16
  %slice_max308 = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 29, i32 13
  %280 = ptrtoint ptr %slice_max308 to i32
  call void @__asan_load8_noabort(i32 %280)
  %281 = load i64, ptr %slice_max308, align 8
  %cmp.i1799 = icmp slt i64 %281, 0
  br i1 %cmp.i1799, label %if.end181.i1804, label %if.end375.i1807

if.end181.i1804:                                  ; preds = %nsec_high.exit1792
  %sub.i1800 = sub i64 0, %281
  %282 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %sub.i1800) #17, !srcloc !854
  %283 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %sub.i1800, i64 %282, i32 0) #17, !srcloc !855
  %asmresult10.i.i1801 = extractvalue { i64, i32 } %283, 0
  %div161565.i1802 = lshr i64 %asmresult10.i.i1801, 18
  %sub183.i1803 = sub nsw i64 0, %div161565.i1802
  br label %nsec_high.exit1809

if.end375.i1807:                                  ; preds = %nsec_high.exit1792
  %284 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %281) #17, !srcloc !854
  %285 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %281, i64 %284, i32 0) #17, !srcloc !855
  %asmresult10.i566.i1805 = extractvalue { i64, i32 } %285, 0
  %div380564.i1806 = lshr i64 %asmresult10.i566.i1805, 18
  br label %nsec_high.exit1809

nsec_high.exit1809:                               ; preds = %if.end375.i1807, %if.end181.i1804
  %retval.0.i1808 = phi i64 [ %sub183.i1803, %if.end181.i1804 ], [ %div380564.i1806, %if.end375.i1807 ]
  %286 = tail call i64 @llvm.abs.i64(i64 %281, i1 false) #13
  %conv17.i1810 = trunc i64 %286 to i32
  %287 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %286) #17, !srcloc !854
  %288 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %286, i64 %287, i32 0) #17, !srcloc !855
  %asmresult10.i.i1811 = extractvalue { i64, i32 } %288, 0
  %div162263.i1812 = lshr i64 %asmresult10.i.i1811, 18
  %conv163.i1813 = trunc i64 %div162263.i1812 to i32
  %mul164.neg.i1814 = mul i32 %conv163.i1813, -1000000
  %sub165.i1815 = add i32 %mul164.neg.i1814, %conv17.i1810
  %call313 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.147, ptr noundef nonnull @.str.184, i64 noundef %retval.0.i1808, i32 noundef %sub165.i1815) #16
  %wait_max331 = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 29, i32 1
  %289 = ptrtoint ptr %wait_max331 to i32
  call void @__asan_load8_noabort(i32 %289)
  %290 = load i64, ptr %wait_max331, align 8
  %cmp.i1816 = icmp slt i64 %290, 0
  br i1 %cmp.i1816, label %if.end181.i1821, label %if.end375.i1824

if.end181.i1821:                                  ; preds = %nsec_high.exit1809
  %sub.i1817 = sub i64 0, %290
  %291 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %sub.i1817) #17, !srcloc !854
  %292 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %sub.i1817, i64 %291, i32 0) #17, !srcloc !855
  %asmresult10.i.i1818 = extractvalue { i64, i32 } %292, 0
  %div161565.i1819 = lshr i64 %asmresult10.i.i1818, 18
  %sub183.i1820 = sub nsw i64 0, %div161565.i1819
  br label %nsec_high.exit1826

if.end375.i1824:                                  ; preds = %nsec_high.exit1809
  %293 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %290) #17, !srcloc !854
  %294 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %290, i64 %293, i32 0) #17, !srcloc !855
  %asmresult10.i566.i1822 = extractvalue { i64, i32 } %294, 0
  %div380564.i1823 = lshr i64 %asmresult10.i566.i1822, 18
  br label %nsec_high.exit1826

nsec_high.exit1826:                               ; preds = %if.end375.i1824, %if.end181.i1821
  %retval.0.i1825 = phi i64 [ %sub183.i1820, %if.end181.i1821 ], [ %div380564.i1823, %if.end375.i1824 ]
  %295 = tail call i64 @llvm.abs.i64(i64 %290, i1 false) #13
  %conv17.i1827 = trunc i64 %295 to i32
  %296 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %295) #17, !srcloc !854
  %297 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %295, i64 %296, i32 0) #17, !srcloc !855
  %asmresult10.i.i1828 = extractvalue { i64, i32 } %297, 0
  %div162263.i1829 = lshr i64 %asmresult10.i.i1828, 18
  %conv163.i1830 = trunc i64 %div162263.i1829 to i32
  %mul164.neg.i1831 = mul i32 %conv163.i1830, -1000000
  %sub165.i1832 = add i32 %mul164.neg.i1831, %conv17.i1827
  %call336 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.147, ptr noundef nonnull @.str.187, i64 noundef %retval.0.i1825, i32 noundef %sub165.i1832) #16
  %wait_sum354 = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 29, i32 3
  %298 = ptrtoint ptr %wait_sum354 to i32
  call void @__asan_load8_noabort(i32 %298)
  %299 = load i64, ptr %wait_sum354, align 8
  %cmp.i1833 = icmp slt i64 %299, 0
  br i1 %cmp.i1833, label %if.end181.i1838, label %if.end375.i1841

if.end181.i1838:                                  ; preds = %nsec_high.exit1826
  %sub.i1834 = sub i64 0, %299
  %300 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %sub.i1834) #17, !srcloc !854
  %301 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %sub.i1834, i64 %300, i32 0) #17, !srcloc !855
  %asmresult10.i.i1835 = extractvalue { i64, i32 } %301, 0
  %div161565.i1836 = lshr i64 %asmresult10.i.i1835, 18
  %sub183.i1837 = sub nsw i64 0, %div161565.i1836
  br label %nsec_high.exit1843

if.end375.i1841:                                  ; preds = %nsec_high.exit1826
  %302 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %299) #17, !srcloc !854
  %303 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %299, i64 %302, i32 0) #17, !srcloc !855
  %asmresult10.i566.i1839 = extractvalue { i64, i32 } %303, 0
  %div380564.i1840 = lshr i64 %asmresult10.i566.i1839, 18
  br label %nsec_high.exit1843

nsec_high.exit1843:                               ; preds = %if.end375.i1841, %if.end181.i1838
  %retval.0.i1842 = phi i64 [ %sub183.i1837, %if.end181.i1838 ], [ %div380564.i1840, %if.end375.i1841 ]
  %304 = tail call i64 @llvm.abs.i64(i64 %299, i1 false) #13
  %conv17.i1844 = trunc i64 %304 to i32
  %305 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %304) #17, !srcloc !854
  %306 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %304, i64 %305, i32 0) #17, !srcloc !855
  %asmresult10.i.i1845 = extractvalue { i64, i32 } %306, 0
  %div162263.i1846 = lshr i64 %asmresult10.i.i1845, 18
  %conv163.i1847 = trunc i64 %div162263.i1846 to i32
  %mul164.neg.i1848 = mul i32 %conv163.i1847, -1000000
  %sub165.i1849 = add i32 %mul164.neg.i1848, %conv17.i1844
  %call359 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.147, ptr noundef nonnull @.str.190, i64 noundef %retval.0.i1842, i32 noundef %sub165.i1849) #16
  %wait_count373 = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 29, i32 2
  %307 = ptrtoint ptr %wait_count373 to i32
  call void @__asan_load8_noabort(i32 %307)
  %308 = load i64, ptr %wait_count373, align 16
  %call374 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.158, ptr noundef nonnull @.str.193, i64 noundef %308) #16
  %iowait_sum392 = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 29, i32 5
  %309 = ptrtoint ptr %iowait_sum392 to i32
  call void @__asan_load8_noabort(i32 %309)
  %310 = load i64, ptr %iowait_sum392, align 8
  %cmp.i1850 = icmp slt i64 %310, 0
  br i1 %cmp.i1850, label %if.end181.i1855, label %if.end375.i1858

if.end181.i1855:                                  ; preds = %nsec_high.exit1843
  %sub.i1851 = sub i64 0, %310
  %311 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %sub.i1851) #17, !srcloc !854
  %312 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %sub.i1851, i64 %311, i32 0) #17, !srcloc !855
  %asmresult10.i.i1852 = extractvalue { i64, i32 } %312, 0
  %div161565.i1853 = lshr i64 %asmresult10.i.i1852, 18
  %sub183.i1854 = sub nsw i64 0, %div161565.i1853
  br label %nsec_high.exit1860

if.end375.i1858:                                  ; preds = %nsec_high.exit1843
  %313 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %310) #17, !srcloc !854
  %314 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %310, i64 %313, i32 0) #17, !srcloc !855
  %asmresult10.i566.i1856 = extractvalue { i64, i32 } %314, 0
  %div380564.i1857 = lshr i64 %asmresult10.i566.i1856, 18
  br label %nsec_high.exit1860

nsec_high.exit1860:                               ; preds = %if.end375.i1858, %if.end181.i1855
  %retval.0.i1859 = phi i64 [ %sub183.i1854, %if.end181.i1855 ], [ %div380564.i1857, %if.end375.i1858 ]
  %315 = tail call i64 @llvm.abs.i64(i64 %310, i1 false) #13
  %conv17.i1861 = trunc i64 %315 to i32
  %316 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %315) #17, !srcloc !854
  %317 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %315, i64 %316, i32 0) #17, !srcloc !855
  %asmresult10.i.i1862 = extractvalue { i64, i32 } %317, 0
  %div162263.i1863 = lshr i64 %asmresult10.i.i1862, 18
  %conv163.i1864 = trunc i64 %div162263.i1863 to i32
  %mul164.neg.i1865 = mul i32 %conv163.i1864, -1000000
  %sub165.i1866 = add i32 %mul164.neg.i1865, %conv17.i1861
  %call397 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.147, ptr noundef nonnull @.str.196, i64 noundef %retval.0.i1859, i32 noundef %sub165.i1866) #16
  %iowait_count411 = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 29, i32 4
  %318 = ptrtoint ptr %iowait_count411 to i32
  call void @__asan_load8_noabort(i32 %318)
  %319 = load i64, ptr %iowait_count411, align 32
  %call412 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.158, ptr noundef nonnull @.str.199, i64 noundef %319) #16
  %nr_migrations_cold426 = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 29, i32 14
  %320 = ptrtoint ptr %nr_migrations_cold426 to i32
  call void @__asan_load8_noabort(i32 %320)
  %321 = load i64, ptr %nr_migrations_cold426, align 16
  %call427 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.158, ptr noundef nonnull @.str.202, i64 noundef %321) #16
  %nr_failed_migrations_affine441 = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 29, i32 15
  %322 = ptrtoint ptr %nr_failed_migrations_affine441 to i32
  call void @__asan_load8_noabort(i32 %322)
  %323 = load i64, ptr %nr_failed_migrations_affine441, align 8
  %call442 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.158, ptr noundef nonnull @.str.205, i64 noundef %323) #16
  %nr_failed_migrations_running456 = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 29, i32 16
  %324 = ptrtoint ptr %nr_failed_migrations_running456 to i32
  call void @__asan_load8_noabort(i32 %324)
  %325 = load i64, ptr %nr_failed_migrations_running456, align 128
  %call457 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.158, ptr noundef nonnull @.str.208, i64 noundef %325) #16
  %nr_failed_migrations_hot471 = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 29, i32 17
  %326 = ptrtoint ptr %nr_failed_migrations_hot471 to i32
  call void @__asan_load8_noabort(i32 %326)
  %327 = load i64, ptr %nr_failed_migrations_hot471, align 8
  %call472 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.158, ptr noundef nonnull @.str.211, i64 noundef %327) #16
  %nr_forced_migrations486 = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 29, i32 18
  %328 = ptrtoint ptr %nr_forced_migrations486 to i32
  call void @__asan_load8_noabort(i32 %328)
  %329 = load i64, ptr %nr_forced_migrations486, align 16
  %call487 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.158, ptr noundef nonnull @.str.214, i64 noundef %329) #16
  %nr_wakeups501 = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 29, i32 19
  %330 = ptrtoint ptr %nr_wakeups501 to i32
  call void @__asan_load8_noabort(i32 %330)
  %331 = load i64, ptr %nr_wakeups501, align 8
  %call502 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.158, ptr noundef nonnull @.str.217, i64 noundef %331) #16
  %nr_wakeups_sync516 = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 29, i32 20
  %332 = ptrtoint ptr %nr_wakeups_sync516 to i32
  call void @__asan_load8_noabort(i32 %332)
  %333 = load i64, ptr %nr_wakeups_sync516, align 32
  %call517 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.158, ptr noundef nonnull @.str.220, i64 noundef %333) #16
  %nr_wakeups_migrate531 = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 29, i32 21
  %334 = ptrtoint ptr %nr_wakeups_migrate531 to i32
  call void @__asan_load8_noabort(i32 %334)
  %335 = load i64, ptr %nr_wakeups_migrate531, align 8
  %call532 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.158, ptr noundef nonnull @.str.223, i64 noundef %335) #16
  %nr_wakeups_local546 = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 29, i32 22
  %336 = ptrtoint ptr %nr_wakeups_local546 to i32
  call void @__asan_load8_noabort(i32 %336)
  %337 = load i64, ptr %nr_wakeups_local546, align 16
  %call547 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.158, ptr noundef nonnull @.str.226, i64 noundef %337) #16
  %nr_wakeups_remote561 = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 29, i32 23
  %338 = ptrtoint ptr %nr_wakeups_remote561 to i32
  call void @__asan_load8_noabort(i32 %338)
  %339 = load i64, ptr %nr_wakeups_remote561, align 8
  %call562 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.158, ptr noundef nonnull @.str.229, i64 noundef %339) #16
  %nr_wakeups_affine576 = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 29, i32 24
  %340 = ptrtoint ptr %nr_wakeups_affine576 to i32
  call void @__asan_load8_noabort(i32 %340)
  %341 = load i64, ptr %nr_wakeups_affine576, align 64
  %call577 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.158, ptr noundef nonnull @.str.232, i64 noundef %341) #16
  %nr_wakeups_affine_attempts591 = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 29, i32 25
  %342 = ptrtoint ptr %nr_wakeups_affine_attempts591 to i32
  call void @__asan_load8_noabort(i32 %342)
  %343 = load i64, ptr %nr_wakeups_affine_attempts591, align 8
  %call592 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.158, ptr noundef nonnull @.str.235, i64 noundef %343) #16
  %nr_wakeups_passive606 = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 29, i32 26
  %344 = ptrtoint ptr %nr_wakeups_passive606 to i32
  call void @__asan_load8_noabort(i32 %344)
  %345 = load i64, ptr %nr_wakeups_passive606, align 16
  %call607 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.158, ptr noundef nonnull @.str.238, i64 noundef %345) #16
  %nr_wakeups_idle621 = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 29, i32 27
  %346 = ptrtoint ptr %nr_wakeups_idle621 to i32
  call void @__asan_load8_noabort(i32 %346)
  %347 = load i64, ptr %nr_wakeups_idle621, align 8
  %call622 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.158, ptr noundef nonnull @.str.241, i64 noundef %347) #16
  br label %do.end625

do.end625:                                        ; preds = %nsec_high.exit1860, %nsec_high.exit1656
  %sum_exec_runtime627 = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 18, i32 5
  %tobool628.not = icmp eq i32 %add1981, 0
  br i1 %tobool628.not, label %if.end632, label %if.then629

if.then629:                                       ; preds = %do.end625
  %348 = ptrtoint ptr %sum_exec_runtime627 to i32
  call void @__asan_load8_noabort(i32 %348)
  %349 = load i64, ptr %sum_exec_runtime627, align 8
  %cmp164.i.i = icmp ult i64 %349, 4294967296
  br i1 %cmp164.i.i, label %if.then168.i.i, label %if.else174.i.i, !prof !853

if.then168.i.i:                                   ; preds = %if.then629
  %conv169.i.i = trunc i64 %349 to i32
  %div172.i.i = udiv i32 %conv169.i.i, %add1981
  %conv173.i.i = zext i32 %div172.i.i to i64
  br label %if.end632

if.else174.i.i:                                   ; preds = %if.then629
  %350 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %add1981, i64 %349) #17, !srcloc !861
  %asmresult1.i.i.i = extractvalue { i64, i64 } %350, 1
  br label %if.end632

if.end632:                                        ; preds = %if.else174.i.i, %if.then168.i.i, %do.end625
  %avg_atom.0 = phi i64 [ -1, %do.end625 ], [ %conv173.i.i, %if.then168.i.i ], [ %asmresult1.i.i.i, %if.else174.i.i ]
  %nr_migrations636 = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 18, i32 8
  %351 = ptrtoint ptr %nr_migrations636 to i32
  call void @__asan_load8_noabort(i32 %351)
  %352 = load i64, ptr %nr_migrations636, align 64
  %tobool637.not = icmp eq i64 %352, 0
  br i1 %tobool637.not, label %do.body644, label %if.then638

if.then638:                                       ; preds = %if.end632
  %353 = ptrtoint ptr %sum_exec_runtime627 to i32
  call void @__asan_load8_noabort(i32 %353)
  %354 = load i64, ptr %sum_exec_runtime627, align 8
  %call641 = tail call i64 @div64_u64(i64 noundef %354, i64 noundef %352) #13
  br label %do.body644

do.body644:                                       ; preds = %if.then638, %if.end632
  %avg_per_cpu.0 = phi i64 [ %call641, %if.then638 ], [ -1, %if.end632 ]
  %cmp.i1918 = icmp slt i64 %avg_atom.0, 0
  br i1 %tobool.not, label %do.end652, label %if.then646

if.then646:                                       ; preds = %do.body644
  br i1 %cmp.i1918, label %if.end181.i1872, label %if.end375.i1875

if.end181.i1872:                                  ; preds = %if.then646
  %sub.i1868 = sub i64 0, %avg_atom.0
  %355 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %sub.i1868) #17, !srcloc !854
  %356 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %sub.i1868, i64 %355, i32 0) #17, !srcloc !855
  %asmresult10.i.i1869 = extractvalue { i64, i32 } %356, 0
  %div161565.i1870 = lshr i64 %asmresult10.i.i1869, 18
  %sub183.i1871 = sub nsw i64 0, %div161565.i1870
  br label %nsec_high.exit1877

if.end375.i1875:                                  ; preds = %if.then646
  %357 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %avg_atom.0) #17, !srcloc !854
  %358 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %avg_atom.0, i64 %357, i32 0) #17, !srcloc !855
  %asmresult10.i566.i1873 = extractvalue { i64, i32 } %358, 0
  %div380564.i1874 = lshr i64 %asmresult10.i566.i1873, 18
  br label %nsec_high.exit1877

nsec_high.exit1877:                               ; preds = %if.end375.i1875, %if.end181.i1872
  %retval.0.i1876 = phi i64 [ %sub183.i1871, %if.end181.i1872 ], [ %div380564.i1874, %if.end375.i1875 ]
  %359 = tail call i64 @llvm.abs.i64(i64 %avg_atom.0, i1 false) #13
  %conv17.i1878 = trunc i64 %359 to i32
  %360 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %359) #17, !srcloc !854
  %361 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %359, i64 %360, i32 0) #17, !srcloc !855
  %asmresult10.i.i1879 = extractvalue { i64, i32 } %361, 0
  %div162263.i1880 = lshr i64 %asmresult10.i.i1879, 18
  %conv163.i1881 = trunc i64 %div162263.i1880 to i32
  %mul164.neg.i1882 = mul i32 %conv163.i1881, -1000000
  %sub165.i1883 = add i32 %mul164.neg.i1882, %conv17.i1878
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %m, ptr noundef nonnull @.str.144, ptr noundef nonnull @.str.244, i64 noundef %retval.0.i1876, i32 noundef %sub165.i1883) #13
  %cmp.i1884 = icmp slt i64 %avg_per_cpu.0, 0
  br i1 %cmp.i1884, label %if.end181.i1889, label %if.end375.i1892

if.end181.i1889:                                  ; preds = %nsec_high.exit1877
  %sub.i1885 = sub i64 0, %avg_per_cpu.0
  %362 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %sub.i1885) #17, !srcloc !854
  %363 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %sub.i1885, i64 %362, i32 0) #17, !srcloc !855
  %asmresult10.i.i1886 = extractvalue { i64, i32 } %363, 0
  %div161565.i1887 = lshr i64 %asmresult10.i.i1886, 18
  %sub183.i1888 = sub nsw i64 0, %div161565.i1887
  br label %nsec_high.exit1894

if.end375.i1892:                                  ; preds = %nsec_high.exit1877
  %364 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %avg_per_cpu.0) #17, !srcloc !854
  %365 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %avg_per_cpu.0, i64 %364, i32 0) #17, !srcloc !855
  %asmresult10.i566.i1890 = extractvalue { i64, i32 } %365, 0
  %div380564.i1891 = lshr i64 %asmresult10.i566.i1890, 18
  br label %nsec_high.exit1894

nsec_high.exit1894:                               ; preds = %if.end375.i1892, %if.end181.i1889
  %retval.0.i1893 = phi i64 [ %sub183.i1888, %if.end181.i1889 ], [ %div380564.i1891, %if.end375.i1892 ]
  %366 = tail call i64 @llvm.abs.i64(i64 %avg_per_cpu.0, i1 false) #13
  %conv17.i1895 = trunc i64 %366 to i32
  %367 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %366) #17, !srcloc !854
  %368 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %366, i64 %367, i32 0) #17, !srcloc !855
  %asmresult10.i.i1896 = extractvalue { i64, i32 } %368, 0
  %div162263.i1897 = lshr i64 %asmresult10.i.i1896, 18
  %conv163.i1898 = trunc i64 %div162263.i1897 to i32
  %mul164.neg.i1899 = mul i32 %conv163.i1898, -1000000
  %sub165.i1900 = add i32 %mul164.neg.i1899, %conv17.i1895
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %m, ptr noundef nonnull @.str.144, ptr noundef nonnull @.str.247, i64 noundef %retval.0.i1893, i32 noundef %sub165.i1900) #13
  %core_forceidle_sum = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 29, i32 28
  %369 = ptrtoint ptr %core_forceidle_sum to i32
  call void @__asan_load8_noabort(i32 %369)
  %370 = load i64, ptr %core_forceidle_sum, align 32
  %cmp.i1901 = icmp slt i64 %370, 0
  br i1 %cmp.i1901, label %if.end181.i1906, label %if.end375.i1909

if.end181.i1906:                                  ; preds = %nsec_high.exit1894
  %sub.i1902 = sub i64 0, %370
  %371 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %sub.i1902) #17, !srcloc !854
  %372 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %sub.i1902, i64 %371, i32 0) #17, !srcloc !855
  %asmresult10.i.i1903 = extractvalue { i64, i32 } %372, 0
  %div161565.i1904 = lshr i64 %asmresult10.i.i1903, 18
  %sub183.i1905 = sub nsw i64 0, %div161565.i1904
  br label %nsec_high.exit1911

if.end375.i1909:                                  ; preds = %nsec_high.exit1894
  %373 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %370) #17, !srcloc !854
  %374 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %370, i64 %373, i32 0) #17, !srcloc !855
  %asmresult10.i566.i1907 = extractvalue { i64, i32 } %374, 0
  %div380564.i1908 = lshr i64 %asmresult10.i566.i1907, 18
  br label %nsec_high.exit1911

nsec_high.exit1911:                               ; preds = %if.end375.i1909, %if.end181.i1906
  %retval.0.i1910 = phi i64 [ %sub183.i1905, %if.end181.i1906 ], [ %div380564.i1908, %if.end375.i1909 ]
  %375 = tail call i64 @llvm.abs.i64(i64 %370, i1 false) #13
  %conv17.i1912 = trunc i64 %375 to i32
  %376 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %375) #17, !srcloc !854
  %377 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %375, i64 %376, i32 0) #17, !srcloc !855
  %asmresult10.i.i1913 = extractvalue { i64, i32 } %377, 0
  %div162263.i1914 = lshr i64 %asmresult10.i.i1913, 18
  %conv163.i1915 = trunc i64 %div162263.i1914 to i32
  %mul164.neg.i1916 = mul i32 %conv163.i1915, -1000000
  %sub165.i1917 = add i32 %mul164.neg.i1916, %conv17.i1912
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %m, ptr noundef nonnull @.str.144, ptr noundef nonnull @.str.250, i64 noundef %retval.0.i1910, i32 noundef %sub165.i1917) #13
  br label %do.end1035.thread

do.end652:                                        ; preds = %do.body644
  br i1 %cmp.i1918, label %if.end181.i1923, label %if.end375.i1926

if.end181.i1923:                                  ; preds = %do.end652
  %sub.i1919 = sub i64 0, %avg_atom.0
  %378 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %sub.i1919) #17, !srcloc !854
  %379 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %sub.i1919, i64 %378, i32 0) #17, !srcloc !855
  %asmresult10.i.i1920 = extractvalue { i64, i32 } %379, 0
  %div161565.i1921 = lshr i64 %asmresult10.i.i1920, 18
  %sub183.i1922 = sub nsw i64 0, %div161565.i1921
  br label %nsec_high.exit1928

if.end375.i1926:                                  ; preds = %do.end652
  %380 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %avg_atom.0) #17, !srcloc !854
  %381 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %avg_atom.0, i64 %380, i32 0) #17, !srcloc !855
  %asmresult10.i566.i1924 = extractvalue { i64, i32 } %381, 0
  %div380564.i1925 = lshr i64 %asmresult10.i566.i1924, 18
  br label %nsec_high.exit1928

nsec_high.exit1928:                               ; preds = %if.end375.i1926, %if.end181.i1923
  %retval.0.i1927 = phi i64 [ %sub183.i1922, %if.end181.i1923 ], [ %div380564.i1925, %if.end375.i1926 ]
  %382 = tail call i64 @llvm.abs.i64(i64 %avg_atom.0, i1 false) #13
  %conv17.i1929 = trunc i64 %382 to i32
  %383 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %382) #17, !srcloc !854
  %384 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %382, i64 %383, i32 0) #17, !srcloc !855
  %asmresult10.i.i1930 = extractvalue { i64, i32 } %384, 0
  %div162263.i1931 = lshr i64 %asmresult10.i.i1930, 18
  %conv163.i1932 = trunc i64 %div162263.i1931 to i32
  %mul164.neg.i1933 = mul i32 %conv163.i1932, -1000000
  %sub165.i1934 = add i32 %mul164.neg.i1933, %conv17.i1929
  %call656 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.147, ptr noundef nonnull @.str.244, i64 noundef %retval.0.i1927, i32 noundef %sub165.i1934) #16
  %cmp.i1935 = icmp slt i64 %avg_per_cpu.0, 0
  br i1 %cmp.i1935, label %if.end181.i1940, label %if.end375.i1943

if.end181.i1940:                                  ; preds = %nsec_high.exit1928
  %sub.i1936 = sub i64 0, %avg_per_cpu.0
  %385 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %sub.i1936) #17, !srcloc !854
  %386 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %sub.i1936, i64 %385, i32 0) #17, !srcloc !855
  %asmresult10.i.i1937 = extractvalue { i64, i32 } %386, 0
  %div161565.i1938 = lshr i64 %asmresult10.i.i1937, 18
  %sub183.i1939 = sub nsw i64 0, %div161565.i1938
  br label %nsec_high.exit1945

if.end375.i1943:                                  ; preds = %nsec_high.exit1928
  %387 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %avg_per_cpu.0) #17, !srcloc !854
  %388 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %avg_per_cpu.0, i64 %387, i32 0) #17, !srcloc !855
  %asmresult10.i566.i1941 = extractvalue { i64, i32 } %388, 0
  %div380564.i1942 = lshr i64 %asmresult10.i566.i1941, 18
  br label %nsec_high.exit1945

nsec_high.exit1945:                               ; preds = %if.end375.i1943, %if.end181.i1940
  %retval.0.i1944 = phi i64 [ %sub183.i1939, %if.end181.i1940 ], [ %div380564.i1942, %if.end375.i1943 ]
  %389 = tail call i64 @llvm.abs.i64(i64 %avg_per_cpu.0, i1 false) #13
  %conv17.i1946 = trunc i64 %389 to i32
  %390 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %389) #17, !srcloc !854
  %391 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %389, i64 %390, i32 0) #17, !srcloc !855
  %asmresult10.i.i1947 = extractvalue { i64, i32 } %391, 0
  %div162263.i1948 = lshr i64 %asmresult10.i.i1947, 18
  %conv163.i1949 = trunc i64 %div162263.i1948 to i32
  %mul164.neg.i1950 = mul i32 %conv163.i1949, -1000000
  %sub165.i1951 = add i32 %mul164.neg.i1950, %conv17.i1946
  %call672 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.147, ptr noundef nonnull @.str.247, i64 noundef %retval.0.i1944, i32 noundef %sub165.i1951) #16
  %core_forceidle_sum690 = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 29, i32 28
  %392 = ptrtoint ptr %core_forceidle_sum690 to i32
  call void @__asan_load8_noabort(i32 %392)
  %393 = load i64, ptr %core_forceidle_sum690, align 32
  %cmp.i1952 = icmp slt i64 %393, 0
  br i1 %cmp.i1952, label %if.end181.i1957, label %if.end375.i1960

if.end181.i1957:                                  ; preds = %nsec_high.exit1945
  %sub.i1953 = sub i64 0, %393
  %394 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %sub.i1953) #17, !srcloc !854
  %395 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %sub.i1953, i64 %394, i32 0) #17, !srcloc !855
  %asmresult10.i.i1954 = extractvalue { i64, i32 } %395, 0
  %div161565.i1955 = lshr i64 %asmresult10.i.i1954, 18
  %sub183.i1956 = sub nsw i64 0, %div161565.i1955
  br label %nsec_high.exit1962

if.end375.i1960:                                  ; preds = %nsec_high.exit1945
  %396 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %393) #17, !srcloc !854
  %397 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %393, i64 %396, i32 0) #17, !srcloc !855
  %asmresult10.i566.i1958 = extractvalue { i64, i32 } %397, 0
  %div380564.i1959 = lshr i64 %asmresult10.i566.i1958, 18
  br label %nsec_high.exit1962

nsec_high.exit1962:                               ; preds = %if.end375.i1960, %if.end181.i1957
  %retval.0.i1961 = phi i64 [ %sub183.i1956, %if.end181.i1957 ], [ %div380564.i1959, %if.end375.i1960 ]
  %398 = tail call i64 @llvm.abs.i64(i64 %393, i1 false) #13
  %conv17.i1963 = trunc i64 %398 to i32
  %399 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %398) #17, !srcloc !854
  %400 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %398, i64 %399, i32 0) #17, !srcloc !855
  %asmresult10.i.i1964 = extractvalue { i64, i32 } %400, 0
  %div162263.i1965 = lshr i64 %asmresult10.i.i1964, 18
  %conv163.i1966 = trunc i64 %div162263.i1965 to i32
  %mul164.neg.i1967 = mul i32 %conv163.i1966, -1000000
  %sub165.i1968 = add i32 %mul164.neg.i1967, %conv17.i1963
  %call695 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.147, ptr noundef nonnull @.str.250, i64 noundef %retval.0.i1961, i32 noundef %sub165.i1968) #16
  br label %do.end1035

do.body700:                                       ; preds = %do.end104
  br i1 %tobool.not, label %do.end1035, label %do.end1035.thread

do.end1035:                                       ; preds = %do.body700, %nsec_high.exit1962
  %conv708 = zext i32 %add1981 to i64
  %call709 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.158, ptr noundef nonnull @.str.253, i64 noundef %conv708) #16
  %401 = ptrtoint ptr %nvcsw1975 to i32
  call void @__asan_load4_noabort(i32 %401)
  %402 = load i32, ptr %nvcsw1975, align 16
  %conv724 = zext i32 %402 to i64
  %call725 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.158, ptr noundef nonnull @.str.256, i64 noundef %conv724) #16
  %403 = ptrtoint ptr %nivcsw1978 to i32
  call void @__asan_load4_noabort(i32 %403)
  %404 = load i32, ptr %nivcsw1978, align 4
  %conv740 = zext i32 %404 to i64
  %call741 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.158, ptr noundef nonnull @.str.259, i64 noundef %conv740) #16
  %se755 = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 18
  %405 = ptrtoint ptr %se755 to i32
  call void @__asan_load4_noabort(i32 %405)
  %406 = load i32, ptr %se755, align 128
  %conv758 = zext i32 %406 to i64
  %call759 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.158, ptr noundef nonnull @.str.262, i64 noundef %conv758) #16
  %load_sum774 = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 18, i32 15, i32 1
  %407 = ptrtoint ptr %load_sum774 to i32
  call void @__asan_load8_noabort(i32 %407)
  %408 = load i64, ptr %load_sum774, align 8
  %call775 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.158, ptr noundef nonnull @.str.265, i64 noundef %408) #16
  %runnable_sum791 = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 18, i32 15, i32 2
  %409 = ptrtoint ptr %runnable_sum791 to i32
  call void @__asan_load8_noabort(i32 %409)
  %410 = load i64, ptr %runnable_sum791, align 16
  %call792 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.158, ptr noundef nonnull @.str.268, i64 noundef %410) #16
  %util_sum809 = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 18, i32 15, i32 3
  %411 = ptrtoint ptr %util_sum809 to i32
  call void @__asan_load4_noabort(i32 %411)
  %412 = load i32, ptr %util_sum809, align 8
  %conv810 = zext i32 %412 to i64
  %call811 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.158, ptr noundef nonnull @.str.271, i64 noundef %conv810) #16
  %load_avg828 = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 18, i32 15, i32 5
  %413 = ptrtoint ptr %load_avg828 to i32
  call void @__asan_load4_noabort(i32 %413)
  %414 = load i32, ptr %load_avg828, align 32
  %conv829 = zext i32 %414 to i64
  %call830 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.158, ptr noundef nonnull @.str.274, i64 noundef %conv829) #16
  %runnable_avg847 = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 18, i32 15, i32 6
  %415 = ptrtoint ptr %runnable_avg847 to i32
  call void @__asan_load4_noabort(i32 %415)
  %416 = load i32, ptr %runnable_avg847, align 4
  %conv848 = zext i32 %416 to i64
  %call849 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.158, ptr noundef nonnull @.str.277, i64 noundef %conv848) #16
  %util_avg866 = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 18, i32 15, i32 7
  %417 = ptrtoint ptr %util_avg866 to i32
  call void @__asan_load4_noabort(i32 %417)
  %418 = load i32, ptr %util_avg866, align 8
  %conv867 = zext i32 %418 to i64
  %call868 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.158, ptr noundef nonnull @.str.280, i64 noundef %conv867) #16
  %avg883 = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 18, i32 15
  %419 = ptrtoint ptr %avg883 to i32
  call void @__asan_load8_noabort(i32 %419)
  %420 = load i64, ptr %avg883, align 128
  %call885 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.158, ptr noundef nonnull @.str.283, i64 noundef %420) #16
  %ewma903 = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 18, i32 15, i32 9, i32 1
  %421 = ptrtoint ptr %ewma903 to i32
  call void @__asan_load4_noabort(i32 %421)
  %422 = load i32, ptr %ewma903, align 4
  %conv904 = zext i32 %422 to i64
  %call905 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.158, ptr noundef nonnull @.str.286, i64 noundef %conv904) #16
  %util_est923 = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 18, i32 15, i32 9
  %423 = ptrtoint ptr %util_est923 to i32
  call void @__asan_load4_noabort(i32 %423)
  %424 = load i32, ptr %util_est923, align 16
  %and925 = and i32 %424, 2147483647
  %conv926 = zext i32 %and925 to i64
  %call927 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.158, ptr noundef nonnull @.str.289, i64 noundef %conv926) #16
  %uclamp_req940 = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 26
  %425 = ptrtoint ptr %uclamp_req940 to i32
  call void @__asan_load2_noabort(i32 %425)
  %bf.load942 = load i16, ptr %uclamp_req940, align 4
  %bf.lshr943 = lshr i16 %bf.load942, 5
  %conv945 = zext i16 %bf.lshr943 to i64
  %call946 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.158, ptr noundef nonnull @.str.292, i64 noundef %conv945) #16
  %arrayidx965 = getelementptr %struct.task_struct, ptr %p, i32 0, i32 26, i32 1
  %426 = ptrtoint ptr %arrayidx965 to i32
  call void @__asan_load2_noabort(i32 %426)
  %bf.load966 = load i16, ptr %arrayidx965, align 4
  %bf.lshr967 = lshr i16 %bf.load966, 5
  %conv969 = zext i16 %bf.lshr967 to i64
  %call970 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.158, ptr noundef nonnull @.str.295, i64 noundef %conv969) #16
  %call984 = tail call i32 @uclamp_eff_value(ptr noundef %p, i32 noundef 0) #13
  %conv985 = zext i32 %call984 to i64
  %call986 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.158, ptr noundef nonnull @.str.298, i64 noundef %conv985) #16
  %call1000 = tail call i32 @uclamp_eff_value(ptr noundef %p, i32 noundef 1) #13
  %conv1001 = zext i32 %call1000 to i64
  %call1002 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.158, ptr noundef nonnull @.str.301, i64 noundef %conv1001) #16
  %policy1015 = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 31
  %427 = ptrtoint ptr %policy1015 to i32
  call void @__asan_load4_noabort(i32 %427)
  %428 = load i32, ptr %policy1015, align 4
  %conv1016 = zext i32 %428 to i64
  %call1017 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.158, ptr noundef nonnull @.str.304, i64 noundef %conv1016) #16
  %prio1030 = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 13
  %429 = ptrtoint ptr %prio1030 to i32
  call void @__asan_load4_noabort(i32 %429)
  %430 = load i32, ptr %prio1030, align 8
  %conv1031 = sext i32 %430 to i64
  %call1032 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.158, ptr noundef nonnull @.str.307, i64 noundef %conv1031) #16
  %431 = ptrtoint ptr %policy1015 to i32
  call void @__asan_load4_noabort(i32 %431)
  %432 = load i32, ptr %policy1015, align 4
  %cmp.i.i1969.not = icmp eq i32 %432, 6
  br i1 %cmp.i.i1969.not, label %do.end1045, label %if.end1068

do.end1035.thread:                                ; preds = %do.body700, %nsec_high.exit1911
  %conv = zext i32 %add1981 to i64
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %m, ptr noundef nonnull @.str.155, ptr noundef nonnull @.str.253, i64 noundef %conv) #13
  %433 = ptrtoint ptr %nvcsw1975 to i32
  call void @__asan_load4_noabort(i32 %433)
  %434 = load i32, ptr %nvcsw1975, align 16
  %conv717 = zext i32 %434 to i64
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %m, ptr noundef nonnull @.str.155, ptr noundef nonnull @.str.256, i64 noundef %conv717) #13
  %435 = ptrtoint ptr %nivcsw1978 to i32
  call void @__asan_load4_noabort(i32 %435)
  %436 = load i32, ptr %nivcsw1978, align 4
  %conv733 = zext i32 %436 to i64
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %m, ptr noundef nonnull @.str.155, ptr noundef nonnull @.str.259, i64 noundef %conv733) #13
  %se748 = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 18
  %437 = ptrtoint ptr %se748 to i32
  call void @__asan_load4_noabort(i32 %437)
  %438 = load i32, ptr %se748, align 128
  %conv749 = zext i32 %438 to i64
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %m, ptr noundef nonnull @.str.155, ptr noundef nonnull @.str.262, i64 noundef %conv749) #13
  %load_sum = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 18, i32 15, i32 1
  %439 = ptrtoint ptr %load_sum to i32
  call void @__asan_load8_noabort(i32 %439)
  %440 = load i64, ptr %load_sum, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %m, ptr noundef nonnull @.str.155, ptr noundef nonnull @.str.265, i64 noundef %440) #13
  %runnable_sum = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 18, i32 15, i32 2
  %441 = ptrtoint ptr %runnable_sum to i32
  call void @__asan_load8_noabort(i32 %441)
  %442 = load i64, ptr %runnable_sum, align 16
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %m, ptr noundef nonnull @.str.155, ptr noundef nonnull @.str.268, i64 noundef %442) #13
  %util_sum = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 18, i32 15, i32 3
  %443 = ptrtoint ptr %util_sum to i32
  call void @__asan_load4_noabort(i32 %443)
  %444 = load i32, ptr %util_sum, align 8
  %conv801 = zext i32 %444 to i64
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %m, ptr noundef nonnull @.str.155, ptr noundef nonnull @.str.271, i64 noundef %conv801) #13
  %load_avg = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 18, i32 15, i32 5
  %445 = ptrtoint ptr %load_avg to i32
  call void @__asan_load4_noabort(i32 %445)
  %446 = load i32, ptr %load_avg, align 32
  %conv820 = zext i32 %446 to i64
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %m, ptr noundef nonnull @.str.155, ptr noundef nonnull @.str.274, i64 noundef %conv820) #13
  %runnable_avg = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 18, i32 15, i32 6
  %447 = ptrtoint ptr %runnable_avg to i32
  call void @__asan_load4_noabort(i32 %447)
  %448 = load i32, ptr %runnable_avg, align 4
  %conv839 = zext i32 %448 to i64
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %m, ptr noundef nonnull @.str.155, ptr noundef nonnull @.str.277, i64 noundef %conv839) #13
  %util_avg = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 18, i32 15, i32 7
  %449 = ptrtoint ptr %util_avg to i32
  call void @__asan_load4_noabort(i32 %449)
  %450 = load i32, ptr %util_avg, align 8
  %conv858 = zext i32 %450 to i64
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %m, ptr noundef nonnull @.str.155, ptr noundef nonnull @.str.280, i64 noundef %conv858) #13
  %avg876 = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 18, i32 15
  %451 = ptrtoint ptr %avg876 to i32
  call void @__asan_load8_noabort(i32 %451)
  %452 = load i64, ptr %avg876, align 128
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %m, ptr noundef nonnull @.str.155, ptr noundef nonnull @.str.283, i64 noundef %452) #13
  %ewma = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 18, i32 15, i32 9, i32 1
  %453 = ptrtoint ptr %ewma to i32
  call void @__asan_load4_noabort(i32 %453)
  %454 = load i32, ptr %ewma, align 4
  %conv894 = zext i32 %454 to i64
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %m, ptr noundef nonnull @.str.155, ptr noundef nonnull @.str.286, i64 noundef %conv894) #13
  %util_est914 = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 18, i32 15, i32 9
  %455 = ptrtoint ptr %util_est914 to i32
  call void @__asan_load4_noabort(i32 %455)
  %456 = load i32, ptr %util_est914, align 16
  %and = and i32 %456, 2147483647
  %conv915 = zext i32 %and to i64
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %m, ptr noundef nonnull @.str.155, ptr noundef nonnull @.str.289, i64 noundef %conv915) #13
  %uclamp_req = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 26
  %457 = ptrtoint ptr %uclamp_req to i32
  call void @__asan_load2_noabort(i32 %457)
  %bf.load = load i16, ptr %uclamp_req, align 4
  %bf.lshr = lshr i16 %bf.load, 5
  %conv934 = zext i16 %bf.lshr to i64
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %m, ptr noundef nonnull @.str.155, ptr noundef nonnull @.str.292, i64 noundef %conv934) #13
  %arrayidx954 = getelementptr %struct.task_struct, ptr %p, i32 0, i32 26, i32 1
  %458 = ptrtoint ptr %arrayidx954 to i32
  call void @__asan_load2_noabort(i32 %458)
  %bf.load955 = load i16, ptr %arrayidx954, align 4
  %bf.lshr956 = lshr i16 %bf.load955, 5
  %conv958 = zext i16 %bf.lshr956 to i64
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %m, ptr noundef nonnull @.str.155, ptr noundef nonnull @.str.295, i64 noundef %conv958) #13
  %call977 = tail call i32 @uclamp_eff_value(ptr noundef %p, i32 noundef 0) #13
  %conv978 = zext i32 %call977 to i64
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %m, ptr noundef nonnull @.str.155, ptr noundef nonnull @.str.298, i64 noundef %conv978) #13
  %call993 = tail call i32 @uclamp_eff_value(ptr noundef %p, i32 noundef 1) #13
  %conv994 = zext i32 %call993 to i64
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %m, ptr noundef nonnull @.str.155, ptr noundef nonnull @.str.301, i64 noundef %conv994) #13
  %policy = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 31
  %459 = ptrtoint ptr %policy to i32
  call void @__asan_load4_noabort(i32 %459)
  %460 = load i32, ptr %policy, align 4
  %conv1009 = zext i32 %460 to i64
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %m, ptr noundef nonnull @.str.155, ptr noundef nonnull @.str.304, i64 noundef %conv1009) #13
  %prio = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 13
  %461 = ptrtoint ptr %prio to i32
  call void @__asan_load4_noabort(i32 %461)
  %462 = load i32, ptr %prio, align 8
  %conv1024 = sext i32 %462 to i64
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %m, ptr noundef nonnull @.str.155, ptr noundef nonnull @.str.307, i64 noundef %conv1024) #13
  %463 = ptrtoint ptr %policy to i32
  call void @__asan_load4_noabort(i32 %463)
  %464 = load i32, ptr %policy, align 4
  %cmp.i.i19691987.not = icmp eq i32 %464, 6
  br i1 %cmp.i.i19691987.not, label %if.then1041, label %if.end1068

if.then1041:                                      ; preds = %do.end1035.thread
  %runtime = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 20, i32 6
  %465 = ptrtoint ptr %runtime to i32
  call void @__asan_load8_noabort(i32 %465)
  %466 = load i64, ptr %runtime, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %m, ptr noundef nonnull @.str.155, ptr noundef nonnull @.str.310, i64 noundef %466) #13
  %deadline = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 20, i32 7
  %467 = ptrtoint ptr %deadline to i32
  call void @__asan_load8_noabort(i32 %467)
  %468 = load i64, ptr %deadline, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %m, ptr noundef nonnull @.str.155, ptr noundef nonnull @.str.313, i64 noundef %468) #13
  br label %if.end1068

do.end1045:                                       ; preds = %do.end1035
  %runtime1048 = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 20, i32 6
  %469 = ptrtoint ptr %runtime1048 to i32
  call void @__asan_load8_noabort(i32 %469)
  %470 = load i64, ptr %runtime1048, align 8
  %call1049 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.158, ptr noundef nonnull @.str.310, i64 noundef %470) #16
  %deadline1063 = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 20, i32 7
  %471 = ptrtoint ptr %deadline1063 to i32
  call void @__asan_load8_noabort(i32 %471)
  %472 = load i64, ptr %deadline1063, align 8
  %call1064 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.158, ptr noundef nonnull @.str.313, i64 noundef %472) #16
  br label %if.end1068

if.end1068:                                       ; preds = %do.end1045, %if.then1041, %do.end1035.thread, %do.end1035
  %call.i1970 = tail call i64 @sched_clock() #13
  %call.i1971 = tail call i64 @sched_clock() #13
  %sub1080 = sub i64 %call.i1971, %call.i1970
  br i1 %tobool.not, label %do.end1078, label %if.then1074

if.then1074:                                      ; preds = %if.end1068
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %m, ptr noundef nonnull @.str.155, ptr noundef nonnull @.str.316, i64 noundef %sub1080) #13
  br label %do.end1084

do.end1078:                                       ; preds = %if.end1068
  %call1081 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.158, ptr noundef nonnull @.str.316, i64 noundef %sub1080) #16
  br label %do.end1084

do.end1084:                                       ; preds = %do.end1078, %if.then1074
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_u64(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uclamp_eff_value(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @proc_sched_set_task(ptr nocapture noundef writeonly %p) local_unnamed_addr #7 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %stats = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 29
  %0 = call ptr @memset(ptr %stats, i32 0, i32 256)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @resched_latency_warn(i32 noundef %cpu, i64 noundef %latency) local_unnamed_addr #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @___ratelimit(ptr noundef nonnull @resched_latency_warn.latency_check_ratelimit, ptr noundef nonnull @__func__.resched_latency_warn) #13
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end, !prof !853

do.end:                                           ; preds = %entry
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %cpu
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %add = add i32 %1, ptrtoint (ptr @runqueues to i32)
  %2 = inttoptr i32 %add to ptr
  %ticks_without_resched = getelementptr inbounds %struct.rq, ptr %2, i32 0, i32 33
  %3 = ptrtoint ptr %ticks_without_resched to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ticks_without_resched, align 32
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1089, i32 noundef 9, ptr noundef nonnull @.str.320, i32 noundef %cpu, i64 noundef %latency, i32 noundef %4) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_bool(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_u32(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sched_feat_write(ptr nocapture noundef readonly %filp, ptr noundef %ubuf, i32 noundef %cnt, ptr nocapture noundef %ppos) #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %buf = alloca [64 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %buf) #13
  %0 = call ptr @memset(ptr %buf, i32 255, i32 64)
  %1 = tail call i32 @llvm.umin.i32(i32 %cnt, i32 63)
  call void @__check_object_size(ptr noundef nonnull %buf, i32 noundef %1, i1 noundef zeroext false) #13
  call void @__might_fault(ptr noundef nonnull @.str.336, i32 noundef 156) #13
  %call.i.i = call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i, label %if.end.i.i, label %land.lhs.true.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %2 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %ubuf, i32 %1, i32 -1226833920) #17, !srcloc !862
  %asmresult.i.i = extractvalue { i32, i32 } %2, 0
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %if.end.i.i, !prof !853

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %buf, i32 noundef %1) #13
  %3 = call i32 @llvm.read_register.i32(metadata !843) #13
  %and.i.i.i.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 4
  %5 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #12, !srcloc !863
  %and.i.i.i.i = and i32 %5, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #13, !srcloc !864
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !865
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %buf, ptr noundef %ubuf, i32 noundef %1) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %5) #13, !srcloc !864
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !865
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i, %entry
  %res.0.i.i = phi i32 [ %1, %entry ], [ %call1.i.i.i, %if.then.i7.i ], [ %1, %land.lhs.true.i.i ]
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end3, label %if.then11.i.i, !prof !853

if.then11.i.i:                                    ; preds = %if.end.i.i
  %sub.i.i = sub i32 %1, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %buf, i32 %sub.i.i
  %6 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %cleanup

if.end3:                                          ; preds = %if.end.i.i
  %arrayidx = getelementptr [64 x i8], ptr %buf, i32 0, i32 %1
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %arrayidx, align 1
  %call.i = call ptr @strim(ptr noundef nonnull %buf) #13
  %f_inode.i = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 2
  %8 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %f_inode.i, align 8
  call void @cpus_read_lock() #13
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %9, i32 0, i32 25
  call void @down_write(ptr noundef %i_rwsem.i) #13
  %call.i19 = call i32 @strncmp(ptr noundef %call.i, ptr noundef nonnull dereferenceable(4) @.str.337, i32 noundef 3) #13
  %cmp1.i = icmp eq i32 %call.i19, 0
  %spec.select.idx.i = select i1 %cmp1.i, i32 3, i32 0
  %spec.select.i = getelementptr i8, ptr %call.i, i32 %spec.select.idx.i
  %call2.i = call i32 @match_string(ptr noundef nonnull @sched_feat_names, i32 noundef 25, ptr noundef %spec.select.i) #13
  %cmp3.i = icmp slt i32 %call2.i, 0
  br i1 %cmp3.i, label %sched_feat_set.exit, label %if.end5.i

if.end5.i:                                        ; preds = %if.end3
  %shl.i = shl nuw i32 1, %call2.i
  br i1 %cmp1.i, label %if.then6.i, label %if.else.i

if.then6.i:                                       ; preds = %if.end5.i
  %neg7.i = xor i32 %shl.i, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sysctl_sched_features to i32))
  %10 = load i32, ptr @sysctl_sched_features, align 4
  %and.i = and i32 %10, %neg7.i
  store i32 %and.i, ptr @sysctl_sched_features, align 4
  %arrayidx.i.i = getelementptr [25 x %struct.static_key], ptr @sched_feat_keys, i32 0, i32 %call2.i
  call void @static_key_disable_cpuslocked(ptr noundef %arrayidx.i.i) #13
  br label %sched_feat_set.exit

if.else.i:                                        ; preds = %if.end5.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sysctl_sched_features to i32))
  %11 = load i32, ptr @sysctl_sched_features, align 4
  %or.i = or i32 %11, %shl.i
  store i32 %or.i, ptr @sysctl_sched_features, align 4
  %arrayidx.i18.i = getelementptr [25 x %struct.static_key], ptr @sched_feat_keys, i32 0, i32 %call2.i
  call void @static_key_enable_cpuslocked(ptr noundef %arrayidx.i18.i) #13
  br label %sched_feat_set.exit

sched_feat_set.exit:                              ; preds = %if.else.i, %if.then6.i, %if.end3
  %retval.0.i = phi i32 [ %call2.i, %if.end3 ], [ 0, %if.else.i ], [ 0, %if.then6.i ]
  call void @up_write(ptr noundef %i_rwsem.i) #13
  call void @cpus_read_unlock() #13
  %cmp7 = icmp slt i32 %retval.0.i, 0
  br i1 %cmp7, label %cleanup, label %if.end9

if.end9:                                          ; preds = %sched_feat_set.exit
  %conv = zext i32 %1 to i64
  %12 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %ppos, align 8
  %add = add i64 %13, %conv
  store i64 %add, ptr %ppos, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %sched_feat_set.exit, %if.then11.i.i
  %retval.0 = phi i32 [ %1, %if.end9 ], [ %retval.0.i, %sched_feat_set.exit ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buf) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sched_feat_open(ptr nocapture noundef readnone %inode, ptr noundef %filp) #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @single_open(ptr noundef %filp, ptr noundef nonnull @sched_feat_show, ptr noundef null) #13
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpus_read_lock() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpus_read_unlock() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strim(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @match_string(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @static_key_disable_cpuslocked(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @static_key_enable_cpuslocked(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sched_feat_show(ptr noundef %m, ptr nocapture noundef readnone %v) #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %if.end, %entry
  %i.06 = phi i32 [ 0, %entry ], [ %inc, %if.end ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sysctl_sched_features to i32))
  %0 = load i32, ptr @sysctl_sched_features, align 4
  %shl = shl nuw nsw i32 1, %i.06
  %and = and i32 %0, %shl
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.337) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %arrayidx = getelementptr [25 x ptr], ptr @sched_feat_names, i32 0, i32 %i.06
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.363, ptr noundef %2) #13
  %inc = add nuw nsw i32 %i.06, 1
  %exitcond.not = icmp eq i32 %inc, 25
  br i1 %exitcond.not, label %for.end, label %for.body

for.end:                                          ; preds = %if.end
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.5) #13
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sched_scaling_write(ptr nocapture noundef readnone %filp, ptr noundef %ubuf, i32 noundef %cnt, ptr nocapture noundef %ppos) #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %buf = alloca [16 x i8], align 1
  %scaling = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %buf) #13
  %0 = call ptr @memset(ptr %buf, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %scaling) #13
  %1 = ptrtoint ptr %scaling to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %scaling, align 4, !annotation !866
  %2 = tail call i32 @llvm.umin.i32(i32 %cnt, i32 15)
  call void @__check_object_size(ptr noundef nonnull %buf, i32 noundef %2, i1 noundef zeroext false) #13
  call void @__might_fault(ptr noundef nonnull @.str.336, i32 noundef 156) #13
  %call.i.i = call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i, label %if.end.i.i, label %land.lhs.true.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %3 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %ubuf, i32 %2, i32 -1226833920) #17, !srcloc !862
  %asmresult.i.i = extractvalue { i32, i32 } %3, 0
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %if.end.i.i, !prof !853

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %buf, i32 noundef %2) #13
  %4 = call i32 @llvm.read_register.i32(metadata !843) #13
  %and.i.i.i.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 4
  %6 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #12, !srcloc !863
  %and.i.i.i.i = and i32 %6, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #13, !srcloc !864
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !865
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %buf, ptr noundef %ubuf, i32 noundef %2) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %6) #13, !srcloc !864
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !865
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i, %entry
  %res.0.i.i = phi i32 [ %2, %entry ], [ %call1.i.i.i, %if.then.i7.i ], [ %2, %land.lhs.true.i.i ]
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end2, label %if.then11.i.i, !prof !853

if.then11.i.i:                                    ; preds = %if.end.i.i
  %sub.i.i = sub i32 %2, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %buf, i32 %sub.i.i
  %7 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %cleanup

if.end2:                                          ; preds = %if.end.i.i
  %arrayidx = getelementptr [16 x i8], ptr %buf, i32 0, i32 %2
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %arrayidx, align 1
  %call3 = call i32 @kstrtouint(ptr noundef nonnull %buf, i32 noundef 10, ptr noundef nonnull %scaling) #13
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %cleanup

if.end6:                                          ; preds = %if.end2
  %9 = ptrtoint ptr %scaling to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %scaling, align 4
  %cmp7 = icmp ugt i32 %10, 2
  br i1 %cmp7, label %cleanup, label %if.end9

if.end9:                                          ; preds = %if.end6
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @sysctl_sched_tunable_scaling to i32))
  store i32 %10, ptr @sysctl_sched_tunable_scaling, align 4
  %call10 = call i32 @sched_update_scaling() #13
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %cleanup

if.end13:                                         ; preds = %if.end9
  %conv = zext i32 %2 to i64
  %11 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %ppos, align 8
  %add = add i64 %12, %conv
  store i64 %add, ptr %ppos, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.end9, %if.end6, %if.end2, %if.then11.i.i
  %retval.0 = phi i32 [ %2, %if.end13 ], [ -22, %if.end2 ], [ -22, %if.end6 ], [ -22, %if.end9 ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %scaling) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %buf) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sched_scaling_open(ptr nocapture noundef readnone %inode, ptr noundef %filp) #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @single_open(ptr noundef %filp, ptr noundef nonnull @sched_scaling_show, ptr noundef null) #13
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sched_update_scaling() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sched_scaling_show(ptr noundef %m, ptr nocapture noundef readnone %v) #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sysctl_sched_tunable_scaling to i32))
  %0 = load i32, ptr @sysctl_sched_tunable_scaling, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.364, i32 noundef %0) #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sched_debug_open(ptr nocapture noundef readnone %inode, ptr noundef %filp) #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @seq_open(ptr noundef %filp, ptr noundef nonnull @sched_debug_sops) #13
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_release(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_open(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @sched_debug_start(ptr nocapture noundef readnone %file, ptr nocapture noundef %offset) #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %offset, align 8
  %conv = trunc i64 %1 to i32
  switch i32 %conv, label %if.then4 [
    i32 0, label %cleanup
    i32 1, label %if.else
  ]

if.then4:                                         ; preds = %entry
  %sub = add i32 %conv, -2
  %call = tail call i32 @cpumask_next(i32 noundef %sub, ptr noundef nonnull @__cpu_online_mask) #15
  br label %if.end6

if.else:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %2 = load i32, ptr @nr_cpu_ids, align 4
  %call.i = tail call i32 @_find_first_bit_be(ptr noundef nonnull @__cpu_online_mask, i32 noundef %2) #13
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then4
  %n.0 = phi i32 [ %call, %if.then4 ], [ %call.i, %if.else ]
  %add = add i32 %n.0, 1
  %conv7 = zext i32 %add to i64
  %3 = ptrtoint ptr %offset to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %conv7, ptr %offset, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  %cmp8 = icmp ult i32 %n.0, %4
  br i1 %cmp8, label %if.then10, label %cleanup

if.then10:                                        ; preds = %if.end6
  %add11 = add i32 %n.0, 2
  %5 = inttoptr i32 %add11 to ptr
  br label %cleanup

cleanup:                                          ; preds = %if.then10, %if.end6, %entry
  %retval.0 = phi ptr [ %5, %if.then10 ], [ inttoptr (i32 1 to ptr), %entry ], [ null, %if.end6 ]
  ret ptr %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @sched_debug_stop(ptr nocapture noundef %file, ptr nocapture noundef %data) #9 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @sched_debug_next(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %data, ptr nocapture noundef %offset) #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %offset, align 8
  %inc = add i64 %1, 1
  store i64 %inc, ptr %offset, align 8
  %conv.i = trunc i64 %inc to i32
  switch i32 %conv.i, label %if.then4.i [
    i32 0, label %sched_debug_start.exit
    i32 1, label %if.else.i
  ]

if.then4.i:                                       ; preds = %entry
  %sub.i = add i32 %conv.i, -2
  %call.i = tail call i32 @cpumask_next(i32 noundef %sub.i, ptr noundef nonnull @__cpu_online_mask) #15
  br label %if.end6.i

if.else.i:                                        ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %2 = load i32, ptr @nr_cpu_ids, align 4
  %call.i.i = tail call i32 @_find_first_bit_be(ptr noundef nonnull @__cpu_online_mask, i32 noundef %2) #13
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.else.i, %if.then4.i
  %n.0.i = phi i32 [ %call.i, %if.then4.i ], [ %call.i.i, %if.else.i ]
  %add.i = add i32 %n.0.i, 1
  %conv7.i = zext i32 %add.i to i64
  %3 = ptrtoint ptr %offset to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %conv7.i, ptr %offset, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  %cmp8.i = icmp ult i32 %n.0.i, %4
  br i1 %cmp8.i, label %if.then10.i, label %sched_debug_start.exit

if.then10.i:                                      ; preds = %if.end6.i
  %add11.i = add i32 %n.0.i, 2
  %5 = inttoptr i32 %add11.i to ptr
  br label %sched_debug_start.exit

sched_debug_start.exit:                           ; preds = %if.then10.i, %if.end6.i, %entry
  %retval.0.i = phi ptr [ %5, %if.then10.i ], [ inttoptr (i32 1 to ptr), %entry ], [ null, %if.end6.i ]
  ret ptr %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sched_debug_show(ptr noundef %m, ptr noundef %v) #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %v, i32 -2
  %cmp.not = icmp eq ptr %add.ptr, inttoptr (i32 -1 to ptr)
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %0 = ptrtoint ptr %add.ptr to i32
  tail call fastcc void @print_cpu(ptr noundef %m, i32 noundef %0)
  br label %if.end

if.else:                                          ; preds = %entry
  tail call fastcc void @sched_debug_header(ptr noundef %m)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_ulong(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_u64(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_str(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_flags_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @sd_flags_show, ptr noundef %1) #13
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_flags_show(ptr noundef %m, ptr nocapture noundef readnone %v) #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags) #13
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %flags, align 4
  %call = call i32 @_find_next_bit_be(ptr noundef nonnull %flags, i32 noundef 14, i32 noundef 0) #13
  %cmp7 = icmp slt i32 %call, 14
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %for.body, %entry
  %idx.08 = phi i32 [ %call1, %for.body ], [ %call, %entry ]
  %name = getelementptr [0 x %struct.sd_flag_debug], ptr @sd_flag_debug, i32 0, i32 %idx.08, i32 1
  %5 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %name, align 4
  call void @seq_puts(ptr noundef %m, ptr noundef %6) #13
  call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.373) #13
  %add = add nsw i32 %idx.08, 1
  %call1 = call i32 @_find_next_bit_be(ptr noundef nonnull %flags, i32 noundef 14, i32 noundef %add) #13
  %cmp = icmp slt i32 %call1, 14
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %entry
  call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.5) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags) #13
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_trylock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @autogroup_path(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernfs_path_from_node(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @raw_spin_rq_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @raw_spin_rq_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @sched_clock() local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @touch_softlockup_watchdog() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_cfs_stats(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_rt_stats(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_dl_stats(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @print_rq(ptr noundef %m, ptr nocapture noundef readonly %rq, i32 noundef %rq_cpu) unnamed_addr #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %m, null
  br i1 %tobool.not, label %do.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %m, ptr noundef nonnull @.str.5) #13
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %m, ptr noundef nonnull @.str.523) #13
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %m, ptr noundef nonnull @.str.527) #13
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %m, ptr noundef nonnull @.str.531) #13
  br label %do.end39

do.end:                                           ; preds = %entry
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #16
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.525) #16
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.529) #16
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.533) #16
  br label %do.end39

do.end39:                                         ; preds = %do.end, %if.then
  %0 = tail call i32 @llvm.read_register.i32(metadata !843) #13
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !867
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #13
  %call.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i, label %rcu_read_lock.exit, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %do.end39
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %rcu_read_lock.exit, label %land.lhs.true2.i

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %rcu_read_lock.exit, label %if.then.i

if.then.i:                                        ; preds = %land.lhs.true2.i
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.536, i32 noundef 696, ptr noundef nonnull @.str.537) #13
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i, %land.lhs.true.i, %do.end39
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.task_struct, ptr @init_task, i32 0, i32 50) to i32))
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.task_struct, ptr @init_task, i32 0, i32 50), align 16
  %add.ptr112 = getelementptr i8, ptr %4, i32 -1136
  %cmp.not113 = icmp eq ptr %add.ptr112, @init_task
  br i1 %cmp.not113, label %for.end82, label %do.body45

for.cond.loopexit:                                ; preds = %for.inc, %do.end55
  %5 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %7, align 16
  %add.ptr = getelementptr i8, ptr %6, i32 -1136
  %cmp.not = icmp eq ptr %add.ptr, @init_task
  br i1 %cmp.not, label %for.end82, label %do.body45

do.body45:                                        ; preds = %for.cond.loopexit, %rcu_read_lock.exit
  %7 = phi ptr [ %6, %for.cond.loopexit ], [ %4, %rcu_read_lock.exit ]
  %call46 = tail call i32 @rcu_read_lock_any_held() #13
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %land.lhs.true, label %do.end55

land.lhs.true:                                    ; preds = %do.body45
  %call48 = tail call i32 @debug_lockdep_rcu_enabled() #13
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %do.end55, label %land.lhs.true50

land.lhs.true50:                                  ; preds = %land.lhs.true
  %.b96 = load i1, ptr @print_rq.__warned, align 1
  br i1 %.b96, label %do.end55, label %if.then52

if.then52:                                        ; preds = %land.lhs.true50
  store i1 true, ptr @print_rq.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 572, ptr noundef nonnull @.str.535) #13
  br label %do.end55

do.end55:                                         ; preds = %if.then52, %land.lhs.true50, %land.lhs.true, %do.body45
  %signal = getelementptr i8, ptr %7, i32 544
  %8 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %signal, align 16
  %thread_head = getelementptr inbounds %struct.signal_struct, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %thread_head to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn106 = load volatile ptr, ptr %thread_head, align 4
  %cmp67.not109 = icmp eq ptr %.pn106, %thread_head
  br i1 %cmp67.not109, label %for.cond.loopexit, label %for.body68

for.body68:                                       ; preds = %for.inc, %do.end55
  %.pn110 = phi ptr [ %.pn, %for.inc ], [ %.pn106, %do.end55 ]
  %stack.i = getelementptr i8, ptr %.pn110, i32 -1400
  %11 = ptrtoint ptr %stack.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %stack.i, align 4
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %cpu.i, align 4
  %cmp70.not = icmp eq i32 %14, %rq_cpu
  br i1 %cmp70.not, label %if.end72, label %for.inc

if.end72:                                         ; preds = %for.body68
  %p.0111 = getelementptr i8, ptr %.pn110, i32 -1404
  tail call fastcc void @print_task(ptr noundef %m, ptr noundef %rq, ptr noundef %p.0111)
  br label %for.inc

for.inc:                                          ; preds = %if.end72, %for.body68
  %15 = ptrtoint ptr %.pn110 to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pn = load volatile ptr, ptr %.pn110, align 4
  %16 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %signal, align 16
  %thread_head66 = getelementptr inbounds %struct.signal_struct, ptr %17, i32 0, i32 3
  %cmp67.not = icmp eq ptr %.pn, %thread_head66
  br i1 %cmp67.not, label %for.cond.loopexit, label %for.body68

for.end82:                                        ; preds = %for.cond.loopexit, %rcu_read_lock.exit
  %call.i97 = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i97, label %rcu_read_unlock.exit, label %land.lhs.true.i100

land.lhs.true.i100:                               ; preds = %for.end82
  %call1.i98 = tail call i32 @debug_lockdep_rcu_enabled() #13
  %tobool.not.i99 = icmp eq i32 %call1.i98, 0
  br i1 %tobool.not.i99, label %rcu_read_unlock.exit, label %land.lhs.true2.i102

land.lhs.true2.i102:                              ; preds = %land.lhs.true.i100
  %.b4.i101 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i101, label %rcu_read_unlock.exit, label %if.then.i103

if.then.i103:                                     ; preds = %land.lhs.true2.i102
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.536, i32 noundef 724, ptr noundef nonnull @.str.561) #13
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i103, %land.lhs.true2.i102, %land.lhs.true.i100, %for.end82
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !868
  %18 = tail call i32 @llvm.read_register.i32(metadata !843) #13
  %and.i.i.i.i.i104 = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i.i.i104 to ptr
  %preempt_count.i.i.i.i105 = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i.i.i105 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i.i.i105, align 4
  %sub.i.i.i = add i32 %21, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i105, align 4
  tail call void @rcu_read_unlock_strict() #13
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @print_task(ptr noundef %m, ptr nocapture noundef readonly %rq, ptr noundef %p) unnamed_addr #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %buf = alloca [128 x i8], align 1
  %curr.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 20
  %0 = ptrtoint ptr %curr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %curr.i, align 8
  %cmp.i.not = icmp eq ptr %1, %p
  %tobool1.not = icmp eq ptr %m, null
  br i1 %cmp.i.not, label %do.body, label %do.body7

do.body:                                          ; preds = %entry
  br i1 %tobool1.not, label %do.end, label %if.then2

if.then2:                                         ; preds = %do.body
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %m, ptr noundef nonnull @.str.538) #13
  br label %if.then23

do.end:                                           ; preds = %do.body
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.539) #16
  br label %do.end32

do.body7:                                         ; preds = %entry
  %2 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %p, align 128
  %exit_state.i.i403 = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 57
  %4 = ptrtoint ptr %exit_state.i.i403 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %exit_state.i.i403, align 4
  %or.i.i404 = or i32 %5, %3
  %and.i.i405 = and i32 %or.i.i404, 127
  %cmp.i.i406 = icmp eq i32 %3, 1026
  %spec.store.select.i.i407 = select i1 %cmp.i.i406, i32 128, i32 %and.i.i405
  %tobool.not.i.i.i408 = icmp eq i32 %spec.store.select.i.i407, 0
  %6 = tail call i32 @llvm.ctlz.i32(i32 %spec.store.select.i.i407, i1 true) #13, !range !869
  %sub.i.i.i409 = sub nuw nsw i32 32, %6
  %cond.i.i.i410 = select i1 %tobool.not.i.i.i408, i32 0, i32 %sub.i.i.i409
  %arrayidx.i.i411 = getelementptr [10 x i8], ptr @task_index_to_char.state_char, i32 0, i32 %cond.i.i.i410
  %7 = ptrtoint ptr %arrayidx.i.i411 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx.i.i411, align 1
  %conv16 = zext i8 %8 to i32
  br i1 %tobool1.not, label %do.end13, label %if.then9

if.then9:                                         ; preds = %do.body7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %m, ptr noundef nonnull @.str.541, i32 noundef %conv16) #13
  br label %if.then23

do.end13:                                         ; preds = %do.body7
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.543, i32 noundef %conv16) #16
  br label %do.end32

if.then23:                                        ; preds = %if.then9, %if.then2
  %comm = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 101
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 68
  %9 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pid.i, align 8
  %vruntime = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 18, i32 6
  %11 = ptrtoint ptr %vruntime to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %vruntime, align 16
  %cmp.i412 = icmp slt i64 %12, 0
  br i1 %cmp.i412, label %if.end181.i, label %if.end375.i

if.end181.i:                                      ; preds = %if.then23
  %sub.i = sub i64 0, %12
  %13 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %sub.i) #17, !srcloc !854
  %14 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %sub.i, i64 %13, i32 0) #17, !srcloc !855
  %asmresult10.i.i = extractvalue { i64, i32 } %14, 0
  %div161565.i = lshr i64 %asmresult10.i.i, 18
  %sub183.i = sub nsw i64 0, %div161565.i
  br label %nsec_high.exit

if.end375.i:                                      ; preds = %if.then23
  %15 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %12) #17, !srcloc !854
  %16 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %12, i64 %15, i32 0) #17, !srcloc !855
  %asmresult10.i566.i = extractvalue { i64, i32 } %16, 0
  %div380564.i = lshr i64 %asmresult10.i566.i, 18
  br label %nsec_high.exit

nsec_high.exit:                                   ; preds = %if.end375.i, %if.end181.i
  %retval.0.i413 = phi i64 [ %sub183.i, %if.end181.i ], [ %div380564.i, %if.end375.i ]
  %17 = tail call i64 @llvm.abs.i64(i64 %12, i1 false) #13
  %conv17.i = trunc i64 %17 to i32
  %18 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %17) #17, !srcloc !854
  %19 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %17, i64 %18, i32 0) #17, !srcloc !855
  %asmresult10.i.i414 = extractvalue { i64, i32 } %19, 0
  %div162263.i = lshr i64 %asmresult10.i.i414, 18
  %conv163.i = trunc i64 %div162263.i to i32
  %mul164.neg.i = mul i32 %conv163.i, -1000000
  %sub165.i = add i32 %mul164.neg.i, %conv17.i
  %nvcsw = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 90
  %20 = ptrtoint ptr %nvcsw to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %nvcsw, align 16
  %nivcsw = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 91
  %22 = ptrtoint ptr %nivcsw to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %nivcsw, align 4
  %add = add i32 %23, %21
  %conv29 = zext i32 %add to i64
  %prio = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 13
  %24 = ptrtoint ptr %prio to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %prio, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %m, ptr noundef nonnull @.str.545, ptr noundef %comm, i32 noundef %10, i64 noundef %retval.0.i413, i32 noundef %sub165.i, i64 noundef %conv29, i32 noundef %25) #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @sched_schedstats, ptr blockaddress(@print_task, %cond.true)) #13
          to label %cond.end [label %cond.true], !srcloc !860

do.end32:                                         ; preds = %do.end13, %do.end
  %comm34 = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 101
  %pid.i415 = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 68
  %26 = ptrtoint ptr %pid.i415 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pid.i415, align 8
  %vruntime38 = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 18, i32 6
  %28 = ptrtoint ptr %vruntime38 to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %vruntime38, align 16
  %cmp.i416 = icmp slt i64 %29, 0
  br i1 %cmp.i416, label %if.end181.i421, label %if.end375.i424

if.end181.i421:                                   ; preds = %do.end32
  %sub.i417 = sub i64 0, %29
  %30 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %sub.i417) #17, !srcloc !854
  %31 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %sub.i417, i64 %30, i32 0) #17, !srcloc !855
  %asmresult10.i.i418 = extractvalue { i64, i32 } %31, 0
  %div161565.i419 = lshr i64 %asmresult10.i.i418, 18
  %sub183.i420 = sub nsw i64 0, %div161565.i419
  br label %nsec_high.exit426

if.end375.i424:                                   ; preds = %do.end32
  %32 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %29) #17, !srcloc !854
  %33 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %29, i64 %32, i32 0) #17, !srcloc !855
  %asmresult10.i566.i422 = extractvalue { i64, i32 } %33, 0
  %div380564.i423 = lshr i64 %asmresult10.i566.i422, 18
  br label %nsec_high.exit426

nsec_high.exit426:                                ; preds = %if.end375.i424, %if.end181.i421
  %retval.0.i425 = phi i64 [ %sub183.i420, %if.end181.i421 ], [ %div380564.i423, %if.end375.i424 ]
  %34 = tail call i64 @llvm.abs.i64(i64 %29, i1 false) #13
  %conv17.i427 = trunc i64 %34 to i32
  %35 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %34) #17, !srcloc !854
  %36 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %34, i64 %35, i32 0) #17, !srcloc !855
  %asmresult10.i.i428 = extractvalue { i64, i32 } %36, 0
  %div162263.i429 = lshr i64 %asmresult10.i.i428, 18
  %conv163.i430 = trunc i64 %div162263.i429 to i32
  %mul164.neg.i431 = mul i32 %conv163.i430, -1000000
  %sub165.i432 = add i32 %mul164.neg.i431, %conv17.i427
  %nvcsw43 = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 90
  %37 = ptrtoint ptr %nvcsw43 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %nvcsw43, align 16
  %nivcsw44 = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 91
  %39 = ptrtoint ptr %nivcsw44 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %nivcsw44, align 4
  %add45 = add i32 %40, %38
  %conv46 = zext i32 %add45 to i64
  %prio47 = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 13
  %41 = ptrtoint ptr %prio47 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %prio47, align 8
  %call48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.547, ptr noundef %comm34, i32 noundef %27, i64 noundef %retval.0.i425, i32 noundef %sub165.i432, i64 noundef %conv46, i32 noundef %42) #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @sched_schedstats, ptr blockaddress(@print_task, %cond.true168)) #13
          to label %cond.end172 [label %cond.true168], !srcloc !860

cond.true:                                        ; preds = %nsec_high.exit
  %wait_sum = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 29, i32 3
  %43 = ptrtoint ptr %wait_sum to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %wait_sum, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %nsec_high.exit
  %cond = phi i64 [ %44, %cond.true ], [ 0, %nsec_high.exit ]
  %cmp.i433 = icmp slt i64 %cond, 0
  br i1 %cmp.i433, label %if.end181.i438, label %if.end375.i441

if.end181.i438:                                   ; preds = %cond.end
  %sub.i434 = sub i64 0, %cond
  %45 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %sub.i434) #17, !srcloc !854
  %46 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %sub.i434, i64 %45, i32 0) #17, !srcloc !855
  %asmresult10.i.i435 = extractvalue { i64, i32 } %46, 0
  %div161565.i436 = lshr i64 %asmresult10.i.i435, 18
  %sub183.i437 = sub nsw i64 0, %div161565.i436
  br label %nsec_high.exit443

if.end375.i441:                                   ; preds = %cond.end
  %47 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %cond) #17, !srcloc !854
  %48 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %cond, i64 %47, i32 0) #17, !srcloc !855
  %asmresult10.i566.i439 = extractvalue { i64, i32 } %48, 0
  %div380564.i440 = lshr i64 %asmresult10.i566.i439, 18
  br label %nsec_high.exit443

nsec_high.exit443:                                ; preds = %if.end375.i441, %if.end181.i438
  %retval.0.i442 = phi i64 [ %sub183.i437, %if.end181.i438 ], [ %div380564.i440, %if.end375.i441 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @sched_schedstats, ptr blockaddress(@print_task, %cond.true71)) #13
          to label %cond.end75 [label %cond.true71], !srcloc !860

cond.true71:                                      ; preds = %nsec_high.exit443
  %wait_sum73 = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 29, i32 3
  %49 = ptrtoint ptr %wait_sum73 to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %wait_sum73, align 8
  br label %cond.end75

cond.end75:                                       ; preds = %cond.true71, %nsec_high.exit443
  %cond76 = phi i64 [ %50, %cond.true71 ], [ 0, %nsec_high.exit443 ]
  %51 = tail call i64 @llvm.abs.i64(i64 %cond76, i1 false) #13
  %conv17.i444 = trunc i64 %51 to i32
  %52 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %51) #17, !srcloc !854
  %53 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %51, i64 %52, i32 0) #17, !srcloc !855
  %asmresult10.i.i445 = extractvalue { i64, i32 } %53, 0
  %div162263.i446 = lshr i64 %asmresult10.i.i445, 18
  %conv163.i447 = trunc i64 %div162263.i446 to i32
  %mul164.neg.i448 = mul i32 %conv163.i447, -1000000
  %sub165.i449 = add i32 %mul164.neg.i448, %conv17.i444
  %sum_exec_runtime = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 18, i32 5
  %54 = ptrtoint ptr %sum_exec_runtime to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %sum_exec_runtime, align 8
  %cmp.i450 = icmp slt i64 %55, 0
  br i1 %cmp.i450, label %if.end181.i455, label %if.end375.i458

if.end181.i455:                                   ; preds = %cond.end75
  %sub.i451 = sub i64 0, %55
  %56 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %sub.i451) #17, !srcloc !854
  %57 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %sub.i451, i64 %56, i32 0) #17, !srcloc !855
  %asmresult10.i.i452 = extractvalue { i64, i32 } %57, 0
  %div161565.i453 = lshr i64 %asmresult10.i.i452, 18
  %sub183.i454 = sub nsw i64 0, %div161565.i453
  br label %nsec_high.exit460

if.end375.i458:                                   ; preds = %cond.end75
  %58 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %55) #17, !srcloc !854
  %59 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %55, i64 %58, i32 0) #17, !srcloc !855
  %asmresult10.i566.i456 = extractvalue { i64, i32 } %59, 0
  %div380564.i457 = lshr i64 %asmresult10.i566.i456, 18
  br label %nsec_high.exit460

nsec_high.exit460:                                ; preds = %if.end375.i458, %if.end181.i455
  %retval.0.i459 = phi i64 [ %sub183.i454, %if.end181.i455 ], [ %div380564.i457, %if.end375.i458 ]
  %60 = tail call i64 @llvm.abs.i64(i64 %55, i1 false) #13
  %conv17.i461 = trunc i64 %60 to i32
  %61 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %60) #17, !srcloc !854
  %62 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %60, i64 %61, i32 0) #17, !srcloc !855
  %asmresult10.i.i462 = extractvalue { i64, i32 } %62, 0
  %div162263.i463 = lshr i64 %asmresult10.i.i462, 18
  %conv163.i464 = trunc i64 %div162263.i463 to i32
  %mul164.neg.i465 = mul i32 %conv163.i464, -1000000
  %sub165.i466 = add i32 %mul164.neg.i465, %conv17.i461
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @sched_schedstats, ptr blockaddress(@print_task, %cond.true94)) #13
          to label %cond.end97 [label %cond.true94], !srcloc !860

cond.true94:                                      ; preds = %nsec_high.exit460
  %sum_sleep_runtime = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 29, i32 8
  %63 = ptrtoint ptr %sum_sleep_runtime to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %sum_sleep_runtime, align 64
  br label %cond.end97

cond.end97:                                       ; preds = %cond.true94, %nsec_high.exit460
  %cond98 = phi i64 [ %64, %cond.true94 ], [ 0, %nsec_high.exit460 ]
  %cmp.i467 = icmp slt i64 %cond98, 0
  br i1 %cmp.i467, label %if.end181.i472, label %if.end375.i475

if.end181.i472:                                   ; preds = %cond.end97
  %sub.i468 = sub i64 0, %cond98
  %65 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %sub.i468) #17, !srcloc !854
  %66 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %sub.i468, i64 %65, i32 0) #17, !srcloc !855
  %asmresult10.i.i469 = extractvalue { i64, i32 } %66, 0
  %div161565.i470 = lshr i64 %asmresult10.i.i469, 18
  %sub183.i471 = sub nsw i64 0, %div161565.i470
  br label %nsec_high.exit477

if.end375.i475:                                   ; preds = %cond.end97
  %67 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %cond98) #17, !srcloc !854
  %68 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %cond98, i64 %67, i32 0) #17, !srcloc !855
  %asmresult10.i566.i473 = extractvalue { i64, i32 } %68, 0
  %div380564.i474 = lshr i64 %asmresult10.i566.i473, 18
  br label %nsec_high.exit477

nsec_high.exit477:                                ; preds = %if.end375.i475, %if.end181.i472
  %retval.0.i476 = phi i64 [ %sub183.i471, %if.end181.i472 ], [ %div380564.i474, %if.end375.i475 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @sched_schedstats, ptr blockaddress(@print_task, %cond.true111)) #13
          to label %cond.end115 [label %cond.true111], !srcloc !860

cond.true111:                                     ; preds = %nsec_high.exit477
  %sum_sleep_runtime113 = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 29, i32 8
  %69 = ptrtoint ptr %sum_sleep_runtime113 to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %sum_sleep_runtime113, align 64
  br label %cond.end115

cond.end115:                                      ; preds = %cond.true111, %nsec_high.exit477
  %cond116 = phi i64 [ %70, %cond.true111 ], [ 0, %nsec_high.exit477 ]
  %71 = tail call i64 @llvm.abs.i64(i64 %cond116, i1 false) #13
  %conv17.i478 = trunc i64 %71 to i32
  %72 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %71) #17, !srcloc !854
  %73 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %71, i64 %72, i32 0) #17, !srcloc !855
  %asmresult10.i.i479 = extractvalue { i64, i32 } %73, 0
  %div162263.i480 = lshr i64 %asmresult10.i.i479, 18
  %conv163.i481 = trunc i64 %div162263.i480 to i32
  %mul164.neg.i482 = mul i32 %conv163.i481, -1000000
  %sub165.i483 = add i32 %mul164.neg.i482, %conv17.i478
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @sched_schedstats, ptr blockaddress(@print_task, %cond.true129)) #13
          to label %cond.end132 [label %cond.true129], !srcloc !860

cond.true129:                                     ; preds = %cond.end115
  %sum_block_runtime = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 29, i32 11
  %74 = ptrtoint ptr %sum_block_runtime to i32
  call void @__asan_load8_noabort(i32 %74)
  %75 = load i64, ptr %sum_block_runtime, align 8
  br label %cond.end132

cond.end132:                                      ; preds = %cond.true129, %cond.end115
  %cond133 = phi i64 [ %75, %cond.true129 ], [ 0, %cond.end115 ]
  %cmp.i484 = icmp slt i64 %cond133, 0
  br i1 %cmp.i484, label %if.end181.i489, label %if.end375.i492

if.end181.i489:                                   ; preds = %cond.end132
  %sub.i485 = sub i64 0, %cond133
  %76 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %sub.i485) #17, !srcloc !854
  %77 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %sub.i485, i64 %76, i32 0) #17, !srcloc !855
  %asmresult10.i.i486 = extractvalue { i64, i32 } %77, 0
  %div161565.i487 = lshr i64 %asmresult10.i.i486, 18
  %sub183.i488 = sub nsw i64 0, %div161565.i487
  br label %nsec_high.exit494

if.end375.i492:                                   ; preds = %cond.end132
  %78 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %cond133) #17, !srcloc !854
  %79 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %cond133, i64 %78, i32 0) #17, !srcloc !855
  %asmresult10.i566.i490 = extractvalue { i64, i32 } %79, 0
  %div380564.i491 = lshr i64 %asmresult10.i566.i490, 18
  br label %nsec_high.exit494

nsec_high.exit494:                                ; preds = %if.end375.i492, %if.end181.i489
  %retval.0.i493 = phi i64 [ %sub183.i488, %if.end181.i489 ], [ %div380564.i491, %if.end375.i492 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @sched_schedstats, ptr blockaddress(@print_task, %cond.true146)) #13
          to label %cond.end150 [label %cond.true146], !srcloc !860

cond.true146:                                     ; preds = %nsec_high.exit494
  %sum_block_runtime148 = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 29, i32 11
  %80 = ptrtoint ptr %sum_block_runtime148 to i32
  call void @__asan_load8_noabort(i32 %80)
  %81 = load i64, ptr %sum_block_runtime148, align 8
  br label %cond.end150

cond.end150:                                      ; preds = %cond.true146, %nsec_high.exit494
  %cond151 = phi i64 [ %81, %cond.true146 ], [ 0, %nsec_high.exit494 ]
  %82 = tail call i64 @llvm.abs.i64(i64 %cond151, i1 false) #13
  %conv17.i495 = trunc i64 %82 to i32
  %83 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %82) #17, !srcloc !854
  %84 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %82, i64 %83, i32 0) #17, !srcloc !855
  %asmresult10.i.i496 = extractvalue { i64, i32 } %84, 0
  %div162263.i497 = lshr i64 %asmresult10.i.i496, 18
  %conv163.i498 = trunc i64 %div162263.i497 to i32
  %mul164.neg.i499 = mul i32 %conv163.i498, -1000000
  %sub165.i500 = add i32 %mul164.neg.i499, %conv17.i495
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %m, ptr noundef nonnull @.str.549, i64 noundef %retval.0.i442, i32 noundef %sub165.i449, i64 noundef %retval.0.i459, i32 noundef %sub165.i466, i64 noundef %retval.0.i476, i32 noundef %sub165.i483, i64 noundef %retval.0.i493, i32 noundef %sub165.i500) #13
  br label %do.end273

cond.true168:                                     ; preds = %nsec_high.exit426
  %wait_sum170 = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 29, i32 3
  %85 = ptrtoint ptr %wait_sum170 to i32
  call void @__asan_load8_noabort(i32 %85)
  %86 = load i64, ptr %wait_sum170, align 8
  br label %cond.end172

cond.end172:                                      ; preds = %cond.true168, %nsec_high.exit426
  %cond173 = phi i64 [ %86, %cond.true168 ], [ 0, %nsec_high.exit426 ]
  %cmp.i501 = icmp slt i64 %cond173, 0
  br i1 %cmp.i501, label %if.end181.i506, label %if.end375.i509

if.end181.i506:                                   ; preds = %cond.end172
  %sub.i502 = sub i64 0, %cond173
  %87 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %sub.i502) #17, !srcloc !854
  %88 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %sub.i502, i64 %87, i32 0) #17, !srcloc !855
  %asmresult10.i.i503 = extractvalue { i64, i32 } %88, 0
  %div161565.i504 = lshr i64 %asmresult10.i.i503, 18
  %sub183.i505 = sub nsw i64 0, %div161565.i504
  br label %nsec_high.exit511

if.end375.i509:                                   ; preds = %cond.end172
  %89 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %cond173) #17, !srcloc !854
  %90 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %cond173, i64 %89, i32 0) #17, !srcloc !855
  %asmresult10.i566.i507 = extractvalue { i64, i32 } %90, 0
  %div380564.i508 = lshr i64 %asmresult10.i566.i507, 18
  br label %nsec_high.exit511

nsec_high.exit511:                                ; preds = %if.end375.i509, %if.end181.i506
  %retval.0.i510 = phi i64 [ %sub183.i505, %if.end181.i506 ], [ %div380564.i508, %if.end375.i509 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @sched_schedstats, ptr blockaddress(@print_task, %cond.true186)) #13
          to label %cond.end190 [label %cond.true186], !srcloc !860

cond.true186:                                     ; preds = %nsec_high.exit511
  %wait_sum188 = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 29, i32 3
  %91 = ptrtoint ptr %wait_sum188 to i32
  call void @__asan_load8_noabort(i32 %91)
  %92 = load i64, ptr %wait_sum188, align 8
  br label %cond.end190

cond.end190:                                      ; preds = %cond.true186, %nsec_high.exit511
  %cond191 = phi i64 [ %92, %cond.true186 ], [ 0, %nsec_high.exit511 ]
  %93 = tail call i64 @llvm.abs.i64(i64 %cond191, i1 false) #13
  %conv17.i512 = trunc i64 %93 to i32
  %94 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %93) #17, !srcloc !854
  %95 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %93, i64 %94, i32 0) #17, !srcloc !855
  %asmresult10.i.i513 = extractvalue { i64, i32 } %95, 0
  %div162263.i514 = lshr i64 %asmresult10.i.i513, 18
  %conv163.i515 = trunc i64 %div162263.i514 to i32
  %mul164.neg.i516 = mul i32 %conv163.i515, -1000000
  %sub165.i517 = add i32 %mul164.neg.i516, %conv17.i512
  %sum_exec_runtime194 = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 18, i32 5
  %96 = ptrtoint ptr %sum_exec_runtime194 to i32
  call void @__asan_load8_noabort(i32 %96)
  %97 = load i64, ptr %sum_exec_runtime194, align 8
  %cmp.i518 = icmp slt i64 %97, 0
  br i1 %cmp.i518, label %if.end181.i523, label %if.end375.i526

if.end181.i523:                                   ; preds = %cond.end190
  %sub.i519 = sub i64 0, %97
  %98 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %sub.i519) #17, !srcloc !854
  %99 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %sub.i519, i64 %98, i32 0) #17, !srcloc !855
  %asmresult10.i.i520 = extractvalue { i64, i32 } %99, 0
  %div161565.i521 = lshr i64 %asmresult10.i.i520, 18
  %sub183.i522 = sub nsw i64 0, %div161565.i521
  br label %nsec_high.exit528

if.end375.i526:                                   ; preds = %cond.end190
  %100 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %97) #17, !srcloc !854
  %101 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %97, i64 %100, i32 0) #17, !srcloc !855
  %asmresult10.i566.i524 = extractvalue { i64, i32 } %101, 0
  %div380564.i525 = lshr i64 %asmresult10.i566.i524, 18
  br label %nsec_high.exit528

nsec_high.exit528:                                ; preds = %if.end375.i526, %if.end181.i523
  %retval.0.i527 = phi i64 [ %sub183.i522, %if.end181.i523 ], [ %div380564.i525, %if.end375.i526 ]
  %102 = tail call i64 @llvm.abs.i64(i64 %97, i1 false) #13
  %conv17.i529 = trunc i64 %102 to i32
  %103 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %102) #17, !srcloc !854
  %104 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %102, i64 %103, i32 0) #17, !srcloc !855
  %asmresult10.i.i530 = extractvalue { i64, i32 } %104, 0
  %div162263.i531 = lshr i64 %asmresult10.i.i530, 18
  %conv163.i532 = trunc i64 %div162263.i531 to i32
  %mul164.neg.i533 = mul i32 %conv163.i532, -1000000
  %sub165.i534 = add i32 %mul164.neg.i533, %conv17.i529
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @sched_schedstats, ptr blockaddress(@print_task, %cond.true210)) #13
          to label %cond.end214 [label %cond.true210], !srcloc !860

cond.true210:                                     ; preds = %nsec_high.exit528
  %sum_sleep_runtime212 = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 29, i32 8
  %105 = ptrtoint ptr %sum_sleep_runtime212 to i32
  call void @__asan_load8_noabort(i32 %105)
  %106 = load i64, ptr %sum_sleep_runtime212, align 64
  br label %cond.end214

cond.end214:                                      ; preds = %cond.true210, %nsec_high.exit528
  %cond215 = phi i64 [ %106, %cond.true210 ], [ 0, %nsec_high.exit528 ]
  %cmp.i535 = icmp slt i64 %cond215, 0
  br i1 %cmp.i535, label %if.end181.i540, label %if.end375.i543

if.end181.i540:                                   ; preds = %cond.end214
  %sub.i536 = sub i64 0, %cond215
  %107 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %sub.i536) #17, !srcloc !854
  %108 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %sub.i536, i64 %107, i32 0) #17, !srcloc !855
  %asmresult10.i.i537 = extractvalue { i64, i32 } %108, 0
  %div161565.i538 = lshr i64 %asmresult10.i.i537, 18
  %sub183.i539 = sub nsw i64 0, %div161565.i538
  br label %nsec_high.exit545

if.end375.i543:                                   ; preds = %cond.end214
  %109 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %cond215) #17, !srcloc !854
  %110 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %cond215, i64 %109, i32 0) #17, !srcloc !855
  %asmresult10.i566.i541 = extractvalue { i64, i32 } %110, 0
  %div380564.i542 = lshr i64 %asmresult10.i566.i541, 18
  br label %nsec_high.exit545

nsec_high.exit545:                                ; preds = %if.end375.i543, %if.end181.i540
  %retval.0.i544 = phi i64 [ %sub183.i539, %if.end181.i540 ], [ %div380564.i542, %if.end375.i543 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @sched_schedstats, ptr blockaddress(@print_task, %cond.true228)) #13
          to label %cond.end232 [label %cond.true228], !srcloc !860

cond.true228:                                     ; preds = %nsec_high.exit545
  %sum_sleep_runtime230 = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 29, i32 8
  %111 = ptrtoint ptr %sum_sleep_runtime230 to i32
  call void @__asan_load8_noabort(i32 %111)
  %112 = load i64, ptr %sum_sleep_runtime230, align 64
  br label %cond.end232

cond.end232:                                      ; preds = %cond.true228, %nsec_high.exit545
  %cond233 = phi i64 [ %112, %cond.true228 ], [ 0, %nsec_high.exit545 ]
  %113 = tail call i64 @llvm.abs.i64(i64 %cond233, i1 false) #13
  %conv17.i546 = trunc i64 %113 to i32
  %114 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %113) #17, !srcloc !854
  %115 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %113, i64 %114, i32 0) #17, !srcloc !855
  %asmresult10.i.i547 = extractvalue { i64, i32 } %115, 0
  %div162263.i548 = lshr i64 %asmresult10.i.i547, 18
  %conv163.i549 = trunc i64 %div162263.i548 to i32
  %mul164.neg.i550 = mul i32 %conv163.i549, -1000000
  %sub165.i551 = add i32 %mul164.neg.i550, %conv17.i546
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @sched_schedstats, ptr blockaddress(@print_task, %cond.true246)) #13
          to label %cond.end250 [label %cond.true246], !srcloc !860

cond.true246:                                     ; preds = %cond.end232
  %sum_block_runtime248 = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 29, i32 11
  %116 = ptrtoint ptr %sum_block_runtime248 to i32
  call void @__asan_load8_noabort(i32 %116)
  %117 = load i64, ptr %sum_block_runtime248, align 8
  br label %cond.end250

cond.end250:                                      ; preds = %cond.true246, %cond.end232
  %cond251 = phi i64 [ %117, %cond.true246 ], [ 0, %cond.end232 ]
  %cmp.i552 = icmp slt i64 %cond251, 0
  br i1 %cmp.i552, label %if.end181.i557, label %if.end375.i560

if.end181.i557:                                   ; preds = %cond.end250
  %sub.i553 = sub i64 0, %cond251
  %118 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %sub.i553) #17, !srcloc !854
  %119 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %sub.i553, i64 %118, i32 0) #17, !srcloc !855
  %asmresult10.i.i554 = extractvalue { i64, i32 } %119, 0
  %div161565.i555 = lshr i64 %asmresult10.i.i554, 18
  %sub183.i556 = sub nsw i64 0, %div161565.i555
  br label %nsec_high.exit562

if.end375.i560:                                   ; preds = %cond.end250
  %120 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %cond251) #17, !srcloc !854
  %121 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %cond251, i64 %120, i32 0) #17, !srcloc !855
  %asmresult10.i566.i558 = extractvalue { i64, i32 } %121, 0
  %div380564.i559 = lshr i64 %asmresult10.i566.i558, 18
  br label %nsec_high.exit562

nsec_high.exit562:                                ; preds = %if.end375.i560, %if.end181.i557
  %retval.0.i561 = phi i64 [ %sub183.i556, %if.end181.i557 ], [ %div380564.i559, %if.end375.i560 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @sched_schedstats, ptr blockaddress(@print_task, %cond.true264)) #13
          to label %cond.end268 [label %cond.true264], !srcloc !860

cond.true264:                                     ; preds = %nsec_high.exit562
  %sum_block_runtime266 = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 29, i32 11
  %122 = ptrtoint ptr %sum_block_runtime266 to i32
  call void @__asan_load8_noabort(i32 %122)
  %123 = load i64, ptr %sum_block_runtime266, align 8
  br label %cond.end268

cond.end268:                                      ; preds = %cond.true264, %nsec_high.exit562
  %cond269 = phi i64 [ %123, %cond.true264 ], [ 0, %nsec_high.exit562 ]
  %124 = tail call i64 @llvm.abs.i64(i64 %cond269, i1 false) #13
  %conv17.i563 = trunc i64 %124 to i32
  %125 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %124) #17, !srcloc !854
  %126 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %124, i64 %125, i32 0) #17, !srcloc !855
  %asmresult10.i.i564 = extractvalue { i64, i32 } %126, 0
  %div162263.i565 = lshr i64 %asmresult10.i.i564, 18
  %conv163.i566 = trunc i64 %div162263.i565 to i32
  %mul164.neg.i567 = mul i32 %conv163.i566, -1000000
  %sub165.i568 = add i32 %mul164.neg.i567, %conv17.i563
  %call271 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.551, i64 noundef %retval.0.i510, i32 noundef %sub165.i517, i64 noundef %retval.0.i527, i32 noundef %sub165.i534, i64 noundef %retval.0.i544, i32 noundef %sub165.i551, i64 noundef %retval.0.i561, i32 noundef %sub165.i568) #16
  br label %do.end273

do.end273:                                        ; preds = %cond.end268, %cond.end150
  %tobool22.not578 = phi i1 [ false, %cond.end150 ], [ true, %cond.end268 ]
  %call.i = tail call i32 @_raw_spin_trylock(ptr noundef nonnull @sched_debug_lock) #13
  %tobool275.not = icmp eq i32 %call.i, 0
  br i1 %tobool275.not, label %if.else288, label %if.then276

if.then276:                                       ; preds = %do.end273
  %sched_task_group.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 25
  %127 = ptrtoint ptr %sched_task_group.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %sched_task_group.i, align 8
  %call.i569 = tail call i32 @autogroup_path(ptr noundef %128, ptr noundef nonnull @group_path, i32 noundef 4096) #13
  %tobool.not.i = icmp eq i32 %call.i569, 0
  br i1 %tobool.not.i, label %if.end.i, label %task_group_path.exit

if.end.i:                                         ; preds = %if.then276
  %129 = ptrtoint ptr %128 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %128, align 128
  %kn.i.i = getelementptr inbounds %struct.cgroup, ptr %130, i32 0, i32 11
  %131 = ptrtoint ptr %kn.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %kn.i.i, align 8
  %call.i.i.i = tail call i32 @kernfs_path_from_node(ptr noundef %132, ptr noundef null, ptr noundef nonnull @group_path, i32 noundef 4096) #13
  br label %task_group_path.exit

task_group_path.exit:                             ; preds = %if.end.i, %if.then276
  br i1 %tobool22.not578, label %do.end287.thread, label %do.end287

do.end287.thread:                                 ; preds = %task_group_path.exit
  %call285 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.555, ptr noundef nonnull @group_path) #16
  tail call void @_raw_spin_unlock(ptr noundef nonnull @sched_debug_lock) #13
  br label %do.end316

do.end287:                                        ; preds = %task_group_path.exit
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %m, ptr noundef nonnull @.str.553, ptr noundef nonnull @group_path) #13
  tail call void @_raw_spin_unlock(ptr noundef nonnull @sched_debug_lock) #13
  br label %if.then312

if.else288:                                       ; preds = %do.end273
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %buf) #13
  %133 = call ptr @memset(ptr %buf, i32 255, i32 128)
  %sched_task_group.i570 = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 25
  %134 = ptrtoint ptr %sched_task_group.i570 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %sched_task_group.i570, align 8
  %call.i571 = call i32 @autogroup_path(ptr noundef %135, ptr noundef nonnull %buf, i32 noundef 125) #13
  %tobool.not.i572 = icmp eq i32 %call.i571, 0
  br i1 %tobool.not.i572, label %if.end.i575, label %task_group_path.exit576

if.end.i575:                                      ; preds = %if.else288
  %136 = ptrtoint ptr %135 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %135, align 128
  %kn.i.i573 = getelementptr inbounds %struct.cgroup, ptr %137, i32 0, i32 11
  %138 = ptrtoint ptr %kn.i.i573 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %kn.i.i573, align 8
  %call.i.i.i574 = call i32 @kernfs_path_from_node(ptr noundef %139, ptr noundef null, ptr noundef nonnull %buf, i32 noundef 125) #13
  br label %task_group_path.exit576

task_group_path.exit576:                          ; preds = %if.end.i575, %if.else288
  %add.ptr294 = getelementptr inbounds i8, ptr %buf, i32 124
  %140 = ptrtoint ptr %add.ptr294 to i32
  call void @__asan_storeN_noabort(i32 %140, i32 4)
  store i32 774778368, ptr %add.ptr294, align 1
  br i1 %tobool22.not578, label %do.body310.thread, label %do.body310

do.body310.thread:                                ; preds = %task_group_path.exit576
  %call305 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.555, ptr noundef nonnull %buf) #16
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %buf) #13
  br label %do.end316

do.body310:                                       ; preds = %task_group_path.exit576
  call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %m, ptr noundef nonnull @.str.553, ptr noundef nonnull %buf) #13
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %buf) #13
  br label %if.then312

if.then312:                                       ; preds = %do.body310, %do.end287
  call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %m, ptr noundef nonnull @.str.5) #13
  br label %do.end321

do.end316:                                        ; preds = %do.body310.thread, %do.end287.thread
  %call318 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #16
  br label %do.end321

do.end321:                                        ; preds = %do.end316, %if.then312
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #11 align 64 {
entry:
  br label %__here

__here:                                           ; preds = %entry
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #11 align 64 {
entry:
  br label %__here

__here:                                           ; preds = %entry
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__task_pid_nr_ns(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 432)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 432)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nounwind readonly }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nounwind readonly willreturn }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !14, !16, !17, !18, !19, !20, !22, !23, !24, !25, !26, !27, !28, !30, !31, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !53, !54, !56, !57, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !75, !76, !78, !79, !80, !81, !82, !84, !85, !86, !87, !88, !90, !91, !92, !94, !95, !96, !98, !99, !100, !101, !102, !104, !105, !106, !108, !109, !110, !112, !113, !114, !116, !117, !118, !120, !121, !122, !124, !125, !126, !128, !129, !130, !132, !133, !134, !136, !137, !138, !139, !140, !141, !143, !144, !145, !147, !148, !149, !151, !152, !153, !154, !155, !157, !158, !159, !161, !162, !163, !165, !166, !167, !169, !170, !171, !172, !174, !175, !176, !178, !179, !180, !182, !183, !184, !185, !186, !188, !189, !190, !192, !193, !194, !195, !196, !198, !199, !200, !201, !203, !204, !205, !206, !207, !209, !210, !211, !213, !214, !215, !217, !218, !219, !220, !221, !223, !224, !225, !227, !228, !229, !231, !232, !233, !235, !236, !237, !239, !240, !241, !243, !244, !245, !247, !248, !249, !251, !252, !253, !255, !256, !257, !259, !260, !261, !263, !264, !265, !267, !268, !269, !271, !272, !273, !275, !276, !277, !279, !280, !281, !283, !284, !285, !287, !288, !289, !291, !292, !293, !295, !296, !297, !299, !300, !301, !303, !304, !305, !307, !308, !309, !311, !312, !313, !315, !316, !317, !319, !320, !321, !323, !324, !325, !327, !328, !329, !331, !332, !333, !335, !336, !337, !339, !340, !341, !343, !344, !345, !347, !348, !349, !351, !352, !353, !355, !356, !357, !359, !360, !361, !363, !364, !365, !367, !368, !369, !371, !372, !373, !375, !376, !377, !379, !380, !381, !383, !384, !385, !387, !388, !389, !391, !392, !393, !395, !396, !397, !399, !400, !401, !403, !404, !405, !407, !408, !409, !411, !412, !413, !415, !416, !417, !419, !420, !421, !423, !424, !425, !427, !428, !429, !431, !432, !433, !435, !436, !438, !439, !441, !443, !445, !447, !449, !451, !453, !455, !457, !459, !461, !463, !465, !467, !469, !471, !473, !475, !477, !479, !480, !482, !484, !486, !488, !490, !492, !494, !496, !498, !500, !502, !504, !506, !508, !510, !512, !514, !516, !518, !520, !522, !524, !526, !528, !530, !532, !534, !536, !538, !540, !542, !544, !546, !548, !550, !552, !554, !556, !558, !560, !562, !564, !566, !568, !570, !571, !573, !574, !576, !577, !578, !579, !580, !581, !583, !584, !585, !587, !588, !589, !591, !592, !594, !595, !597, !598, !600, !601, !603, !604, !606, !607, !609, !610, !612, !613, !615, !616, !618, !619, !621, !622, !623, !625, !626, !627, !629, !630, !631, !633, !634, !635, !637, !638, !639, !641, !642, !643, !644, !645, !647, !648, !649, !650, !651, !653, !654, !655, !657, !658, !659, !661, !662, !663, !664, !665, !667, !668, !670, !671, !672, !673, !675, !676, !677, !678, !679, !681, !682, !683, !685, !686, !687, !689, !690, !691, !693, !694, !695, !696, !697, !699, !700, !701, !703, !704, !705, !706, !707, !709, !710, !712, !714, !716, !718, !720, !721, !722, !723, !724, !726, !727, !729, !730, !732, !733, !734, !736, !737, !738, !740, !741, !742, !744, !745, !746, !748, !749, !750, !752, !753, !754, !756, !757, !758, !760, !761, !762, !764, !765, !766, !768, !769, !770, !772, !773, !774, !776, !777, !778, !780, !781, !783, !784, !785, !787, !788, !789, !790, !792, !793, !794, !795, !797, !798, !799, !800, !802, !803, !805, !806, !807, !809, !810, !811, !812, !813, !815, !816, !817, !818, !820, !821, !822, !823, !825, !826, !827, !828, !830, !831, !832, !833, !834, !835, !837, !838, !840, !842}
!llvm.named.register.sp = !{!843}
!llvm.module.flags = !{!844, !845, !846, !847, !848, !849, !850, !851}
!llvm.ident = !{!852}

!0 = !{ptr @sched_feat_keys, !1, !"sched_feat_keys", i1 false, i1 false}
!1 = !{!"../kernel/sched/debug.c", i32 79, i32 19}
!2 = !{ptr @__initcall__kmod_debug__486_343_sched_init_debug7, !3, !"__initcall__kmod_debug__486_343_sched_init_debug7", i1 false, i1 false}
!3 = !{!"../kernel/sched/debug.c", i32 343, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../kernel/sched/debug.c", i32 412, i32 34}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../kernel/sched/debug.c", i32 419, i32 30}
!8 = distinct !{null, !9, !"__warned", i1 false, i1 false}
!9 = !{!"../kernel/sched/debug.c", i32 424, i32 3}
!10 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../kernel/sched/debug.c", i32 427, i32 31}
!14 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../kernel/sched/debug.c", i32 590, i32 2}
!16 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @print_cfs_rq._entry, !15, !"_entry", i1 false, i1 false}
!19 = !{ptr @print_cfs_rq._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../kernel/sched/debug.c", i32 591, i32 2}
!22 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @print_cfs_rq._entry.9, !21, !"_entry", i1 false, i1 false}
!24 = !{ptr @print_cfs_rq._entry_ptr.11, !21, !"_entry_ptr", i1 false, i1 false}
!25 = distinct !{null, !21, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @print_cfs_rq._entry.13, !21, !"_entry", i1 false, i1 false}
!27 = !{ptr @print_cfs_rq._entry_ptr.14, !21, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.15, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../kernel/sched/debug.c", i32 596, i32 2}
!30 = !{ptr @.str.16, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.18, !29, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @print_cfs_rq._entry.17, !29, !"_entry", i1 false, i1 false}
!33 = !{ptr @print_cfs_rq._entry_ptr.19, !29, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.20, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../kernel/sched/debug.c", i32 608, i32 2}
!36 = !{ptr @print_cfs_rq._entry.21, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @print_cfs_rq._entry_ptr.22, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.23, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../kernel/sched/debug.c", i32 610, i32 2}
!40 = !{ptr @print_cfs_rq._entry.24, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @print_cfs_rq._entry_ptr.25, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.26, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../kernel/sched/debug.c", i32 612, i32 2}
!44 = !{ptr @print_cfs_rq._entry.27, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @print_cfs_rq._entry_ptr.28, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.29, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../kernel/sched/debug.c", i32 615, i32 2}
!48 = !{ptr @print_cfs_rq._entry.30, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @print_cfs_rq._entry_ptr.31, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.32, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../kernel/sched/debug.c", i32 618, i32 2}
!52 = !{ptr @print_cfs_rq._entry.33, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @print_cfs_rq._entry_ptr.34, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.35, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../kernel/sched/debug.c", i32 620, i32 2}
!56 = !{ptr @.str.36, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.38, !55, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @print_cfs_rq._entry.37, !55, !"_entry", i1 false, i1 false}
!59 = !{ptr @print_cfs_rq._entry_ptr.39, !55, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.40, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../kernel/sched/debug.c", i32 622, i32 2}
!62 = !{ptr @print_cfs_rq._entry.41, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @print_cfs_rq._entry_ptr.42, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.43, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../kernel/sched/debug.c", i32 623, i32 2}
!66 = !{ptr @print_cfs_rq._entry.44, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @print_cfs_rq._entry_ptr.45, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.46, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../kernel/sched/debug.c", i32 624, i32 2}
!70 = !{ptr @print_cfs_rq._entry.47, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @print_cfs_rq._entry_ptr.48, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.49, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../kernel/sched/debug.c", i32 626, i32 2}
!74 = !{ptr @print_cfs_rq._entry.50, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @print_cfs_rq._entry_ptr.51, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.52, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../kernel/sched/debug.c", i32 628, i32 2}
!78 = !{ptr @.str.53, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @.str.55, !77, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @print_cfs_rq._entry.54, !77, !"_entry", i1 false, i1 false}
!81 = !{ptr @print_cfs_rq._entry_ptr.56, !77, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.57, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../kernel/sched/debug.c", i32 630, i32 2}
!84 = !{ptr @.str.58, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @.str.60, !83, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @print_cfs_rq._entry.59, !83, !"_entry", i1 false, i1 false}
!87 = !{ptr @print_cfs_rq._entry_ptr.61, !83, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.62, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../kernel/sched/debug.c", i32 632, i32 2}
!90 = !{ptr @print_cfs_rq._entry.63, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @print_cfs_rq._entry_ptr.64, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.65, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../kernel/sched/debug.c", i32 634, i32 2}
!94 = !{ptr @print_cfs_rq._entry.66, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @print_cfs_rq._entry_ptr.67, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.68, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../kernel/sched/debug.c", i32 636, i32 2}
!98 = !{ptr @.str.69, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @.str.71, !97, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @print_cfs_rq._entry.70, !97, !"_entry", i1 false, i1 false}
!101 = !{ptr @print_cfs_rq._entry_ptr.72, !97, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.73, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../kernel/sched/debug.c", i32 638, i32 2}
!104 = !{ptr @print_cfs_rq._entry.74, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @print_cfs_rq._entry_ptr.75, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.76, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../kernel/sched/debug.c", i32 640, i32 2}
!108 = !{ptr @print_cfs_rq._entry.77, !107, !"_entry", i1 false, i1 false}
!109 = !{ptr @print_cfs_rq._entry_ptr.78, !107, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.79, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../kernel/sched/debug.c", i32 642, i32 2}
!112 = !{ptr @print_cfs_rq._entry.80, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @print_cfs_rq._entry_ptr.81, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.82, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../kernel/sched/debug.c", i32 645, i32 2}
!116 = !{ptr @print_cfs_rq._entry.83, !115, !"_entry", i1 false, i1 false}
!117 = !{ptr @print_cfs_rq._entry_ptr.84, !115, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.85, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../kernel/sched/debug.c", i32 647, i32 2}
!120 = !{ptr @print_cfs_rq._entry.86, !119, !"_entry", i1 false, i1 false}
!121 = !{ptr @print_cfs_rq._entry_ptr.87, !119, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.88, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../kernel/sched/debug.c", i32 652, i32 2}
!124 = !{ptr @print_cfs_rq._entry.89, !123, !"_entry", i1 false, i1 false}
!125 = !{ptr @print_cfs_rq._entry_ptr.90, !123, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.91, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../kernel/sched/debug.c", i32 654, i32 2}
!128 = !{ptr @print_cfs_rq._entry.92, !127, !"_entry", i1 false, i1 false}
!129 = !{ptr @print_cfs_rq._entry_ptr.93, !127, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.94, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../kernel/sched/debug.c", i32 666, i32 2}
!132 = !{ptr @print_rt_rq._entry, !131, !"_entry", i1 false, i1 false}
!133 = !{ptr @print_rt_rq._entry_ptr, !131, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.95, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../kernel/sched/debug.c", i32 667, i32 2}
!136 = !{ptr @.str.97, !135, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @print_rt_rq._entry.96, !135, !"_entry", i1 false, i1 false}
!138 = !{ptr @print_rt_rq._entry_ptr.98, !135, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @print_rt_rq._entry.99, !135, !"_entry", i1 false, i1 false}
!140 = !{ptr @print_rt_rq._entry_ptr.100, !135, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.101, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../kernel/sched/debug.c", i32 680, i32 2}
!143 = !{ptr @print_rt_rq._entry.102, !142, !"_entry", i1 false, i1 false}
!144 = !{ptr @print_rt_rq._entry_ptr.103, !142, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.104, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../kernel/sched/debug.c", i32 682, i32 2}
!147 = !{ptr @print_rt_rq._entry.105, !146, !"_entry", i1 false, i1 false}
!148 = !{ptr @print_rt_rq._entry_ptr.106, !146, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.107, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../kernel/sched/debug.c", i32 684, i32 2}
!151 = !{ptr @.str.108, !150, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @.str.110, !150, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @print_rt_rq._entry.109, !150, !"_entry", i1 false, i1 false}
!154 = !{ptr @print_rt_rq._entry_ptr.111, !150, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @.str.112, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../kernel/sched/debug.c", i32 685, i32 2}
!157 = !{ptr @print_rt_rq._entry.113, !156, !"_entry", i1 false, i1 false}
!158 = !{ptr @print_rt_rq._entry_ptr.114, !156, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @.str.115, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../kernel/sched/debug.c", i32 686, i32 2}
!161 = !{ptr @print_rt_rq._entry.116, !160, !"_entry", i1 false, i1 false}
!162 = !{ptr @print_rt_rq._entry_ptr.117, !160, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @.str.118, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../kernel/sched/debug.c", i32 697, i32 2}
!165 = !{ptr @print_dl_rq._entry, !164, !"_entry", i1 false, i1 false}
!166 = !{ptr @print_dl_rq._entry_ptr, !164, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @.str.119, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../kernel/sched/debug.c", i32 698, i32 2}
!169 = !{ptr @.str.121, !168, !"<string literal>", i1 false, i1 false}
!170 = !{ptr @print_dl_rq._entry.120, !168, !"_entry", i1 false, i1 false}
!171 = !{ptr @print_dl_rq._entry_ptr.122, !168, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @.str.123, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../kernel/sched/debug.c", i32 703, i32 2}
!174 = !{ptr @print_dl_rq._entry.124, !173, !"_entry", i1 false, i1 false}
!175 = !{ptr @print_dl_rq._entry_ptr.125, !173, !"_entry_ptr", i1 false, i1 false}
!176 = !{ptr @.str.126, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../kernel/sched/debug.c", i32 705, i32 2}
!178 = !{ptr @print_dl_rq._entry.127, !177, !"_entry", i1 false, i1 false}
!179 = !{ptr @print_dl_rq._entry_ptr.128, !177, !"_entry_ptr", i1 false, i1 false}
!180 = !{ptr @.str.129, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../kernel/sched/debug.c", i32 710, i32 2}
!182 = !{ptr @.str.130, !181, !"<string literal>", i1 false, i1 false}
!183 = !{ptr @.str.132, !181, !"<string literal>", i1 false, i1 false}
!184 = !{ptr @print_dl_rq._entry.131, !181, !"_entry", i1 false, i1 false}
!185 = !{ptr @print_dl_rq._entry_ptr.133, !181, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @.str.134, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../kernel/sched/debug.c", i32 711, i32 2}
!188 = !{ptr @print_dl_rq._entry.135, !187, !"_entry", i1 false, i1 false}
!189 = !{ptr @print_dl_rq._entry_ptr.136, !187, !"_entry_ptr", i1 false, i1 false}
!190 = !{ptr @.str.137, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../kernel/sched/debug.c", i32 961, i32 2}
!192 = !{ptr @.str.138, !191, !"<string literal>", i1 false, i1 false}
!193 = !{ptr @.str.139, !191, !"<string literal>", i1 false, i1 false}
!194 = !{ptr @proc_sched_show_task._entry, !191, !"_entry", i1 false, i1 false}
!195 = !{ptr @proc_sched_show_task._entry_ptr, !191, !"_entry_ptr", i1 false, i1 false}
!196 = !{ptr @.str.140, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../kernel/sched/debug.c", i32 963, i32 2}
!198 = !{ptr @.str.142, !197, !"<string literal>", i1 false, i1 false}
!199 = !{ptr @proc_sched_show_task._entry.141, !197, !"_entry", i1 false, i1 false}
!200 = !{ptr @proc_sched_show_task._entry_ptr.143, !197, !"_entry_ptr", i1 false, i1 false}
!201 = !{ptr @.str.144, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../kernel/sched/debug.c", i32 970, i32 2}
!203 = !{ptr @.str.145, !202, !"<string literal>", i1 false, i1 false}
!204 = !{ptr @.str.147, !202, !"<string literal>", i1 false, i1 false}
!205 = !{ptr @proc_sched_show_task._entry.146, !202, !"_entry", i1 false, i1 false}
!206 = !{ptr @proc_sched_show_task._entry_ptr.148, !202, !"_entry_ptr", i1 false, i1 false}
!207 = !{ptr @.str.149, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../kernel/sched/debug.c", i32 971, i32 2}
!209 = !{ptr @proc_sched_show_task._entry.150, !208, !"_entry", i1 false, i1 false}
!210 = !{ptr @proc_sched_show_task._entry_ptr.151, !208, !"_entry_ptr", i1 false, i1 false}
!211 = !{ptr @.str.152, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../kernel/sched/debug.c", i32 972, i32 2}
!213 = !{ptr @proc_sched_show_task._entry.153, !212, !"_entry", i1 false, i1 false}
!214 = !{ptr @proc_sched_show_task._entry_ptr.154, !212, !"_entry_ptr", i1 false, i1 false}
!215 = !{ptr @.str.155, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../kernel/sched/debug.c", i32 976, i32 2}
!217 = !{ptr @.str.156, !216, !"<string literal>", i1 false, i1 false}
!218 = !{ptr @.str.158, !216, !"<string literal>", i1 false, i1 false}
!219 = !{ptr @proc_sched_show_task._entry.157, !216, !"_entry", i1 false, i1 false}
!220 = !{ptr @proc_sched_show_task._entry_ptr.159, !216, !"_entry_ptr", i1 false, i1 false}
!221 = !{ptr @.str.160, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../kernel/sched/debug.c", i32 981, i32 3}
!223 = !{ptr @proc_sched_show_task._entry.161, !222, !"_entry", i1 false, i1 false}
!224 = !{ptr @proc_sched_show_task._entry_ptr.162, !222, !"_entry_ptr", i1 false, i1 false}
!225 = !{ptr @.str.163, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../kernel/sched/debug.c", i32 982, i32 3}
!227 = !{ptr @proc_sched_show_task._entry.164, !226, !"_entry", i1 false, i1 false}
!228 = !{ptr @proc_sched_show_task._entry_ptr.165, !226, !"_entry_ptr", i1 false, i1 false}
!229 = !{ptr @.str.166, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../kernel/sched/debug.c", i32 983, i32 3}
!231 = !{ptr @proc_sched_show_task._entry.167, !230, !"_entry", i1 false, i1 false}
!232 = !{ptr @proc_sched_show_task._entry_ptr.168, !230, !"_entry_ptr", i1 false, i1 false}
!233 = !{ptr @.str.169, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../kernel/sched/debug.c", i32 984, i32 3}
!235 = !{ptr @proc_sched_show_task._entry.170, !234, !"_entry", i1 false, i1 false}
!236 = !{ptr @proc_sched_show_task._entry_ptr.171, !234, !"_entry_ptr", i1 false, i1 false}
!237 = !{ptr @.str.172, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../kernel/sched/debug.c", i32 985, i32 3}
!239 = !{ptr @proc_sched_show_task._entry.173, !238, !"_entry", i1 false, i1 false}
!240 = !{ptr @proc_sched_show_task._entry_ptr.174, !238, !"_entry_ptr", i1 false, i1 false}
!241 = !{ptr @.str.175, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../kernel/sched/debug.c", i32 986, i32 3}
!243 = !{ptr @proc_sched_show_task._entry.176, !242, !"_entry", i1 false, i1 false}
!244 = !{ptr @proc_sched_show_task._entry_ptr.177, !242, !"_entry_ptr", i1 false, i1 false}
!245 = !{ptr @.str.178, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../kernel/sched/debug.c", i32 987, i32 3}
!247 = !{ptr @proc_sched_show_task._entry.179, !246, !"_entry", i1 false, i1 false}
!248 = !{ptr @proc_sched_show_task._entry_ptr.180, !246, !"_entry_ptr", i1 false, i1 false}
!249 = !{ptr @.str.181, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../kernel/sched/debug.c", i32 988, i32 3}
!251 = !{ptr @proc_sched_show_task._entry.182, !250, !"_entry", i1 false, i1 false}
!252 = !{ptr @proc_sched_show_task._entry_ptr.183, !250, !"_entry_ptr", i1 false, i1 false}
!253 = !{ptr @.str.184, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../kernel/sched/debug.c", i32 989, i32 3}
!255 = !{ptr @proc_sched_show_task._entry.185, !254, !"_entry", i1 false, i1 false}
!256 = !{ptr @proc_sched_show_task._entry_ptr.186, !254, !"_entry_ptr", i1 false, i1 false}
!257 = !{ptr @.str.187, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../kernel/sched/debug.c", i32 990, i32 3}
!259 = !{ptr @proc_sched_show_task._entry.188, !258, !"_entry", i1 false, i1 false}
!260 = !{ptr @proc_sched_show_task._entry_ptr.189, !258, !"_entry_ptr", i1 false, i1 false}
!261 = !{ptr @.str.190, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../kernel/sched/debug.c", i32 991, i32 3}
!263 = !{ptr @proc_sched_show_task._entry.191, !262, !"_entry", i1 false, i1 false}
!264 = !{ptr @proc_sched_show_task._entry_ptr.192, !262, !"_entry_ptr", i1 false, i1 false}
!265 = !{ptr @.str.193, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../kernel/sched/debug.c", i32 992, i32 3}
!267 = !{ptr @proc_sched_show_task._entry.194, !266, !"_entry", i1 false, i1 false}
!268 = !{ptr @proc_sched_show_task._entry_ptr.195, !266, !"_entry_ptr", i1 false, i1 false}
!269 = !{ptr @.str.196, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../kernel/sched/debug.c", i32 993, i32 3}
!271 = !{ptr @proc_sched_show_task._entry.197, !270, !"_entry", i1 false, i1 false}
!272 = !{ptr @proc_sched_show_task._entry_ptr.198, !270, !"_entry_ptr", i1 false, i1 false}
!273 = !{ptr @.str.199, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../kernel/sched/debug.c", i32 994, i32 3}
!275 = !{ptr @proc_sched_show_task._entry.200, !274, !"_entry", i1 false, i1 false}
!276 = !{ptr @proc_sched_show_task._entry_ptr.201, !274, !"_entry_ptr", i1 false, i1 false}
!277 = !{ptr @.str.202, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../kernel/sched/debug.c", i32 995, i32 3}
!279 = !{ptr @proc_sched_show_task._entry.203, !278, !"_entry", i1 false, i1 false}
!280 = !{ptr @proc_sched_show_task._entry_ptr.204, !278, !"_entry_ptr", i1 false, i1 false}
!281 = !{ptr @.str.205, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../kernel/sched/debug.c", i32 996, i32 3}
!283 = !{ptr @proc_sched_show_task._entry.206, !282, !"_entry", i1 false, i1 false}
!284 = !{ptr @proc_sched_show_task._entry_ptr.207, !282, !"_entry_ptr", i1 false, i1 false}
!285 = !{ptr @.str.208, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../kernel/sched/debug.c", i32 997, i32 3}
!287 = !{ptr @proc_sched_show_task._entry.209, !286, !"_entry", i1 false, i1 false}
!288 = !{ptr @proc_sched_show_task._entry_ptr.210, !286, !"_entry_ptr", i1 false, i1 false}
!289 = !{ptr @.str.211, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../kernel/sched/debug.c", i32 998, i32 3}
!291 = !{ptr @proc_sched_show_task._entry.212, !290, !"_entry", i1 false, i1 false}
!292 = !{ptr @proc_sched_show_task._entry_ptr.213, !290, !"_entry_ptr", i1 false, i1 false}
!293 = !{ptr @.str.214, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../kernel/sched/debug.c", i32 999, i32 3}
!295 = !{ptr @proc_sched_show_task._entry.215, !294, !"_entry", i1 false, i1 false}
!296 = !{ptr @proc_sched_show_task._entry_ptr.216, !294, !"_entry_ptr", i1 false, i1 false}
!297 = !{ptr @.str.217, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../kernel/sched/debug.c", i32 1000, i32 3}
!299 = !{ptr @proc_sched_show_task._entry.218, !298, !"_entry", i1 false, i1 false}
!300 = !{ptr @proc_sched_show_task._entry_ptr.219, !298, !"_entry_ptr", i1 false, i1 false}
!301 = !{ptr @.str.220, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../kernel/sched/debug.c", i32 1001, i32 3}
!303 = !{ptr @proc_sched_show_task._entry.221, !302, !"_entry", i1 false, i1 false}
!304 = !{ptr @proc_sched_show_task._entry_ptr.222, !302, !"_entry_ptr", i1 false, i1 false}
!305 = !{ptr @.str.223, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../kernel/sched/debug.c", i32 1002, i32 3}
!307 = !{ptr @proc_sched_show_task._entry.224, !306, !"_entry", i1 false, i1 false}
!308 = !{ptr @proc_sched_show_task._entry_ptr.225, !306, !"_entry_ptr", i1 false, i1 false}
!309 = !{ptr @.str.226, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../kernel/sched/debug.c", i32 1003, i32 3}
!311 = !{ptr @proc_sched_show_task._entry.227, !310, !"_entry", i1 false, i1 false}
!312 = !{ptr @proc_sched_show_task._entry_ptr.228, !310, !"_entry_ptr", i1 false, i1 false}
!313 = !{ptr @.str.229, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../kernel/sched/debug.c", i32 1004, i32 3}
!315 = !{ptr @proc_sched_show_task._entry.230, !314, !"_entry", i1 false, i1 false}
!316 = !{ptr @proc_sched_show_task._entry_ptr.231, !314, !"_entry_ptr", i1 false, i1 false}
!317 = !{ptr @.str.232, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../kernel/sched/debug.c", i32 1005, i32 3}
!319 = !{ptr @proc_sched_show_task._entry.233, !318, !"_entry", i1 false, i1 false}
!320 = !{ptr @proc_sched_show_task._entry_ptr.234, !318, !"_entry_ptr", i1 false, i1 false}
!321 = !{ptr @.str.235, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../kernel/sched/debug.c", i32 1006, i32 3}
!323 = !{ptr @proc_sched_show_task._entry.236, !322, !"_entry", i1 false, i1 false}
!324 = !{ptr @proc_sched_show_task._entry_ptr.237, !322, !"_entry_ptr", i1 false, i1 false}
!325 = !{ptr @.str.238, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../kernel/sched/debug.c", i32 1007, i32 3}
!327 = !{ptr @proc_sched_show_task._entry.239, !326, !"_entry", i1 false, i1 false}
!328 = !{ptr @proc_sched_show_task._entry_ptr.240, !326, !"_entry_ptr", i1 false, i1 false}
!329 = !{ptr @.str.241, !330, !"<string literal>", i1 false, i1 false}
!330 = !{!"../kernel/sched/debug.c", i32 1008, i32 3}
!331 = !{ptr @proc_sched_show_task._entry.242, !330, !"_entry", i1 false, i1 false}
!332 = !{ptr @proc_sched_show_task._entry_ptr.243, !330, !"_entry_ptr", i1 false, i1 false}
!333 = !{ptr @.str.244, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../kernel/sched/debug.c", i32 1024, i32 3}
!335 = !{ptr @proc_sched_show_task._entry.245, !334, !"_entry", i1 false, i1 false}
!336 = !{ptr @proc_sched_show_task._entry_ptr.246, !334, !"_entry_ptr", i1 false, i1 false}
!337 = !{ptr @.str.247, !338, !"<string literal>", i1 false, i1 false}
!338 = !{!"../kernel/sched/debug.c", i32 1025, i32 3}
!339 = !{ptr @proc_sched_show_task._entry.248, !338, !"_entry", i1 false, i1 false}
!340 = !{ptr @proc_sched_show_task._entry_ptr.249, !338, !"_entry_ptr", i1 false, i1 false}
!341 = !{ptr @.str.250, !342, !"<string literal>", i1 false, i1 false}
!342 = !{!"../kernel/sched/debug.c", i32 1028, i32 3}
!343 = !{ptr @proc_sched_show_task._entry.251, !342, !"_entry", i1 false, i1 false}
!344 = !{ptr @proc_sched_show_task._entry_ptr.252, !342, !"_entry_ptr", i1 false, i1 false}
!345 = !{ptr @.str.253, !346, !"<string literal>", i1 false, i1 false}
!346 = !{!"../kernel/sched/debug.c", i32 1032, i32 2}
!347 = !{ptr @proc_sched_show_task._entry.254, !346, !"_entry", i1 false, i1 false}
!348 = !{ptr @proc_sched_show_task._entry_ptr.255, !346, !"_entry_ptr", i1 false, i1 false}
!349 = !{ptr @.str.256, !350, !"<string literal>", i1 false, i1 false}
!350 = !{!"../kernel/sched/debug.c", i32 1033, i32 2}
!351 = !{ptr @proc_sched_show_task._entry.257, !350, !"_entry", i1 false, i1 false}
!352 = !{ptr @proc_sched_show_task._entry_ptr.258, !350, !"_entry_ptr", i1 false, i1 false}
!353 = !{ptr @.str.259, !354, !"<string literal>", i1 false, i1 false}
!354 = !{!"../kernel/sched/debug.c", i32 1034, i32 2}
!355 = !{ptr @proc_sched_show_task._entry.260, !354, !"_entry", i1 false, i1 false}
!356 = !{ptr @proc_sched_show_task._entry_ptr.261, !354, !"_entry_ptr", i1 false, i1 false}
!357 = !{ptr @.str.262, !358, !"<string literal>", i1 false, i1 false}
!358 = !{!"../kernel/sched/debug.c", i32 1036, i32 2}
!359 = !{ptr @proc_sched_show_task._entry.263, !358, !"_entry", i1 false, i1 false}
!360 = !{ptr @proc_sched_show_task._entry_ptr.264, !358, !"_entry_ptr", i1 false, i1 false}
!361 = !{ptr @.str.265, !362, !"<string literal>", i1 false, i1 false}
!362 = !{!"../kernel/sched/debug.c", i32 1038, i32 2}
!363 = !{ptr @proc_sched_show_task._entry.266, !362, !"_entry", i1 false, i1 false}
!364 = !{ptr @proc_sched_show_task._entry_ptr.267, !362, !"_entry_ptr", i1 false, i1 false}
!365 = !{ptr @.str.268, !366, !"<string literal>", i1 false, i1 false}
!366 = !{!"../kernel/sched/debug.c", i32 1039, i32 2}
!367 = !{ptr @proc_sched_show_task._entry.269, !366, !"_entry", i1 false, i1 false}
!368 = !{ptr @proc_sched_show_task._entry_ptr.270, !366, !"_entry_ptr", i1 false, i1 false}
!369 = !{ptr @.str.271, !370, !"<string literal>", i1 false, i1 false}
!370 = !{!"../kernel/sched/debug.c", i32 1040, i32 2}
!371 = !{ptr @proc_sched_show_task._entry.272, !370, !"_entry", i1 false, i1 false}
!372 = !{ptr @proc_sched_show_task._entry_ptr.273, !370, !"_entry_ptr", i1 false, i1 false}
!373 = !{ptr @.str.274, !374, !"<string literal>", i1 false, i1 false}
!374 = !{!"../kernel/sched/debug.c", i32 1041, i32 2}
!375 = !{ptr @proc_sched_show_task._entry.275, !374, !"_entry", i1 false, i1 false}
!376 = !{ptr @proc_sched_show_task._entry_ptr.276, !374, !"_entry_ptr", i1 false, i1 false}
!377 = !{ptr @.str.277, !378, !"<string literal>", i1 false, i1 false}
!378 = !{!"../kernel/sched/debug.c", i32 1042, i32 2}
!379 = !{ptr @proc_sched_show_task._entry.278, !378, !"_entry", i1 false, i1 false}
!380 = !{ptr @proc_sched_show_task._entry_ptr.279, !378, !"_entry_ptr", i1 false, i1 false}
!381 = !{ptr @.str.280, !382, !"<string literal>", i1 false, i1 false}
!382 = !{!"../kernel/sched/debug.c", i32 1043, i32 2}
!383 = !{ptr @proc_sched_show_task._entry.281, !382, !"_entry", i1 false, i1 false}
!384 = !{ptr @proc_sched_show_task._entry_ptr.282, !382, !"_entry_ptr", i1 false, i1 false}
!385 = !{ptr @.str.283, !386, !"<string literal>", i1 false, i1 false}
!386 = !{!"../kernel/sched/debug.c", i32 1044, i32 2}
!387 = !{ptr @proc_sched_show_task._entry.284, !386, !"_entry", i1 false, i1 false}
!388 = !{ptr @proc_sched_show_task._entry_ptr.285, !386, !"_entry_ptr", i1 false, i1 false}
!389 = !{ptr @.str.286, !390, !"<string literal>", i1 false, i1 false}
!390 = !{!"../kernel/sched/debug.c", i32 1045, i32 2}
!391 = !{ptr @proc_sched_show_task._entry.287, !390, !"_entry", i1 false, i1 false}
!392 = !{ptr @proc_sched_show_task._entry_ptr.288, !390, !"_entry_ptr", i1 false, i1 false}
!393 = !{ptr @.str.289, !394, !"<string literal>", i1 false, i1 false}
!394 = !{!"../kernel/sched/debug.c", i32 1046, i32 2}
!395 = !{ptr @proc_sched_show_task._entry.290, !394, !"_entry", i1 false, i1 false}
!396 = !{ptr @proc_sched_show_task._entry_ptr.291, !394, !"_entry_ptr", i1 false, i1 false}
!397 = !{ptr @.str.292, !398, !"<string literal>", i1 false, i1 false}
!398 = !{!"../kernel/sched/debug.c", i32 1049, i32 2}
!399 = !{ptr @proc_sched_show_task._entry.293, !398, !"_entry", i1 false, i1 false}
!400 = !{ptr @proc_sched_show_task._entry_ptr.294, !398, !"_entry_ptr", i1 false, i1 false}
!401 = !{ptr @.str.295, !402, !"<string literal>", i1 false, i1 false}
!402 = !{!"../kernel/sched/debug.c", i32 1050, i32 2}
!403 = !{ptr @proc_sched_show_task._entry.296, !402, !"_entry", i1 false, i1 false}
!404 = !{ptr @proc_sched_show_task._entry_ptr.297, !402, !"_entry_ptr", i1 false, i1 false}
!405 = !{ptr @.str.298, !406, !"<string literal>", i1 false, i1 false}
!406 = !{!"../kernel/sched/debug.c", i32 1051, i32 2}
!407 = !{ptr @proc_sched_show_task._entry.299, !406, !"_entry", i1 false, i1 false}
!408 = !{ptr @proc_sched_show_task._entry_ptr.300, !406, !"_entry_ptr", i1 false, i1 false}
!409 = !{ptr @.str.301, !410, !"<string literal>", i1 false, i1 false}
!410 = !{!"../kernel/sched/debug.c", i32 1052, i32 2}
!411 = !{ptr @proc_sched_show_task._entry.302, !410, !"_entry", i1 false, i1 false}
!412 = !{ptr @proc_sched_show_task._entry_ptr.303, !410, !"_entry_ptr", i1 false, i1 false}
!413 = !{ptr @.str.304, !414, !"<string literal>", i1 false, i1 false}
!414 = !{!"../kernel/sched/debug.c", i32 1054, i32 2}
!415 = !{ptr @proc_sched_show_task._entry.305, !414, !"_entry", i1 false, i1 false}
!416 = !{ptr @proc_sched_show_task._entry_ptr.306, !414, !"_entry_ptr", i1 false, i1 false}
!417 = !{ptr @.str.307, !418, !"<string literal>", i1 false, i1 false}
!418 = !{!"../kernel/sched/debug.c", i32 1055, i32 2}
!419 = !{ptr @proc_sched_show_task._entry.308, !418, !"_entry", i1 false, i1 false}
!420 = !{ptr @proc_sched_show_task._entry_ptr.309, !418, !"_entry_ptr", i1 false, i1 false}
!421 = !{ptr @.str.310, !422, !"<string literal>", i1 false, i1 false}
!422 = !{!"../kernel/sched/debug.c", i32 1057, i32 3}
!423 = !{ptr @proc_sched_show_task._entry.311, !422, !"_entry", i1 false, i1 false}
!424 = !{ptr @proc_sched_show_task._entry_ptr.312, !422, !"_entry_ptr", i1 false, i1 false}
!425 = !{ptr @.str.313, !426, !"<string literal>", i1 false, i1 false}
!426 = !{!"../kernel/sched/debug.c", i32 1058, i32 3}
!427 = !{ptr @proc_sched_show_task._entry.314, !426, !"_entry", i1 false, i1 false}
!428 = !{ptr @proc_sched_show_task._entry_ptr.315, !426, !"_entry_ptr", i1 false, i1 false}
!429 = !{ptr @.str.316, !430, !"<string literal>", i1 false, i1 false}
!430 = !{!"../kernel/sched/debug.c", i32 1069, i32 3}
!431 = !{ptr @proc_sched_show_task._entry.317, !430, !"_entry", i1 false, i1 false}
!432 = !{ptr @proc_sched_show_task._entry_ptr.318, !430, !"_entry_ptr", i1 false, i1 false}
!433 = !{ptr @.str.319, !434, !"<string literal>", i1 false, i1 false}
!434 = !{!"../kernel/sched/debug.c", i32 1084, i32 9}
!435 = !{ptr @resched_latency_warn.latency_check_ratelimit, !434, !"latency_check_ratelimit", i1 false, i1 false}
!436 = !{ptr @__func__.resched_latency_warn, !437, !"<string literal>", i1 false, i1 false}
!437 = !{!"../kernel/sched/debug.c", i32 1086, i32 2}
!438 = !{ptr @.str.320, !437, !"<string literal>", i1 false, i1 false}
!439 = !{ptr @sched_debug_verbose, !440, !"sched_debug_verbose", i1 false, i1 false}
!440 = !{!"../kernel/sched/debug.c", i32 282, i32 20}
!441 = !{ptr @debugfs_sched, !442, !"debugfs_sched", i1 false, i1 false}
!442 = !{!"../kernel/sched/debug.c", i32 298, i32 23}
!443 = !{ptr @sd_sysctl_cpus, !444, !"sd_sysctl_cpus", i1 false, i1 false}
!444 = !{!"../kernel/sched/debug.c", i32 347, i32 23}
!445 = !{ptr @sd_dentry, !446, !"sd_dentry", i1 false, i1 false}
!446 = !{!"../kernel/sched/debug.c", i32 348, i32 24}
!447 = !{ptr @group_path, !448, !"group_path", i1 false, i1 false}
!448 = !{!"../kernel/sched/debug.c", i32 497, i32 13}
!449 = !{ptr @.str.321, !450, !"<string literal>", i1 false, i1 false}
!450 = !{!"../kernel/sched/debug.c", i32 304, i32 37}
!451 = !{ptr @.str.322, !452, !"<string literal>", i1 false, i1 false}
!452 = !{!"../kernel/sched/debug.c", i32 306, i32 22}
!453 = !{ptr @.str.323, !454, !"<string literal>", i1 false, i1 false}
!454 = !{!"../kernel/sched/debug.c", i32 307, i32 22}
!455 = !{ptr @.str.324, !456, !"<string literal>", i1 false, i1 false}
!456 = !{!"../kernel/sched/debug.c", i32 312, i32 21}
!457 = !{ptr @.str.325, !458, !"<string literal>", i1 false, i1 false}
!458 = !{!"../kernel/sched/debug.c", i32 313, i32 21}
!459 = !{ptr @.str.326, !460, !"<string literal>", i1 false, i1 false}
!460 = !{!"../kernel/sched/debug.c", i32 314, i32 21}
!461 = !{ptr @.str.327, !462, !"<string literal>", i1 false, i1 false}
!462 = !{!"../kernel/sched/debug.c", i32 315, i32 21}
!463 = !{ptr @.str.328, !464, !"<string literal>", i1 false, i1 false}
!464 = !{!"../kernel/sched/debug.c", i32 317, i32 21}
!465 = !{ptr @.str.329, !466, !"<string literal>", i1 false, i1 false}
!466 = !{!"../kernel/sched/debug.c", i32 318, i32 21}
!467 = !{ptr @.str.330, !468, !"<string literal>", i1 false, i1 false}
!468 = !{!"../kernel/sched/debug.c", i32 321, i32 22}
!469 = !{ptr @.str.331, !470, !"<string literal>", i1 false, i1 false}
!470 = !{!"../kernel/sched/debug.c", i32 322, i32 21}
!471 = !{ptr @.str.332, !472, !"<string literal>", i1 false, i1 false}
!472 = !{!"../kernel/sched/debug.c", i32 323, i32 21}
!473 = !{ptr @.str.333, !474, !"<string literal>", i1 false, i1 false}
!474 = !{!"../kernel/sched/debug.c", i32 339, i32 22}
!475 = !{ptr @sched_feat_fops, !476, !"sched_feat_fops", i1 false, i1 false}
!476 = !{!"../kernel/sched/debug.c", i32 162, i32 37}
!477 = distinct !{null, !478, !"__already_done", i1 false, i1 false}
!478 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!479 = distinct !{null, !478, !"<string literal>", i1 false, i1 false}
!480 = distinct !{null, !481, !"<string literal>", i1 false, i1 false}
!481 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!482 = !{ptr @.str.336, !483, !"<string literal>", i1 false, i1 false}
!483 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!484 = !{ptr @.str.337, !485, !"<string literal>", i1 false, i1 false}
!485 = !{!"../kernel/sched/debug.c", i32 104, i32 19}
!486 = !{ptr @.str.338, !487, !"<string literal>", i1 false, i1 false}
!487 = !{!"../kernel/sched/features.h", i32 7, i32 1}
!488 = !{ptr @.str.339, !489, !"<string literal>", i1 false, i1 false}
!489 = !{!"../kernel/sched/features.h", i32 13, i32 1}
!490 = !{ptr @.str.340, !491, !"<string literal>", i1 false, i1 false}
!491 = !{!"../kernel/sched/features.h", i32 20, i32 1}
!492 = !{ptr @.str.341, !493, !"<string literal>", i1 false, i1 false}
!493 = !{!"../kernel/sched/features.h", i32 27, i32 1}
!494 = !{ptr @.str.342, !495, !"<string literal>", i1 false, i1 false}
!495 = !{!"../kernel/sched/features.h", i32 33, i32 1}
!496 = !{ptr @.str.343, !497, !"<string literal>", i1 false, i1 false}
!497 = !{!"../kernel/sched/features.h", i32 38, i32 1}
!498 = !{ptr @.str.344, !499, !"<string literal>", i1 false, i1 false}
!499 = !{!"../kernel/sched/features.h", i32 40, i32 1}
!500 = !{ptr @.str.345, !501, !"<string literal>", i1 false, i1 false}
!501 = !{!"../kernel/sched/features.h", i32 41, i32 1}
!502 = !{ptr @.str.346, !503, !"<string literal>", i1 false, i1 false}
!503 = !{!"../kernel/sched/features.h", i32 42, i32 1}
!504 = !{ptr @.str.347, !505, !"<string literal>", i1 false, i1 false}
!505 = !{!"../kernel/sched/features.h", i32 47, i32 1}
!506 = !{ptr @.str.348, !507, !"<string literal>", i1 false, i1 false}
!507 = !{!"../kernel/sched/features.h", i32 57, i32 1}
!508 = !{ptr @.str.349, !509, !"<string literal>", i1 false, i1 false}
!509 = !{!"../kernel/sched/features.h", i32 63, i32 1}
!510 = !{ptr @.str.350, !511, !"<string literal>", i1 false, i1 false}
!511 = !{!"../kernel/sched/features.h", i32 70, i32 1}
!512 = !{ptr @.str.351, !513, !"<string literal>", i1 false, i1 false}
!513 = !{!"../kernel/sched/features.h", i32 82, i32 1}
!514 = !{ptr @.str.352, !515, !"<string literal>", i1 false, i1 false}
!515 = !{!"../kernel/sched/features.h", i32 85, i32 1}
!516 = !{ptr @.str.353, !517, !"<string literal>", i1 false, i1 false}
!517 = !{!"../kernel/sched/features.h", i32 86, i32 1}
!518 = !{ptr @.str.354, !519, !"<string literal>", i1 false, i1 false}
!519 = !{!"../kernel/sched/features.h", i32 87, i32 1}
!520 = !{ptr @.str.355, !521, !"<string literal>", i1 false, i1 false}
!521 = !{!"../kernel/sched/features.h", i32 89, i32 1}
!522 = !{ptr @.str.356, !523, !"<string literal>", i1 false, i1 false}
!523 = !{!"../kernel/sched/features.h", i32 90, i32 1}
!524 = !{ptr @.str.357, !525, !"<string literal>", i1 false, i1 false}
!525 = !{!"../kernel/sched/features.h", i32 91, i32 1}
!526 = !{ptr @.str.358, !527, !"<string literal>", i1 false, i1 false}
!527 = !{!"../kernel/sched/features.h", i32 96, i32 1}
!528 = !{ptr @.str.359, !529, !"<string literal>", i1 false, i1 false}
!529 = !{!"../kernel/sched/features.h", i32 97, i32 1}
!530 = !{ptr @.str.360, !531, !"<string literal>", i1 false, i1 false}
!531 = !{!"../kernel/sched/features.h", i32 99, i32 1}
!532 = !{ptr @.str.361, !533, !"<string literal>", i1 false, i1 false}
!533 = !{!"../kernel/sched/features.h", i32 101, i32 1}
!534 = !{ptr @.str.362, !535, !"<string literal>", i1 false, i1 false}
!535 = !{!"../kernel/sched/features.h", i32 102, i32 1}
!536 = !{ptr @sched_feat_names, !537, !"sched_feat_names", i1 false, i1 false}
!537 = !{!"../kernel/sched/debug.c", i32 51, i32 27}
!538 = !{ptr @.str.363, !539, !"<string literal>", i1 false, i1 false}
!539 = !{!"../kernel/sched/debug.c", i32 64, i32 17}
!540 = !{ptr @sched_scaling_fops, !541, !"sched_scaling_fops", i1 false, i1 false}
!541 = !{!"../kernel/sched/debug.c", i32 210, i32 37}
!542 = !{ptr @.str.364, !543, !"<string literal>", i1 false, i1 false}
!543 = !{!"../kernel/sched/debug.c", i32 201, i32 16}
!544 = !{ptr @sched_debug_fops, !545, !"sched_debug_fops", i1 false, i1 false}
!545 = !{!"../kernel/sched/debug.c", i32 291, i32 37}
!546 = !{ptr @sched_debug_sops, !547, !"sched_debug_sops", i1 false, i1 false}
!547 = !{!"../kernel/sched/debug.c", i32 904, i32 36}
!548 = !{ptr @.str.365, !549, !"<string literal>", i1 false, i1 false}
!549 = !{!"../kernel/sched/debug.c", i32 381, i32 2}
!550 = !{ptr @.str.366, !551, !"<string literal>", i1 false, i1 false}
!551 = !{!"../kernel/sched/debug.c", i32 382, i32 2}
!552 = !{ptr @.str.367, !553, !"<string literal>", i1 false, i1 false}
!553 = !{!"../kernel/sched/debug.c", i32 383, i32 2}
!554 = !{ptr @.str.368, !555, !"<string literal>", i1 false, i1 false}
!555 = !{!"../kernel/sched/debug.c", i32 384, i32 2}
!556 = !{ptr @.str.369, !557, !"<string literal>", i1 false, i1 false}
!557 = !{!"../kernel/sched/debug.c", i32 385, i32 2}
!558 = !{ptr @.str.370, !559, !"<string literal>", i1 false, i1 false}
!559 = !{!"../kernel/sched/debug.c", i32 386, i32 2}
!560 = !{ptr @.str.371, !561, !"<string literal>", i1 false, i1 false}
!561 = !{!"../kernel/sched/debug.c", i32 387, i32 2}
!562 = !{ptr @.str.372, !563, !"<string literal>", i1 false, i1 false}
!563 = !{!"../kernel/sched/debug.c", i32 391, i32 22}
!564 = !{ptr @sd_flags_fops, !565, !"sd_flags_fops", i1 false, i1 false}
!565 = !{!"../kernel/sched/debug.c", i32 369, i32 37}
!566 = !{ptr @.str.373, !567, !"<string literal>", i1 false, i1 false}
!567 = !{!"../kernel/sched/debug.c", i32 357, i32 15}
!568 = distinct !{null, !569, !"__already_done", i1 false, i1 false}
!569 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!570 = !{ptr @.str.374, !569, !"<string literal>", i1 false, i1 false}
!571 = !{ptr @.str.375, !572, !"<string literal>", i1 false, i1 false}
!572 = !{!"../kernel/sched/debug.c", i32 496, i32 8}
!573 = !{ptr @sched_debug_lock, !572, !"sched_debug_lock", i1 false, i1 false}
!574 = !{ptr @.str.376, !575, !"<string literal>", i1 false, i1 false}
!575 = !{!"../kernel/sched/debug.c", i32 461, i32 2}
!576 = !{ptr @.str.377, !575, !"<string literal>", i1 false, i1 false}
!577 = !{ptr @.str.378, !575, !"<string literal>", i1 false, i1 false}
!578 = !{ptr @.str.379, !575, !"<string literal>", i1 false, i1 false}
!579 = !{ptr @print_cfs_group_stats._entry, !575, !"_entry", i1 false, i1 false}
!580 = !{ptr @print_cfs_group_stats._entry_ptr, !575, !"_entry_ptr", i1 false, i1 false}
!581 = !{ptr @.str.380, !582, !"<string literal>", i1 false, i1 false}
!582 = !{!"../kernel/sched/debug.c", i32 462, i32 2}
!583 = !{ptr @print_cfs_group_stats._entry.381, !582, !"_entry", i1 false, i1 false}
!584 = !{ptr @print_cfs_group_stats._entry_ptr.382, !582, !"_entry_ptr", i1 false, i1 false}
!585 = !{ptr @.str.383, !586, !"<string literal>", i1 false, i1 false}
!586 = !{!"../kernel/sched/debug.c", i32 463, i32 2}
!587 = !{ptr @print_cfs_group_stats._entry.384, !586, !"_entry", i1 false, i1 false}
!588 = !{ptr @print_cfs_group_stats._entry_ptr.385, !586, !"_entry_ptr", i1 false, i1 false}
!589 = !{ptr @print_cfs_group_stats._entry.386, !590, !"_entry", i1 false, i1 false}
!590 = !{!"../kernel/sched/debug.c", i32 469, i32 3}
!591 = !{ptr @print_cfs_group_stats._entry_ptr.387, !590, !"_entry_ptr", i1 false, i1 false}
!592 = !{ptr @print_cfs_group_stats._entry.388, !593, !"_entry", i1 false, i1 false}
!593 = !{!"../kernel/sched/debug.c", i32 470, i32 3}
!594 = !{ptr @print_cfs_group_stats._entry_ptr.389, !593, !"_entry_ptr", i1 false, i1 false}
!595 = !{ptr @print_cfs_group_stats._entry.390, !596, !"_entry", i1 false, i1 false}
!596 = !{!"../kernel/sched/debug.c", i32 471, i32 3}
!597 = !{ptr @print_cfs_group_stats._entry_ptr.391, !596, !"_entry_ptr", i1 false, i1 false}
!598 = !{ptr @print_cfs_group_stats._entry.392, !599, !"_entry", i1 false, i1 false}
!599 = !{!"../kernel/sched/debug.c", i32 472, i32 3}
!600 = !{ptr @print_cfs_group_stats._entry_ptr.393, !599, !"_entry_ptr", i1 false, i1 false}
!601 = !{ptr @print_cfs_group_stats._entry.394, !602, !"_entry", i1 false, i1 false}
!602 = !{!"../kernel/sched/debug.c", i32 473, i32 3}
!603 = !{ptr @print_cfs_group_stats._entry_ptr.395, !602, !"_entry_ptr", i1 false, i1 false}
!604 = !{ptr @print_cfs_group_stats._entry.396, !605, !"_entry", i1 false, i1 false}
!605 = !{!"../kernel/sched/debug.c", i32 474, i32 3}
!606 = !{ptr @print_cfs_group_stats._entry_ptr.397, !605, !"_entry_ptr", i1 false, i1 false}
!607 = !{ptr @print_cfs_group_stats._entry.398, !608, !"_entry", i1 false, i1 false}
!608 = !{!"../kernel/sched/debug.c", i32 475, i32 3}
!609 = !{ptr @print_cfs_group_stats._entry_ptr.399, !608, !"_entry_ptr", i1 false, i1 false}
!610 = !{ptr @print_cfs_group_stats._entry.400, !611, !"_entry", i1 false, i1 false}
!611 = !{!"../kernel/sched/debug.c", i32 476, i32 3}
!612 = !{ptr @print_cfs_group_stats._entry_ptr.401, !611, !"_entry_ptr", i1 false, i1 false}
!613 = !{ptr @print_cfs_group_stats._entry.402, !614, !"_entry", i1 false, i1 false}
!614 = !{!"../kernel/sched/debug.c", i32 477, i32 3}
!615 = !{ptr @print_cfs_group_stats._entry_ptr.403, !614, !"_entry_ptr", i1 false, i1 false}
!616 = !{ptr @print_cfs_group_stats._entry.404, !617, !"_entry", i1 false, i1 false}
!617 = !{!"../kernel/sched/debug.c", i32 478, i32 3}
!618 = !{ptr @print_cfs_group_stats._entry_ptr.405, !617, !"_entry_ptr", i1 false, i1 false}
!619 = !{ptr @.str.406, !620, !"<string literal>", i1 false, i1 false}
!620 = !{!"../kernel/sched/debug.c", i32 481, i32 2}
!621 = !{ptr @print_cfs_group_stats._entry.407, !620, !"_entry", i1 false, i1 false}
!622 = !{ptr @print_cfs_group_stats._entry_ptr.408, !620, !"_entry_ptr", i1 false, i1 false}
!623 = !{ptr @.str.409, !624, !"<string literal>", i1 false, i1 false}
!624 = !{!"../kernel/sched/debug.c", i32 483, i32 2}
!625 = !{ptr @print_cfs_group_stats._entry.410, !624, !"_entry", i1 false, i1 false}
!626 = !{ptr @print_cfs_group_stats._entry_ptr.411, !624, !"_entry_ptr", i1 false, i1 false}
!627 = !{ptr @.str.412, !628, !"<string literal>", i1 false, i1 false}
!628 = !{!"../kernel/sched/debug.c", i32 484, i32 2}
!629 = !{ptr @print_cfs_group_stats._entry.413, !628, !"_entry", i1 false, i1 false}
!630 = !{ptr @print_cfs_group_stats._entry_ptr.414, !628, !"_entry_ptr", i1 false, i1 false}
!631 = !{ptr @.str.415, !632, !"<string literal>", i1 false, i1 false}
!632 = !{!"../kernel/sched/debug.c", i32 485, i32 2}
!633 = !{ptr @print_cfs_group_stats._entry.416, !632, !"_entry", i1 false, i1 false}
!634 = !{ptr @print_cfs_group_stats._entry_ptr.417, !632, !"_entry_ptr", i1 false, i1 false}
!635 = distinct !{null, !636, !"__already_done", i1 false, i1 false}
!636 = !{!"../kernel/sched/sched.h", i32 1376, i32 2}
!637 = distinct !{null, !636, !"<string literal>", i1 false, i1 false}
!638 = distinct !{null, !636, !"<string literal>", i1 false, i1 false}
!639 = !{ptr @.str.420, !640, !"<string literal>", i1 false, i1 false}
!640 = !{!"../kernel/sched/debug.c", i32 794, i32 2}
!641 = !{ptr @.str.421, !640, !"<string literal>", i1 false, i1 false}
!642 = !{ptr @.str.422, !640, !"<string literal>", i1 false, i1 false}
!643 = !{ptr @sched_debug_header._entry, !640, !"_entry", i1 false, i1 false}
!644 = !{ptr @sched_debug_header._entry_ptr, !640, !"_entry_ptr", i1 false, i1 false}
!645 = !{ptr @.str.423, !646, !"<string literal>", i1 false, i1 false}
!646 = !{!"../kernel/sched/debug.c", i32 803, i32 2}
!647 = !{ptr @.str.424, !646, !"<string literal>", i1 false, i1 false}
!648 = !{ptr @.str.426, !646, !"<string literal>", i1 false, i1 false}
!649 = !{ptr @sched_debug_header._entry.425, !646, !"_entry", i1 false, i1 false}
!650 = !{ptr @sched_debug_header._entry_ptr.427, !646, !"_entry_ptr", i1 false, i1 false}
!651 = !{ptr @.str.428, !652, !"<string literal>", i1 false, i1 false}
!652 = !{!"../kernel/sched/debug.c", i32 804, i32 2}
!653 = !{ptr @sched_debug_header._entry.429, !652, !"_entry", i1 false, i1 false}
!654 = !{ptr @sched_debug_header._entry_ptr.430, !652, !"_entry_ptr", i1 false, i1 false}
!655 = !{ptr @.str.431, !656, !"<string literal>", i1 false, i1 false}
!656 = !{!"../kernel/sched/debug.c", i32 805, i32 2}
!657 = !{ptr @sched_debug_header._entry.432, !656, !"_entry", i1 false, i1 false}
!658 = !{ptr @sched_debug_header._entry_ptr.433, !656, !"_entry_ptr", i1 false, i1 false}
!659 = !{ptr @.str.434, !660, !"<string literal>", i1 false, i1 false}
!660 = !{!"../kernel/sched/debug.c", i32 806, i32 2}
!661 = !{ptr @.str.435, !660, !"<string literal>", i1 false, i1 false}
!662 = !{ptr @.str.437, !660, !"<string literal>", i1 false, i1 false}
!663 = !{ptr @sched_debug_header._entry.436, !660, !"_entry", i1 false, i1 false}
!664 = !{ptr @sched_debug_header._entry_ptr.438, !660, !"_entry_ptr", i1 false, i1 false}
!665 = !{ptr @sched_debug_header._entry.439, !666, !"_entry", i1 false, i1 false}
!666 = !{!"../kernel/sched/debug.c", i32 813, i32 2}
!667 = !{ptr @sched_debug_header._entry_ptr.440, !666, !"_entry_ptr", i1 false, i1 false}
!668 = !{ptr @.str.441, !669, !"<string literal>", i1 false, i1 false}
!669 = !{!"../kernel/sched/debug.c", i32 814, i32 2}
!670 = !{ptr @.str.443, !669, !"<string literal>", i1 false, i1 false}
!671 = !{ptr @sched_debug_header._entry.442, !669, !"_entry", i1 false, i1 false}
!672 = !{ptr @sched_debug_header._entry_ptr.444, !669, !"_entry_ptr", i1 false, i1 false}
!673 = !{ptr @.str.445, !674, !"<string literal>", i1 false, i1 false}
!674 = !{!"../kernel/sched/debug.c", i32 820, i32 2}
!675 = !{ptr @.str.446, !674, !"<string literal>", i1 false, i1 false}
!676 = !{ptr @.str.448, !674, !"<string literal>", i1 false, i1 false}
!677 = !{ptr @sched_debug_header._entry.447, !674, !"_entry", i1 false, i1 false}
!678 = !{ptr @sched_debug_header._entry_ptr.449, !674, !"_entry_ptr", i1 false, i1 false}
!679 = !{ptr @.str.450, !680, !"<string literal>", i1 false, i1 false}
!680 = !{!"../kernel/sched/debug.c", i32 821, i32 2}
!681 = !{ptr @sched_debug_header._entry.451, !680, !"_entry", i1 false, i1 false}
!682 = !{ptr @sched_debug_header._entry_ptr.452, !680, !"_entry_ptr", i1 false, i1 false}
!683 = !{ptr @.str.453, !684, !"<string literal>", i1 false, i1 false}
!684 = !{!"../kernel/sched/debug.c", i32 822, i32 2}
!685 = !{ptr @sched_debug_header._entry.454, !684, !"_entry", i1 false, i1 false}
!686 = !{ptr @sched_debug_header._entry_ptr.455, !684, !"_entry_ptr", i1 false, i1 false}
!687 = !{ptr @.str.456, !688, !"<string literal>", i1 false, i1 false}
!688 = !{!"../kernel/sched/debug.c", i32 823, i32 2}
!689 = !{ptr @sched_debug_header._entry.457, !688, !"_entry", i1 false, i1 false}
!690 = !{ptr @sched_debug_header._entry_ptr.458, !688, !"_entry_ptr", i1 false, i1 false}
!691 = !{ptr @.str.459, !692, !"<string literal>", i1 false, i1 false}
!692 = !{!"../kernel/sched/debug.c", i32 824, i32 2}
!693 = !{ptr @.str.460, !692, !"<string literal>", i1 false, i1 false}
!694 = !{ptr @.str.462, !692, !"<string literal>", i1 false, i1 false}
!695 = !{ptr @sched_debug_header._entry.461, !692, !"_entry", i1 false, i1 false}
!696 = !{ptr @sched_debug_header._entry_ptr.463, !692, !"_entry_ptr", i1 false, i1 false}
!697 = !{ptr @.str.464, !698, !"<string literal>", i1 false, i1 false}
!698 = !{!"../kernel/sched/debug.c", i32 825, i32 2}
!699 = !{ptr @sched_debug_header._entry.465, !698, !"_entry", i1 false, i1 false}
!700 = !{ptr @sched_debug_header._entry_ptr.466, !698, !"_entry_ptr", i1 false, i1 false}
!701 = !{ptr @.str.467, !702, !"<string literal>", i1 false, i1 false}
!702 = !{!"../kernel/sched/debug.c", i32 829, i32 2}
!703 = !{ptr @.str.468, !702, !"<string literal>", i1 false, i1 false}
!704 = !{ptr @.str.470, !702, !"<string literal>", i1 false, i1 false}
!705 = !{ptr @sched_debug_header._entry.469, !702, !"_entry", i1 false, i1 false}
!706 = !{ptr @sched_debug_header._entry_ptr.471, !702, !"_entry_ptr", i1 false, i1 false}
!707 = !{ptr @sched_debug_header._entry.472, !708, !"_entry", i1 false, i1 false}
!708 = !{!"../kernel/sched/debug.c", i32 833, i32 2}
!709 = !{ptr @sched_debug_header._entry_ptr.473, !708, !"_entry_ptr", i1 false, i1 false}
!710 = !{ptr @.str.474, !711, !"<string literal>", i1 false, i1 false}
!711 = !{!"../kernel/sched/debug.c", i32 778, i32 2}
!712 = !{ptr @.str.475, !713, !"<string literal>", i1 false, i1 false}
!713 = !{!"../kernel/sched/debug.c", i32 779, i32 2}
!714 = !{ptr @.str.476, !715, !"<string literal>", i1 false, i1 false}
!715 = !{!"../kernel/sched/debug.c", i32 780, i32 2}
!716 = !{ptr @sched_tunable_scaling_names, !717, !"sched_tunable_scaling_names", i1 false, i1 false}
!717 = !{!"../kernel/sched/debug.c", i32 777, i32 20}
!718 = !{ptr @.str.477, !719, !"<string literal>", i1 false, i1 false}
!719 = !{!"../kernel/sched/debug.c", i32 728, i32 2}
!720 = !{ptr @.str.478, !719, !"<string literal>", i1 false, i1 false}
!721 = !{ptr @.str.479, !719, !"<string literal>", i1 false, i1 false}
!722 = !{ptr @print_cpu._entry, !719, !"_entry", i1 false, i1 false}
!723 = !{ptr @print_cpu._entry_ptr, !719, !"_entry_ptr", i1 false, i1 false}
!724 = !{ptr @print_cpu._entry.480, !725, !"_entry", i1 false, i1 false}
!725 = !{!"../kernel/sched/debug.c", i32 742, i32 2}
!726 = !{ptr @print_cpu._entry_ptr.481, !725, !"_entry_ptr", i1 false, i1 false}
!727 = !{ptr @print_cpu._entry.482, !728, !"_entry", i1 false, i1 false}
!728 = !{!"../kernel/sched/debug.c", i32 743, i32 2}
!729 = !{ptr @print_cpu._entry_ptr.483, !728, !"_entry_ptr", i1 false, i1 false}
!730 = !{ptr @.str.484, !731, !"<string literal>", i1 false, i1 false}
!731 = !{!"../kernel/sched/debug.c", i32 744, i32 2}
!732 = !{ptr @print_cpu._entry.485, !731, !"_entry", i1 false, i1 false}
!733 = !{ptr @print_cpu._entry_ptr.486, !731, !"_entry_ptr", i1 false, i1 false}
!734 = !{ptr @.str.487, !735, !"<string literal>", i1 false, i1 false}
!735 = !{!"../kernel/sched/debug.c", i32 745, i32 2}
!736 = !{ptr @print_cpu._entry.488, !735, !"_entry", i1 false, i1 false}
!737 = !{ptr @print_cpu._entry_ptr.489, !735, !"_entry_ptr", i1 false, i1 false}
!738 = !{ptr @.str.490, !739, !"<string literal>", i1 false, i1 false}
!739 = !{!"../kernel/sched/debug.c", i32 746, i32 2}
!740 = !{ptr @print_cpu._entry.491, !739, !"_entry", i1 false, i1 false}
!741 = !{ptr @print_cpu._entry_ptr.492, !739, !"_entry_ptr", i1 false, i1 false}
!742 = !{ptr @.str.493, !743, !"<string literal>", i1 false, i1 false}
!743 = !{!"../kernel/sched/debug.c", i32 747, i32 2}
!744 = !{ptr @print_cpu._entry.494, !743, !"_entry", i1 false, i1 false}
!745 = !{ptr @print_cpu._entry_ptr.495, !743, !"_entry_ptr", i1 false, i1 false}
!746 = !{ptr @.str.496, !747, !"<string literal>", i1 false, i1 false}
!747 = !{!"../kernel/sched/debug.c", i32 748, i32 2}
!748 = !{ptr @print_cpu._entry.497, !747, !"_entry", i1 false, i1 false}
!749 = !{ptr @print_cpu._entry_ptr.498, !747, !"_entry_ptr", i1 false, i1 false}
!750 = !{ptr @.str.499, !751, !"<string literal>", i1 false, i1 false}
!751 = !{!"../kernel/sched/debug.c", i32 754, i32 2}
!752 = !{ptr @print_cpu._entry.500, !751, !"_entry", i1 false, i1 false}
!753 = !{ptr @print_cpu._entry_ptr.501, !751, !"_entry_ptr", i1 false, i1 false}
!754 = !{ptr @.str.502, !755, !"<string literal>", i1 false, i1 false}
!755 = !{!"../kernel/sched/debug.c", i32 755, i32 2}
!756 = !{ptr @print_cpu._entry.503, !755, !"_entry", i1 false, i1 false}
!757 = !{ptr @print_cpu._entry_ptr.504, !755, !"_entry_ptr", i1 false, i1 false}
!758 = !{ptr @.str.505, !759, !"<string literal>", i1 false, i1 false}
!759 = !{!"../kernel/sched/debug.c", i32 761, i32 3}
!760 = !{ptr @print_cpu._entry.506, !759, !"_entry", i1 false, i1 false}
!761 = !{ptr @print_cpu._entry_ptr.507, !759, !"_entry_ptr", i1 false, i1 false}
!762 = !{ptr @.str.508, !763, !"<string literal>", i1 false, i1 false}
!763 = !{!"../kernel/sched/debug.c", i32 762, i32 3}
!764 = !{ptr @print_cpu._entry.509, !763, !"_entry", i1 false, i1 false}
!765 = !{ptr @print_cpu._entry_ptr.510, !763, !"_entry_ptr", i1 false, i1 false}
!766 = !{ptr @.str.511, !767, !"<string literal>", i1 false, i1 false}
!767 = !{!"../kernel/sched/debug.c", i32 763, i32 3}
!768 = !{ptr @print_cpu._entry.512, !767, !"_entry", i1 false, i1 false}
!769 = !{ptr @print_cpu._entry_ptr.513, !767, !"_entry_ptr", i1 false, i1 false}
!770 = !{ptr @.str.514, !771, !"<string literal>", i1 false, i1 false}
!771 = !{!"../kernel/sched/debug.c", i32 764, i32 3}
!772 = !{ptr @print_cpu._entry.515, !771, !"_entry", i1 false, i1 false}
!773 = !{ptr @print_cpu._entry_ptr.516, !771, !"_entry_ptr", i1 false, i1 false}
!774 = !{ptr @.str.517, !775, !"<string literal>", i1 false, i1 false}
!775 = !{!"../kernel/sched/debug.c", i32 765, i32 3}
!776 = !{ptr @print_cpu._entry.518, !775, !"_entry", i1 false, i1 false}
!777 = !{ptr @print_cpu._entry_ptr.519, !775, !"_entry_ptr", i1 false, i1 false}
!778 = !{ptr @print_cpu._entry.520, !779, !"_entry", i1 false, i1 false}
!779 = !{!"../kernel/sched/debug.c", i32 774, i32 2}
!780 = !{ptr @print_cpu._entry_ptr.521, !779, !"_entry_ptr", i1 false, i1 false}
!781 = !{ptr @.str.522, !782, !"<string literal>", i1 false, i1 false}
!782 = !{!"../kernel/sched/debug.c", i32 564, i32 2}
!783 = !{ptr @print_rq._entry, !782, !"_entry", i1 false, i1 false}
!784 = !{ptr @print_rq._entry_ptr, !782, !"_entry_ptr", i1 false, i1 false}
!785 = !{ptr @.str.523, !786, !"<string literal>", i1 false, i1 false}
!786 = !{!"../kernel/sched/debug.c", i32 565, i32 2}
!787 = !{ptr @.str.525, !786, !"<string literal>", i1 false, i1 false}
!788 = !{ptr @print_rq._entry.524, !786, !"_entry", i1 false, i1 false}
!789 = !{ptr @print_rq._entry_ptr.526, !786, !"_entry_ptr", i1 false, i1 false}
!790 = !{ptr @.str.527, !791, !"<string literal>", i1 false, i1 false}
!791 = !{!"../kernel/sched/debug.c", i32 566, i32 2}
!792 = !{ptr @.str.529, !791, !"<string literal>", i1 false, i1 false}
!793 = !{ptr @print_rq._entry.528, !791, !"_entry", i1 false, i1 false}
!794 = !{ptr @print_rq._entry_ptr.530, !791, !"_entry_ptr", i1 false, i1 false}
!795 = !{ptr @.str.531, !796, !"<string literal>", i1 false, i1 false}
!796 = !{!"../kernel/sched/debug.c", i32 568, i32 2}
!797 = !{ptr @.str.533, !796, !"<string literal>", i1 false, i1 false}
!798 = !{ptr @print_rq._entry.532, !796, !"_entry", i1 false, i1 false}
!799 = !{ptr @print_rq._entry_ptr.534, !796, !"_entry_ptr", i1 false, i1 false}
!800 = distinct !{null, !801, !"__warned", i1 false, i1 false}
!801 = !{!"../kernel/sched/debug.c", i32 572, i32 2}
!802 = !{ptr @.str.535, !801, !"<string literal>", i1 false, i1 false}
!803 = distinct !{null, !804, !"__warned", i1 false, i1 false}
!804 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!805 = !{ptr @.str.536, !804, !"<string literal>", i1 false, i1 false}
!806 = !{ptr @.str.537, !804, !"<string literal>", i1 false, i1 false}
!807 = !{ptr @.str.538, !808, !"<string literal>", i1 false, i1 false}
!808 = !{!"../kernel/sched/debug.c", i32 534, i32 3}
!809 = !{ptr @.str.539, !808, !"<string literal>", i1 false, i1 false}
!810 = !{ptr @.str.540, !808, !"<string literal>", i1 false, i1 false}
!811 = !{ptr @print_task._entry, !808, !"_entry", i1 false, i1 false}
!812 = !{ptr @print_task._entry_ptr, !808, !"_entry_ptr", i1 false, i1 false}
!813 = !{ptr @.str.541, !814, !"<string literal>", i1 false, i1 false}
!814 = !{!"../kernel/sched/debug.c", i32 536, i32 3}
!815 = !{ptr @.str.543, !814, !"<string literal>", i1 false, i1 false}
!816 = !{ptr @print_task._entry.542, !814, !"_entry", i1 false, i1 false}
!817 = !{ptr @print_task._entry_ptr.544, !814, !"_entry_ptr", i1 false, i1 false}
!818 = !{ptr @.str.545, !819, !"<string literal>", i1 false, i1 false}
!819 = !{!"../kernel/sched/debug.c", i32 538, i32 2}
!820 = !{ptr @.str.547, !819, !"<string literal>", i1 false, i1 false}
!821 = !{ptr @print_task._entry.546, !819, !"_entry", i1 false, i1 false}
!822 = !{ptr @print_task._entry_ptr.548, !819, !"_entry_ptr", i1 false, i1 false}
!823 = !{ptr @.str.549, !824, !"<string literal>", i1 false, i1 false}
!824 = !{!"../kernel/sched/debug.c", i32 544, i32 2}
!825 = !{ptr @.str.551, !824, !"<string literal>", i1 false, i1 false}
!826 = !{ptr @print_task._entry.550, !824, !"_entry", i1 false, i1 false}
!827 = !{ptr @print_task._entry_ptr.552, !824, !"_entry_ptr", i1 false, i1 false}
!828 = !{ptr @.str.553, !829, !"<string literal>", i1 false, i1 false}
!829 = !{!"../kernel/sched/debug.c", i32 554, i32 2}
!830 = !{ptr @.str.555, !829, !"<string literal>", i1 false, i1 false}
!831 = !{ptr @print_task._entry.554, !829, !"_entry", i1 false, i1 false}
!832 = !{ptr @print_task._entry_ptr.556, !829, !"_entry_ptr", i1 false, i1 false}
!833 = !{ptr @print_task._entry.557, !829, !"_entry", i1 false, i1 false}
!834 = !{ptr @print_task._entry_ptr.558, !829, !"_entry_ptr", i1 false, i1 false}
!835 = !{ptr @print_task._entry.559, !836, !"_entry", i1 false, i1 false}
!836 = !{!"../kernel/sched/debug.c", i32 557, i32 2}
!837 = !{ptr @print_task._entry_ptr.560, !836, !"_entry_ptr", i1 false, i1 false}
!838 = !{ptr @task_index_to_char.state_char, !839, !"state_char", i1 false, i1 false}
!839 = !{!"../include/linux/sched.h", i32 1638, i32 20}
!840 = distinct !{null, !841, !"__warned", i1 false, i1 false}
!841 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!842 = !{ptr @.str.561, !841, !"<string literal>", i1 false, i1 false}
!843 = !{!"sp"}
!844 = !{i32 1, !"wchar_size", i32 2}
!845 = !{i32 1, !"min_enum_size", i32 4}
!846 = !{i32 8, !"branch-target-enforcement", i32 0}
!847 = !{i32 8, !"sign-return-address", i32 0}
!848 = !{i32 8, !"sign-return-address-all", i32 0}
!849 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!850 = !{i32 7, !"uwtable", i32 1}
!851 = !{i32 7, !"frame-pointer", i32 2}
!852 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!853 = !{!"branch_weights", i32 2000, i32 1}
!854 = !{i64 879135, i64 879162}
!855 = !{i64 879830, i64 879857, i64 879890, i64 879911, i64 879938, i64 879964}
!856 = !{i64 920644, i64 920705}
!857 = !{i64 923376}
!858 = !{!"branch_weights", i32 1, i32 2000}
!859 = !{i64 923661}
!860 = !{i64 2148339779, i64 2148339784, i64 2148339797, i64 2148339841, i64 2148339875, i64 2148339896}
!861 = !{i64 2148364966, i64 2148365246, i64 2148365580, i64 2148365914}
!862 = !{i64 2150757920, i64 2150757945}
!863 = !{i64 3253475}
!864 = !{i64 3253672}
!865 = !{i64 2150738905}
!866 = !{!"auto-init"}
!867 = !{i64 2149353900}
!868 = !{i64 2149354166}
!869 = !{i32 0, i32 33}
