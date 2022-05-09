; ModuleID = '/llk/IR_all_yes/block/bfq-cgroup.c_pt.bc'
source_filename = "../block/bfq-cgroup.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.blkcg_policy = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cftype = type { [64 x i8], i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key }
%struct.list_head = type { ptr, ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.blkcg = type { %struct.cgroup_subsys_state, %struct.spinlock, %struct.refcount_struct, %struct.xarray, ptr, %struct.hlist_head, [6 x ptr], %struct.list_head, [129 x i8], %struct.list_head }
%struct.cgroup_subsys_state = type { ptr, ptr, %struct.percpu_ref, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i64, %struct.atomic_t, %struct.work_struct, %struct.rcu_work, ptr }
%struct.percpu_ref = type { i32, ptr }
%struct.atomic_t = type { i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.static_key_true = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t, %union.anon.80 }
%union.anon.80 = type { i32 }
%struct.bfq_group = type { %struct.blkg_policy_data, [128 x i8], i32, %struct.bfq_entity, %struct.bfq_sched_data, ptr, [2 x [8 x ptr]], ptr, ptr, i32, %struct.rb_root, %struct.bfqg_stats }
%struct.blkg_policy_data = type { ptr, i32 }
%struct.bfq_entity = type { %struct.rb_node, i8, i64, i64, ptr, i64, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, i32, i8, ptr }
%struct.rb_node = type { i32, ptr, ptr }
%struct.bfq_sched_data = type { ptr, ptr, [3 x %struct.bfq_service_tree], i32 }
%struct.bfq_service_tree = type { %struct.rb_root, %struct.rb_root, ptr, ptr, i64, i32 }
%struct.rb_root = type { ptr }
%struct.bfqg_stats = type { %struct.blkg_rwstat, %struct.blkg_rwstat, %struct.blkg_rwstat, %struct.blkg_rwstat, %struct.blkg_rwstat, %struct.blkg_rwstat, %struct.bfq_stat, %struct.bfq_stat, %struct.bfq_stat, %struct.bfq_stat, %struct.bfq_stat, %struct.bfq_stat, %struct.bfq_stat, i64, i64, i64, i16 }
%struct.blkg_rwstat = type { [5 x %struct.percpu_counter], [5 x %struct.atomic64_t] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.atomic64_t = type { i64 }
%struct.bfq_stat = type { %struct.percpu_counter, %struct.atomic64_t }
%struct.bfq_data = type { ptr, %struct.list_head, ptr, %struct.rb_root_cached, i32, [3 x i32], i32, i32, i32, i8, i32, i32, i32, i32, %struct.hrtimer, ptr, i64, i64, i64, ptr, ptr, i64, i8, ptr, i8, i64, i64, i64, i64, i32, i32, i32, i64, i32, i64, i32, i32, %struct.list_head, %struct.list_head, [2 x i64], i32, i32, i32, i32, i32, i8, i32, i32, i32, ptr, i32, i8, %struct.hlist_head, i8, i32, i32, i32, i32, i32, i32, i64, %struct.bfq_queue, %struct.spinlock, ptr, ptr, [2 x [2 x i32]], i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.bfq_queue = type { i32, i32, ptr, i16, i16, i16, i16, i64, i32, i32, ptr, %struct.rb_node, ptr, %struct.rb_root, ptr, [2 x i32], i32, %struct.list_head, %struct.bfq_entity, ptr, i32, i32, i32, i32, %struct.list_head, %struct.bfq_ttime, i64, i64, i32, %struct.hlist_node, i64, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i64, %struct.hlist_node, %struct.hlist_head }
%struct.bfq_ttime = type { i64, i64, i32, i64 }
%struct.blkcg_gq = type { ptr, %struct.list_head, %struct.hlist_node, ptr, ptr, %struct.percpu_ref, i8, ptr, %struct.blkg_iostat_set, [6 x ptr], %struct.spinlock, %struct.bio_list, %struct.work_struct, %struct.atomic_t, %struct.atomic64_t, %struct.atomic64_t, i64, i32, %struct.callback_head }
%struct.blkg_iostat_set = type { %struct.u64_stats_sync, %struct.blkg_iostat, %struct.blkg_iostat }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.blkg_iostat = type { [3 x i64], [3 x i64] }
%struct.bio_list = type { ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.percpu_ref_data = type { %struct.atomic_t, ptr, ptr, i8, %struct.callback_head, ptr }
%struct.request = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, %union.anon.74, ptr, i64, i64, i64, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, %struct.atomic_t, i32, %union.anon.81, %union.anon.82, %union.anon.83, %union.anon.86, ptr, ptr }
%union.anon.74 = type { %struct.list_head }
%union.anon.81 = type { %struct.hlist_node }
%union.anon.82 = type { %struct.rb_node }
%union.anon.83 = type { %struct.anon.85 }
%struct.anon.85 = type { i32, %struct.list_head, ptr }
%union.anon.86 = type { i64, [8 x i8] }
%struct.bio = type { ptr, ptr, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, i32, ptr, ptr, ptr, %struct.bio_issue, i64, ptr, %union.anon.43, i16, i16, %struct.atomic_t, ptr, ptr, [0 x %struct.bio_vec] }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%struct.bio_issue = type { i64 }
%union.anon.43 = type { ptr }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.request_queue = type { ptr, ptr, %struct.percpu_ref, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, i32, %struct.spinlock, ptr, %struct.kobject, ptr, %struct.blk_integrity, ptr, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, %struct.timer_list, %struct.work_struct, %struct.atomic_t, ptr, %struct.list_head, [1 x i32], ptr, %struct.list_head, %struct.queue_limits, i32, i32, ptr, ptr, i32, i32, i32, %struct.mutex, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, ptr, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, i32, ptr, %struct.list_head, %struct.bio_set, ptr, ptr, ptr, i8, [5 x i64], ptr, [0 x %struct.srcu_struct] }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.blk_integrity = type { ptr, i8, i8, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.queue_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.srcu_struct = type { [3 x %struct.srcu_node], [3 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.60, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.30 }
%struct.llist_node = type { ptr }
%union.anon.30 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr, i32, [36 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [72 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr, ptr, ptr, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.uclamp_se = type { i16, [2 x i8] }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [24 x i8] }
%struct.cpumask = type { [1 x i32] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
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
%union.anon.60 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.bfq_io_cq = type { %struct.io_cq, [2 x ptr], i32, i64, i8, i8, i64, i64, i8, i8, i32, i32, i32, i32, i32, i32, %struct.bfq_ttime, i64, i32, i32, ptr, i8 }
%struct.io_cq = type { ptr, ptr, %union.anon.44, %union.anon.45, i32 }
%union.anon.44 = type { %struct.list_head }
%union.anon.45 = type { %struct.hlist_node }
%struct.cgroup = type { %struct.cgroup_subsys_state, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, %struct.cgroup_file, %struct.cgroup_file, i16, i16, i16, i16, [14 x ptr], ptr, %struct.list_head, [14 x %struct.list_head], ptr, ptr, ptr, %struct.list_head, %struct.cgroup_base_stat, %struct.cgroup_base_stat, %struct.prev_cputime, %struct.list_head, %struct.mutex, %struct.wait_queue_head, %struct.work_struct, %struct.psi_group, %struct.cgroup_bpf, %struct.atomic_t, %struct.cgroup_freezer_state, [0 x i64] }
%struct.cgroup_file = type { ptr, i32, %struct.timer_list }
%struct.cgroup_base_stat = type { %struct.task_cputime }
%struct.task_cputime = type { i64, i64, i64 }
%struct.psi_group = type { %struct.mutex, ptr, [6 x i64], i64, i64, %struct.delayed_work, [2 x [6 x i64]], [6 x [3 x i32]], ptr, %struct.timer_list, %struct.wait_queue_head, %struct.atomic_t, %struct.mutex, %struct.list_head, [6 x i32], i32, i64, [6 x i64], i64, i64 }
%struct.cgroup_bpf = type { [23 x ptr], [23 x %struct.list_head], [23 x i32], %struct.list_head, ptr, %struct.percpu_ref, %struct.work_struct }
%struct.cgroup_freezer_state = type { i8, i32, i32, i32 }
%struct.bfq_group_data = type { %struct.blkcg_policy_data, i32 }
%struct.blkcg_policy_data = type { ptr, i32 }
%struct.elevator_queue = type { ptr, ptr, %struct.kobject, %struct.mutex, i8, [64 x %struct.hlist_head] }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.blkg_conf_ctx = type { ptr, ptr, ptr }
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.lockdep_map, ptr, ptr, %struct.rb_node, ptr, i32, %union.anon.42, ptr, i64, i16, i16, ptr }
%union.anon.42 = type { %struct.kernfs_elem_attr }
%struct.kernfs_elem_attr = type { ptr, ptr, i64, ptr }
%struct.blkg_rwstat_sample = type { [5 x i64] }

@blkcg_policy_bfq = dso_local global { %struct.blkcg_policy, [40 x i8] } { %struct.blkcg_policy { i32 0, ptr @bfq_blkg_files, ptr @bfq_blkcg_legacy_files, ptr @bfq_cpd_alloc, ptr @bfq_cpd_init, ptr @bfq_cpd_free, ptr @bfq_cpd_init, ptr @bfq_pd_alloc, ptr @bfq_pd_init, ptr null, ptr @bfq_pd_offline, ptr @bfq_pd_free, ptr @bfq_pd_reset_stats, ptr null }, [40 x i8] zeroinitializer }, align 32
@bfq_blkcg_legacy_files = dso_local global { [24 x %struct.cftype], [896 x i8] } { [24 x %struct.cftype] [%struct.cftype { [64 x i8] c"bfq.weight\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0, i32 2, i32 0, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bfq_io_show_weight_legacy, ptr null, ptr null, ptr null, ptr @bfq_io_set_weight_legacy, ptr null, ptr null, ptr null, %struct.lock_class_key zeroinitializer }, %struct.cftype { [64 x i8] c"bfq.weight_device\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0, i32 2, i32 0, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bfq_io_show_weight, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bfq_io_set_weight, ptr null, %struct.lock_class_key zeroinitializer }, %struct.cftype { [64 x i8] c"bfq.io_service_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 448, i32 0, i32 0, i32 0, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bfqg_print_rwstat, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.lock_class_key zeroinitializer }, %struct.cftype { [64 x i8] c"bfq.io_serviced\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 848, i32 0, i32 0, i32 0, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bfqg_print_rwstat, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.lock_class_key zeroinitializer }, %struct.cftype { [64 x i8] c"bfq.time\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2848, i32 0, i32 0, i32 0, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bfqg_print_stat, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.lock_class_key zeroinitializer }, %struct.cftype { [64 x i8] c"bfq.sectors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0, i32 0, i32 0, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bfqg_print_stat_sectors, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.lock_class_key zeroinitializer }, %struct.cftype { [64 x i8] c"bfq.io_service_time\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1648, i32 0, i32 0, i32 0, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bfqg_print_rwstat, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.lock_class_key zeroinitializer }, %struct.cftype { [64 x i8] c"bfq.io_wait_time\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2048, i32 0, i32 0, i32 0, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bfqg_print_rwstat, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.lock_class_key zeroinitializer }, %struct.cftype { [64 x i8] c"bfq.io_merged\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1248, i32 0, i32 0, i32 0, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bfqg_print_rwstat, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.lock_class_key zeroinitializer }, %struct.cftype { [64 x i8] c"bfq.io_queued\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2448, i32 0, i32 0, i32 0, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bfqg_print_rwstat, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.lock_class_key zeroinitializer }, %struct.cftype { [64 x i8] c"bfq.io_service_bytes_recursive\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 448, i32 0, i32 0, i32 0, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bfqg_print_rwstat_recursive, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.lock_class_key zeroinitializer }, %struct.cftype { [64 x i8] c"bfq.io_serviced_recursive\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 848, i32 0, i32 0, i32 0, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bfqg_print_rwstat_recursive, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.lock_class_key zeroinitializer }, %struct.cftype { [64 x i8] c"bfq.time_recursive\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2848, i32 0, i32 0, i32 0, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bfqg_print_stat_recursive, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.lock_class_key zeroinitializer }, %struct.cftype { [64 x i8] c"bfq.sectors_recursive\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0, i32 0, i32 0, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bfqg_print_stat_sectors_recursive, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.lock_class_key zeroinitializer }, %struct.cftype { [64 x i8] c"bfq.io_service_time_recursive\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1648, i32 0, i32 0, i32 0, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bfqg_print_rwstat_recursive, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.lock_class_key zeroinitializer }, %struct.cftype { [64 x i8] c"bfq.io_wait_time_recursive\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2048, i32 0, i32 0, i32 0, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bfqg_print_rwstat_recursive, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.lock_class_key zeroinitializer }, %struct.cftype { [64 x i8] c"bfq.io_merged_recursive\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1248, i32 0, i32 0, i32 0, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bfqg_print_rwstat_recursive, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.lock_class_key zeroinitializer }, %struct.cftype { [64 x i8] c"bfq.io_queued_recursive\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2448, i32 0, i32 0, i32 0, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bfqg_print_rwstat_recursive, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.lock_class_key zeroinitializer }, %struct.cftype { [64 x i8] c"bfq.avg_queue_size\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0, i32 0, i32 0, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bfqg_print_avg_queue_size, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.lock_class_key zeroinitializer }, %struct.cftype { [64 x i8] c"bfq.group_wait_time\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 3168, i32 0, i32 0, i32 0, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bfqg_print_stat, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.lock_class_key zeroinitializer }, %struct.cftype { [64 x i8] c"bfq.idle_time\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 3248, i32 0, i32 0, i32 0, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bfqg_print_stat, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.lock_class_key zeroinitializer }, %struct.cftype { [64 x i8] c"bfq.empty_time\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 3328, i32 0, i32 0, i32 0, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bfqg_print_stat, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.lock_class_key zeroinitializer }, %struct.cftype { [64 x i8] c"bfq.dequeue\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 3088, i32 0, i32 0, i32 0, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bfqg_print_stat, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.lock_class_key zeroinitializer }, %struct.cftype zeroinitializer], [896 x i8] zeroinitializer }, align 32
@bfq_blkg_files = dso_local global { [2 x %struct.cftype], [80 x i8] } { [2 x %struct.cftype] [%struct.cftype { [64 x i8] c"bfq.weight\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0, i32 2, i32 0, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bfq_io_show_weight, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bfq_io_set_weight, ptr null, %struct.lock_class_key zeroinitializer }, %struct.cftype zeroinitializer], [80 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@blkg_lookup.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"include/linux/blk-cgroup.h\00", [37 x i8] zeroinitializer }, align 32
@blkcg_root = external dso_local global %struct.blkcg, align 8
@__blkg_lookup.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@task_css.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@cgroup_mutex = external dso_local global %struct.mutex, align 4
@css_set_lock = external dso_local global %struct.spinlock, align 4
@.str.6 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/cgroup.h\00", [41 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.7 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@io_cgrp_subsys_on_dfl_key = external dso_local global %struct.static_key_true, align 4
@bfq_stat_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str.8 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"block/bfq-cgroup.c\00", [45 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"default %u\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"default %llu\00", [19 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%llu\00", [27 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"default\00", [24 x i8] zeroinitializer }, align 32
@___asan_gen_.14 = private unnamed_addr constant [17 x i8] c"blkcg_policy_bfq\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 1250, i32 21 }
@___asan_gen_.17 = private unnamed_addr constant [23 x i8] c"bfq_blkcg_legacy_files\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 1266, i32 15 }
@___asan_gen_.20 = private unnamed_addr constant [15 x i8] c"bfq_blkg_files\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 1392, i32 15 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 358, i32 2 }
@___asan_gen_.27 = private unnamed_addr constant [30 x i8] c"../include/linux/blk-cgroup.h\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 340, i32 9 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 695, i32 2 }
@___asan_gen_.36 = private unnamed_addr constant [26 x i8] c"../include/linux/cgroup.h\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 494, i32 9 }
@___asan_gen_.39 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 723, i32 2 }
@___asan_gen_.41 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 23, i32 8 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 415, i32 2 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 970, i32 17 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 990, i32 17 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 1105, i32 35 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 1069, i32 23 }
@___asan_gen_.59 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.60 = private constant [22 x i8] c"../block/bfq-cgroup.c\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 1074, i32 38 }
@llvm.compiler.used = appending global [16 x ptr] [ptr @blkcg_policy_bfq, ptr @bfq_blkcg_legacy_files, ptr @bfq_blkg_files, ptr @.str, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @bfq_stat_init.__key, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blkcg_policy_bfq to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfq_blkcg_legacy_files to i32), i32 3648, i32 4544, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfq_blkg_files to i32), i32 304, i32 384, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfq_stat_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bfqg_stats_update_dequeue(ptr noundef %bfqg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dequeue = getelementptr inbounds %struct.bfq_group, ptr %bfqg, i32 0, i32 11, i32 9
  tail call void @percpu_counter_add_batch(ptr noundef %dequeue, i64 noundef 1, i32 noundef 1073741823) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bfqg_stats_set_start_empty_time(ptr noundef %bfqg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %queued = getelementptr inbounds %struct.bfq_group, ptr %bfqg, i32 0, i32 11, i32 5
  %call.i.i.i = tail call i64 @__percpu_counter_sum(ptr noundef %queued) #13
  %0 = tail call i64 @llvm.smax.i64(i64 %call.i.i.i, i64 0) #13
  %arrayidx.1.i.i = getelementptr %struct.bfq_group, ptr %bfqg, i32 0, i32 11, i32 5, i32 0, i32 1
  %call.i.1.i.i = tail call i64 @__percpu_counter_sum(ptr noundef %arrayidx.1.i.i) #13
  %1 = tail call i64 @llvm.smax.i64(i64 %call.i.1.i.i, i64 0) #13
  %arrayidx.2.i.i = getelementptr %struct.bfq_group, ptr %bfqg, i32 0, i32 11, i32 5, i32 0, i32 2
  %call.i.2.i.i = tail call i64 @__percpu_counter_sum(ptr noundef %arrayidx.2.i.i) #13
  %arrayidx.3.i.i = getelementptr %struct.bfq_group, ptr %bfqg, i32 0, i32 11, i32 5, i32 0, i32 3
  %call.i.3.i.i = tail call i64 @__percpu_counter_sum(ptr noundef %arrayidx.3.i.i) #13
  %arrayidx.4.i.i = getelementptr %struct.bfq_group, ptr %bfqg, i32 0, i32 11, i32 5, i32 0, i32 4
  %call.i.4.i.i = tail call i64 @__percpu_counter_sum(ptr noundef %arrayidx.4.i.i) #13
  %add.i = sub nsw i64 0, %0
  call void @__sanitizer_cov_trace_cmp8(i64 %1, i64 %add.i)
  %tobool.not = icmp eq i64 %1, %add.i
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags.i = getelementptr inbounds %struct.bfq_group, ptr %bfqg, i32 0, i32 11, i32 16
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %flags.i, align 8
  %4 = and i16 %3, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool3.not = icmp eq i16 %4, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %call.i = tail call i64 @ktime_get() #13
  %start_empty_time = getelementptr inbounds %struct.bfq_group, ptr %bfqg, i32 0, i32 11, i32 15
  %5 = ptrtoint ptr %start_empty_time to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %call.i, ptr %start_empty_time, align 8
  %6 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %flags.i, align 8
  %8 = or i16 %7, 4
  store i16 %8, ptr %flags.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bfqg_stats_update_idle_time(ptr noundef %bfqg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %flags.i = getelementptr inbounds %struct.bfq_group, ptr %bfqg, i32 0, i32 11, i32 16
  %0 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %flags.i, align 8
  %2 = and i16 %1, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool.not = icmp eq i16 %2, 0
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end5

if.then:                                          ; preds = %entry
  %call.i = tail call i64 @ktime_get() #13
  %start_idle_time = getelementptr inbounds %struct.bfq_group, ptr %bfqg, i32 0, i32 11, i32 14
  %3 = ptrtoint ptr %start_idle_time to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %start_idle_time, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %call.i, i64 %4)
  %cmp = icmp ugt i64 %call.i, %4
  br i1 %cmp, label %if.then3, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %idle_time = getelementptr inbounds %struct.bfq_group, ptr %bfqg, i32 0, i32 11, i32 11
  %sub = sub i64 %call.i, %4
  tail call void @percpu_counter_add_batch(ptr noundef %idle_time, i64 noundef %sub, i32 noundef 1073741823) #13
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then.if.end_crit_edge
  %5 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %flags.i, align 8
  %7 = and i16 %6, -3
  store i16 %7, ptr %flags.i, align 8
  br label %if.end5

if.end5:                                          ; preds = %if.end, %entry.if.end5_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bfqg_stats_set_start_idle_time(ptr nocapture noundef %bfqg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i64 @ktime_get() #13
  %start_idle_time = getelementptr inbounds %struct.bfq_group, ptr %bfqg, i32 0, i32 11, i32 14
  %0 = ptrtoint ptr %start_idle_time to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %call.i, ptr %start_idle_time, align 8
  %flags.i = getelementptr inbounds %struct.bfq_group, ptr %bfqg, i32 0, i32 11, i32 16
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %flags.i, align 8
  %3 = or i16 %2, 2
  store i16 %3, ptr %flags.i, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bfqg_stats_update_avg_queue_size(ptr noundef %bfqg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %avg_queue_size_sum = getelementptr inbounds %struct.bfq_group, ptr %bfqg, i32 0, i32 11, i32 7
  %queued = getelementptr inbounds %struct.bfq_group, ptr %bfqg, i32 0, i32 11, i32 5
  %call.i.i.i = tail call i64 @__percpu_counter_sum(ptr noundef %queued) #13
  %0 = tail call i64 @llvm.smax.i64(i64 %call.i.i.i, i64 0) #13
  %arrayidx.1.i.i = getelementptr %struct.bfq_group, ptr %bfqg, i32 0, i32 11, i32 5, i32 0, i32 1
  %call.i.1.i.i = tail call i64 @__percpu_counter_sum(ptr noundef %arrayidx.1.i.i) #13
  %1 = tail call i64 @llvm.smax.i64(i64 %call.i.1.i.i, i64 0) #13
  %arrayidx.2.i.i = getelementptr %struct.bfq_group, ptr %bfqg, i32 0, i32 11, i32 5, i32 0, i32 2
  %call.i.2.i.i = tail call i64 @__percpu_counter_sum(ptr noundef %arrayidx.2.i.i) #13
  %arrayidx.3.i.i = getelementptr %struct.bfq_group, ptr %bfqg, i32 0, i32 11, i32 5, i32 0, i32 3
  %call.i.3.i.i = tail call i64 @__percpu_counter_sum(ptr noundef %arrayidx.3.i.i) #13
  %arrayidx.4.i.i = getelementptr %struct.bfq_group, ptr %bfqg, i32 0, i32 11, i32 5, i32 0, i32 4
  %call.i.4.i.i = tail call i64 @__percpu_counter_sum(ptr noundef %arrayidx.4.i.i) #13
  %add.i = add nuw i64 %1, %0
  tail call void @percpu_counter_add_batch(ptr noundef %avg_queue_size_sum, i64 noundef %add.i, i32 noundef 1073741823) #13
  %avg_queue_size_samples = getelementptr inbounds %struct.bfq_group, ptr %bfqg, i32 0, i32 11, i32 8
  tail call void @percpu_counter_add_batch(ptr noundef %avg_queue_size_samples, i64 noundef 1, i32 noundef 1073741823) #13
  %flags.i.i = getelementptr inbounds %struct.bfq_group, ptr %bfqg, i32 0, i32 11, i32 16
  %2 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %flags.i.i, align 8
  %4 = and i16 %3, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool.not.i = icmp eq i16 %4, 0
  br i1 %tobool.not.i, label %entry.bfqg_stats_update_group_wait_time.exit_crit_edge, label %if.end.i

entry.bfqg_stats_update_group_wait_time.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %bfqg_stats_update_group_wait_time.exit

if.end.i:                                         ; preds = %entry
  %call.i.i = tail call i64 @ktime_get() #13
  %start_group_wait_time.i = getelementptr inbounds %struct.bfq_group, ptr %bfqg, i32 0, i32 11, i32 13
  %5 = ptrtoint ptr %start_group_wait_time.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %start_group_wait_time.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %call.i.i, i64 %6)
  %cmp.i = icmp ugt i64 %call.i.i, %6
  br i1 %cmp.i, label %if.then2.i, label %if.end.i.if.end4.i_crit_edge

if.end.i.if.end4.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %group_wait_time.i = getelementptr inbounds %struct.bfq_group, ptr %bfqg, i32 0, i32 11, i32 10
  %sub.i = sub i64 %call.i.i, %6
  tail call void @percpu_counter_add_batch(ptr noundef %group_wait_time.i, i64 noundef %sub.i, i32 noundef 1073741823) #13
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then2.i, %if.end.i.if.end4.i_crit_edge
  %7 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %flags.i.i, align 8
  %9 = and i16 %8, -2
  store i16 %9, ptr %flags.i.i, align 8
  br label %bfqg_stats_update_group_wait_time.exit

bfqg_stats_update_group_wait_time.exit:           ; preds = %if.end4.i, %entry.bfqg_stats_update_group_wait_time.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bfqg_stats_update_io_add(ptr noundef %bfqg, ptr noundef readonly %bfqq, i32 noundef %op) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %and.i.i = and i32 %op, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.i.i)
  %cmp.i.i = icmp eq i32 %and.i.i, 3
  br i1 %cmp.i.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx.i = getelementptr %struct.bfq_group, ptr %bfqg, i32 0, i32 11, i32 5, i32 0, i32 4
  br label %blkg_rwstat_add.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %queued = getelementptr inbounds %struct.bfq_group, ptr %bfqg, i32 0, i32 11, i32 5
  %and.i25.i = and i32 %op, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i25.i)
  %tobool.i.not.i = icmp eq i32 %and.i25.i, 0
  %arrayidx4.i = getelementptr %struct.bfq_group, ptr %bfqg, i32 0, i32 11, i32 5, i32 0, i32 1
  %spec.select.i = select i1 %tobool.i.not.i, ptr %queued, ptr %arrayidx4.i
  br label %blkg_rwstat_add.exit

blkg_rwstat_add.exit:                             ; preds = %if.else.i, %if.then.i
  %cnt.0.i = phi ptr [ %arrayidx.i, %if.then.i ], [ %spec.select.i, %if.else.i ]
  tail call void @percpu_counter_add_batch(ptr noundef %cnt.0.i, i64 noundef 1, i32 noundef 1073741823) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp.i27.i = icmp eq i32 %and.i.i, 0
  %0 = and i32 %op, 395264
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.i28.i = icmp ne i32 %0, 0
  %1 = or i1 %cmp.i27.i, %tobool.i28.i
  %arrayidx12.i = getelementptr %struct.bfq_group, ptr %bfqg, i32 0, i32 11, i32 5, i32 0, i32 2
  %arrayidx15.i = getelementptr %struct.bfq_group, ptr %bfqg, i32 0, i32 11, i32 5, i32 0, i32 3
  %cnt.1.i = select i1 %1, ptr %arrayidx12.i, ptr %arrayidx15.i
  tail call void @percpu_counter_add_batch(ptr noundef %cnt.1.i, i64 noundef 1, i32 noundef 1073741823) #13
  %flags.i.i = getelementptr inbounds %struct.bfq_group, ptr %bfqg, i32 0, i32 11, i32 16
  %2 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %flags.i.i, align 8
  %4 = and i16 %3, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool.not.i = icmp eq i16 %4, 0
  br i1 %tobool.not.i, label %blkg_rwstat_add.exit.bfqg_stats_end_empty_time.exit_crit_edge, label %if.end.i

blkg_rwstat_add.exit.bfqg_stats_end_empty_time.exit_crit_edge: ; preds = %blkg_rwstat_add.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %bfqg_stats_end_empty_time.exit

if.end.i:                                         ; preds = %blkg_rwstat_add.exit
  %call.i.i = tail call i64 @ktime_get() #13
  %start_empty_time.i = getelementptr inbounds %struct.bfq_group, ptr %bfqg, i32 0, i32 11, i32 15
  %5 = ptrtoint ptr %start_empty_time.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %start_empty_time.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %call.i.i, i64 %6)
  %cmp.i = icmp ugt i64 %call.i.i, %6
  br i1 %cmp.i, label %if.then2.i, label %if.end.i.if.end4.i_crit_edge

if.end.i.if.end4.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %empty_time.i = getelementptr inbounds %struct.bfq_group, ptr %bfqg, i32 0, i32 11, i32 12
  %sub.i = sub i64 %call.i.i, %6
  tail call void @percpu_counter_add_batch(ptr noundef %empty_time.i, i64 noundef %sub.i, i32 noundef 1073741823) #13
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then2.i, %if.end.i.if.end4.i_crit_edge
  %7 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %flags.i.i, align 8
  %9 = and i16 %8, -5
  store i16 %9, ptr %flags.i.i, align 8
  br label %bfqg_stats_end_empty_time.exit

bfqg_stats_end_empty_time.exit:                   ; preds = %if.end4.i, %blkg_rwstat_add.exit.bfqg_stats_end_empty_time.exit_crit_edge
  %bfqd = getelementptr inbounds %struct.bfq_group, ptr %bfqg, i32 0, i32 5
  %10 = ptrtoint ptr %bfqd to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bfqd, align 8
  %in_service_queue = getelementptr inbounds %struct.bfq_data, ptr %11, i32 0, i32 15
  %12 = ptrtoint ptr %in_service_queue to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %in_service_queue, align 8
  %cmp = icmp eq ptr %13, %bfqq
  br i1 %cmp, label %bfqg_stats_end_empty_time.exit.if.end_crit_edge, label %if.then

bfqg_stats_end_empty_time.exit.if.end_crit_edge:  ; preds = %bfqg_stats_end_empty_time.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %bfqg_stats_end_empty_time.exit
  %parent.i = getelementptr inbounds %struct.bfq_queue, ptr %bfqq, i32 0, i32 18, i32 13
  %14 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %parent.i, align 4
  %tobool.not.i6 = icmp eq ptr %15, null
  br i1 %tobool.not.i6, label %cond.false.i, label %cond.true.i

cond.true.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr.i = getelementptr i8, ptr %15, i32 -144
  br label %bfqq_group.exit

cond.false.i:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %bfqd.i = getelementptr inbounds %struct.bfq_queue, ptr %bfqq, i32 0, i32 2
  %16 = ptrtoint ptr %bfqd.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bfqd.i, align 8
  %root_group.i = getelementptr inbounds %struct.bfq_data, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %root_group.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %root_group.i, align 4
  br label %bfqq_group.exit

bfqq_group.exit:                                  ; preds = %cond.false.i, %cond.true.i
  %cond.i = phi ptr [ %add.ptr.i, %cond.true.i ], [ %19, %cond.false.i ]
  %20 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %flags.i.i, align 8
  %22 = and i16 %21, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %tobool.not.i8 = icmp ne i16 %22, 0
  %cmp.i9 = icmp eq ptr %cond.i, %bfqg
  %or.cond.i = or i1 %cmp.i9, %tobool.not.i8
  br i1 %or.cond.i, label %bfqq_group.exit.if.end_crit_edge, label %if.end3.i

bfqq_group.exit.if.end_crit_edge:                 ; preds = %bfqq_group.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.end3.i:                                        ; preds = %bfqq_group.exit
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i10 = tail call i64 @ktime_get() #13
  %start_group_wait_time.i = getelementptr inbounds %struct.bfq_group, ptr %bfqg, i32 0, i32 11, i32 13
  %23 = ptrtoint ptr %start_group_wait_time.i to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %call.i.i10, ptr %start_group_wait_time.i, align 8
  %24 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %flags.i.i, align 8
  %26 = or i16 %25, 1
  store i16 %26, ptr %flags.i.i, align 8
  br label %if.end

if.end:                                           ; preds = %if.end3.i, %bfqq_group.exit.if.end_crit_edge, %bfqg_stats_end_empty_time.exit.if.end_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @bfqq_group(ptr nocapture noundef readonly %bfqq) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.bfq_queue, ptr %bfqq, i32 0, i32 18, i32 13
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr = getelementptr i8, ptr %1, i32 -144
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %bfqd = getelementptr inbounds %struct.bfq_queue, ptr %bfqq, i32 0, i32 2
  %2 = ptrtoint ptr %bfqd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bfqd, align 8
  %root_group = getelementptr inbounds %struct.bfq_data, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %root_group to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %root_group, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %add.ptr, %cond.true ], [ %5, %cond.false ]
  ret ptr %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bfqg_stats_update_io_remove(ptr noundef %bfqg, i32 noundef %op) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %and.i.i = and i32 %op, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.i.i)
  %cmp.i.i = icmp eq i32 %and.i.i, 3
  br i1 %cmp.i.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx.i = getelementptr %struct.bfq_group, ptr %bfqg, i32 0, i32 11, i32 5, i32 0, i32 4
  br label %blkg_rwstat_add.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %queued = getelementptr inbounds %struct.bfq_group, ptr %bfqg, i32 0, i32 11, i32 5
  %and.i25.i = and i32 %op, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i25.i)
  %tobool.i.not.i = icmp eq i32 %and.i25.i, 0
  %arrayidx4.i = getelementptr %struct.bfq_group, ptr %bfqg, i32 0, i32 11, i32 5, i32 0, i32 1
  %spec.select.i = select i1 %tobool.i.not.i, ptr %queued, ptr %arrayidx4.i
  br label %blkg_rwstat_add.exit

blkg_rwstat_add.exit:                             ; preds = %if.else.i, %if.then.i
  %cnt.0.i = phi ptr [ %arrayidx.i, %if.then.i ], [ %spec.select.i, %if.else.i ]
  tail call void @percpu_counter_add_batch(ptr noundef %cnt.0.i, i64 noundef -1, i32 noundef 1073741823) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp.i27.i = icmp eq i32 %and.i.i, 0
  %0 = and i32 %op, 395264
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.i28.i = icmp ne i32 %0, 0
  %1 = or i1 %cmp.i27.i, %tobool.i28.i
  %arrayidx12.i = getelementptr %struct.bfq_group, ptr %bfqg, i32 0, i32 11, i32 5, i32 0, i32 2
  %arrayidx15.i = getelementptr %struct.bfq_group, ptr %bfqg, i32 0, i32 11, i32 5, i32 0, i32 3
  %cnt.1.i = select i1 %1, ptr %arrayidx12.i, ptr %arrayidx15.i
  tail call void @percpu_counter_add_batch(ptr noundef %cnt.1.i, i64 noundef -1, i32 noundef 1073741823) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bfqg_stats_update_io_merged(ptr noundef %bfqg, i32 noundef %op) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %and.i.i = and i32 %op, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.i.i)
  %cmp.i.i = icmp eq i32 %and.i.i, 3
  br i1 %cmp.i.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx.i = getelementptr %struct.bfq_group, ptr %bfqg, i32 0, i32 11, i32 2, i32 0, i32 4
  br label %blkg_rwstat_add.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %merged = getelementptr inbounds %struct.bfq_group, ptr %bfqg, i32 0, i32 11, i32 2
  %and.i25.i = and i32 %op, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i25.i)
  %tobool.i.not.i = icmp eq i32 %and.i25.i, 0
  %arrayidx4.i = getelementptr %struct.bfq_group, ptr %bfqg, i32 0, i32 11, i32 2, i32 0, i32 1
  %spec.select.i = select i1 %tobool.i.not.i, ptr %merged, ptr %arrayidx4.i
  br label %blkg_rwstat_add.exit

blkg_rwstat_add.exit:                             ; preds = %if.else.i, %if.then.i
  %cnt.0.i = phi ptr [ %arrayidx.i, %if.then.i ], [ %spec.select.i, %if.else.i ]
  tail call void @percpu_counter_add_batch(ptr noundef %cnt.0.i, i64 noundef 1, i32 noundef 1073741823) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp.i27.i = icmp eq i32 %and.i.i, 0
  %0 = and i32 %op, 395264
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.i28.i = icmp ne i32 %0, 0
  %1 = or i1 %cmp.i27.i, %tobool.i28.i
  %arrayidx12.i = getelementptr %struct.bfq_group, ptr %bfqg, i32 0, i32 11, i32 2, i32 0, i32 2
  %arrayidx15.i = getelementptr %struct.bfq_group, ptr %bfqg, i32 0, i32 11, i32 2, i32 0, i32 3
  %cnt.1.i = select i1 %1, ptr %arrayidx12.i, ptr %arrayidx15.i
  tail call void @percpu_counter_add_batch(ptr noundef %cnt.1.i, i64 noundef 1, i32 noundef 1073741823) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bfqg_stats_update_completion(ptr noundef %bfqg, i64 noundef %start_time_ns, i64 noundef %io_start_time_ns, i32 noundef %op) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i64 @ktime_get() #13
  call void @__sanitizer_cov_trace_cmp8(i64 %call.i, i64 %io_start_time_ns)
  %cmp = icmp ugt i64 %call.i, %io_start_time_ns
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  %sub = sub i64 %call.i, %io_start_time_ns
  %and.i.i = and i32 %op, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.i.i)
  %cmp.i.i = icmp eq i32 %and.i.i, 3
  br i1 %cmp.i.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx.i = getelementptr %struct.bfq_group, ptr %bfqg, i32 0, i32 11, i32 3, i32 0, i32 4
  br label %blkg_rwstat_add.exit

if.else.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %service_time = getelementptr inbounds %struct.bfq_group, ptr %bfqg, i32 0, i32 11, i32 3
  %and.i25.i = and i32 %op, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i25.i)
  %tobool.i.not.i = icmp eq i32 %and.i25.i, 0
  %arrayidx4.i = getelementptr %struct.bfq_group, ptr %bfqg, i32 0, i32 11, i32 3, i32 0, i32 1
  %spec.select.i = select i1 %tobool.i.not.i, ptr %service_time, ptr %arrayidx4.i
  br label %blkg_rwstat_add.exit

blkg_rwstat_add.exit:                             ; preds = %if.else.i, %if.then.i
  %cnt.0.i = phi ptr [ %arrayidx.i, %if.then.i ], [ %spec.select.i, %if.else.i ]
  tail call void @percpu_counter_add_batch(ptr noundef %cnt.0.i, i64 noundef %sub, i32 noundef 1073741823) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp.i27.i = icmp eq i32 %and.i.i, 0
  %0 = and i32 %op, 395264
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.i28.i = icmp ne i32 %0, 0
  %1 = or i1 %cmp.i27.i, %tobool.i28.i
  %arrayidx12.i = getelementptr %struct.bfq_group, ptr %bfqg, i32 0, i32 11, i32 3, i32 0, i32 2
  %arrayidx15.i = getelementptr %struct.bfq_group, ptr %bfqg, i32 0, i32 11, i32 3, i32 0, i32 3
  %cnt.1.i = select i1 %1, ptr %arrayidx12.i, ptr %arrayidx15.i
  tail call void @percpu_counter_add_batch(ptr noundef %cnt.1.i, i64 noundef %sub, i32 noundef 1073741823) #13
  br label %if.end

if.end:                                           ; preds = %blkg_rwstat_add.exit, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_cmp8(i64 %io_start_time_ns, i64 %start_time_ns)
  %cmp2 = icmp ugt i64 %io_start_time_ns, %start_time_ns
  br i1 %cmp2, label %if.then3, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end5

if.then3:                                         ; preds = %if.end
  %sub4 = sub i64 %io_start_time_ns, %start_time_ns
  %and.i.i13 = and i32 %op, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.i.i13)
  %cmp.i.i14 = icmp eq i32 %and.i.i13, 3
  br i1 %cmp.i.i14, label %if.then.i16, label %if.else.i21

if.then.i16:                                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx.i15 = getelementptr %struct.bfq_group, ptr %bfqg, i32 0, i32 11, i32 4, i32 0, i32 4
  br label %blkg_rwstat_add.exit28

if.else.i21:                                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #15
  %wait_time = getelementptr inbounds %struct.bfq_group, ptr %bfqg, i32 0, i32 11, i32 4
  %and.i25.i17 = and i32 %op, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i25.i17)
  %tobool.i.not.i18 = icmp eq i32 %and.i25.i17, 0
  %arrayidx4.i19 = getelementptr %struct.bfq_group, ptr %bfqg, i32 0, i32 11, i32 4, i32 0, i32 1
  %spec.select.i20 = select i1 %tobool.i.not.i18, ptr %wait_time, ptr %arrayidx4.i19
  br label %blkg_rwstat_add.exit28

blkg_rwstat_add.exit28:                           ; preds = %if.else.i21, %if.then.i16
  %cnt.0.i22 = phi ptr [ %arrayidx.i15, %if.then.i16 ], [ %spec.select.i20, %if.else.i21 ]
  tail call void @percpu_counter_add_batch(ptr noundef %cnt.0.i22, i64 noundef %sub4, i32 noundef 1073741823) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i13)
  %cmp.i27.i23 = icmp eq i32 %and.i.i13, 0
  %2 = and i32 %op, 395264
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.i28.i24 = icmp ne i32 %2, 0
  %3 = or i1 %cmp.i27.i23, %tobool.i28.i24
  %arrayidx12.i25 = getelementptr %struct.bfq_group, ptr %bfqg, i32 0, i32 11, i32 4, i32 0, i32 2
  %arrayidx15.i26 = getelementptr %struct.bfq_group, ptr %bfqg, i32 0, i32 11, i32 4, i32 0, i32 3
  %cnt.1.i27 = select i1 %3, ptr %arrayidx12.i25, ptr %arrayidx15.i26
  tail call void @percpu_counter_add_batch(ptr noundef %cnt.1.i27, i64 noundef %sub4, i32 noundef 1073741823) #13
  br label %if.end5

if.end5:                                          ; preds = %blkg_rwstat_add.exit28, %if.end.if.end5_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @bfqg_to_blkg(ptr noundef readonly %bfqg) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %bfqg, null
  br i1 %tobool.not.i, label %entry.pd_to_blkg.exit_crit_edge, label %cond.true.i

entry.pd_to_blkg.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %pd_to_blkg.exit

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %0 = ptrtoint ptr %bfqg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bfqg, align 4
  br label %pd_to_blkg.exit

pd_to_blkg.exit:                                  ; preds = %cond.true.i, %entry.pd_to_blkg.exit_crit_edge
  %cond.i = phi ptr [ %1, %cond.true.i ], [ null, %entry.pd_to_blkg.exit_crit_edge ]
  ret ptr %cond.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bfqg_and_blkg_put(ptr noundef %bfqg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i.i = icmp eq ptr %bfqg, null
  br i1 %tobool.not.i.i, label %entry.bfqg_to_blkg.exit_crit_edge, label %cond.true.i.i

entry.bfqg_to_blkg.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %bfqg_to_blkg.exit

cond.true.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %0 = ptrtoint ptr %bfqg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bfqg, align 4
  br label %bfqg_to_blkg.exit

bfqg_to_blkg.exit:                                ; preds = %cond.true.i.i, %entry.bfqg_to_blkg.exit_crit_edge
  %cond.i.i = phi ptr [ %1, %cond.true.i.i ], [ null, %entry.bfqg_to_blkg.exit_crit_edge ]
  %refcnt.i = getelementptr inbounds %struct.blkcg_gq, ptr %cond.i.i, i32 0, i32 5
  %2 = tail call i32 @llvm.read_register.i32(metadata !36) #13
  %and.i.i.i.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i.i = add i32 %5, 1
  store volatile i32 %add.i.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !46
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #13
  %call.i.i.i.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i.i.i.i, label %bfqg_to_blkg.exit.rcu_read_lock.exit.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i

bfqg_to_blkg.exit.rcu_read_lock.exit.i.i.i_crit_edge: ; preds = %bfqg_to_blkg.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %bfqg_to_blkg.exit
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 696, ptr noundef nonnull @.str.5) #13
  br label %rcu_read_lock.exit.i.i.i

rcu_read_lock.exit.i.i.i:                         ; preds = %if.then.i.i.i.i, %land.lhs.true2.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge, %bfqg_to_blkg.exit.rcu_read_lock.exit.i.i.i_crit_edge
  %6 = ptrtoint ptr %refcnt.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %refcnt.i, align 4
  %and.i.i.i.i = and i32 %7, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i1.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i1.i.i.i, label %do.body1.i.i.i, label %if.else.i.i.i, !prof !47

do.body1.i.i.i:                                   ; preds = %rcu_read_lock.exit.i.i.i
  %8 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !48
  %9 = tail call i32 @llvm.read_register.i32(metadata !36) #13
  %and.i2.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i2.i.i.i to ptr
  %cpu.i.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %cpu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cpu.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %12
  %13 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i.i.i, align 4
  %add.i.i.i = add i32 %14, %7
  %15 = inttoptr i32 %add.i.i.i to ptr
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  %add15.i.i.i = add i32 %17, -1
  store i32 %add15.i.i.i, ptr %15, align 4
  %18 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #13, !srcloc !49
  %and.i.i.i.i.i = and i32 %18, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then29.i.i.i, label %do.body1.i.i.i.do.end31.i.i.i_crit_edge, !prof !50

do.body1.i.i.i.do.end31.i.i.i_crit_edge:          ; preds = %do.body1.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end31.i.i.i

if.then29.i.i.i:                                  ; preds = %do.body1.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @warn_bogus_irq_restore() #13
  br label %do.end31.i.i.i

do.end31.i.i.i:                                   ; preds = %if.then29.i.i.i, %do.body1.i.i.i.do.end31.i.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %8) #13, !srcloc !51
  br label %if.end48.i.i.i

if.else.i.i.i:                                    ; preds = %rcu_read_lock.exit.i.i.i
  %data.i.i.i = getelementptr inbounds %struct.blkcg_gq, ptr %cond.i.i, i32 0, i32 5, i32 1
  %19 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data.i.i.i, align 4
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %20, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !52
  tail call void @llvm.prefetch.p0(ptr %20, i32 1, i32 3, i32 1) #13
  %21 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %20, ptr %20, i32 1, ptr elementtype(i32) %20) #13, !srcloc !53
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %21, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !54
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i.i.i.i, label %if.then45.i.i.i, label %if.else.i.i.i.if.end48.i.i.i_crit_edge, !prof !50

if.else.i.i.i.if.end48.i.i.i_crit_edge:           ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end48.i.i.i

if.then45.i.i.i:                                  ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %22 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %data.i.i.i, align 4
  %release.i.i.i = getelementptr inbounds %struct.percpu_ref_data, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %release.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %release.i.i.i, align 4
  tail call void %25(ptr noundef %refcnt.i) #13
  br label %if.end48.i.i.i

if.end48.i.i.i:                                   ; preds = %if.then45.i.i.i, %if.else.i.i.i.if.end48.i.i.i_crit_edge, %do.end31.i.i.i
  %call.i3.i.i.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i3.i.i.i, label %if.end48.i.i.i.blkg_put.exit_crit_edge, label %land.lhs.true.i6.i.i.i

if.end48.i.i.i.blkg_put.exit_crit_edge:           ; preds = %if.end48.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %blkg_put.exit

land.lhs.true.i6.i.i.i:                           ; preds = %if.end48.i.i.i
  %call1.i4.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i4.i.i.i)
  %tobool.not.i5.i.i.i = icmp eq i32 %call1.i4.i.i.i, 0
  br i1 %tobool.not.i5.i.i.i, label %land.lhs.true.i6.i.i.i.blkg_put.exit_crit_edge, label %land.lhs.true2.i8.i.i.i

land.lhs.true.i6.i.i.i.blkg_put.exit_crit_edge:   ; preds = %land.lhs.true.i6.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %blkg_put.exit

land.lhs.true2.i8.i.i.i:                          ; preds = %land.lhs.true.i6.i.i.i
  %.b4.i7.i.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i7.i.i.i, label %land.lhs.true2.i8.i.i.i.blkg_put.exit_crit_edge, label %if.then.i9.i.i.i

land.lhs.true2.i8.i.i.i.blkg_put.exit_crit_edge:  ; preds = %land.lhs.true2.i8.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %blkg_put.exit

if.then.i9.i.i.i:                                 ; preds = %land.lhs.true2.i8.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 724, ptr noundef nonnull @.str.7) #13
  br label %blkg_put.exit

blkg_put.exit:                                    ; preds = %if.then.i9.i.i.i, %land.lhs.true2.i8.i.i.i.blkg_put.exit_crit_edge, %land.lhs.true.i6.i.i.i.blkg_put.exit_crit_edge, %if.end48.i.i.i.blkg_put.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !55
  %26 = tail call i32 @llvm.read_register.i32(metadata !36) #13
  %and.i.i.i.i.i10.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i.i10.i.i.i to ptr
  %preempt_count.i.i.i.i11.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i.i11.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i.i11.i.i.i, align 4
  %sub.i.i.i.i.i.i = add i32 %29, -1
  store volatile i32 %sub.i.i.i.i.i.i, ptr %preempt_count.i.i.i.i11.i.i.i, align 4
  tail call void @rcu_read_unlock_strict() #13
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  %ref.i = getelementptr inbounds %struct.bfq_group, ptr %bfqg, i32 0, i32 2
  %30 = ptrtoint ptr %ref.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %ref.i, align 8
  %dec.i = add i32 %31, -1
  store i32 %dec.i, ptr %ref.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp.i = icmp eq i32 %dec.i, 0
  br i1 %cmp.i, label %if.then.i, label %blkg_put.exit.bfqg_put.exit_crit_edge

blkg_put.exit.bfqg_put.exit_crit_edge:            ; preds = %blkg_put.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %bfqg_put.exit

if.then.i:                                        ; preds = %blkg_put.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @kfree(ptr noundef %bfqg) #13
  br label %bfqg_put.exit

bfqg_put.exit:                                    ; preds = %if.then.i, %blkg_put.exit.bfqg_put.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bfqg_stats_update_legacy_io(ptr nocapture noundef readnone %q, ptr nocapture noundef readonly %rq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %bio = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 10
  %0 = ptrtoint ptr %bio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bio, align 8
  %bi_blkg = getelementptr inbounds %struct.bio, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %bi_blkg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bi_blkg, align 8
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %entry.cleanup_crit_edge, label %blkg_to_bfqg.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

blkg_to_bfqg.exit:                                ; preds = %entry
  %4 = load i32, ptr @blkcg_policy_bfq, align 4
  %arrayidx.i.i = getelementptr %struct.blkcg_gq, ptr %3, i32 0, i32 9, i32 %4
  %5 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %blkg_to_bfqg.exit.cleanup_crit_edge, label %if.end

blkg_to_bfqg.exit.cleanup_crit_edge:              ; preds = %blkg_to_bfqg.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %blkg_to_bfqg.exit
  %cmd_flags = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 3
  %7 = ptrtoint ptr %cmd_flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cmd_flags, align 4
  %__data_len.i = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 8
  %9 = ptrtoint ptr %__data_len.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %__data_len.i, align 8
  %conv = zext i32 %10 to i64
  %and.i.i = and i32 %8, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.i.i)
  %cmp.i.i = icmp eq i32 %and.i.i, 3
  br i1 %cmp.i.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx.i = getelementptr %struct.bfq_group, ptr %6, i32 0, i32 11, i32 0, i32 0, i32 4
  br label %blkg_rwstat_add.exit

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %stats = getelementptr inbounds %struct.bfq_group, ptr %6, i32 0, i32 11
  %and.i25.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i25.i)
  %tobool.i.not.i = icmp eq i32 %and.i25.i, 0
  %arrayidx4.i = getelementptr %struct.bfq_group, ptr %6, i32 0, i32 11, i32 0, i32 0, i32 1
  %spec.select.i = select i1 %tobool.i.not.i, ptr %stats, ptr %arrayidx4.i
  br label %blkg_rwstat_add.exit

blkg_rwstat_add.exit:                             ; preds = %if.else.i, %if.then.i
  %cnt.0.i = phi ptr [ %arrayidx.i, %if.then.i ], [ %spec.select.i, %if.else.i ]
  tail call void @percpu_counter_add_batch(ptr noundef %cnt.0.i, i64 noundef %conv, i32 noundef 1073741823) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp.i27.i = icmp eq i32 %and.i.i, 0
  %11 = and i32 %8, 395264
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.i28.i = icmp ne i32 %11, 0
  %12 = or i1 %cmp.i27.i, %tobool.i28.i
  %arrayidx12.i = getelementptr %struct.bfq_group, ptr %6, i32 0, i32 11, i32 0, i32 0, i32 2
  %arrayidx15.i = getelementptr %struct.bfq_group, ptr %6, i32 0, i32 11, i32 0, i32 0, i32 3
  %cnt.1.i = select i1 %12, ptr %arrayidx12.i, ptr %arrayidx15.i
  tail call void @percpu_counter_add_batch(ptr noundef %cnt.1.i, i64 noundef %conv, i32 noundef 1073741823) #13
  %13 = ptrtoint ptr %cmd_flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cmd_flags, align 4
  %and.i.i9 = and i32 %14, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.i.i9)
  %cmp.i.i10 = icmp eq i32 %and.i.i9, 3
  br i1 %cmp.i.i10, label %if.then.i12, label %if.else.i17

if.then.i12:                                      ; preds = %blkg_rwstat_add.exit
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx.i11 = getelementptr %struct.bfq_group, ptr %6, i32 0, i32 11, i32 1, i32 0, i32 4
  br label %blkg_rwstat_add.exit24

if.else.i17:                                      ; preds = %blkg_rwstat_add.exit
  call void @__sanitizer_cov_trace_pc() #15
  %ios = getelementptr inbounds %struct.bfq_group, ptr %6, i32 0, i32 11, i32 1
  %and.i25.i13 = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i25.i13)
  %tobool.i.not.i14 = icmp eq i32 %and.i25.i13, 0
  %arrayidx4.i15 = getelementptr %struct.bfq_group, ptr %6, i32 0, i32 11, i32 1, i32 0, i32 1
  %spec.select.i16 = select i1 %tobool.i.not.i14, ptr %ios, ptr %arrayidx4.i15
  br label %blkg_rwstat_add.exit24

blkg_rwstat_add.exit24:                           ; preds = %if.else.i17, %if.then.i12
  %cnt.0.i18 = phi ptr [ %arrayidx.i11, %if.then.i12 ], [ %spec.select.i16, %if.else.i17 ]
  tail call void @percpu_counter_add_batch(ptr noundef %cnt.0.i18, i64 noundef 1, i32 noundef 1073741823) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i9)
  %cmp.i27.i19 = icmp eq i32 %and.i.i9, 0
  %15 = and i32 %14, 395264
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.i28.i20 = icmp ne i32 %15, 0
  %16 = or i1 %cmp.i27.i19, %tobool.i28.i20
  %arrayidx12.i21 = getelementptr %struct.bfq_group, ptr %6, i32 0, i32 11, i32 1, i32 0, i32 2
  %arrayidx15.i22 = getelementptr %struct.bfq_group, ptr %6, i32 0, i32 11, i32 1, i32 0, i32 3
  %cnt.1.i23 = select i1 %16, ptr %arrayidx12.i21, ptr %arrayidx15.i22
  tail call void @percpu_counter_add_batch(ptr noundef %cnt.1.i23, i64 noundef 1, i32 noundef 1073741823) #13
  br label %cleanup

cleanup:                                          ; preds = %blkg_rwstat_add.exit24, %blkg_to_bfqg.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bfq_init_entity(ptr noundef %entity, ptr noundef %bfqg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @bfq_entity_to_bfqq(ptr noundef %entity) #13
  %new_weight = getelementptr inbounds %struct.bfq_entity, ptr %entity, i32 0, i32 11
  %0 = ptrtoint ptr %new_weight to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %new_weight, align 4
  %weight = getelementptr inbounds %struct.bfq_entity, ptr %entity, i32 0, i32 10
  %2 = ptrtoint ptr %weight to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %weight, align 8
  %orig_weight = getelementptr inbounds %struct.bfq_entity, ptr %entity, i32 0, i32 12
  %3 = ptrtoint ptr %orig_weight to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %1, ptr %orig_weight, align 8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %new_ioprio = getelementptr inbounds %struct.bfq_queue, ptr %call, i32 0, i32 5
  %4 = ptrtoint ptr %new_ioprio to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %new_ioprio, align 8
  %ioprio = getelementptr inbounds %struct.bfq_queue, ptr %call, i32 0, i32 3
  %6 = ptrtoint ptr %ioprio to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %ioprio, align 4
  %new_ioprio_class = getelementptr inbounds %struct.bfq_queue, ptr %call, i32 0, i32 6
  %7 = ptrtoint ptr %new_ioprio_class to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %new_ioprio_class, align 2
  %ioprio_class = getelementptr inbounds %struct.bfq_queue, ptr %call, i32 0, i32 4
  %9 = ptrtoint ptr %ioprio_class to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %ioprio_class, align 2
  tail call fastcc void @bfqg_and_blkg_get(ptr noundef %bfqg)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %my_entity = getelementptr inbounds %struct.bfq_group, ptr %bfqg, i32 0, i32 8
  %10 = ptrtoint ptr %my_entity to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %my_entity, align 8
  %parent = getelementptr inbounds %struct.bfq_entity, ptr %entity, i32 0, i32 13
  %12 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %parent, align 4
  %sched_data = getelementptr inbounds %struct.bfq_group, ptr %bfqg, i32 0, i32 4
  %sched_data2 = getelementptr inbounds %struct.bfq_entity, ptr %entity, i32 0, i32 15
  %13 = ptrtoint ptr %sched_data2 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %sched_data, ptr %sched_data2, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bfq_entity_to_bfqq(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bfqg_and_blkg_get(ptr noundef %bfqg) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %ref.i = getelementptr inbounds %struct.bfq_group, ptr %bfqg, i32 0, i32 2
  %0 = ptrtoint ptr %ref.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ref.i, align 8
  %inc.i = add i32 %1, 1
  store i32 %inc.i, ptr %ref.i, align 8
  %tobool.not.i.i = icmp eq ptr %bfqg, null
  br i1 %tobool.not.i.i, label %entry.bfqg_to_blkg.exit_crit_edge, label %cond.true.i.i

entry.bfqg_to_blkg.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %bfqg_to_blkg.exit

cond.true.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %2 = ptrtoint ptr %bfqg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bfqg, align 4
  br label %bfqg_to_blkg.exit

bfqg_to_blkg.exit:                                ; preds = %cond.true.i.i, %entry.bfqg_to_blkg.exit_crit_edge
  %cond.i.i = phi ptr [ %3, %cond.true.i.i ], [ null, %entry.bfqg_to_blkg.exit_crit_edge ]
  %refcnt.i = getelementptr inbounds %struct.blkcg_gq, ptr %cond.i.i, i32 0, i32 5
  %4 = tail call i32 @llvm.read_register.i32(metadata !36) #13
  %and.i.i.i.i.i.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i.i = add i32 %7, 1
  store volatile i32 %add.i.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !46
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #13
  %call.i.i.i.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i.i.i.i, label %bfqg_to_blkg.exit.rcu_read_lock.exit.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i

bfqg_to_blkg.exit.rcu_read_lock.exit.i.i.i_crit_edge: ; preds = %bfqg_to_blkg.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %bfqg_to_blkg.exit
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 696, ptr noundef nonnull @.str.5) #13
  br label %rcu_read_lock.exit.i.i.i

rcu_read_lock.exit.i.i.i:                         ; preds = %if.then.i.i.i.i, %land.lhs.true2.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge, %bfqg_to_blkg.exit.rcu_read_lock.exit.i.i.i_crit_edge
  %8 = ptrtoint ptr %refcnt.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %refcnt.i, align 4
  %and.i.i.i.i = and i32 %9, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i1.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i1.i.i.i, label %do.body1.i.i.i, label %if.else.i.i.i, !prof !47

do.body1.i.i.i:                                   ; preds = %rcu_read_lock.exit.i.i.i
  %10 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !48
  %11 = tail call i32 @llvm.read_register.i32(metadata !36) #13
  %and.i2.i.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i2.i.i.i to ptr
  %cpu.i.i.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %cpu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cpu.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %14
  %15 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.i.i.i, align 4
  %add.i.i.i = add i32 %16, %9
  %17 = inttoptr i32 %add.i.i.i to ptr
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 4
  %add15.i.i.i = add i32 %19, 1
  store i32 %add15.i.i.i, ptr %17, align 4
  %20 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #13, !srcloc !49
  %and.i.i.i.i.i = and i32 %20, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then29.i.i.i, label %do.body1.i.i.i.do.end31.i.i.i_crit_edge, !prof !50

do.body1.i.i.i.do.end31.i.i.i_crit_edge:          ; preds = %do.body1.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end31.i.i.i

if.then29.i.i.i:                                  ; preds = %do.body1.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @warn_bogus_irq_restore() #13
  br label %do.end31.i.i.i

do.end31.i.i.i:                                   ; preds = %if.then29.i.i.i, %do.body1.i.i.i.do.end31.i.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %10) #13, !srcloc !51
  br label %if.end38.i.i.i

if.else.i.i.i:                                    ; preds = %rcu_read_lock.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %data.i.i.i = getelementptr inbounds %struct.blkcg_gq, ptr %cond.i.i, i32 0, i32 5, i32 1
  %21 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data.i.i.i, align 4
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %22, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %22, i32 1, i32 3, i32 1) #13
  %23 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %22, ptr %22, i32 1, ptr elementtype(i32) %22) #13, !srcloc !56
  br label %if.end38.i.i.i

if.end38.i.i.i:                                   ; preds = %if.else.i.i.i, %do.end31.i.i.i
  %call.i3.i.i.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i3.i.i.i, label %if.end38.i.i.i.blkg_get.exit_crit_edge, label %land.lhs.true.i6.i.i.i

if.end38.i.i.i.blkg_get.exit_crit_edge:           ; preds = %if.end38.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %blkg_get.exit

land.lhs.true.i6.i.i.i:                           ; preds = %if.end38.i.i.i
  %call1.i4.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #13
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 724, ptr noundef nonnull @.str.7) #13
  br label %blkg_get.exit

blkg_get.exit:                                    ; preds = %if.then.i9.i.i.i, %land.lhs.true2.i8.i.i.i.blkg_get.exit_crit_edge, %land.lhs.true.i6.i.i.i.blkg_get.exit_crit_edge, %if.end38.i.i.i.blkg_get.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !55
  %24 = tail call i32 @llvm.read_register.i32(metadata !36) #13
  %and.i.i.i.i.i10.i.i.i = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i.i.i.i10.i.i.i to ptr
  %preempt_count.i.i.i.i11.i.i.i = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %preempt_count.i.i.i.i11.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %preempt_count.i.i.i.i11.i.i.i, align 4
  %sub.i.i.i.i.i.i = add i32 %27, -1
  store volatile i32 %sub.i.i.i.i.i.i, ptr %preempt_count.i.i.i.i11.i.i.i, align 4
  tail call void @rcu_read_unlock_strict() #13
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @bfq_find_set_group(ptr nocapture noundef readonly %bfqd, ptr noundef %blkcg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bfqd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bfqd, align 8
  %call.i.i = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %land.rhs.i.i, label %entry.if.end29.i.i_crit_edge

entry.if.end29.i.i_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29.i.i

land.rhs.i.i:                                     ; preds = %entry
  %.b40.i.i = load i1, ptr @blkg_lookup.__already_done, align 1
  br i1 %.b40.i.i, label %land.rhs.i.i.if.end29.i.i_crit_edge, label %if.then.i.i, !prof !47

land.rhs.i.i.if.end29.i.i_crit_edge:              ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29.i.i

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @blkg_lookup.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 358, i32 noundef 9, ptr noundef null) #13
  br label %if.end29.i.i

if.end29.i.i:                                     ; preds = %if.then.i.i, %land.rhs.i.i.if.end29.i.i_crit_edge, %entry.if.end29.i.i_crit_edge
  %cmp.i.i.i = icmp eq ptr %blkcg, @blkcg_root
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %if.end.i.i.i

if.then.i.i.i:                                    ; preds = %if.end29.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %root_blkg.i.i.i = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 35
  %2 = ptrtoint ptr %root_blkg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %root_blkg.i.i.i, align 8
  br label %blkg_lookup.exit.i

if.end.i.i.i:                                     ; preds = %if.end29.i.i
  %blkg_hint.i.i.i = getelementptr inbounds %struct.blkcg, ptr %blkcg, i32 0, i32 4
  %4 = ptrtoint ptr %blkg_hint.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %blkg_hint.i.i.i, align 4
  %call.i.i.i = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i, label %if.end.i.i.i.do.end9.i.i.i_crit_edge

if.end.i.i.i.do.end9.i.i.i_crit_edge:             ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end9.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end.i.i.i
  %call2.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %call2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %land.lhs.true.i.i.i.do.end9.i.i.i_crit_edge, label %land.lhs.true4.i.i.i

land.lhs.true.i.i.i.do.end9.i.i.i_crit_edge:      ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end9.i.i.i

land.lhs.true4.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b1.i.i.i = load i1, ptr @__blkg_lookup.__warned, align 1
  br i1 %.b1.i.i.i, label %land.lhs.true4.i.i.i.do.end9.i.i.i_crit_edge, label %if.then6.i.i.i

land.lhs.true4.i.i.i.do.end9.i.i.i_crit_edge:     ; preds = %land.lhs.true4.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end9.i.i.i

if.then6.i.i.i:                                   ; preds = %land.lhs.true4.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @__blkg_lookup.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 340, ptr noundef nonnull @.str.3) #13
  br label %do.end9.i.i.i

do.end9.i.i.i:                                    ; preds = %if.then6.i.i.i, %land.lhs.true4.i.i.i.do.end9.i.i.i_crit_edge, %land.lhs.true.i.i.i.do.end9.i.i.i_crit_edge, %if.end.i.i.i.do.end9.i.i.i_crit_edge
  %tobool11.not.i.i.i = icmp eq ptr %5, null
  br i1 %tobool11.not.i.i.i, label %do.end9.i.i.i.if.end16.i.i.i_crit_edge, label %land.lhs.true12.i.i.i

do.end9.i.i.i.if.end16.i.i.i_crit_edge:           ; preds = %do.end9.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end16.i.i.i

land.lhs.true12.i.i.i:                            ; preds = %do.end9.i.i.i
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %cmp14.i.i.i = icmp eq ptr %7, %1
  br i1 %cmp14.i.i.i, label %land.lhs.true12.i.i.i.bfq_lookup_bfqg.exit_crit_edge, label %land.lhs.true12.i.i.i.if.end16.i.i.i_crit_edge

land.lhs.true12.i.i.i.if.end16.i.i.i_crit_edge:   ; preds = %land.lhs.true12.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end16.i.i.i

land.lhs.true12.i.i.i.bfq_lookup_bfqg.exit_crit_edge: ; preds = %land.lhs.true12.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %bfq_lookup_bfqg.exit

if.end16.i.i.i:                                   ; preds = %land.lhs.true12.i.i.i.if.end16.i.i.i_crit_edge, %do.end9.i.i.i.if.end16.i.i.i_crit_edge
  %call18.i.i.i = tail call ptr @blkg_lookup_slowpath(ptr noundef %blkcg, ptr noundef %1, i1 noundef zeroext false) #13
  br label %blkg_lookup.exit.i

blkg_lookup.exit.i:                               ; preds = %if.end16.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi ptr [ %3, %if.then.i.i.i ], [ %call18.i.i.i, %if.end16.i.i.i ]
  %tobool.not.i = icmp eq ptr %retval.0.i.i.i, null
  br i1 %tobool.not.i, label %blkg_lookup.exit.i.cleanup_crit_edge, label %blkg_lookup.exit.i.bfq_lookup_bfqg.exit_crit_edge, !prof !50

blkg_lookup.exit.i.bfq_lookup_bfqg.exit_crit_edge: ; preds = %blkg_lookup.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %bfq_lookup_bfqg.exit

blkg_lookup.exit.i.cleanup_crit_edge:             ; preds = %blkg_lookup.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

bfq_lookup_bfqg.exit:                             ; preds = %blkg_lookup.exit.i.bfq_lookup_bfqg.exit_crit_edge, %land.lhs.true12.i.i.i.bfq_lookup_bfqg.exit_crit_edge
  %retval.0.i.i8.i = phi ptr [ %retval.0.i.i.i, %blkg_lookup.exit.i.bfq_lookup_bfqg.exit_crit_edge ], [ %5, %land.lhs.true12.i.i.i.bfq_lookup_bfqg.exit_crit_edge ]
  %8 = load i32, ptr @blkcg_policy_bfq, align 4
  %arrayidx.i.i.i = getelementptr %struct.blkcg_gq, ptr %retval.0.i.i8.i, i32 0, i32 9, i32 %8
  %9 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.i.i.i, align 4
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %bfq_lookup_bfqg.exit.cleanup_crit_edge, label %if.end, !prof !50

bfq_lookup_bfqg.exit.cleanup_crit_edge:           ; preds = %bfq_lookup_bfqg.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %bfq_lookup_bfqg.exit
  %entity4 = getelementptr inbounds %struct.bfq_group, ptr %10, i32 0, i32 3
  %tobool5.not33 = icmp eq ptr %entity4, null
  br i1 %tobool5.not33, label %if.end.cleanup_crit_edge, label %for.body.lr.ph

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end
  %root_group = getelementptr inbounds %struct.bfq_data, ptr %bfqd, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %if.end12.for.body_crit_edge, %for.body.lr.ph
  %entity.034 = phi ptr [ %entity4, %for.body.lr.ph ], [ %25, %if.end12.for.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %entity.034, i32 -144
  %11 = ptrtoint ptr %root_group to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %root_group, align 4
  %cmp.not = icmp eq ptr %add.ptr, %12
  br i1 %cmp.not, label %for.body.if.end12_crit_edge, label %if.then6

for.body.if.end12_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end12

if.then6:                                         ; preds = %for.body
  %tobool.not.i.i.i25 = icmp eq ptr %add.ptr, null
  br i1 %tobool.not.i.i.i25, label %if.then6.bfqg_to_blkg.exit.i_crit_edge, label %cond.true.i.i.i

if.then6.bfqg_to_blkg.exit.i_crit_edge:           ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #15
  br label %bfqg_to_blkg.exit.i

cond.true.i.i.i:                                  ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #15
  %13 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %add.ptr, align 4
  br label %bfqg_to_blkg.exit.i

bfqg_to_blkg.exit.i:                              ; preds = %cond.true.i.i.i, %if.then6.bfqg_to_blkg.exit.i_crit_edge
  %cond.i.i.i = phi ptr [ %14, %cond.true.i.i.i ], [ null, %if.then6.bfqg_to_blkg.exit.i_crit_edge ]
  %parent.i = getelementptr inbounds %struct.blkcg_gq, ptr %cond.i.i.i, i32 0, i32 4
  %15 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %parent.i, align 8
  %tobool.not.i26 = icmp eq ptr %16, null
  br i1 %tobool.not.i26, label %bfqg_to_blkg.exit.i.if.then9_crit_edge, label %bfqg_parent.exit

bfqg_to_blkg.exit.i.if.then9_crit_edge:           ; preds = %bfqg_to_blkg.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then9

bfqg_parent.exit:                                 ; preds = %bfqg_to_blkg.exit.i
  %17 = load i32, ptr @blkcg_policy_bfq, align 4
  %arrayidx.i.i.i27 = getelementptr %struct.blkcg_gq, ptr %16, i32 0, i32 9, i32 %17
  %18 = ptrtoint ptr %arrayidx.i.i.i27 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.i.i.i27, align 4
  %tobool8.not = icmp eq ptr %19, null
  br i1 %tobool8.not, label %bfqg_parent.exit.if.then9_crit_edge, label %bfqg_parent.exit.if.end11_crit_edge

bfqg_parent.exit.if.end11_crit_edge:              ; preds = %bfqg_parent.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end11

bfqg_parent.exit.if.then9_crit_edge:              ; preds = %bfqg_parent.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then9

if.then9:                                         ; preds = %bfqg_parent.exit.if.then9_crit_edge, %bfqg_to_blkg.exit.i.if.then9_crit_edge
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %bfqg_parent.exit.if.end11_crit_edge
  %parent.0 = phi ptr [ %19, %bfqg_parent.exit.if.end11_crit_edge ], [ %12, %if.then9 ]
  %my_entity.i = getelementptr inbounds %struct.bfq_group, ptr %parent.0, i32 0, i32 8
  %20 = ptrtoint ptr %my_entity.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %my_entity.i, align 8
  %parent2.i = getelementptr i8, ptr %entity.034, i32 76
  %22 = ptrtoint ptr %parent2.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %parent2.i, align 4
  %sched_data.i = getelementptr inbounds %struct.bfq_group, ptr %parent.0, i32 0, i32 4
  %sched_data3.i = getelementptr i8, ptr %entity.034, i32 84
  %23 = ptrtoint ptr %sched_data3.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %sched_data.i, ptr %sched_data3.i, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.end11, %for.body.if.end12_crit_edge
  %parent13 = getelementptr inbounds %struct.bfq_entity, ptr %entity.034, i32 0, i32 13
  %24 = ptrtoint ptr %parent13 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %parent13, align 4
  %tobool5.not = icmp eq ptr %25, null
  br i1 %tobool5.not, label %if.end12.cleanup_crit_edge, label %if.end12.for.body_crit_edge

if.end12.for.body_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup:                                          ; preds = %if.end12.cleanup_crit_edge, %if.end.cleanup_crit_edge, %bfq_lookup_bfqg.exit.cleanup_crit_edge, %blkg_lookup.exit.i.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %bfq_lookup_bfqg.exit.cleanup_crit_edge ], [ null, %blkg_lookup.exit.i.cleanup_crit_edge ], [ %10, %if.end.cleanup_crit_edge ], [ %10, %if.end12.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bfq_bfqq_move(ptr noundef %bfqd, ptr noundef %bfqq, ptr noundef %bfqg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %entity1 = getelementptr inbounds %struct.bfq_queue, ptr %bfqq, i32 0, i32 18
  %0 = ptrtoint ptr %bfqq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bfqq, align 8
  %inc = add i32 %1, 1
  store i32 %inc, ptr %bfqq, align 8
  %in_service_queue = getelementptr inbounds %struct.bfq_data, ptr %bfqd, i32 0, i32 15
  %2 = ptrtoint ptr %in_service_queue to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %in_service_queue, align 8
  %cmp = icmp eq ptr %3, %bfqq
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @bfq_bfqq_expire(ptr noundef %bfqd, ptr noundef %bfqq, i1 noundef zeroext false, i32 noundef 4) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call = tail call i32 @bfq_bfqq_busy(ptr noundef %bfqq) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @bfq_deactivate_bfqq(ptr noundef %bfqd, ptr noundef %bfqq, i1 noundef zeroext false, i1 noundef zeroext false) #13
  br label %if.end8

if.else:                                          ; preds = %if.end
  %on_st_or_in_serv = getelementptr inbounds %struct.bfq_queue, ptr %bfqq, i32 0, i32 18, i32 1
  %4 = ptrtoint ptr %on_st_or_in_serv to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %on_st_or_in_serv, align 4, !range !57
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool4.not = icmp eq i8 %5, 0
  br i1 %tobool4.not, label %if.else.if.end8_crit_edge, label %if.then5

if.else.if.end8_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8

if.then5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %call6 = tail call ptr @bfq_entity_service_tree(ptr noundef %entity1) #13
  tail call void @bfq_put_idle_entity(ptr noundef %call6, ptr noundef %entity1) #13
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %if.else.if.end8_crit_edge, %if.then3
  %parent.i = getelementptr inbounds %struct.bfq_queue, ptr %bfqq, i32 0, i32 18, i32 13
  %6 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %cond.false.i, label %cond.true.i

cond.true.i:                                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr.i = getelementptr i8, ptr %7, i32 -144
  br label %bfqq_group.exit

cond.false.i:                                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  %bfqd.i = getelementptr inbounds %struct.bfq_queue, ptr %bfqq, i32 0, i32 2
  %8 = ptrtoint ptr %bfqd.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bfqd.i, align 8
  %root_group.i = getelementptr inbounds %struct.bfq_data, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %root_group.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %root_group.i, align 4
  br label %bfqq_group.exit

bfqq_group.exit:                                  ; preds = %cond.false.i, %cond.true.i
  %cond.i = phi ptr [ %add.ptr.i, %cond.true.i ], [ %11, %cond.false.i ]
  tail call void @bfqg_and_blkg_put(ptr noundef %cond.i)
  %12 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %parent.i, align 4
  %tobool10.not = icmp eq ptr %13, null
  br i1 %tobool10.not, label %bfqq_group.exit.if.else16_crit_edge, label %land.lhs.true

bfqq_group.exit.if.else16_crit_edge:              ; preds = %bfqq_group.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else16

land.lhs.true:                                    ; preds = %bfqq_group.exit
  %last_bfqq_created = getelementptr inbounds %struct.bfq_entity, ptr %13, i32 0, i32 18
  %14 = ptrtoint ptr %last_bfqq_created to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %last_bfqq_created, align 8
  %cmp12 = icmp eq ptr %15, %bfqq
  br i1 %cmp12, label %if.then13, label %land.lhs.true.if.else16_crit_edge

land.lhs.true.if.else16_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else16

if.then13:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %16 = ptrtoint ptr %last_bfqq_created to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %last_bfqq_created, align 8
  br label %if.end22

if.else16:                                        ; preds = %land.lhs.true.if.else16_crit_edge, %bfqq_group.exit.if.else16_crit_edge
  %last_bfqq_created17 = getelementptr inbounds %struct.bfq_data, ptr %bfqd, i32 0, i32 20
  %17 = ptrtoint ptr %last_bfqq_created17 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %last_bfqq_created17, align 4
  %cmp18 = icmp eq ptr %18, %bfqq
  br i1 %cmp18, label %if.then19, label %if.else16.if.end22_crit_edge

if.else16.if.end22_crit_edge:                     ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end22

if.then19:                                        ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #15
  %19 = ptrtoint ptr %last_bfqq_created17 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %last_bfqq_created17, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then19, %if.else16.if.end22_crit_edge, %if.then13
  %my_entity = getelementptr inbounds %struct.bfq_group, ptr %bfqg, i32 0, i32 8
  %20 = ptrtoint ptr %my_entity to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %my_entity, align 8
  %22 = ptrtoint ptr %parent.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %parent.i, align 4
  %sched_data = getelementptr inbounds %struct.bfq_group, ptr %bfqg, i32 0, i32 4
  %sched_data24 = getelementptr inbounds %struct.bfq_queue, ptr %bfqq, i32 0, i32 18, i32 15
  %23 = ptrtoint ptr %sched_data24 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %sched_data, ptr %sched_data24, align 4
  tail call fastcc void @bfqg_and_blkg_get(ptr noundef %bfqg)
  %call25 = tail call i32 @bfq_bfqq_busy(ptr noundef %bfqq) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end22.if.end34_crit_edge, label %if.then27

if.end22.if.end34_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end34

if.then27:                                        ; preds = %if.end22
  %nonrot_with_queueing = getelementptr inbounds %struct.bfq_data, ptr %bfqd, i32 0, i32 9
  %24 = ptrtoint ptr %nonrot_with_queueing to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %nonrot_with_queueing, align 4, !range !57
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool28.not = icmp eq i8 %25, 0
  br i1 %tobool28.not, label %if.then32, label %if.then27.if.end33_crit_edge, !prof !50

if.then27.if.end33_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end33

if.then32:                                        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @bfq_pos_tree_add_move(ptr noundef %bfqd, ptr noundef %bfqq) #13
  br label %if.end33

if.end33:                                         ; preds = %if.then32, %if.then27.if.end33_crit_edge
  tail call void @bfq_activate_bfqq(ptr noundef %bfqd, ptr noundef %bfqq) #13
  br label %if.end34

if.end34:                                         ; preds = %if.end33, %if.end22.if.end34_crit_edge
  %26 = ptrtoint ptr %in_service_queue to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %in_service_queue, align 8
  %tobool36.not = icmp eq ptr %27, null
  br i1 %tobool36.not, label %land.lhs.true37, label %if.end34.if.end40_crit_edge

if.end34.if.end40_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end40

land.lhs.true37:                                  ; preds = %if.end34
  %rq_in_driver = getelementptr inbounds %struct.bfq_data, ptr %bfqd, i32 0, i32 8
  %28 = ptrtoint ptr %rq_in_driver to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rq_in_driver, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool38.not = icmp eq i32 %29, 0
  br i1 %tobool38.not, label %if.then39, label %land.lhs.true37.if.end40_crit_edge

land.lhs.true37.if.end40_crit_edge:               ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end40

if.then39:                                        ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @bfq_schedule_dispatch(ptr noundef %bfqd) #13
  br label %if.end40

if.end40:                                         ; preds = %if.then39, %land.lhs.true37.if.end40_crit_edge, %if.end34.if.end40_crit_edge
  tail call void @bfq_put_queue(ptr noundef %bfqq) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfq_bfqq_expire(ptr noundef, ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bfq_bfqq_busy(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfq_deactivate_bfqq(ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfq_put_idle_entity(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bfq_entity_service_tree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfq_pos_tree_add_move(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfq_activate_bfqq(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfq_schedule_dispatch(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfq_put_queue(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bfq_bic_update_cgroup(ptr noundef %bic, ptr noundef %bio) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @bic_to_bfqd(ptr noundef %bic) #13
  %0 = tail call i32 @llvm.read_register.i32(metadata !36) #13
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !46
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 696, ptr noundef nonnull @.str.5) #13
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %tobool.not.i24 = icmp eq ptr %bio, null
  br i1 %tobool.not.i24, label %rcu_read_lock.exit.if.end.i_crit_edge, label %land.lhs.true.i25

rcu_read_lock.exit.if.end.i_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

land.lhs.true.i25:                                ; preds = %rcu_read_lock.exit
  %bi_blkg.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 12
  %4 = ptrtoint ptr %bi_blkg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bi_blkg.i, align 8
  %tobool1.not.i = icmp eq ptr %5, null
  br i1 %tobool1.not.i, label %land.lhs.true.i25.if.end.i_crit_edge, label %if.then.i26

land.lhs.true.i25.if.end.i_crit_edge:             ; preds = %land.lhs.true.i25
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.then.i26:                                      ; preds = %land.lhs.true.i25
  call void @__sanitizer_cov_trace_pc() #15
  %blkcg.i = getelementptr inbounds %struct.blkcg_gq, ptr %5, i32 0, i32 3
  br label %return.sink.split.i

if.end.i:                                         ; preds = %land.lhs.true.i25.if.end.i_crit_edge, %rcu_read_lock.exit.if.end.i_crit_edge
  %call.i.i = tail call ptr @kthread_blkcg() #13
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end.i.__bio_blkcg.exit_crit_edge

if.end.i.__bio_blkcg.exit_crit_edge:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__bio_blkcg.exit

if.end.i.i:                                       ; preds = %if.end.i
  %6 = tail call i32 @llvm.read_register.i32(metadata !36) #13
  %and.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task.i.i, align 8
  %cgroups.i.i.i = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 164
  %10 = ptrtoint ptr %cgroups.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %cgroups.i.i.i, align 16
  %call.i.i.i.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @cgroup_mutex, i32 0, i32 5), i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %lor.lhs.false.i.i.i, label %if.end.i.i.task_css.exit.i.i_crit_edge

if.end.i.i.task_css.exit.i.i_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %task_css.exit.i.i

lor.lhs.false.i.i.i:                              ; preds = %if.end.i.i
  %call.i2.i.i.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.spinlock, ptr @css_set_lock, i32 0, i32 0, i32 0, i32 4), i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %call.i2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %lor.lhs.false4.i.i.i, label %lor.lhs.false.i.i.i.task_css.exit.i.i_crit_edge

lor.lhs.false.i.i.i.task_css.exit.i.i_crit_edge:  ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %task_css.exit.i.i

lor.lhs.false4.i.i.i:                             ; preds = %lor.lhs.false.i.i.i
  %flags.i.i.i = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 3
  %12 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags.i.i.i, align 4
  %and.i4.i.i = and i32 %13, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i4.i.i)
  %tobool5.not.i.i.i = icmp eq i32 %and.i4.i.i, 0
  br i1 %tobool5.not.i.i.i, label %lor.lhs.false6.i.i.i, label %lor.lhs.false4.i.i.i.task_css.exit.i.i_crit_edge

lor.lhs.false4.i.i.i.task_css.exit.i.i_crit_edge: ; preds = %lor.lhs.false4.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %task_css.exit.i.i

lor.lhs.false6.i.i.i:                             ; preds = %lor.lhs.false4.i.i.i
  %call7.i.i.i = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i.i)
  %tobool8.not.i.i.i = icmp eq i32 %call7.i.i.i, 0
  br i1 %tobool8.not.i.i.i, label %land.lhs.true.i.i.i, label %lor.lhs.false6.i.i.i.task_css.exit.i.i_crit_edge

lor.lhs.false6.i.i.i.task_css.exit.i.i_crit_edge: ; preds = %lor.lhs.false6.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %task_css.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %lor.lhs.false6.i.i.i
  %call9.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i.i)
  %tobool10.not.i.i.i = icmp eq i32 %call9.i.i.i, 0
  br i1 %tobool10.not.i.i.i, label %land.lhs.true.i.i.i.task_css.exit.i.i_crit_edge, label %land.lhs.true11.i.i.i

land.lhs.true.i.i.i.task_css.exit.i.i_crit_edge:  ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %task_css.exit.i.i

land.lhs.true11.i.i.i:                            ; preds = %land.lhs.true.i.i.i
  %.b1.i.i.i = load i1, ptr @task_css.__warned, align 1
  br i1 %.b1.i.i.i, label %land.lhs.true11.i.i.i.task_css.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true11.i.i.i.task_css.exit.i.i_crit_edge: ; preds = %land.lhs.true11.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %task_css.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true11.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @task_css.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 494, ptr noundef nonnull @.str.3) #13
  br label %task_css.exit.i.i

task_css.exit.i.i:                                ; preds = %if.then.i.i.i, %land.lhs.true11.i.i.i.task_css.exit.i.i_crit_edge, %land.lhs.true.i.i.i.task_css.exit.i.i_crit_edge, %lor.lhs.false6.i.i.i.task_css.exit.i.i_crit_edge, %lor.lhs.false4.i.i.i.task_css.exit.i.i_crit_edge, %lor.lhs.false.i.i.i.task_css.exit.i.i_crit_edge, %if.end.i.i.task_css.exit.i.i_crit_edge
  %arrayidx.i.i.i = getelementptr [14 x ptr], ptr %11, i32 0, i32 3
  br label %return.sink.split.i

return.sink.split.i:                              ; preds = %task_css.exit.i.i, %if.then.i26
  %arrayidx.i.i.sink.i = phi ptr [ %arrayidx.i.i.i, %task_css.exit.i.i ], [ %blkcg.i, %if.then.i26 ]
  %14 = ptrtoint ptr %arrayidx.i.i.sink.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i.i.sink.i, align 4
  br label %__bio_blkcg.exit

__bio_blkcg.exit:                                 ; preds = %return.sink.split.i, %if.end.i.__bio_blkcg.exit_crit_edge
  %retval.0.i = phi ptr [ %call.i.i, %if.end.i.__bio_blkcg.exit_crit_edge ], [ %15, %return.sink.split.i ]
  %serial_nr2 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %retval.0.i, i32 0, i32 8
  %16 = ptrtoint ptr %serial_nr2 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %serial_nr2, align 8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %__bio_blkcg.exit.out_crit_edge, label %lor.lhs.false, !prof !50

__bio_blkcg.exit.out_crit_edge:                   ; preds = %__bio_blkcg.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

lor.lhs.false:                                    ; preds = %__bio_blkcg.exit
  %blkcg_serial_nr = getelementptr inbounds %struct.bfq_io_cq, ptr %bic, i32 0, i32 3
  %18 = ptrtoint ptr %blkcg_serial_nr to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %blkcg_serial_nr, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %19, i64 %17)
  %cmp = icmp eq i64 %19, %17
  br i1 %cmp, label %lor.lhs.false.out_crit_edge, label %if.end, !prof !47

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end:                                           ; preds = %lor.lhs.false
  %call12 = tail call fastcc ptr @__bio_blkcg(ptr noundef %bio)
  %call13 = tail call fastcc ptr @__bfq_bic_change_cgroup(ptr noundef nonnull %call, ptr noundef %bic, ptr noundef %call12)
  %tobool.not.i.i27 = icmp eq ptr %call13, null
  br i1 %tobool.not.i.i27, label %if.end.bfqg_to_blkg.exit_crit_edge, label %cond.true.i.i

if.end.bfqg_to_blkg.exit_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %bfqg_to_blkg.exit

cond.true.i.i:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %20 = ptrtoint ptr %call13 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %call13, align 4
  br label %bfqg_to_blkg.exit

bfqg_to_blkg.exit:                                ; preds = %cond.true.i.i, %if.end.bfqg_to_blkg.exit_crit_edge
  %cond.i.i = phi ptr [ %21, %cond.true.i.i ], [ null, %if.end.bfqg_to_blkg.exit_crit_edge ]
  %blkg_path = getelementptr inbounds %struct.bfq_group, ptr %call13, i32 0, i32 1
  %blkcg.i28 = getelementptr inbounds %struct.blkcg_gq, ptr %cond.i.i, i32 0, i32 3
  %22 = ptrtoint ptr %blkcg.i28 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %blkcg.i28, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 8
  %kn.i.i = getelementptr inbounds %struct.cgroup, ptr %25, i32 0, i32 11
  %26 = ptrtoint ptr %kn.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %kn.i.i, align 8
  %call.i.i.i = tail call i32 @kernfs_path_from_node(ptr noundef %27, ptr noundef null, ptr noundef %blkg_path, i32 noundef 128) #13
  %28 = ptrtoint ptr %blkcg_serial_nr to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %17, ptr %blkcg_serial_nr, align 8
  br label %out

out:                                              ; preds = %bfqg_to_blkg.exit, %lor.lhs.false.out_crit_edge, %__bio_blkcg.exit.out_crit_edge
  %call.i29 = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i29, label %out.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i32

out.rcu_read_unlock.exit_crit_edge:               ; preds = %out
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true.i32:                                ; preds = %out
  %call1.i30 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i30)
  %tobool.not.i31 = icmp eq i32 %call1.i30, 0
  br i1 %tobool.not.i31, label %land.lhs.true.i32.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i34

land.lhs.true.i32.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i32
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true2.i34:                               ; preds = %land.lhs.true.i32
  %.b4.i33 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i33, label %land.lhs.true2.i34.rcu_read_unlock.exit_crit_edge, label %if.then.i35

land.lhs.true2.i34.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i34
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

if.then.i35:                                      ; preds = %land.lhs.true2.i34
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 724, ptr noundef nonnull @.str.7) #13
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i35, %land.lhs.true2.i34.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i32.rcu_read_unlock.exit_crit_edge, %out.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !55
  %29 = tail call i32 @llvm.read_register.i32(metadata !36) #13
  %and.i.i.i.i.i36 = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i.i.i.i36 to ptr
  %preempt_count.i.i.i.i37 = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %preempt_count.i.i.i.i37 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %preempt_count.i.i.i.i37, align 4
  %sub.i.i.i = add i32 %32, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i37, align 4
  tail call void @rcu_read_unlock_strict() #13
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bic_to_bfqd(ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @__bio_blkcg(ptr noundef readonly %bio) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %tobool.not = icmp eq ptr %bio, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %bi_blkg = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 12
  %0 = ptrtoint ptr %bi_blkg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bi_blkg, align 8
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %blkcg = getelementptr inbounds %struct.blkcg_gq, ptr %1, i32 0, i32 3
  br label %return.sink.split

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %call.i = tail call ptr @kthread_blkcg() #13
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end.i:                                         ; preds = %if.end
  %2 = tail call i32 @llvm.read_register.i32(metadata !36) #13
  %and.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task.i, align 8
  %cgroups.i.i = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 164
  %6 = ptrtoint ptr %cgroups.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %cgroups.i.i, align 16
  %call.i.i.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @cgroup_mutex, i32 0, i32 5), i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.i, label %if.end.i.task_css.exit.i_crit_edge

if.end.i.task_css.exit.i_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %task_css.exit.i

lor.lhs.false.i.i:                                ; preds = %if.end.i
  %call.i2.i.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.spinlock, ptr @css_set_lock, i32 0, i32 0, i32 0, i32 4), i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call.i2.i.i, 0
  br i1 %tobool3.not.i.i, label %lor.lhs.false4.i.i, label %lor.lhs.false.i.i.task_css.exit.i_crit_edge

lor.lhs.false.i.i.task_css.exit.i_crit_edge:      ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %task_css.exit.i

lor.lhs.false4.i.i:                               ; preds = %lor.lhs.false.i.i
  %flags.i.i = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 3
  %8 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags.i.i, align 4
  %and.i4.i = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i4.i)
  %tobool5.not.i.i = icmp eq i32 %and.i4.i, 0
  br i1 %tobool5.not.i.i, label %lor.lhs.false6.i.i, label %lor.lhs.false4.i.i.task_css.exit.i_crit_edge

lor.lhs.false4.i.i.task_css.exit.i_crit_edge:     ; preds = %lor.lhs.false4.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %task_css.exit.i

lor.lhs.false6.i.i:                               ; preds = %lor.lhs.false4.i.i
  %call7.i.i = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i)
  %tobool8.not.i.i = icmp eq i32 %call7.i.i, 0
  br i1 %tobool8.not.i.i, label %land.lhs.true.i.i, label %lor.lhs.false6.i.i.task_css.exit.i_crit_edge

lor.lhs.false6.i.i.task_css.exit.i_crit_edge:     ; preds = %lor.lhs.false6.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %task_css.exit.i

land.lhs.true.i.i:                                ; preds = %lor.lhs.false6.i.i
  %call9.i.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i)
  %tobool10.not.i.i = icmp eq i32 %call9.i.i, 0
  br i1 %tobool10.not.i.i, label %land.lhs.true.i.i.task_css.exit.i_crit_edge, label %land.lhs.true11.i.i

land.lhs.true.i.i.task_css.exit.i_crit_edge:      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %task_css.exit.i

land.lhs.true11.i.i:                              ; preds = %land.lhs.true.i.i
  %.b1.i.i = load i1, ptr @task_css.__warned, align 1
  br i1 %.b1.i.i, label %land.lhs.true11.i.i.task_css.exit.i_crit_edge, label %if.then.i.i

land.lhs.true11.i.i.task_css.exit.i_crit_edge:    ; preds = %land.lhs.true11.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %task_css.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true11.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @task_css.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 494, ptr noundef nonnull @.str.3) #13
  br label %task_css.exit.i

task_css.exit.i:                                  ; preds = %if.then.i.i, %land.lhs.true11.i.i.task_css.exit.i_crit_edge, %land.lhs.true.i.i.task_css.exit.i_crit_edge, %lor.lhs.false6.i.i.task_css.exit.i_crit_edge, %lor.lhs.false4.i.i.task_css.exit.i_crit_edge, %lor.lhs.false.i.i.task_css.exit.i_crit_edge, %if.end.i.task_css.exit.i_crit_edge
  %arrayidx.i.i = getelementptr [14 x ptr], ptr %7, i32 0, i32 3
  br label %return.sink.split

return.sink.split:                                ; preds = %task_css.exit.i, %if.then
  %arrayidx.i.i.sink = phi ptr [ %arrayidx.i.i, %task_css.exit.i ], [ %blkcg, %if.then ]
  %10 = ptrtoint ptr %arrayidx.i.i.sink to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i.i.sink, align 4
  br label %return

return:                                           ; preds = %return.sink.split, %if.end.return_crit_edge
  %retval.0 = phi ptr [ %call.i, %if.end.return_crit_edge ], [ %11, %return.sink.split ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @__bfq_bic_change_cgroup(ptr noundef %bfqd, ptr noundef %bic, ptr noundef %blkcg) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @bic_to_bfqq(ptr noundef %bic, i1 noundef zeroext false) #13
  %call1 = tail call ptr @bic_to_bfqq(ptr noundef %bic, i1 noundef zeroext true) #13
  %call2 = tail call ptr @bfq_find_set_group(ptr noundef %bfqd, ptr noundef %blkcg)
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge, !prof !50

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %root_group = getelementptr inbounds %struct.bfq_data, ptr %bfqd, i32 0, i32 2
  %0 = ptrtoint ptr %root_group to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %root_group, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %bfqg.0 = phi ptr [ %1, %if.then ], [ %call2, %entry.if.end_crit_edge ]
  %tobool6.not = icmp eq ptr %call, null
  br i1 %tobool6.not, label %if.end.if.end12_crit_edge, label %if.then7

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end12

if.then7:                                         ; preds = %if.end
  %sched_data = getelementptr inbounds %struct.bfq_queue, ptr %call, i32 0, i32 18, i32 15
  %2 = ptrtoint ptr %sched_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sched_data, align 4
  %sched_data9 = getelementptr inbounds %struct.bfq_group, ptr %bfqg.0, i32 0, i32 4
  %cmp.not = icmp eq ptr %3, %sched_data9
  br i1 %cmp.not, label %if.then7.if.end12_crit_edge, label %if.then10

if.then7.if.end12_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end12

if.then10:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @bic_set_bfqq(ptr noundef %bic, ptr noundef null, i1 noundef zeroext false) #13
  tail call void @bfq_release_process_ref(ptr noundef %bfqd, ptr noundef nonnull %call) #13
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.then7.if.end12_crit_edge, %if.end.if.end12_crit_edge
  %tobool13.not = icmp eq ptr %call1, null
  br i1 %tobool13.not, label %if.end12.if.end21_crit_edge, label %if.then14

if.end12.if.end21_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21

if.then14:                                        ; preds = %if.end12
  %sched_data16 = getelementptr inbounds %struct.bfq_queue, ptr %call1, i32 0, i32 18, i32 15
  %4 = ptrtoint ptr %sched_data16 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sched_data16, align 4
  %sched_data17 = getelementptr inbounds %struct.bfq_group, ptr %bfqg.0, i32 0, i32 4
  %cmp18.not = icmp eq ptr %5, %sched_data17
  br i1 %cmp18.not, label %if.then14.if.end21_crit_edge, label %if.then19

if.then14.if.end21_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21

if.then19:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @bfq_bfqq_move(ptr noundef %bfqd, ptr noundef nonnull %call1, ptr noundef %bfqg.0)
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %if.then14.if.end21_crit_edge, %if.end12.if.end21_crit_edge
  ret ptr %bfqg.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bfq_end_wr_async(ptr noundef %bfqd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bfqd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bfqd, align 8
  %blkg_list = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 36
  %2 = ptrtoint ptr %blkg_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn14 = load ptr, ptr %blkg_list, align 4
  %cmp.not16 = icmp eq ptr %.pn14, %blkg_list
  br i1 %cmp.not16, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %blkg_to_bfqg.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn17 = phi ptr [ %.pn, %blkg_to_bfqg.exit.for.body_crit_edge ], [ %.pn14, %entry.for.body_crit_edge ]
  %blkg.0 = getelementptr i8, ptr %.pn17, i32 -4
  %tobool.not.i.i = icmp eq ptr %blkg.0, null
  br i1 %tobool.not.i.i, label %for.body.blkg_to_bfqg.exit_crit_edge, label %cond.true.i.i

for.body.blkg_to_bfqg.exit_crit_edge:             ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %blkg_to_bfqg.exit

cond.true.i.i:                                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %3 = load i32, ptr @blkcg_policy_bfq, align 4
  %arrayidx.i.i = getelementptr %struct.blkcg_gq, ptr %blkg.0, i32 0, i32 9, i32 %3
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i.i, align 4
  br label %blkg_to_bfqg.exit

blkg_to_bfqg.exit:                                ; preds = %cond.true.i.i, %for.body.blkg_to_bfqg.exit_crit_edge
  %cond.i.i = phi ptr [ %5, %cond.true.i.i ], [ null, %for.body.blkg_to_bfqg.exit_crit_edge ]
  tail call void @bfq_end_wr_async_queues(ptr noundef %bfqd, ptr noundef %cond.i.i) #13
  %6 = ptrtoint ptr %.pn17 to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn = load ptr, ptr %.pn17, align 4
  %7 = ptrtoint ptr %bfqd to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bfqd, align 8
  %blkg_list2 = getelementptr inbounds %struct.request_queue, ptr %8, i32 0, i32 36
  %cmp.not = icmp eq ptr %.pn, %blkg_list2
  br i1 %cmp.not, label %blkg_to_bfqg.exit.for.end_crit_edge, label %blkg_to_bfqg.exit.for.body_crit_edge

blkg_to_bfqg.exit.for.body_crit_edge:             ; preds = %blkg_to_bfqg.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

blkg_to_bfqg.exit.for.end_crit_edge:              ; preds = %blkg_to_bfqg.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %blkg_to_bfqg.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %root_group = getelementptr inbounds %struct.bfq_data, ptr %bfqd, i32 0, i32 2
  %9 = ptrtoint ptr %root_group to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %root_group, align 4
  tail call void @bfq_end_wr_async_queues(ptr noundef %bfqd, ptr noundef %10) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfq_end_wr_async_queues(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @bfq_create_group_hierarchy(ptr nocapture noundef readonly %bfqd, i32 noundef %node) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bfqd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bfqd, align 8
  %call = tail call i32 @blkcg_activate_policy(ptr noundef %1, ptr noundef nonnull @blkcg_policy_bfq) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %bfqd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bfqd, align 8
  %root_blkg = getelementptr inbounds %struct.request_queue, ptr %3, i32 0, i32 35
  %4 = ptrtoint ptr %root_blkg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %root_blkg, align 8
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %if.end.cleanup_crit_edge, label %cond.true.i.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cond.true.i.i:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %6 = load i32, ptr @blkcg_policy_bfq, align 4
  %arrayidx.i.i = getelementptr %struct.blkcg_gq, ptr %5, i32 0, i32 9, i32 %6
  %7 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %cond.true.i.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ %8, %cond.true.i.i ], [ null, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blkcg_activate_policy(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal noalias ptr @bfq_cpd_alloc(i32 noundef %gfp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %and.i.i.i = and i32 %gfp, 4194321
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp.i.i.i, label %entry.kzalloc.exit_crit_edge, label %if.end.i.i.i, !prof !47

entry.kzalloc.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %kzalloc.exit

if.end.i.i.i:                                     ; preds = %entry
  %and2.i.i.i = and i32 %gfp, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %if.end5.i.i.i, label %if.end.i.i.i.kzalloc.exit_crit_edge

if.end.i.i.i.kzalloc.exit_crit_edge:              ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %kzalloc.exit

if.end5.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %and6.i.i.i = and i32 %gfp, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i.i)
  %tobool7.not.i.i.i = icmp eq i32 %and6.i.i.i, 0
  %..i.i.i = select i1 %tobool7.not.i.i.i, i32 1, i32 2
  br label %kzalloc.exit

kzalloc.exit:                                     ; preds = %if.end5.i.i.i, %if.end.i.i.i.kzalloc.exit_crit_edge, %entry.kzalloc.exit_crit_edge
  %retval.0.i.i.i = phi i32 [ 0, %entry.kzalloc.exit_crit_edge ], [ 3, %if.end.i.i.i.kzalloc.exit_crit_edge ], [ %..i.i.i, %if.end5.i.i.i ]
  %or.i = or i32 %gfp, 256
  %arrayidx6.i.i = getelementptr [4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %retval.0.i.i.i, i32 7
  %0 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx6.i.i, align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef %or.i, i32 noundef 12) #16
  ret ptr %call7.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfq_cpd_init(ptr nocapture noundef writeonly %cpd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (i8, ptr @io_cgrp_subsys_on_dfl_key, i32 1), ptr blockaddress(@bfq_cpd_init, %l_yes.i)) #13
          to label %arch_static_branch.exit [label %l_yes.i], !srcloc !58

l_yes.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %arch_static_branch.exit

arch_static_branch.exit:                          ; preds = %l_yes.i, %entry
  %weight = getelementptr inbounds %struct.bfq_group_data, ptr %cpd, i32 0, i32 1
  %0 = ptrtoint ptr %weight to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 100, ptr %weight, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfq_cpd_free(ptr noundef %cpd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %cpd) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @bfq_pd_alloc(i32 noundef %gfp, ptr nocapture noundef readnone %q, ptr nocapture noundef readnone %blkcg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %and.i.i.i = and i32 %gfp, 4194321
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp.i.i.i, label %entry.kzalloc_node.exit_crit_edge, label %if.end.i.i.i, !prof !47

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
  %arrayidx3.i.i = getelementptr [4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %retval.0.i.i.i, i32 12
  %0 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx3.i.i, align 4
  %call.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef %or.i, i32 noundef 3440) #16
  %tobool.not = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not, label %kzalloc_node.exit.cleanup_crit_edge, label %if.end

kzalloc_node.exit.cleanup_crit_edge:              ; preds = %kzalloc_node.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %kzalloc_node.exit
  %stats = getelementptr inbounds %struct.bfq_group, ptr %call.i.i.i, i32 0, i32 11
  %call.i = tail call i32 @blkg_rwstat_init(ptr noundef %stats, i32 noundef %gfp) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %if.end.if.then3_crit_edge

if.end.if.then3_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then3

lor.lhs.false.i:                                  ; preds = %if.end
  %ios.i = getelementptr inbounds %struct.bfq_group, ptr %call.i.i.i, i32 0, i32 11, i32 1
  %call1.i = tail call i32 @blkg_rwstat_init(ptr noundef %ios.i, i32 noundef %gfp) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i, label %lor.lhs.false.i.if.then3_crit_edge

lor.lhs.false.i.if.then3_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then3

if.end.i:                                         ; preds = %lor.lhs.false.i
  %merged.i = getelementptr inbounds %struct.bfq_group, ptr %call.i.i.i, i32 0, i32 11, i32 2
  %call3.i = tail call i32 @blkg_rwstat_init(ptr noundef %merged.i, i32 noundef %gfp) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %lor.lhs.false5.i, label %if.end.i.if.then3_crit_edge

if.end.i.if.then3_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then3

lor.lhs.false5.i:                                 ; preds = %if.end.i
  %service_time.i = getelementptr inbounds %struct.bfq_group, ptr %call.i.i.i, i32 0, i32 11, i32 3
  %call6.i = tail call i32 @blkg_rwstat_init(ptr noundef %service_time.i, i32 noundef %gfp) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %lor.lhs.false8.i, label %lor.lhs.false5.i.if.then3_crit_edge

lor.lhs.false5.i.if.then3_crit_edge:              ; preds = %lor.lhs.false5.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then3

lor.lhs.false8.i:                                 ; preds = %lor.lhs.false5.i
  %wait_time.i = getelementptr inbounds %struct.bfq_group, ptr %call.i.i.i, i32 0, i32 11, i32 4
  %call9.i = tail call i32 @blkg_rwstat_init(ptr noundef %wait_time.i, i32 noundef %gfp) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %lor.lhs.false11.i, label %lor.lhs.false8.i.if.then3_crit_edge

lor.lhs.false8.i.if.then3_crit_edge:              ; preds = %lor.lhs.false8.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then3

lor.lhs.false11.i:                                ; preds = %lor.lhs.false8.i
  %queued.i = getelementptr inbounds %struct.bfq_group, ptr %call.i.i.i, i32 0, i32 11, i32 5
  %call12.i = tail call i32 @blkg_rwstat_init(ptr noundef %queued.i, i32 noundef %gfp) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %lor.lhs.false14.i, label %lor.lhs.false11.i.if.then3_crit_edge

lor.lhs.false11.i.if.then3_crit_edge:             ; preds = %lor.lhs.false11.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then3

lor.lhs.false14.i:                                ; preds = %lor.lhs.false11.i
  %time.i = getelementptr inbounds %struct.bfq_group, ptr %call.i.i.i, i32 0, i32 11, i32 6
  %call.i44 = tail call i32 @__percpu_counter_init(ptr noundef %time.i, i64 noundef 0, i32 noundef %gfp, ptr noundef nonnull @bfq_stat_init.__key) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i44)
  %tobool.not.i45 = icmp eq i32 %call.i44, 0
  br i1 %tobool.not.i45, label %lor.lhs.false17.i, label %lor.lhs.false14.i.if.then3_crit_edge

lor.lhs.false14.i.if.then3_crit_edge:             ; preds = %lor.lhs.false14.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then3

lor.lhs.false17.i:                                ; preds = %lor.lhs.false14.i
  %aux_cnt.i46 = getelementptr inbounds %struct.bfq_group, ptr %call.i.i.i, i32 0, i32 11, i32 6, i32 1
  %call.i.i.i47 = tail call zeroext i1 @__kasan_check_write(ptr noundef %aux_cnt.i46, i32 noundef 8) #13
  tail call void @generic_atomic64_set(ptr noundef %aux_cnt.i46, i64 noundef 0) #13
  %avg_queue_size_sum.i = getelementptr inbounds %struct.bfq_group, ptr %call.i.i.i, i32 0, i32 11, i32 7
  %call.i38 = tail call i32 @__percpu_counter_init(ptr noundef %avg_queue_size_sum.i, i64 noundef 0, i32 noundef %gfp, ptr noundef nonnull @bfq_stat_init.__key) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i38)
  %tobool.not.i39 = icmp eq i32 %call.i38, 0
  br i1 %tobool.not.i39, label %lor.lhs.false20.i, label %lor.lhs.false17.i.if.then3_crit_edge

lor.lhs.false17.i.if.then3_crit_edge:             ; preds = %lor.lhs.false17.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then3

lor.lhs.false20.i:                                ; preds = %lor.lhs.false17.i
  %aux_cnt.i40 = getelementptr inbounds %struct.bfq_group, ptr %call.i.i.i, i32 0, i32 11, i32 7, i32 1
  %call.i.i.i41 = tail call zeroext i1 @__kasan_check_write(ptr noundef %aux_cnt.i40, i32 noundef 8) #13
  tail call void @generic_atomic64_set(ptr noundef %aux_cnt.i40, i64 noundef 0) #13
  %avg_queue_size_samples.i = getelementptr inbounds %struct.bfq_group, ptr %call.i.i.i, i32 0, i32 11, i32 8
  %call.i32 = tail call i32 @__percpu_counter_init(ptr noundef %avg_queue_size_samples.i, i64 noundef 0, i32 noundef %gfp, ptr noundef nonnull @bfq_stat_init.__key) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i32)
  %tobool.not.i33 = icmp eq i32 %call.i32, 0
  br i1 %tobool.not.i33, label %lor.lhs.false23.i, label %lor.lhs.false20.i.if.then3_crit_edge

lor.lhs.false20.i.if.then3_crit_edge:             ; preds = %lor.lhs.false20.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then3

lor.lhs.false23.i:                                ; preds = %lor.lhs.false20.i
  %aux_cnt.i34 = getelementptr inbounds %struct.bfq_group, ptr %call.i.i.i, i32 0, i32 11, i32 8, i32 1
  %call.i.i.i35 = tail call zeroext i1 @__kasan_check_write(ptr noundef %aux_cnt.i34, i32 noundef 8) #13
  tail call void @generic_atomic64_set(ptr noundef %aux_cnt.i34, i64 noundef 0) #13
  %dequeue.i = getelementptr inbounds %struct.bfq_group, ptr %call.i.i.i, i32 0, i32 11, i32 9
  %call.i26 = tail call i32 @__percpu_counter_init(ptr noundef %dequeue.i, i64 noundef 0, i32 noundef %gfp, ptr noundef nonnull @bfq_stat_init.__key) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i26)
  %tobool.not.i27 = icmp eq i32 %call.i26, 0
  br i1 %tobool.not.i27, label %lor.lhs.false26.i, label %lor.lhs.false23.i.if.then3_crit_edge

lor.lhs.false23.i.if.then3_crit_edge:             ; preds = %lor.lhs.false23.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then3

lor.lhs.false26.i:                                ; preds = %lor.lhs.false23.i
  %aux_cnt.i28 = getelementptr inbounds %struct.bfq_group, ptr %call.i.i.i, i32 0, i32 11, i32 9, i32 1
  %call.i.i.i29 = tail call zeroext i1 @__kasan_check_write(ptr noundef %aux_cnt.i28, i32 noundef 8) #13
  tail call void @generic_atomic64_set(ptr noundef %aux_cnt.i28, i64 noundef 0) #13
  %group_wait_time.i = getelementptr inbounds %struct.bfq_group, ptr %call.i.i.i, i32 0, i32 11, i32 10
  %call.i20 = tail call i32 @__percpu_counter_init(ptr noundef %group_wait_time.i, i64 noundef 0, i32 noundef %gfp, ptr noundef nonnull @bfq_stat_init.__key) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i20)
  %tobool.not.i21 = icmp eq i32 %call.i20, 0
  br i1 %tobool.not.i21, label %lor.lhs.false29.i, label %lor.lhs.false26.i.if.then3_crit_edge

lor.lhs.false26.i.if.then3_crit_edge:             ; preds = %lor.lhs.false26.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then3

lor.lhs.false29.i:                                ; preds = %lor.lhs.false26.i
  %aux_cnt.i22 = getelementptr inbounds %struct.bfq_group, ptr %call.i.i.i, i32 0, i32 11, i32 10, i32 1
  %call.i.i.i23 = tail call zeroext i1 @__kasan_check_write(ptr noundef %aux_cnt.i22, i32 noundef 8) #13
  tail call void @generic_atomic64_set(ptr noundef %aux_cnt.i22, i64 noundef 0) #13
  %idle_time.i = getelementptr inbounds %struct.bfq_group, ptr %call.i.i.i, i32 0, i32 11, i32 11
  %call.i14 = tail call i32 @__percpu_counter_init(ptr noundef %idle_time.i, i64 noundef 0, i32 noundef %gfp, ptr noundef nonnull @bfq_stat_init.__key) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i14)
  %tobool.not.i15 = icmp eq i32 %call.i14, 0
  br i1 %tobool.not.i15, label %lor.lhs.false32.i, label %lor.lhs.false29.i.if.then3_crit_edge

lor.lhs.false29.i.if.then3_crit_edge:             ; preds = %lor.lhs.false29.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then3

lor.lhs.false32.i:                                ; preds = %lor.lhs.false29.i
  %aux_cnt.i16 = getelementptr inbounds %struct.bfq_group, ptr %call.i.i.i, i32 0, i32 11, i32 11, i32 1
  %call.i.i.i17 = tail call zeroext i1 @__kasan_check_write(ptr noundef %aux_cnt.i16, i32 noundef 8) #13
  tail call void @generic_atomic64_set(ptr noundef %aux_cnt.i16, i64 noundef 0) #13
  %empty_time.i = getelementptr inbounds %struct.bfq_group, ptr %call.i.i.i, i32 0, i32 11, i32 12
  %call.i10 = tail call i32 @__percpu_counter_init(ptr noundef %empty_time.i, i64 noundef 0, i32 noundef %gfp, ptr noundef nonnull @bfq_stat_init.__key) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i10)
  %tobool.not.i11 = icmp eq i32 %call.i10, 0
  br i1 %tobool.not.i11, label %if.end4, label %lor.lhs.false32.i.if.then3_crit_edge

lor.lhs.false32.i.if.then3_crit_edge:             ; preds = %lor.lhs.false32.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then3

if.then3:                                         ; preds = %lor.lhs.false32.i.if.then3_crit_edge, %lor.lhs.false29.i.if.then3_crit_edge, %lor.lhs.false26.i.if.then3_crit_edge, %lor.lhs.false23.i.if.then3_crit_edge, %lor.lhs.false20.i.if.then3_crit_edge, %lor.lhs.false17.i.if.then3_crit_edge, %lor.lhs.false14.i.if.then3_crit_edge, %lor.lhs.false11.i.if.then3_crit_edge, %lor.lhs.false8.i.if.then3_crit_edge, %lor.lhs.false5.i.if.then3_crit_edge, %if.end.i.if.then3_crit_edge, %lor.lhs.false.i.if.then3_crit_edge, %if.end.if.then3_crit_edge
  tail call fastcc void @bfqg_stats_exit(ptr noundef %stats) #13
  tail call void @kfree(ptr noundef nonnull %call.i.i.i) #13
  br label %cleanup

if.end4:                                          ; preds = %lor.lhs.false32.i
  call void @__sanitizer_cov_trace_pc() #15
  %aux_cnt.i = getelementptr inbounds %struct.bfq_group, ptr %call.i.i.i, i32 0, i32 11, i32 12, i32 1
  %call.i.i.i12 = tail call zeroext i1 @__kasan_check_write(ptr noundef %aux_cnt.i, i32 noundef 8) #13
  tail call void @generic_atomic64_set(ptr noundef %aux_cnt.i, i64 noundef 0) #13
  %ref.i = getelementptr inbounds %struct.bfq_group, ptr %call.i.i.i, i32 0, i32 2
  %2 = ptrtoint ptr %ref.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ref.i, align 8
  %inc.i = add i32 %3, 1
  store i32 %inc.i, ptr %ref.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.then3, %kzalloc_node.exit.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then3 ], [ %call.i.i.i, %if.end4 ], [ null, %kzalloc_node.exit.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @bfq_pd_init(ptr noundef readonly %pd) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %pd, null
  br i1 %tobool.not.i, label %entry.blkg_to_bfqg.exit_crit_edge, label %pd_to_blkg.exit

entry.blkg_to_bfqg.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %blkg_to_bfqg.exit

pd_to_blkg.exit:                                  ; preds = %entry
  %0 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pd, align 4
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %pd_to_blkg.exit.blkg_to_bfqg.exit_crit_edge, label %cond.true.i.i

pd_to_blkg.exit.blkg_to_bfqg.exit_crit_edge:      ; preds = %pd_to_blkg.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %blkg_to_bfqg.exit

cond.true.i.i:                                    ; preds = %pd_to_blkg.exit
  call void @__sanitizer_cov_trace_pc() #15
  %2 = load i32, ptr @blkcg_policy_bfq, align 4
  %arrayidx.i.i = getelementptr %struct.blkcg_gq, ptr %1, i32 0, i32 9, i32 %2
  %3 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx.i.i, align 4
  br label %blkg_to_bfqg.exit

blkg_to_bfqg.exit:                                ; preds = %cond.true.i.i, %pd_to_blkg.exit.blkg_to_bfqg.exit_crit_edge, %entry.blkg_to_bfqg.exit_crit_edge
  %cond.i24 = phi ptr [ %1, %cond.true.i.i ], [ null, %pd_to_blkg.exit.blkg_to_bfqg.exit_crit_edge ], [ null, %entry.blkg_to_bfqg.exit_crit_edge ]
  %cond.i.i = phi ptr [ %4, %cond.true.i.i ], [ null, %pd_to_blkg.exit.blkg_to_bfqg.exit_crit_edge ], [ null, %entry.blkg_to_bfqg.exit_crit_edge ]
  %5 = ptrtoint ptr %cond.i24 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cond.i24, align 8
  %elevator = getelementptr inbounds %struct.request_queue, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %elevator to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %elevator, align 4
  %elevator_data = getelementptr inbounds %struct.elevator_queue, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %elevator_data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %elevator_data, align 4
  %blkcg = getelementptr inbounds %struct.blkcg_gq, ptr %cond.i24, i32 0, i32 3
  %11 = ptrtoint ptr %blkcg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %blkcg, align 4
  %tobool.not.i.i18 = icmp eq ptr %12, null
  br i1 %tobool.not.i.i18, label %blkg_to_bfqg.exit.blkcg_to_bfqgd.exit_crit_edge, label %cond.true.i.i20

blkg_to_bfqg.exit.blkcg_to_bfqgd.exit_crit_edge:  ; preds = %blkg_to_bfqg.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %blkcg_to_bfqgd.exit

cond.true.i.i20:                                  ; preds = %blkg_to_bfqg.exit
  call void @__sanitizer_cov_trace_pc() #15
  %13 = load i32, ptr @blkcg_policy_bfq, align 4
  %arrayidx.i.i19 = getelementptr %struct.blkcg, ptr %12, i32 0, i32 6, i32 %13
  %14 = ptrtoint ptr %arrayidx.i.i19 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i.i19, align 4
  br label %blkcg_to_bfqgd.exit

blkcg_to_bfqgd.exit:                              ; preds = %cond.true.i.i20, %blkg_to_bfqg.exit.blkcg_to_bfqgd.exit_crit_edge
  %cond.i.i21 = phi ptr [ %15, %cond.true.i.i20 ], [ null, %blkg_to_bfqg.exit.blkcg_to_bfqgd.exit_crit_edge ]
  %entity2 = getelementptr inbounds %struct.bfq_group, ptr %cond.i.i, i32 0, i32 3
  %weight = getelementptr inbounds %struct.bfq_group_data, ptr %cond.i.i21, i32 0, i32 1
  %16 = ptrtoint ptr %weight to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %weight, align 4
  %new_weight = getelementptr inbounds %struct.bfq_group, ptr %cond.i.i, i32 0, i32 3, i32 11
  %18 = ptrtoint ptr %new_weight to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %new_weight, align 4
  %weight4 = getelementptr inbounds %struct.bfq_group, ptr %cond.i.i, i32 0, i32 3, i32 10
  %19 = ptrtoint ptr %weight4 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %17, ptr %weight4, align 8
  %orig_weight = getelementptr inbounds %struct.bfq_group, ptr %cond.i.i, i32 0, i32 3, i32 12
  %20 = ptrtoint ptr %orig_weight to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %17, ptr %orig_weight, align 8
  %sched_data = getelementptr inbounds %struct.bfq_group, ptr %cond.i.i, i32 0, i32 4
  %my_sched_data = getelementptr inbounds %struct.bfq_group, ptr %cond.i.i, i32 0, i32 3, i32 14
  %21 = ptrtoint ptr %my_sched_data to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %sched_data, ptr %my_sched_data, align 8
  %last_bfqq_created = getelementptr inbounds %struct.bfq_group, ptr %cond.i.i, i32 0, i32 3, i32 18
  %22 = ptrtoint ptr %last_bfqq_created to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %last_bfqq_created, align 8
  %my_entity = getelementptr inbounds %struct.bfq_group, ptr %cond.i.i, i32 0, i32 8
  %23 = ptrtoint ptr %my_entity to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %entity2, ptr %my_entity, align 8
  %bfqd5 = getelementptr inbounds %struct.bfq_group, ptr %cond.i.i, i32 0, i32 5
  %24 = ptrtoint ptr %bfqd5 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %10, ptr %bfqd5, align 8
  %active_entities = getelementptr inbounds %struct.bfq_group, ptr %cond.i.i, i32 0, i32 9
  %25 = ptrtoint ptr %active_entities to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %active_entities, align 4
  %rq_pos_tree = getelementptr inbounds %struct.bfq_group, ptr %cond.i.i, i32 0, i32 10
  %26 = ptrtoint ptr %rq_pos_tree to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %rq_pos_tree, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfq_pd_offline(ptr noundef %pd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %bfqd1 = getelementptr inbounds %struct.bfq_group, ptr %pd, i32 0, i32 5
  %0 = ptrtoint ptr %bfqd1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bfqd1, align 8
  %my_entity = getelementptr inbounds %struct.bfq_group, ptr %pd, i32 0, i32 8
  %2 = ptrtoint ptr %my_entity to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %my_entity, align 8
  %lock = getelementptr inbounds %struct.bfq_data, ptr %1, i32 0, i32 62
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #13
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.put_async_queues_crit_edge, label %for.cond.preheader

entry.put_async_queues_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %put_async_queues

for.cond.preheader:                               ; preds = %entry
  %service_tree = getelementptr inbounds %struct.bfq_group, ptr %pd, i32 0, i32 4, i32 2
  %root_group.i.i = getelementptr inbounds %struct.bfq_data, ptr %1, i32 0, i32 2
  %sched_data.i = getelementptr inbounds %struct.bfq_group, ptr %pd, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %bfq_flush_idle_tree.exit.for.body_crit_edge, %for.cond.preheader
  %i.030 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %bfq_flush_idle_tree.exit.for.body_crit_edge ]
  %add.ptr = getelementptr %struct.bfq_service_tree, ptr %service_tree, i32 %i.030
  %call26.i = tail call ptr @rb_first(ptr noundef %add.ptr) #13
  %call227.i = tail call ptr @bfq_entity_of(ptr noundef %call26.i) #13
  %tobool.not28.i = icmp eq ptr %call227.i, null
  br i1 %tobool.not28.i, label %for.body.while.end.i_crit_edge, label %for.body.while.body.i_crit_edge

for.body.while.body.i_crit_edge:                  ; preds = %for.body
  br label %while.body.i

for.body.while.end.i_crit_edge:                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.i

while.body.i:                                     ; preds = %bfq_reparent_leaf_entity.exit.i.while.body.i_crit_edge, %for.body.while.body.i_crit_edge
  %call229.i = phi ptr [ %call2.i, %bfq_reparent_leaf_entity.exit.i.while.body.i_crit_edge ], [ %call227.i, %for.body.while.body.i_crit_edge ]
  %my_sched_data10.i.i = getelementptr inbounds %struct.bfq_entity, ptr %call229.i, i32 0, i32 14
  %4 = ptrtoint ptr %my_sched_data10.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %my_sched_data10.i.i, align 8
  %tobool.not11.i.i = icmp eq ptr %5, null
  br i1 %tobool.not11.i.i, label %while.body.i.bfq_reparent_leaf_entity.exit.i_crit_edge, label %while.body.i.while.body.i.i_crit_edge

while.body.i.while.body.i.i_crit_edge:            ; preds = %while.body.i
  br label %while.body.i.i

while.body.i.bfq_reparent_leaf_entity.exit.i_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %bfq_reparent_leaf_entity.exit.i

while.body.i.i:                                   ; preds = %if.end.i.i.while.body.i.i_crit_edge, %while.body.i.while.body.i.i_crit_edge
  %6 = phi ptr [ %10, %if.end.i.i.while.body.i.i_crit_edge ], [ %5, %while.body.i.while.body.i.i_crit_edge ]
  %service_tree.i.i = getelementptr inbounds %struct.bfq_sched_data, ptr %6, i32 0, i32 2
  %add.ptr.i.i = getelementptr %struct.bfq_service_tree, ptr %service_tree.i.i, i32 %i.030
  %call.i.i = tail call ptr @rb_first(ptr noundef %add.ptr.i.i) #13
  %call2.i.i = tail call ptr @bfq_entity_of(ptr noundef %call.i.i) #13
  %tobool3.not.i.i = icmp eq ptr %call2.i.i, null
  br i1 %tobool3.not.i.i, label %if.then.i.i, label %while.body.i.i.if.end.i.i_crit_edge

while.body.i.i.if.end.i.i_crit_edge:              ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 8
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %while.body.i.i.if.end.i.i_crit_edge
  %child_entity.1.i.i = phi ptr [ %call2.i.i, %while.body.i.i.if.end.i.i_crit_edge ], [ %8, %if.then.i.i ]
  %my_sched_data.i.i = getelementptr inbounds %struct.bfq_entity, ptr %child_entity.1.i.i, i32 0, i32 14
  %9 = ptrtoint ptr %my_sched_data.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %my_sched_data.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %10, null
  br i1 %tobool.not.i.i, label %if.end.i.i.bfq_reparent_leaf_entity.exit.i_crit_edge, label %if.end.i.i.while.body.i.i_crit_edge

if.end.i.i.while.body.i.i_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i.i

if.end.i.i.bfq_reparent_leaf_entity.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %bfq_reparent_leaf_entity.exit.i

bfq_reparent_leaf_entity.exit.i:                  ; preds = %if.end.i.i.bfq_reparent_leaf_entity.exit.i_crit_edge, %while.body.i.bfq_reparent_leaf_entity.exit.i_crit_edge
  %child_entity.0.lcssa.i.i = phi ptr [ %call229.i, %while.body.i.bfq_reparent_leaf_entity.exit.i_crit_edge ], [ %child_entity.1.i.i, %if.end.i.i.bfq_reparent_leaf_entity.exit.i_crit_edge ]
  %call4.i.i = tail call ptr @bfq_entity_to_bfqq(ptr noundef %child_entity.0.lcssa.i.i) #13
  %11 = ptrtoint ptr %root_group.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %root_group.i.i, align 4
  tail call void @bfq_bfqq_move(ptr noundef %1, ptr noundef %call4.i.i, ptr noundef %12) #13
  %call.i = tail call ptr @rb_first(ptr noundef %add.ptr) #13
  %call2.i = tail call ptr @bfq_entity_of(ptr noundef %call.i) #13
  %tobool.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool.not.i, label %bfq_reparent_leaf_entity.exit.i.while.end.i_crit_edge, label %bfq_reparent_leaf_entity.exit.i.while.body.i_crit_edge

bfq_reparent_leaf_entity.exit.i.while.body.i_crit_edge: ; preds = %bfq_reparent_leaf_entity.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i

bfq_reparent_leaf_entity.exit.i.while.end.i_crit_edge: ; preds = %bfq_reparent_leaf_entity.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.i

while.end.i:                                      ; preds = %bfq_reparent_leaf_entity.exit.i.while.end.i_crit_edge, %for.body.while.end.i_crit_edge
  %13 = ptrtoint ptr %sched_data.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sched_data.i, align 8
  %tobool3.not.i = icmp eq ptr %14, null
  br i1 %tobool3.not.i, label %while.end.i.bfq_reparent_active_queues.exit_crit_edge, label %if.then.i

while.end.i.bfq_reparent_active_queues.exit_crit_edge: ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %bfq_reparent_active_queues.exit

if.then.i:                                        ; preds = %while.end.i
  %my_sched_data10.i9.i = getelementptr inbounds %struct.bfq_entity, ptr %14, i32 0, i32 14
  %15 = ptrtoint ptr %my_sched_data10.i9.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %my_sched_data10.i9.i, align 8
  %tobool.not11.i10.i = icmp eq ptr %16, null
  br i1 %tobool.not11.i10.i, label %if.then.i.bfq_reparent_leaf_entity.exit25.i_crit_edge, label %if.then.i.while.body.i16.i_crit_edge

if.then.i.while.body.i16.i_crit_edge:             ; preds = %if.then.i
  br label %while.body.i16.i

if.then.i.bfq_reparent_leaf_entity.exit25.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %bfq_reparent_leaf_entity.exit25.i

while.body.i16.i:                                 ; preds = %if.end.i21.i.while.body.i16.i_crit_edge, %if.then.i.while.body.i16.i_crit_edge
  %17 = phi ptr [ %21, %if.end.i21.i.while.body.i16.i_crit_edge ], [ %16, %if.then.i.while.body.i16.i_crit_edge ]
  %service_tree.i11.i = getelementptr inbounds %struct.bfq_sched_data, ptr %17, i32 0, i32 2
  %add.ptr.i12.i = getelementptr %struct.bfq_service_tree, ptr %service_tree.i11.i, i32 %i.030
  %call.i13.i = tail call ptr @rb_first(ptr noundef %add.ptr.i12.i) #13
  %call2.i14.i = tail call ptr @bfq_entity_of(ptr noundef %call.i13.i) #13
  %tobool3.not.i15.i = icmp eq ptr %call2.i14.i, null
  br i1 %tobool3.not.i15.i, label %if.then.i17.i, label %while.body.i16.i.if.end.i21.i_crit_edge

while.body.i16.i.if.end.i21.i_crit_edge:          ; preds = %while.body.i16.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i21.i

if.then.i17.i:                                    ; preds = %while.body.i16.i
  call void @__sanitizer_cov_trace_pc() #15
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 8
  br label %if.end.i21.i

if.end.i21.i:                                     ; preds = %if.then.i17.i, %while.body.i16.i.if.end.i21.i_crit_edge
  %child_entity.1.i18.i = phi ptr [ %call2.i14.i, %while.body.i16.i.if.end.i21.i_crit_edge ], [ %19, %if.then.i17.i ]
  %my_sched_data.i19.i = getelementptr inbounds %struct.bfq_entity, ptr %child_entity.1.i18.i, i32 0, i32 14
  %20 = ptrtoint ptr %my_sched_data.i19.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %my_sched_data.i19.i, align 8
  %tobool.not.i20.i = icmp eq ptr %21, null
  br i1 %tobool.not.i20.i, label %if.end.i21.i.bfq_reparent_leaf_entity.exit25.i_crit_edge, label %if.end.i21.i.while.body.i16.i_crit_edge

if.end.i21.i.while.body.i16.i_crit_edge:          ; preds = %if.end.i21.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i16.i

if.end.i21.i.bfq_reparent_leaf_entity.exit25.i_crit_edge: ; preds = %if.end.i21.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %bfq_reparent_leaf_entity.exit25.i

bfq_reparent_leaf_entity.exit25.i:                ; preds = %if.end.i21.i.bfq_reparent_leaf_entity.exit25.i_crit_edge, %if.then.i.bfq_reparent_leaf_entity.exit25.i_crit_edge
  %child_entity.0.lcssa.i22.i = phi ptr [ %14, %if.then.i.bfq_reparent_leaf_entity.exit25.i_crit_edge ], [ %child_entity.1.i18.i, %if.end.i21.i.bfq_reparent_leaf_entity.exit25.i_crit_edge ]
  %call4.i23.i = tail call ptr @bfq_entity_to_bfqq(ptr noundef %child_entity.0.lcssa.i22.i) #13
  %22 = ptrtoint ptr %root_group.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %root_group.i.i, align 4
  tail call void @bfq_bfqq_move(ptr noundef %1, ptr noundef %call4.i23.i, ptr noundef %23) #13
  br label %bfq_reparent_active_queues.exit

bfq_reparent_active_queues.exit:                  ; preds = %bfq_reparent_leaf_entity.exit25.i, %while.end.i.bfq_reparent_active_queues.exit_crit_edge
  %first_idle.i = getelementptr %struct.bfq_service_tree, ptr %service_tree, i32 %i.030, i32 2
  %24 = ptrtoint ptr %first_idle.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %entity.04.i = load ptr, ptr %first_idle.i, align 8
  %tobool.not5.i = icmp eq ptr %entity.04.i, null
  br i1 %tobool.not5.i, label %bfq_reparent_active_queues.exit.bfq_flush_idle_tree.exit_crit_edge, label %bfq_reparent_active_queues.exit.for.body.i_crit_edge

bfq_reparent_active_queues.exit.for.body.i_crit_edge: ; preds = %bfq_reparent_active_queues.exit
  br label %for.body.i

bfq_reparent_active_queues.exit.bfq_flush_idle_tree.exit_crit_edge: ; preds = %bfq_reparent_active_queues.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %bfq_flush_idle_tree.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %bfq_reparent_active_queues.exit.for.body.i_crit_edge
  %entity.06.i = phi ptr [ %entity.0.i, %for.body.i.for.body.i_crit_edge ], [ %entity.04.i, %bfq_reparent_active_queues.exit.for.body.i_crit_edge ]
  %call.i24 = tail call zeroext i1 @__bfq_deactivate_entity(ptr noundef nonnull %entity.06.i, i1 noundef zeroext false) #13
  %25 = ptrtoint ptr %first_idle.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %entity.0.i = load ptr, ptr %first_idle.i, align 8
  %tobool.not.i25 = icmp eq ptr %entity.0.i, null
  br i1 %tobool.not.i25, label %for.body.i.bfq_flush_idle_tree.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.body.i.bfq_flush_idle_tree.exit_crit_edge:    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %bfq_flush_idle_tree.exit

bfq_flush_idle_tree.exit:                         ; preds = %for.body.i.bfq_flush_idle_tree.exit_crit_edge, %bfq_reparent_active_queues.exit.bfq_flush_idle_tree.exit_crit_edge
  %inc = add nuw nsw i32 %i.030, 1
  %exitcond.not = icmp eq i32 %inc, 3
  br i1 %exitcond.not, label %for.end, label %bfq_flush_idle_tree.exit.for.body_crit_edge

bfq_flush_idle_tree.exit.for.body_crit_edge:      ; preds = %bfq_flush_idle_tree.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %bfq_flush_idle_tree.exit
  call void @__sanitizer_cov_trace_pc() #15
  %call9 = tail call zeroext i1 @__bfq_deactivate_entity(ptr noundef nonnull %3, i1 noundef zeroext false) #13
  br label %put_async_queues

put_async_queues:                                 ; preds = %for.end, %entry.put_async_queues_crit_edge
  tail call void @bfq_put_async_queues(ptr noundef %1, ptr noundef %pd) #13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #13
  %tobool.not.i26 = icmp eq ptr %pd, null
  br i1 %tobool.not.i26, label %put_async_queues.bfqg_stats_xfer_dead.exit_crit_edge, label %bfqg_to_blkg.exit.i.i

put_async_queues.bfqg_stats_xfer_dead.exit_crit_edge: ; preds = %put_async_queues
  call void @__sanitizer_cov_trace_pc() #15
  br label %bfqg_stats_xfer_dead.exit

bfqg_to_blkg.exit.i.i:                            ; preds = %put_async_queues
  %26 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pd, align 4
  %parent.i.i = getelementptr inbounds %struct.blkcg_gq, ptr %27, i32 0, i32 4
  %28 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %parent.i.i, align 8
  %tobool.not.i.i27 = icmp eq ptr %29, null
  br i1 %tobool.not.i.i27, label %bfqg_to_blkg.exit.i.i.bfqg_parent.exit.i_crit_edge, label %blkg_to_bfqg.exit.i.i

bfqg_to_blkg.exit.i.i.bfqg_parent.exit.i_crit_edge: ; preds = %bfqg_to_blkg.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %bfqg_parent.exit.i

blkg_to_bfqg.exit.i.i:                            ; preds = %bfqg_to_blkg.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %30 = load i32, ptr @blkcg_policy_bfq, align 4
  %arrayidx.i.i.i.i = getelementptr %struct.blkcg_gq, ptr %29, i32 0, i32 9, i32 %30
  %31 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  br label %bfqg_parent.exit.i

bfqg_parent.exit.i:                               ; preds = %blkg_to_bfqg.exit.i.i, %bfqg_to_blkg.exit.i.i.bfqg_parent.exit.i_crit_edge
  %cond.i.i = phi ptr [ %32, %blkg_to_bfqg.exit.i.i ], [ null, %bfqg_to_blkg.exit.i.i.bfqg_parent.exit.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %33 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool1.not.i = icmp eq i32 %33, 0
  br i1 %tobool1.not.i, label %bfqg_parent.exit.i.if.end20.i_crit_edge, label %bfqg_to_blkg.exit.i

bfqg_parent.exit.i.if.end20.i_crit_edge:          ; preds = %bfqg_parent.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end20.i

bfqg_to_blkg.exit.i:                              ; preds = %bfqg_parent.exit.i
  %34 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %27, align 8
  %dep_map.i = getelementptr inbounds %struct.request_queue, ptr %35, i32 0, i32 14, i32 0, i32 0, i32 4
  %call.i.i28 = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i28)
  %cmp.not.i = icmp eq i32 %call.i.i28, 0
  br i1 %cmp.not.i, label %do.end.i, label %bfqg_to_blkg.exit.i.if.end20.i_crit_edge, !prof !50

bfqg_to_blkg.exit.i.if.end20.i_crit_edge:         ; preds = %bfqg_to_blkg.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end20.i

do.end.i:                                         ; preds = %bfqg_to_blkg.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 415, i32 noundef 9, ptr noundef null) #13
  br label %if.end20.i

if.end20.i:                                       ; preds = %do.end.i, %bfqg_to_blkg.exit.i.if.end20.i_crit_edge, %bfqg_parent.exit.i.if.end20.i_crit_edge
  %tobool29.not.i = icmp eq ptr %cond.i.i, null
  br i1 %tobool29.not.i, label %if.end20.i.bfqg_stats_xfer_dead.exit_crit_edge, label %if.end39.i, !prof !50

if.end20.i.bfqg_stats_xfer_dead.exit_crit_edge:   ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %bfqg_stats_xfer_dead.exit

if.end39.i:                                       ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #15
  %stats40.i = getelementptr inbounds %struct.bfq_group, ptr %pd, i32 0, i32 11
  %merged.i.i = getelementptr inbounds %struct.bfq_group, ptr %cond.i.i, i32 0, i32 11, i32 2
  %merged2.i.i = getelementptr inbounds %struct.bfq_group, ptr %pd, i32 0, i32 11, i32 2
  tail call fastcc void @blkg_rwstat_add_aux(ptr noundef %merged.i.i, ptr noundef %merged2.i.i) #13
  %service_time.i.i = getelementptr inbounds %struct.bfq_group, ptr %cond.i.i, i32 0, i32 11, i32 3
  %service_time3.i.i = getelementptr inbounds %struct.bfq_group, ptr %pd, i32 0, i32 11, i32 3
  tail call fastcc void @blkg_rwstat_add_aux(ptr noundef %service_time.i.i, ptr noundef %service_time3.i.i) #13
  %wait_time.i.i = getelementptr inbounds %struct.bfq_group, ptr %cond.i.i, i32 0, i32 11, i32 4
  %wait_time4.i.i = getelementptr inbounds %struct.bfq_group, ptr %pd, i32 0, i32 11, i32 4
  tail call fastcc void @blkg_rwstat_add_aux(ptr noundef %wait_time.i.i, ptr noundef %wait_time4.i.i) #13
  %time.i.i = getelementptr inbounds %struct.bfq_group, ptr %pd, i32 0, i32 11, i32 6
  %call.i.i5.i.i.i = tail call i64 @__percpu_counter_sum(ptr noundef %time.i.i) #13
  %36 = tail call i64 @llvm.smax.i64(i64 %call.i.i5.i.i.i, i64 0) #13
  %aux_cnt.i.i.i = getelementptr inbounds %struct.bfq_group, ptr %pd, i32 0, i32 11, i32 6, i32 1
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %aux_cnt.i.i.i, i32 noundef 8) #13
  %call.i.i.i.i = tail call i64 @generic_atomic64_read(ptr noundef %aux_cnt.i.i.i) #13
  %add.i.i.i = add i64 %call.i.i.i.i, %36
  %call.i.i4.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %aux_cnt.i.i.i, i32 noundef 8) #13
  tail call void @generic_atomic64_add(i64 noundef %add.i.i.i, ptr noundef %aux_cnt.i.i.i) #13
  %avg_queue_size_sum6.i.i = getelementptr inbounds %struct.bfq_group, ptr %pd, i32 0, i32 11, i32 7
  %call.i.i5.i32.i.i = tail call i64 @__percpu_counter_sum(ptr noundef %avg_queue_size_sum6.i.i) #13
  %37 = tail call i64 @llvm.smax.i64(i64 %call.i.i5.i32.i.i, i64 0) #13
  %aux_cnt.i33.i.i = getelementptr inbounds %struct.bfq_group, ptr %pd, i32 0, i32 11, i32 7, i32 1
  %call.i.i.i34.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %aux_cnt.i33.i.i, i32 noundef 8) #13
  %call.i.i35.i.i = tail call i64 @generic_atomic64_read(ptr noundef %aux_cnt.i33.i.i) #13
  %add.i36.i.i = add i64 %call.i.i35.i.i, %37
  %aux_cnt2.i37.i.i = getelementptr inbounds %struct.bfq_group, ptr %cond.i.i, i32 0, i32 11, i32 7, i32 1
  %call.i.i4.i38.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %aux_cnt2.i37.i.i, i32 noundef 8) #13
  tail call void @generic_atomic64_add(i64 noundef %add.i36.i.i, ptr noundef %aux_cnt2.i37.i.i) #13
  %avg_queue_size_samples7.i.i = getelementptr inbounds %struct.bfq_group, ptr %pd, i32 0, i32 11, i32 8
  %call.i.i5.i39.i.i = tail call i64 @__percpu_counter_sum(ptr noundef %avg_queue_size_samples7.i.i) #13
  %38 = tail call i64 @llvm.smax.i64(i64 %call.i.i5.i39.i.i, i64 0) #13
  %aux_cnt.i40.i.i = getelementptr inbounds %struct.bfq_group, ptr %pd, i32 0, i32 11, i32 8, i32 1
  %call.i.i.i41.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %aux_cnt.i40.i.i, i32 noundef 8) #13
  %call.i.i42.i.i = tail call i64 @generic_atomic64_read(ptr noundef %aux_cnt.i40.i.i) #13
  %add.i43.i.i = add i64 %call.i.i42.i.i, %38
  %aux_cnt2.i44.i.i = getelementptr inbounds %struct.bfq_group, ptr %cond.i.i, i32 0, i32 11, i32 8, i32 1
  %call.i.i4.i45.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %aux_cnt2.i44.i.i, i32 noundef 8) #13
  tail call void @generic_atomic64_add(i64 noundef %add.i43.i.i, ptr noundef %aux_cnt2.i44.i.i) #13
  %dequeue8.i.i = getelementptr inbounds %struct.bfq_group, ptr %pd, i32 0, i32 11, i32 9
  %call.i.i5.i46.i.i = tail call i64 @__percpu_counter_sum(ptr noundef %dequeue8.i.i) #13
  %39 = tail call i64 @llvm.smax.i64(i64 %call.i.i5.i46.i.i, i64 0) #13
  %aux_cnt.i47.i.i = getelementptr inbounds %struct.bfq_group, ptr %pd, i32 0, i32 11, i32 9, i32 1
  %call.i.i.i48.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %aux_cnt.i47.i.i, i32 noundef 8) #13
  %call.i.i49.i.i = tail call i64 @generic_atomic64_read(ptr noundef %aux_cnt.i47.i.i) #13
  %add.i50.i.i = add i64 %call.i.i49.i.i, %39
  %aux_cnt2.i51.i.i = getelementptr inbounds %struct.bfq_group, ptr %cond.i.i, i32 0, i32 11, i32 9, i32 1
  %call.i.i4.i52.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %aux_cnt2.i51.i.i, i32 noundef 8) #13
  tail call void @generic_atomic64_add(i64 noundef %add.i50.i.i, ptr noundef %aux_cnt2.i51.i.i) #13
  %group_wait_time9.i.i = getelementptr inbounds %struct.bfq_group, ptr %pd, i32 0, i32 11, i32 10
  %call.i.i5.i53.i.i = tail call i64 @__percpu_counter_sum(ptr noundef %group_wait_time9.i.i) #13
  %40 = tail call i64 @llvm.smax.i64(i64 %call.i.i5.i53.i.i, i64 0) #13
  %aux_cnt.i54.i.i = getelementptr inbounds %struct.bfq_group, ptr %pd, i32 0, i32 11, i32 10, i32 1
  %call.i.i.i55.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %aux_cnt.i54.i.i, i32 noundef 8) #13
  %call.i.i56.i.i = tail call i64 @generic_atomic64_read(ptr noundef %aux_cnt.i54.i.i) #13
  %add.i57.i.i = add i64 %call.i.i56.i.i, %40
  %aux_cnt2.i58.i.i = getelementptr inbounds %struct.bfq_group, ptr %cond.i.i, i32 0, i32 11, i32 10, i32 1
  %call.i.i4.i59.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %aux_cnt2.i58.i.i, i32 noundef 8) #13
  tail call void @generic_atomic64_add(i64 noundef %add.i57.i.i, ptr noundef %aux_cnt2.i58.i.i) #13
  %idle_time10.i.i = getelementptr inbounds %struct.bfq_group, ptr %pd, i32 0, i32 11, i32 11
  %call.i.i5.i60.i.i = tail call i64 @__percpu_counter_sum(ptr noundef %idle_time10.i.i) #13
  %41 = tail call i64 @llvm.smax.i64(i64 %call.i.i5.i60.i.i, i64 0) #13
  %aux_cnt.i61.i.i = getelementptr inbounds %struct.bfq_group, ptr %pd, i32 0, i32 11, i32 11, i32 1
  %call.i.i.i62.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %aux_cnt.i61.i.i, i32 noundef 8) #13
  %call.i.i63.i.i = tail call i64 @generic_atomic64_read(ptr noundef %aux_cnt.i61.i.i) #13
  %add.i64.i.i = add i64 %call.i.i63.i.i, %41
  %aux_cnt2.i65.i.i = getelementptr inbounds %struct.bfq_group, ptr %cond.i.i, i32 0, i32 11, i32 11, i32 1
  %call.i.i4.i66.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %aux_cnt2.i65.i.i, i32 noundef 8) #13
  tail call void @generic_atomic64_add(i64 noundef %add.i64.i.i, ptr noundef %aux_cnt2.i65.i.i) #13
  %empty_time11.i.i = getelementptr inbounds %struct.bfq_group, ptr %pd, i32 0, i32 11, i32 12
  %call.i.i5.i67.i.i = tail call i64 @__percpu_counter_sum(ptr noundef %empty_time11.i.i) #13
  %42 = tail call i64 @llvm.smax.i64(i64 %call.i.i5.i67.i.i, i64 0) #13
  %aux_cnt.i68.i.i = getelementptr inbounds %struct.bfq_group, ptr %pd, i32 0, i32 11, i32 12, i32 1
  %call.i.i.i69.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %aux_cnt.i68.i.i, i32 noundef 8) #13
  %call.i.i70.i.i = tail call i64 @generic_atomic64_read(ptr noundef %aux_cnt.i68.i.i) #13
  %add.i71.i.i = add i64 %call.i.i70.i.i, %42
  %aux_cnt2.i72.i.i = getelementptr inbounds %struct.bfq_group, ptr %cond.i.i, i32 0, i32 11, i32 12, i32 1
  %call.i.i4.i73.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %aux_cnt2.i72.i.i, i32 noundef 8) #13
  tail call void @generic_atomic64_add(i64 noundef %add.i71.i.i, ptr noundef %aux_cnt2.i72.i.i) #13
  tail call fastcc void @bfqg_stats_reset(ptr noundef %stats40.i) #13
  br label %bfqg_stats_xfer_dead.exit

bfqg_stats_xfer_dead.exit:                        ; preds = %if.end39.i, %if.end20.i.bfqg_stats_xfer_dead.exit_crit_edge, %put_async_queues.bfqg_stats_xfer_dead.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfq_pd_free(ptr noundef %pd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %stats = getelementptr inbounds %struct.bfq_group, ptr %pd, i32 0, i32 11
  tail call fastcc void @bfqg_stats_exit(ptr noundef %stats)
  %ref.i = getelementptr inbounds %struct.bfq_group, ptr %pd, i32 0, i32 2
  %0 = ptrtoint ptr %ref.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ref.i, align 8
  %dec.i = add i32 %1, -1
  store i32 %dec.i, ptr %ref.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp.i = icmp eq i32 %dec.i, 0
  br i1 %cmp.i, label %if.then.i, label %entry.bfqg_put.exit_crit_edge

entry.bfqg_put.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %bfqg_put.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @kfree(ptr noundef %pd) #13
  br label %bfqg_put.exit

bfqg_put.exit:                                    ; preds = %if.then.i, %entry.bfqg_put.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfq_pd_reset_stats(ptr noundef %pd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %stats = getelementptr inbounds %struct.bfq_group, ptr %pd, i32 0, i32 11
  tail call fastcc void @bfqg_stats_reset(ptr noundef %stats)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bfq_io_show_weight_legacy(ptr noundef %sf, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.seq_file, ptr %sf, i32 0, i32 11
  %0 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private.i, align 8
  %call.i = tail call ptr @of_css(ptr noundef %1) #13
  %tobool.not.i.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i.i, label %entry.if.end_crit_edge, label %blkcg_to_bfqgd.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

blkcg_to_bfqgd.exit:                              ; preds = %entry
  %2 = load i32, ptr @blkcg_policy_bfq, align 4
  %arrayidx.i.i = getelementptr %struct.blkcg, ptr %call.i, i32 0, i32 6, i32 %2
  %3 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %blkcg_to_bfqgd.exit.if.end_crit_edge, label %if.then

blkcg_to_bfqgd.exit.if.end_crit_edge:             ; preds = %blkcg_to_bfqgd.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %blkcg_to_bfqgd.exit
  call void @__sanitizer_cov_trace_pc() #15
  %weight = getelementptr inbounds %struct.bfq_group_data, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %weight to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %weight, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %blkcg_to_bfqgd.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %val.0 = phi i32 [ %6, %if.then ], [ 0, %blkcg_to_bfqgd.exit.if.end_crit_edge ], [ 0, %entry.if.end_crit_edge ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.9, i32 noundef %val.0) #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bfq_io_set_weight_legacy(ptr noundef %css, ptr nocapture noundef readnone %cftype, i64 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i.i = icmp eq ptr %css, null
  br i1 %tobool.not.i.i, label %entry.blkcg_to_bfqgd.exit_crit_edge, label %cond.true.i.i

entry.blkcg_to_bfqgd.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %blkcg_to_bfqgd.exit

cond.true.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %0 = load i32, ptr @blkcg_policy_bfq, align 4
  %arrayidx.i.i = getelementptr %struct.blkcg, ptr %css, i32 0, i32 6, i32 %0
  %1 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx.i.i, align 4
  br label %blkcg_to_bfqgd.exit

blkcg_to_bfqgd.exit:                              ; preds = %cond.true.i.i, %entry.blkcg_to_bfqgd.exit_crit_edge
  %cond.i.i = phi ptr [ %2, %cond.true.i.i ], [ null, %entry.blkcg_to_bfqgd.exit_crit_edge ]
  %3 = add i64 %val, -1001
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1000, i64 %3)
  %4 = icmp ult i64 %3, -1000
  br i1 %4, label %blkcg_to_bfqgd.exit.cleanup_crit_edge, label %if.end

blkcg_to_bfqgd.exit.cleanup_crit_edge:            ; preds = %blkcg_to_bfqgd.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %blkcg_to_bfqgd.exit
  %lock = getelementptr inbounds %struct.blkcg, ptr %css, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #13
  %conv = trunc i64 %val to i32
  %weight = getelementptr inbounds %struct.bfq_group_data, ptr %cond.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %weight to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %conv, ptr %weight, align 4
  %blkg_list = getelementptr inbounds %struct.blkcg, ptr %css, i32 0, i32 5
  %6 = ptrtoint ptr %blkg_list to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %blkg_list, align 8
  %tobool.not = icmp eq ptr %7, null
  %add.ptr = getelementptr i8, ptr %7, i32 -12
  %tobool5.not4446 = icmp eq ptr %add.ptr, null
  %tobool5.not44 = or i1 %tobool.not, %tobool5.not4446
  br i1 %tobool5.not44, label %if.end.for.end_crit_edge, label %if.end.blkg_to_bfqg.exit_crit_edge

if.end.blkg_to_bfqg.exit_crit_edge:               ; preds = %if.end
  br label %blkg_to_bfqg.exit

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

blkg_to_bfqg.exit:                                ; preds = %if.end9.blkg_to_bfqg.exit_crit_edge, %if.end.blkg_to_bfqg.exit_crit_edge
  %blkg.045 = phi ptr [ %add.ptr16, %if.end9.blkg_to_bfqg.exit_crit_edge ], [ %add.ptr, %if.end.blkg_to_bfqg.exit_crit_edge ]
  %8 = load i32, ptr @blkcg_policy_bfq, align 4
  %arrayidx.i.i39 = getelementptr %struct.blkcg_gq, ptr %blkg.045, i32 0, i32 9, i32 %8
  %9 = ptrtoint ptr %arrayidx.i.i39 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.i.i39, align 4
  %tobool7.not = icmp eq ptr %10, null
  br i1 %tobool7.not, label %blkg_to_bfqg.exit.if.end9_crit_edge, label %if.then8

blkg_to_bfqg.exit.if.end9_crit_edge:              ; preds = %blkg_to_bfqg.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end9

if.then8:                                         ; preds = %blkg_to_bfqg.exit
  %dev_weight1.i = getelementptr inbounds %struct.bfq_group, ptr %10, i32 0, i32 3, i32 9
  %11 = ptrtoint ptr %dev_weight1.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %dev_weight1.i, align 4
  %new_weight.i = getelementptr inbounds %struct.bfq_group, ptr %10, i32 0, i32 3, i32 11
  %12 = ptrtoint ptr %new_weight.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %new_weight.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %conv)
  %cmp.not.i = icmp eq i32 %13, %conv
  br i1 %cmp.not.i, label %if.then8.if.end9_crit_edge, label %if.then.i

if.then8.if.end9_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end9

if.then.i:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #15
  %14 = ptrtoint ptr %new_weight.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %conv, ptr %new_weight.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !59
  %prio_changed.i = getelementptr inbounds %struct.bfq_group, ptr %10, i32 0, i32 3, i32 16
  %15 = ptrtoint ptr %prio_changed.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %prio_changed.i, align 8
  br label %if.end9

if.end9:                                          ; preds = %if.then.i, %if.then8.if.end9_crit_edge, %blkg_to_bfqg.exit.if.end9_crit_edge
  %blkcg_node = getelementptr inbounds %struct.blkcg_gq, ptr %blkg.045, i32 0, i32 2
  %16 = ptrtoint ptr %blkcg_node to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %blkcg_node, align 4
  %tobool12.not = icmp eq ptr %17, null
  %add.ptr16 = getelementptr i8, ptr %17, i32 -12
  %tobool5.not47 = icmp eq ptr %add.ptr16, null
  %tobool5.not = or i1 %tobool12.not, %tobool5.not47
  br i1 %tobool5.not, label %if.end9.for.end_crit_edge, label %if.end9.blkg_to_bfqg.exit_crit_edge

if.end9.blkg_to_bfqg.exit_crit_edge:              ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %blkg_to_bfqg.exit

if.end9.for.end_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %if.end9.for.end_crit_edge, %if.end.for.end_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #13
  br label %cleanup

cleanup:                                          ; preds = %for.end, %blkcg_to_bfqgd.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end ], [ -34, %blkcg_to_bfqgd.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bfq_io_show_weight(ptr noundef %sf, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.seq_file, ptr %sf, i32 0, i32 11
  %0 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private.i, align 8
  %call.i = tail call ptr @of_css(ptr noundef %1) #13
  %tobool.not.i.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i.i, label %entry.blkcg_to_bfqgd.exit_crit_edge, label %cond.true.i.i

entry.blkcg_to_bfqgd.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %blkcg_to_bfqgd.exit

cond.true.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %2 = load i32, ptr @blkcg_policy_bfq, align 4
  %arrayidx.i.i = getelementptr %struct.blkcg, ptr %call.i, i32 0, i32 6, i32 %2
  %3 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx.i.i, align 4
  br label %blkcg_to_bfqgd.exit

blkcg_to_bfqgd.exit:                              ; preds = %cond.true.i.i, %entry.blkcg_to_bfqgd.exit_crit_edge
  %cond.i.i = phi ptr [ %4, %cond.true.i.i ], [ null, %entry.blkcg_to_bfqgd.exit_crit_edge ]
  %weight = getelementptr inbounds %struct.bfq_group_data, ptr %cond.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %weight to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %weight, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.10, i32 noundef %6) #13
  tail call void @blkcg_print_blkgs(ptr noundef %sf, ptr noundef %call.i, ptr noundef nonnull @bfqg_prfill_weight_device, ptr noundef nonnull @blkcg_policy_bfq, i32 noundef 0, i1 noundef zeroext false) #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bfq_io_set_weight(ptr noundef %of, ptr noundef %buf, i32 noundef %nbytes, i64 noundef %off) #0 align 64 {
entry:
  %ctx.i = alloca %struct.blkg_conf_ctx, align 4
  %v.i = alloca i64, align 8
  %endp = alloca ptr, align 4
  %v = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %endp) #13
  %0 = ptrtoint ptr %endp to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %endp, align 4, !annotation !60
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %v) #13
  %call = tail call ptr @strim(ptr noundef %buf) #13
  %call1 = call i64 @simple_strtoull(ptr noundef %call, ptr noundef nonnull %endp, i32 noundef 0) #13
  %1 = ptrtoint ptr %v to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 %call1, ptr %v, align 8
  %2 = ptrtoint ptr %endp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %endp, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp = icmp eq i8 %5, 0
  br i1 %cmp, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %call3 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %call, ptr noundef nonnull @.str.11, ptr noundef nonnull %v)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call3)
  %cmp4 = icmp eq i32 %call3, 1
  br i1 %cmp4, label %lor.lhs.false.if.then_crit_edge, label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %call6 = call ptr @of_css(ptr noundef %of) #13
  %6 = ptrtoint ptr %v to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %v, align 8
  %tobool.not.i.i.i = icmp eq ptr %call6, null
  br i1 %tobool.not.i.i.i, label %if.then.blkcg_to_bfqgd.exit.i_crit_edge, label %cond.true.i.i.i

if.then.blkcg_to_bfqgd.exit.i_crit_edge:          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %blkcg_to_bfqgd.exit.i

cond.true.i.i.i:                                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %8 = load i32, ptr @blkcg_policy_bfq, align 4
  %arrayidx.i.i.i = getelementptr %struct.blkcg, ptr %call6, i32 0, i32 6, i32 %8
  %9 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.i.i.i, align 4
  br label %blkcg_to_bfqgd.exit.i

blkcg_to_bfqgd.exit.i:                            ; preds = %cond.true.i.i.i, %if.then.blkcg_to_bfqgd.exit.i_crit_edge
  %cond.i.i.i = phi ptr [ %10, %cond.true.i.i.i ], [ null, %if.then.blkcg_to_bfqgd.exit.i_crit_edge ]
  %11 = add i64 %7, -1001
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1000, i64 %11)
  %12 = icmp ult i64 %11, -1000
  br i1 %12, label %blkcg_to_bfqgd.exit.i.cleanup_crit_edge, label %if.end.i

blkcg_to_bfqgd.exit.i.cleanup_crit_edge:          ; preds = %blkcg_to_bfqgd.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i:                                         ; preds = %blkcg_to_bfqgd.exit.i
  %lock.i = getelementptr inbounds %struct.blkcg, ptr %call6, i32 0, i32 1
  call void @_raw_spin_lock_irq(ptr noundef %lock.i) #13
  %conv.i = trunc i64 %7 to i32
  %weight.i = getelementptr inbounds %struct.bfq_group_data, ptr %cond.i.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %weight.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv.i, ptr %weight.i, align 4
  %blkg_list.i = getelementptr inbounds %struct.blkcg, ptr %call6, i32 0, i32 5
  %14 = ptrtoint ptr %blkg_list.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %blkg_list.i, align 8
  %tobool.not.i = icmp eq ptr %15, null
  %add.ptr.i = getelementptr i8, ptr %15, i32 -12
  %tobool5.not4446.i = icmp eq ptr %add.ptr.i, null
  %tobool5.not44.i = or i1 %tobool.not.i, %tobool5.not4446.i
  br i1 %tobool5.not44.i, label %if.end.i..loopexit_crit_edge, label %if.end.i.blkg_to_bfqg.exit.i_crit_edge

if.end.i.blkg_to_bfqg.exit.i_crit_edge:           ; preds = %if.end.i
  br label %blkg_to_bfqg.exit.i

if.end.i..loopexit_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %.loopexit

blkg_to_bfqg.exit.i:                              ; preds = %if.end9.i.blkg_to_bfqg.exit.i_crit_edge, %if.end.i.blkg_to_bfqg.exit.i_crit_edge
  %blkg.045.i = phi ptr [ %add.ptr16.i, %if.end9.i.blkg_to_bfqg.exit.i_crit_edge ], [ %add.ptr.i, %if.end.i.blkg_to_bfqg.exit.i_crit_edge ]
  %16 = load i32, ptr @blkcg_policy_bfq, align 4
  %arrayidx.i.i39.i = getelementptr %struct.blkcg_gq, ptr %blkg.045.i, i32 0, i32 9, i32 %16
  %17 = ptrtoint ptr %arrayidx.i.i39.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx.i.i39.i, align 4
  %tobool7.not.i = icmp eq ptr %18, null
  br i1 %tobool7.not.i, label %blkg_to_bfqg.exit.i.if.end9.i_crit_edge, label %if.then8.i

blkg_to_bfqg.exit.i.if.end9.i_crit_edge:          ; preds = %blkg_to_bfqg.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end9.i

if.then8.i:                                       ; preds = %blkg_to_bfqg.exit.i
  %dev_weight1.i.i = getelementptr inbounds %struct.bfq_group, ptr %18, i32 0, i32 3, i32 9
  %19 = ptrtoint ptr %dev_weight1.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %dev_weight1.i.i, align 4
  %new_weight.i.i = getelementptr inbounds %struct.bfq_group, ptr %18, i32 0, i32 3, i32 11
  %20 = ptrtoint ptr %new_weight.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %new_weight.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %conv.i)
  %cmp.not.i.i = icmp eq i32 %21, %conv.i
  br i1 %cmp.not.i.i, label %if.then8.i.if.end9.i_crit_edge, label %if.then.i.i

if.then8.i.if.end9.i_crit_edge:                   ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end9.i

if.then.i.i:                                      ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #15
  %22 = ptrtoint ptr %new_weight.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %conv.i, ptr %new_weight.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !59
  %prio_changed.i.i = getelementptr inbounds %struct.bfq_group, ptr %18, i32 0, i32 3, i32 16
  %23 = ptrtoint ptr %prio_changed.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %prio_changed.i.i, align 8
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then.i.i, %if.then8.i.if.end9.i_crit_edge, %blkg_to_bfqg.exit.i.if.end9.i_crit_edge
  %blkcg_node.i = getelementptr inbounds %struct.blkcg_gq, ptr %blkg.045.i, i32 0, i32 2
  %24 = ptrtoint ptr %blkcg_node.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %blkcg_node.i, align 4
  %tobool12.not.i = icmp eq ptr %25, null
  %add.ptr16.i = getelementptr i8, ptr %25, i32 -12
  %tobool5.not47.i = icmp eq ptr %add.ptr16.i, null
  %tobool5.not.i = or i1 %tobool12.not.i, %tobool5.not47.i
  br i1 %tobool5.not.i, label %if.end9.i..loopexit_crit_edge, label %if.end9.i.blkg_to_bfqg.exit.i_crit_edge

if.end9.i.blkg_to_bfqg.exit.i_crit_edge:          ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %blkg_to_bfqg.exit.i

if.end9.i..loopexit_crit_edge:                    ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %.loopexit

.loopexit:                                        ; preds = %if.end9.i..loopexit_crit_edge, %if.end.i..loopexit_crit_edge
  call void @_raw_spin_unlock_irq(ptr noundef %lock.i) #13
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %ctx.i) #13
  %26 = ptrtoint ptr %ctx.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr inttoptr (i32 -1 to ptr), ptr %ctx.i, align 4, !annotation !60
  %27 = getelementptr inbounds %struct.blkg_conf_ctx, ptr %ctx.i, i32 0, i32 1
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr inttoptr (i32 -1 to ptr), ptr %27, align 4, !annotation !60
  %29 = getelementptr inbounds %struct.blkg_conf_ctx, ptr %ctx.i, i32 0, i32 2
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr inttoptr (i32 -1 to ptr), ptr %29, align 4, !annotation !60
  %call.i = call ptr @of_css(ptr noundef %of) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %v.i) #13
  %31 = ptrtoint ptr %v.i to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 -1, ptr %v.i, align 8, !annotation !60
  %call2.i = call i32 @blkg_conf_prep(ptr noundef %call.i, ptr noundef nonnull @blkcg_policy_bfq, ptr noundef %call, ptr noundef nonnull %ctx.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i16 = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i16, label %if.end.i17, label %if.end.bfq_io_set_device_weight.exit_crit_edge

if.end.bfq_io_set_device_weight.exit_crit_edge:   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %bfq_io_set_device_weight.exit

if.end.i17:                                       ; preds = %if.end
  %32 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %29, align 4
  %call3.i = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %33, ptr noundef nonnull @.str.12, ptr noundef nonnull %v.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call3.i)
  %cmp.i = icmp eq i32 %call3.i, 1
  br i1 %cmp.i, label %if.then4.i, label %if.else.i

if.then4.i:                                       ; preds = %if.end.i17
  %34 = ptrtoint ptr %v.i to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %v.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %35)
  %tobool5.not.i18 = icmp eq i64 %35, 0
  br i1 %tobool5.not.i18, label %if.then4.i.cleanup.sink.split.i_crit_edge, label %if.then4.i.if.end15.i_crit_edge

if.then4.i.if.end15.i_crit_edge:                  ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.i

if.then4.i.cleanup.sink.split.i_crit_edge:        ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split.i

if.else.i:                                        ; preds = %if.end.i17
  %36 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %29, align 4
  %call9.i = call ptr @strim(ptr noundef %37) #13
  %call10.i = call i32 @strcmp(ptr noundef %call9.i, ptr noundef nonnull dereferenceable(8) @.str.13) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %if.then12.i, label %if.else.i.cleanup.sink.split.i_crit_edge

if.else.i.cleanup.sink.split.i_crit_edge:         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split.i

if.then12.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  %38 = ptrtoint ptr %v.i to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 0, ptr %v.i, align 8
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.then12.i, %if.then4.i.if.end15.i_crit_edge
  %39 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %27, align 4
  %tobool.not.i.i.i19 = icmp eq ptr %40, null
  br i1 %tobool.not.i.i.i19, label %if.end15.i.blkg_to_bfqg.exit.i23_crit_edge, label %cond.true.i.i.i21

if.end15.i.blkg_to_bfqg.exit.i23_crit_edge:       ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %blkg_to_bfqg.exit.i23

cond.true.i.i.i21:                                ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #15
  %41 = load i32, ptr @blkcg_policy_bfq, align 4
  %arrayidx.i.i.i20 = getelementptr %struct.blkcg_gq, ptr %40, i32 0, i32 9, i32 %41
  %42 = ptrtoint ptr %arrayidx.i.i.i20 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx.i.i.i20, align 4
  br label %blkg_to_bfqg.exit.i23

blkg_to_bfqg.exit.i23:                            ; preds = %cond.true.i.i.i21, %if.end15.i.blkg_to_bfqg.exit.i23_crit_edge
  %cond.i.i.i22 = phi ptr [ %43, %cond.true.i.i.i21 ], [ null, %if.end15.i.blkg_to_bfqg.exit.i23_crit_edge ]
  %44 = ptrtoint ptr %v.i to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %v.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 1001, i64 %45)
  %cmp19.i = icmp ult i64 %45, 1001
  br i1 %cmp19.i, label %if.then20.i, label %blkg_to_bfqg.exit.i23.cleanup.sink.split.i_crit_edge

blkg_to_bfqg.exit.i23.cleanup.sink.split.i_crit_edge: ; preds = %blkg_to_bfqg.exit.i23
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split.i

if.then20.i:                                      ; preds = %blkg_to_bfqg.exit.i23
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %45)
  %tobool17.not.i = icmp eq i64 %45, 0
  %weight.i24 = getelementptr inbounds %struct.bfq_group, ptr %cond.i.i.i22, i32 0, i32 3, i32 10
  %46 = ptrtoint ptr %weight.i24 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %weight.i24, align 8
  %extract.t19.i.i = trunc i64 %45 to i32
  %spec.select.i.i = select i1 %tobool17.not.i, i32 %47, i32 %extract.t19.i.i
  %dev_weight1.i.i25 = getelementptr inbounds %struct.bfq_group, ptr %cond.i.i.i22, i32 0, i32 3, i32 9
  %48 = ptrtoint ptr %dev_weight1.i.i25 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %extract.t19.i.i, ptr %dev_weight1.i.i25, align 4
  %conv3.i.i = and i32 %spec.select.i.i, 65535
  %new_weight.i.i26 = getelementptr inbounds %struct.bfq_group, ptr %cond.i.i.i22, i32 0, i32 3, i32 11
  %49 = ptrtoint ptr %new_weight.i.i26 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %new_weight.i.i26, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %conv3.i.i, i32 %50)
  %cmp.not.i.i27 = icmp eq i32 %conv3.i.i, %50
  br i1 %cmp.not.i.i27, label %if.then20.i.cleanup.sink.split.i_crit_edge, label %if.then.i.i29

if.then20.i.cleanup.sink.split.i_crit_edge:       ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split.i

if.then.i.i29:                                    ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #15
  %51 = ptrtoint ptr %new_weight.i.i26 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %conv3.i.i, ptr %new_weight.i.i26, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !59
  %prio_changed.i.i28 = getelementptr inbounds %struct.bfq_group, ptr %cond.i.i.i22, i32 0, i32 3, i32 16
  %52 = ptrtoint ptr %prio_changed.i.i28 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 1, ptr %prio_changed.i.i28, align 8
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.then.i.i29, %if.then20.i.cleanup.sink.split.i_crit_edge, %blkg_to_bfqg.exit.i23.cleanup.sink.split.i_crit_edge, %if.else.i.cleanup.sink.split.i_crit_edge, %if.then4.i.cleanup.sink.split.i_crit_edge
  %retval.0.ph.i = phi i32 [ -34, %blkg_to_bfqg.exit.i23.cleanup.sink.split.i_crit_edge ], [ -22, %if.else.i.cleanup.sink.split.i_crit_edge ], [ -34, %if.then4.i.cleanup.sink.split.i_crit_edge ], [ %nbytes, %if.then20.i.cleanup.sink.split.i_crit_edge ], [ %nbytes, %if.then.i.i29 ]
  call void @blkg_conf_finish(ptr noundef nonnull %ctx.i) #13
  br label %bfq_io_set_device_weight.exit

bfq_io_set_device_weight.exit:                    ; preds = %cleanup.sink.split.i, %if.end.bfq_io_set_device_weight.exit_crit_edge
  %retval.0.i30 = phi i32 [ %call2.i, %if.end.bfq_io_set_device_weight.exit_crit_edge ], [ %retval.0.ph.i, %cleanup.sink.split.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %v.i) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %ctx.i) #13
  br label %cleanup

cleanup:                                          ; preds = %bfq_io_set_device_weight.exit, %.loopexit, %blkcg_to_bfqgd.exit.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i30, %bfq_io_set_device_weight.exit ], [ %nbytes, %.loopexit ], [ -34, %blkcg_to_bfqgd.exit.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %v) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %endp) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bfqg_print_rwstat(ptr noundef %sf, ptr nocapture noundef readnone %v) #0 align 64 {
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
  tail call void @blkcg_print_blkgs(ptr noundef %sf, ptr noundef %call.i, ptr noundef nonnull @blkg_prfill_rwstat, ptr noundef nonnull @blkcg_policy_bfq, i32 noundef %9, i1 noundef zeroext true) #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bfqg_print_stat(ptr noundef %sf, ptr nocapture noundef readnone %v) #0 align 64 {
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
  tail call void @blkcg_print_blkgs(ptr noundef %sf, ptr noundef %call.i, ptr noundef nonnull @blkg_prfill_stat, ptr noundef nonnull @blkcg_policy_bfq, i32 noundef %9, i1 noundef zeroext false) #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bfqg_print_stat_sectors(ptr noundef %sf, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.seq_file, ptr %sf, i32 0, i32 11
  %0 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private.i, align 8
  %call.i = tail call ptr @of_css(ptr noundef %1) #13
  tail call void @blkcg_print_blkgs(ptr noundef %sf, ptr noundef %call.i, ptr noundef nonnull @bfqg_prfill_sectors, ptr noundef nonnull @blkcg_policy_bfq, i32 noundef 0, i1 noundef zeroext false) #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bfqg_print_rwstat_recursive(ptr noundef %sf, ptr nocapture noundef readnone %v) #0 align 64 {
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
  tail call void @blkcg_print_blkgs(ptr noundef %sf, ptr noundef %call.i, ptr noundef nonnull @bfqg_prfill_rwstat_recursive, ptr noundef nonnull @blkcg_policy_bfq, i32 noundef %9, i1 noundef zeroext true) #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bfqg_print_stat_recursive(ptr noundef %sf, ptr nocapture noundef readnone %v) #0 align 64 {
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
  tail call void @blkcg_print_blkgs(ptr noundef %sf, ptr noundef %call.i, ptr noundef nonnull @bfqg_prfill_stat_recursive, ptr noundef nonnull @blkcg_policy_bfq, i32 noundef %9, i1 noundef zeroext false) #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bfqg_print_stat_sectors_recursive(ptr noundef %sf, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.seq_file, ptr %sf, i32 0, i32 11
  %0 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private.i, align 8
  %call.i = tail call ptr @of_css(ptr noundef %1) #13
  tail call void @blkcg_print_blkgs(ptr noundef %sf, ptr noundef %call.i, ptr noundef nonnull @bfqg_prfill_sectors_recursive, ptr noundef nonnull @blkcg_policy_bfq, i32 noundef 0, i1 noundef zeroext false) #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bfqg_print_avg_queue_size(ptr noundef %sf, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.seq_file, ptr %sf, i32 0, i32 11
  %0 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private.i, align 8
  %call.i = tail call ptr @of_css(ptr noundef %1) #13
  tail call void @blkcg_print_blkgs(ptr noundef %sf, ptr noundef %call.i, ptr noundef nonnull @bfqg_prfill_avg_queue_size, ptr noundef nonnull @blkcg_policy_bfq, i32 noundef 0, i1 noundef zeroext false) #13
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @percpu_counter_add_batch(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__percpu_counter_sum(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @blkg_lookup_slowpath(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_blkcg() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bic_to_bfqq(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @bic_set_bfqq(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfq_release_process_ref(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernfs_path_from_node(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blkg_rwstat_init(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bfqg_stats_exit(ptr noundef %stats) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @blkg_rwstat_exit(ptr noundef %stats) #13
  %ios = getelementptr inbounds %struct.bfqg_stats, ptr %stats, i32 0, i32 1
  tail call void @blkg_rwstat_exit(ptr noundef %ios) #13
  %merged = getelementptr inbounds %struct.bfqg_stats, ptr %stats, i32 0, i32 2
  tail call void @blkg_rwstat_exit(ptr noundef %merged) #13
  %service_time = getelementptr inbounds %struct.bfqg_stats, ptr %stats, i32 0, i32 3
  tail call void @blkg_rwstat_exit(ptr noundef %service_time) #13
  %wait_time = getelementptr inbounds %struct.bfqg_stats, ptr %stats, i32 0, i32 4
  tail call void @blkg_rwstat_exit(ptr noundef %wait_time) #13
  %queued = getelementptr inbounds %struct.bfqg_stats, ptr %stats, i32 0, i32 5
  tail call void @blkg_rwstat_exit(ptr noundef %queued) #13
  %time = getelementptr inbounds %struct.bfqg_stats, ptr %stats, i32 0, i32 6
  tail call void @percpu_counter_destroy(ptr noundef %time) #13
  %avg_queue_size_sum = getelementptr inbounds %struct.bfqg_stats, ptr %stats, i32 0, i32 7
  tail call void @percpu_counter_destroy(ptr noundef %avg_queue_size_sum) #13
  %avg_queue_size_samples = getelementptr inbounds %struct.bfqg_stats, ptr %stats, i32 0, i32 8
  tail call void @percpu_counter_destroy(ptr noundef %avg_queue_size_samples) #13
  %dequeue = getelementptr inbounds %struct.bfqg_stats, ptr %stats, i32 0, i32 9
  tail call void @percpu_counter_destroy(ptr noundef %dequeue) #13
  %group_wait_time = getelementptr inbounds %struct.bfqg_stats, ptr %stats, i32 0, i32 10
  tail call void @percpu_counter_destroy(ptr noundef %group_wait_time) #13
  %idle_time = getelementptr inbounds %struct.bfqg_stats, ptr %stats, i32 0, i32 11
  tail call void @percpu_counter_destroy(ptr noundef %idle_time) #13
  %empty_time = getelementptr inbounds %struct.bfqg_stats, ptr %stats, i32 0, i32 12
  tail call void @percpu_counter_destroy(ptr noundef %empty_time) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__percpu_counter_init(ptr noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_set(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @blkg_rwstat_exit(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @percpu_counter_destroy(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__bfq_deactivate_entity(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfq_put_async_queues(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bfq_entity_of(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_first(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bfqg_stats_reset(ptr noundef %stats) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %merged = getelementptr inbounds %struct.bfqg_stats, ptr %stats, i32 0, i32 2
  tail call fastcc void @blkg_rwstat_reset(ptr noundef %merged)
  %service_time = getelementptr inbounds %struct.bfqg_stats, ptr %stats, i32 0, i32 3
  tail call fastcc void @blkg_rwstat_reset(ptr noundef %service_time)
  %wait_time = getelementptr inbounds %struct.bfqg_stats, ptr %stats, i32 0, i32 4
  tail call fastcc void @blkg_rwstat_reset(ptr noundef %wait_time)
  %time = getelementptr inbounds %struct.bfqg_stats, ptr %stats, i32 0, i32 6
  tail call void @percpu_counter_set(ptr noundef %time, i64 noundef 0) #13
  %aux_cnt.i = getelementptr inbounds %struct.bfqg_stats, ptr %stats, i32 0, i32 6, i32 1
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %aux_cnt.i, i32 noundef 8) #13
  tail call void @generic_atomic64_set(ptr noundef %aux_cnt.i, i64 noundef 0) #13
  %avg_queue_size_sum = getelementptr inbounds %struct.bfqg_stats, ptr %stats, i32 0, i32 7
  tail call void @percpu_counter_set(ptr noundef %avg_queue_size_sum, i64 noundef 0) #13
  %aux_cnt.i10 = getelementptr inbounds %struct.bfqg_stats, ptr %stats, i32 0, i32 7, i32 1
  %call.i.i.i11 = tail call zeroext i1 @__kasan_check_write(ptr noundef %aux_cnt.i10, i32 noundef 8) #13
  tail call void @generic_atomic64_set(ptr noundef %aux_cnt.i10, i64 noundef 0) #13
  %avg_queue_size_samples = getelementptr inbounds %struct.bfqg_stats, ptr %stats, i32 0, i32 8
  tail call void @percpu_counter_set(ptr noundef %avg_queue_size_samples, i64 noundef 0) #13
  %aux_cnt.i12 = getelementptr inbounds %struct.bfqg_stats, ptr %stats, i32 0, i32 8, i32 1
  %call.i.i.i13 = tail call zeroext i1 @__kasan_check_write(ptr noundef %aux_cnt.i12, i32 noundef 8) #13
  tail call void @generic_atomic64_set(ptr noundef %aux_cnt.i12, i64 noundef 0) #13
  %dequeue = getelementptr inbounds %struct.bfqg_stats, ptr %stats, i32 0, i32 9
  tail call void @percpu_counter_set(ptr noundef %dequeue, i64 noundef 0) #13
  %aux_cnt.i14 = getelementptr inbounds %struct.bfqg_stats, ptr %stats, i32 0, i32 9, i32 1
  %call.i.i.i15 = tail call zeroext i1 @__kasan_check_write(ptr noundef %aux_cnt.i14, i32 noundef 8) #13
  tail call void @generic_atomic64_set(ptr noundef %aux_cnt.i14, i64 noundef 0) #13
  %group_wait_time = getelementptr inbounds %struct.bfqg_stats, ptr %stats, i32 0, i32 10
  tail call void @percpu_counter_set(ptr noundef %group_wait_time, i64 noundef 0) #13
  %aux_cnt.i16 = getelementptr inbounds %struct.bfqg_stats, ptr %stats, i32 0, i32 10, i32 1
  %call.i.i.i17 = tail call zeroext i1 @__kasan_check_write(ptr noundef %aux_cnt.i16, i32 noundef 8) #13
  tail call void @generic_atomic64_set(ptr noundef %aux_cnt.i16, i64 noundef 0) #13
  %idle_time = getelementptr inbounds %struct.bfqg_stats, ptr %stats, i32 0, i32 11
  tail call void @percpu_counter_set(ptr noundef %idle_time, i64 noundef 0) #13
  %aux_cnt.i18 = getelementptr inbounds %struct.bfqg_stats, ptr %stats, i32 0, i32 11, i32 1
  %call.i.i.i19 = tail call zeroext i1 @__kasan_check_write(ptr noundef %aux_cnt.i18, i32 noundef 8) #13
  tail call void @generic_atomic64_set(ptr noundef %aux_cnt.i18, i64 noundef 0) #13
  %empty_time = getelementptr inbounds %struct.bfqg_stats, ptr %stats, i32 0, i32 12
  tail call void @percpu_counter_set(ptr noundef %empty_time, i64 noundef 0) #13
  %aux_cnt.i20 = getelementptr inbounds %struct.bfqg_stats, ptr %stats, i32 0, i32 12, i32 1
  %call.i.i.i21 = tail call zeroext i1 @__kasan_check_write(ptr noundef %aux_cnt.i20, i32 noundef 8) #13
  tail call void @generic_atomic64_set(ptr noundef %aux_cnt.i20, i64 noundef 0) #13
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @blkg_rwstat_add_aux(ptr noundef %to, ptr noundef %from) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %call.i23 = tail call i64 @__percpu_counter_sum(ptr noundef %from) #13
  %0 = tail call i64 @llvm.smax.i64(i64 %call.i23, i64 0) #13
  %arrayidx.1 = getelementptr [5 x %struct.percpu_counter], ptr %from, i32 0, i32 1
  %call.i23.1 = tail call i64 @__percpu_counter_sum(ptr noundef %arrayidx.1) #13
  %1 = tail call i64 @llvm.smax.i64(i64 %call.i23.1, i64 0) #13
  %arrayidx.2 = getelementptr [5 x %struct.percpu_counter], ptr %from, i32 0, i32 2
  %call.i23.2 = tail call i64 @__percpu_counter_sum(ptr noundef %arrayidx.2) #13
  %2 = tail call i64 @llvm.smax.i64(i64 %call.i23.2, i64 0) #13
  %arrayidx.3 = getelementptr [5 x %struct.percpu_counter], ptr %from, i32 0, i32 3
  %call.i23.3 = tail call i64 @__percpu_counter_sum(ptr noundef %arrayidx.3) #13
  %3 = tail call i64 @llvm.smax.i64(i64 %call.i23.3, i64 0) #13
  %arrayidx.4 = getelementptr [5 x %struct.percpu_counter], ptr %from, i32 0, i32 4
  %call.i23.4 = tail call i64 @__percpu_counter_sum(ptr noundef %arrayidx.4) #13
  %4 = tail call i64 @llvm.smax.i64(i64 %call.i23.4, i64 0) #13
  %arrayidx6 = getelementptr %struct.blkg_rwstat, ptr %from, i32 0, i32 1, i32 0
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx6, i32 noundef 8) #13
  %call.i = tail call i64 @generic_atomic64_read(ptr noundef %arrayidx6) #13
  %add = add i64 %call.i, %0
  %arrayidx9 = getelementptr %struct.blkg_rwstat, ptr %to, i32 0, i32 1, i32 0
  %call.i.i22 = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx9, i32 noundef 8) #13
  tail call void @generic_atomic64_add(i64 noundef %add, ptr noundef %arrayidx9) #13
  %arrayidx6.1 = getelementptr %struct.blkg_rwstat, ptr %from, i32 0, i32 1, i32 1
  %call.i.i.1 = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx6.1, i32 noundef 8) #13
  %call.i.1 = tail call i64 @generic_atomic64_read(ptr noundef %arrayidx6.1) #13
  %add.1 = add i64 %call.i.1, %1
  %arrayidx9.1 = getelementptr %struct.blkg_rwstat, ptr %to, i32 0, i32 1, i32 1
  %call.i.i22.1 = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx9.1, i32 noundef 8) #13
  tail call void @generic_atomic64_add(i64 noundef %add.1, ptr noundef %arrayidx9.1) #13
  %arrayidx6.2 = getelementptr %struct.blkg_rwstat, ptr %from, i32 0, i32 1, i32 2
  %call.i.i.2 = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx6.2, i32 noundef 8) #13
  %call.i.2 = tail call i64 @generic_atomic64_read(ptr noundef %arrayidx6.2) #13
  %add.2 = add i64 %call.i.2, %2
  %arrayidx9.2 = getelementptr %struct.blkg_rwstat, ptr %to, i32 0, i32 1, i32 2
  %call.i.i22.2 = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx9.2, i32 noundef 8) #13
  tail call void @generic_atomic64_add(i64 noundef %add.2, ptr noundef %arrayidx9.2) #13
  %arrayidx6.3 = getelementptr %struct.blkg_rwstat, ptr %from, i32 0, i32 1, i32 3
  %call.i.i.3 = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx6.3, i32 noundef 8) #13
  %call.i.3 = tail call i64 @generic_atomic64_read(ptr noundef %arrayidx6.3) #13
  %add.3 = add i64 %call.i.3, %3
  %arrayidx9.3 = getelementptr %struct.blkg_rwstat, ptr %to, i32 0, i32 1, i32 3
  %call.i.i22.3 = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx9.3, i32 noundef 8) #13
  tail call void @generic_atomic64_add(i64 noundef %add.3, ptr noundef %arrayidx9.3) #13
  %arrayidx6.4 = getelementptr %struct.blkg_rwstat, ptr %from, i32 0, i32 1, i32 4
  %call.i.i.4 = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx6.4, i32 noundef 8) #13
  %call.i.4 = tail call i64 @generic_atomic64_read(ptr noundef %arrayidx6.4) #13
  %add.4 = add i64 %call.i.4, %4
  %arrayidx9.4 = getelementptr %struct.blkg_rwstat, ptr %to, i32 0, i32 1, i32 4
  %call.i.i22.4 = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx9.4, i32 noundef 8) #13
  tail call void @generic_atomic64_add(i64 noundef %add.4, ptr noundef %arrayidx9.4) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_add(i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_read(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @blkg_rwstat_reset(ptr noundef %rwstat) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @percpu_counter_set(ptr noundef %rwstat, i64 noundef 0) #13
  %arrayidx1 = getelementptr %struct.blkg_rwstat, ptr %rwstat, i32 0, i32 1, i32 0
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx1, i32 noundef 8) #13
  tail call void @generic_atomic64_set(ptr noundef %arrayidx1, i64 noundef 0) #13
  %arrayidx.1 = getelementptr [5 x %struct.percpu_counter], ptr %rwstat, i32 0, i32 1
  tail call void @percpu_counter_set(ptr noundef %arrayidx.1, i64 noundef 0) #13
  %arrayidx1.1 = getelementptr %struct.blkg_rwstat, ptr %rwstat, i32 0, i32 1, i32 1
  %call.i.i.1 = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx1.1, i32 noundef 8) #13
  tail call void @generic_atomic64_set(ptr noundef %arrayidx1.1, i64 noundef 0) #13
  %arrayidx.2 = getelementptr [5 x %struct.percpu_counter], ptr %rwstat, i32 0, i32 2
  tail call void @percpu_counter_set(ptr noundef %arrayidx.2, i64 noundef 0) #13
  %arrayidx1.2 = getelementptr %struct.blkg_rwstat, ptr %rwstat, i32 0, i32 1, i32 2
  %call.i.i.2 = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx1.2, i32 noundef 8) #13
  tail call void @generic_atomic64_set(ptr noundef %arrayidx1.2, i64 noundef 0) #13
  %arrayidx.3 = getelementptr [5 x %struct.percpu_counter], ptr %rwstat, i32 0, i32 3
  tail call void @percpu_counter_set(ptr noundef %arrayidx.3, i64 noundef 0) #13
  %arrayidx1.3 = getelementptr %struct.blkg_rwstat, ptr %rwstat, i32 0, i32 1, i32 3
  %call.i.i.3 = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx1.3, i32 noundef 8) #13
  tail call void @generic_atomic64_set(ptr noundef %arrayidx1.3, i64 noundef 0) #13
  %arrayidx.4 = getelementptr [5 x %struct.percpu_counter], ptr %rwstat, i32 0, i32 4
  tail call void @percpu_counter_set(ptr noundef %arrayidx.4, i64 noundef 0) #13
  %arrayidx1.4 = getelementptr %struct.blkg_rwstat, ptr %rwstat, i32 0, i32 1, i32 4
  %call.i.i.4 = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx1.4, i32 noundef 8) #13
  tail call void @generic_atomic64_set(ptr noundef %arrayidx1.4, i64 noundef 0) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @percpu_counter_set(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_css(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @blkcg_print_blkgs(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @bfqg_prfill_weight_device(ptr noundef %sf, ptr noundef %pd, i32 noundef %off) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_weight = getelementptr inbounds %struct.bfq_group, ptr %pd, i32 0, i32 3, i32 9
  %0 = ptrtoint ptr %dev_weight to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dev_weight, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %conv = sext i32 %1 to i64
  %call3 = tail call i64 @__blkg_prfill_u64(ptr noundef %sf, ptr noundef %pd, i64 noundef %conv) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i64 [ %call3, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i64 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__blkg_prfill_u64(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strim(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @simple_strtoull(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blkg_conf_prep(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @blkg_conf_finish(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @blkg_prfill_rwstat(ptr noundef, ptr noundef, i32 noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @blkg_prfill_stat(ptr noundef %sf, ptr noundef %pd, i32 noundef %off) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %pd, i32 %off
  %call.i.i = tail call i64 @__percpu_counter_sum(ptr noundef %add.ptr) #13
  %0 = tail call i64 @llvm.smax.i64(i64 %call.i.i, i64 0) #13
  %call1 = tail call i64 @__blkg_prfill_u64(ptr noundef %sf, ptr noundef %pd, i64 noundef %0) #13
  ret i64 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @bfqg_prfill_sectors(ptr noundef %sf, ptr noundef %pd, i32 noundef %off) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pd, align 4
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %entry.blkg_to_bfqg.exit_crit_edge, label %cond.true.i.i

entry.blkg_to_bfqg.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %blkg_to_bfqg.exit

cond.true.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %2 = load i32, ptr @blkcg_policy_bfq, align 4
  %arrayidx.i.i = getelementptr %struct.blkcg_gq, ptr %1, i32 0, i32 9, i32 %2
  %3 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx.i.i, align 4
  br label %blkg_to_bfqg.exit

blkg_to_bfqg.exit:                                ; preds = %cond.true.i.i, %entry.blkg_to_bfqg.exit_crit_edge
  %cond.i.i = phi ptr [ %4, %cond.true.i.i ], [ null, %entry.blkg_to_bfqg.exit_crit_edge ]
  %stats = getelementptr inbounds %struct.bfq_group, ptr %cond.i.i, i32 0, i32 11
  %call.i.i.i = tail call i64 @__percpu_counter_sum(ptr noundef %stats) #13
  %5 = tail call i64 @llvm.smax.i64(i64 %call.i.i.i, i64 0) #13
  %arrayidx.1.i.i = getelementptr %struct.bfq_group, ptr %cond.i.i, i32 0, i32 11, i32 0, i32 0, i32 1
  %call.i.1.i.i = tail call i64 @__percpu_counter_sum(ptr noundef %arrayidx.1.i.i) #13
  %6 = tail call i64 @llvm.smax.i64(i64 %call.i.1.i.i, i64 0) #13
  %arrayidx.2.i.i = getelementptr %struct.bfq_group, ptr %cond.i.i, i32 0, i32 11, i32 0, i32 0, i32 2
  %call.i.2.i.i = tail call i64 @__percpu_counter_sum(ptr noundef %arrayidx.2.i.i) #13
  %arrayidx.3.i.i = getelementptr %struct.bfq_group, ptr %cond.i.i, i32 0, i32 11, i32 0, i32 0, i32 3
  %call.i.3.i.i = tail call i64 @__percpu_counter_sum(ptr noundef %arrayidx.3.i.i) #13
  %arrayidx.4.i.i = getelementptr %struct.bfq_group, ptr %cond.i.i, i32 0, i32 11, i32 0, i32 0, i32 4
  %call.i.4.i.i = tail call i64 @__percpu_counter_sum(ptr noundef %arrayidx.4.i.i) #13
  %add.i = add nuw i64 %6, %5
  %shr = lshr i64 %add.i, 9
  %call2 = tail call i64 @__blkg_prfill_u64(ptr noundef %sf, ptr noundef %pd, i64 noundef %shr) #13
  ret i64 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @bfqg_prfill_rwstat_recursive(ptr noundef %sf, ptr noundef %pd, i32 noundef %off) #0 align 64 {
entry:
  %sum = alloca %struct.blkg_rwstat_sample, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %sum) #13
  %tobool.not.i = icmp eq ptr %pd, null
  %0 = call ptr @memset(ptr %sum, i32 255, i32 40)
  br i1 %tobool.not.i, label %entry.pd_to_blkg.exit_crit_edge, label %cond.true.i

entry.pd_to_blkg.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %pd_to_blkg.exit

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %1 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pd, align 4
  br label %pd_to_blkg.exit

pd_to_blkg.exit:                                  ; preds = %cond.true.i, %entry.pd_to_blkg.exit_crit_edge
  %cond.i = phi ptr [ %2, %cond.true.i ], [ null, %entry.pd_to_blkg.exit_crit_edge ]
  call void @blkg_rwstat_recursive_sum(ptr noundef %cond.i, ptr noundef nonnull @blkcg_policy_bfq, i32 noundef %off, ptr noundef nonnull %sum) #13
  %call1 = call i64 @__blkg_prfill_rwstat(ptr noundef %sf, ptr noundef %pd, ptr noundef nonnull %sum) #13
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %sum) #13
  ret i64 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blkg_rwstat_recursive_sum(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__blkg_prfill_rwstat(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @bfqg_prfill_stat_recursive(ptr noundef %sf, ptr noundef %pd, i32 noundef %off) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i59 = icmp eq ptr %pd, null
  br i1 %tobool.not.i59, label %entry.pd_to_blkg.exit_crit_edge, label %cond.true.i

entry.pd_to_blkg.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %pd_to_blkg.exit

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %0 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pd, align 4
  br label %pd_to_blkg.exit

pd_to_blkg.exit:                                  ; preds = %cond.true.i, %entry.pd_to_blkg.exit_crit_edge
  %cond.i = phi ptr [ %1, %cond.true.i ], [ null, %entry.pd_to_blkg.exit_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %2 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %pd_to_blkg.exit.if.end_crit_edge, label %land.rhs

pd_to_blkg.exit.if.end_crit_edge:                 ; preds = %pd_to_blkg.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.rhs:                                         ; preds = %pd_to_blkg.exit
  %3 = ptrtoint ptr %cond.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cond.i, align 8
  %dep_map = getelementptr inbounds %struct.request_queue, ptr %4, i32 0, i32 14, i32 0, i32 0, i32 4
  %call.i60 = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i60)
  %cmp.not = icmp eq i32 %call.i60, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !50

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 1153, i32 noundef 9, ptr noundef null) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %pd_to_blkg.exit.if.end_crit_edge
  %5 = tail call i32 @llvm.read_register.i32(metadata !36) #13
  %and.i.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %8, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !46
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #13
  %call.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 696, ptr noundef nonnull @.str.5) #13
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %blkcg = getelementptr inbounds %struct.blkcg_gq, ptr %cond.i, i32 0, i32 3
  %9 = ptrtoint ptr %blkcg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %blkcg, align 4
  %call25 = tail call ptr @css_next_descendant_pre(ptr noundef null, ptr noundef %10) #13
  %tobool26.not81 = icmp eq ptr %call25, null
  br i1 %tobool26.not81, label %rcu_read_lock.exit.for.end_crit_edge, label %rcu_read_lock.exit.for.body_crit_edge

rcu_read_lock.exit.for.body_crit_edge:            ; preds = %rcu_read_lock.exit
  br label %for.body

rcu_read_lock.exit.for.end_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %rcu_read_lock.exit.for.body_crit_edge
  %sum.086 = phi i64 [ %sum.2, %for.inc.for.body_crit_edge ], [ 0, %rcu_read_lock.exit.for.body_crit_edge ]
  %pos_css.082 = phi ptr [ %call42, %for.inc.for.body_crit_edge ], [ %call25, %rcu_read_lock.exit.for.body_crit_edge ]
  %11 = ptrtoint ptr %cond.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cond.i, align 8
  %cmp.i = icmp eq ptr %pos_css.082, @blkcg_root
  br i1 %cmp.i, label %if.then.i61, label %if.end.i

if.then.i61:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %root_blkg.i = getelementptr inbounds %struct.request_queue, ptr %12, i32 0, i32 35
  %13 = ptrtoint ptr %root_blkg.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %root_blkg.i, align 8
  br label %__blkg_lookup.exit

if.end.i:                                         ; preds = %for.body
  %blkg_hint.i = getelementptr inbounds %struct.blkcg, ptr %pos_css.082, i32 0, i32 4
  %15 = ptrtoint ptr %blkg_hint.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %blkg_hint.i, align 4
  %call.i62 = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i62)
  %tobool.not.i63 = icmp eq i32 %call.i62, 0
  br i1 %tobool.not.i63, label %land.lhs.true.i64, label %if.end.i.do.end9.i_crit_edge

if.end.i.do.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end9.i

land.lhs.true.i64:                                ; preds = %if.end.i
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i64.do.end9.i_crit_edge, label %land.lhs.true4.i

land.lhs.true.i64.do.end9.i_crit_edge:            ; preds = %land.lhs.true.i64
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end9.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i64
  %.b1.i = load i1, ptr @__blkg_lookup.__warned, align 1
  br i1 %.b1.i, label %land.lhs.true4.i.do.end9.i_crit_edge, label %if.then6.i

land.lhs.true4.i.do.end9.i_crit_edge:             ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end9.i

if.then6.i:                                       ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @__blkg_lookup.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 340, ptr noundef nonnull @.str.3) #13
  br label %do.end9.i

do.end9.i:                                        ; preds = %if.then6.i, %land.lhs.true4.i.do.end9.i_crit_edge, %land.lhs.true.i64.do.end9.i_crit_edge, %if.end.i.do.end9.i_crit_edge
  %tobool11.not.i = icmp eq ptr %16, null
  br i1 %tobool11.not.i, label %do.end9.i.if.end16.i_crit_edge, label %land.lhs.true12.i

do.end9.i.if.end16.i_crit_edge:                   ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end16.i

land.lhs.true12.i:                                ; preds = %do.end9.i
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 8
  %cmp14.i = icmp eq ptr %18, %12
  br i1 %cmp14.i, label %land.lhs.true12.i.if.then31_crit_edge, label %land.lhs.true12.i.if.end16.i_crit_edge

land.lhs.true12.i.if.end16.i_crit_edge:           ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end16.i

land.lhs.true12.i.if.then31_crit_edge:            ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then31

if.end16.i:                                       ; preds = %land.lhs.true12.i.if.end16.i_crit_edge, %do.end9.i.if.end16.i_crit_edge
  %call18.i = tail call ptr @blkg_lookup_slowpath(ptr noundef nonnull %pos_css.082, ptr noundef %12, i1 noundef zeroext false) #13
  br label %__blkg_lookup.exit

__blkg_lookup.exit:                               ; preds = %if.end16.i, %if.then.i61
  %retval.0.i = phi ptr [ %14, %if.then.i61 ], [ %call18.i, %if.end16.i ]
  %tobool30.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool30.not, label %__blkg_lookup.exit.for.inc_crit_edge, label %__blkg_lookup.exit.if.then31_crit_edge

__blkg_lookup.exit.if.then31_crit_edge:           ; preds = %__blkg_lookup.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then31

__blkg_lookup.exit.for.inc_crit_edge:             ; preds = %__blkg_lookup.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then31:                                        ; preds = %__blkg_lookup.exit.if.then31_crit_edge, %land.lhs.true12.i.if.then31_crit_edge
  %retval.0.i80 = phi ptr [ %retval.0.i, %__blkg_lookup.exit.if.then31_crit_edge ], [ %16, %land.lhs.true12.i.if.then31_crit_edge ]
  %online = getelementptr inbounds %struct.blkcg_gq, ptr %retval.0.i80, i32 0, i32 6
  %19 = ptrtoint ptr %online to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %online, align 4, !range !57
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool32.not = icmp eq i8 %20, 0
  br i1 %tobool32.not, label %if.then31.for.inc_crit_edge, label %blkg_to_pd.exit

if.then31.for.inc_crit_edge:                      ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

blkg_to_pd.exit:                                  ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #15
  %21 = load i32, ptr @blkcg_policy_bfq, align 4
  %arrayidx.i = getelementptr %struct.blkcg_gq, ptr %retval.0.i80, i32 0, i32 9, i32 %21
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr = getelementptr i8, ptr %23, i32 %off
  %call.i.i68 = tail call i64 @__percpu_counter_sum(ptr noundef %add.ptr) #13
  %24 = tail call i64 @llvm.smax.i64(i64 %call.i.i68, i64 0) #13
  %aux_cnt = getelementptr inbounds %struct.bfq_stat, ptr %add.ptr, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %aux_cnt, i32 noundef 8) #13
  %call.i58 = tail call i64 @generic_atomic64_read(ptr noundef %aux_cnt) #13
  %add = add i64 %24, %sum.086
  %add38 = add i64 %add, %call.i58
  br label %for.inc

for.inc:                                          ; preds = %blkg_to_pd.exit, %if.then31.for.inc_crit_edge, %__blkg_lookup.exit.for.inc_crit_edge
  %sum.2 = phi i64 [ %sum.086, %__blkg_lookup.exit.for.inc_crit_edge ], [ %add38, %blkg_to_pd.exit ], [ %sum.086, %if.then31.for.inc_crit_edge ]
  %25 = ptrtoint ptr %blkcg to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %blkcg, align 4
  %call42 = tail call ptr @css_next_descendant_pre(ptr noundef nonnull %pos_css.082, ptr noundef %26) #13
  %tobool26.not = icmp eq ptr %call42, null
  br i1 %tobool26.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %rcu_read_lock.exit.for.end_crit_edge
  %sum.0.lcssa = phi i64 [ 0, %rcu_read_lock.exit.for.end_crit_edge ], [ %sum.2, %for.inc.for.end_crit_edge ]
  %call.i69 = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i69, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i72

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true.i72:                                ; preds = %for.end
  %call1.i70 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i70)
  %tobool.not.i71 = icmp eq i32 %call1.i70, 0
  br i1 %tobool.not.i71, label %land.lhs.true.i72.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i74

land.lhs.true.i72.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i72
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true2.i74:                               ; preds = %land.lhs.true.i72
  %.b4.i73 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i73, label %land.lhs.true2.i74.rcu_read_unlock.exit_crit_edge, label %if.then.i75

land.lhs.true2.i74.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i74
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

if.then.i75:                                      ; preds = %land.lhs.true2.i74
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 724, ptr noundef nonnull @.str.7) #13
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i75, %land.lhs.true2.i74.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i72.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !55
  %27 = tail call i32 @llvm.read_register.i32(metadata !36) #13
  %and.i.i.i.i.i76 = and i32 %27, -16384
  %28 = inttoptr i32 %and.i.i.i.i.i76 to ptr
  %preempt_count.i.i.i.i77 = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %preempt_count.i.i.i.i77 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %preempt_count.i.i.i.i77, align 4
  %sub.i.i.i = add i32 %30, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i77, align 4
  tail call void @rcu_read_unlock_strict() #13
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  %call43 = tail call i64 @__blkg_prfill_u64(ptr noundef %sf, ptr noundef %pd, i64 noundef %sum.0.lcssa) #13
  ret i64 %call43
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @css_next_descendant_pre(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @bfqg_prfill_sectors_recursive(ptr noundef %sf, ptr noundef %pd, i32 noundef %off) #0 align 64 {
entry:
  %tmp = alloca %struct.blkg_rwstat_sample, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %tmp) #13
  %0 = getelementptr inbounds [5 x i64], ptr %tmp, i32 0, i32 1
  %1 = call ptr @memset(ptr %tmp, i32 255, i32 40)
  %2 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pd, align 4
  call void @blkg_rwstat_recursive_sum(ptr noundef %3, ptr noundef nonnull @blkcg_policy_bfq, i32 noundef 448, ptr noundef nonnull %tmp) #13
  %4 = ptrtoint ptr %tmp to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %tmp, align 8
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %0, align 8
  %add = add i64 %7, %5
  %shr = lshr i64 %add, 9
  %call = call i64 @__blkg_prfill_u64(ptr noundef %sf, ptr noundef %pd, i64 noundef %shr) #13
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %tmp) #13
  ret i64 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @bfqg_prfill_avg_queue_size(ptr noundef %sf, ptr noundef %pd, i32 noundef %off) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %avg_queue_size_samples = getelementptr inbounds %struct.bfq_group, ptr %pd, i32 0, i32 11, i32 8
  %call.i.i = tail call i64 @__percpu_counter_sum(ptr noundef %avg_queue_size_samples) #13
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %call.i.i)
  %tobool.not = icmp slt i64 %call.i.i, 1
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %avg_queue_size_sum = getelementptr inbounds %struct.bfq_group, ptr %pd, i32 0, i32 11, i32 7
  %call.i.i10 = tail call i64 @__percpu_counter_sum(ptr noundef %avg_queue_size_sum) #13
  %0 = tail call i64 @llvm.smax.i64(i64 %call.i.i10, i64 0) #13
  %call4 = tail call i64 @div64_u64(i64 noundef %0, i64 noundef %call.i.i) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %v.0 = phi i64 [ %call4, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %call5 = tail call i64 @__blkg_prfill_u64(ptr noundef %sf, ptr noundef %pd, i64 noundef %v.0) #13
  ret i64 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_u64(i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #12

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

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
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind readonly }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !12, !14, !15, !16, !18, !19, !21, !22, !24, !26, !28, !30, !32, !34}
!llvm.named.register.sp = !{!36}
!llvm.module.flags = !{!37, !38, !39, !40, !41, !42, !43, !44}
!llvm.ident = !{!45}

!0 = !{ptr @blkcg_policy_bfq, !1, !"blkcg_policy_bfq", i1 false, i1 false}
!1 = !{!"../block/bfq-cgroup.c", i32 1250, i32 21}
!2 = !{ptr @bfq_blkcg_legacy_files, !3, !"bfq_blkcg_legacy_files", i1 false, i1 false}
!3 = !{!"../block/bfq-cgroup.c", i32 1266, i32 15}
!4 = !{ptr @bfq_blkg_files, !5, !"bfq_blkg_files", i1 false, i1 false}
!5 = !{!"../block/bfq-cgroup.c", i32 1392, i32 15}
!6 = distinct !{null, !7, !"__already_done", i1 false, i1 false}
!7 = !{!"../include/linux/blk-cgroup.h", i32 358, i32 2}
!8 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!9 = distinct !{null, !10, !"__warned", i1 false, i1 false}
!10 = !{!"../include/linux/blk-cgroup.h", i32 340, i32 9}
!11 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!12 = distinct !{null, !13, !"__warned", i1 false, i1 false}
!13 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!14 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!16 = distinct !{null, !17, !"__warned", i1 false, i1 false}
!17 = !{!"../include/linux/cgroup.h", i32 494, i32 9}
!18 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!19 = distinct !{null, !20, !"__warned", i1 false, i1 false}
!20 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!21 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @bfq_stat_init.__key, !23, !"__key", i1 false, i1 false}
!23 = !{!"../block/bfq-cgroup.c", i32 23, i32 8}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../block/bfq-cgroup.c", i32 415, i32 2}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../block/bfq-cgroup.c", i32 970, i32 17}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../block/bfq-cgroup.c", i32 990, i32 17}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../block/bfq-cgroup.c", i32 1105, i32 35}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../block/bfq-cgroup.c", i32 1069, i32 23}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../block/bfq-cgroup.c", i32 1074, i32 38}
!36 = !{!"sp"}
!37 = !{i32 1, !"wchar_size", i32 2}
!38 = !{i32 1, !"min_enum_size", i32 4}
!39 = !{i32 8, !"branch-target-enforcement", i32 0}
!40 = !{i32 8, !"sign-return-address", i32 0}
!41 = !{i32 8, !"sign-return-address-all", i32 0}
!42 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!43 = !{i32 7, !"uwtable", i32 1}
!44 = !{i32 7, !"frame-pointer", i32 2}
!45 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!46 = !{i64 2149393856}
!47 = !{!"branch_weights", i32 2000, i32 1}
!48 = !{i64 781397, i64 781458}
!49 = !{i64 784129}
!50 = !{!"branch_weights", i32 1, i32 2000}
!51 = !{i64 784414}
!52 = !{i64 2148466173}
!53 = !{i64 2148380882, i64 2148380914, i64 2148380943, i64 2148380977, i64 2148381008, i64 2148381031}
!54 = !{i64 2148466402}
!55 = !{i64 2149394122}
!56 = !{i64 2148377697, i64 2148377723, i64 2148377752, i64 2148377786, i64 2148377817, i64 2148377840}
!57 = !{i8 0, i8 2}
!58 = !{i64 2148991074, i64 2148991079, i64 2148991092, i64 2148991136, i64 2148991170, i64 2148991191}
!59 = !{i64 2155077656}
!60 = !{!"auto-init"}
