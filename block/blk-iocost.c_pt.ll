; ModuleID = '/llk/IR_all_yes/block/blk-iocost.c_pt.bc'
source_filename = "../block/blk-iocost.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.static_call_key = type { ptr }
%struct.atomic_t = type { i32 }
%struct.trace_event_fields = type { ptr, %union.anon.107 }
%union.anon.107 = type { %struct.anon.108 }
%struct.anon.108 = type { ptr, i32, i32, i32, i32 }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.109, %struct.trace_event, ptr, ptr, %union.anon.110, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.109 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.110 = type { ptr }
%union.anon.111 = type { %struct.bpf_raw_event_map }
%struct.bpf_raw_event_map = type { ptr, ptr, i32, i32, [16 x i8] }
%union.anon.112 = type { %struct.bpf_raw_event_map }
%union.anon.113 = type { %struct.bpf_raw_event_map }
%union.anon.114 = type { %struct.bpf_raw_event_map }
%union.anon.115 = type { %struct.bpf_raw_event_map }
%union.anon.116 = type { %struct.bpf_raw_event_map }
%union.anon.117 = type { %struct.bpf_raw_event_map }
%struct.blkcg_policy = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cftype = type { [64 x i8], i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon.2 }
%union.anon.2 = type { %struct.hlist_node }
%struct.match_token = type { i32, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.rq_qos_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ioc_params = type { [6 x i32], [6 x i64], [6 x i64], i32, i32 }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.ioc_gq = type { %struct.blkg_policy_data, ptr, i32, i32, i32, i32, i32, i64, i64, %struct.atomic64_t, %struct.atomic64_t, i64, i64, i64, %struct.atomic64_t, %struct.list_head, i64, i64, i64, i32, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.wait_queue_head, %struct.hrtimer, i64, ptr, %struct.iocg_stat, %struct.iocg_stat, %struct.iocg_stat, i64, i64, i64, i64, i64, i32, [0 x ptr] }
%struct.blkg_policy_data = type { ptr, i32 }
%struct.atomic64_t = type { i64 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.iocg_stat = type { i64, i64, i64, i64 }
%struct.rq_qos = type { ptr, ptr, i32, ptr, ptr }
%struct.request_queue = type { ptr, ptr, %struct.percpu_ref, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, i32, %struct.spinlock, ptr, %struct.kobject, ptr, %struct.blk_integrity, ptr, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, %struct.timer_list, %struct.work_struct, %struct.atomic_t, ptr, %struct.list_head, [1 x i32], ptr, %struct.list_head, %struct.queue_limits, i32, i32, ptr, ptr, i32, i32, i32, %struct.mutex, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, ptr, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, i32, ptr, %struct.list_head, %struct.bio_set, ptr, ptr, ptr, i8, [5 x i64], ptr, [0 x %struct.srcu_struct] }
%struct.percpu_ref = type { i32, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.blk_integrity = type { ptr, i8, i8, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.queue_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.bio_list = type { ptr, ptr }
%struct.srcu_struct = type { [3 x %struct.srcu_node], [3 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.trace_event_raw_iocost_iocg_state = type { %struct.trace_entry, i32, i32, i64, i64, i64, i64, i64, i64, i32, i32, i64, i64, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.ioc_now = type { i64, i64, i64, i64 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.trace_event_raw_iocg_inuse_update = type { %struct.trace_entry, i32, i32, i64, i32, i32, i64, i64, [0 x i8] }
%struct.trace_event_raw_iocost_ioc_vrate_adj = type { %struct.trace_entry, i32, i64, i64, i32, i32, i32, i32, i32, i32, [0 x i8] }
%struct.ioc = type { %struct.rq_qos, i8, %struct.ioc_params, %struct.ioc_margins, i32, i32, i64, i64, %struct.spinlock, %struct.timer_list, %struct.list_head, ptr, i32, %struct.atomic64_t, i64, i64, %struct.seqcount_spinlock, i64, i64, %struct.atomic64_t, i32, i8, %struct.atomic_t, i64, i64, i64, i64, i64, i32, i8 }
%struct.ioc_margins = type { i64, i64, i64 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.trace_event_raw_iocost_iocg_forgive_debt = type { %struct.trace_entry, i32, i32, i64, i64, i32, i64, i64, i64, i64, [0 x i8] }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, ptr, i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }
%struct.ioc_cgrp = type { %struct.blkcg_policy_data, i32 }
%struct.blkcg_policy_data = type { ptr, i32 }
%struct.cgroup = type { %struct.cgroup_subsys_state, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, %struct.cgroup_file, %struct.cgroup_file, i16, i16, i16, i16, [14 x ptr], ptr, %struct.list_head, [14 x %struct.list_head], ptr, ptr, ptr, %struct.list_head, %struct.cgroup_base_stat, %struct.cgroup_base_stat, %struct.prev_cputime, %struct.list_head, %struct.mutex, %struct.wait_queue_head, %struct.work_struct, %struct.psi_group, %struct.cgroup_bpf, %struct.atomic_t, %struct.cgroup_freezer_state, [0 x i64] }
%struct.cgroup_subsys_state = type { ptr, ptr, %struct.percpu_ref, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i64, %struct.atomic_t, %struct.work_struct, %struct.rcu_work, ptr }
%struct.rcu_work = type { %struct.work_struct, %struct.callback_head, ptr }
%struct.cgroup_file = type { ptr, i32, %struct.timer_list }
%struct.cgroup_base_stat = type { %struct.task_cputime }
%struct.task_cputime = type { i64, i64, i64 }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.psi_group = type { %struct.mutex, ptr, [6 x i64], i64, i64, %struct.delayed_work, [2 x [6 x i64]], [6 x [3 x i32]], ptr, %struct.timer_list, %struct.wait_queue_head, %struct.atomic_t, %struct.mutex, %struct.list_head, [6 x i32], i32, i64, [6 x i64], i64, i64 }
%struct.cgroup_bpf = type { [23 x ptr], [23 x %struct.list_head], [23 x i32], %struct.list_head, ptr, %struct.percpu_ref, %struct.work_struct }
%struct.cgroup_freezer_state = type { i8, i32, i32, i32 }
%struct.blkcg_gq = type { ptr, %struct.list_head, %struct.hlist_node, ptr, ptr, %struct.percpu_ref, i8, ptr, %struct.blkg_iostat_set, [6 x ptr], %struct.spinlock, %struct.bio_list, %struct.work_struct, %struct.atomic_t, %struct.atomic64_t, %struct.atomic64_t, i64, i32, %struct.callback_head }
%struct.blkg_iostat_set = type { %struct.u64_stats_sync, %struct.blkg_iostat, %struct.blkg_iostat }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.blkg_iostat = type { [3 x i64], [3 x i64] }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.blkcg = type { %struct.cgroup_subsys_state, %struct.spinlock, %struct.refcount_struct, %struct.xarray, ptr, %struct.hlist_head, [6 x ptr], %struct.list_head, [129 x i8], %struct.list_head }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.hlist_head = type { ptr }
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.lockdep_map, ptr, ptr, %struct.rb_node, ptr, i32, %union.anon.43, ptr, i64, i16, i16, ptr }
%union.anon.43 = type { %struct.kernfs_elem_attr }
%struct.kernfs_elem_attr = type { ptr, ptr, i64, ptr }
%struct.blkg_conf_ctx = type { ptr, ptr, ptr }
%struct.substring_t = type { ptr, ptr }
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.ioc_missed = type { %struct.local_t, %struct.local_t, i32, i32 }
%struct.local_t = type { %struct.atomic_t }
%struct.ioc_pcpu_stat = type { [2 x %struct.ioc_missed], %struct.local64_t, i64 }
%struct.local64_t = type { %struct.atomic64_t }
%struct.iocg_wait = type { %struct.wait_queue_entry, ptr, i64, i8 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.bio = type { ptr, ptr, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, i32, ptr, ptr, ptr, %struct.bio_issue, i64, ptr, %union.anon.44, i16, i16, %struct.atomic_t, ptr, ptr, [0 x %struct.bio_vec] }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%struct.bio_issue = type { i64 }
%union.anon.44 = type { ptr }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.61, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.31 }
%struct.llist_node = type { ptr }
%union.anon.31 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr, i32, [36 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [72 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr, ptr, ptr, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.uclamp_se = type { i16, [2 x i8] }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [24 x i8] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.33 }
%union.anon.33 = type { %struct.anon.34 }
%struct.anon.34 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.tlbflush_unmap_batch = type {}
%union.anon.61 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.request = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, %union.anon.75, ptr, i64, i64, i64, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, %struct.atomic_t, i32, %union.anon.81, %union.anon.82, %union.anon.83, %union.anon.86, ptr, ptr }
%union.anon.75 = type { %struct.list_head }
%union.anon.81 = type { %struct.hlist_node }
%union.anon.82 = type { %struct.rb_node }
%union.anon.83 = type { %struct.anon.85 }
%struct.anon.85 = type { i32, %struct.list_head, ptr }
%union.anon.86 = type { i64, [8 x i8] }
%struct.iocg_wake_ctx = type { ptr, i32, i64 }
%struct.anon.3 = type { [16 x i8], %struct.lockdep_map }

@__tpstrtab_iocost_iocg_activate = internal constant [21 x i8] c"iocost_iocg_activate\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_iocost_iocg_activate = dso_local global %struct.static_call_key { ptr @__traceiter_iocost_iocg_activate }, align 4
@__tracepoint_iocost_iocg_activate = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_iocost_iocg_activate, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_iocost_iocg_activate, ptr null, ptr @__traceiter_iocost_iocg_activate, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_iocost_iocg_activate = internal constant ptr @__tracepoint_iocost_iocg_activate, section "__tracepoints_ptrs", align 4
@__tpstrtab_iocost_iocg_idle = internal constant [17 x i8] c"iocost_iocg_idle\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_iocost_iocg_idle = dso_local global %struct.static_call_key { ptr @__traceiter_iocost_iocg_idle }, align 4
@__tracepoint_iocost_iocg_idle = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_iocost_iocg_idle, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_iocost_iocg_idle, ptr null, ptr @__traceiter_iocost_iocg_idle, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_iocost_iocg_idle = internal constant ptr @__tracepoint_iocost_iocg_idle, section "__tracepoints_ptrs", align 4
@__tpstrtab_iocost_inuse_shortage = internal constant [22 x i8] c"iocost_inuse_shortage\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_iocost_inuse_shortage = dso_local global %struct.static_call_key { ptr @__traceiter_iocost_inuse_shortage }, align 4
@__tracepoint_iocost_inuse_shortage = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_iocost_inuse_shortage, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_iocost_inuse_shortage, ptr null, ptr @__traceiter_iocost_inuse_shortage, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_iocost_inuse_shortage = internal constant ptr @__tracepoint_iocost_inuse_shortage, section "__tracepoints_ptrs", align 4
@__tpstrtab_iocost_inuse_transfer = internal constant [22 x i8] c"iocost_inuse_transfer\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_iocost_inuse_transfer = dso_local global %struct.static_call_key { ptr @__traceiter_iocost_inuse_transfer }, align 4
@__tracepoint_iocost_inuse_transfer = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_iocost_inuse_transfer, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_iocost_inuse_transfer, ptr null, ptr @__traceiter_iocost_inuse_transfer, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_iocost_inuse_transfer = internal constant ptr @__tracepoint_iocost_inuse_transfer, section "__tracepoints_ptrs", align 4
@__tpstrtab_iocost_inuse_adjust = internal constant [20 x i8] c"iocost_inuse_adjust\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_iocost_inuse_adjust = dso_local global %struct.static_call_key { ptr @__traceiter_iocost_inuse_adjust }, align 4
@__tracepoint_iocost_inuse_adjust = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_iocost_inuse_adjust, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_iocost_inuse_adjust, ptr null, ptr @__traceiter_iocost_inuse_adjust, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_iocost_inuse_adjust = internal constant ptr @__tracepoint_iocost_inuse_adjust, section "__tracepoints_ptrs", align 4
@__tpstrtab_iocost_ioc_vrate_adj = internal constant [21 x i8] c"iocost_ioc_vrate_adj\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_iocost_ioc_vrate_adj = dso_local global %struct.static_call_key { ptr @__traceiter_iocost_ioc_vrate_adj }, align 4
@__tracepoint_iocost_ioc_vrate_adj = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_iocost_ioc_vrate_adj, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_iocost_ioc_vrate_adj, ptr null, ptr @__traceiter_iocost_ioc_vrate_adj, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_iocost_ioc_vrate_adj = internal constant ptr @__tracepoint_iocost_ioc_vrate_adj, section "__tracepoints_ptrs", align 4
@__tpstrtab_iocost_iocg_forgive_debt = internal constant [25 x i8] c"iocost_iocg_forgive_debt\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_iocost_iocg_forgive_debt = dso_local global %struct.static_call_key { ptr @__traceiter_iocost_iocg_forgive_debt }, align 4
@__tracepoint_iocost_iocg_forgive_debt = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_iocost_iocg_forgive_debt, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_iocost_iocg_forgive_debt, ptr null, ptr @__traceiter_iocost_iocg_forgive_debt, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_iocost_iocg_forgive_debt = internal constant ptr @__tracepoint_iocost_iocg_forgive_debt, section "__tracepoints_ptrs", align 4
@str__iocost__trace_system_name = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"iocost\00", [25 x i8] zeroinitializer }, align 32
@trace_event_fields_iocost_iocg_state = internal global { [13 x %struct.trace_event_fields], [72 x i8] } { [13 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.2, %union.anon.107 { %struct.anon.108 { ptr @.str.3, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.107 { %struct.anon.108 { ptr @.str.4, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.107 { %struct.anon.108 { ptr @.str.6, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.107 { %struct.anon.108 { ptr @.str.7, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.107 { %struct.anon.108 { ptr @.str.8, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.107 { %struct.anon.108 { ptr @.str.9, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.107 { %struct.anon.108 { ptr @.str.10, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.107 { %struct.anon.108 { ptr @.str.11, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.12, %union.anon.107 { %struct.anon.108 { ptr @.str.13, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.12, %union.anon.107 { %struct.anon.108 { ptr @.str.14, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.107 { %struct.anon.108 { ptr @.str.15, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.107 { %struct.anon.108 { ptr @.str.16, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [72 x i8] zeroinitializer }, align 32
@event_class_iocost_iocg_state = internal global %struct.trace_event_class { ptr @str__iocost__trace_system_name, ptr @trace_event_raw_event_iocost_iocg_state, ptr @perf_trace_iocost_iocg_state, ptr @trace_event_reg, ptr @trace_event_fields_iocost_iocg_state, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_iocost_iocg_state, i64 24), ptr getelementptr (i8, ptr @event_class_iocost_iocg_state, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_iocost_iocg_state = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_iocost_iocg_state, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_iocost_iocg_state = internal global { [280 x i8], [72 x i8] } { [280 x i8] c"\22[%s:%s] now=%llu:%llu vrate=%llu period=%llu->%llu vtime=%llu weight=%u/%u hweight=%llu/%llu\22, __get_str(devname), __get_str(cgroup), REC->now, REC->vnow, REC->vrate, REC->last_period, REC->cur_period, REC->vtime, REC->inuse, REC->weight, REC->hweight_inuse, REC->hweight_active\00", [72 x i8] zeroinitializer }, align 32
@event_iocost_iocg_activate = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_iocost_iocg_state, %union.anon.109 { ptr @__tracepoint_iocost_iocg_activate }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_iocost_iocg_state }, ptr @print_fmt_iocost_iocg_state, ptr null, %union.anon.110 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_iocost_iocg_activate = internal global ptr @event_iocost_iocg_activate, section "_ftrace_events", align 4
@event_iocost_iocg_idle = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_iocost_iocg_state, %union.anon.109 { ptr @__tracepoint_iocost_iocg_idle }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_iocost_iocg_state }, ptr @print_fmt_iocost_iocg_state, ptr null, %union.anon.110 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_iocost_iocg_idle = internal global ptr @event_iocost_iocg_idle, section "_ftrace_events", align 4
@trace_event_fields_iocg_inuse_update = internal global { [8 x %struct.trace_event_fields], [32 x i8] } { [8 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.2, %union.anon.107 { %struct.anon.108 { ptr @.str.3, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.107 { %struct.anon.108 { ptr @.str.4, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.107 { %struct.anon.108 { ptr @.str.6, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.12, %union.anon.107 { %struct.anon.108 { ptr @.str.18, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.12, %union.anon.107 { %struct.anon.108 { ptr @.str.19, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.107 { %struct.anon.108 { ptr @.str.20, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.107 { %struct.anon.108 { ptr @.str.21, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [32 x i8] zeroinitializer }, align 32
@event_class_iocg_inuse_update = internal global %struct.trace_event_class { ptr @str__iocost__trace_system_name, ptr @trace_event_raw_event_iocg_inuse_update, ptr @perf_trace_iocg_inuse_update, ptr @trace_event_reg, ptr @trace_event_fields_iocg_inuse_update, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_iocg_inuse_update, i64 24), ptr getelementptr (i8, ptr @event_class_iocg_inuse_update, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_iocg_inuse_update = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_iocg_inuse_update, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_iocg_inuse_update = internal global { [181 x i8], [43 x i8] } { [181 x i8] c"\22[%s:%s] now=%llu inuse=%u->%u hw_inuse=%llu->%llu\22, __get_str(devname), __get_str(cgroup), REC->now, REC->old_inuse, REC->new_inuse, REC->old_hweight_inuse, REC->new_hweight_inuse\00", [43 x i8] zeroinitializer }, align 32
@event_iocost_inuse_shortage = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_iocg_inuse_update, %union.anon.109 { ptr @__tracepoint_iocost_inuse_shortage }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_iocg_inuse_update }, ptr @print_fmt_iocg_inuse_update, ptr null, %union.anon.110 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_iocost_inuse_shortage = internal global ptr @event_iocost_inuse_shortage, section "_ftrace_events", align 4
@event_iocost_inuse_transfer = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_iocg_inuse_update, %union.anon.109 { ptr @__tracepoint_iocost_inuse_transfer }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_iocg_inuse_update }, ptr @print_fmt_iocg_inuse_update, ptr null, %union.anon.110 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_iocost_inuse_transfer = internal global ptr @event_iocost_inuse_transfer, section "_ftrace_events", align 4
@event_iocost_inuse_adjust = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_iocg_inuse_update, %union.anon.109 { ptr @__tracepoint_iocost_inuse_adjust }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_iocg_inuse_update }, ptr @print_fmt_iocg_inuse_update, ptr null, %union.anon.110 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_iocost_inuse_adjust = internal global ptr @event_iocost_inuse_adjust, section "_ftrace_events", align 4
@trace_event_fields_iocost_ioc_vrate_adj = internal global { [10 x %struct.trace_event_fields], [48 x i8] } { [10 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.2, %union.anon.107 { %struct.anon.108 { ptr @.str.3, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.107 { %struct.anon.108 { ptr @.str.23, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.107 { %struct.anon.108 { ptr @.str.24, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.25, %union.anon.107 { %struct.anon.108 { ptr @.str.26, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.12, %union.anon.107 { %struct.anon.108 { ptr @.str.27, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.12, %union.anon.107 { %struct.anon.108 { ptr @.str.28, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.12, %union.anon.107 { %struct.anon.108 { ptr @.str.29, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.25, %union.anon.107 { %struct.anon.108 { ptr @.str.30, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.25, %union.anon.107 { %struct.anon.108 { ptr @.str.31, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [48 x i8] zeroinitializer }, align 32
@event_class_iocost_ioc_vrate_adj = internal global %struct.trace_event_class { ptr @str__iocost__trace_system_name, ptr @trace_event_raw_event_iocost_ioc_vrate_adj, ptr @perf_trace_iocost_ioc_vrate_adj, ptr @trace_event_reg, ptr @trace_event_fields_iocost_ioc_vrate_adj, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_iocost_ioc_vrate_adj, i64 24), ptr getelementptr (i8, ptr @event_class_iocost_ioc_vrate_adj, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_iocost_ioc_vrate_adj = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_iocost_ioc_vrate_adj, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_iocost_ioc_vrate_adj = internal global { [256 x i8], [64 x i8] } { [256 x i8] c"\22[%s] vrate=%llu->%llu busy=%d missed_ppm=%u:%u rq_wait_pct=%u lagging=%d shortages=%d\22, __get_str(devname), REC->old_vrate, REC->new_vrate, REC->busy_level, REC->read_missed_ppm, REC->write_missed_ppm, REC->rq_wait_pct, REC->nr_lagging, REC->nr_shortages\00", [64 x i8] zeroinitializer }, align 32
@event_iocost_ioc_vrate_adj = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_iocost_ioc_vrate_adj, %union.anon.109 { ptr @__tracepoint_iocost_ioc_vrate_adj }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_iocost_ioc_vrate_adj }, ptr @print_fmt_iocost_ioc_vrate_adj, ptr null, %union.anon.110 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_iocost_ioc_vrate_adj = internal global ptr @event_iocost_ioc_vrate_adj, section "_ftrace_events", align 4
@trace_event_fields_iocost_iocg_forgive_debt = internal global { [10 x %struct.trace_event_fields], [48 x i8] } { [10 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.2, %union.anon.107 { %struct.anon.108 { ptr @.str.3, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.107 { %struct.anon.108 { ptr @.str.4, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.107 { %struct.anon.108 { ptr @.str.6, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.107 { %struct.anon.108 { ptr @.str.7, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.12, %union.anon.107 { %struct.anon.108 { ptr @.str.33, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.107 { %struct.anon.108 { ptr @.str.34, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.107 { %struct.anon.108 { ptr @.str.35, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.107 { %struct.anon.108 { ptr @.str.36, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.107 { %struct.anon.108 { ptr @.str.37, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [48 x i8] zeroinitializer }, align 32
@event_class_iocost_iocg_forgive_debt = internal global %struct.trace_event_class { ptr @str__iocost__trace_system_name, ptr @trace_event_raw_event_iocost_iocg_forgive_debt, ptr @perf_trace_iocost_iocg_forgive_debt, ptr @trace_event_reg, ptr @trace_event_fields_iocost_iocg_forgive_debt, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_iocost_iocg_forgive_debt, i64 24), ptr getelementptr (i8, ptr @event_class_iocost_iocg_forgive_debt, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_iocost_iocg_forgive_debt = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_iocost_iocg_forgive_debt, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_iocost_iocg_forgive_debt = internal global { [204 x i8], [52 x i8] } { [204 x i8] c"\22[%s:%s] now=%llu:%llu usage=%u debt=%llu->%llu delay=%llu->%llu\22, __get_str(devname), __get_str(cgroup), REC->now, REC->vnow, REC->usage_pct, REC->old_debt, REC->new_debt, REC->old_delay, REC->new_delay\00", [52 x i8] zeroinitializer }, align 32
@event_iocost_iocg_forgive_debt = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_iocost_iocg_forgive_debt, %union.anon.109 { ptr @__tracepoint_iocost_iocg_forgive_debt }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_iocost_iocg_forgive_debt }, ptr @print_fmt_iocost_iocg_forgive_debt, ptr null, %union.anon.110 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_iocost_iocg_forgive_debt = internal global ptr @event_iocost_iocg_forgive_debt, section "_ftrace_events", align 4
@__bpf_trace_tp_map_iocost_iocg_activate = internal global %union.anon.111 { %struct.bpf_raw_event_map { ptr @__tracepoint_iocost_iocg_activate, ptr @__bpf_trace_iocost_iocg_state, i32 6, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_iocost_iocg_idle = internal global %union.anon.112 { %struct.bpf_raw_event_map { ptr @__tracepoint_iocost_iocg_idle, ptr @__bpf_trace_iocost_iocg_state, i32 6, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_iocost_inuse_shortage = internal global %union.anon.113 { %struct.bpf_raw_event_map { ptr @__tracepoint_iocost_inuse_shortage, ptr @__bpf_trace_iocg_inuse_update, i32 7, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_iocost_inuse_transfer = internal global %union.anon.114 { %struct.bpf_raw_event_map { ptr @__tracepoint_iocost_inuse_transfer, ptr @__bpf_trace_iocg_inuse_update, i32 7, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_iocost_inuse_adjust = internal global %union.anon.115 { %struct.bpf_raw_event_map { ptr @__tracepoint_iocost_inuse_adjust, ptr @__bpf_trace_iocg_inuse_update, i32 7, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_iocost_ioc_vrate_adj = internal global %union.anon.116 { %struct.bpf_raw_event_map { ptr @__tracepoint_iocost_ioc_vrate_adj, ptr @__bpf_trace_iocost_ioc_vrate_adj, i32 6, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_iocost_iocg_forgive_debt = internal global %union.anon.117 { %struct.bpf_raw_event_map { ptr @__tracepoint_iocost_iocg_forgive_debt, ptr @__bpf_trace_iocost_iocg_forgive_debt, i32 8, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@blkcg_policy_iocost = internal global { %struct.blkcg_policy, [40 x i8] } { %struct.blkcg_policy { i32 0, ptr @ioc_files, ptr null, ptr @ioc_cpd_alloc, ptr null, ptr @ioc_cpd_free, ptr null, ptr @ioc_pd_alloc, ptr @ioc_pd_init, ptr null, ptr null, ptr @ioc_pd_free, ptr null, ptr @ioc_pd_stat }, [40 x i8] zeroinitializer }, align 32
@__initcall__kmod_blk_iocost__427_3452_ioc_init6 = internal global ptr @ioc_init, section ".initcall6.init", align 4
@__exitcall_ioc_exit = internal global ptr @ioc_exit, section ".exitcall.exit", align 4
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"(null)\00", [25 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"<unknown>\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"__data_loc char[]\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"devname\00", [24 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"cgroup\00", [25 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"u64\00", [28 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"now\00", [28 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vnow\00", [27 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vrate\00", [26 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"last_period\00", [20 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"cur_period\00", [21 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vtime\00", [26 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"u32\00", [28 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"weight\00", [25 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"inuse\00", [26 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"hweight_active\00", [17 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"hweight_inuse\00", [18 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [94 x i8], [34 x i8] } { [94 x i8] c"[%s:%s] now=%llu:%llu vrate=%llu period=%llu->%llu vtime=%llu weight=%u/%u hweight=%llu/%llu\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"old_inuse\00", [22 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"new_inuse\00", [22 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"old_hweight_inuse\00", [46 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"new_hweight_inuse\00", [46 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"[%s:%s] now=%llu inuse=%u->%u hw_inuse=%llu->%llu\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"old_vrate\00", [22 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"new_vrate\00", [22 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"int\00", [28 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"busy_level\00", [21 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"read_missed_ppm\00", [16 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"write_missed_ppm\00", [47 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rq_wait_pct\00", [20 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"nr_lagging\00", [21 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"nr_shortages\00", [19 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [87 x i8], [41 x i8] } { [87 x i8] c"[%s] vrate=%llu->%llu busy=%d missed_ppm=%u:%u rq_wait_pct=%u lagging=%d shortages=%d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"usage_pct\00", [22 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"old_debt\00", [23 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"new_debt\00", [23 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"old_delay\00", [22 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"new_delay\00", [22 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"[%s:%s] now=%llu:%llu usage=%u debt=%llu->%llu delay=%llu->%llu\0A\00", [63 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@ioc_files = internal global { [4 x %struct.cftype], [128 x i8] } { [4 x %struct.cftype] [%struct.cftype { [64 x i8] c"weight\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0, i32 2, i32 0, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ioc_weight_show, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ioc_weight_write, ptr null, %struct.lock_class_key zeroinitializer }, %struct.cftype { [64 x i8] c"cost.qos\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0, i32 1, i32 0, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ioc_qos_show, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ioc_qos_write, ptr null, %struct.lock_class_key zeroinitializer }, %struct.cftype { [64 x i8] c"cost.model\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0, i32 1, i32 0, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ioc_cost_model_show, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ioc_cost_model_write, ptr null, %struct.lock_class_key zeroinitializer }, %struct.cftype zeroinitializer], [128 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"default %u\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%s %u\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"default %u\00", [21 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%u\00", [29 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"default\00", [24 x i8] zeroinitializer }, align 32
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str.44 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"block/blk-iocost.c\00", [45 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [88 x i8], [40 x i8] } { [88 x i8] c"%s enable=%d ctrl=%s rpct=%u.%02u rlat=%u wpct=%u.%02u wlat=%u min=%u.%02u max=%u.%02u\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"user\00", [27 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"auto\00", [27 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c" \09\0A\00", [28 x i8] zeroinitializer }, align 32
@qos_ctrl_tokens = internal constant { [3 x %struct.match_token], [40 x i8] } { [3 x %struct.match_token] [%struct.match_token { i32 0, ptr @.str.69 }, %struct.match_token { i32 1, ptr @.str.70 }, %struct.match_token { i32 2, ptr null }], [40 x i8] zeroinitializer }, align 32
@qos_tokens = internal constant { [7 x %struct.match_token], [40 x i8] } { [7 x %struct.match_token] [%struct.match_token { i32 0, ptr @.str.71 }, %struct.match_token { i32 1, ptr @.str.72 }, %struct.match_token { i32 2, ptr @.str.73 }, %struct.match_token { i32 3, ptr @.str.74 }, %struct.match_token { i32 4, ptr @.str.75 }, %struct.match_token { i32 5, ptr @.str.76 }, %struct.match_token { i32 6, ptr null }], [40 x i8] zeroinitializer }, align 32
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@ioc_rqos_ops = internal global { %struct.rq_qos_ops, [52 x i8] } { %struct.rq_qos_ops { ptr @ioc_rqos_throttle, ptr null, ptr @ioc_rqos_merge, ptr null, ptr null, ptr @ioc_rqos_done, ptr @ioc_rqos_done_bio, ptr null, ptr @ioc_rqos_queue_depth_changed, ptr @ioc_rqos_exit, ptr null }, [52 x i8] zeroinitializer }, align 32
@blk_iocost_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.49 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&ioc->lock\00", [21 x i8] zeroinitializer }, align 32
@blk_iocost_init.__key.50 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.51 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"(&ioc->timer)\00", [18 x i8] zeroinitializer }, align 32
@blk_iocost_init.__key.52 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.53 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&____s->seqcount\00", [47 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@trace_iocg_path_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.54, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@trace_iocg_path = internal global { [1024 x i8], [256 x i8] } zeroinitializer, align 32
@.str.54 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"trace_iocg_path_lock\00", [43 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"include/trace/events/iocost.h\00", [34 x i8] zeroinitializer }, align 32
@trace_iocost_iocg_activate.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.56 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.57 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@ioc_start_period.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.58 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@trace_iocost_inuse_adjust.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@iocg_incur_debt.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@iocg_kick_waitq.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@iocg_pay_debt.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@iocg_pay_debt.__already_done.59 = internal unnamed_addr global i1 false, section ".data.once", align 1
@ioc_timer_fn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@ioc_timer_fn.__already_done.60 = internal unnamed_addr global i1 false, section ".data.once", align 1
@trace_iocost_iocg_idle.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@iocg_build_inner_walk.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@trace_iocost_inuse_shortage.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@transfer_surpluses.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@transfer_surpluses.__already_done.61 = internal unnamed_addr global i1 false, section ".data.once", align 1
@transfer_surpluses.__already_done.62 = internal unnamed_addr global i1 false, section ".data.once", align 1
@transfer_surpluses._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.64, ptr @.str.44, i32 1931, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\014iocg: invalid donation weights in \00", [59 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"transfer_surpluses\00", [45 x i8] zeroinitializer }, align 32
@transfer_surpluses._entry_ptr = internal global ptr @transfer_surpluses._entry, section ".printk_index", align 4
@transfer_surpluses._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.64, ptr @.str.44, i32 1935, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\01c: active=%u donating=%u after=%u\0A\00", [60 x i8] zeroinitializer }, align 32
@transfer_surpluses._entry_ptr.67 = internal global ptr @transfer_surpluses._entry.65, section ".printk_index", align 4
@transfer_surpluses.__already_done.68 = internal unnamed_addr global i1 false, section ".data.once", align 1
@trace_iocost_inuse_transfer.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@vrate_adj_pct = internal constant { [53 x i32], [44 x i8] } { [53 x i32] [i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 16], [44 x i8] zeroinitializer }, align 32
@trace_iocost_ioc_vrate_adj.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@trace_iocost_iocg_forgive_debt.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.69 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"enable=%u\00", [22 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ctrl=%s\00", [24 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rpct=%s\00", [24 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rlat=%u\00", [24 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"wpct=%s\00", [24 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"wlat=%u\00", [24 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"min=%s\00", [25 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"max=%s\00", [25 x i8] zeroinitializer }, align 32
@autop = internal constant { [5 x %struct.ioc_params], [160 x i8] } { [5 x %struct.ioc_params] [%struct.ioc_params zeroinitializer, %struct.ioc_params { [6 x i32] [i32 0, i32 250000, i32 0, i32 250000, i32 10000, i32 100000000], [6 x i64] [i64 174019176, i64 41708, i64 370, i64 178075866, i64 42705, i64 378], [6 x i64] zeroinitializer, i32 0, i32 0 }, %struct.ioc_params { [6 x i32] [i32 0, i32 25000, i32 0, i32 25000, i32 10000, i32 100000000], [6 x i64] [i64 245855193, i64 61575, i64 6946, i64 141365009, i64 33716, i64 26796], [6 x i64] zeroinitializer, i32 0, i32 0 }, %struct.ioc_params { [6 x i32] [i32 0, i32 25000, i32 0, i32 25000, i32 10000, i32 100000000], [6 x i64] [i64 488636629, i64 8932, i64 8518, i64 427891549, i64 28755, i64 21940], [6 x i64] zeroinitializer, i32 500, i32 0 }, %struct.ioc_params { [6 x i32] [i32 0, i32 5000, i32 0, i32 5000, i32 10000, i32 100000000], [6 x i64] [i64 3102524156, i64 724816, i64 778122, i64 1742780862, i64 425702, i64 443193], [6 x i64] zeroinitializer, i32 0, i32 10 }], [160 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [103 x i8], [57 x i8] } { [103 x i8] c"%s ctrl=%s model=linear rbps=%llu rseqiops=%llu rrandiops=%llu wbps=%llu wseqiops=%llu wrandiops=%llu\0A\00", [57 x i8] zeroinitializer }, align 32
@cost_ctrl_tokens = internal constant { [3 x %struct.match_token], [40 x i8] } { [3 x %struct.match_token] [%struct.match_token { i32 0, ptr @.str.70 }, %struct.match_token { i32 1, ptr @.str.79 }, %struct.match_token { i32 2, ptr null }], [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"linear\00", [25 x i8] zeroinitializer }, align 32
@i_lcoef_tokens = internal constant { [7 x %struct.match_token], [40 x i8] } { [7 x %struct.match_token] [%struct.match_token { i32 0, ptr @.str.80 }, %struct.match_token { i32 1, ptr @.str.81 }, %struct.match_token { i32 2, ptr @.str.82 }, %struct.match_token { i32 3, ptr @.str.83 }, %struct.match_token { i32 4, ptr @.str.84 }, %struct.match_token { i32 5, ptr @.str.85 }, %struct.match_token { i32 6, ptr null }], [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"model=%s\00", [23 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rbps=%u\00", [24 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rseqiops=%u\00", [20 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rrandiops=%u\00", [19 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"wbps=%u\00", [24 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"wseqiops=%u\00", [20 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"wrandiops=%u\00", [19 x i8] zeroinitializer }, align 32
@ioc_pd_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.86 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&iocg->waitq\00", [19 x i8] zeroinitializer }, align 32
@ioc_pd_free.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@ioc_pd_free.__already_done.87 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.88 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c" cost.vrate=%u.%02u\00", [44 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c" cost.usage=%llu\00", [47 x i8] zeroinitializer }, align 32
@blkcg_debug_stats = external dso_local local_unnamed_addr global i8, align 1
@.str.90 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c" cost.wait=%llu cost.indebt=%llu cost.indelay=%llu\00", [45 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.91 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.92 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.93 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.94 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.95 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.96 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@___asan_gen_.97 = private unnamed_addr constant [31 x i8] c"str__iocost__trace_system_name\00", align 1
@___asan_gen_.98 = private unnamed_addr constant [32 x i8] c"../include/trace/trace_events.h\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 36, i32 1 }
@___asan_gen_.100 = private unnamed_addr constant [37 x i8] c"trace_event_fields_iocost_iocg_state\00", align 1
@___asan_gen_.103 = private unnamed_addr constant [41 x i8] c"trace_event_type_funcs_iocost_iocg_state\00", align 1
@___asan_gen_.106 = private unnamed_addr constant [28 x i8] c"print_fmt_iocost_iocg_state\00", align 1
@___asan_gen_.109 = private unnamed_addr constant [27 x i8] c"event_iocost_iocg_activate\00", align 1
@___asan_gen_.112 = private unnamed_addr constant [23 x i8] c"event_iocost_iocg_idle\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 69, i32 1 }
@___asan_gen_.115 = private unnamed_addr constant [37 x i8] c"trace_event_fields_iocg_inuse_update\00", align 1
@___asan_gen_.118 = private unnamed_addr constant [41 x i8] c"trace_event_type_funcs_iocg_inuse_update\00", align 1
@___asan_gen_.121 = private unnamed_addr constant [28 x i8] c"print_fmt_iocg_inuse_update\00", align 1
@___asan_gen_.124 = private unnamed_addr constant [28 x i8] c"event_iocost_inuse_shortage\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 112, i32 1 }
@___asan_gen_.127 = private unnamed_addr constant [28 x i8] c"event_iocost_inuse_transfer\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 122, i32 1 }
@___asan_gen_.130 = private unnamed_addr constant [26 x i8] c"event_iocost_inuse_adjust\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 132, i32 1 }
@___asan_gen_.133 = private unnamed_addr constant [40 x i8] c"trace_event_fields_iocost_ioc_vrate_adj\00", align 1
@___asan_gen_.136 = private unnamed_addr constant [44 x i8] c"trace_event_type_funcs_iocost_ioc_vrate_adj\00", align 1
@___asan_gen_.139 = private unnamed_addr constant [31 x i8] c"print_fmt_iocost_ioc_vrate_adj\00", align 1
@___asan_gen_.142 = private unnamed_addr constant [27 x i8] c"event_iocost_ioc_vrate_adj\00", align 1
@___asan_gen_.145 = private unnamed_addr constant [44 x i8] c"trace_event_fields_iocost_iocg_forgive_debt\00", align 1
@___asan_gen_.148 = private unnamed_addr constant [48 x i8] c"trace_event_type_funcs_iocost_iocg_forgive_debt\00", align 1
@___asan_gen_.151 = private unnamed_addr constant [35 x i8] c"print_fmt_iocost_iocg_forgive_debt\00", align 1
@___asan_gen_.154 = private unnamed_addr constant [31 x i8] c"event_iocost_iocg_forgive_debt\00", align 1
@___asan_gen_.157 = private unnamed_addr constant [20 x i8] c"blkcg_policy_iocost\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 3432, i32 28 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 673, i32 10 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 14, i32 1 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 76, i32 1 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 142, i32 1 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 181, i32 1 }
@___asan_gen_.277 = private unnamed_addr constant [10 x i8] c"ioc_files\00", align 1
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 3410, i32 22 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 3040, i32 17 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 3030, i32 18 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 3060, i32 20 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 3060, i32 54 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 3089, i32 25 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 1233, i32 2 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 3121, i32 17 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 3122, i32 50 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 3122, i32 59 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 3189, i32 29 }
@___asan_gen_.310 = private unnamed_addr constant [16 x i8] c"qos_ctrl_tokens\00", align 1
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 3145, i32 28 }
@___asan_gen_.313 = private unnamed_addr constant [11 x i8] c"qos_tokens\00", align 1
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 3151, i32 28 }
@___asan_gen_.316 = private unnamed_addr constant [13 x i8] c"ioc_rqos_ops\00", align 1
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 2823, i32 26 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 2863, i32 2 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 2864, i32 2 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 2870, i32 2 }
@___asan_gen_.337 = private unnamed_addr constant [21 x i8] c"trace_iocg_path_lock\00", align 1
@___asan_gen_.340 = private unnamed_addr constant [16 x i8] c"trace_iocg_path\00", align 1
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 193, i32 13 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 192, i32 8 }
@___asan_gen_.350 = private unnamed_addr constant [33 x i8] c"../include/trace/events/iocost.h\00", align 1
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 62, i32 1 }
@___asan_gen_.353 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 108, i32 2 }
@___asan_gen_.356 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 277, i32 1 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 1931, i32 4 }
@___asan_gen_.367 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 1933, i32 4 }
@___asan_gen_.373 = private unnamed_addr constant [14 x i8] c"vrate_adj_pct\00", align 1
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 649, i32 12 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 3146, i32 17 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 3147, i32 15 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 3152, i32 15 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 3153, i32 15 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 3154, i32 15 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 3155, i32 15 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 3156, i32 14 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 3157, i32 14 }
@___asan_gen_.400 = private unnamed_addr constant [6 x i8] c"autop\00", align 1
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 576, i32 32 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 3294, i32 17 }
@___asan_gen_.406 = private unnamed_addr constant [17 x i8] c"cost_ctrl_tokens\00", align 1
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 3312, i32 28 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 3376, i32 20 }
@___asan_gen_.412 = private unnamed_addr constant [15 x i8] c"i_lcoef_tokens\00", align 1
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 3318, i32 28 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 3314, i32 17 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 3319, i32 19 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 3320, i32 22 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 3321, i32 23 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 3322, i32 19 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 3323, i32 22 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 3324, i32 23 }
@___asan_gen_.436 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 2954, i32 2 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 3010, i32 17 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 3013, i32 16 }
@___asan_gen_.448 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.449 = private constant [22 x i8] c"../block/blk-iocost.c\00", align 1
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 3016, i32 17 }
@llvm.compiler.used = appending global [155 x ptr] [ptr @__bpf_trace_tp_map_iocost_inuse_adjust, ptr @__bpf_trace_tp_map_iocost_inuse_shortage, ptr @__bpf_trace_tp_map_iocost_inuse_transfer, ptr @__bpf_trace_tp_map_iocost_ioc_vrate_adj, ptr @__bpf_trace_tp_map_iocost_iocg_activate, ptr @__bpf_trace_tp_map_iocost_iocg_forgive_debt, ptr @__bpf_trace_tp_map_iocost_iocg_idle, ptr @__event_iocost_inuse_adjust, ptr @__event_iocost_inuse_shortage, ptr @__event_iocost_inuse_transfer, ptr @__event_iocost_ioc_vrate_adj, ptr @__event_iocost_iocg_activate, ptr @__event_iocost_iocg_forgive_debt, ptr @__event_iocost_iocg_idle, ptr @__exitcall_ioc_exit, ptr @__initcall__kmod_blk_iocost__427_3452_ioc_init6, ptr @__tracepoint_iocost_inuse_adjust, ptr @__tracepoint_iocost_inuse_shortage, ptr @__tracepoint_iocost_inuse_transfer, ptr @__tracepoint_iocost_ioc_vrate_adj, ptr @__tracepoint_iocost_iocg_activate, ptr @__tracepoint_iocost_iocg_forgive_debt, ptr @__tracepoint_iocost_iocg_idle, ptr @__tracepoint_ptr_iocost_inuse_adjust, ptr @__tracepoint_ptr_iocost_inuse_shortage, ptr @__tracepoint_ptr_iocost_inuse_transfer, ptr @__tracepoint_ptr_iocost_ioc_vrate_adj, ptr @__tracepoint_ptr_iocost_iocg_activate, ptr @__tracepoint_ptr_iocost_iocg_forgive_debt, ptr @__tracepoint_ptr_iocost_iocg_idle, ptr @event_class_iocg_inuse_update, ptr @event_class_iocost_ioc_vrate_adj, ptr @event_class_iocost_iocg_forgive_debt, ptr @event_class_iocost_iocg_state, ptr @event_iocost_inuse_adjust, ptr @event_iocost_inuse_shortage, ptr @event_iocost_inuse_transfer, ptr @event_iocost_ioc_vrate_adj, ptr @event_iocost_iocg_activate, ptr @event_iocost_iocg_forgive_debt, ptr @event_iocost_iocg_idle, ptr @ioc_exit, ptr @transfer_surpluses._entry, ptr @transfer_surpluses._entry.65, ptr @transfer_surpluses._entry_ptr, ptr @transfer_surpluses._entry_ptr.67, ptr @str__iocost__trace_system_name, ptr @trace_event_fields_iocost_iocg_state, ptr @trace_event_type_funcs_iocost_iocg_state, ptr @print_fmt_iocost_iocg_state, ptr @trace_event_fields_iocg_inuse_update, ptr @trace_event_type_funcs_iocg_inuse_update, ptr @print_fmt_iocg_inuse_update, ptr @trace_event_fields_iocost_ioc_vrate_adj, ptr @trace_event_type_funcs_iocost_ioc_vrate_adj, ptr @print_fmt_iocost_ioc_vrate_adj, ptr @trace_event_fields_iocost_iocg_forgive_debt, ptr @trace_event_type_funcs_iocost_iocg_forgive_debt, ptr @print_fmt_iocost_iocg_forgive_debt, ptr @blkcg_policy_iocost, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @ioc_files, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @qos_ctrl_tokens, ptr @qos_tokens, ptr @ioc_rqos_ops, ptr @blk_iocost_init.__key, ptr @.str.49, ptr @blk_iocost_init.__key.50, ptr @.str.51, ptr @blk_iocost_init.__key.52, ptr @.str.53, ptr @trace_iocg_path_lock, ptr @trace_iocg_path, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.63, ptr @.str.64, ptr @.str.66, ptr @vrate_adj_pct, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @autop, ptr @.str.77, ptr @cost_ctrl_tokens, ptr @.str.78, ptr @i_lcoef_tokens, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @ioc_pd_init.__key, ptr @.str.86, ptr @.str.88, ptr @.str.89, ptr @.str.90], section "llvm.metadata"
@0 = internal global [118 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str__iocost__trace_system_name to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_iocost_iocg_state to i32), i32 312, i32 384, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_iocost_iocg_state to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_iocost_iocg_state to i32), i32 280, i32 352, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_iocost_iocg_activate to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_iocost_iocg_idle to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_iocg_inuse_update to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_iocg_inuse_update to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_iocg_inuse_update to i32), i32 181, i32 224, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_iocost_inuse_shortage to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_iocost_inuse_transfer to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_iocost_inuse_adjust to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_iocost_ioc_vrate_adj to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_iocost_ioc_vrate_adj to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_iocost_ioc_vrate_adj to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_iocost_ioc_vrate_adj to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_iocost_iocg_forgive_debt to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_iocost_iocg_forgive_debt to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_iocost_iocg_forgive_debt to i32), i32 204, i32 256, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_iocost_iocg_forgive_debt to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blkcg_policy_iocost to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 94, i32 128, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 87, i32 128, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ioc_files to i32), i32 608, i32 736, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qos_ctrl_tokens to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qos_tokens to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ioc_rqos_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blk_iocost_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blk_iocost_init.__key.50 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blk_iocost_init.__key.52 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_iocg_path_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_iocg_path to i32), i32 1024, i32 1280, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @transfer_surpluses._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @transfer_surpluses._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vrate_adj_pct to i32), i32 212, i32 256, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @autop to i32), i32 640, i32 800, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 103, i32 160, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cost_ctrl_tokens to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i_lcoef_tokens to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ioc_pd_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_iocost_iocg_activate(ptr nocapture readnone %__data, ptr noundef %iocg, ptr noundef %path, ptr noundef %now, i64 noundef %last_period, i64 noundef %cur_period, i64 noundef %vtime) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_iocost_iocg_activate, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

do.body2:                                         ; preds = %do.body2.do.body2_crit_edge, %entry.do.body2_crit_edge
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body2.do.body2_crit_edge ], [ %0, %entry.do.body2_crit_edge ]
  %1 = ptrtoint ptr %it_func_ptr.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %it_func_ptr.0, align 4
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  tail call void %2(ptr noundef %4, ptr noundef %iocg, ptr noundef %path, ptr noundef %now, i64 noundef %last_period, i64 noundef %cur_period, i64 noundef %vtime) #17
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_iocost_iocg_idle(ptr nocapture readnone %__data, ptr noundef %iocg, ptr noundef %path, ptr noundef %now, i64 noundef %last_period, i64 noundef %cur_period, i64 noundef %vtime) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_iocost_iocg_idle, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

do.body2:                                         ; preds = %do.body2.do.body2_crit_edge, %entry.do.body2_crit_edge
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body2.do.body2_crit_edge ], [ %0, %entry.do.body2_crit_edge ]
  %1 = ptrtoint ptr %it_func_ptr.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %it_func_ptr.0, align 4
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  tail call void %2(ptr noundef %4, ptr noundef %iocg, ptr noundef %path, ptr noundef %now, i64 noundef %last_period, i64 noundef %cur_period, i64 noundef %vtime) #17
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_iocost_inuse_shortage(ptr nocapture readnone %__data, ptr noundef %iocg, ptr noundef %path, ptr noundef %now, i32 noundef %old_inuse, i32 noundef %new_inuse, i64 noundef %old_hw_inuse, i64 noundef %new_hw_inuse) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_iocost_inuse_shortage, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

do.body2:                                         ; preds = %do.body2.do.body2_crit_edge, %entry.do.body2_crit_edge
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body2.do.body2_crit_edge ], [ %0, %entry.do.body2_crit_edge ]
  %1 = ptrtoint ptr %it_func_ptr.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %it_func_ptr.0, align 4
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  tail call void %2(ptr noundef %4, ptr noundef %iocg, ptr noundef %path, ptr noundef %now, i32 noundef %old_inuse, i32 noundef %new_inuse, i64 noundef %old_hw_inuse, i64 noundef %new_hw_inuse) #17
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_iocost_inuse_transfer(ptr nocapture readnone %__data, ptr noundef %iocg, ptr noundef %path, ptr noundef %now, i32 noundef %old_inuse, i32 noundef %new_inuse, i64 noundef %old_hw_inuse, i64 noundef %new_hw_inuse) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_iocost_inuse_transfer, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

do.body2:                                         ; preds = %do.body2.do.body2_crit_edge, %entry.do.body2_crit_edge
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body2.do.body2_crit_edge ], [ %0, %entry.do.body2_crit_edge ]
  %1 = ptrtoint ptr %it_func_ptr.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %it_func_ptr.0, align 4
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  tail call void %2(ptr noundef %4, ptr noundef %iocg, ptr noundef %path, ptr noundef %now, i32 noundef %old_inuse, i32 noundef %new_inuse, i64 noundef %old_hw_inuse, i64 noundef %new_hw_inuse) #17
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_iocost_inuse_adjust(ptr nocapture readnone %__data, ptr noundef %iocg, ptr noundef %path, ptr noundef %now, i32 noundef %old_inuse, i32 noundef %new_inuse, i64 noundef %old_hw_inuse, i64 noundef %new_hw_inuse) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_iocost_inuse_adjust, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

do.body2:                                         ; preds = %do.body2.do.body2_crit_edge, %entry.do.body2_crit_edge
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body2.do.body2_crit_edge ], [ %0, %entry.do.body2_crit_edge ]
  %1 = ptrtoint ptr %it_func_ptr.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %it_func_ptr.0, align 4
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  tail call void %2(ptr noundef %4, ptr noundef %iocg, ptr noundef %path, ptr noundef %now, i32 noundef %old_inuse, i32 noundef %new_inuse, i64 noundef %old_hw_inuse, i64 noundef %new_hw_inuse) #17
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_iocost_ioc_vrate_adj(ptr nocapture readnone %__data, ptr noundef %ioc, i64 noundef %new_vrate, ptr noundef %missed_ppm, i32 noundef %rq_wait_pct, i32 noundef %nr_lagging, i32 noundef %nr_shortages) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_iocost_ioc_vrate_adj, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

do.body2:                                         ; preds = %do.body2.do.body2_crit_edge, %entry.do.body2_crit_edge
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body2.do.body2_crit_edge ], [ %0, %entry.do.body2_crit_edge ]
  %1 = ptrtoint ptr %it_func_ptr.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %it_func_ptr.0, align 4
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  tail call void %2(ptr noundef %4, ptr noundef %ioc, i64 noundef %new_vrate, ptr noundef %missed_ppm, i32 noundef %rq_wait_pct, i32 noundef %nr_lagging, i32 noundef %nr_shortages) #17
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_iocost_iocg_forgive_debt(ptr nocapture readnone %__data, ptr noundef %iocg, ptr noundef %path, ptr noundef %now, i32 noundef %usage_pct, i64 noundef %old_debt, i64 noundef %new_debt, i64 noundef %old_delay, i64 noundef %new_delay) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_iocost_iocg_forgive_debt, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

do.body2:                                         ; preds = %do.body2.do.body2_crit_edge, %entry.do.body2_crit_edge
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body2.do.body2_crit_edge ], [ %0, %entry.do.body2_crit_edge ]
  %1 = ptrtoint ptr %it_func_ptr.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %it_func_ptr.0, align 4
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  tail call void %2(ptr noundef %4, ptr noundef %iocg, ptr noundef %path, ptr noundef %now, i32 noundef %usage_pct, i64 noundef %old_debt, i64 noundef %new_debt, i64 noundef %old_delay, i64 noundef %new_delay) #17
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_iocost_iocg_state(ptr noundef %__data, ptr nocapture noundef readonly %iocg, ptr noundef readonly %path, ptr nocapture noundef readonly %now, i64 noundef %last_period, i64 noundef %cur_period, i64 noundef %vtime) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #17
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !285

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !286

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #17
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %ioc.i = getelementptr inbounds %struct.ioc_gq, ptr %iocg, i32 0, i32 1
  %3 = ptrtoint ptr %ioc.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ioc.i, align 8
  %q.i.i = getelementptr inbounds %struct.rq_qos, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %q.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %q.i.i, align 4
  %queue_flags.i.i.i = getelementptr inbounds %struct.request_queue, ptr %6, i32 0, i32 11
  %7 = ptrtoint ptr %queue_flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %queue_flags.i.i.i, align 4
  %9 = and i32 %8, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i.i.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i.i.i, label %if.end.cond.true.i_crit_edge, label %ioc_name.exit.i

if.end.cond.true.i_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.true.i

ioc_name.exit.i:                                  ; preds = %if.end
  %parent.i.i.i = getelementptr inbounds %struct.request_queue, ptr %6, i32 0, i32 16, i32 2
  %10 = ptrtoint ptr %parent.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %parent.i.i.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %tobool.not.i68 = icmp eq ptr %13, null
  br i1 %tobool.not.i68, label %ioc_name.exit.i.trace_event_get_offsets_iocost_iocg_state.exit_crit_edge, label %ioc_name.exit.i.cond.true.i_crit_edge

ioc_name.exit.i.cond.true.i_crit_edge:            ; preds = %ioc_name.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.true.i

ioc_name.exit.i.trace_event_get_offsets_iocost_iocg_state.exit_crit_edge: ; preds = %ioc_name.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %trace_event_get_offsets_iocost_iocg_state.exit

cond.true.i:                                      ; preds = %ioc_name.exit.i.cond.true.i_crit_edge, %if.end.cond.true.i_crit_edge
  %14 = ptrtoint ptr %queue_flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %queue_flags.i.i.i, align 4
  %16 = and i32 %15, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i.i3.i = icmp eq i32 %16, 0
  br i1 %tobool.not.i.i3.i, label %cond.true.i.trace_event_get_offsets_iocost_iocg_state.exit_crit_edge, label %if.then.i.i5.i

cond.true.i.trace_event_get_offsets_iocost_iocg_state.exit_crit_edge: ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %trace_event_get_offsets_iocost_iocg_state.exit

if.then.i.i5.i:                                   ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #19
  %parent.i.i4.i = getelementptr inbounds %struct.request_queue, ptr %6, i32 0, i32 16, i32 2
  %17 = ptrtoint ptr %parent.i.i4.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %parent.i.i4.i, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  br label %trace_event_get_offsets_iocost_iocg_state.exit

trace_event_get_offsets_iocost_iocg_state.exit:   ; preds = %if.then.i.i5.i, %cond.true.i.trace_event_get_offsets_iocost_iocg_state.exit_crit_edge, %ioc_name.exit.i.trace_event_get_offsets_iocost_iocg_state.exit_crit_edge
  %cond.i = phi ptr [ @.str, %ioc_name.exit.i.trace_event_get_offsets_iocost_iocg_state.exit_crit_edge ], [ %20, %if.then.i.i5.i ], [ @.str.1, %cond.true.i.trace_event_get_offsets_iocost_iocg_state.exit_crit_edge ]
  %call4.i = tail call i32 @strlen(ptr noundef %cond.i) #20
  %tobool8.not.i = icmp eq ptr %path, null
  %spec.select.i = select i1 %tobool8.not.i, ptr @.str, ptr %path
  %call13.i = tail call i32 @strlen(ptr noundef nonnull %spec.select.i) #20
  %add14.i = add i32 %call13.i, 1
  %add20.i = add i32 %call4.i, 89
  %add = add i32 %add20.i, %add14.i
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef %add) #17
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %trace_event_get_offsets_iocost_iocg_state.exit.cleanup_crit_edge, label %if.end5

trace_event_get_offsets_iocost_iocg_state.exit.cleanup_crit_edge: ; preds = %trace_event_get_offsets_iocost_iocg_state.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end5:                                          ; preds = %trace_event_get_offsets_iocost_iocg_state.exit
  %shl17.i = shl i32 %add14.i, 16
  %or19.i = or i32 %shl17.i, %add20.i
  %add.i = shl i32 %call4.i, 16
  %or.i = add i32 %add.i, 65624
  %__data_loc_devname = getelementptr inbounds %struct.trace_event_raw_iocost_iocg_state, ptr %call3, i32 0, i32 1
  %21 = ptrtoint ptr %__data_loc_devname to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %or.i, ptr %__data_loc_devname, align 8
  %__data_loc_cgroup = getelementptr inbounds %struct.trace_event_raw_iocost_iocg_state, ptr %call3, i32 0, i32 2
  %22 = ptrtoint ptr %__data_loc_cgroup to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %or19.i, ptr %__data_loc_cgroup, align 4
  %add.ptr = getelementptr i8, ptr %call3, i32 88
  %23 = ptrtoint ptr %ioc.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ioc.i, align 8
  %q.i = getelementptr inbounds %struct.rq_qos, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %q.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %q.i, align 4
  %queue_flags.i.i = getelementptr inbounds %struct.request_queue, ptr %26, i32 0, i32 11
  %27 = ptrtoint ptr %queue_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %queue_flags.i.i, align 4
  %29 = and i32 %28, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not.i.i = icmp eq i32 %29, 0
  br i1 %tobool.not.i.i, label %if.end5.cond.true_crit_edge, label %ioc_name.exit

if.end5.cond.true_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.true

ioc_name.exit:                                    ; preds = %if.end5
  %parent.i.i = getelementptr inbounds %struct.request_queue, ptr %26, i32 0, i32 16, i32 2
  %30 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %parent.i.i, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 4
  %tobool8.not = icmp eq ptr %33, null
  br i1 %tobool8.not, label %ioc_name.exit.cond.end_crit_edge, label %ioc_name.exit.cond.true_crit_edge

ioc_name.exit.cond.true_crit_edge:                ; preds = %ioc_name.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.true

ioc_name.exit.cond.end_crit_edge:                 ; preds = %ioc_name.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.end

cond.true:                                        ; preds = %ioc_name.exit.cond.true_crit_edge, %if.end5.cond.true_crit_edge
  %34 = ptrtoint ptr %queue_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %queue_flags.i.i, align 4
  %36 = and i32 %35, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool.not.i.i71 = icmp eq i32 %36, 0
  br i1 %tobool.not.i.i71, label %cond.true.cond.end_crit_edge, label %if.then.i.i73

cond.true.cond.end_crit_edge:                     ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.end

if.then.i.i73:                                    ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #19
  %parent.i.i72 = getelementptr inbounds %struct.request_queue, ptr %26, i32 0, i32 16, i32 2
  %37 = ptrtoint ptr %parent.i.i72 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %parent.i.i72, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %38, align 4
  br label %cond.end

cond.end:                                         ; preds = %if.then.i.i73, %cond.true.cond.end_crit_edge, %ioc_name.exit.cond.end_crit_edge
  %cond = phi ptr [ @.str, %ioc_name.exit.cond.end_crit_edge ], [ %40, %if.then.i.i73 ], [ @.str.1, %cond.true.cond.end_crit_edge ]
  %call11 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef %cond) #21
  %41 = ptrtoint ptr %__data_loc_cgroup to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %__data_loc_cgroup, align 4
  %and13 = and i32 %42, 65535
  %add.ptr14 = getelementptr i8, ptr %call3, i32 %and13
  %call20 = call ptr @strcpy(ptr noundef %add.ptr14, ptr noundef nonnull %spec.select.i) #21
  %now21 = getelementptr inbounds %struct.ioc_now, ptr %now, i32 0, i32 1
  %43 = ptrtoint ptr %now21 to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %now21, align 8
  %now22 = getelementptr inbounds %struct.trace_event_raw_iocost_iocg_state, ptr %call3, i32 0, i32 3
  %45 = ptrtoint ptr %now22 to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %44, ptr %now22, align 8
  %vnow = getelementptr inbounds %struct.ioc_now, ptr %now, i32 0, i32 2
  %46 = ptrtoint ptr %vnow to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %vnow, align 8
  %vnow23 = getelementptr inbounds %struct.trace_event_raw_iocost_iocg_state, ptr %call3, i32 0, i32 4
  %48 = ptrtoint ptr %vnow23 to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 %47, ptr %vnow23, align 8
  %vrate = getelementptr inbounds %struct.ioc_now, ptr %now, i32 0, i32 3
  %49 = ptrtoint ptr %vrate to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %vrate, align 8
  %vrate24 = getelementptr inbounds %struct.trace_event_raw_iocost_iocg_state, ptr %call3, i32 0, i32 5
  %51 = ptrtoint ptr %vrate24 to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 %50, ptr %vrate24, align 8
  %last_period25 = getelementptr inbounds %struct.trace_event_raw_iocost_iocg_state, ptr %call3, i32 0, i32 6
  %52 = ptrtoint ptr %last_period25 to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 %last_period, ptr %last_period25, align 8
  %cur_period26 = getelementptr inbounds %struct.trace_event_raw_iocost_iocg_state, ptr %call3, i32 0, i32 7
  %53 = ptrtoint ptr %cur_period26 to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 %cur_period, ptr %cur_period26, align 8
  %vtime27 = getelementptr inbounds %struct.trace_event_raw_iocost_iocg_state, ptr %call3, i32 0, i32 8
  %54 = ptrtoint ptr %vtime27 to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 %vtime, ptr %vtime27, align 8
  %weight = getelementptr inbounds %struct.ioc_gq, ptr %iocg, i32 0, i32 3
  %55 = ptrtoint ptr %weight to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %weight, align 8
  %weight28 = getelementptr inbounds %struct.trace_event_raw_iocost_iocg_state, ptr %call3, i32 0, i32 9
  %57 = ptrtoint ptr %weight28 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %weight28, align 8
  %inuse = getelementptr inbounds %struct.ioc_gq, ptr %iocg, i32 0, i32 5
  %58 = ptrtoint ptr %inuse to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %inuse, align 8
  %inuse29 = getelementptr inbounds %struct.trace_event_raw_iocost_iocg_state, ptr %call3, i32 0, i32 10
  %60 = ptrtoint ptr %inuse29 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %inuse29, align 4
  %hweight_active = getelementptr inbounds %struct.ioc_gq, ptr %iocg, i32 0, i32 20
  %61 = ptrtoint ptr %hweight_active to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %hweight_active, align 4
  %conv = zext i32 %62 to i64
  %hweight_active30 = getelementptr inbounds %struct.trace_event_raw_iocost_iocg_state, ptr %call3, i32 0, i32 11
  %63 = ptrtoint ptr %hweight_active30 to i32
  call void @__asan_store8_noabort(i32 %63)
  store i64 %conv, ptr %hweight_active30, align 8
  %hweight_inuse = getelementptr inbounds %struct.ioc_gq, ptr %iocg, i32 0, i32 21
  %64 = ptrtoint ptr %hweight_inuse to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %hweight_inuse, align 8
  %conv31 = zext i32 %65 to i64
  %hweight_inuse32 = getelementptr inbounds %struct.trace_event_raw_iocost_iocg_state, ptr %call3, i32 0, i32 12
  %66 = ptrtoint ptr %hweight_inuse32 to i32
  call void @__asan_store8_noabort(i32 %66)
  store i64 %conv31, ptr %hweight_inuse32, align 8
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #17
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %trace_event_get_offsets_iocost_iocg_state.exit.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_iocost_iocg_state(ptr noundef %__data, ptr nocapture noundef readonly %iocg, ptr noundef readonly %path, ptr nocapture noundef readonly %now, i64 noundef %last_period, i64 noundef %cur_period, i64 noundef %vtime) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #17
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !287
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #17
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !287
  %ioc.i = getelementptr inbounds %struct.ioc_gq, ptr %iocg, i32 0, i32 1
  %2 = ptrtoint ptr %ioc.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ioc.i, align 8
  %q.i.i = getelementptr inbounds %struct.rq_qos, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %q.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %q.i.i, align 4
  %queue_flags.i.i.i = getelementptr inbounds %struct.request_queue, ptr %5, i32 0, i32 11
  %6 = ptrtoint ptr %queue_flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %queue_flags.i.i.i, align 4
  %8 = and i32 %7, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i.i.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i.i.i, label %entry.cond.true.i_crit_edge, label %ioc_name.exit.i

entry.cond.true.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.true.i

ioc_name.exit.i:                                  ; preds = %entry
  %parent.i.i.i = getelementptr inbounds %struct.request_queue, ptr %5, i32 0, i32 16, i32 2
  %9 = ptrtoint ptr %parent.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %parent.i.i.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %ioc_name.exit.i.trace_event_get_offsets_iocost_iocg_state.exit_crit_edge, label %ioc_name.exit.i.cond.true.i_crit_edge

ioc_name.exit.i.cond.true.i_crit_edge:            ; preds = %ioc_name.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.true.i

ioc_name.exit.i.trace_event_get_offsets_iocost_iocg_state.exit_crit_edge: ; preds = %ioc_name.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %trace_event_get_offsets_iocost_iocg_state.exit

cond.true.i:                                      ; preds = %ioc_name.exit.i.cond.true.i_crit_edge, %entry.cond.true.i_crit_edge
  %13 = ptrtoint ptr %queue_flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %queue_flags.i.i.i, align 4
  %15 = and i32 %14, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i.i3.i = icmp eq i32 %15, 0
  br i1 %tobool.not.i.i3.i, label %cond.true.i.trace_event_get_offsets_iocost_iocg_state.exit_crit_edge, label %if.then.i.i5.i

cond.true.i.trace_event_get_offsets_iocost_iocg_state.exit_crit_edge: ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %trace_event_get_offsets_iocost_iocg_state.exit

if.then.i.i5.i:                                   ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #19
  %parent.i.i4.i = getelementptr inbounds %struct.request_queue, ptr %5, i32 0, i32 16, i32 2
  %16 = ptrtoint ptr %parent.i.i4.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %parent.i.i4.i, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  br label %trace_event_get_offsets_iocost_iocg_state.exit

trace_event_get_offsets_iocost_iocg_state.exit:   ; preds = %if.then.i.i5.i, %cond.true.i.trace_event_get_offsets_iocost_iocg_state.exit_crit_edge, %ioc_name.exit.i.trace_event_get_offsets_iocost_iocg_state.exit_crit_edge
  %cond.i = phi ptr [ @.str, %ioc_name.exit.i.trace_event_get_offsets_iocost_iocg_state.exit_crit_edge ], [ %19, %if.then.i.i5.i ], [ @.str.1, %cond.true.i.trace_event_get_offsets_iocost_iocg_state.exit_crit_edge ]
  %call4.i = tail call i32 @strlen(ptr noundef %cond.i) #20
  %add.i = shl i32 %call4.i, 16
  %shl.i = add i32 %add.i, 65536
  %or.i = or i32 %shl.i, 88
  %tobool8.not.i = icmp eq ptr %path, null
  %spec.select.i = select i1 %tobool8.not.i, ptr @.str, ptr %path
  %call13.i = tail call i32 @strlen(ptr noundef nonnull %spec.select.i) #20
  %add14.i = add i32 %call13.i, 1
  %add16.i = add i32 %call4.i, 89
  %shl17.i = shl i32 %add14.i, 16
  %or19.i = or i32 %shl17.i, %add16.i
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %20 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %perf_events, align 4
  %22 = ptrtoint ptr %21 to i32
  %23 = tail call i32 @llvm.read_register.i32(metadata !275) #17
  %and.i = and i32 %23, -16384
  %24 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %26
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx, align 4
  %add = add i32 %28, %22
  %29 = inttoptr i32 %add to ptr
  %prog_array.i = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 11
  %30 = ptrtoint ptr %prog_array.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile ptr, ptr %prog_array.i, align 4
  %tobool.i.not = icmp eq ptr %31, null
  br i1 %tobool.i.not, label %land.lhs.true7, label %trace_event_get_offsets_iocost_iocg_state.exit.if.end_crit_edge

trace_event_get_offsets_iocost_iocg_state.exit.if.end_crit_edge: ; preds = %trace_event_get_offsets_iocost_iocg_state.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

land.lhs.true7:                                   ; preds = %trace_event_get_offsets_iocost_iocg_state.exit
  %32 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile ptr, ptr %29, align 4
  %tobool.not.i92.not = icmp eq ptr %33, null
  br i1 %tobool.not.i92.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %trace_event_get_offsets_iocost_iocg_state.exit.if.end_crit_edge
  %add20.i = add i32 %call4.i, 100
  %add12 = add i32 %add20.i, %add14.i
  %and = and i32 %add12, -8
  %sub = add i32 %and, -4
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef %sub, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #17
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %34 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %__regs, align 4
  %36 = call ptr @llvm.returnaddress(i32 0) #17
  %37 = ptrtoint ptr %36 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %35, i32 0, i32 15
  %38 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %arrayidx.i, align 4
  %39 = call ptr @llvm.frameaddress.p0(i32 0) #17
  %40 = ptrtoint ptr %39 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %35, i32 0, i32 11
  %41 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %arrayidx2.i, align 4
  %42 = call i32 @llvm.read_register.i32(metadata !275) #17
  %arrayidx4.i = getelementptr [18 x i32], ptr %35, i32 0, i32 13
  %43 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %35, i32 0, i32 16
  %44 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 19, ptr %arrayidx6.i, align 4
  %__data_loc_devname = getelementptr inbounds %struct.trace_event_raw_iocost_iocg_state, ptr %call13, i32 0, i32 1
  %45 = ptrtoint ptr %__data_loc_devname to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %or.i, ptr %__data_loc_devname, align 8
  %__data_loc_cgroup = getelementptr inbounds %struct.trace_event_raw_iocost_iocg_state, ptr %call13, i32 0, i32 2
  %46 = ptrtoint ptr %__data_loc_cgroup to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %or19.i, ptr %__data_loc_cgroup, align 4
  %add.ptr = getelementptr i8, ptr %call13, i32 88
  %47 = ptrtoint ptr %ioc.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ioc.i, align 8
  %q.i = getelementptr inbounds %struct.rq_qos, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %q.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %q.i, align 4
  %queue_flags.i.i = getelementptr inbounds %struct.request_queue, ptr %50, i32 0, i32 11
  %51 = ptrtoint ptr %queue_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %queue_flags.i.i, align 4
  %53 = and i32 %52, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool.not.i.i = icmp eq i32 %53, 0
  br i1 %tobool.not.i.i, label %if.end16.cond.true_crit_edge, label %ioc_name.exit

if.end16.cond.true_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.true

ioc_name.exit:                                    ; preds = %if.end16
  %parent.i.i = getelementptr inbounds %struct.request_queue, ptr %50, i32 0, i32 16, i32 2
  %54 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %parent.i.i, align 4
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %55, align 4
  %tobool20.not = icmp eq ptr %57, null
  br i1 %tobool20.not, label %ioc_name.exit.cond.end_crit_edge, label %ioc_name.exit.cond.true_crit_edge

ioc_name.exit.cond.true_crit_edge:                ; preds = %ioc_name.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.true

ioc_name.exit.cond.end_crit_edge:                 ; preds = %ioc_name.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.end

cond.true:                                        ; preds = %ioc_name.exit.cond.true_crit_edge, %if.end16.cond.true_crit_edge
  %58 = ptrtoint ptr %queue_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile i32, ptr %queue_flags.i.i, align 4
  %60 = and i32 %59, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool.not.i.i95 = icmp eq i32 %60, 0
  br i1 %tobool.not.i.i95, label %cond.true.cond.end_crit_edge, label %if.then.i.i97

cond.true.cond.end_crit_edge:                     ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.end

if.then.i.i97:                                    ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #19
  %parent.i.i96 = getelementptr inbounds %struct.request_queue, ptr %50, i32 0, i32 16, i32 2
  %61 = ptrtoint ptr %parent.i.i96 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %parent.i.i96, align 4
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %62, align 4
  br label %cond.end

cond.end:                                         ; preds = %if.then.i.i97, %cond.true.cond.end_crit_edge, %ioc_name.exit.cond.end_crit_edge
  %cond = phi ptr [ @.str, %ioc_name.exit.cond.end_crit_edge ], [ %64, %if.then.i.i97 ], [ @.str.1, %cond.true.cond.end_crit_edge ]
  %call23 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef %cond) #21
  %65 = ptrtoint ptr %__data_loc_cgroup to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %__data_loc_cgroup, align 4
  %and25 = and i32 %66, 65535
  %add.ptr26 = getelementptr i8, ptr %call13, i32 %and25
  %call32 = call ptr @strcpy(ptr noundef %add.ptr26, ptr noundef nonnull %spec.select.i) #21
  %now33 = getelementptr inbounds %struct.ioc_now, ptr %now, i32 0, i32 1
  %67 = ptrtoint ptr %now33 to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %now33, align 8
  %now34 = getelementptr inbounds %struct.trace_event_raw_iocost_iocg_state, ptr %call13, i32 0, i32 3
  %69 = ptrtoint ptr %now34 to i32
  call void @__asan_store8_noabort(i32 %69)
  store i64 %68, ptr %now34, align 8
  %vnow = getelementptr inbounds %struct.ioc_now, ptr %now, i32 0, i32 2
  %70 = ptrtoint ptr %vnow to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %vnow, align 8
  %vnow35 = getelementptr inbounds %struct.trace_event_raw_iocost_iocg_state, ptr %call13, i32 0, i32 4
  %72 = ptrtoint ptr %vnow35 to i32
  call void @__asan_store8_noabort(i32 %72)
  store i64 %71, ptr %vnow35, align 8
  %vrate = getelementptr inbounds %struct.ioc_now, ptr %now, i32 0, i32 3
  %73 = ptrtoint ptr %vrate to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %vrate, align 8
  %vrate36 = getelementptr inbounds %struct.trace_event_raw_iocost_iocg_state, ptr %call13, i32 0, i32 5
  %75 = ptrtoint ptr %vrate36 to i32
  call void @__asan_store8_noabort(i32 %75)
  store i64 %74, ptr %vrate36, align 8
  %last_period37 = getelementptr inbounds %struct.trace_event_raw_iocost_iocg_state, ptr %call13, i32 0, i32 6
  %76 = ptrtoint ptr %last_period37 to i32
  call void @__asan_store8_noabort(i32 %76)
  store i64 %last_period, ptr %last_period37, align 8
  %cur_period38 = getelementptr inbounds %struct.trace_event_raw_iocost_iocg_state, ptr %call13, i32 0, i32 7
  %77 = ptrtoint ptr %cur_period38 to i32
  call void @__asan_store8_noabort(i32 %77)
  store i64 %cur_period, ptr %cur_period38, align 8
  %vtime39 = getelementptr inbounds %struct.trace_event_raw_iocost_iocg_state, ptr %call13, i32 0, i32 8
  %78 = ptrtoint ptr %vtime39 to i32
  call void @__asan_store8_noabort(i32 %78)
  store i64 %vtime, ptr %vtime39, align 8
  %weight = getelementptr inbounds %struct.ioc_gq, ptr %iocg, i32 0, i32 3
  %79 = ptrtoint ptr %weight to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %weight, align 8
  %weight40 = getelementptr inbounds %struct.trace_event_raw_iocost_iocg_state, ptr %call13, i32 0, i32 9
  %81 = ptrtoint ptr %weight40 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %80, ptr %weight40, align 8
  %inuse = getelementptr inbounds %struct.ioc_gq, ptr %iocg, i32 0, i32 5
  %82 = ptrtoint ptr %inuse to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %inuse, align 8
  %inuse41 = getelementptr inbounds %struct.trace_event_raw_iocost_iocg_state, ptr %call13, i32 0, i32 10
  %84 = ptrtoint ptr %inuse41 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %83, ptr %inuse41, align 4
  %hweight_active = getelementptr inbounds %struct.ioc_gq, ptr %iocg, i32 0, i32 20
  %85 = ptrtoint ptr %hweight_active to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %hweight_active, align 4
  %conv = zext i32 %86 to i64
  %hweight_active42 = getelementptr inbounds %struct.trace_event_raw_iocost_iocg_state, ptr %call13, i32 0, i32 11
  %87 = ptrtoint ptr %hweight_active42 to i32
  call void @__asan_store8_noabort(i32 %87)
  store i64 %conv, ptr %hweight_active42, align 8
  %hweight_inuse = getelementptr inbounds %struct.ioc_gq, ptr %iocg, i32 0, i32 21
  %88 = ptrtoint ptr %hweight_inuse to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %hweight_inuse, align 8
  %conv43 = zext i32 %89 to i64
  %hweight_inuse44 = getelementptr inbounds %struct.trace_event_raw_iocost_iocg_state, ptr %call13, i32 0, i32 12
  %90 = ptrtoint ptr %hweight_inuse44 to i32
  call void @__asan_store8_noabort(i32 %90)
  store i64 %conv43, ptr %hweight_inuse44, align 8
  %91 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %rctx, align 4
  %93 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef %sub, i32 noundef %92, ptr noundef %__data, i64 noundef 1, ptr noundef %94, ptr noundef %29, ptr noundef null) #17
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_reg(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_raw_init(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_iocg_inuse_update(ptr noundef %__data, ptr nocapture noundef readonly %iocg, ptr noundef readonly %path, ptr nocapture noundef readonly %now, i32 noundef %old_inuse, i32 noundef %new_inuse, i64 noundef %old_hw_inuse, i64 noundef %new_hw_inuse) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #17
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !285

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !286

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #17
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %ioc.i = getelementptr inbounds %struct.ioc_gq, ptr %iocg, i32 0, i32 1
  %3 = ptrtoint ptr %ioc.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ioc.i, align 8
  %q.i.i = getelementptr inbounds %struct.rq_qos, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %q.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %q.i.i, align 4
  %queue_flags.i.i.i = getelementptr inbounds %struct.request_queue, ptr %6, i32 0, i32 11
  %7 = ptrtoint ptr %queue_flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %queue_flags.i.i.i, align 4
  %9 = and i32 %8, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i.i.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i.i.i, label %if.end.cond.true.i_crit_edge, label %ioc_name.exit.i

if.end.cond.true.i_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.true.i

ioc_name.exit.i:                                  ; preds = %if.end
  %parent.i.i.i = getelementptr inbounds %struct.request_queue, ptr %6, i32 0, i32 16, i32 2
  %10 = ptrtoint ptr %parent.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %parent.i.i.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %tobool.not.i50 = icmp eq ptr %13, null
  br i1 %tobool.not.i50, label %ioc_name.exit.i.trace_event_get_offsets_iocg_inuse_update.exit_crit_edge, label %ioc_name.exit.i.cond.true.i_crit_edge

ioc_name.exit.i.cond.true.i_crit_edge:            ; preds = %ioc_name.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.true.i

ioc_name.exit.i.trace_event_get_offsets_iocg_inuse_update.exit_crit_edge: ; preds = %ioc_name.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %trace_event_get_offsets_iocg_inuse_update.exit

cond.true.i:                                      ; preds = %ioc_name.exit.i.cond.true.i_crit_edge, %if.end.cond.true.i_crit_edge
  %14 = ptrtoint ptr %queue_flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %queue_flags.i.i.i, align 4
  %16 = and i32 %15, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i.i3.i = icmp eq i32 %16, 0
  br i1 %tobool.not.i.i3.i, label %cond.true.i.trace_event_get_offsets_iocg_inuse_update.exit_crit_edge, label %if.then.i.i5.i

cond.true.i.trace_event_get_offsets_iocg_inuse_update.exit_crit_edge: ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %trace_event_get_offsets_iocg_inuse_update.exit

if.then.i.i5.i:                                   ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #19
  %parent.i.i4.i = getelementptr inbounds %struct.request_queue, ptr %6, i32 0, i32 16, i32 2
  %17 = ptrtoint ptr %parent.i.i4.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %parent.i.i4.i, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  br label %trace_event_get_offsets_iocg_inuse_update.exit

trace_event_get_offsets_iocg_inuse_update.exit:   ; preds = %if.then.i.i5.i, %cond.true.i.trace_event_get_offsets_iocg_inuse_update.exit_crit_edge, %ioc_name.exit.i.trace_event_get_offsets_iocg_inuse_update.exit_crit_edge
  %cond.i = phi ptr [ @.str, %ioc_name.exit.i.trace_event_get_offsets_iocg_inuse_update.exit_crit_edge ], [ %20, %if.then.i.i5.i ], [ @.str.1, %cond.true.i.trace_event_get_offsets_iocg_inuse_update.exit_crit_edge ]
  %call4.i = tail call i32 @strlen(ptr noundef %cond.i) #20
  %tobool8.not.i = icmp eq ptr %path, null
  %spec.select.i = select i1 %tobool8.not.i, ptr @.str, ptr %path
  %call13.i = tail call i32 @strlen(ptr noundef nonnull %spec.select.i) #20
  %add14.i = add i32 %call13.i, 1
  %add20.i = add i32 %call4.i, 49
  %add = add i32 %add20.i, %add14.i
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef %add) #17
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %trace_event_get_offsets_iocg_inuse_update.exit.cleanup_crit_edge, label %if.end5

trace_event_get_offsets_iocg_inuse_update.exit.cleanup_crit_edge: ; preds = %trace_event_get_offsets_iocg_inuse_update.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end5:                                          ; preds = %trace_event_get_offsets_iocg_inuse_update.exit
  %shl17.i = shl i32 %add14.i, 16
  %or19.i = or i32 %shl17.i, %add20.i
  %add.i = shl i32 %call4.i, 16
  %or.i = add i32 %add.i, 65584
  %__data_loc_devname = getelementptr inbounds %struct.trace_event_raw_iocg_inuse_update, ptr %call3, i32 0, i32 1
  %21 = ptrtoint ptr %__data_loc_devname to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %or.i, ptr %__data_loc_devname, align 8
  %__data_loc_cgroup = getelementptr inbounds %struct.trace_event_raw_iocg_inuse_update, ptr %call3, i32 0, i32 2
  %22 = ptrtoint ptr %__data_loc_cgroup to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %or19.i, ptr %__data_loc_cgroup, align 4
  %add.ptr = getelementptr i8, ptr %call3, i32 48
  %23 = ptrtoint ptr %ioc.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ioc.i, align 8
  %q.i = getelementptr inbounds %struct.rq_qos, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %q.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %q.i, align 4
  %queue_flags.i.i = getelementptr inbounds %struct.request_queue, ptr %26, i32 0, i32 11
  %27 = ptrtoint ptr %queue_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %queue_flags.i.i, align 4
  %29 = and i32 %28, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not.i.i = icmp eq i32 %29, 0
  br i1 %tobool.not.i.i, label %if.end5.cond.true_crit_edge, label %ioc_name.exit

if.end5.cond.true_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.true

ioc_name.exit:                                    ; preds = %if.end5
  %parent.i.i = getelementptr inbounds %struct.request_queue, ptr %26, i32 0, i32 16, i32 2
  %30 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %parent.i.i, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 4
  %tobool8.not = icmp eq ptr %33, null
  br i1 %tobool8.not, label %ioc_name.exit.cond.end_crit_edge, label %ioc_name.exit.cond.true_crit_edge

ioc_name.exit.cond.true_crit_edge:                ; preds = %ioc_name.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.true

ioc_name.exit.cond.end_crit_edge:                 ; preds = %ioc_name.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.end

cond.true:                                        ; preds = %ioc_name.exit.cond.true_crit_edge, %if.end5.cond.true_crit_edge
  %34 = ptrtoint ptr %queue_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %queue_flags.i.i, align 4
  %36 = and i32 %35, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool.not.i.i53 = icmp eq i32 %36, 0
  br i1 %tobool.not.i.i53, label %cond.true.cond.end_crit_edge, label %if.then.i.i55

cond.true.cond.end_crit_edge:                     ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.end

if.then.i.i55:                                    ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #19
  %parent.i.i54 = getelementptr inbounds %struct.request_queue, ptr %26, i32 0, i32 16, i32 2
  %37 = ptrtoint ptr %parent.i.i54 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %parent.i.i54, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %38, align 4
  br label %cond.end

cond.end:                                         ; preds = %if.then.i.i55, %cond.true.cond.end_crit_edge, %ioc_name.exit.cond.end_crit_edge
  %cond = phi ptr [ @.str, %ioc_name.exit.cond.end_crit_edge ], [ %40, %if.then.i.i55 ], [ @.str.1, %cond.true.cond.end_crit_edge ]
  %call11 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef %cond) #21
  %41 = ptrtoint ptr %__data_loc_cgroup to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %__data_loc_cgroup, align 4
  %and13 = and i32 %42, 65535
  %add.ptr14 = getelementptr i8, ptr %call3, i32 %and13
  %call20 = call ptr @strcpy(ptr noundef %add.ptr14, ptr noundef nonnull %spec.select.i) #21
  %now21 = getelementptr inbounds %struct.ioc_now, ptr %now, i32 0, i32 1
  %43 = ptrtoint ptr %now21 to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %now21, align 8
  %now22 = getelementptr inbounds %struct.trace_event_raw_iocg_inuse_update, ptr %call3, i32 0, i32 3
  %45 = ptrtoint ptr %now22 to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %44, ptr %now22, align 8
  %old_inuse23 = getelementptr inbounds %struct.trace_event_raw_iocg_inuse_update, ptr %call3, i32 0, i32 4
  %46 = ptrtoint ptr %old_inuse23 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %old_inuse, ptr %old_inuse23, align 8
  %new_inuse24 = getelementptr inbounds %struct.trace_event_raw_iocg_inuse_update, ptr %call3, i32 0, i32 5
  %47 = ptrtoint ptr %new_inuse24 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %new_inuse, ptr %new_inuse24, align 4
  %old_hweight_inuse = getelementptr inbounds %struct.trace_event_raw_iocg_inuse_update, ptr %call3, i32 0, i32 6
  %48 = ptrtoint ptr %old_hweight_inuse to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 %old_hw_inuse, ptr %old_hweight_inuse, align 8
  %new_hweight_inuse = getelementptr inbounds %struct.trace_event_raw_iocg_inuse_update, ptr %call3, i32 0, i32 7
  %49 = ptrtoint ptr %new_hweight_inuse to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 %new_hw_inuse, ptr %new_hweight_inuse, align 8
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #17
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %trace_event_get_offsets_iocg_inuse_update.exit.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_iocg_inuse_update(ptr noundef %__data, ptr nocapture noundef readonly %iocg, ptr noundef readonly %path, ptr nocapture noundef readonly %now, i32 noundef %old_inuse, i32 noundef %new_inuse, i64 noundef %old_hw_inuse, i64 noundef %new_hw_inuse) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #17
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !287
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #17
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !287
  %ioc.i = getelementptr inbounds %struct.ioc_gq, ptr %iocg, i32 0, i32 1
  %2 = ptrtoint ptr %ioc.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ioc.i, align 8
  %q.i.i = getelementptr inbounds %struct.rq_qos, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %q.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %q.i.i, align 4
  %queue_flags.i.i.i = getelementptr inbounds %struct.request_queue, ptr %5, i32 0, i32 11
  %6 = ptrtoint ptr %queue_flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %queue_flags.i.i.i, align 4
  %8 = and i32 %7, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i.i.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i.i.i, label %entry.cond.true.i_crit_edge, label %ioc_name.exit.i

entry.cond.true.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.true.i

ioc_name.exit.i:                                  ; preds = %entry
  %parent.i.i.i = getelementptr inbounds %struct.request_queue, ptr %5, i32 0, i32 16, i32 2
  %9 = ptrtoint ptr %parent.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %parent.i.i.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %ioc_name.exit.i.trace_event_get_offsets_iocg_inuse_update.exit_crit_edge, label %ioc_name.exit.i.cond.true.i_crit_edge

ioc_name.exit.i.cond.true.i_crit_edge:            ; preds = %ioc_name.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.true.i

ioc_name.exit.i.trace_event_get_offsets_iocg_inuse_update.exit_crit_edge: ; preds = %ioc_name.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %trace_event_get_offsets_iocg_inuse_update.exit

cond.true.i:                                      ; preds = %ioc_name.exit.i.cond.true.i_crit_edge, %entry.cond.true.i_crit_edge
  %13 = ptrtoint ptr %queue_flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %queue_flags.i.i.i, align 4
  %15 = and i32 %14, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i.i3.i = icmp eq i32 %15, 0
  br i1 %tobool.not.i.i3.i, label %cond.true.i.trace_event_get_offsets_iocg_inuse_update.exit_crit_edge, label %if.then.i.i5.i

cond.true.i.trace_event_get_offsets_iocg_inuse_update.exit_crit_edge: ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %trace_event_get_offsets_iocg_inuse_update.exit

if.then.i.i5.i:                                   ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #19
  %parent.i.i4.i = getelementptr inbounds %struct.request_queue, ptr %5, i32 0, i32 16, i32 2
  %16 = ptrtoint ptr %parent.i.i4.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %parent.i.i4.i, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  br label %trace_event_get_offsets_iocg_inuse_update.exit

trace_event_get_offsets_iocg_inuse_update.exit:   ; preds = %if.then.i.i5.i, %cond.true.i.trace_event_get_offsets_iocg_inuse_update.exit_crit_edge, %ioc_name.exit.i.trace_event_get_offsets_iocg_inuse_update.exit_crit_edge
  %cond.i = phi ptr [ @.str, %ioc_name.exit.i.trace_event_get_offsets_iocg_inuse_update.exit_crit_edge ], [ %19, %if.then.i.i5.i ], [ @.str.1, %cond.true.i.trace_event_get_offsets_iocg_inuse_update.exit_crit_edge ]
  %call4.i = tail call i32 @strlen(ptr noundef %cond.i) #20
  %add.i = shl i32 %call4.i, 16
  %shl.i = add i32 %add.i, 65536
  %or.i = or i32 %shl.i, 48
  %tobool8.not.i = icmp eq ptr %path, null
  %spec.select.i = select i1 %tobool8.not.i, ptr @.str, ptr %path
  %call13.i = tail call i32 @strlen(ptr noundef nonnull %spec.select.i) #20
  %add14.i = add i32 %call13.i, 1
  %add16.i = add i32 %call4.i, 49
  %shl17.i = shl i32 %add14.i, 16
  %or19.i = or i32 %shl17.i, %add16.i
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %20 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %perf_events, align 4
  %22 = ptrtoint ptr %21 to i32
  %23 = tail call i32 @llvm.read_register.i32(metadata !275) #17
  %and.i = and i32 %23, -16384
  %24 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %26
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx, align 4
  %add = add i32 %28, %22
  %29 = inttoptr i32 %add to ptr
  %prog_array.i = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 11
  %30 = ptrtoint ptr %prog_array.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile ptr, ptr %prog_array.i, align 4
  %tobool.i.not = icmp eq ptr %31, null
  br i1 %tobool.i.not, label %land.lhs.true7, label %trace_event_get_offsets_iocg_inuse_update.exit.if.end_crit_edge

trace_event_get_offsets_iocg_inuse_update.exit.if.end_crit_edge: ; preds = %trace_event_get_offsets_iocg_inuse_update.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

land.lhs.true7:                                   ; preds = %trace_event_get_offsets_iocg_inuse_update.exit
  %32 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile ptr, ptr %29, align 4
  %tobool.not.i74.not = icmp eq ptr %33, null
  br i1 %tobool.not.i74.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %trace_event_get_offsets_iocg_inuse_update.exit.if.end_crit_edge
  %add20.i = add i32 %call4.i, 60
  %add12 = add i32 %add20.i, %add14.i
  %and = and i32 %add12, -8
  %sub = add i32 %and, -4
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef %sub, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #17
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %34 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %__regs, align 4
  %36 = call ptr @llvm.returnaddress(i32 0) #17
  %37 = ptrtoint ptr %36 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %35, i32 0, i32 15
  %38 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %arrayidx.i, align 4
  %39 = call ptr @llvm.frameaddress.p0(i32 0) #17
  %40 = ptrtoint ptr %39 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %35, i32 0, i32 11
  %41 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %arrayidx2.i, align 4
  %42 = call i32 @llvm.read_register.i32(metadata !275) #17
  %arrayidx4.i = getelementptr [18 x i32], ptr %35, i32 0, i32 13
  %43 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %35, i32 0, i32 16
  %44 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 19, ptr %arrayidx6.i, align 4
  %__data_loc_devname = getelementptr inbounds %struct.trace_event_raw_iocg_inuse_update, ptr %call13, i32 0, i32 1
  %45 = ptrtoint ptr %__data_loc_devname to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %or.i, ptr %__data_loc_devname, align 8
  %__data_loc_cgroup = getelementptr inbounds %struct.trace_event_raw_iocg_inuse_update, ptr %call13, i32 0, i32 2
  %46 = ptrtoint ptr %__data_loc_cgroup to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %or19.i, ptr %__data_loc_cgroup, align 4
  %add.ptr = getelementptr i8, ptr %call13, i32 48
  %47 = ptrtoint ptr %ioc.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ioc.i, align 8
  %q.i = getelementptr inbounds %struct.rq_qos, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %q.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %q.i, align 4
  %queue_flags.i.i = getelementptr inbounds %struct.request_queue, ptr %50, i32 0, i32 11
  %51 = ptrtoint ptr %queue_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %queue_flags.i.i, align 4
  %53 = and i32 %52, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool.not.i.i = icmp eq i32 %53, 0
  br i1 %tobool.not.i.i, label %if.end16.cond.true_crit_edge, label %ioc_name.exit

if.end16.cond.true_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.true

ioc_name.exit:                                    ; preds = %if.end16
  %parent.i.i = getelementptr inbounds %struct.request_queue, ptr %50, i32 0, i32 16, i32 2
  %54 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %parent.i.i, align 4
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %55, align 4
  %tobool20.not = icmp eq ptr %57, null
  br i1 %tobool20.not, label %ioc_name.exit.cond.end_crit_edge, label %ioc_name.exit.cond.true_crit_edge

ioc_name.exit.cond.true_crit_edge:                ; preds = %ioc_name.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.true

ioc_name.exit.cond.end_crit_edge:                 ; preds = %ioc_name.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.end

cond.true:                                        ; preds = %ioc_name.exit.cond.true_crit_edge, %if.end16.cond.true_crit_edge
  %58 = ptrtoint ptr %queue_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile i32, ptr %queue_flags.i.i, align 4
  %60 = and i32 %59, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool.not.i.i77 = icmp eq i32 %60, 0
  br i1 %tobool.not.i.i77, label %cond.true.cond.end_crit_edge, label %if.then.i.i79

cond.true.cond.end_crit_edge:                     ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.end

if.then.i.i79:                                    ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #19
  %parent.i.i78 = getelementptr inbounds %struct.request_queue, ptr %50, i32 0, i32 16, i32 2
  %61 = ptrtoint ptr %parent.i.i78 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %parent.i.i78, align 4
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %62, align 4
  br label %cond.end

cond.end:                                         ; preds = %if.then.i.i79, %cond.true.cond.end_crit_edge, %ioc_name.exit.cond.end_crit_edge
  %cond = phi ptr [ @.str, %ioc_name.exit.cond.end_crit_edge ], [ %64, %if.then.i.i79 ], [ @.str.1, %cond.true.cond.end_crit_edge ]
  %call23 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef %cond) #21
  %65 = ptrtoint ptr %__data_loc_cgroup to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %__data_loc_cgroup, align 4
  %and25 = and i32 %66, 65535
  %add.ptr26 = getelementptr i8, ptr %call13, i32 %and25
  %call32 = call ptr @strcpy(ptr noundef %add.ptr26, ptr noundef nonnull %spec.select.i) #21
  %now33 = getelementptr inbounds %struct.ioc_now, ptr %now, i32 0, i32 1
  %67 = ptrtoint ptr %now33 to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %now33, align 8
  %now34 = getelementptr inbounds %struct.trace_event_raw_iocg_inuse_update, ptr %call13, i32 0, i32 3
  %69 = ptrtoint ptr %now34 to i32
  call void @__asan_store8_noabort(i32 %69)
  store i64 %68, ptr %now34, align 8
  %old_inuse35 = getelementptr inbounds %struct.trace_event_raw_iocg_inuse_update, ptr %call13, i32 0, i32 4
  %70 = ptrtoint ptr %old_inuse35 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %old_inuse, ptr %old_inuse35, align 8
  %new_inuse36 = getelementptr inbounds %struct.trace_event_raw_iocg_inuse_update, ptr %call13, i32 0, i32 5
  %71 = ptrtoint ptr %new_inuse36 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %new_inuse, ptr %new_inuse36, align 4
  %old_hweight_inuse = getelementptr inbounds %struct.trace_event_raw_iocg_inuse_update, ptr %call13, i32 0, i32 6
  %72 = ptrtoint ptr %old_hweight_inuse to i32
  call void @__asan_store8_noabort(i32 %72)
  store i64 %old_hw_inuse, ptr %old_hweight_inuse, align 8
  %new_hweight_inuse = getelementptr inbounds %struct.trace_event_raw_iocg_inuse_update, ptr %call13, i32 0, i32 7
  %73 = ptrtoint ptr %new_hweight_inuse to i32
  call void @__asan_store8_noabort(i32 %73)
  store i64 %new_hw_inuse, ptr %new_hweight_inuse, align 8
  %74 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %rctx, align 4
  %76 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef %sub, i32 noundef %75, ptr noundef %__data, i64 noundef 1, ptr noundef %77, ptr noundef %29, ptr noundef null) #17
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_iocost_ioc_vrate_adj(ptr noundef %__data, ptr noundef %ioc, i64 noundef %new_vrate, ptr nocapture noundef readonly %missed_ppm, i32 noundef %rq_wait_pct, i32 noundef %nr_lagging, i32 noundef %nr_shortages) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #17
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !285

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !286

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #17
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %q.i.i = getelementptr inbounds %struct.rq_qos, ptr %ioc, i32 0, i32 1
  %3 = ptrtoint ptr %q.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %q.i.i, align 4
  %queue_flags.i.i.i = getelementptr inbounds %struct.request_queue, ptr %4, i32 0, i32 11
  %5 = ptrtoint ptr %queue_flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %queue_flags.i.i.i, align 4
  %7 = and i32 %6, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i.i.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i.i.i, label %if.end.cond.true.i_crit_edge, label %ioc_name.exit.i

if.end.cond.true.i_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.true.i

ioc_name.exit.i:                                  ; preds = %if.end
  %parent.i.i.i = getelementptr inbounds %struct.request_queue, ptr %4, i32 0, i32 16, i32 2
  %8 = ptrtoint ptr %parent.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent.i.i.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %tobool.not.i45 = icmp eq ptr %11, null
  br i1 %tobool.not.i45, label %ioc_name.exit.i.trace_event_get_offsets_iocost_ioc_vrate_adj.exit_crit_edge, label %ioc_name.exit.i.cond.true.i_crit_edge

ioc_name.exit.i.cond.true.i_crit_edge:            ; preds = %ioc_name.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.true.i

ioc_name.exit.i.trace_event_get_offsets_iocost_ioc_vrate_adj.exit_crit_edge: ; preds = %ioc_name.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %trace_event_get_offsets_iocost_ioc_vrate_adj.exit

cond.true.i:                                      ; preds = %ioc_name.exit.i.cond.true.i_crit_edge, %if.end.cond.true.i_crit_edge
  %12 = ptrtoint ptr %queue_flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %queue_flags.i.i.i, align 4
  %14 = and i32 %13, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i.i3.i = icmp eq i32 %14, 0
  br i1 %tobool.not.i.i3.i, label %cond.true.i.trace_event_get_offsets_iocost_ioc_vrate_adj.exit_crit_edge, label %if.then.i.i5.i

cond.true.i.trace_event_get_offsets_iocost_ioc_vrate_adj.exit_crit_edge: ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %trace_event_get_offsets_iocost_ioc_vrate_adj.exit

if.then.i.i5.i:                                   ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #19
  %parent.i.i4.i = getelementptr inbounds %struct.request_queue, ptr %4, i32 0, i32 16, i32 2
  %15 = ptrtoint ptr %parent.i.i4.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %parent.i.i4.i, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  br label %trace_event_get_offsets_iocost_ioc_vrate_adj.exit

trace_event_get_offsets_iocost_ioc_vrate_adj.exit: ; preds = %if.then.i.i5.i, %cond.true.i.trace_event_get_offsets_iocost_ioc_vrate_adj.exit_crit_edge, %ioc_name.exit.i.trace_event_get_offsets_iocost_ioc_vrate_adj.exit_crit_edge
  %cond.i = phi ptr [ @.str, %ioc_name.exit.i.trace_event_get_offsets_iocost_ioc_vrate_adj.exit_crit_edge ], [ %18, %if.then.i.i5.i ], [ @.str.1, %cond.true.i.trace_event_get_offsets_iocost_ioc_vrate_adj.exit_crit_edge ]
  %call3.i = tail call i32 @strlen(ptr noundef %cond.i) #20
  %add = add i32 %call3.i, 57
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef %add) #17
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %trace_event_get_offsets_iocost_ioc_vrate_adj.exit.cleanup_crit_edge, label %if.end5

trace_event_get_offsets_iocost_ioc_vrate_adj.exit.cleanup_crit_edge: ; preds = %trace_event_get_offsets_iocost_ioc_vrate_adj.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end5:                                          ; preds = %trace_event_get_offsets_iocost_ioc_vrate_adj.exit
  %add.i = shl i32 %call3.i, 16
  %or.i = add i32 %add.i, 65592
  %__data_loc_devname = getelementptr inbounds %struct.trace_event_raw_iocost_ioc_vrate_adj, ptr %call3, i32 0, i32 1
  %19 = ptrtoint ptr %__data_loc_devname to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %or.i, ptr %__data_loc_devname, align 8
  %add.ptr = getelementptr i8, ptr %call3, i32 56
  %20 = ptrtoint ptr %q.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %q.i.i, align 4
  %queue_flags.i.i = getelementptr inbounds %struct.request_queue, ptr %21, i32 0, i32 11
  %22 = ptrtoint ptr %queue_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %queue_flags.i.i, align 4
  %24 = and i32 %23, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not.i.i = icmp eq i32 %24, 0
  br i1 %tobool.not.i.i, label %if.end5.cond.true_crit_edge, label %ioc_name.exit

if.end5.cond.true_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.true

ioc_name.exit:                                    ; preds = %if.end5
  %parent.i.i = getelementptr inbounds %struct.request_queue, ptr %21, i32 0, i32 16, i32 2
  %25 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %parent.i.i, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 4
  %tobool8.not = icmp eq ptr %28, null
  br i1 %tobool8.not, label %ioc_name.exit.cond.end_crit_edge, label %ioc_name.exit.cond.true_crit_edge

ioc_name.exit.cond.true_crit_edge:                ; preds = %ioc_name.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.true

ioc_name.exit.cond.end_crit_edge:                 ; preds = %ioc_name.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.end

cond.true:                                        ; preds = %ioc_name.exit.cond.true_crit_edge, %if.end5.cond.true_crit_edge
  %29 = ptrtoint ptr %queue_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %queue_flags.i.i, align 4
  %31 = and i32 %30, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not.i.i48 = icmp eq i32 %31, 0
  br i1 %tobool.not.i.i48, label %cond.true.cond.end_crit_edge, label %if.then.i.i50

cond.true.cond.end_crit_edge:                     ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.end

if.then.i.i50:                                    ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #19
  %parent.i.i49 = getelementptr inbounds %struct.request_queue, ptr %21, i32 0, i32 16, i32 2
  %32 = ptrtoint ptr %parent.i.i49 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %parent.i.i49, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 4
  br label %cond.end

cond.end:                                         ; preds = %if.then.i.i50, %cond.true.cond.end_crit_edge, %ioc_name.exit.cond.end_crit_edge
  %cond = phi ptr [ @.str, %ioc_name.exit.cond.end_crit_edge ], [ %35, %if.then.i.i50 ], [ @.str.1, %cond.true.cond.end_crit_edge ]
  %call10 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef %cond) #21
  %vtime_rate = getelementptr inbounds %struct.ioc, ptr %ioc, i32 0, i32 13
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %vtime_rate, i32 noundef 8) #17
  %call.i44 = call i64 @generic_atomic64_read(ptr noundef %vtime_rate) #17
  %old_vrate = getelementptr inbounds %struct.trace_event_raw_iocost_ioc_vrate_adj, ptr %call3, i32 0, i32 2
  %36 = ptrtoint ptr %old_vrate to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %call.i44, ptr %old_vrate, align 8
  %new_vrate12 = getelementptr inbounds %struct.trace_event_raw_iocost_ioc_vrate_adj, ptr %call3, i32 0, i32 3
  %37 = ptrtoint ptr %new_vrate12 to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %new_vrate, ptr %new_vrate12, align 8
  %busy_level = getelementptr inbounds %struct.ioc, ptr %ioc, i32 0, i32 20
  %38 = ptrtoint ptr %busy_level to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %busy_level, align 8
  %busy_level13 = getelementptr inbounds %struct.trace_event_raw_iocost_ioc_vrate_adj, ptr %call3, i32 0, i32 4
  %40 = ptrtoint ptr %busy_level13 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %busy_level13, align 8
  %41 = ptrtoint ptr %missed_ppm to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %missed_ppm, align 4
  %read_missed_ppm = getelementptr inbounds %struct.trace_event_raw_iocost_ioc_vrate_adj, ptr %call3, i32 0, i32 5
  %43 = ptrtoint ptr %read_missed_ppm to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %read_missed_ppm, align 4
  %arrayidx14 = getelementptr i32, ptr %missed_ppm, i32 1
  %44 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx14, align 4
  %write_missed_ppm = getelementptr inbounds %struct.trace_event_raw_iocost_ioc_vrate_adj, ptr %call3, i32 0, i32 6
  %46 = ptrtoint ptr %write_missed_ppm to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %write_missed_ppm, align 8
  %rq_wait_pct15 = getelementptr inbounds %struct.trace_event_raw_iocost_ioc_vrate_adj, ptr %call3, i32 0, i32 7
  %47 = ptrtoint ptr %rq_wait_pct15 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %rq_wait_pct, ptr %rq_wait_pct15, align 4
  %nr_lagging16 = getelementptr inbounds %struct.trace_event_raw_iocost_ioc_vrate_adj, ptr %call3, i32 0, i32 8
  %48 = ptrtoint ptr %nr_lagging16 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %nr_lagging, ptr %nr_lagging16, align 8
  %nr_shortages17 = getelementptr inbounds %struct.trace_event_raw_iocost_ioc_vrate_adj, ptr %call3, i32 0, i32 9
  %49 = ptrtoint ptr %nr_shortages17 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %nr_shortages, ptr %nr_shortages17, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #17
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %trace_event_get_offsets_iocost_ioc_vrate_adj.exit.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_iocost_ioc_vrate_adj(ptr noundef %__data, ptr noundef %ioc, i64 noundef %new_vrate, ptr nocapture noundef readonly %missed_ppm, i32 noundef %rq_wait_pct, i32 noundef %nr_lagging, i32 noundef %nr_shortages) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #17
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !287
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #17
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !287
  %q.i.i = getelementptr inbounds %struct.rq_qos, ptr %ioc, i32 0, i32 1
  %2 = ptrtoint ptr %q.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %q.i.i, align 4
  %queue_flags.i.i.i = getelementptr inbounds %struct.request_queue, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %queue_flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %queue_flags.i.i.i, align 4
  %6 = and i32 %5, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i.i.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i.i.i, label %entry.cond.true.i_crit_edge, label %ioc_name.exit.i

entry.cond.true.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.true.i

ioc_name.exit.i:                                  ; preds = %entry
  %parent.i.i.i = getelementptr inbounds %struct.request_queue, ptr %3, i32 0, i32 16, i32 2
  %7 = ptrtoint ptr %parent.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %parent.i.i.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %ioc_name.exit.i.trace_event_get_offsets_iocost_ioc_vrate_adj.exit_crit_edge, label %ioc_name.exit.i.cond.true.i_crit_edge

ioc_name.exit.i.cond.true.i_crit_edge:            ; preds = %ioc_name.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.true.i

ioc_name.exit.i.trace_event_get_offsets_iocost_ioc_vrate_adj.exit_crit_edge: ; preds = %ioc_name.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %trace_event_get_offsets_iocost_ioc_vrate_adj.exit

cond.true.i:                                      ; preds = %ioc_name.exit.i.cond.true.i_crit_edge, %entry.cond.true.i_crit_edge
  %11 = ptrtoint ptr %queue_flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %queue_flags.i.i.i, align 4
  %13 = and i32 %12, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i.i3.i = icmp eq i32 %13, 0
  br i1 %tobool.not.i.i3.i, label %cond.true.i.trace_event_get_offsets_iocost_ioc_vrate_adj.exit_crit_edge, label %if.then.i.i5.i

cond.true.i.trace_event_get_offsets_iocost_ioc_vrate_adj.exit_crit_edge: ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %trace_event_get_offsets_iocost_ioc_vrate_adj.exit

if.then.i.i5.i:                                   ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #19
  %parent.i.i4.i = getelementptr inbounds %struct.request_queue, ptr %3, i32 0, i32 16, i32 2
  %14 = ptrtoint ptr %parent.i.i4.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %parent.i.i4.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  br label %trace_event_get_offsets_iocost_ioc_vrate_adj.exit

trace_event_get_offsets_iocost_ioc_vrate_adj.exit: ; preds = %if.then.i.i5.i, %cond.true.i.trace_event_get_offsets_iocost_ioc_vrate_adj.exit_crit_edge, %ioc_name.exit.i.trace_event_get_offsets_iocost_ioc_vrate_adj.exit_crit_edge
  %cond.i = phi ptr [ @.str, %ioc_name.exit.i.trace_event_get_offsets_iocost_ioc_vrate_adj.exit_crit_edge ], [ %17, %if.then.i.i5.i ], [ @.str.1, %cond.true.i.trace_event_get_offsets_iocost_ioc_vrate_adj.exit_crit_edge ]
  %call3.i = tail call i32 @strlen(ptr noundef %cond.i) #20
  %add.i = shl i32 %call3.i, 16
  %or.i = add i32 %add.i, 65592
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %18 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %perf_events, align 4
  %20 = ptrtoint ptr %19 to i32
  %21 = tail call i32 @llvm.read_register.i32(metadata !275) #17
  %and.i = and i32 %21, -16384
  %22 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %24
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx, align 4
  %add = add i32 %26, %20
  %27 = inttoptr i32 %add to ptr
  %prog_array.i = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 11
  %28 = ptrtoint ptr %prog_array.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile ptr, ptr %prog_array.i, align 4
  %tobool.i.not = icmp eq ptr %29, null
  br i1 %tobool.i.not, label %land.lhs.true7, label %trace_event_get_offsets_iocost_ioc_vrate_adj.exit.if.end_crit_edge

trace_event_get_offsets_iocost_ioc_vrate_adj.exit.if.end_crit_edge: ; preds = %trace_event_get_offsets_iocost_ioc_vrate_adj.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

land.lhs.true7:                                   ; preds = %trace_event_get_offsets_iocost_ioc_vrate_adj.exit
  %30 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile ptr, ptr %27, align 4
  %tobool.not.i69.not = icmp eq ptr %31, null
  br i1 %tobool.not.i69.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %trace_event_get_offsets_iocost_ioc_vrate_adj.exit.if.end_crit_edge
  %add12 = add i32 %call3.i, 68
  %and = and i32 %add12, -8
  %sub = add i32 %and, -4
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef %sub, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #17
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %32 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %__regs, align 4
  %34 = call ptr @llvm.returnaddress(i32 0) #17
  %35 = ptrtoint ptr %34 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %33, i32 0, i32 15
  %36 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %arrayidx.i, align 4
  %37 = call ptr @llvm.frameaddress.p0(i32 0) #17
  %38 = ptrtoint ptr %37 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %33, i32 0, i32 11
  %39 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %arrayidx2.i, align 4
  %40 = call i32 @llvm.read_register.i32(metadata !275) #17
  %arrayidx4.i = getelementptr [18 x i32], ptr %33, i32 0, i32 13
  %41 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %33, i32 0, i32 16
  %42 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 19, ptr %arrayidx6.i, align 4
  %__data_loc_devname = getelementptr inbounds %struct.trace_event_raw_iocost_ioc_vrate_adj, ptr %call13, i32 0, i32 1
  %43 = ptrtoint ptr %__data_loc_devname to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %or.i, ptr %__data_loc_devname, align 8
  %add.ptr = getelementptr i8, ptr %call13, i32 56
  %44 = ptrtoint ptr %q.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %q.i.i, align 4
  %queue_flags.i.i = getelementptr inbounds %struct.request_queue, ptr %45, i32 0, i32 11
  %46 = ptrtoint ptr %queue_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %queue_flags.i.i, align 4
  %48 = and i32 %47, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool.not.i.i = icmp eq i32 %48, 0
  br i1 %tobool.not.i.i, label %if.end16.cond.true_crit_edge, label %ioc_name.exit

if.end16.cond.true_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.true

ioc_name.exit:                                    ; preds = %if.end16
  %parent.i.i = getelementptr inbounds %struct.request_queue, ptr %45, i32 0, i32 16, i32 2
  %49 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %parent.i.i, align 4
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %50, align 4
  %tobool20.not = icmp eq ptr %52, null
  br i1 %tobool20.not, label %ioc_name.exit.cond.end_crit_edge, label %ioc_name.exit.cond.true_crit_edge

ioc_name.exit.cond.true_crit_edge:                ; preds = %ioc_name.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.true

ioc_name.exit.cond.end_crit_edge:                 ; preds = %ioc_name.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.end

cond.true:                                        ; preds = %ioc_name.exit.cond.true_crit_edge, %if.end16.cond.true_crit_edge
  %53 = ptrtoint ptr %queue_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %queue_flags.i.i, align 4
  %55 = and i32 %54, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool.not.i.i72 = icmp eq i32 %55, 0
  br i1 %tobool.not.i.i72, label %cond.true.cond.end_crit_edge, label %if.then.i.i74

cond.true.cond.end_crit_edge:                     ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.end

if.then.i.i74:                                    ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #19
  %parent.i.i73 = getelementptr inbounds %struct.request_queue, ptr %45, i32 0, i32 16, i32 2
  %56 = ptrtoint ptr %parent.i.i73 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %parent.i.i73, align 4
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %57, align 4
  br label %cond.end

cond.end:                                         ; preds = %if.then.i.i74, %cond.true.cond.end_crit_edge, %ioc_name.exit.cond.end_crit_edge
  %cond = phi ptr [ @.str, %ioc_name.exit.cond.end_crit_edge ], [ %59, %if.then.i.i74 ], [ @.str.1, %cond.true.cond.end_crit_edge ]
  %call22 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef %cond) #21
  %vtime_rate = getelementptr inbounds %struct.ioc, ptr %ioc, i32 0, i32 13
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %vtime_rate, i32 noundef 8) #17
  %call.i = call i64 @generic_atomic64_read(ptr noundef %vtime_rate) #17
  %old_vrate = getelementptr inbounds %struct.trace_event_raw_iocost_ioc_vrate_adj, ptr %call13, i32 0, i32 2
  %60 = ptrtoint ptr %old_vrate to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 %call.i, ptr %old_vrate, align 8
  %new_vrate24 = getelementptr inbounds %struct.trace_event_raw_iocost_ioc_vrate_adj, ptr %call13, i32 0, i32 3
  %61 = ptrtoint ptr %new_vrate24 to i32
  call void @__asan_store8_noabort(i32 %61)
  store i64 %new_vrate, ptr %new_vrate24, align 8
  %busy_level = getelementptr inbounds %struct.ioc, ptr %ioc, i32 0, i32 20
  %62 = ptrtoint ptr %busy_level to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %busy_level, align 8
  %busy_level25 = getelementptr inbounds %struct.trace_event_raw_iocost_ioc_vrate_adj, ptr %call13, i32 0, i32 4
  %64 = ptrtoint ptr %busy_level25 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %busy_level25, align 8
  %65 = ptrtoint ptr %missed_ppm to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %missed_ppm, align 4
  %read_missed_ppm = getelementptr inbounds %struct.trace_event_raw_iocost_ioc_vrate_adj, ptr %call13, i32 0, i32 5
  %67 = ptrtoint ptr %read_missed_ppm to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %read_missed_ppm, align 4
  %arrayidx27 = getelementptr i32, ptr %missed_ppm, i32 1
  %68 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx27, align 4
  %write_missed_ppm = getelementptr inbounds %struct.trace_event_raw_iocost_ioc_vrate_adj, ptr %call13, i32 0, i32 6
  %70 = ptrtoint ptr %write_missed_ppm to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %write_missed_ppm, align 8
  %rq_wait_pct28 = getelementptr inbounds %struct.trace_event_raw_iocost_ioc_vrate_adj, ptr %call13, i32 0, i32 7
  %71 = ptrtoint ptr %rq_wait_pct28 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %rq_wait_pct, ptr %rq_wait_pct28, align 4
  %nr_lagging29 = getelementptr inbounds %struct.trace_event_raw_iocost_ioc_vrate_adj, ptr %call13, i32 0, i32 8
  %72 = ptrtoint ptr %nr_lagging29 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %nr_lagging, ptr %nr_lagging29, align 8
  %nr_shortages30 = getelementptr inbounds %struct.trace_event_raw_iocost_ioc_vrate_adj, ptr %call13, i32 0, i32 9
  %73 = ptrtoint ptr %nr_shortages30 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %nr_shortages, ptr %nr_shortages30, align 4
  %74 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %rctx, align 4
  %76 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef %sub, i32 noundef %75, ptr noundef %__data, i64 noundef 1, ptr noundef %77, ptr noundef %27, ptr noundef null) #17
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_iocost_iocg_forgive_debt(ptr noundef %__data, ptr nocapture noundef readonly %iocg, ptr noundef readonly %path, ptr nocapture noundef readonly %now, i32 noundef %usage_pct, i64 noundef %old_debt, i64 noundef %new_debt, i64 noundef %old_delay, i64 noundef %new_delay) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #17
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !285

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !286

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #17
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %ioc.i = getelementptr inbounds %struct.ioc_gq, ptr %iocg, i32 0, i32 1
  %3 = ptrtoint ptr %ioc.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ioc.i, align 8
  %q.i.i = getelementptr inbounds %struct.rq_qos, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %q.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %q.i.i, align 4
  %queue_flags.i.i.i = getelementptr inbounds %struct.request_queue, ptr %6, i32 0, i32 11
  %7 = ptrtoint ptr %queue_flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %queue_flags.i.i.i, align 4
  %9 = and i32 %8, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i.i.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i.i.i, label %if.end.cond.true.i_crit_edge, label %ioc_name.exit.i

if.end.cond.true.i_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.true.i

ioc_name.exit.i:                                  ; preds = %if.end
  %parent.i.i.i = getelementptr inbounds %struct.request_queue, ptr %6, i32 0, i32 16, i32 2
  %10 = ptrtoint ptr %parent.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %parent.i.i.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %tobool.not.i58 = icmp eq ptr %13, null
  br i1 %tobool.not.i58, label %ioc_name.exit.i.trace_event_get_offsets_iocost_iocg_forgive_debt.exit_crit_edge, label %ioc_name.exit.i.cond.true.i_crit_edge

ioc_name.exit.i.cond.true.i_crit_edge:            ; preds = %ioc_name.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.true.i

ioc_name.exit.i.trace_event_get_offsets_iocost_iocg_forgive_debt.exit_crit_edge: ; preds = %ioc_name.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %trace_event_get_offsets_iocost_iocg_forgive_debt.exit

cond.true.i:                                      ; preds = %ioc_name.exit.i.cond.true.i_crit_edge, %if.end.cond.true.i_crit_edge
  %14 = ptrtoint ptr %queue_flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %queue_flags.i.i.i, align 4
  %16 = and i32 %15, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i.i3.i = icmp eq i32 %16, 0
  br i1 %tobool.not.i.i3.i, label %cond.true.i.trace_event_get_offsets_iocost_iocg_forgive_debt.exit_crit_edge, label %if.then.i.i5.i

cond.true.i.trace_event_get_offsets_iocost_iocg_forgive_debt.exit_crit_edge: ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %trace_event_get_offsets_iocost_iocg_forgive_debt.exit

if.then.i.i5.i:                                   ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #19
  %parent.i.i4.i = getelementptr inbounds %struct.request_queue, ptr %6, i32 0, i32 16, i32 2
  %17 = ptrtoint ptr %parent.i.i4.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %parent.i.i4.i, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  br label %trace_event_get_offsets_iocost_iocg_forgive_debt.exit

trace_event_get_offsets_iocost_iocg_forgive_debt.exit: ; preds = %if.then.i.i5.i, %cond.true.i.trace_event_get_offsets_iocost_iocg_forgive_debt.exit_crit_edge, %ioc_name.exit.i.trace_event_get_offsets_iocost_iocg_forgive_debt.exit_crit_edge
  %cond.i = phi ptr [ @.str, %ioc_name.exit.i.trace_event_get_offsets_iocost_iocg_forgive_debt.exit_crit_edge ], [ %20, %if.then.i.i5.i ], [ @.str.1, %cond.true.i.trace_event_get_offsets_iocost_iocg_forgive_debt.exit_crit_edge ]
  %call4.i = tail call i32 @strlen(ptr noundef %cond.i) #20
  %tobool8.not.i = icmp eq ptr %path, null
  %spec.select.i = select i1 %tobool8.not.i, ptr @.str, ptr %path
  %call13.i = tail call i32 @strlen(ptr noundef nonnull %spec.select.i) #20
  %add14.i = add i32 %call13.i, 1
  %add20.i = add i32 %call4.i, 73
  %add = add i32 %add20.i, %add14.i
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef %add) #17
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %trace_event_get_offsets_iocost_iocg_forgive_debt.exit.cleanup_crit_edge, label %if.end5

trace_event_get_offsets_iocost_iocg_forgive_debt.exit.cleanup_crit_edge: ; preds = %trace_event_get_offsets_iocost_iocg_forgive_debt.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end5:                                          ; preds = %trace_event_get_offsets_iocost_iocg_forgive_debt.exit
  %shl17.i = shl i32 %add14.i, 16
  %or19.i = or i32 %shl17.i, %add20.i
  %add.i = shl i32 %call4.i, 16
  %or.i = add i32 %add.i, 65608
  %__data_loc_devname = getelementptr inbounds %struct.trace_event_raw_iocost_iocg_forgive_debt, ptr %call3, i32 0, i32 1
  %21 = ptrtoint ptr %__data_loc_devname to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %or.i, ptr %__data_loc_devname, align 8
  %__data_loc_cgroup = getelementptr inbounds %struct.trace_event_raw_iocost_iocg_forgive_debt, ptr %call3, i32 0, i32 2
  %22 = ptrtoint ptr %__data_loc_cgroup to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %or19.i, ptr %__data_loc_cgroup, align 4
  %add.ptr = getelementptr i8, ptr %call3, i32 72
  %23 = ptrtoint ptr %ioc.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ioc.i, align 8
  %q.i = getelementptr inbounds %struct.rq_qos, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %q.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %q.i, align 4
  %queue_flags.i.i = getelementptr inbounds %struct.request_queue, ptr %26, i32 0, i32 11
  %27 = ptrtoint ptr %queue_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %queue_flags.i.i, align 4
  %29 = and i32 %28, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not.i.i = icmp eq i32 %29, 0
  br i1 %tobool.not.i.i, label %if.end5.cond.true_crit_edge, label %ioc_name.exit

if.end5.cond.true_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.true

ioc_name.exit:                                    ; preds = %if.end5
  %parent.i.i = getelementptr inbounds %struct.request_queue, ptr %26, i32 0, i32 16, i32 2
  %30 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %parent.i.i, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 4
  %tobool8.not = icmp eq ptr %33, null
  br i1 %tobool8.not, label %ioc_name.exit.cond.end_crit_edge, label %ioc_name.exit.cond.true_crit_edge

ioc_name.exit.cond.true_crit_edge:                ; preds = %ioc_name.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.true

ioc_name.exit.cond.end_crit_edge:                 ; preds = %ioc_name.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.end

cond.true:                                        ; preds = %ioc_name.exit.cond.true_crit_edge, %if.end5.cond.true_crit_edge
  %34 = ptrtoint ptr %queue_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %queue_flags.i.i, align 4
  %36 = and i32 %35, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool.not.i.i61 = icmp eq i32 %36, 0
  br i1 %tobool.not.i.i61, label %cond.true.cond.end_crit_edge, label %if.then.i.i63

cond.true.cond.end_crit_edge:                     ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.end

if.then.i.i63:                                    ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #19
  %parent.i.i62 = getelementptr inbounds %struct.request_queue, ptr %26, i32 0, i32 16, i32 2
  %37 = ptrtoint ptr %parent.i.i62 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %parent.i.i62, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %38, align 4
  br label %cond.end

cond.end:                                         ; preds = %if.then.i.i63, %cond.true.cond.end_crit_edge, %ioc_name.exit.cond.end_crit_edge
  %cond = phi ptr [ @.str, %ioc_name.exit.cond.end_crit_edge ], [ %40, %if.then.i.i63 ], [ @.str.1, %cond.true.cond.end_crit_edge ]
  %call11 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef %cond) #21
  %41 = ptrtoint ptr %__data_loc_cgroup to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %__data_loc_cgroup, align 4
  %and13 = and i32 %42, 65535
  %add.ptr14 = getelementptr i8, ptr %call3, i32 %and13
  %call20 = call ptr @strcpy(ptr noundef %add.ptr14, ptr noundef nonnull %spec.select.i) #21
  %now21 = getelementptr inbounds %struct.ioc_now, ptr %now, i32 0, i32 1
  %43 = ptrtoint ptr %now21 to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %now21, align 8
  %now22 = getelementptr inbounds %struct.trace_event_raw_iocost_iocg_forgive_debt, ptr %call3, i32 0, i32 3
  %45 = ptrtoint ptr %now22 to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %44, ptr %now22, align 8
  %vnow = getelementptr inbounds %struct.ioc_now, ptr %now, i32 0, i32 2
  %46 = ptrtoint ptr %vnow to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %vnow, align 8
  %vnow23 = getelementptr inbounds %struct.trace_event_raw_iocost_iocg_forgive_debt, ptr %call3, i32 0, i32 4
  %48 = ptrtoint ptr %vnow23 to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 %47, ptr %vnow23, align 8
  %usage_pct24 = getelementptr inbounds %struct.trace_event_raw_iocost_iocg_forgive_debt, ptr %call3, i32 0, i32 5
  %49 = ptrtoint ptr %usage_pct24 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %usage_pct, ptr %usage_pct24, align 8
  %old_debt25 = getelementptr inbounds %struct.trace_event_raw_iocost_iocg_forgive_debt, ptr %call3, i32 0, i32 6
  %50 = ptrtoint ptr %old_debt25 to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 %old_debt, ptr %old_debt25, align 8
  %new_debt26 = getelementptr inbounds %struct.trace_event_raw_iocost_iocg_forgive_debt, ptr %call3, i32 0, i32 7
  %51 = ptrtoint ptr %new_debt26 to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 %new_debt, ptr %new_debt26, align 8
  %old_delay27 = getelementptr inbounds %struct.trace_event_raw_iocost_iocg_forgive_debt, ptr %call3, i32 0, i32 8
  %52 = ptrtoint ptr %old_delay27 to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 %old_delay, ptr %old_delay27, align 8
  %new_delay28 = getelementptr inbounds %struct.trace_event_raw_iocost_iocg_forgive_debt, ptr %call3, i32 0, i32 9
  %53 = ptrtoint ptr %new_delay28 to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 %new_delay, ptr %new_delay28, align 8
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #17
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %trace_event_get_offsets_iocost_iocg_forgive_debt.exit.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_iocost_iocg_forgive_debt(ptr noundef %__data, ptr nocapture noundef readonly %iocg, ptr noundef readonly %path, ptr nocapture noundef readonly %now, i32 noundef %usage_pct, i64 noundef %old_debt, i64 noundef %new_debt, i64 noundef %old_delay, i64 noundef %new_delay) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #17
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !287
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #17
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !287
  %ioc.i = getelementptr inbounds %struct.ioc_gq, ptr %iocg, i32 0, i32 1
  %2 = ptrtoint ptr %ioc.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ioc.i, align 8
  %q.i.i = getelementptr inbounds %struct.rq_qos, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %q.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %q.i.i, align 4
  %queue_flags.i.i.i = getelementptr inbounds %struct.request_queue, ptr %5, i32 0, i32 11
  %6 = ptrtoint ptr %queue_flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %queue_flags.i.i.i, align 4
  %8 = and i32 %7, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i.i.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i.i.i, label %entry.cond.true.i_crit_edge, label %ioc_name.exit.i

entry.cond.true.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.true.i

ioc_name.exit.i:                                  ; preds = %entry
  %parent.i.i.i = getelementptr inbounds %struct.request_queue, ptr %5, i32 0, i32 16, i32 2
  %9 = ptrtoint ptr %parent.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %parent.i.i.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %ioc_name.exit.i.trace_event_get_offsets_iocost_iocg_forgive_debt.exit_crit_edge, label %ioc_name.exit.i.cond.true.i_crit_edge

ioc_name.exit.i.cond.true.i_crit_edge:            ; preds = %ioc_name.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.true.i

ioc_name.exit.i.trace_event_get_offsets_iocost_iocg_forgive_debt.exit_crit_edge: ; preds = %ioc_name.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %trace_event_get_offsets_iocost_iocg_forgive_debt.exit

cond.true.i:                                      ; preds = %ioc_name.exit.i.cond.true.i_crit_edge, %entry.cond.true.i_crit_edge
  %13 = ptrtoint ptr %queue_flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %queue_flags.i.i.i, align 4
  %15 = and i32 %14, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i.i3.i = icmp eq i32 %15, 0
  br i1 %tobool.not.i.i3.i, label %cond.true.i.trace_event_get_offsets_iocost_iocg_forgive_debt.exit_crit_edge, label %if.then.i.i5.i

cond.true.i.trace_event_get_offsets_iocost_iocg_forgive_debt.exit_crit_edge: ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %trace_event_get_offsets_iocost_iocg_forgive_debt.exit

if.then.i.i5.i:                                   ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #19
  %parent.i.i4.i = getelementptr inbounds %struct.request_queue, ptr %5, i32 0, i32 16, i32 2
  %16 = ptrtoint ptr %parent.i.i4.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %parent.i.i4.i, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  br label %trace_event_get_offsets_iocost_iocg_forgive_debt.exit

trace_event_get_offsets_iocost_iocg_forgive_debt.exit: ; preds = %if.then.i.i5.i, %cond.true.i.trace_event_get_offsets_iocost_iocg_forgive_debt.exit_crit_edge, %ioc_name.exit.i.trace_event_get_offsets_iocost_iocg_forgive_debt.exit_crit_edge
  %cond.i = phi ptr [ @.str, %ioc_name.exit.i.trace_event_get_offsets_iocost_iocg_forgive_debt.exit_crit_edge ], [ %19, %if.then.i.i5.i ], [ @.str.1, %cond.true.i.trace_event_get_offsets_iocost_iocg_forgive_debt.exit_crit_edge ]
  %call4.i = tail call i32 @strlen(ptr noundef %cond.i) #20
  %add.i = shl i32 %call4.i, 16
  %shl.i = add i32 %add.i, 65536
  %or.i = or i32 %shl.i, 72
  %tobool8.not.i = icmp eq ptr %path, null
  %spec.select.i = select i1 %tobool8.not.i, ptr @.str, ptr %path
  %call13.i = tail call i32 @strlen(ptr noundef nonnull %spec.select.i) #20
  %add14.i = add i32 %call13.i, 1
  %add16.i = add i32 %call4.i, 73
  %shl17.i = shl i32 %add14.i, 16
  %or19.i = or i32 %shl17.i, %add16.i
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %20 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %perf_events, align 4
  %22 = ptrtoint ptr %21 to i32
  %23 = tail call i32 @llvm.read_register.i32(metadata !275) #17
  %and.i = and i32 %23, -16384
  %24 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %26
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx, align 4
  %add = add i32 %28, %22
  %29 = inttoptr i32 %add to ptr
  %prog_array.i = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 11
  %30 = ptrtoint ptr %prog_array.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile ptr, ptr %prog_array.i, align 4
  %tobool.i.not = icmp eq ptr %31, null
  br i1 %tobool.i.not, label %land.lhs.true7, label %trace_event_get_offsets_iocost_iocg_forgive_debt.exit.if.end_crit_edge

trace_event_get_offsets_iocost_iocg_forgive_debt.exit.if.end_crit_edge: ; preds = %trace_event_get_offsets_iocost_iocg_forgive_debt.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

land.lhs.true7:                                   ; preds = %trace_event_get_offsets_iocost_iocg_forgive_debt.exit
  %32 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile ptr, ptr %29, align 4
  %tobool.not.i82.not = icmp eq ptr %33, null
  br i1 %tobool.not.i82.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %trace_event_get_offsets_iocost_iocg_forgive_debt.exit.if.end_crit_edge
  %add20.i = add i32 %call4.i, 84
  %add12 = add i32 %add20.i, %add14.i
  %and = and i32 %add12, -8
  %sub = add i32 %and, -4
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef %sub, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #17
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %34 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %__regs, align 4
  %36 = call ptr @llvm.returnaddress(i32 0) #17
  %37 = ptrtoint ptr %36 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %35, i32 0, i32 15
  %38 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %arrayidx.i, align 4
  %39 = call ptr @llvm.frameaddress.p0(i32 0) #17
  %40 = ptrtoint ptr %39 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %35, i32 0, i32 11
  %41 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %arrayidx2.i, align 4
  %42 = call i32 @llvm.read_register.i32(metadata !275) #17
  %arrayidx4.i = getelementptr [18 x i32], ptr %35, i32 0, i32 13
  %43 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %35, i32 0, i32 16
  %44 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 19, ptr %arrayidx6.i, align 4
  %__data_loc_devname = getelementptr inbounds %struct.trace_event_raw_iocost_iocg_forgive_debt, ptr %call13, i32 0, i32 1
  %45 = ptrtoint ptr %__data_loc_devname to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %or.i, ptr %__data_loc_devname, align 8
  %__data_loc_cgroup = getelementptr inbounds %struct.trace_event_raw_iocost_iocg_forgive_debt, ptr %call13, i32 0, i32 2
  %46 = ptrtoint ptr %__data_loc_cgroup to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %or19.i, ptr %__data_loc_cgroup, align 4
  %add.ptr = getelementptr i8, ptr %call13, i32 72
  %47 = ptrtoint ptr %ioc.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ioc.i, align 8
  %q.i = getelementptr inbounds %struct.rq_qos, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %q.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %q.i, align 4
  %queue_flags.i.i = getelementptr inbounds %struct.request_queue, ptr %50, i32 0, i32 11
  %51 = ptrtoint ptr %queue_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %queue_flags.i.i, align 4
  %53 = and i32 %52, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool.not.i.i = icmp eq i32 %53, 0
  br i1 %tobool.not.i.i, label %if.end16.cond.true_crit_edge, label %ioc_name.exit

if.end16.cond.true_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.true

ioc_name.exit:                                    ; preds = %if.end16
  %parent.i.i = getelementptr inbounds %struct.request_queue, ptr %50, i32 0, i32 16, i32 2
  %54 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %parent.i.i, align 4
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %55, align 4
  %tobool20.not = icmp eq ptr %57, null
  br i1 %tobool20.not, label %ioc_name.exit.cond.end_crit_edge, label %ioc_name.exit.cond.true_crit_edge

ioc_name.exit.cond.true_crit_edge:                ; preds = %ioc_name.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.true

ioc_name.exit.cond.end_crit_edge:                 ; preds = %ioc_name.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.end

cond.true:                                        ; preds = %ioc_name.exit.cond.true_crit_edge, %if.end16.cond.true_crit_edge
  %58 = ptrtoint ptr %queue_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile i32, ptr %queue_flags.i.i, align 4
  %60 = and i32 %59, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool.not.i.i85 = icmp eq i32 %60, 0
  br i1 %tobool.not.i.i85, label %cond.true.cond.end_crit_edge, label %if.then.i.i87

cond.true.cond.end_crit_edge:                     ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.end

if.then.i.i87:                                    ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #19
  %parent.i.i86 = getelementptr inbounds %struct.request_queue, ptr %50, i32 0, i32 16, i32 2
  %61 = ptrtoint ptr %parent.i.i86 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %parent.i.i86, align 4
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %62, align 4
  br label %cond.end

cond.end:                                         ; preds = %if.then.i.i87, %cond.true.cond.end_crit_edge, %ioc_name.exit.cond.end_crit_edge
  %cond = phi ptr [ @.str, %ioc_name.exit.cond.end_crit_edge ], [ %64, %if.then.i.i87 ], [ @.str.1, %cond.true.cond.end_crit_edge ]
  %call23 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef %cond) #21
  %65 = ptrtoint ptr %__data_loc_cgroup to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %__data_loc_cgroup, align 4
  %and25 = and i32 %66, 65535
  %add.ptr26 = getelementptr i8, ptr %call13, i32 %and25
  %call32 = call ptr @strcpy(ptr noundef %add.ptr26, ptr noundef nonnull %spec.select.i) #21
  %now33 = getelementptr inbounds %struct.ioc_now, ptr %now, i32 0, i32 1
  %67 = ptrtoint ptr %now33 to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %now33, align 8
  %now34 = getelementptr inbounds %struct.trace_event_raw_iocost_iocg_forgive_debt, ptr %call13, i32 0, i32 3
  %69 = ptrtoint ptr %now34 to i32
  call void @__asan_store8_noabort(i32 %69)
  store i64 %68, ptr %now34, align 8
  %vnow = getelementptr inbounds %struct.ioc_now, ptr %now, i32 0, i32 2
  %70 = ptrtoint ptr %vnow to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %vnow, align 8
  %vnow35 = getelementptr inbounds %struct.trace_event_raw_iocost_iocg_forgive_debt, ptr %call13, i32 0, i32 4
  %72 = ptrtoint ptr %vnow35 to i32
  call void @__asan_store8_noabort(i32 %72)
  store i64 %71, ptr %vnow35, align 8
  %usage_pct36 = getelementptr inbounds %struct.trace_event_raw_iocost_iocg_forgive_debt, ptr %call13, i32 0, i32 5
  %73 = ptrtoint ptr %usage_pct36 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %usage_pct, ptr %usage_pct36, align 8
  %old_debt37 = getelementptr inbounds %struct.trace_event_raw_iocost_iocg_forgive_debt, ptr %call13, i32 0, i32 6
  %74 = ptrtoint ptr %old_debt37 to i32
  call void @__asan_store8_noabort(i32 %74)
  store i64 %old_debt, ptr %old_debt37, align 8
  %new_debt38 = getelementptr inbounds %struct.trace_event_raw_iocost_iocg_forgive_debt, ptr %call13, i32 0, i32 7
  %75 = ptrtoint ptr %new_debt38 to i32
  call void @__asan_store8_noabort(i32 %75)
  store i64 %new_debt, ptr %new_debt38, align 8
  %old_delay39 = getelementptr inbounds %struct.trace_event_raw_iocost_iocg_forgive_debt, ptr %call13, i32 0, i32 8
  %76 = ptrtoint ptr %old_delay39 to i32
  call void @__asan_store8_noabort(i32 %76)
  store i64 %old_delay, ptr %old_delay39, align 8
  %new_delay40 = getelementptr inbounds %struct.trace_event_raw_iocost_iocg_forgive_debt, ptr %call13, i32 0, i32 9
  %77 = ptrtoint ptr %new_delay40 to i32
  call void @__asan_store8_noabort(i32 %77)
  store i64 %new_delay, ptr %new_delay40, align 8
  %78 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %rctx, align 4
  %80 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef %sub, i32 noundef %79, ptr noundef %__data, i64 noundef 1, ptr noundef %81, ptr noundef %29, ptr noundef null) #17
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_iocost_iocg_state(ptr noundef %__data, ptr noundef %iocg, ptr noundef %path, ptr noundef %now, i64 noundef %last_period, i64 noundef %cur_period, i64 noundef %vtime) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  %0 = ptrtoint ptr %iocg to i32
  %conv = zext i32 %0 to i64
  %1 = ptrtoint ptr %path to i32
  %conv4 = zext i32 %1 to i64
  %2 = ptrtoint ptr %now to i32
  %conv8 = zext i32 %2 to i64
  tail call void @bpf_trace_run6(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8, i64 noundef %last_period, i64 noundef %cur_period, i64 noundef %vtime) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_iocg_inuse_update(ptr noundef %__data, ptr noundef %iocg, ptr noundef %path, ptr noundef %now, i32 noundef %old_inuse, i32 noundef %new_inuse, i64 noundef %old_hw_inuse, i64 noundef %new_hw_inuse) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  %0 = ptrtoint ptr %iocg to i32
  %conv = zext i32 %0 to i64
  %1 = ptrtoint ptr %path to i32
  %conv4 = zext i32 %1 to i64
  %2 = ptrtoint ptr %now to i32
  %conv8 = zext i32 %2 to i64
  %conv12 = zext i32 %old_inuse to i64
  %conv16 = zext i32 %new_inuse to i64
  tail call void @bpf_trace_run7(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8, i64 noundef %conv12, i64 noundef %conv16, i64 noundef %old_hw_inuse, i64 noundef %new_hw_inuse) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_iocost_ioc_vrate_adj(ptr noundef %__data, ptr noundef %ioc, i64 noundef %new_vrate, ptr noundef %missed_ppm, i32 noundef %rq_wait_pct, i32 noundef %nr_lagging, i32 noundef %nr_shortages) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  %0 = ptrtoint ptr %ioc to i32
  %conv = zext i32 %0 to i64
  %1 = ptrtoint ptr %missed_ppm to i32
  %conv7 = zext i32 %1 to i64
  %conv11 = zext i32 %rq_wait_pct to i64
  %conv15 = zext i32 %nr_lagging to i64
  %conv19 = zext i32 %nr_shortages to i64
  tail call void @bpf_trace_run6(ptr noundef %__data, i64 noundef %conv, i64 noundef %new_vrate, i64 noundef %conv7, i64 noundef %conv11, i64 noundef %conv15, i64 noundef %conv19) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_iocost_iocg_forgive_debt(ptr noundef %__data, ptr noundef %iocg, ptr noundef %path, ptr noundef %now, i32 noundef %usage_pct, i64 noundef %old_debt, i64 noundef %new_debt, i64 noundef %old_delay, i64 noundef %new_delay) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  %0 = ptrtoint ptr %iocg to i32
  %conv = zext i32 %0 to i64
  %1 = ptrtoint ptr %path to i32
  %conv4 = zext i32 %1 to i64
  %2 = ptrtoint ptr %now to i32
  %conv8 = zext i32 %2 to i64
  %conv12 = zext i32 %usage_pct to i64
  tail call void @bpf_trace_run8(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8, i64 noundef %conv12, i64 noundef %old_debt, i64 noundef %new_debt, i64 noundef %old_delay, i64 noundef %new_delay) #17
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ioc_exit() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @blkcg_policy_unregister(ptr noundef nonnull @blkcg_policy_iocost) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blkcg_policy_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ioc_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @blkcg_policy_register(ptr noundef nonnull @blkcg_policy_iocost) #17
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_event_buffer_reserve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_buffer_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_iocost_iocg_state(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %__data_loc_devname = getelementptr inbounds %struct.trace_event_raw_iocost_iocg_state, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %__data_loc_devname to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %__data_loc_devname, align 8
  %and = and i32 %3, 65535
  %add.ptr = getelementptr i8, ptr %1, i32 %and
  %__data_loc_cgroup = getelementptr inbounds %struct.trace_event_raw_iocost_iocg_state, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %__data_loc_cgroup to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %__data_loc_cgroup, align 4
  %and1 = and i32 %5, 65535
  %add.ptr2 = getelementptr i8, ptr %1, i32 %and1
  %now = getelementptr inbounds %struct.trace_event_raw_iocost_iocg_state, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %now to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %now, align 8
  %vnow = getelementptr inbounds %struct.trace_event_raw_iocost_iocg_state, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %vnow to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %vnow, align 8
  %vrate = getelementptr inbounds %struct.trace_event_raw_iocost_iocg_state, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %vrate to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %vrate, align 8
  %last_period = getelementptr inbounds %struct.trace_event_raw_iocost_iocg_state, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %last_period to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %last_period, align 8
  %cur_period = getelementptr inbounds %struct.trace_event_raw_iocost_iocg_state, ptr %1, i32 0, i32 7
  %14 = ptrtoint ptr %cur_period to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %cur_period, align 8
  %vtime = getelementptr inbounds %struct.trace_event_raw_iocost_iocg_state, ptr %1, i32 0, i32 8
  %16 = ptrtoint ptr %vtime to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %vtime, align 8
  %inuse = getelementptr inbounds %struct.trace_event_raw_iocost_iocg_state, ptr %1, i32 0, i32 10
  %18 = ptrtoint ptr %inuse to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %inuse, align 4
  %weight = getelementptr inbounds %struct.trace_event_raw_iocost_iocg_state, ptr %1, i32 0, i32 9
  %20 = ptrtoint ptr %weight to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %weight, align 8
  %hweight_inuse = getelementptr inbounds %struct.trace_event_raw_iocost_iocg_state, ptr %1, i32 0, i32 12
  %22 = ptrtoint ptr %hweight_inuse to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %hweight_inuse, align 8
  %hweight_active = getelementptr inbounds %struct.trace_event_raw_iocost_iocg_state, ptr %1, i32 0, i32 11
  %24 = ptrtoint ptr %hweight_active to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %hweight_active, align 8
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.17, ptr noundef %add.ptr, ptr noundef %add.ptr2, i64 noundef %7, i64 noundef %9, i64 noundef %11, i64 noundef %13, i64 noundef %15, i64 noundef %17, i32 noundef %19, i32 noundef %21, i64 noundef %23, i64 noundef %25) #17
  %call3 = tail call i32 @trace_handle_return(ptr noundef %seq) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_raw_output_prep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_handle_return(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_iocg_inuse_update(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %__data_loc_devname = getelementptr inbounds %struct.trace_event_raw_iocg_inuse_update, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %__data_loc_devname to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %__data_loc_devname, align 8
  %and = and i32 %3, 65535
  %add.ptr = getelementptr i8, ptr %1, i32 %and
  %__data_loc_cgroup = getelementptr inbounds %struct.trace_event_raw_iocg_inuse_update, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %__data_loc_cgroup to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %__data_loc_cgroup, align 4
  %and1 = and i32 %5, 65535
  %add.ptr2 = getelementptr i8, ptr %1, i32 %and1
  %now = getelementptr inbounds %struct.trace_event_raw_iocg_inuse_update, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %now to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %now, align 8
  %old_inuse = getelementptr inbounds %struct.trace_event_raw_iocg_inuse_update, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %old_inuse to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %old_inuse, align 8
  %new_inuse = getelementptr inbounds %struct.trace_event_raw_iocg_inuse_update, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %new_inuse to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %new_inuse, align 4
  %old_hweight_inuse = getelementptr inbounds %struct.trace_event_raw_iocg_inuse_update, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %old_hweight_inuse to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %old_hweight_inuse, align 8
  %new_hweight_inuse = getelementptr inbounds %struct.trace_event_raw_iocg_inuse_update, ptr %1, i32 0, i32 7
  %14 = ptrtoint ptr %new_hweight_inuse to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %new_hweight_inuse, align 8
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.22, ptr noundef %add.ptr, ptr noundef %add.ptr2, i64 noundef %7, i32 noundef %9, i32 noundef %11, i64 noundef %13, i64 noundef %15) #17
  %call3 = tail call i32 @trace_handle_return(ptr noundef %seq) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_iocost_ioc_vrate_adj(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %__data_loc_devname = getelementptr inbounds %struct.trace_event_raw_iocost_ioc_vrate_adj, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %__data_loc_devname to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %__data_loc_devname, align 8
  %and = and i32 %3, 65535
  %add.ptr = getelementptr i8, ptr %1, i32 %and
  %old_vrate = getelementptr inbounds %struct.trace_event_raw_iocost_ioc_vrate_adj, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %old_vrate to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %old_vrate, align 8
  %new_vrate = getelementptr inbounds %struct.trace_event_raw_iocost_ioc_vrate_adj, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %new_vrate to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %new_vrate, align 8
  %busy_level = getelementptr inbounds %struct.trace_event_raw_iocost_ioc_vrate_adj, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %busy_level to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %busy_level, align 8
  %read_missed_ppm = getelementptr inbounds %struct.trace_event_raw_iocost_ioc_vrate_adj, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %read_missed_ppm to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %read_missed_ppm, align 4
  %write_missed_ppm = getelementptr inbounds %struct.trace_event_raw_iocost_ioc_vrate_adj, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %write_missed_ppm to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %write_missed_ppm, align 8
  %rq_wait_pct = getelementptr inbounds %struct.trace_event_raw_iocost_ioc_vrate_adj, ptr %1, i32 0, i32 7
  %14 = ptrtoint ptr %rq_wait_pct to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rq_wait_pct, align 4
  %nr_lagging = getelementptr inbounds %struct.trace_event_raw_iocost_ioc_vrate_adj, ptr %1, i32 0, i32 8
  %16 = ptrtoint ptr %nr_lagging to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nr_lagging, align 8
  %nr_shortages = getelementptr inbounds %struct.trace_event_raw_iocost_ioc_vrate_adj, ptr %1, i32 0, i32 9
  %18 = ptrtoint ptr %nr_shortages to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %nr_shortages, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.32, ptr noundef %add.ptr, i64 noundef %5, i64 noundef %7, i32 noundef %9, i32 noundef %11, i32 noundef %13, i32 noundef %15, i32 noundef %17, i32 noundef %19) #17
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_iocost_iocg_forgive_debt(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %__data_loc_devname = getelementptr inbounds %struct.trace_event_raw_iocost_iocg_forgive_debt, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %__data_loc_devname to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %__data_loc_devname, align 8
  %and = and i32 %3, 65535
  %add.ptr = getelementptr i8, ptr %1, i32 %and
  %__data_loc_cgroup = getelementptr inbounds %struct.trace_event_raw_iocost_iocg_forgive_debt, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %__data_loc_cgroup to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %__data_loc_cgroup, align 4
  %and1 = and i32 %5, 65535
  %add.ptr2 = getelementptr i8, ptr %1, i32 %and1
  %now = getelementptr inbounds %struct.trace_event_raw_iocost_iocg_forgive_debt, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %now to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %now, align 8
  %vnow = getelementptr inbounds %struct.trace_event_raw_iocost_iocg_forgive_debt, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %vnow to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %vnow, align 8
  %usage_pct = getelementptr inbounds %struct.trace_event_raw_iocost_iocg_forgive_debt, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %usage_pct to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %usage_pct, align 8
  %old_debt = getelementptr inbounds %struct.trace_event_raw_iocost_iocg_forgive_debt, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %old_debt to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %old_debt, align 8
  %new_debt = getelementptr inbounds %struct.trace_event_raw_iocost_iocg_forgive_debt, ptr %1, i32 0, i32 7
  %14 = ptrtoint ptr %new_debt to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %new_debt, align 8
  %old_delay = getelementptr inbounds %struct.trace_event_raw_iocost_iocg_forgive_debt, ptr %1, i32 0, i32 8
  %16 = ptrtoint ptr %old_delay to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %old_delay, align 8
  %new_delay = getelementptr inbounds %struct.trace_event_raw_iocost_iocg_forgive_debt, ptr %1, i32 0, i32 9
  %18 = ptrtoint ptr %new_delay to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %new_delay, align 8
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.38, ptr noundef %add.ptr, ptr noundef %add.ptr2, i64 noundef %7, i64 noundef %9, i32 noundef %11, i64 noundef %13, i64 noundef %15, i64 noundef %17, i64 noundef %19) #17
  %call3 = tail call i32 @trace_handle_return(ptr noundef %seq) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @perf_trace_buf_alloc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_trace_run_bpf_submit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.frameaddress.p0(i32 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run6(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run7(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run8(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal noalias ptr @ioc_cpd_alloc(i32 noundef %gfp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %or.i = or i32 %gfp, 256
  %and.i.i.i = and i32 %gfp, 4194321
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp.i19.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp.i19.i.i, label %entry.kzalloc.exit_crit_edge, label %if.end.i20.i.i, !prof !285

entry.kzalloc.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %kzalloc.exit

if.end.i20.i.i:                                   ; preds = %entry
  %and2.i.i.i = and i32 %gfp, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %if.end5.i.i.i, label %if.end.i20.i.i.kzalloc.exit_crit_edge

if.end.i20.i.i.kzalloc.exit_crit_edge:            ; preds = %if.end.i20.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %kzalloc.exit

if.end5.i.i.i:                                    ; preds = %if.end.i20.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %and6.i.i.i = and i32 %gfp, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i.i)
  %tobool7.not.i.i.i = icmp eq i32 %and6.i.i.i, 0
  %..i.i.i = select i1 %tobool7.not.i.i.i, i32 1, i32 2
  br label %kzalloc.exit

kzalloc.exit:                                     ; preds = %if.end5.i.i.i, %if.end.i20.i.i.kzalloc.exit_crit_edge, %entry.kzalloc.exit_crit_edge
  %retval.0.i21.i.i = phi i32 [ 0, %entry.kzalloc.exit_crit_edge ], [ 3, %if.end.i20.i.i.kzalloc.exit_crit_edge ], [ %..i.i.i, %if.end5.i.i.i ]
  %arrayidx6.i.i = getelementptr [4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %retval.0.i21.i.i, i32 7
  %0 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx6.i.i, align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef %or.i, i32 noundef 12) #22
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %kzalloc.exit.cleanup_crit_edge, label %if.end

kzalloc.exit.cleanup_crit_edge:                   ; preds = %kzalloc.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %kzalloc.exit
  call void @__sanitizer_cov_trace_pc() #19
  %dfl_weight = getelementptr inbounds %struct.ioc_cgrp, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %dfl_weight to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 6553600, ptr %dfl_weight, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %kzalloc.exit.cleanup_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ioc_cpd_free(ptr noundef %cpd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %cpd) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ioc_pd_alloc(i32 noundef %gfp, ptr nocapture noundef readnone %q, ptr nocapture noundef readonly %blkcg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %or.i = or i32 %gfp, 256
  %0 = ptrtoint ptr %blkcg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %blkcg, align 8
  %level = getelementptr inbounds %struct.cgroup, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %level to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %level, align 4
  %add = add i32 %3, 1
  %4 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add, i32 4) #17
  %5 = extractvalue { i32, i1 } %4, 1
  %6 = extractvalue { i32, i1 } %4, 0
  %spec.select.i = tail call i32 @llvm.uadd.sat.i32(i32 %6, i32 424) #17
  %retval.0.i = select i1 %5, i32 -1, i32 %spec.select.i
  %call.i4.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %retval.0.i, i32 noundef %or.i) #23
  %tobool.not = icmp eq ptr %call.i4.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call noalias ptr @__alloc_percpu_gfp(i32 noundef 8, i32 noundef 8, i32 noundef %gfp) #23
  %pcpu_stat = getelementptr inbounds %struct.ioc_gq, ptr %call.i4.i.i, i32 0, i32 29
  %7 = ptrtoint ptr %pcpu_stat to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call2, ptr %pcpu_stat, align 16
  %tobool4.not = icmp eq ptr %call2, null
  br i1 %tobool4.not, label %if.then5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @kfree(ptr noundef nonnull %call.i4.i.i) #17
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then5 ], [ null, %entry.cleanup_crit_edge ], [ %call.i4.i.i, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ioc_pd_init(ptr noundef %pd) #0 align 64 {
entry:
  %now = alloca %struct.ioc_now, align 8
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %pd, null
  br i1 %tobool.not.i, label %entry.pd_to_blkg.exit_crit_edge, label %cond.true.i

entry.pd_to_blkg.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %pd_to_blkg.exit

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %0 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pd, align 4
  br label %pd_to_blkg.exit

pd_to_blkg.exit:                                  ; preds = %cond.true.i, %entry.pd_to_blkg.exit_crit_edge
  %cond.i = phi ptr [ %1, %cond.true.i ], [ null, %entry.pd_to_blkg.exit_crit_edge ]
  %2 = ptrtoint ptr %cond.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cond.i, align 8
  %rq_qos.i.i = getelementptr inbounds %struct.request_queue, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %rq_qos.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %rqos.01.i.i = load ptr, ptr %rq_qos.i.i, align 4
  %tobool.not2.i.i = icmp eq ptr %rqos.01.i.i, null
  br i1 %tobool.not2.i.i, label %pd_to_blkg.exit.q_to_ioc.exit_crit_edge, label %pd_to_blkg.exit.for.body.i.i_crit_edge

pd_to_blkg.exit.for.body.i.i_crit_edge:           ; preds = %pd_to_blkg.exit
  br label %for.body.i.i

pd_to_blkg.exit.q_to_ioc.exit_crit_edge:          ; preds = %pd_to_blkg.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %q_to_ioc.exit

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %pd_to_blkg.exit.for.body.i.i_crit_edge
  %rqos.03.i.i = phi ptr [ %rqos.0.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %rqos.01.i.i, %pd_to_blkg.exit.for.body.i.i_crit_edge ]
  %id1.i.i = getelementptr inbounds %struct.rq_qos, ptr %rqos.03.i.i, i32 0, i32 2
  %5 = ptrtoint ptr %id1.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %id1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %cmp.i.i = icmp eq i32 %6, 2
  br i1 %cmp.i.i, label %for.body.i.i.q_to_ioc.exit_crit_edge, label %for.inc.i.i

for.body.i.i.q_to_ioc.exit_crit_edge:             ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %q_to_ioc.exit

for.inc.i.i:                                      ; preds = %for.body.i.i
  %next.i.i = getelementptr inbounds %struct.rq_qos, ptr %rqos.03.i.i, i32 0, i32 3
  %7 = ptrtoint ptr %next.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %rqos.0.i.i = load ptr, ptr %next.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %rqos.0.i.i, null
  br i1 %tobool.not.i.i, label %for.inc.i.i.q_to_ioc.exit_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i.i

for.inc.i.i.q_to_ioc.exit_crit_edge:              ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %q_to_ioc.exit

q_to_ioc.exit:                                    ; preds = %for.inc.i.i.q_to_ioc.exit_crit_edge, %for.body.i.i.q_to_ioc.exit_crit_edge, %pd_to_blkg.exit.q_to_ioc.exit_crit_edge
  %rqos.0.lcssa.i.i = phi ptr [ null, %pd_to_blkg.exit.q_to_ioc.exit_crit_edge ], [ %rqos.03.i.i, %for.body.i.i.q_to_ioc.exit_crit_edge ], [ null, %for.inc.i.i.q_to_ioc.exit_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %now) #17
  %8 = getelementptr inbounds %struct.ioc_now, ptr %now, i32 0, i32 2
  %9 = call ptr @memset(ptr %now, i32 255, i32 32)
  call fastcc void @ioc_now(ptr noundef %rqos.0.lcssa.i.i, ptr noundef nonnull %now)
  %ioc4 = getelementptr inbounds %struct.ioc_gq, ptr %pd, i32 0, i32 1
  %10 = ptrtoint ptr %ioc4 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %rqos.0.lcssa.i.i, ptr %ioc4, align 8
  %vtime = getelementptr inbounds %struct.ioc_gq, ptr %pd, i32 0, i32 9
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %8, align 8
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %vtime, i32 noundef 8) #17
  tail call void @generic_atomic64_set(ptr noundef %vtime, i64 noundef %12) #17
  %done_vtime = getelementptr inbounds %struct.ioc_gq, ptr %pd, i32 0, i32 10
  %call.i.i44 = tail call zeroext i1 @__kasan_check_write(ptr noundef %done_vtime, i32 noundef 8) #17
  tail call void @generic_atomic64_set(ptr noundef %done_vtime, i64 noundef %12) #17
  %active_period = getelementptr inbounds %struct.ioc_gq, ptr %pd, i32 0, i32 14
  %cur_period = getelementptr inbounds %struct.ioc, ptr %rqos.0.lcssa.i.i, i32 0, i32 19
  %call.i.i45 = tail call zeroext i1 @__kasan_check_read(ptr noundef %cur_period, i32 noundef 8) #17
  %call.i = tail call i64 @generic_atomic64_read(ptr noundef %cur_period) #17
  %call.i.i46 = tail call zeroext i1 @__kasan_check_write(ptr noundef %active_period, i32 noundef 8) #17
  tail call void @generic_atomic64_set(ptr noundef %active_period, i64 noundef %call.i) #17
  %active_list = getelementptr inbounds %struct.ioc_gq, ptr %pd, i32 0, i32 15
  %13 = ptrtoint ptr %active_list to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %active_list, ptr %active_list, align 4
  %prev.i = getelementptr inbounds %struct.ioc_gq, ptr %pd, i32 0, i32 15, i32 1
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %active_list, ptr %prev.i, align 4
  %walk_list = getelementptr inbounds %struct.ioc_gq, ptr %pd, i32 0, i32 24
  %15 = ptrtoint ptr %walk_list to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %walk_list, ptr %walk_list, align 4
  %prev.i47 = getelementptr inbounds %struct.ioc_gq, ptr %pd, i32 0, i32 24, i32 1
  %16 = ptrtoint ptr %prev.i47 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %walk_list, ptr %prev.i47, align 4
  %surplus_list = getelementptr inbounds %struct.ioc_gq, ptr %pd, i32 0, i32 25
  %17 = ptrtoint ptr %surplus_list to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %surplus_list, ptr %surplus_list, align 4
  %prev.i48 = getelementptr inbounds %struct.ioc_gq, ptr %pd, i32 0, i32 25, i32 1
  %18 = ptrtoint ptr %prev.i48 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %surplus_list, ptr %prev.i48, align 4
  %hweight_active = getelementptr inbounds %struct.ioc_gq, ptr %pd, i32 0, i32 20
  %19 = ptrtoint ptr %hweight_active to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 65536, ptr %hweight_active, align 4
  %hweight_inuse = getelementptr inbounds %struct.ioc_gq, ptr %pd, i32 0, i32 21
  %20 = ptrtoint ptr %hweight_inuse to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 65536, ptr %hweight_inuse, align 8
  %waitq = getelementptr inbounds %struct.ioc_gq, ptr %pd, i32 0, i32 26
  tail call void @__init_waitqueue_head(ptr noundef %waitq, ptr noundef nonnull @.str.86, ptr noundef nonnull @ioc_pd_init.__key) #17
  %waitq_timer = getelementptr inbounds %struct.ioc_gq, ptr %pd, i32 0, i32 27
  tail call void @hrtimer_init(ptr noundef %waitq_timer, i32 noundef 1, i32 noundef 0) #17
  %function = getelementptr inbounds %struct.ioc_gq, ptr %pd, i32 0, i32 27, i32 2
  %21 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @iocg_waitq_timer_fn, ptr %function, align 8
  %blkcg = getelementptr inbounds %struct.blkcg_gq, ptr %cond.i, i32 0, i32 3
  %22 = ptrtoint ptr %blkcg to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %blkcg, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 8
  %level = getelementptr inbounds %struct.cgroup, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %level to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %level, align 4
  %level8 = getelementptr inbounds %struct.ioc_gq, ptr %pd, i32 0, i32 38
  %28 = ptrtoint ptr %level8 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %level8, align 8
  %tobool.not50 = icmp eq ptr %cond.i, null
  br i1 %tobool.not50, label %q_to_ioc.exit.do.body12_crit_edge, label %q_to_ioc.exit.blkg_to_iocg.exit_crit_edge

q_to_ioc.exit.blkg_to_iocg.exit_crit_edge:        ; preds = %q_to_ioc.exit
  br label %blkg_to_iocg.exit

q_to_ioc.exit.do.body12_crit_edge:                ; preds = %q_to_ioc.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body12

blkg_to_iocg.exit:                                ; preds = %blkg_to_iocg.exit.blkg_to_iocg.exit_crit_edge, %q_to_ioc.exit.blkg_to_iocg.exit_crit_edge
  %tblkg.051 = phi ptr [ %36, %blkg_to_iocg.exit.blkg_to_iocg.exit_crit_edge ], [ %cond.i, %q_to_ioc.exit.blkg_to_iocg.exit_crit_edge ]
  %29 = load i32, ptr @blkcg_policy_iocost, align 4
  %arrayidx.i.i = getelementptr %struct.blkcg_gq, ptr %tblkg.051, i32 0, i32 9, i32 %29
  %30 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx.i.i, align 4
  %level10 = getelementptr inbounds %struct.ioc_gq, ptr %31, i32 0, i32 38
  %32 = ptrtoint ptr %level10 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %level10, align 8
  %arrayidx = getelementptr %struct.ioc_gq, ptr %pd, i32 0, i32 39, i32 %33
  %34 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %31, ptr %arrayidx, align 4
  %parent = getelementptr inbounds %struct.blkcg_gq, ptr %tblkg.051, i32 0, i32 4
  %35 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %parent, align 8
  %tobool.not = icmp eq ptr %36, null
  br i1 %tobool.not, label %blkg_to_iocg.exit.do.body12_crit_edge, label %blkg_to_iocg.exit.blkg_to_iocg.exit_crit_edge

blkg_to_iocg.exit.blkg_to_iocg.exit_crit_edge:    ; preds = %blkg_to_iocg.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %blkg_to_iocg.exit

blkg_to_iocg.exit.do.body12_crit_edge:            ; preds = %blkg_to_iocg.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body12

do.body12:                                        ; preds = %blkg_to_iocg.exit.do.body12_crit_edge, %q_to_ioc.exit.do.body12_crit_edge
  %lock = getelementptr inbounds %struct.ioc, ptr %rqos.0.lcssa.i.i, i32 0, i32 8
  %call14 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #17
  call fastcc void @weight_updated(ptr noundef %pd, ptr noundef nonnull %now)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call14) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %now) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ioc_pd_free(ptr noundef %pd) #0 align 64 {
entry:
  %now = alloca %struct.ioc_now, align 8
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %ioc1 = getelementptr inbounds %struct.ioc_gq, ptr %pd, i32 0, i32 1
  %0 = ptrtoint ptr %ioc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioc1, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end116_crit_edge, label %do.body2

entry.if.end116_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end116

do.body2:                                         ; preds = %entry
  %lock = getelementptr inbounds %struct.ioc, ptr %1, i32 0, i32 8
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #17
  %active_list = getelementptr inbounds %struct.ioc_gq, ptr %pd, i32 0, i32 15
  %2 = ptrtoint ptr %active_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %active_list, align 4
  %cmp.i.not = icmp eq ptr %3, %active_list
  br i1 %cmp.i.not, label %do.body2.if.end_crit_edge, label %if.then9

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then9:                                         ; preds = %do.body2
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %now) #17
  %4 = call ptr @memset(ptr %now, i32 255, i32 32)
  call fastcc void @ioc_now(ptr noundef nonnull %1, ptr noundef nonnull %now)
  call fastcc void @__propagate_weights(ptr noundef %pd, i32 noundef 0, i32 noundef 0, i1 noundef zeroext false, ptr noundef nonnull %now) #17
  %5 = ptrtoint ptr %ioc1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ioc1, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %7 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i.i, label %if.then9.if.end.i.i_crit_edge, label %land.rhs.i.i

if.then9.if.end.i.i_crit_edge:                    ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i.i

land.rhs.i.i:                                     ; preds = %if.then9
  %dep_map.i.i = getelementptr inbounds %struct.ioc, ptr %6, i32 0, i32 8, i32 0, i32 0, i32 4
  %call.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i, i32 noundef -1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %cmp.not.i.i, label %do.end.i.i, label %land.rhs.i.i.if.end.i.i_crit_edge, !prof !286

land.rhs.i.i.if.end.i.i_crit_edge:                ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i.i

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.44, i32 noundef 1129, i32 noundef 9, ptr noundef null) #17
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end.i.i, %land.rhs.i.i.if.end.i.i_crit_edge, %if.then9.if.end.i.i_crit_edge
  %weights_updated.i.i = getelementptr inbounds %struct.ioc, ptr %6, i32 0, i32 21
  %8 = ptrtoint ptr %weights_updated.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %weights_updated.i.i, align 4, !range !288
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool24.not.i.i = icmp eq i8 %9, 0
  br i1 %tobool24.not.i.i, label %if.end.i.i.propagate_weights.exit_crit_edge, label %do.end29.i.i

if.end.i.i.propagate_weights.exit_crit_edge:      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %propagate_weights.exit

do.end29.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !289
  %hweight_gen.i.i = getelementptr inbounds %struct.ioc, ptr %6, i32 0, i32 22
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %hweight_gen.i.i, i32 noundef 4) #17
  tail call void @llvm.prefetch.p0(ptr %hweight_gen.i.i, i32 1, i32 3, i32 1) #17
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %hweight_gen.i.i, ptr %hweight_gen.i.i, i32 1, ptr elementtype(i32) %hweight_gen.i.i) #17, !srcloc !290
  %11 = ptrtoint ptr %weights_updated.i.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %weights_updated.i.i, align 4
  br label %propagate_weights.exit

propagate_weights.exit:                           ; preds = %do.end29.i.i, %if.end.i.i.propagate_weights.exit_crit_edge
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %active_list) #17
  br i1 %call.i.i, label %if.end.i.i135, label %propagate_weights.exit.list_del_init.exit_crit_edge

propagate_weights.exit.list_del_init.exit_crit_edge: ; preds = %propagate_weights.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %list_del_init.exit

if.end.i.i135:                                    ; preds = %propagate_weights.exit
  call void @__sanitizer_cov_trace_pc() #19
  %prev.i.i = getelementptr inbounds %struct.ioc_gq, ptr %pd, i32 0, i32 15, i32 1
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i.i, align 4
  %14 = ptrtoint ptr %active_list to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %active_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev1.i.i.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %15, ptr %13, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i135, %propagate_weights.exit.list_del_init.exit_crit_edge
  %18 = ptrtoint ptr %active_list to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %active_list, ptr %active_list, align 4
  %prev.i3.i = getelementptr inbounds %struct.ioc_gq, ptr %pd, i32 0, i32 15, i32 1
  %19 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %active_list, ptr %prev.i3.i, align 4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %now) #17
  br label %if.end

if.end:                                           ; preds = %list_del_init.exit, %do.body2.if.end_crit_edge
  %walk_list = getelementptr inbounds %struct.ioc_gq, ptr %pd, i32 0, i32 24
  %20 = ptrtoint ptr %walk_list to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %walk_list, align 4
  %cmp.i136.not = icmp eq ptr %21, %walk_list
  br i1 %cmp.i136.not, label %if.end.if.end48_crit_edge, label %land.rhs

if.end.if.end48_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end48

land.rhs:                                         ; preds = %if.end
  %.b134 = load i1, ptr @ioc_pd_free.__already_done, align 1
  br i1 %.b134, label %land.rhs.if.end48_crit_edge, label %if.then22, !prof !285

land.rhs.if.end48_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end48

if.then22:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @ioc_pd_free.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.44, i32 noundef 2987, i32 noundef 9, ptr noundef null) #17
  br label %if.end48

if.end48:                                         ; preds = %if.then22, %land.rhs.if.end48_crit_edge, %if.end.if.end48_crit_edge
  %surplus_list = getelementptr inbounds %struct.ioc_gq, ptr %pd, i32 0, i32 25
  %22 = ptrtoint ptr %surplus_list to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %surplus_list, align 4
  %cmp.i138.not = icmp eq ptr %23, %surplus_list
  br i1 %cmp.i138.not, label %if.end48.if.end106_crit_edge, label %land.rhs68

if.end48.if.end106_crit_edge:                     ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end106

land.rhs68:                                       ; preds = %if.end48
  %.b132133 = load i1, ptr @ioc_pd_free.__already_done.87, align 1
  br i1 %.b132133, label %land.rhs68.if.end106_crit_edge, label %if.then79, !prof !285

land.rhs68.if.end106_crit_edge:                   ; preds = %land.rhs68
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end106

if.then79:                                        ; preds = %land.rhs68
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @ioc_pd_free.__already_done.87, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.44, i32 noundef 2988, i32 noundef 9, ptr noundef null) #17
  br label %if.end106

if.end106:                                        ; preds = %if.then79, %land.rhs68.if.end106_crit_edge, %if.end48.if.end106_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #17
  %waitq_timer = getelementptr inbounds %struct.ioc_gq, ptr %pd, i32 0, i32 27
  %call115 = tail call i32 @hrtimer_cancel(ptr noundef %waitq_timer) #17
  br label %if.end116

if.end116:                                        ; preds = %if.end106, %entry.if.end116_crit_edge
  %pcpu_stat = getelementptr inbounds %struct.ioc_gq, ptr %pd, i32 0, i32 29
  %24 = ptrtoint ptr %pcpu_stat to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pcpu_stat, align 8
  tail call void @free_percpu(ptr noundef %25) #17
  tail call void @kfree(ptr noundef %pd) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @ioc_pd_stat(ptr nocapture noundef readonly %pd, ptr noundef %s) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %ioc1 = getelementptr inbounds %struct.ioc_gq, ptr %pd, i32 0, i32 1
  %0 = ptrtoint ptr %ioc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioc1, align 8
  %enabled = getelementptr inbounds %struct.ioc, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %enabled, align 4, !range !288
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %level = getelementptr inbounds %struct.ioc_gq, ptr %pd, i32 0, i32 38
  %4 = ptrtoint ptr %level to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %level, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %if.then2, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end5

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %vtime_base_rate = getelementptr inbounds %struct.ioc, ptr %1, i32 0, i32 14
  %6 = ptrtoint ptr %vtime_base_rate to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %vtime_base_rate, align 8
  %mul = mul i64 %7, 10000
  %add = add i64 %mul, 68719
  %call3 = tail call i64 @div64_u64(i64 noundef %add, i64 noundef 137438) #17
  %conv = trunc i64 %call3 to i32
  %conv.frozen = freeze i32 %conv
  %div4 = udiv i32 %conv.frozen, 100
  %8 = mul i32 %div4, 100
  %rem.decomposed = sub i32 %conv.frozen, %8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.88, i32 noundef %div4, i32 noundef %rem.decomposed) #17
  br label %if.end5

if.end5:                                          ; preds = %if.then2, %if.end.if.end5_crit_edge
  %last_stat = getelementptr inbounds %struct.ioc_gq, ptr %pd, i32 0, i32 32
  %9 = ptrtoint ptr %last_stat to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %last_stat, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.89, i64 noundef %10) #17
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @blkcg_debug_stats to i32))
  %11 = load i8, ptr @blkcg_debug_stats, align 1, !range !288
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool6.not = icmp eq i8 %11, 0
  br i1 %tobool6.not, label %if.end5.cleanup_crit_edge, label %if.then7

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #19
  %wait_us = getelementptr inbounds %struct.ioc_gq, ptr %pd, i32 0, i32 32, i32 1
  %12 = ptrtoint ptr %wait_us to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %wait_us, align 8
  %indebt_us = getelementptr inbounds %struct.ioc_gq, ptr %pd, i32 0, i32 32, i32 2
  %14 = ptrtoint ptr %indebt_us to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %indebt_us, align 8
  %indelay_us = getelementptr inbounds %struct.ioc_gq, ptr %pd, i32 0, i32 32, i32 3
  %16 = ptrtoint ptr %indelay_us to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %indelay_us, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.90, i64 noundef %13, i64 noundef %15, i64 noundef %17) #17
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %if.end5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %18 = xor i1 %tobool.not, true
  ret i1 %18
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ioc_weight_show(ptr noundef %sf, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.seq_file, ptr %sf, i32 0, i32 11
  %0 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private.i, align 8
  %call.i = tail call ptr @of_css(ptr noundef %1) #17
  %tobool.not.i.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i.i, label %entry.blkcg_to_iocc.exit_crit_edge, label %cond.true.i.i

entry.blkcg_to_iocc.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %blkcg_to_iocc.exit

cond.true.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %2 = load i32, ptr @blkcg_policy_iocost, align 4
  %arrayidx.i.i = getelementptr %struct.blkcg, ptr %call.i, i32 0, i32 6, i32 %2
  %3 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx.i.i, align 4
  br label %blkcg_to_iocc.exit

blkcg_to_iocc.exit:                               ; preds = %cond.true.i.i, %entry.blkcg_to_iocc.exit_crit_edge
  %cond.i.i = phi ptr [ %4, %cond.true.i.i ], [ null, %entry.blkcg_to_iocc.exit_crit_edge ]
  %dfl_weight = getelementptr inbounds %struct.ioc_cgrp, ptr %cond.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %dfl_weight to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dfl_weight, align 4
  %div8 = lshr i32 %6, 16
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.39, i32 noundef %div8) #17
  %7 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %private.i, align 8
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %priv.i.i = getelementptr inbounds %struct.kernfs_node, ptr %10, i32 0, i32 9
  %11 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %priv.i.i, align 8
  %private = getelementptr inbounds %struct.cftype, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %private, align 4
  tail call void @blkcg_print_blkgs(ptr noundef %sf, ptr noundef %call.i, ptr noundef nonnull @ioc_weight_prfill, ptr noundef nonnull @blkcg_policy_iocost, i32 noundef %14, i1 noundef zeroext false) #17
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ioc_weight_write(ptr noundef %of, ptr noundef %buf, i32 noundef %nbytes, i64 noundef %off) #0 align 64 {
entry:
  %ctx = alloca %struct.blkg_conf_ctx, align 4
  %now = alloca %struct.ioc_now, align 8
  %v = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @of_css(ptr noundef %of) #17
  %tobool.not.i.i = icmp eq ptr %call, null
  br i1 %tobool.not.i.i, label %entry.blkcg_to_iocc.exit_crit_edge, label %cond.true.i.i

entry.blkcg_to_iocc.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %blkcg_to_iocc.exit

cond.true.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %0 = load i32, ptr @blkcg_policy_iocost, align 4
  %arrayidx.i.i = getelementptr %struct.blkcg, ptr %call, i32 0, i32 6, i32 %0
  %1 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx.i.i, align 4
  br label %blkcg_to_iocc.exit

blkcg_to_iocc.exit:                               ; preds = %cond.true.i.i, %entry.blkcg_to_iocc.exit_crit_edge
  %cond.i.i = phi ptr [ %2, %cond.true.i.i ], [ null, %entry.blkcg_to_iocc.exit_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %ctx) #17
  %3 = ptrtoint ptr %ctx to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %ctx, align 4, !annotation !287
  %4 = getelementptr inbounds %struct.blkg_conf_ctx, ptr %ctx, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 -1 to ptr), ptr %4, align 4, !annotation !287
  %6 = getelementptr inbounds %struct.blkg_conf_ctx, ptr %ctx, i32 0, i32 2
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 -1 to ptr), ptr %6, align 4, !annotation !287
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %now) #17
  %8 = call ptr @memset(ptr %now, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v) #17
  %9 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %v, align 4, !annotation !287
  %call3 = tail call ptr @strchr(ptr noundef %buf, i32 noundef 58)
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.then, label %if.end35

if.then:                                          ; preds = %blkcg_to_iocc.exit
  %call4 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %buf, ptr noundef nonnull @.str.41, ptr noundef nonnull %v)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

land.lhs.true:                                    ; preds = %if.then
  %call6 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %buf, ptr noundef nonnull @.str.42, ptr noundef nonnull %v)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %land.lhs.true.cleanup62_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

land.lhs.true.cleanup62_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup62

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %if.then.if.end_crit_edge
  %10 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %v, align 4
  %12 = add i32 %11, -10001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -10000, i32 %12)
  %13 = icmp ult i32 %12, -10000
  br i1 %13, label %if.end.cleanup62_crit_edge, label %if.end11

if.end.cleanup62_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup62

if.end11:                                         ; preds = %if.end
  %lock = getelementptr inbounds %struct.blkcg, ptr %call, i32 0, i32 1
  call void @_raw_spin_lock_irq(ptr noundef %lock) #17
  %14 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %v, align 4
  %mul = shl i32 %15, 16
  %dfl_weight = getelementptr inbounds %struct.ioc_cgrp, ptr %cond.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %dfl_weight to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %mul, ptr %dfl_weight, align 4
  %blkg_list = getelementptr inbounds %struct.blkcg, ptr %call, i32 0, i32 5
  %17 = ptrtoint ptr %blkg_list to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %blkg_list, align 8
  %tobool12.not = icmp eq ptr %18, null
  %add.ptr = getelementptr i8, ptr %18, i32 -12
  %tobool14.not106108 = icmp eq ptr %add.ptr, null
  %tobool14.not106 = or i1 %tobool12.not, %tobool14.not106108
  br i1 %tobool14.not106, label %if.end11.for.end_crit_edge, label %if.end11.blkg_to_iocg.exit_crit_edge

if.end11.blkg_to_iocg.exit_crit_edge:             ; preds = %if.end11
  br label %blkg_to_iocg.exit

if.end11.for.end_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

blkg_to_iocg.exit:                                ; preds = %if.end23.blkg_to_iocg.exit_crit_edge, %if.end11.blkg_to_iocg.exit_crit_edge
  %blkg.0107 = phi ptr [ %add.ptr30, %if.end23.blkg_to_iocg.exit_crit_edge ], [ %add.ptr, %if.end11.blkg_to_iocg.exit_crit_edge ]
  %19 = load i32, ptr @blkcg_policy_iocost, align 4
  %arrayidx.i.i96 = getelementptr %struct.blkcg_gq, ptr %blkg.0107, i32 0, i32 9, i32 %19
  %20 = ptrtoint ptr %arrayidx.i.i96 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.i.i96, align 4
  %tobool17.not = icmp eq ptr %21, null
  br i1 %tobool17.not, label %blkg_to_iocg.exit.if.end23_crit_edge, label %if.then18

blkg_to_iocg.exit.if.end23_crit_edge:             ; preds = %blkg_to_iocg.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end23

if.then18:                                        ; preds = %blkg_to_iocg.exit
  call void @__sanitizer_cov_trace_pc() #19
  %ioc = getelementptr inbounds %struct.ioc_gq, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %ioc to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ioc, align 8
  %lock19 = getelementptr inbounds %struct.ioc, ptr %23, i32 0, i32 8
  call void @_raw_spin_lock(ptr noundef %lock19) #17
  %24 = ptrtoint ptr %ioc to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ioc, align 8
  call fastcc void @ioc_now(ptr noundef %25, ptr noundef nonnull %now)
  call fastcc void @weight_updated(ptr noundef nonnull %21, ptr noundef nonnull %now)
  %26 = ptrtoint ptr %ioc to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ioc, align 8
  %lock22 = getelementptr inbounds %struct.ioc, ptr %27, i32 0, i32 8
  call void @_raw_spin_unlock(ptr noundef %lock22) #17
  br label %if.end23

if.end23:                                         ; preds = %if.then18, %blkg_to_iocg.exit.if.end23_crit_edge
  %blkcg_node = getelementptr inbounds %struct.blkcg_gq, ptr %blkg.0107, i32 0, i32 2
  %28 = ptrtoint ptr %blkcg_node to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %blkcg_node, align 4
  %tobool26.not = icmp eq ptr %29, null
  %add.ptr30 = getelementptr i8, ptr %29, i32 -12
  %tobool14.not109 = icmp eq ptr %add.ptr30, null
  %tobool14.not = or i1 %tobool26.not, %tobool14.not109
  br i1 %tobool14.not, label %if.end23.for.end_crit_edge, label %if.end23.blkg_to_iocg.exit_crit_edge

if.end23.blkg_to_iocg.exit_crit_edge:             ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #19
  br label %blkg_to_iocg.exit

if.end23.for.end_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.end:                                          ; preds = %if.end23.for.end_crit_edge, %if.end11.for.end_crit_edge
  call void @_raw_spin_unlock_irq(ptr noundef %lock) #17
  br label %cleanup62

if.end35:                                         ; preds = %blkcg_to_iocc.exit
  %call36 = call i32 @blkg_conf_prep(ptr noundef %call, ptr noundef nonnull @blkcg_policy_iocost, ptr noundef %buf, ptr noundef nonnull %ctx) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end39, label %if.end35.cleanup62_crit_edge

if.end35.cleanup62_crit_edge:                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup62

if.end39:                                         ; preds = %if.end35
  %30 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %4, align 4
  %tobool.not.i.i99 = icmp eq ptr %31, null
  br i1 %tobool.not.i.i99, label %if.end39.blkg_to_iocg.exit103_crit_edge, label %cond.true.i.i101

if.end39.blkg_to_iocg.exit103_crit_edge:          ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #19
  br label %blkg_to_iocg.exit103

cond.true.i.i101:                                 ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #19
  %32 = load i32, ptr @blkcg_policy_iocost, align 4
  %arrayidx.i.i100 = getelementptr %struct.blkcg_gq, ptr %31, i32 0, i32 9, i32 %32
  %33 = ptrtoint ptr %arrayidx.i.i100 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx.i.i100, align 4
  br label %blkg_to_iocg.exit103

blkg_to_iocg.exit103:                             ; preds = %cond.true.i.i101, %if.end39.blkg_to_iocg.exit103_crit_edge
  %cond.i.i102 = phi ptr [ %34, %cond.true.i.i101 ], [ null, %if.end39.blkg_to_iocg.exit103_crit_edge ]
  %35 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %6, align 4
  %call42 = call i32 @strncmp(ptr noundef %36, ptr noundef nonnull dereferenceable(8) @.str.43, i32 noundef 7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.then44, label %if.else

if.then44:                                        ; preds = %blkg_to_iocg.exit103
  call void @__sanitizer_cov_trace_pc() #19
  %37 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %v, align 4
  br label %if.end55

if.else:                                          ; preds = %blkg_to_iocg.exit103
  %call46 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %36, ptr noundef nonnull @.str.42, ptr noundef nonnull %v)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.else.einval_crit_edge, label %if.end49

if.else.einval_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  br label %einval

if.end49:                                         ; preds = %if.else
  %38 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %v, align 4
  %40 = add i32 %39, -10001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -10000, i32 %40)
  %41 = icmp ult i32 %40, -10000
  br i1 %41, label %if.end49.einval_crit_edge, label %if.end49.if.end55_crit_edge

if.end49.if.end55_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end55

if.end49.einval_crit_edge:                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #19
  br label %einval

if.end55:                                         ; preds = %if.end49.if.end55_crit_edge, %if.then44
  %ioc56 = getelementptr inbounds %struct.ioc_gq, ptr %cond.i.i102, i32 0, i32 1
  %42 = ptrtoint ptr %ioc56 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ioc56, align 8
  %lock57 = getelementptr inbounds %struct.ioc, ptr %43, i32 0, i32 8
  call void @_raw_spin_lock(ptr noundef %lock57) #17
  %44 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %v, align 4
  %mul58 = shl i32 %45, 16
  %cfg_weight = getelementptr inbounds %struct.ioc_gq, ptr %cond.i.i102, i32 0, i32 2
  %46 = ptrtoint ptr %cfg_weight to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %mul58, ptr %cfg_weight, align 4
  %47 = ptrtoint ptr %ioc56 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ioc56, align 8
  call fastcc void @ioc_now(ptr noundef %48, ptr noundef nonnull %now)
  call fastcc void @weight_updated(ptr noundef %cond.i.i102, ptr noundef nonnull %now)
  %49 = ptrtoint ptr %ioc56 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ioc56, align 8
  %lock61 = getelementptr inbounds %struct.ioc, ptr %50, i32 0, i32 8
  call void @_raw_spin_unlock(ptr noundef %lock61) #17
  call void @blkg_conf_finish(ptr noundef nonnull %ctx) #17
  br label %cleanup62

einval:                                           ; preds = %if.end49.einval_crit_edge, %if.else.einval_crit_edge
  call void @blkg_conf_finish(ptr noundef nonnull %ctx) #17
  br label %cleanup62

cleanup62:                                        ; preds = %einval, %if.end55, %if.end35.cleanup62_crit_edge, %for.end, %if.end.cleanup62_crit_edge, %land.lhs.true.cleanup62_crit_edge
  %retval.1 = phi i32 [ -22, %einval ], [ %nbytes, %if.end55 ], [ %nbytes, %for.end ], [ -22, %land.lhs.true.cleanup62_crit_edge ], [ -22, %if.end.cleanup62_crit_edge ], [ %call36, %if.end35.cleanup62_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %now) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %ctx) #17
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ioc_qos_show(ptr noundef %sf, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.seq_file, ptr %sf, i32 0, i32 11
  %0 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private.i, align 8
  %call.i = tail call ptr @of_css(ptr noundef %1) #17
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
  tail call void @blkcg_print_blkgs(ptr noundef %sf, ptr noundef %call.i, ptr noundef nonnull @ioc_qos_prfill, ptr noundef nonnull @blkcg_policy_iocost, i32 noundef %9, i1 noundef zeroext false) #17
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ioc_qos_write(ptr nocapture noundef readnone %of, ptr noundef %input, i32 noundef %nbytes, i64 noundef %off) #0 align 64 {
entry:
  %input.addr = alloca ptr, align 4
  %qos = alloca [6 x i32], align 4
  %args = alloca [3 x %struct.substring_t], align 4
  %buf = alloca [32 x i8], align 1
  %v = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %input.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %input, ptr %input.addr, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %qos) #17
  %1 = getelementptr inbounds [6 x i32], ptr %qos, i32 0, i32 4
  %2 = getelementptr inbounds [6 x i32], ptr %qos, i32 0, i32 5
  %call = call ptr @blkcg_conf_open_bdev(ptr noundef nonnull %input.addr) #17
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %3 = ptrtoint ptr %call to i32
  br label %cleanup136

if.end:                                           ; preds = %entry
  %bd_queue.i = getelementptr inbounds %struct.block_device, ptr %call, i32 0, i32 18
  %4 = ptrtoint ptr %bd_queue.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bd_queue.i, align 4
  %rq_qos.i.i = getelementptr inbounds %struct.request_queue, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %rq_qos.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %rqos.01.i.i = load ptr, ptr %rq_qos.i.i, align 4
  %tobool.not2.i.i = icmp eq ptr %rqos.01.i.i, null
  br i1 %tobool.not2.i.i, label %if.end.if.then5_crit_edge, label %if.end.for.body.i.i_crit_edge

if.end.for.body.i.i_crit_edge:                    ; preds = %if.end
  br label %for.body.i.i

if.end.if.then5_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then5

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end.for.body.i.i_crit_edge
  %rqos.03.i.i = phi ptr [ %rqos.0.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %rqos.01.i.i, %if.end.for.body.i.i_crit_edge ]
  %id1.i.i = getelementptr inbounds %struct.rq_qos, ptr %rqos.03.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %id1.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %id1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %8)
  %cmp.i.i = icmp eq i32 %8, 2
  br i1 %cmp.i.i, label %for.body.i.i.if.end13_crit_edge, label %for.inc.i.i

for.body.i.i.if.end13_crit_edge:                  ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end13

for.inc.i.i:                                      ; preds = %for.body.i.i
  %next.i.i = getelementptr inbounds %struct.rq_qos, ptr %rqos.03.i.i, i32 0, i32 3
  %9 = ptrtoint ptr %next.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %rqos.0.i.i = load ptr, ptr %next.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %rqos.0.i.i, null
  br i1 %tobool.not.i.i, label %for.inc.i.i.if.then5_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i.i

for.inc.i.i.if.then5_crit_edge:                   ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then5

if.then5:                                         ; preds = %for.inc.i.i.if.then5_crit_edge, %if.end.if.then5_crit_edge
  %call7 = call fastcc i32 @blk_iocost_init(ptr noundef %5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.then5.err_crit_edge

if.then5.err_crit_edge:                           ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #19
  br label %err

if.end10:                                         ; preds = %if.then5
  %10 = ptrtoint ptr %bd_queue.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bd_queue.i, align 4
  %rq_qos.i.i209 = getelementptr inbounds %struct.request_queue, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %rq_qos.i.i209 to i32
  call void @__asan_load4_noabort(i32 %12)
  %rqos.01.i.i210 = load ptr, ptr %rq_qos.i.i209, align 4
  %tobool.not2.i.i211 = icmp eq ptr %rqos.01.i.i210, null
  br i1 %tobool.not2.i.i211, label %if.end10.if.end13_crit_edge, label %if.end10.for.body.i.i215_crit_edge

if.end10.for.body.i.i215_crit_edge:               ; preds = %if.end10
  br label %for.body.i.i215

if.end10.if.end13_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end13

for.body.i.i215:                                  ; preds = %for.inc.i.i219.for.body.i.i215_crit_edge, %if.end10.for.body.i.i215_crit_edge
  %rqos.03.i.i212 = phi ptr [ %rqos.0.i.i217, %for.inc.i.i219.for.body.i.i215_crit_edge ], [ %rqos.01.i.i210, %if.end10.for.body.i.i215_crit_edge ]
  %id1.i.i213 = getelementptr inbounds %struct.rq_qos, ptr %rqos.03.i.i212, i32 0, i32 2
  %13 = ptrtoint ptr %id1.i.i213 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %id1.i.i213, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %14)
  %cmp.i.i214 = icmp eq i32 %14, 2
  br i1 %cmp.i.i214, label %for.body.i.i215.if.end13_crit_edge, label %for.inc.i.i219

for.body.i.i215.if.end13_crit_edge:               ; preds = %for.body.i.i215
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end13

for.inc.i.i219:                                   ; preds = %for.body.i.i215
  %next.i.i216 = getelementptr inbounds %struct.rq_qos, ptr %rqos.03.i.i212, i32 0, i32 3
  %15 = ptrtoint ptr %next.i.i216 to i32
  call void @__asan_load4_noabort(i32 %15)
  %rqos.0.i.i217 = load ptr, ptr %next.i.i216, align 4
  %tobool.not.i.i218 = icmp eq ptr %rqos.0.i.i217, null
  br i1 %tobool.not.i.i218, label %for.inc.i.i219.if.end13_crit_edge, label %for.inc.i.i219.for.body.i.i215_crit_edge

for.inc.i.i219.for.body.i.i215_crit_edge:         ; preds = %for.inc.i.i219
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i.i215

for.inc.i.i219.if.end13_crit_edge:                ; preds = %for.inc.i.i219
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end13

if.end13:                                         ; preds = %for.inc.i.i219.if.end13_crit_edge, %for.body.i.i215.if.end13_crit_edge, %if.end10.if.end13_crit_edge, %for.body.i.i.if.end13_crit_edge
  %ioc.0 = phi ptr [ null, %if.end10.if.end13_crit_edge ], [ %rqos.03.i.i212, %for.body.i.i215.if.end13_crit_edge ], [ null, %for.inc.i.i219.if.end13_crit_edge ], [ %rqos.03.i.i, %for.body.i.i.if.end13_crit_edge ]
  %lock = getelementptr inbounds %struct.ioc, ptr %ioc.0, i32 0, i32 8
  call void @_raw_spin_lock_irq(ptr noundef %lock) #17
  %params = getelementptr inbounds %struct.ioc, ptr %ioc.0, i32 0, i32 2
  %16 = call ptr @memcpy(ptr %qos, ptr %params, i32 24)
  %enabled = getelementptr inbounds %struct.ioc, ptr %ioc.0, i32 0, i32 1
  %17 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %enabled, align 4, !range !288
  %user_qos_params = getelementptr inbounds %struct.ioc, ptr %ioc.0, i32 0, i32 29
  %19 = ptrtoint ptr %user_qos_params to i32
  call void @__asan_load1_noabort(i32 %19)
  %bf.load = load i8, ptr %user_qos_params, align 4
  call void @_raw_spin_unlock_irq(ptr noundef %lock) #17
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %extract.t = icmp ne i8 %18, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load)
  %extract.t190 = icmp slt i8 %bf.load, 0
  %call19232 = call ptr @strsep(ptr noundef nonnull %input.addr, ptr noundef nonnull @.str.48) #17
  %tobool20.not233 = icmp eq ptr %call19232, null
  br i1 %tobool20.not233, label %if.end13.while.end_crit_edge, label %if.end13.while.body_crit_edge

if.end13.while.body_crit_edge:                    ; preds = %if.end13
  br label %while.body

if.end13.while.end_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %if.end13.while.body_crit_edge
  %call19236 = phi ptr [ %call19, %cleanup.while.body_crit_edge ], [ %call19232, %if.end13.while.body_crit_edge ]
  %user.0.off0235 = phi i1 [ %user.2.off0, %cleanup.while.body_crit_edge ], [ %extract.t190, %if.end13.while.body_crit_edge ]
  %enable.0.off0234 = phi i1 [ %enable.1.off0, %cleanup.while.body_crit_edge ], [ %extract.t, %if.end13.while.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %args) #17
  %20 = call ptr @memset(ptr %args, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buf) #17
  %21 = call ptr @memset(ptr %buf, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %v) #17
  %22 = ptrtoint ptr %v to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 -1, ptr %v, align 8, !annotation !287
  %23 = ptrtoint ptr %call19236 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %call19236, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool21.not = icmp eq i8 %24, 0
  br i1 %tobool21.not, label %while.body.cleanup_crit_edge, label %if.end23

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end23:                                         ; preds = %while.body
  %call25 = call i32 @match_token(ptr noundef nonnull %call19236, ptr noundef nonnull @qos_ctrl_tokens, ptr noundef nonnull %args) #17
  %25 = zext i32 %call25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call25, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb29
  ]

sw.bb:                                            ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #19
  %call26 = call i32 @match_u64(ptr noundef nonnull %args, ptr noundef nonnull %v) #17
  %26 = ptrtoint ptr %v to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %v, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %27)
  %tobool27 = icmp ne i64 %27, 0
  br label %cleanup

sw.bb29:                                          ; preds = %if.end23
  %call32 = call i32 @match_strlcpy(ptr noundef nonnull %buf, ptr noundef nonnull %args, i32 noundef 32) #17
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(5) %buf, ptr noundef nonnull dereferenceable(5) @.str.47, i32 5) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool35.not = icmp eq i32 %bcmp, 0
  br i1 %tobool35.not, label %sw.bb29.cleanup_crit_edge, label %if.else

sw.bb29.cleanup_crit_edge:                        ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.else:                                          ; preds = %sw.bb29
  %bcmp205 = call i32 @bcmp(ptr noundef nonnull dereferenceable(5) %buf, ptr noundef nonnull dereferenceable(5) @.str.46, i32 5) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp205)
  %tobool39.not = icmp eq i32 %bcmp205, 0
  br i1 %tobool39.not, label %if.else.cleanup_crit_edge, label %if.else.cleanup.thread_crit_edge

if.else.cleanup.thread_crit_edge:                 ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup.thread

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

sw.epilog:                                        ; preds = %if.end23
  %call45 = call i32 @match_token(ptr noundef nonnull %call19236, ptr noundef nonnull @qos_tokens, ptr noundef nonnull %args) #17
  %28 = zext i32 %call45 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.91)
  switch i32 %call45, label %sw.epilog.cleanup.thread_crit_edge [
    i32 0, label %sw.epilog.sw.bb46_crit_edge
    i32 2, label %sw.epilog.sw.bb46_crit_edge247
    i32 1, label %sw.epilog.sw.bb62_crit_edge
    i32 3, label %sw.epilog.sw.bb62_crit_edge248
    i32 4, label %sw.epilog.sw.bb70_crit_edge
    i32 5, label %sw.epilog.sw.bb70_crit_edge249
  ]

sw.epilog.sw.bb70_crit_edge249:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb70

sw.epilog.sw.bb70_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb70

sw.epilog.sw.bb62_crit_edge248:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb62

sw.epilog.sw.bb62_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb62

sw.epilog.sw.bb46_crit_edge247:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb46

sw.epilog.sw.bb46_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb46

sw.epilog.cleanup.thread_crit_edge:               ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup.thread

sw.bb46:                                          ; preds = %sw.epilog.sw.bb46_crit_edge, %sw.epilog.sw.bb46_crit_edge247
  %call49 = call i32 @match_strlcpy(ptr noundef nonnull %buf, ptr noundef nonnull %args, i32 noundef 32) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %call49)
  %cmp = icmp ugt i32 %call49, 31
  br i1 %cmp, label %sw.bb46.cleanup.thread_crit_edge, label %if.end51

sw.bb46.cleanup.thread_crit_edge:                 ; preds = %sw.bb46
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup.thread

if.end51:                                         ; preds = %sw.bb46
  %call53 = call i32 @cgroup_parse_float(ptr noundef nonnull %buf, i32 noundef 2, ptr noundef nonnull %v) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.end56, label %if.end51.cleanup.thread_crit_edge

if.end51.cleanup.thread_crit_edge:                ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup.thread

if.end56:                                         ; preds = %if.end51
  %29 = ptrtoint ptr %v to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %v, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 10000, i64 %30)
  %31 = icmp ugt i64 %30, 10000
  br i1 %31, label %if.end56.cleanup.thread_crit_edge, label %if.end60

if.end56.cleanup.thread_crit_edge:                ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup.thread

if.end60:                                         ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #19
  %32 = trunc i64 %30 to i32
  %conv = mul nuw nsw i32 %32, 100
  %arrayidx61 = getelementptr [6 x i32], ptr %qos, i32 0, i32 %call45
  %33 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %conv, ptr %arrayidx61, align 4
  br label %cleanup

sw.bb62:                                          ; preds = %sw.epilog.sw.bb62_crit_edge, %sw.epilog.sw.bb62_crit_edge248
  %call64 = call i32 @match_u64(ptr noundef nonnull %args, ptr noundef nonnull %v) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %if.end67, label %sw.bb62.cleanup.thread_crit_edge

sw.bb62.cleanup.thread_crit_edge:                 ; preds = %sw.bb62
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup.thread

if.end67:                                         ; preds = %sw.bb62
  call void @__sanitizer_cov_trace_pc() #19
  %34 = ptrtoint ptr %v to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %v, align 8
  %conv68 = trunc i64 %35 to i32
  %arrayidx69 = getelementptr [6 x i32], ptr %qos, i32 0, i32 %call45
  %36 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %conv68, ptr %arrayidx69, align 4
  br label %cleanup

sw.bb70:                                          ; preds = %sw.epilog.sw.bb70_crit_edge, %sw.epilog.sw.bb70_crit_edge249
  %call73 = call i32 @match_strlcpy(ptr noundef nonnull %buf, ptr noundef nonnull %args, i32 noundef 32) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %call73)
  %cmp74 = icmp ugt i32 %call73, 31
  br i1 %cmp74, label %sw.bb70.cleanup.thread_crit_edge, label %if.end77

sw.bb70.cleanup.thread_crit_edge:                 ; preds = %sw.bb70
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup.thread

if.end77:                                         ; preds = %sw.bb70
  %call79 = call i32 @cgroup_parse_float(ptr noundef nonnull %buf, i32 noundef 2, ptr noundef nonnull %v) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %tobool80.not = icmp eq i32 %call79, 0
  br i1 %tobool80.not, label %if.end82, label %if.end77.cleanup.thread_crit_edge

if.end77.cleanup.thread_crit_edge:                ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup.thread

if.end82:                                         ; preds = %if.end77
  %37 = ptrtoint ptr %v to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %v, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %38)
  %cmp83 = icmp slt i64 %38, 0
  br i1 %cmp83, label %if.end82.cleanup.thread_crit_edge, label %if.end86

if.end82.cleanup.thread_crit_edge:                ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup.thread

if.end86:                                         ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #19
  %mul87 = mul i64 %38, 100
  %39 = call i64 @llvm.smax.i64(i64 %mul87, i64 10000)
  %40 = call i64 @llvm.umin.i64(i64 %39, i64 100000000)
  %41 = trunc i64 %40 to i32
  %arrayidx98 = getelementptr [6 x i32], ptr %qos, i32 0, i32 %call45
  %42 = ptrtoint ptr %arrayidx98 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %arrayidx98, align 4
  br label %cleanup

cleanup.thread:                                   ; preds = %if.end82.cleanup.thread_crit_edge, %if.end77.cleanup.thread_crit_edge, %sw.bb70.cleanup.thread_crit_edge, %sw.bb62.cleanup.thread_crit_edge, %if.end56.cleanup.thread_crit_edge, %if.end51.cleanup.thread_crit_edge, %sw.bb46.cleanup.thread_crit_edge, %sw.epilog.cleanup.thread_crit_edge, %if.else.cleanup.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %v) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf) #17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %args) #17
  br label %err

cleanup:                                          ; preds = %if.end86, %if.end67, %if.end60, %if.else.cleanup_crit_edge, %sw.bb29.cleanup_crit_edge, %sw.bb, %while.body.cleanup_crit_edge
  %enable.1.off0 = phi i1 [ %tobool27, %sw.bb ], [ %enable.0.off0234, %while.body.cleanup_crit_edge ], [ %enable.0.off0234, %if.end86 ], [ %enable.0.off0234, %if.end67 ], [ %enable.0.off0234, %if.end60 ], [ %enable.0.off0234, %if.else.cleanup_crit_edge ], [ %enable.0.off0234, %sw.bb29.cleanup_crit_edge ]
  %user.2.off0 = phi i1 [ %user.0.off0235, %sw.bb ], [ %user.0.off0235, %while.body.cleanup_crit_edge ], [ true, %if.end86 ], [ true, %if.end67 ], [ true, %if.end60 ], [ true, %if.else.cleanup_crit_edge ], [ false, %sw.bb29.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %v) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf) #17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %args) #17
  %call19 = call ptr @strsep(ptr noundef nonnull %input.addr, ptr noundef nonnull @.str.48) #17
  %tobool20.not = icmp eq ptr %call19, null
  br i1 %tobool20.not, label %cleanup.while.end_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %if.end13.while.end_crit_edge
  %enable.0.off0.lcssa = phi i1 [ %extract.t, %if.end13.while.end_crit_edge ], [ %enable.1.off0, %cleanup.while.end_crit_edge ]
  %user.0.off0.lcssa = phi i1 [ %extract.t190, %if.end13.while.end_crit_edge ], [ %user.2.off0, %cleanup.while.end_crit_edge ]
  %43 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %1, align 4
  %45 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %46)
  %cmp105 = icmp ugt i32 %44, %46
  br i1 %cmp105, label %while.end.err_crit_edge, label %if.end108

while.end.err_crit_edge:                          ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %err

if.end108:                                        ; preds = %while.end
  call void @_raw_spin_lock_irq(ptr noundef %lock) #17
  %q = getelementptr inbounds %struct.rq_qos, ptr %ioc.0, i32 0, i32 1
  %47 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %q, align 4
  br i1 %enable.0.off0.lcssa, label %if.then111, label %if.else115

if.then111:                                       ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #19
  call void @blk_stat_enable_accounting(ptr noundef %48) #17
  %49 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %q, align 4
  call void @blk_queue_flag_set(i32 noundef 27, ptr noundef %50) #17
  br label %if.end119

if.else115:                                       ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #19
  call void @blk_queue_flag_clear(i32 noundef 27, ptr noundef %48) #17
  br label %if.end119

if.end119:                                        ; preds = %if.else115, %if.then111
  %storemerge = phi i8 [ 0, %if.else115 ], [ 1, %if.then111 ]
  %51 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %storemerge, ptr %enabled, align 4
  br i1 %user.0.off0.lcssa, label %if.then121, label %if.else128

if.then121:                                       ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #19
  %52 = call ptr @memcpy(ptr %params, ptr %qos, i32 24)
  %53 = ptrtoint ptr %user_qos_params to i32
  call void @__asan_load1_noabort(i32 %53)
  %bf.load127 = load i8, ptr %user_qos_params, align 4
  %bf.set = or i8 %bf.load127, -128
  br label %if.end133

if.else128:                                       ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #19
  %54 = ptrtoint ptr %user_qos_params to i32
  call void @__asan_load1_noabort(i32 %54)
  %bf.load130 = load i8, ptr %user_qos_params, align 4
  %bf.clear131 = and i8 %bf.load130, 127
  br label %if.end133

if.end133:                                        ; preds = %if.else128, %if.then121
  %storemerge204 = phi i8 [ %bf.clear131, %if.else128 ], [ %bf.set, %if.then121 ]
  %55 = ptrtoint ptr %user_qos_params to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %storemerge204, ptr %user_qos_params, align 4
  call fastcc void @ioc_refresh_params(ptr noundef %ioc.0, i1 noundef zeroext true)
  call void @_raw_spin_unlock_irq(ptr noundef %lock) #17
  call void @blkdev_put_no_open(ptr noundef %call) #17
  br label %cleanup136

err:                                              ; preds = %while.end.err_crit_edge, %cleanup.thread, %if.then5.err_crit_edge
  %ret.0 = phi i32 [ %call7, %if.then5.err_crit_edge ], [ -22, %while.end.err_crit_edge ], [ -22, %cleanup.thread ]
  call void @blkdev_put_no_open(ptr noundef %call) #17
  br label %cleanup136

cleanup136:                                       ; preds = %err, %if.end133, %if.then
  %retval.0 = phi i32 [ %3, %if.then ], [ %ret.0, %err ], [ %nbytes, %if.end133 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %qos) #17
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ioc_cost_model_show(ptr noundef %sf, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.seq_file, ptr %sf, i32 0, i32 11
  %0 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private.i, align 8
  %call.i = tail call ptr @of_css(ptr noundef %1) #17
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
  tail call void @blkcg_print_blkgs(ptr noundef %sf, ptr noundef %call.i, ptr noundef nonnull @ioc_cost_model_prfill, ptr noundef nonnull @blkcg_policy_iocost, i32 noundef %9, i1 noundef zeroext false) #17
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ioc_cost_model_write(ptr nocapture noundef readnone %of, ptr noundef %input, i32 noundef %nbytes, i64 noundef %off) #0 align 64 {
entry:
  %input.addr = alloca ptr, align 4
  %u = alloca [6 x i64], align 8
  %args = alloca [3 x %struct.substring_t], align 4
  %buf = alloca [32 x i8], align 1
  %v = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %input.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %input, ptr %input.addr, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %u) #17
  %call = call ptr @blkcg_conf_open_bdev(ptr noundef nonnull %input.addr) #17
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %1 = ptrtoint ptr %call to i32
  br label %cleanup76

if.end:                                           ; preds = %entry
  %bd_queue.i = getelementptr inbounds %struct.block_device, ptr %call, i32 0, i32 18
  %2 = ptrtoint ptr %bd_queue.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bd_queue.i, align 4
  %rq_qos.i.i = getelementptr inbounds %struct.request_queue, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %rq_qos.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %rqos.01.i.i = load ptr, ptr %rq_qos.i.i, align 4
  %tobool.not2.i.i = icmp eq ptr %rqos.01.i.i, null
  br i1 %tobool.not2.i.i, label %if.end.if.then5_crit_edge, label %if.end.for.body.i.i_crit_edge

if.end.for.body.i.i_crit_edge:                    ; preds = %if.end
  br label %for.body.i.i

if.end.if.then5_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then5

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end.for.body.i.i_crit_edge
  %rqos.03.i.i = phi ptr [ %rqos.0.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %rqos.01.i.i, %if.end.for.body.i.i_crit_edge ]
  %id1.i.i = getelementptr inbounds %struct.rq_qos, ptr %rqos.03.i.i, i32 0, i32 2
  %5 = ptrtoint ptr %id1.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %id1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %cmp.i.i = icmp eq i32 %6, 2
  br i1 %cmp.i.i, label %for.body.i.i.if.end13_crit_edge, label %for.inc.i.i

for.body.i.i.if.end13_crit_edge:                  ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end13

for.inc.i.i:                                      ; preds = %for.body.i.i
  %next.i.i = getelementptr inbounds %struct.rq_qos, ptr %rqos.03.i.i, i32 0, i32 3
  %7 = ptrtoint ptr %next.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %rqos.0.i.i = load ptr, ptr %next.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %rqos.0.i.i, null
  br i1 %tobool.not.i.i, label %for.inc.i.i.if.then5_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i.i

for.inc.i.i.if.then5_crit_edge:                   ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then5

if.then5:                                         ; preds = %for.inc.i.i.if.then5_crit_edge, %if.end.if.then5_crit_edge
  %call7 = call fastcc i32 @blk_iocost_init(ptr noundef %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.then5.err_crit_edge

if.then5.err_crit_edge:                           ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #19
  br label %err

if.end10:                                         ; preds = %if.then5
  %8 = ptrtoint ptr %bd_queue.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bd_queue.i, align 4
  %rq_qos.i.i114 = getelementptr inbounds %struct.request_queue, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %rq_qos.i.i114 to i32
  call void @__asan_load4_noabort(i32 %10)
  %rqos.01.i.i115 = load ptr, ptr %rq_qos.i.i114, align 4
  %tobool.not2.i.i116 = icmp eq ptr %rqos.01.i.i115, null
  br i1 %tobool.not2.i.i116, label %if.end10.if.end13_crit_edge, label %if.end10.for.body.i.i120_crit_edge

if.end10.for.body.i.i120_crit_edge:               ; preds = %if.end10
  br label %for.body.i.i120

if.end10.if.end13_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end13

for.body.i.i120:                                  ; preds = %for.inc.i.i124.for.body.i.i120_crit_edge, %if.end10.for.body.i.i120_crit_edge
  %rqos.03.i.i117 = phi ptr [ %rqos.0.i.i122, %for.inc.i.i124.for.body.i.i120_crit_edge ], [ %rqos.01.i.i115, %if.end10.for.body.i.i120_crit_edge ]
  %id1.i.i118 = getelementptr inbounds %struct.rq_qos, ptr %rqos.03.i.i117, i32 0, i32 2
  %11 = ptrtoint ptr %id1.i.i118 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %id1.i.i118, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %12)
  %cmp.i.i119 = icmp eq i32 %12, 2
  br i1 %cmp.i.i119, label %for.body.i.i120.if.end13_crit_edge, label %for.inc.i.i124

for.body.i.i120.if.end13_crit_edge:               ; preds = %for.body.i.i120
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end13

for.inc.i.i124:                                   ; preds = %for.body.i.i120
  %next.i.i121 = getelementptr inbounds %struct.rq_qos, ptr %rqos.03.i.i117, i32 0, i32 3
  %13 = ptrtoint ptr %next.i.i121 to i32
  call void @__asan_load4_noabort(i32 %13)
  %rqos.0.i.i122 = load ptr, ptr %next.i.i121, align 4
  %tobool.not.i.i123 = icmp eq ptr %rqos.0.i.i122, null
  br i1 %tobool.not.i.i123, label %for.inc.i.i124.if.end13_crit_edge, label %for.inc.i.i124.for.body.i.i120_crit_edge

for.inc.i.i124.for.body.i.i120_crit_edge:         ; preds = %for.inc.i.i124
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i.i120

for.inc.i.i124.if.end13_crit_edge:                ; preds = %for.inc.i.i124
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end13

if.end13:                                         ; preds = %for.inc.i.i124.if.end13_crit_edge, %for.body.i.i120.if.end13_crit_edge, %if.end10.if.end13_crit_edge, %for.body.i.i.if.end13_crit_edge
  %ioc.0 = phi ptr [ null, %if.end10.if.end13_crit_edge ], [ %rqos.03.i.i117, %for.body.i.i120.if.end13_crit_edge ], [ null, %for.inc.i.i124.if.end13_crit_edge ], [ %rqos.03.i.i, %for.body.i.i.if.end13_crit_edge ]
  %lock = getelementptr inbounds %struct.ioc, ptr %ioc.0, i32 0, i32 8
  call void @_raw_spin_lock_irq(ptr noundef %lock) #17
  %i_lcoefs = getelementptr inbounds %struct.ioc, ptr %ioc.0, i32 0, i32 2, i32 1
  %14 = call ptr @memcpy(ptr %u, ptr %i_lcoefs, i32 48)
  %user_cost_model = getelementptr inbounds %struct.ioc, ptr %ioc.0, i32 0, i32 29
  %15 = ptrtoint ptr %user_cost_model to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load = load i8, ptr %user_cost_model, align 4
  call void @_raw_spin_unlock_irq(ptr noundef %lock) #17
  %16 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %extract.t = icmp ne i8 %16, 0
  %call16134 = call ptr @strsep(ptr noundef nonnull %input.addr, ptr noundef nonnull @.str.48) #17
  %tobool17.not135 = icmp eq ptr %call16134, null
  br i1 %tobool17.not135, label %if.end13.while.end_crit_edge, label %if.end13.while.body_crit_edge

if.end13.while.body_crit_edge:                    ; preds = %if.end13
  br label %while.body

if.end13.while.end_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %if.end13.while.body_crit_edge
  %call16137 = phi ptr [ %call16, %cleanup.while.body_crit_edge ], [ %call16134, %if.end13.while.body_crit_edge ]
  %user.0.off0136 = phi i1 [ %user.2.off0, %cleanup.while.body_crit_edge ], [ %extract.t, %if.end13.while.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %args) #17
  %17 = call ptr @memset(ptr %args, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buf) #17
  %18 = call ptr @memset(ptr %buf, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %v) #17
  %19 = ptrtoint ptr %v to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 -1, ptr %v, align 8, !annotation !287
  %20 = ptrtoint ptr %call16137 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %call16137, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool18.not = icmp eq i8 %21, 0
  br i1 %tobool18.not, label %while.body.cleanup_crit_edge, label %if.end20

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end20:                                         ; preds = %while.body
  %call22 = call i32 @match_token(ptr noundef nonnull %call16137, ptr noundef nonnull @cost_ctrl_tokens, ptr noundef nonnull %args) #17
  %22 = zext i32 %call22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.92)
  switch i32 %call22, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb36
  ]

sw.bb:                                            ; preds = %if.end20
  %call24 = call i32 @match_strlcpy(ptr noundef nonnull %buf, ptr noundef nonnull %args, i32 noundef 32) #17
  %bcmp110 = call i32 @bcmp(ptr noundef nonnull dereferenceable(5) %buf, ptr noundef nonnull dereferenceable(5) @.str.47, i32 5) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp110)
  %tobool27.not = icmp eq i32 %bcmp110, 0
  br i1 %tobool27.not, label %sw.bb.cleanup_crit_edge, label %if.else

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.else:                                          ; preds = %sw.bb
  %bcmp111 = call i32 @bcmp(ptr noundef nonnull dereferenceable(5) %buf, ptr noundef nonnull dereferenceable(5) @.str.46, i32 5) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp111)
  %tobool31.not = icmp eq i32 %bcmp111, 0
  br i1 %tobool31.not, label %if.else.cleanup_crit_edge, label %if.else.cleanup.thread_crit_edge

if.else.cleanup.thread_crit_edge:                 ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup.thread

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

sw.bb36:                                          ; preds = %if.end20
  %call39 = call i32 @match_strlcpy(ptr noundef nonnull %buf, ptr noundef nonnull %args, i32 noundef 32) #17
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %buf, ptr noundef nonnull dereferenceable(7) @.str.78, i32 7) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool42.not = icmp eq i32 %bcmp, 0
  br i1 %tobool42.not, label %sw.bb36.cleanup_crit_edge, label %sw.bb36.cleanup.thread_crit_edge

sw.bb36.cleanup.thread_crit_edge:                 ; preds = %sw.bb36
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup.thread

sw.bb36.cleanup_crit_edge:                        ; preds = %sw.bb36
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

sw.epilog:                                        ; preds = %if.end20
  %call46 = call i32 @match_token(ptr noundef nonnull %call16137, ptr noundef nonnull @i_lcoef_tokens, ptr noundef nonnull %args) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %call46)
  %cmp = icmp eq i32 %call46, 6
  br i1 %cmp, label %sw.epilog.cleanup.thread_crit_edge, label %if.end48

sw.epilog.cleanup.thread_crit_edge:               ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup.thread

if.end48:                                         ; preds = %sw.epilog
  %call50 = call i32 @match_u64(ptr noundef nonnull %args, ptr noundef nonnull %v) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.end53, label %if.end48.cleanup.thread_crit_edge

if.end48.cleanup.thread_crit_edge:                ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup.thread

if.end53:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #19
  %23 = ptrtoint ptr %v to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %v, align 8
  %arrayidx54 = getelementptr [6 x i64], ptr %u, i32 0, i32 %call46
  %25 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %24, ptr %arrayidx54, align 8
  br label %cleanup

cleanup.thread:                                   ; preds = %if.end48.cleanup.thread_crit_edge, %sw.epilog.cleanup.thread_crit_edge, %sw.bb36.cleanup.thread_crit_edge, %if.else.cleanup.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %v) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf) #17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %args) #17
  br label %err

cleanup:                                          ; preds = %if.end53, %sw.bb36.cleanup_crit_edge, %if.else.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %while.body.cleanup_crit_edge
  %user.2.off0 = phi i1 [ true, %if.end53 ], [ %user.0.off0136, %while.body.cleanup_crit_edge ], [ true, %if.else.cleanup_crit_edge ], [ false, %sw.bb.cleanup_crit_edge ], [ %user.0.off0136, %sw.bb36.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %v) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf) #17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %args) #17
  %call16 = call ptr @strsep(ptr noundef nonnull %input.addr, ptr noundef nonnull @.str.48) #17
  %tobool17.not = icmp eq ptr %call16, null
  br i1 %tobool17.not, label %cleanup.while.end_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %if.end13.while.end_crit_edge
  %user.0.off0.lcssa = phi i1 [ %extract.t, %if.end13.while.end_crit_edge ], [ %user.2.off0, %cleanup.while.end_crit_edge ]
  call void @_raw_spin_lock_irq(ptr noundef %lock) #17
  br i1 %user.0.off0.lcssa, label %if.then60, label %if.else68

if.then60:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #19
  %26 = call ptr @memcpy(ptr %i_lcoefs, ptr %u, i32 48)
  %27 = ptrtoint ptr %user_cost_model to i32
  call void @__asan_load1_noabort(i32 %27)
  %bf.load66 = load i8, ptr %user_cost_model, align 4
  %bf.set = or i8 %bf.load66, 64
  br label %if.end73

if.else68:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #19
  %28 = ptrtoint ptr %user_cost_model to i32
  call void @__asan_load1_noabort(i32 %28)
  %bf.load70 = load i8, ptr %user_cost_model, align 4
  %bf.clear71 = and i8 %bf.load70, -65
  br label %if.end73

if.end73:                                         ; preds = %if.else68, %if.then60
  %storemerge = phi i8 [ %bf.clear71, %if.else68 ], [ %bf.set, %if.then60 ]
  %29 = ptrtoint ptr %user_cost_model to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %storemerge, ptr %user_cost_model, align 4
  call fastcc void @ioc_refresh_params(ptr noundef %ioc.0, i1 noundef zeroext true)
  call void @_raw_spin_unlock_irq(ptr noundef %lock) #17
  call void @blkdev_put_no_open(ptr noundef %call) #17
  br label %cleanup76

err:                                              ; preds = %cleanup.thread, %if.then5.err_crit_edge
  %ret.0 = phi i32 [ %call7, %if.then5.err_crit_edge ], [ -22, %cleanup.thread ]
  call void @blkdev_put_no_open(ptr noundef %call) #17
  br label %cleanup76

cleanup76:                                        ; preds = %err, %if.end73, %if.then
  %retval.0 = phi i32 [ %1, %if.then ], [ %ret.0, %err ], [ %nbytes, %if.end73 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %u) #17
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blkcg_print_blkgs(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @ioc_weight_prfill(ptr noundef %sf, ptr nocapture noundef readonly %pd, i32 noundef %off) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pd, align 4
  %call = tail call ptr @blkg_dev_name(ptr noundef %1) #17
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %cfg_weight = getelementptr inbounds %struct.ioc_gq, ptr %pd, i32 0, i32 2
  %2 = ptrtoint ptr %cfg_weight to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cfg_weight, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool2.not = icmp eq i32 %3, 0
  br i1 %tobool2.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  %div7 = lshr i32 %3, 16
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.40, ptr noundef nonnull %call, i32 noundef %div7) #17
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret i64 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_css(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @blkg_dev_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ioc_now(ptr noundef %ioc, ptr nocapture noundef %now) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i64 @ktime_get() #17
  %0 = ptrtoint ptr %now to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %call, ptr %now, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call)
  %cmp8.i.i = icmp slt i64 %call, 0
  %1 = tail call i64 @llvm.abs.i64(i64 %call, i1 false) #17
  %2 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %1, i32 0) #24, !srcloc !291
  %asmresult.i.i.i = extractvalue { i64, i32 } %2, 0
  %asmresult4.i.i.i = extractvalue { i64, i32 } %2, 1
  %3 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %1, i64 %asmresult.i.i.i, i32 %asmresult4.i.i.i) #24, !srcloc !292
  %asmresult10.i.i.i = extractvalue { i64, i32 } %3, 0
  %tmp.0.i.i = lshr i64 %asmresult10.i.i.i, 9
  %sub210.i.i = sub nsw i64 0, %tmp.0.i.i
  %cond213.i.i = select i1 %cmp8.i.i, i64 %sub210.i.i, i64 %tmp.0.i.i
  %now3 = getelementptr inbounds %struct.ioc_now, ptr %now, i32 0, i32 1
  %4 = ptrtoint ptr %now3 to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %cond213.i.i, ptr %now3, align 8
  %vtime_rate = getelementptr inbounds %struct.ioc, ptr %ioc, i32 0, i32 13
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %vtime_rate, i32 noundef 8) #17
  %call.i = tail call i64 @generic_atomic64_read(ptr noundef %vtime_rate) #17
  %vrate = getelementptr inbounds %struct.ioc_now, ptr %now, i32 0, i32 3
  %5 = ptrtoint ptr %vrate to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %call.i, ptr %vrate, align 8
  %period_seqcount = getelementptr inbounds %struct.ioc, ptr %ioc, i32 0, i32 16
  %dep_map.c48.i = getelementptr inbounds %struct.ioc, ptr %ioc, i32 0, i32 16, i32 0, i32 1
  %period_at_vtime = getelementptr inbounds %struct.ioc, ptr %ioc, i32 0, i32 18
  %period_at = getelementptr inbounds %struct.ioc, ptr %ioc, i32 0, i32 17
  %vnow = getelementptr inbounds %struct.ioc_now, ptr %now, i32 0, i32 2
  br label %do.body

do.body:                                          ; preds = %while.end.do.body_crit_edge, %entry
  %6 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #17, !srcloc !293
  %and.i.i = and i32 %6, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %do.body24.critedge.i

if.then.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @trace_hardirqs_off() #17
  %7 = tail call ptr @llvm.returnaddress(i32 0) #17
  %8 = ptrtoint ptr %7 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %8) #17
  tail call void @lock_release(ptr noundef %dep_map.c48.i, i32 noundef %8) #17
  tail call void @trace_hardirqs_on() #17
  br label %do.body24.i

do.body24.critedge.i:                             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #19
  %9 = tail call ptr @llvm.returnaddress(i32 0) #17
  %10 = ptrtoint ptr %9 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %10) #17
  tail call void @lock_release(ptr noundef %dep_map.c48.i, i32 noundef %10) #17
  br label %do.body24.i

do.body24.i:                                      ; preds = %do.body24.critedge.i, %if.then.i
  %11 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #17, !srcloc !294
  %and.i.i.i = and i32 %11, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool32.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool32.not.i, label %if.then36.i, label %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge, !prof !286

do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge: ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %seqcount_lockdep_reader_access.exit

if.then36.i:                                      ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @warn_bogus_irq_restore() #17
  br label %seqcount_lockdep_reader_access.exit

seqcount_lockdep_reader_access.exit:              ; preds = %if.then36.i, %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %6) #17, !srcloc !295
  %12 = ptrtoint ptr %period_seqcount to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %period_seqcount, align 4
  %and42 = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool.not43 = icmp eq i32 %and42, 0
  br i1 %tobool.not43, label %seqcount_lockdep_reader_access.exit.while.end_crit_edge, label %seqcount_lockdep_reader_access.exit.do.end_crit_edge

seqcount_lockdep_reader_access.exit.do.end_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit
  br label %do.end

seqcount_lockdep_reader_access.exit.while.end_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end

do.end:                                           ; preds = %do.end.do.end_crit_edge, %seqcount_lockdep_reader_access.exit.do.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !296
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #17, !srcloc !297
  %14 = ptrtoint ptr %period_seqcount to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %period_seqcount, align 4
  %and = and i32 %15, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end.while.end_crit_edge, label %do.end.do.end_crit_edge

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end

while.end:                                        ; preds = %do.end.while.end_crit_edge, %seqcount_lockdep_reader_access.exit.while.end_crit_edge
  %.lcssa = phi i32 [ %13, %seqcount_lockdep_reader_access.exit.while.end_crit_edge ], [ %15, %do.end.while.end_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !298
  %16 = ptrtoint ptr %period_at_vtime to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %period_at_vtime, align 8
  %18 = ptrtoint ptr %now3 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %now3, align 8
  %20 = ptrtoint ptr %period_at to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %period_at, align 8
  %sub = sub i64 %19, %21
  %22 = ptrtoint ptr %vrate to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %vrate, align 8
  %mul = mul i64 %sub, %23
  %add = add i64 %mul, %17
  %24 = ptrtoint ptr %vnow to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %add, ptr %vnow, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !299
  %25 = ptrtoint ptr %period_seqcount to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %period_seqcount, align 4
  %cmp.i.i.not = icmp eq i32 %26, %.lcssa
  br i1 %cmp.i.i.not, label %do.end30, label %while.end.do.body_crit_edge

while.end.do.body_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body

do.end30:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @weight_updated(ptr noundef %iocg, ptr nocapture noundef readonly %now) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %ioc1 = getelementptr inbounds %struct.ioc_gq, ptr %iocg, i32 0, i32 1
  %0 = ptrtoint ptr %ioc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioc1, align 8
  %tobool.not.i.i = icmp eq ptr %iocg, null
  br i1 %tobool.not.i.i, label %entry.iocg_to_blkg.exit_crit_edge, label %cond.true.i.i

entry.iocg_to_blkg.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %iocg_to_blkg.exit

cond.true.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %2 = ptrtoint ptr %iocg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iocg, align 4
  br label %iocg_to_blkg.exit

iocg_to_blkg.exit:                                ; preds = %cond.true.i.i, %entry.iocg_to_blkg.exit_crit_edge
  %cond.i.i = phi ptr [ %3, %cond.true.i.i ], [ null, %entry.iocg_to_blkg.exit_crit_edge ]
  %blkcg = getelementptr inbounds %struct.blkcg_gq, ptr %cond.i.i, i32 0, i32 3
  %4 = ptrtoint ptr %blkcg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %blkcg, align 4
  %tobool.not.i.i44 = icmp eq ptr %5, null
  br i1 %tobool.not.i.i44, label %iocg_to_blkg.exit.blkcg_to_iocc.exit_crit_edge, label %cond.true.i.i45

iocg_to_blkg.exit.blkcg_to_iocc.exit_crit_edge:   ; preds = %iocg_to_blkg.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %blkcg_to_iocc.exit

cond.true.i.i45:                                  ; preds = %iocg_to_blkg.exit
  call void @__sanitizer_cov_trace_pc() #19
  %6 = load i32, ptr @blkcg_policy_iocost, align 4
  %arrayidx.i.i = getelementptr %struct.blkcg, ptr %5, i32 0, i32 6, i32 %6
  %7 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i.i, align 4
  br label %blkcg_to_iocc.exit

blkcg_to_iocc.exit:                               ; preds = %cond.true.i.i45, %iocg_to_blkg.exit.blkcg_to_iocc.exit_crit_edge
  %cond.i.i46 = phi ptr [ %8, %cond.true.i.i45 ], [ null, %iocg_to_blkg.exit.blkcg_to_iocc.exit_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %9 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %blkcg_to_iocc.exit.if.end_crit_edge, label %land.rhs

blkcg_to_iocc.exit.if.end_crit_edge:              ; preds = %blkcg_to_iocc.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

land.rhs:                                         ; preds = %blkcg_to_iocc.exit
  %dep_map = getelementptr inbounds %struct.ioc, ptr %1, i32 0, i32 8, i32 0, i32 0, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !286

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.44, i32 noundef 1233, i32 noundef 9, ptr noundef null) #17
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %blkcg_to_iocc.exit.if.end_crit_edge
  %cfg_weight = getelementptr inbounds %struct.ioc_gq, ptr %iocg, i32 0, i32 2
  %10 = ptrtoint ptr %cfg_weight to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cfg_weight, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool27.not = icmp eq i32 %11, 0
  br i1 %tobool27.not, label %cond.false, label %if.end.cond.end_crit_edge

if.end.cond.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.end

cond.false:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %dfl_weight = getelementptr inbounds %struct.ioc_cgrp, ptr %cond.i.i46, i32 0, i32 1
  %12 = ptrtoint ptr %dfl_weight to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dfl_weight, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end.cond.end_crit_edge
  %cond = phi i32 [ %13, %cond.false ], [ %11, %if.end.cond.end_crit_edge ]
  %weight28 = getelementptr inbounds %struct.ioc_gq, ptr %iocg, i32 0, i32 3
  %14 = ptrtoint ptr %weight28 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %weight28, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %cond, i32 %15)
  %cmp29.not = icmp eq i32 %cond, %15
  br i1 %cmp29.not, label %cond.end.if.end32_crit_edge, label %land.lhs.true

cond.end.if.end32_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end32

land.lhs.true:                                    ; preds = %cond.end
  %active = getelementptr inbounds %struct.ioc_gq, ptr %iocg, i32 0, i32 4
  %16 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %active, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool30.not = icmp eq i32 %17, 0
  br i1 %tobool30.not, label %land.lhs.true.if.end32_crit_edge, label %if.then31

land.lhs.true.if.end32_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end32

if.then31:                                        ; preds = %land.lhs.true
  %inuse = getelementptr inbounds %struct.ioc_gq, ptr %iocg, i32 0, i32 5
  %18 = ptrtoint ptr %inuse to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %inuse, align 8
  tail call fastcc void @__propagate_weights(ptr noundef %iocg, i32 noundef %cond, i32 noundef %19, i1 noundef zeroext true, ptr noundef %now) #17
  %20 = ptrtoint ptr %ioc1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ioc1, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %22 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i.i47 = icmp eq i32 %22, 0
  br i1 %tobool.not.i.i47, label %if.then31.if.end.i.i_crit_edge, label %land.rhs.i.i

if.then31.if.end.i.i_crit_edge:                   ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i.i

land.rhs.i.i:                                     ; preds = %if.then31
  %dep_map.i.i = getelementptr inbounds %struct.ioc, ptr %21, i32 0, i32 8, i32 0, i32 0, i32 4
  %call.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i, i32 noundef -1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %cmp.not.i.i, label %do.end.i.i, label %land.rhs.i.i.if.end.i.i_crit_edge, !prof !286

land.rhs.i.i.if.end.i.i_crit_edge:                ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i.i

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.44, i32 noundef 1129, i32 noundef 9, ptr noundef null) #17
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end.i.i, %land.rhs.i.i.if.end.i.i_crit_edge, %if.then31.if.end.i.i_crit_edge
  %weights_updated.i.i = getelementptr inbounds %struct.ioc, ptr %21, i32 0, i32 21
  %23 = ptrtoint ptr %weights_updated.i.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %weights_updated.i.i, align 4, !range !288
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool24.not.i.i = icmp eq i8 %24, 0
  br i1 %tobool24.not.i.i, label %if.end.i.i.if.end32_crit_edge, label %do.end29.i.i

if.end.i.i.if.end32_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end32

do.end29.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !289
  %hweight_gen.i.i = getelementptr inbounds %struct.ioc, ptr %21, i32 0, i32 22
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %hweight_gen.i.i, i32 noundef 4) #17
  tail call void @llvm.prefetch.p0(ptr %hweight_gen.i.i, i32 1, i32 3, i32 1) #17
  %25 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %hweight_gen.i.i, ptr %hweight_gen.i.i, i32 1, ptr elementtype(i32) %hweight_gen.i.i) #17, !srcloc !290
  %26 = ptrtoint ptr %weights_updated.i.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %weights_updated.i.i, align 4
  br label %if.end32

if.end32:                                         ; preds = %do.end29.i.i, %if.end.i.i.if.end32_crit_edge, %land.lhs.true.if.end32_crit_edge, %cond.end.if.end32_crit_edge
  %27 = ptrtoint ptr %weight28 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %cond, ptr %weight28, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blkg_conf_prep(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @blkg_conf_finish(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__propagate_weights(ptr noundef %iocg, i32 noundef %active, i32 noundef %inuse, i1 noundef zeroext %save, ptr nocapture noundef readonly %now) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %ioc1 = getelementptr inbounds %struct.ioc_gq, ptr %iocg, i32 0, i32 1
  %0 = ptrtoint ptr %ioc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioc1, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %2 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.ioc, ptr %1, i32 0, i32 8, i32 0, i32 0, i32 4
  %call.i152 = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i152)
  %cmp.not = icmp eq i32 %call.i152, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !286

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.44, i32 noundef 1070, i32 noundef 9, ptr noundef null) #17
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %active_list = getelementptr inbounds %struct.ioc_gq, ptr %iocg, i32 0, i32 15
  %3 = ptrtoint ptr %active_list to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %active_list, align 4
  %cmp.i.not = icmp eq ptr %4, %active_list
  br i1 %cmp.i.not, label %land.lhs.true, label %if.end.if.else_crit_edge

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else

land.lhs.true:                                    ; preds = %if.end
  %child_active_sum = getelementptr inbounds %struct.ioc_gq, ptr %iocg, i32 0, i32 16
  %5 = ptrtoint ptr %child_active_sum to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %child_active_sum, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %6)
  %tobool27.not = icmp eq i64 %6, 0
  br i1 %tobool27.not, label %land.lhs.true.if.else_crit_edge, label %if.then28

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else

if.then28:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  %conv = zext i32 %active to i64
  %child_inuse_sum = getelementptr inbounds %struct.ioc_gq, ptr %iocg, i32 0, i32 17
  %7 = ptrtoint ptr %child_inuse_sum to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %child_inuse_sum, align 8
  %mul = mul i64 %8, %conv
  %add = add i64 %6, -1
  %sub = add i64 %add, %mul
  %call31 = tail call i64 @div64_u64(i64 noundef %sub, i64 noundef %6) #17
  %conv32 = trunc i64 %call31 to i32
  br label %if.end43

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end.if.else_crit_edge
  %9 = tail call i32 @llvm.umax.i32(i32 %inuse, i32 1)
  %10 = tail call i32 @llvm.umin.i32(i32 %9, i32 %active)
  br label %if.end43

if.end43:                                         ; preds = %if.else, %if.then28
  %inuse.addr.0 = phi i32 [ %conv32, %if.then28 ], [ %10, %if.else ]
  %inuse44 = getelementptr inbounds %struct.ioc_gq, ptr %iocg, i32 0, i32 5
  %11 = ptrtoint ptr %inuse44 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %inuse44, align 8
  %last_inuse = getelementptr inbounds %struct.ioc_gq, ptr %iocg, i32 0, i32 6
  %13 = ptrtoint ptr %last_inuse to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %last_inuse, align 4
  br i1 %save, label %if.then46, label %if.end43.if.end49_crit_edge

if.end43.if.end49_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end49

if.then46:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #19
  %vnow = getelementptr inbounds %struct.ioc_now, ptr %now, i32 0, i32 2
  %14 = ptrtoint ptr %vnow to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %vnow, align 8
  %vtime = getelementptr inbounds %struct.ioc_gq, ptr %iocg, i32 0, i32 9
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %vtime, i32 noundef 8) #17
  %call.i = tail call i64 @generic_atomic64_read(ptr noundef %vtime) #17
  %sub48 = sub i64 %15, %call.i
  %saved_margin = getelementptr inbounds %struct.ioc_gq, ptr %iocg, i32 0, i32 7
  %16 = ptrtoint ptr %saved_margin to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %sub48, ptr %saved_margin, align 8
  br label %if.end49

if.end49:                                         ; preds = %if.then46, %if.end43.if.end49_crit_edge
  %active50 = getelementptr inbounds %struct.ioc_gq, ptr %iocg, i32 0, i32 4
  %17 = ptrtoint ptr %active50 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %active50, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %active)
  %cmp51 = icmp eq i32 %18, %active
  br i1 %cmp51, label %land.lhs.true53, label %if.end49.if.end58_crit_edge

if.end49.if.end58_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end58

land.lhs.true53:                                  ; preds = %if.end49
  %19 = ptrtoint ptr %inuse44 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %inuse44, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %inuse.addr.0, i32 %20)
  %cmp55 = icmp eq i32 %inuse.addr.0, %20
  br i1 %cmp55, label %land.lhs.true53.cleanup103_crit_edge, label %land.lhs.true53.if.end58_crit_edge

land.lhs.true53.if.end58_crit_edge:               ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end58

land.lhs.true53.cleanup103_crit_edge:             ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup103

if.end58:                                         ; preds = %land.lhs.true53.if.end58_crit_edge, %if.end49.if.end58_crit_edge
  %level = getelementptr inbounds %struct.ioc_gq, ptr %iocg, i32 0, i32 38
  %21 = ptrtoint ptr %level to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %level, align 8
  %lvl.0157 = add i32 %22, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %lvl.0157)
  %cmp60158 = icmp sgt i32 %lvl.0157, -1
  br i1 %cmp60158, label %if.end58.for.body_crit_edge, label %if.end58.for.end_crit_edge

if.end58.for.end_crit_edge:                       ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

if.end58.for.body_crit_edge:                      ; preds = %if.end58
  br label %for.body

for.body:                                         ; preds = %for.body.backedge, %if.end58.for.body_crit_edge
  %lvl.0162 = phi i32 [ %lvl.0162.be, %for.body.backedge ], [ %lvl.0157, %if.end58.for.body_crit_edge ]
  %active.addr.0161 = phi i32 [ %parent_active.0, %for.body.backedge ], [ %active, %if.end58.for.body_crit_edge ]
  %inuse.addr.1160 = phi i32 [ %parent_inuse.0, %for.body.backedge ], [ %inuse.addr.0, %if.end58.for.body_crit_edge ]
  %lvl.0.in159 = phi i32 [ %lvl.0162, %for.body.backedge ], [ %22, %if.end58.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.ioc_gq, ptr %iocg, i32 0, i32 39, i32 %lvl.0162
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx, align 4
  %arrayidx64 = getelementptr %struct.ioc_gq, ptr %iocg, i32 0, i32 39, i32 %lvl.0.in159
  %25 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx64, align 4
  %active65 = getelementptr inbounds %struct.ioc_gq, ptr %26, i32 0, i32 4
  %27 = ptrtoint ptr %active65 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %active65, align 4
  %sub66 = sub i32 %active.addr.0161, %28
  %conv67 = sext i32 %sub66 to i64
  %child_active_sum68 = getelementptr inbounds %struct.ioc_gq, ptr %24, i32 0, i32 16
  %29 = ptrtoint ptr %child_active_sum68 to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %child_active_sum68, align 8
  %add69 = add i64 %30, %conv67
  store i64 %add69, ptr %child_active_sum68, align 8
  %inuse70 = getelementptr inbounds %struct.ioc_gq, ptr %26, i32 0, i32 5
  %31 = ptrtoint ptr %inuse70 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %inuse70, align 8
  %sub71 = sub i32 %inuse.addr.1160, %32
  %conv72 = sext i32 %sub71 to i64
  %child_inuse_sum73 = getelementptr inbounds %struct.ioc_gq, ptr %24, i32 0, i32 17
  %33 = ptrtoint ptr %child_inuse_sum73 to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %child_inuse_sum73, align 8
  %add74 = add i64 %34, %conv72
  store i64 %add74, ptr %child_inuse_sum73, align 8
  store i32 %active.addr.0161, ptr %active65, align 4
  store i32 %inuse.addr.1160, ptr %inuse70, align 8
  %35 = load i64, ptr %child_active_sum68, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %35)
  %tobool78.not = icmp eq i64 %35, 0
  br i1 %tobool78.not, label %for.body.if.end90_crit_edge, label %if.then79

for.body.if.end90_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end90

if.then79:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  %weight = getelementptr inbounds %struct.ioc_gq, ptr %24, i32 0, i32 3
  %36 = ptrtoint ptr %weight to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %weight, align 8
  %conv83 = zext i32 %37 to i64
  %38 = ptrtoint ptr %child_inuse_sum73 to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %child_inuse_sum73, align 8
  %mul85 = mul i64 %39, %conv83
  %add86 = add i64 %35, -1
  %sub87 = add i64 %add86, %mul85
  %call88 = tail call i64 @div64_u64(i64 noundef %sub87, i64 noundef %35) #17
  %conv89 = trunc i64 %call88 to i32
  br label %if.end90

if.end90:                                         ; preds = %if.then79, %for.body.if.end90_crit_edge
  %parent_active.0 = phi i32 [ %37, %if.then79 ], [ 0, %for.body.if.end90_crit_edge ]
  %parent_inuse.0 = phi i32 [ %conv89, %if.then79 ], [ 0, %for.body.if.end90_crit_edge ]
  %active91 = getelementptr inbounds %struct.ioc_gq, ptr %24, i32 0, i32 4
  %40 = ptrtoint ptr %active91 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %active91, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %parent_active.0, i32 %41)
  %cmp92 = icmp eq i32 %parent_active.0, %41
  br i1 %cmp92, label %land.lhs.true94, label %cleanup

land.lhs.true94:                                  ; preds = %if.end90
  %inuse95 = getelementptr inbounds %struct.ioc_gq, ptr %24, i32 0, i32 5
  %42 = ptrtoint ptr %inuse95 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %inuse95, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %parent_inuse.0, i32 %43)
  %cmp96 = icmp ne i32 %parent_inuse.0, %43
  %lvl.0 = add i32 %lvl.0162, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %lvl.0)
  %cmp60 = icmp sgt i32 %lvl.0, -1
  %or.cond = select i1 %cmp96, i1 %cmp60, i1 false
  br i1 %or.cond, label %land.lhs.true94.for.body.backedge_crit_edge, label %land.lhs.true94.for.end_crit_edge

land.lhs.true94.for.end_crit_edge:                ; preds = %land.lhs.true94
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

land.lhs.true94.for.body.backedge_crit_edge:      ; preds = %land.lhs.true94
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.backedge

cleanup:                                          ; preds = %if.end90
  %lvl.0.old = add i32 %lvl.0162, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %lvl.0.old)
  %cmp60.old = icmp sgt i32 %lvl.0.old, -1
  br i1 %cmp60.old, label %cleanup.for.body.backedge_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

cleanup.for.body.backedge_crit_edge:              ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.backedge

for.body.backedge:                                ; preds = %cleanup.for.body.backedge_crit_edge, %land.lhs.true94.for.body.backedge_crit_edge
  %lvl.0162.be = phi i32 [ %lvl.0.old, %cleanup.for.body.backedge_crit_edge ], [ %lvl.0, %land.lhs.true94.for.body.backedge_crit_edge ]
  br label %for.body

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %land.lhs.true94.for.end_crit_edge, %if.end58.for.end_crit_edge
  %weights_updated = getelementptr inbounds %struct.ioc, ptr %1, i32 0, i32 21
  %44 = ptrtoint ptr %weights_updated to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 1, ptr %weights_updated, align 4
  br label %cleanup103

cleanup103:                                       ; preds = %for.end, %land.lhs.true53.cleanup103_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_u64(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @ioc_qos_prfill(ptr noundef %sf, ptr nocapture noundef readonly %pd, i32 noundef %off) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pd, align 4
  %call = tail call ptr @blkg_dev_name(ptr noundef %1) #17
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %ioc2 = getelementptr inbounds %struct.ioc_gq, ptr %pd, i32 0, i32 1
  %2 = ptrtoint ptr %ioc2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ioc2, align 8
  %enabled = getelementptr inbounds %struct.ioc, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %enabled, align 4, !range !288
  %6 = zext i8 %5 to i32
  %user_qos_params = getelementptr inbounds %struct.ioc, ptr %3, i32 0, i32 29
  %7 = ptrtoint ptr %user_qos_params to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load = load i8, ptr %user_qos_params, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %bf.cast.not = icmp sgt i8 %bf.load, -1
  %cond = select i1 %bf.cast.not, ptr @.str.47, ptr @.str.46
  %params = getelementptr inbounds %struct.ioc, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %params, align 8
  %.frozen = freeze i32 %9
  %div = udiv i32 %.frozen, 10000
  %10 = mul i32 %div, 10000
  %rem.decomposed = sub i32 %.frozen, %10
  %div8.lhs.trunc = trunc i32 %rem.decomposed to i16
  %div856 = udiv i16 %div8.lhs.trunc, 100
  %div8.zext = zext i16 %div856 to i32
  %arrayidx11 = getelementptr %struct.ioc, ptr %3, i32 0, i32 2, i32 0, i32 1
  %11 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx11, align 4
  %arrayidx14 = getelementptr %struct.ioc, ptr %3, i32 0, i32 2, i32 0, i32 2
  %13 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx14, align 8
  %.frozen60 = freeze i32 %14
  %div15 = udiv i32 %.frozen60, 10000
  %15 = mul i32 %div15, 10000
  %rem19.decomposed = sub i32 %.frozen60, %15
  %div20.lhs.trunc = trunc i32 %rem19.decomposed to i16
  %div2057 = udiv i16 %div20.lhs.trunc, 100
  %div20.zext = zext i16 %div2057 to i32
  %arrayidx23 = getelementptr %struct.ioc, ptr %3, i32 0, i32 2, i32 0, i32 3
  %16 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx23, align 4
  %arrayidx26 = getelementptr %struct.ioc, ptr %3, i32 0, i32 2, i32 0, i32 4
  %18 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx26, align 8
  %.frozen61 = freeze i32 %19
  %div27 = udiv i32 %.frozen61, 10000
  %20 = mul i32 %div27, 10000
  %rem31.decomposed = sub i32 %.frozen61, %20
  %div32.lhs.trunc = trunc i32 %rem31.decomposed to i16
  %div3258 = udiv i16 %div32.lhs.trunc, 100
  %div32.zext = zext i16 %div3258 to i32
  %arrayidx35 = getelementptr %struct.ioc, ptr %3, i32 0, i32 2, i32 0, i32 5
  %21 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx35, align 4
  %.frozen62 = freeze i32 %22
  %div36 = udiv i32 %.frozen62, 10000
  %23 = mul i32 %div36, 10000
  %rem40.decomposed = sub i32 %.frozen62, %23
  %div41.lhs.trunc = trunc i32 %rem40.decomposed to i16
  %div4159 = udiv i16 %div41.lhs.trunc, 100
  %div41.zext = zext i16 %div4159 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.45, ptr noundef nonnull %call, i32 noundef %6, ptr noundef nonnull %cond, i32 noundef %div, i32 noundef %div8.zext, i32 noundef %12, i32 noundef %div15, i32 noundef %div20.zext, i32 noundef %17, i32 noundef %div27, i32 noundef %div32.zext, i32 noundef %div36, i32 noundef %div41.zext) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i64 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @blkcg_conf_open_bdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @blk_iocost_init(ptr noundef %q) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 464) #22
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call noalias ptr @__alloc_percpu(i32 noundef 48, i32 noundef 8) #23
  %pcpu_stat = getelementptr inbounds %struct.ioc, ptr %call7.i.i, i32 0, i32 11
  %1 = ptrtoint ptr %pcpu_stat to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call1, ptr %pcpu_stat, align 4
  %tobool3.not = icmp eq ptr %call1, null
  br i1 %tobool3.not, label %if.end.cleanup.sink.split_crit_edge, label %for.cond.preheader

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup.sink.split

for.cond.preheader:                               ; preds = %if.end
  %call699 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #25
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %2 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call699, i32 %2)
  %cmp100 = icmp ult i32 %call699, %2
  br i1 %cmp100, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end17_crit_edge

for.cond.preheader.for.end17_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end17

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %call6101 = phi i32 [ %call6, %for.body.for.body_crit_edge ], [ %call699, %for.cond.preheader.for.body_crit_edge ]
  %3 = ptrtoint ptr %pcpu_stat to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pcpu_stat, align 4
  %5 = ptrtoint ptr %4 to i32
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call6101
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %add = add i32 %7, %5
  %8 = inttoptr i32 %add to ptr
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %8, i32 noundef 4) #17
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile i32 0, ptr %8, align 4
  %nr_missed = getelementptr [2 x %struct.ioc_missed], ptr %8, i32 0, i32 0, i32 1
  %call.i.i87 = tail call zeroext i1 @__kasan_check_write(ptr noundef %nr_missed, i32 noundef 4) #17
  %10 = ptrtoint ptr %nr_missed to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile i32 0, ptr %nr_missed, align 4
  %arrayidx12.1 = getelementptr [2 x %struct.ioc_missed], ptr %8, i32 0, i32 1
  %call.i.i.1 = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx12.1, i32 noundef 4) #17
  %11 = ptrtoint ptr %arrayidx12.1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile i32 0, ptr %arrayidx12.1, align 4
  %nr_missed.1 = getelementptr [2 x %struct.ioc_missed], ptr %8, i32 0, i32 1, i32 1
  %call.i.i87.1 = tail call zeroext i1 @__kasan_check_write(ptr noundef %nr_missed.1, i32 noundef 4) #17
  %12 = ptrtoint ptr %nr_missed.1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile i32 0, ptr %nr_missed.1, align 4
  %rq_wait_ns = getelementptr inbounds %struct.ioc_pcpu_stat, ptr %8, i32 0, i32 1
  %call.i.i88 = tail call zeroext i1 @__kasan_check_write(ptr noundef %rq_wait_ns, i32 noundef 8) #17
  tail call void @generic_atomic64_set(ptr noundef %rq_wait_ns, i64 noundef 0) #17
  %call6 = tail call i32 @cpumask_next(i32 noundef %call6101, ptr noundef nonnull @__cpu_possible_mask) #25
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %13 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call6, %13
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end17_crit_edge

for.body.for.end17_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end17

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.end17:                                        ; preds = %for.body.for.end17_crit_edge, %for.cond.preheader.for.end17_crit_edge
  %id = getelementptr inbounds %struct.rq_qos, ptr %call7.i.i, i32 0, i32 2
  %14 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 2, ptr %id, align 8
  %15 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @ioc_rqos_ops, ptr %call7.i.i, align 8
  %q19 = getelementptr inbounds %struct.rq_qos, ptr %call7.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %q19 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %q, ptr %q19, align 4
  %lock = getelementptr inbounds %struct.ioc, ptr %call7.i.i, i32 0, i32 8
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.49, ptr noundef nonnull @blk_iocost_init.__key, i16 noundef signext 3) #17
  %timer = getelementptr inbounds %struct.ioc, ptr %call7.i.i, i32 0, i32 9
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @ioc_timer_fn, i32 noundef 0, ptr noundef nonnull @.str.51, ptr noundef nonnull @blk_iocost_init.__key.50) #17
  %active_iocgs = getelementptr inbounds %struct.ioc, ptr %call7.i.i, i32 0, i32 10
  %17 = ptrtoint ptr %active_iocgs to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %active_iocgs, ptr %active_iocgs, align 4
  %prev.i = getelementptr inbounds %struct.ioc, ptr %call7.i.i, i32 0, i32 10, i32 1
  %18 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %active_iocgs, ptr %prev.i, align 8
  %running = getelementptr inbounds %struct.ioc, ptr %call7.i.i, i32 0, i32 12
  %19 = ptrtoint ptr %running to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %running, align 8
  %vtime_base_rate = getelementptr inbounds %struct.ioc, ptr %call7.i.i, i32 0, i32 14
  %20 = ptrtoint ptr %vtime_base_rate to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 137438, ptr %vtime_base_rate, align 8
  %vtime_rate = getelementptr inbounds %struct.ioc, ptr %call7.i.i, i32 0, i32 13
  %call.i.i89 = tail call zeroext i1 @__kasan_check_write(ptr noundef %vtime_rate, i32 noundef 8) #17
  tail call void @generic_atomic64_set(ptr noundef %vtime_rate, i64 noundef 137438) #17
  %period_seqcount = getelementptr inbounds %struct.ioc, ptr %call7.i.i, i32 0, i32 16
  %dep_map.i = getelementptr inbounds %struct.ioc, ptr %call7.i.i, i32 0, i32 16, i32 0, i32 1
  tail call void @lockdep_init_map_type(ptr noundef %dep_map.i, ptr noundef nonnull @.str.53, ptr noundef nonnull @blk_iocost_init.__key.52, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #17
  %21 = ptrtoint ptr %period_seqcount to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %period_seqcount, align 8
  %lock32 = getelementptr inbounds %struct.ioc, ptr %call7.i.i, i32 0, i32 16, i32 1
  %22 = ptrtoint ptr %lock32 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %lock, ptr %lock32, align 8
  %call35 = tail call i64 @ktime_get() #17
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call35)
  %cmp8.i.i = icmp slt i64 %call35, 0
  %23 = tail call i64 @llvm.abs.i64(i64 %call35, i1 false) #17
  %24 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %23, i32 0) #24, !srcloc !291
  %asmresult.i.i.i = extractvalue { i64, i32 } %24, 0
  %asmresult4.i.i.i = extractvalue { i64, i32 } %24, 1
  %25 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %23, i64 %asmresult.i.i.i, i32 %asmresult4.i.i.i) #24, !srcloc !292
  %asmresult10.i.i.i = extractvalue { i64, i32 } %25, 0
  %tmp.0.i.i = lshr i64 %asmresult10.i.i.i, 9
  %sub210.i.i = sub nsw i64 0, %tmp.0.i.i
  %cond213.i.i = select i1 %cmp8.i.i, i64 %sub210.i.i, i64 %tmp.0.i.i
  %period_at = getelementptr inbounds %struct.ioc, ptr %call7.i.i, i32 0, i32 17
  %26 = ptrtoint ptr %period_at to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %cond213.i.i, ptr %period_at, align 8
  %cur_period = getelementptr inbounds %struct.ioc, ptr %call7.i.i, i32 0, i32 19
  %call.i.i90 = tail call zeroext i1 @__kasan_check_write(ptr noundef %cur_period, i32 noundef 8) #17
  tail call void @generic_atomic64_set(ptr noundef %cur_period, i64 noundef 0) #17
  %hweight_gen = getelementptr inbounds %struct.ioc, ptr %call7.i.i, i32 0, i32 22
  %call.i.i91 = tail call zeroext i1 @__kasan_check_write(ptr noundef %hweight_gen, i32 noundef 4) #17
  %27 = ptrtoint ptr %hweight_gen to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile i32 0, ptr %hweight_gen, align 8
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #17
  %autop_idx = getelementptr inbounds %struct.ioc, ptr %call7.i.i, i32 0, i32 28
  %28 = ptrtoint ptr %autop_idx to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %autop_idx, align 8
  tail call fastcc void @ioc_refresh_params(ptr noundef nonnull %call7.i.i, i1 noundef zeroext true)
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #17
  tail call void @blk_mq_freeze_queue(ptr noundef %q) #17
  %queue_lock.i = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 14
  tail call void @_raw_spin_lock_irq(ptr noundef %queue_lock.i) #17
  %rq_qos.i = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 4
  %29 = ptrtoint ptr %rq_qos.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %rq_qos.i, align 4
  %next.i = getelementptr inbounds %struct.rq_qos, ptr %call7.i.i, i32 0, i32 3
  %31 = ptrtoint ptr %next.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %30, ptr %next.i, align 4
  store ptr %call7.i.i, ptr %rq_qos.i, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %queue_lock.i) #17
  tail call void @blk_mq_unfreeze_queue(ptr noundef %q) #17
  %32 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %call7.i.i, align 8
  %debugfs_attrs.i = getelementptr inbounds %struct.rq_qos_ops, ptr %33, i32 0, i32 10
  %34 = ptrtoint ptr %debugfs_attrs.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %debugfs_attrs.i, align 4
  %tobool.not.i = icmp eq ptr %35, null
  br i1 %tobool.not.i, label %for.end17.rq_qos_add.exit_crit_edge, label %if.then.i

for.end17.rq_qos_add.exit_crit_edge:              ; preds = %for.end17
  call void @__sanitizer_cov_trace_pc() #19
  br label %rq_qos_add.exit

if.then.i:                                        ; preds = %for.end17
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @blk_mq_debugfs_register_rqos(ptr noundef nonnull %call7.i.i) #17
  br label %rq_qos_add.exit

rq_qos_add.exit:                                  ; preds = %if.then.i, %for.end17.rq_qos_add.exit_crit_edge
  %call40 = tail call i32 @blkcg_activate_policy(ptr noundef %q, ptr noundef nonnull @blkcg_policy_iocost) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %rq_qos_add.exit.cleanup_crit_edge, label %if.then42

rq_qos_add.exit.cleanup_crit_edge:                ; preds = %rq_qos_add.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then42:                                        ; preds = %rq_qos_add.exit
  tail call void @blk_mq_freeze_queue(ptr noundef %q) #17
  tail call void @_raw_spin_lock_irq(ptr noundef %queue_lock.i) #17
  %36 = ptrtoint ptr %rq_qos.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %rq_qos.i, align 4
  %tobool.not13.i = icmp eq ptr %37, null
  br i1 %tobool.not13.i, label %if.then42.rq_qos_del.exit_crit_edge, label %for.body.i.preheader

if.then42.rq_qos_del.exit_crit_edge:              ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #19
  br label %rq_qos_del.exit

for.body.i.preheader:                             ; preds = %if.then42
  %cmp.i102 = icmp eq ptr %37, %call7.i.i
  br i1 %cmp.i102, label %for.body.i.preheader.if.then.i96_crit_edge, label %for.body.i.preheader.for.cond.i_crit_edge

for.body.i.preheader.for.cond.i_crit_edge:        ; preds = %for.body.i.preheader
  br label %for.cond.i

for.body.i.preheader.if.then.i96_crit_edge:       ; preds = %for.body.i.preheader
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then.i96

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %for.body.i.preheader.for.cond.i_crit_edge
  %38 = phi ptr [ %40, %for.body.i.for.cond.i_crit_edge ], [ %37, %for.body.i.preheader.for.cond.i_crit_edge ]
  %next1.i = getelementptr inbounds %struct.rq_qos, ptr %38, i32 0, i32 3
  %39 = ptrtoint ptr %next1.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %next1.i, align 4
  %tobool.not.i94 = icmp eq ptr %40, null
  br i1 %tobool.not.i94, label %for.cond.i.rq_qos_del.exit_crit_edge, label %for.body.i

for.cond.i.rq_qos_del.exit_crit_edge:             ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rq_qos_del.exit

for.body.i:                                       ; preds = %for.cond.i
  %cmp.i = icmp eq ptr %40, %call7.i.i
  br i1 %cmp.i, label %if.then.i96.loopexit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond.i

if.then.i96.loopexit:                             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  %next1.i.le = getelementptr inbounds %struct.rq_qos, ptr %38, i32 0, i32 3
  br label %if.then.i96

if.then.i96:                                      ; preds = %if.then.i96.loopexit, %for.body.i.preheader.if.then.i96_crit_edge
  %cur.014.i.lcssa = phi ptr [ %rq_qos.i, %for.body.i.preheader.if.then.i96_crit_edge ], [ %next1.i.le, %if.then.i96.loopexit ]
  %41 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %next.i, align 4
  %43 = ptrtoint ptr %cur.014.i.lcssa to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %42, ptr %cur.014.i.lcssa, align 4
  br label %rq_qos_del.exit

rq_qos_del.exit:                                  ; preds = %if.then.i96, %for.cond.i.rq_qos_del.exit_crit_edge, %if.then42.rq_qos_del.exit_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %queue_lock.i) #17
  tail call void @blk_mq_unfreeze_queue(ptr noundef %q) #17
  tail call void @blk_mq_debugfs_unregister_rqos(ptr noundef nonnull %call7.i.i) #17
  %44 = ptrtoint ptr %pcpu_stat to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pcpu_stat, align 4
  tail call void @free_percpu(ptr noundef %45) #17
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %rq_qos_del.exit, %if.end.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %call40, %rq_qos_del.exit ], [ -12, %if.end.cleanup.sink.split_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #17
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %rq_qos_add.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ 0, %rq_qos_add.exit.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strsep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @match_token(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @match_u64(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @match_strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cgroup_parse_float(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_stat_enable_accounting(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_flag_set(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_flag_clear(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ioc_refresh_params(ptr noundef %ioc, i1 noundef zeroext %force) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.ioc, ptr %ioc, i32 0, i32 8, i32 0, i32 0, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !286

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.44, i32 noundef 906, i32 noundef 9, ptr noundef null) #17
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %autop_idx.i = getelementptr inbounds %struct.ioc, ptr %ioc, i32 0, i32 28
  %1 = ptrtoint ptr %autop_idx.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %autop_idx.i, align 8
  %q.i = getelementptr inbounds %struct.rq_qos, ptr %ioc, i32 0, i32 1
  %3 = ptrtoint ptr %q.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %q.i, align 4
  %queue_flags.i = getelementptr inbounds %struct.request_queue, ptr %4, i32 0, i32 11
  %5 = ptrtoint ptr %queue_flags.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %queue_flags.i, align 4
  %7 = and i32 %6, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %if.end.ioc_autop_idx.exit_crit_edge, label %if.end.i

if.end.ioc_autop_idx.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %ioc_autop_idx.exit

if.end.i:                                         ; preds = %if.end
  %queue_depth.i.i = getelementptr inbounds %struct.request_queue, ptr %4, i32 0, i32 7
  %8 = ptrtoint ptr %queue_depth.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %queue_depth.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end.i.blk_queue_depth.exit.i_crit_edge

if.end.i.blk_queue_depth.exit.i_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %blk_queue_depth.exit.i

if.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  %nr_requests.i.i = getelementptr inbounds %struct.request_queue, ptr %4, i32 0, i32 21
  %10 = ptrtoint ptr %nr_requests.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nr_requests.i.i, align 8
  br label %blk_queue_depth.exit.i

blk_queue_depth.exit.i:                           ; preds = %if.end.i.i, %if.end.i.blk_queue_depth.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %11, %if.end.i.i ], [ %9, %if.end.i.blk_queue_depth.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %retval.0.i.i)
  %cmp.i = icmp eq i32 %retval.0.i.i, 1
  br i1 %cmp.i, label %blk_queue_depth.exit.i.ioc_autop_idx.exit_crit_edge, label %if.end5.i

blk_queue_depth.exit.i.ioc_autop_idx.exit_crit_edge: ; preds = %blk_queue_depth.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %ioc_autop_idx.exit

if.end5.i:                                        ; preds = %blk_queue_depth.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %2)
  %cmp6.i = icmp slt i32 %2, 3
  br i1 %cmp6.i, label %if.end5.i.ioc_autop_idx.exit_crit_edge, label %if.end8.i

if.end5.i.ioc_autop_idx.exit_crit_edge:           ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %ioc_autop_idx.exit

if.end8.i:                                        ; preds = %if.end5.i
  %user_qos_params.i = getelementptr inbounds %struct.ioc, ptr %ioc, i32 0, i32 29
  %12 = ptrtoint ptr %user_qos_params.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load.i = load i8, ptr %user_qos_params.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %bf.load.i)
  %13 = icmp ult i8 %bf.load.i, 64
  br i1 %13, label %if.end13.i, label %if.end8.i.ioc_autop_idx.exit_crit_edge

if.end8.i.ioc_autop_idx.exit_crit_edge:           ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %ioc_autop_idx.exit

if.end13.i:                                       ; preds = %if.end8.i
  %vtime_base_rate.i = getelementptr inbounds %struct.ioc, ptr %ioc, i32 0, i32 14
  %14 = ptrtoint ptr %vtime_base_rate.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %vtime_base_rate.i, align 8
  %mul.i = mul i64 %15, 100
  %call14.i = tail call i64 @div64_u64(i64 noundef %mul.i, i64 noundef 137438) #17
  %conv.i = trunc i64 %call14.i to i32
  %call.i.i1 = tail call i64 @ktime_get() #17
  %16 = and i32 %2, 33554431
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %16)
  %tobool16.not.not.i = icmp eq i32 %16, 3
  br i1 %tobool16.not.not.i, label %land.lhs.true.i, label %if.end31.i

land.lhs.true.i:                                  ; preds = %if.end13.i
  %too_fast_vrate_pct.i = getelementptr [5 x %struct.ioc_params], ptr @autop, i32 0, i32 %2, i32 3
  %17 = ptrtoint ptr %too_fast_vrate_pct.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %too_fast_vrate_pct.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %conv.i)
  %cmp18.not.i = icmp ugt i32 %18, %conv.i
  %autop_too_fast_at3084.i = getelementptr inbounds %struct.ioc, ptr %ioc, i32 0, i32 26
  br i1 %cmp18.not.i, label %if.end31.thread83.i, label %if.then20.i

if.end31.thread83.i:                              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  %19 = ptrtoint ptr %autop_too_fast_at3084.i to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 0, ptr %autop_too_fast_at3084.i, align 8
  br label %if.else49.i

if.then20.i:                                      ; preds = %land.lhs.true.i
  %20 = ptrtoint ptr %autop_too_fast_at3084.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %autop_too_fast_at3084.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %21)
  %tobool21.not.i = icmp eq i64 %21, 0
  br i1 %tobool21.not.i, label %if.then22.i, label %if.then20.i.if.end24.i_crit_edge

if.then20.i.if.end24.i_crit_edge:                 ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end24.i

if.then22.i:                                      ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #19
  %22 = ptrtoint ptr %autop_too_fast_at3084.i to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %call.i.i1, ptr %autop_too_fast_at3084.i, align 8
  br label %if.end24.i

if.end24.i:                                       ; preds = %if.then22.i, %if.then20.i.if.end24.i_crit_edge
  %23 = ptrtoint ptr %autop_too_fast_at3084.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %autop_too_fast_at3084.i, align 8
  %sub.i = sub i64 %call.i.i1, %24
  call void @__sanitizer_cov_trace_const_cmp8(i64 9999999999, i64 %sub.i)
  %cmp26.i = icmp ugt i64 %sub.i, 9999999999
  br i1 %cmp26.i, label %if.then28.i, label %if.end24.i.if.else49.i_crit_edge

if.end24.i.if.else49.i_crit_edge:                 ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else49.i

if.then28.i:                                      ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #19
  %add.i = add nuw i32 %2, 1
  br label %ioc_autop_idx.exit

if.end31.i:                                       ; preds = %if.end13.i
  %autop_too_fast_at30.i = getelementptr inbounds %struct.ioc, ptr %ioc, i32 0, i32 26
  %25 = ptrtoint ptr %autop_too_fast_at30.i to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 0, ptr %autop_too_fast_at30.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %16)
  %tobool32.not.not.i = icmp eq i32 %16, 4
  br i1 %tobool32.not.not.i, label %land.lhs.true33.i, label %if.end31.i.if.else49.i_crit_edge

if.end31.i.if.else49.i_crit_edge:                 ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else49.i

land.lhs.true33.i:                                ; preds = %if.end31.i
  %too_slow_vrate_pct.i = getelementptr [5 x %struct.ioc_params], ptr @autop, i32 0, i32 %2, i32 4
  %26 = ptrtoint ptr %too_slow_vrate_pct.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %too_slow_vrate_pct.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %conv.i)
  %cmp35.not.i = icmp ult i32 %27, %conv.i
  br i1 %cmp35.not.i, label %land.lhs.true33.i.if.else49.i_crit_edge, label %if.then37.i

land.lhs.true33.i.if.else49.i_crit_edge:          ; preds = %land.lhs.true33.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else49.i

if.then37.i:                                      ; preds = %land.lhs.true33.i
  %autop_too_slow_at.i = getelementptr inbounds %struct.ioc, ptr %ioc, i32 0, i32 27
  %28 = ptrtoint ptr %autop_too_slow_at.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %autop_too_slow_at.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %29)
  %tobool38.not.i = icmp eq i64 %29, 0
  br i1 %tobool38.not.i, label %if.then39.i, label %if.then37.i.if.end41.i_crit_edge

if.then37.i.if.end41.i_crit_edge:                 ; preds = %if.then37.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end41.i

if.then39.i:                                      ; preds = %if.then37.i
  call void @__sanitizer_cov_trace_pc() #19
  %30 = ptrtoint ptr %autop_too_slow_at.i to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %call.i.i1, ptr %autop_too_slow_at.i, align 8
  br label %if.end41.i

if.end41.i:                                       ; preds = %if.then39.i, %if.then37.i.if.end41.i_crit_edge
  %31 = ptrtoint ptr %autop_too_slow_at.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %autop_too_slow_at.i, align 8
  %sub43.i = sub i64 %call.i.i1, %32
  call void @__sanitizer_cov_trace_const_cmp8(i64 9999999999, i64 %sub43.i)
  %cmp44.i = icmp ugt i64 %sub43.i, 9999999999
  %sub47.i = sext i1 %cmp44.i to i32
  %spec.select.i = add nsw i32 %2, %sub47.i
  br label %ioc_autop_idx.exit

if.else49.i:                                      ; preds = %land.lhs.true33.i.if.else49.i_crit_edge, %if.end31.i.if.else49.i_crit_edge, %if.end24.i.if.else49.i_crit_edge, %if.end31.thread83.i
  %autop_too_slow_at50.i = getelementptr inbounds %struct.ioc, ptr %ioc, i32 0, i32 27
  %33 = ptrtoint ptr %autop_too_slow_at50.i to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 0, ptr %autop_too_slow_at50.i, align 8
  br label %ioc_autop_idx.exit

ioc_autop_idx.exit:                               ; preds = %if.else49.i, %if.end41.i, %if.then28.i, %if.end8.i.ioc_autop_idx.exit_crit_edge, %if.end5.i.ioc_autop_idx.exit_crit_edge, %blk_queue_depth.exit.i.ioc_autop_idx.exit_crit_edge, %if.end.ioc_autop_idx.exit_crit_edge
  %retval.0.i = phi i32 [ %add.i, %if.then28.i ], [ 1, %if.end.ioc_autop_idx.exit_crit_edge ], [ 2, %blk_queue_depth.exit.i.ioc_autop_idx.exit_crit_edge ], [ 3, %if.end5.i.ioc_autop_idx.exit_crit_edge ], [ %2, %if.end8.i.ioc_autop_idx.exit_crit_edge ], [ %2, %if.else49.i ], [ %spec.select.i, %if.end41.i ]
  %arrayidx = getelementptr [5 x %struct.ioc_params], ptr @autop, i32 0, i32 %retval.0.i
  %34 = ptrtoint ptr %autop_idx.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %autop_idx.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i, i32 %35)
  %cmp25 = icmp eq i32 %retval.0.i, %35
  %cmp25.not = xor i1 %cmp25, true
  %brmerge = or i1 %cmp25.not, %force
  br i1 %brmerge, label %if.end28, label %ioc_autop_idx.exit.cleanup_crit_edge

ioc_autop_idx.exit.cleanup_crit_edge:             ; preds = %ioc_autop_idx.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end28:                                         ; preds = %ioc_autop_idx.exit
  br i1 %cmp25, label %if.end28.if.end32_crit_edge, label %if.then31

if.end28.if.end32_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end32

if.then31:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #19
  %vtime_rate = getelementptr inbounds %struct.ioc, ptr %ioc, i32 0, i32 13
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %vtime_rate, i32 noundef 8) #17
  tail call void @generic_atomic64_set(ptr noundef %vtime_rate, i64 noundef 137438) #17
  br label %if.end32

if.end32:                                         ; preds = %if.then31, %if.end28.if.end32_crit_edge
  %36 = ptrtoint ptr %autop_idx.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %retval.0.i, ptr %autop_idx.i, align 8
  %autop_too_fast_at = getelementptr inbounds %struct.ioc, ptr %ioc, i32 0, i32 26
  %user_qos_params = getelementptr inbounds %struct.ioc, ptr %ioc, i32 0, i32 29
  %37 = call ptr @memset(ptr %autop_too_fast_at, i32 0, i32 16)
  %38 = ptrtoint ptr %user_qos_params to i32
  call void @__asan_load1_noabort(i32 %38)
  %bf.load = load i8, ptr %user_qos_params, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %bf.cast.not = icmp sgt i8 %bf.load, -1
  br i1 %bf.cast.not, label %if.then34, label %if.end32.if.end37_crit_edge

if.end32.if.end37_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end37

if.then34:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #19
  %params = getelementptr inbounds %struct.ioc, ptr %ioc, i32 0, i32 2
  %39 = call ptr @memcpy(ptr %params, ptr %arrayidx, i32 24)
  br label %if.end37

if.end37:                                         ; preds = %if.then34, %if.end32.if.end37_crit_edge
  %40 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %bf.cast40.not = icmp eq i8 %40, 0
  br i1 %bf.cast40.not, label %if.then41, label %if.end37.if.end46_crit_edge

if.end37.if.end46_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end46

if.then41:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #19
  %i_lcoefs = getelementptr inbounds %struct.ioc, ptr %ioc, i32 0, i32 2, i32 1
  %i_lcoefs44 = getelementptr [5 x %struct.ioc_params], ptr @autop, i32 0, i32 %retval.0.i, i32 1
  %41 = call ptr @memcpy(ptr %i_lcoefs, ptr %i_lcoefs44, i32 48)
  br label %if.end46

if.end46:                                         ; preds = %if.then41, %if.end37.if.end46_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %42 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool.not.i2 = icmp eq i32 %42, 0
  br i1 %tobool.not.i2, label %if.end46.ioc_refresh_period_us.exit_crit_edge, label %land.rhs.i

if.end46.ioc_refresh_period_us.exit_crit_edge:    ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #19
  br label %ioc_refresh_period_us.exit

land.rhs.i:                                       ; preds = %if.end46
  %dep_map.i = getelementptr inbounds %struct.ioc, ptr %ioc, i32 0, i32 8, i32 0, i32 0, i32 4
  %call.i.i3 = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i3)
  %cmp.not.i = icmp eq i32 %call.i.i3, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.ioc_refresh_period_us.exit_crit_edge, !prof !286

land.rhs.i.ioc_refresh_period_us.exit_crit_edge:  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %ioc_refresh_period_us.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.44, i32 noundef 771, i32 noundef 9, ptr noundef null) #17
  br label %ioc_refresh_period_us.exit

ioc_refresh_period_us.exit:                       ; preds = %do.end.i, %land.rhs.i.ioc_refresh_period_us.exit_crit_edge, %if.end46.ioc_refresh_period_us.exit_crit_edge
  %arrayidx.i = getelementptr %struct.ioc, ptr %ioc, i32 0, i32 2, i32 0, i32 1
  %43 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx.i, align 4
  %arrayidx26.i = getelementptr %struct.ioc, ptr %ioc, i32 0, i32 2, i32 0, i32 3
  %45 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx26.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %46)
  %cmp27.not.i = icmp ult i32 %44, %46
  %params.i = getelementptr inbounds %struct.ioc, ptr %ioc, i32 0, i32 2
  %arrayidx37.i = getelementptr %struct.ioc, ptr %ioc, i32 0, i32 2, i32 0, i32 2
  %47 = tail call i32 @llvm.umax.i32(i32 %44, i32 %46) #17
  %ppm.0.in.i = select i1 %cmp27.not.i, ptr %arrayidx37.i, ptr %params.i
  %48 = ptrtoint ptr %ppm.0.in.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %ppm.0.i = load i32, ptr %ppm.0.in.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ppm.0.i)
  %tobool42.not.i = icmp eq i32 %ppm.0.i, 0
  %sub.i4 = sub i32 1000000, %ppm.0.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 149999, i32 %sub.i4)
  %cmp45.i = icmp ugt i32 %sub.i4, 149999
  %div.i = udiv i32 %sub.i4, 50000
  %cond.i = select i1 %cmp45.i, i32 %div.i, i32 2
  %multi.0.i = select i1 %tobool42.not.i, i32 2, i32 %cond.i
  %mul.i5 = mul i32 %multi.0.i, %47
  %49 = tail call i32 @llvm.umax.i32(i32 %mul.i5, i32 1000) #17
  %50 = tail call i32 @llvm.umin.i32(i32 %49, i32 1000000) #17
  %period_us60.i = getelementptr inbounds %struct.ioc, ptr %ioc, i32 0, i32 4
  %51 = ptrtoint ptr %period_us60.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %period_us60.i, align 8
  %narrow.i = mul nuw nsw i32 %50, 1000
  %mul61.i = zext i32 %narrow.i to i64
  %call63.i = tail call i64 @div64_u64(i64 noundef %mul61.i, i64 noundef 100) #17
  %conv64.i = trunc i64 %call63.i to i32
  %timer_slack_ns.i = getelementptr inbounds %struct.ioc, ptr %ioc, i32 0, i32 5
  %52 = ptrtoint ptr %timer_slack_ns.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %conv64.i, ptr %timer_slack_ns.i, align 4
  %margins1.i.i = getelementptr inbounds %struct.ioc, ptr %ioc, i32 0, i32 3
  %53 = ptrtoint ptr %period_us60.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %period_us60.i, align 8
  %vtime_base_rate.i.i = getelementptr inbounds %struct.ioc, ptr %ioc, i32 0, i32 14
  %55 = ptrtoint ptr %vtime_base_rate.i.i to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %vtime_base_rate.i.i, align 8
  %mul.i.i = mul i32 %54, 10
  %div.i.i = udiv i32 %mul.i.i, 100
  %conv.i.i = zext i32 %div.i.i to i64
  %mul3.i.i = mul i64 %56, %conv.i.i
  %57 = ptrtoint ptr %margins1.i.i to i32
  call void @__asan_store8_noabort(i32 %57)
  store i64 %mul3.i.i, ptr %margins1.i.i, align 8
  %mul4.i.i = mul i32 %54, 20
  %div5.i.i = udiv i32 %mul4.i.i, 100
  %conv6.i.i = zext i32 %div5.i.i to i64
  %mul7.i.i = mul i64 %56, %conv6.i.i
  %low.i.i = getelementptr inbounds %struct.ioc, ptr %ioc, i32 0, i32 3, i32 1
  %58 = ptrtoint ptr %low.i.i to i32
  call void @__asan_store8_noabort(i32 %58)
  store i64 %mul7.i.i, ptr %low.i.i, align 8
  %mul8.i.i = mul i32 %54, 50
  %div9.i.i = udiv i32 %mul8.i.i, 100
  %conv10.i.i = zext i32 %div9.i.i to i64
  %mul11.i.i = mul i64 %56, %conv10.i.i
  %target.i.i = getelementptr inbounds %struct.ioc, ptr %ioc, i32 0, i32 3, i32 2
  %59 = ptrtoint ptr %target.i.i to i32
  call void @__asan_store8_noabort(i32 %59)
  store i64 %mul11.i.i, ptr %target.i.i, align 8
  %i_lcoefs.i = getelementptr inbounds %struct.ioc, ptr %ioc, i32 0, i32 2, i32 1
  %lcoefs.i = getelementptr inbounds %struct.ioc, ptr %ioc, i32 0, i32 2, i32 2
  %60 = ptrtoint ptr %i_lcoefs.i to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %i_lcoefs.i, align 8
  %arrayidx3.i = getelementptr %struct.ioc, ptr %ioc, i32 0, i32 2, i32 1, i32 1
  %62 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %arrayidx3.i, align 8
  %arrayidx4.i = getelementptr %struct.ioc, ptr %ioc, i32 0, i32 2, i32 1, i32 2
  %64 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %arrayidx4.i, align 8
  %arrayidx6.i = getelementptr %struct.ioc, ptr %ioc, i32 0, i32 2, i32 2, i32 1
  %arrayidx7.i = getelementptr %struct.ioc, ptr %ioc, i32 0, i32 2, i32 2, i32 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %61)
  %tobool.not.i.i7 = icmp eq i64 %61, 0
  %66 = call ptr @memset(ptr %lcoefs.i, i32 0, i32 24)
  br i1 %tobool.not.i.i7, label %ioc_refresh_period_us.exit.if.end190.i.i_crit_edge, label %if.end183.i.i

ioc_refresh_period_us.exit.if.end190.i.i_crit_edge: ; preds = %ioc_refresh_period_us.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end190.i.i

if.end183.i.i:                                    ; preds = %ioc_refresh_period_us.exit
  call void @__sanitizer_cov_trace_pc() #19
  %sub.i.i = add i64 %61, 4095
  %shr.i.i = lshr i64 %sub.i.i, 12
  %sub188.i.i = add nuw nsw i64 %shr.i.i, 137438953471
  %call189.i.i = tail call i64 @div64_u64(i64 noundef %sub188.i.i, i64 noundef %shr.i.i) #17
  %67 = ptrtoint ptr %lcoefs.i to i32
  call void @__asan_store8_noabort(i32 %67)
  store i64 %call189.i.i, ptr %lcoefs.i, align 8
  br label %if.end190.i.i

if.end190.i.i:                                    ; preds = %if.end183.i.i, %ioc_refresh_period_us.exit.if.end190.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %63)
  %tobool191.not.i.i = icmp eq i64 %63, 0
  br i1 %tobool191.not.i.i, label %if.end190.i.i.if.end203.i.i_crit_edge, label %if.then192.i.i

if.end190.i.i.if.end203.i.i_crit_edge:            ; preds = %if.end190.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end203.i.i

if.then192.i.i:                                   ; preds = %if.end190.i.i
  %sub196.i.i = add i64 %63, 137438953471
  %call197.i.i = tail call i64 @div64_u64(i64 noundef %sub196.i.i, i64 noundef %63) #17
  %68 = ptrtoint ptr %lcoefs.i to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %lcoefs.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %call197.i.i, i64 %69)
  %cmp198.i.i = icmp ugt i64 %call197.i.i, %69
  br i1 %cmp198.i.i, label %if.then200.i.i, label %if.then192.i.i.if.end203.i.i_crit_edge

if.then192.i.i.if.end203.i.i_crit_edge:           ; preds = %if.then192.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end203.i.i

if.then200.i.i:                                   ; preds = %if.then192.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %sub201.i.i = sub i64 %call197.i.i, %69
  %70 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store8_noabort(i32 %70)
  store i64 %sub201.i.i, ptr %arrayidx6.i, align 8
  br label %if.end203.i.i

if.end203.i.i:                                    ; preds = %if.then200.i.i, %if.then192.i.i.if.end203.i.i_crit_edge, %if.end190.i.i.if.end203.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %65)
  %tobool204.not.i.i = icmp eq i64 %65, 0
  br i1 %tobool204.not.i.i, label %if.end203.i.i.calc_lcoefs.exit.i_crit_edge, label %if.then205.i.i

if.end203.i.i.calc_lcoefs.exit.i_crit_edge:       ; preds = %if.end203.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %calc_lcoefs.exit.i

if.then205.i.i:                                   ; preds = %if.end203.i.i
  %sub209.i.i = add i64 %65, 137438953471
  %call210.i.i = tail call i64 @div64_u64(i64 noundef %sub209.i.i, i64 noundef %65) #17
  %71 = ptrtoint ptr %lcoefs.i to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %lcoefs.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %call210.i.i, i64 %72)
  %cmp211.i.i = icmp ugt i64 %call210.i.i, %72
  br i1 %cmp211.i.i, label %if.then213.i.i, label %if.then205.i.i.calc_lcoefs.exit.i_crit_edge

if.then205.i.i.calc_lcoefs.exit.i_crit_edge:      ; preds = %if.then205.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %calc_lcoefs.exit.i

if.then213.i.i:                                   ; preds = %if.then205.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %sub214.i.i = sub i64 %call210.i.i, %72
  %73 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store8_noabort(i32 %73)
  store i64 %sub214.i.i, ptr %arrayidx7.i, align 8
  br label %calc_lcoefs.exit.i

calc_lcoefs.exit.i:                               ; preds = %if.then213.i.i, %if.then205.i.i.calc_lcoefs.exit.i_crit_edge, %if.end203.i.i.calc_lcoefs.exit.i_crit_edge
  %arrayidx8.i = getelementptr %struct.ioc, ptr %ioc, i32 0, i32 2, i32 1, i32 3
  %74 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load8_noabort(i32 %74)
  %75 = load i64, ptr %arrayidx8.i, align 8
  %arrayidx9.i = getelementptr %struct.ioc, ptr %ioc, i32 0, i32 2, i32 1, i32 4
  %76 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %arrayidx9.i, align 8
  %arrayidx10.i = getelementptr %struct.ioc, ptr %ioc, i32 0, i32 2, i32 1, i32 5
  %78 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %arrayidx10.i, align 8
  %arrayidx11.i = getelementptr %struct.ioc, ptr %ioc, i32 0, i32 2, i32 2, i32 3
  %arrayidx12.i = getelementptr %struct.ioc, ptr %ioc, i32 0, i32 2, i32 2, i32 4
  %arrayidx13.i = getelementptr %struct.ioc, ptr %ioc, i32 0, i32 2, i32 2, i32 5
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %75)
  %tobool.not.i25.i = icmp eq i64 %75, 0
  %80 = call ptr @memset(ptr %arrayidx11.i, i32 0, i32 24)
  br i1 %tobool.not.i25.i, label %calc_lcoefs.exit.i.if.end190.i32.i_crit_edge, label %if.end183.i30.i

calc_lcoefs.exit.i.if.end190.i32.i_crit_edge:     ; preds = %calc_lcoefs.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end190.i32.i

if.end183.i30.i:                                  ; preds = %calc_lcoefs.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  %sub.i26.i = add i64 %75, 4095
  %shr.i27.i = lshr i64 %sub.i26.i, 12
  %sub188.i28.i = add nuw nsw i64 %shr.i27.i, 137438953471
  %call189.i29.i = tail call i64 @div64_u64(i64 noundef %sub188.i28.i, i64 noundef %shr.i27.i) #17
  %81 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store8_noabort(i32 %81)
  store i64 %call189.i29.i, ptr %arrayidx11.i, align 8
  br label %if.end190.i32.i

if.end190.i32.i:                                  ; preds = %if.end183.i30.i, %calc_lcoefs.exit.i.if.end190.i32.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %77)
  %tobool191.not.i31.i = icmp eq i64 %77, 0
  br i1 %tobool191.not.i31.i, label %if.end190.i32.i.if.end203.i40.i_crit_edge, label %if.then192.i36.i

if.end190.i32.i.if.end203.i40.i_crit_edge:        ; preds = %if.end190.i32.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end203.i40.i

if.then192.i36.i:                                 ; preds = %if.end190.i32.i
  %sub196.i33.i = add i64 %77, 137438953471
  %call197.i34.i = tail call i64 @div64_u64(i64 noundef %sub196.i33.i, i64 noundef %77) #17
  %82 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load8_noabort(i32 %82)
  %83 = load i64, ptr %arrayidx11.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %call197.i34.i, i64 %83)
  %cmp198.i35.i = icmp ugt i64 %call197.i34.i, %83
  br i1 %cmp198.i35.i, label %if.then200.i38.i, label %if.then192.i36.i.if.end203.i40.i_crit_edge

if.then192.i36.i.if.end203.i40.i_crit_edge:       ; preds = %if.then192.i36.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end203.i40.i

if.then200.i38.i:                                 ; preds = %if.then192.i36.i
  call void @__sanitizer_cov_trace_pc() #19
  %sub201.i37.i = sub i64 %call197.i34.i, %83
  %84 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store8_noabort(i32 %84)
  store i64 %sub201.i37.i, ptr %arrayidx12.i, align 8
  br label %if.end203.i40.i

if.end203.i40.i:                                  ; preds = %if.then200.i38.i, %if.then192.i36.i.if.end203.i40.i_crit_edge, %if.end190.i32.i.if.end203.i40.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %79)
  %tobool204.not.i39.i = icmp eq i64 %79, 0
  br i1 %tobool204.not.i39.i, label %if.end203.i40.i.ioc_refresh_lcoefs.exit_crit_edge, label %if.then205.i44.i

if.end203.i40.i.ioc_refresh_lcoefs.exit_crit_edge: ; preds = %if.end203.i40.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %ioc_refresh_lcoefs.exit

if.then205.i44.i:                                 ; preds = %if.end203.i40.i
  %sub209.i41.i = add i64 %79, 137438953471
  %call210.i42.i = tail call i64 @div64_u64(i64 noundef %sub209.i41.i, i64 noundef %79) #17
  %85 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load8_noabort(i32 %85)
  %86 = load i64, ptr %arrayidx11.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %call210.i42.i, i64 %86)
  %cmp211.i43.i = icmp ugt i64 %call210.i42.i, %86
  br i1 %cmp211.i43.i, label %if.then213.i46.i, label %if.then205.i44.i.ioc_refresh_lcoefs.exit_crit_edge

if.then205.i44.i.ioc_refresh_lcoefs.exit_crit_edge: ; preds = %if.then205.i44.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %ioc_refresh_lcoefs.exit

if.then213.i46.i:                                 ; preds = %if.then205.i44.i
  call void @__sanitizer_cov_trace_pc() #19
  %sub214.i45.i = sub i64 %call210.i42.i, %86
  %87 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store8_noabort(i32 %87)
  store i64 %sub214.i45.i, ptr %arrayidx13.i, align 8
  br label %ioc_refresh_lcoefs.exit

ioc_refresh_lcoefs.exit:                          ; preds = %if.then213.i46.i, %if.then205.i44.i.ioc_refresh_lcoefs.exit_crit_edge, %if.end203.i40.i.ioc_refresh_lcoefs.exit_crit_edge
  %arrayidx50 = getelementptr %struct.ioc, ptr %ioc, i32 0, i32 2, i32 0, i32 4
  %88 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %arrayidx50, align 8
  %conv = zext i32 %89 to i64
  %mul = mul nuw nsw i64 %conv, 137438
  %sub = add nuw nsw i64 %mul, 999999
  %call51 = tail call i64 @div64_u64(i64 noundef %sub, i64 noundef 1000000) #17
  %vrate_min = getelementptr inbounds %struct.ioc, ptr %ioc, i32 0, i32 6
  %90 = ptrtoint ptr %vrate_min to i32
  call void @__asan_store8_noabort(i32 %90)
  store i64 %call51, ptr %vrate_min, align 8
  %arrayidx54 = getelementptr %struct.ioc, ptr %ioc, i32 0, i32 2, i32 0, i32 5
  %91 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %arrayidx54, align 4
  %conv55 = zext i32 %92 to i64
  %mul56 = mul nuw nsw i64 %conv55, 137438
  %call57 = tail call i64 @div64_u64(i64 noundef %mul56, i64 noundef 1000000) #17
  %vrate_max = getelementptr inbounds %struct.ioc, ptr %ioc, i32 0, i32 7
  %93 = ptrtoint ptr %vrate_max to i32
  call void @__asan_store8_noabort(i32 %93)
  store i64 %call57, ptr %vrate_max, align 8
  br label %cleanup

cleanup:                                          ; preds = %ioc_refresh_lcoefs.exit, %ioc_autop_idx.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blkdev_put_no_open(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__alloc_percpu(i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ioc_timer_fn(ptr noundef %timer) #0 align 64 {
entry:
  %inner_walk.i = alloca %struct.list_head, align 4
  %now = alloca %struct.ioc_now, align 8
  %surpluses = alloca %struct.list_head, align 4
  %missed_ppm = alloca [2 x i32], align 4
  %hw_active = alloca i32, align 4
  %hw_inuse = alloca i32, align 4
  %hwa = alloca i32, align 4
  %old_hwi = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %timer, i32 -244
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %now) #17
  %0 = getelementptr inbounds %struct.ioc_now, ptr %now, i32 0, i32 1
  %1 = getelementptr inbounds %struct.ioc_now, ptr %now, i32 0, i32 2
  %2 = call ptr @memset(ptr %now, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %surpluses) #17
  %3 = getelementptr inbounds %struct.list_head, ptr %surpluses, i32 0, i32 1
  %4 = ptrtoint ptr %surpluses to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %surpluses, ptr %surpluses, align 4
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %surpluses, ptr %3, align 4
  %params = getelementptr i8, ptr %timer, i32 -220
  %6 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %params, align 8
  %sub = sub i32 1000000, %7
  %arrayidx3 = getelementptr i8, ptr %timer, i32 -212
  %8 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx3, align 8
  %sub4 = sub i32 1000000, %9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %missed_ppm) #17
  %10 = getelementptr inbounds [2 x i32], ptr %missed_ppm, i32 0, i32 1
  %call101.i = call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_online_mask) #25
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %11 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call101.i, i32 %11)
  %cmp102.i = icmp ult i32 %call101.i, %11
  br i1 %cmp102.i, label %for.body.lr.ph.i, label %entry.for.cond35.preheader.i_crit_edge

entry.for.cond35.preheader.i_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond35.preheader.i

for.body.lr.ph.i:                                 ; preds = %entry
  %pcpu_stat.i = getelementptr i8, ptr %timer, i32 56
  br label %for.body.i

for.cond35.preheader.loopexit.i:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  %phi.bo.i = mul i64 %add32.i, 100
  br label %for.cond35.preheader.i

for.cond35.preheader.i:                           ; preds = %for.cond35.preheader.loopexit.i, %entry.for.cond35.preheader.i_crit_edge
  %nr_met.sroa.6.0.i = phi i32 [ %add16.1.i, %for.cond35.preheader.loopexit.i ], [ 0, %entry.for.cond35.preheader.i_crit_edge ]
  %nr_met.sroa.0.0.i = phi i32 [ %add16.i, %for.cond35.preheader.loopexit.i ], [ 0, %entry.for.cond35.preheader.i_crit_edge ]
  %nr_missed.sroa.6.0.i = phi i32 [ %add21.1.i, %for.cond35.preheader.loopexit.i ], [ 0, %entry.for.cond35.preheader.i_crit_edge ]
  %nr_missed.sroa.0.0.i = phi i32 [ %add21.i, %for.cond35.preheader.loopexit.i ], [ 0, %entry.for.cond35.preheader.i_crit_edge ]
  %rq_wait_ns.0.lcssa.i = phi i64 [ %phi.bo.i, %for.cond35.preheader.loopexit.i ], [ 0, %entry.for.cond35.preheader.i_crit_edge ]
  %add40.i = add i32 %nr_missed.sroa.0.0.i, %nr_met.sroa.0.0.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add40.i)
  %tobool.not.i = icmp eq i32 %add40.i, 0
  br i1 %tobool.not.i, label %for.cond35.preheader.i.for.inc53.i_crit_edge, label %if.then.i

for.cond35.preheader.i.for.inc53.i_crit_edge:     ; preds = %for.cond35.preheader.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc53.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %nr_met.sroa.6.1.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add16.1.i, %for.body.i.for.body.i_crit_edge ]
  %nr_met.sroa.0.1.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add16.i, %for.body.i.for.body.i_crit_edge ]
  %nr_missed.sroa.6.1.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add21.1.i, %for.body.i.for.body.i_crit_edge ]
  %nr_missed.sroa.0.1.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add21.i, %for.body.i.for.body.i_crit_edge ]
  %call104.i = phi i32 [ %call101.i, %for.body.lr.ph.i ], [ %call.i510, %for.body.i.for.body.i_crit_edge ]
  %rq_wait_ns.0103.i = phi i64 [ 0, %for.body.lr.ph.i ], [ %add32.i, %for.body.i.for.body.i_crit_edge ]
  %12 = ptrtoint ptr %pcpu_stat.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pcpu_stat.i, align 4
  %14 = ptrtoint ptr %13 to i32
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call104.i
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %16, %14
  %17 = inttoptr i32 %add.i to ptr
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %17, i32 noundef 4) #17
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %17, align 4
  %nr_missed10.i = getelementptr [2 x %struct.ioc_missed], ptr %17, i32 0, i32 0, i32 1
  %call.i.i96.i = call zeroext i1 @__kasan_check_read(ptr noundef %nr_missed10.i, i32 noundef 4) #17
  %20 = ptrtoint ptr %nr_missed10.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %nr_missed10.i, align 4
  %last_met.i = getelementptr [2 x %struct.ioc_missed], ptr %17, i32 0, i32 0, i32 2
  %22 = ptrtoint ptr %last_met.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %last_met.i, align 8
  %sub.i = sub i32 %19, %23
  %add16.i = add i32 %sub.i, %nr_met.sroa.0.1.i
  %last_missed.i = getelementptr [2 x %struct.ioc_missed], ptr %17, i32 0, i32 0, i32 3
  %24 = ptrtoint ptr %last_missed.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %last_missed.i, align 4
  %sub19.i = sub i32 %21, %25
  %add21.i = add i32 %sub19.i, %nr_missed.sroa.0.1.i
  store i32 %19, ptr %last_met.i, align 8
  store i32 %21, ptr %last_missed.i, align 4
  %arrayidx5.1.i = getelementptr [2 x %struct.ioc_missed], ptr %17, i32 0, i32 1
  %call.i.i.1.i = call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx5.1.i, i32 noundef 4) #17
  %26 = ptrtoint ptr %arrayidx5.1.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %arrayidx5.1.i, align 4
  %nr_missed10.1.i = getelementptr [2 x %struct.ioc_missed], ptr %17, i32 0, i32 1, i32 1
  %call.i.i96.1.i = call zeroext i1 @__kasan_check_read(ptr noundef %nr_missed10.1.i, i32 noundef 4) #17
  %28 = ptrtoint ptr %nr_missed10.1.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %nr_missed10.1.i, align 4
  %last_met.1.i = getelementptr [2 x %struct.ioc_missed], ptr %17, i32 0, i32 1, i32 2
  %30 = ptrtoint ptr %last_met.1.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %last_met.1.i, align 8
  %sub.1.i = sub i32 %27, %31
  %add16.1.i = add i32 %sub.1.i, %nr_met.sroa.6.1.i
  %last_missed.1.i = getelementptr [2 x %struct.ioc_missed], ptr %17, i32 0, i32 1, i32 3
  %32 = ptrtoint ptr %last_missed.1.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %last_missed.1.i, align 4
  %sub19.1.i = sub i32 %29, %33
  %add21.1.i = add i32 %sub19.1.i, %nr_missed.sroa.6.1.i
  store i32 %27, ptr %last_met.1.i, align 8
  store i32 %29, ptr %last_missed.1.i, align 4
  %rq_wait_ns28.i = getelementptr inbounds %struct.ioc_pcpu_stat, ptr %17, i32 0, i32 1
  %call.i.i97.i = call zeroext i1 @__kasan_check_read(ptr noundef %rq_wait_ns28.i, i32 noundef 8) #17
  %call.i.i509 = call i64 @generic_atomic64_read(ptr noundef %rq_wait_ns28.i) #17
  %last_rq_wait_ns.i = getelementptr inbounds %struct.ioc_pcpu_stat, ptr %17, i32 0, i32 2
  %34 = ptrtoint ptr %last_rq_wait_ns.i to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %last_rq_wait_ns.i, align 8
  %sub31.i = add i64 %call.i.i509, %rq_wait_ns.0103.i
  %add32.i = sub i64 %sub31.i, %35
  store i64 %call.i.i509, ptr %last_rq_wait_ns.i, align 8
  %call.i510 = call i32 @cpumask_next(i32 noundef %call104.i, ptr noundef nonnull @__cpu_online_mask) #25
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %36 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.i = icmp ult i32 %call.i510, %36
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.cond35.preheader.loopexit.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i

if.then.i:                                        ; preds = %for.cond35.preheader.i
  call void @__sanitizer_cov_trace_pc() #19
  %conv.i = zext i32 %add40.i to i64
  %conv46.i = zext i32 %nr_missed.sroa.0.0.i to i64
  %mul.i = mul nuw nsw i64 %conv46.i, 1000000
  %add47.i = add nsw i64 %conv.i, -1
  %sub48.i = add nuw nsw i64 %add47.i, %mul.i
  %call49.i = call i64 @div64_u64(i64 noundef %sub48.i, i64 noundef %conv.i) #17
  %conv50.i = trunc i64 %call49.i to i32
  br label %for.inc53.i

for.inc53.i:                                      ; preds = %if.then.i, %for.cond35.preheader.i.for.inc53.i_crit_edge
  %storemerge.i = phi i32 [ %conv50.i, %if.then.i ], [ 0, %for.cond35.preheader.i.for.inc53.i_crit_edge ]
  %37 = ptrtoint ptr %missed_ppm to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %storemerge.i, ptr %missed_ppm, align 4
  %add40.1.i = add i32 %nr_missed.sroa.6.0.i, %nr_met.sroa.6.0.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add40.1.i)
  %tobool.not.1.i = icmp eq i32 %add40.1.i, 0
  br i1 %tobool.not.1.i, label %for.inc53.i.ioc_lat_stat.exit_crit_edge, label %if.then.1.i

for.inc53.i.ioc_lat_stat.exit_crit_edge:          ; preds = %for.inc53.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %ioc_lat_stat.exit

if.then.1.i:                                      ; preds = %for.inc53.i
  call void @__sanitizer_cov_trace_pc() #19
  %conv.1.i = zext i32 %add40.1.i to i64
  %conv46.1.i = zext i32 %nr_missed.sroa.6.0.i to i64
  %mul.1.i = mul nuw nsw i64 %conv46.1.i, 1000000
  %add47.1.i = add nsw i64 %conv.1.i, -1
  %sub48.1.i = add nuw nsw i64 %add47.1.i, %mul.1.i
  %call49.1.i = call i64 @div64_u64(i64 noundef %sub48.1.i, i64 noundef %conv.1.i) #17
  %conv50.1.i = trunc i64 %call49.1.i to i32
  br label %ioc_lat_stat.exit

ioc_lat_stat.exit:                                ; preds = %if.then.1.i, %for.inc53.i.ioc_lat_stat.exit_crit_edge
  %conv50.1.sink.i = phi i32 [ %conv50.1.i, %if.then.1.i ], [ 0, %for.inc53.i.ioc_lat_stat.exit_crit_edge ]
  %38 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %conv50.1.sink.i, ptr %10, align 4
  %period_us.i = getelementptr i8, ptr %timer, i32 -68
  %39 = ptrtoint ptr %period_us.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %period_us.i, align 8
  %mul57.i = mul i32 %40, 1000
  %conv58.i = zext i32 %mul57.i to i64
  %call59.i = call i64 @div64_u64(i64 noundef %rq_wait_ns.0.lcssa.i, i64 noundef %conv58.i) #17
  %conv60.i = trunc i64 %call59.i to i32
  %lock = getelementptr i8, ptr %timer, i32 -44
  call void @_raw_spin_lock_irq(ptr noundef %lock) #17
  call fastcc void @ioc_now(ptr noundef %add.ptr, ptr noundef nonnull %now)
  %41 = ptrtoint ptr %1 to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %1, align 8
  %period_at_vtime = getelementptr i8, ptr %timer, i32 140
  %43 = ptrtoint ptr %period_at_vtime to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %period_at_vtime, align 8
  %sub5 = sub i64 %42, %44
  call void @__sanitizer_cov_trace_cmp8(i64 %42, i64 %44)
  %tobool.not = icmp eq i64 %42, %44
  br i1 %tobool.not, label %land.rhs, label %if.end46

land.rhs:                                         ; preds = %ioc_lat_stat.exit
  %.b500 = load i1, ptr @ioc_timer_fn.__already_done, align 1
  br i1 %.b500, label %land.rhs.cleanup_crit_edge, label %if.then, !prof !285

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @ioc_timer_fn.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.44, i32 noundef 2232, i32 noundef 9, ptr noundef null) #17
  br label %cleanup

if.end46:                                         ; preds = %ioc_lat_stat.exit
  %call = call fastcc i32 @ioc_check_iocgs(ptr noundef %add.ptr, ptr noundef nonnull %now)
  %active_iocgs = getelementptr i8, ptr %timer, i32 48
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %inner_walk.i) #17
  %45 = getelementptr inbounds %struct.list_head, ptr %inner_walk.i, i32 0, i32 1
  %46 = ptrtoint ptr %inner_walk.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %inner_walk.i, ptr %inner_walk.i, align 4
  %47 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %inner_walk.i, ptr %45, align 4
  %48 = ptrtoint ptr %active_iocgs to i32
  call void @__asan_load4_noabort(i32 %48)
  %.pn5.i = load ptr, ptr %active_iocgs, align 4
  %cmp.not6.i = icmp eq ptr %.pn5.i, %active_iocgs
  br i1 %cmp.not6.i, label %if.end46.for.end.i_crit_edge, label %if.end46.for.body.i511_crit_edge

if.end46.for.body.i511_crit_edge:                 ; preds = %if.end46
  br label %for.body.i511

if.end46.for.end.i_crit_edge:                     ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end.i

for.body.i511:                                    ; preds = %iocg_build_inner_walk.exit.i.for.body.i511_crit_edge, %if.end46.for.body.i511_crit_edge
  %.pn7.i = phi ptr [ %.pn.i, %iocg_build_inner_walk.exit.i.for.body.i511_crit_edge ], [ %.pn5.i, %if.end46.for.body.i511_crit_edge ]
  %iocg.0.i = getelementptr i8, ptr %.pn7.i, i32 -96
  call fastcc void @iocg_flush_stat_one(ptr noundef %iocg.0.i) #17
  %walk_list.i.i = getelementptr i8, ptr %.pn7.i, i32 52
  %49 = ptrtoint ptr %walk_list.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile ptr, ptr %walk_list.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %50, %walk_list.i.i
  br i1 %cmp.i.not.i.i, label %for.body.i511.if.end29.i.i_crit_edge, label %land.rhs.i.i

for.body.i511.if.end29.i.i_crit_edge:             ; preds = %for.body.i511
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end29.i.i

land.rhs.i.i:                                     ; preds = %for.body.i511
  %.b58.i.i = load i1, ptr @iocg_build_inner_walk.__already_done, align 1
  br i1 %.b58.i.i, label %land.rhs.i.i.if.end29.i.i_crit_edge, label %if.then.i.i, !prof !285

land.rhs.i.i.if.end29.i.i_crit_edge:              ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end29.i.i

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @iocg_build_inner_walk.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.44, i32 noundef 1627, i32 noundef 9, ptr noundef null) #17
  br label %if.end29.i.i

if.end29.i.i:                                     ; preds = %if.then.i.i, %land.rhs.i.i.if.end29.i.i_crit_edge, %for.body.i511.if.end29.i.i_crit_edge
  %level.i.i = getelementptr i8, ptr %.pn7.i, i32 320
  %51 = ptrtoint ptr %level.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %level.i.i, align 8
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %if.end29.i.i
  %lvl.0.in.i.i = phi i32 [ %52, %if.end29.i.i ], [ %lvl.0.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %lvl.0.i.i = add i32 %lvl.0.in.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %lvl.0.i.i)
  %cmp.i.i = icmp sgt i32 %lvl.0.i.i, -1
  br i1 %cmp.i.i, label %for.body.i.i, label %for.cond.i.i.for.end.i.i_crit_edge

for.cond.i.i.for.end.i.i_crit_edge:               ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end.i.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  %arrayidx.i.i = getelementptr %struct.ioc_gq, ptr %iocg.0.i, i32 0, i32 39, i32 %lvl.0.i.i
  %53 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx.i.i, align 4
  %walk_list37.i.i = getelementptr inbounds %struct.ioc_gq, ptr %54, i32 0, i32 24
  %55 = ptrtoint ptr %walk_list37.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile ptr, ptr %walk_list37.i.i, align 4
  %cmp.i59.not.i.i = icmp eq ptr %56, %walk_list37.i.i
  br i1 %cmp.i59.not.i.i, label %for.body.i.i.for.cond.i.i_crit_edge, label %for.body.i.i.for.end.i.i_crit_edge

for.body.i.i.for.end.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end.i.i

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond.i.i

for.end.i.i:                                      ; preds = %for.body.i.i.for.end.i.i_crit_edge, %for.cond.i.i.for.end.i.i_crit_edge
  %sub4362.i.i = add i32 %52, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %lvl.0.in.i.i, i32 %sub4362.i.i)
  %cmp44.not63.i.i = icmp sgt i32 %lvl.0.in.i.i, %sub4362.i.i
  br i1 %cmp44.not63.i.i, label %for.end.i.i.iocg_build_inner_walk.exit.i_crit_edge, label %for.end.i.i.while.body.i.i_crit_edge

for.end.i.i.while.body.i.i_crit_edge:             ; preds = %for.end.i.i
  br label %while.body.i.i

for.end.i.i.iocg_build_inner_walk.exit.i_crit_edge: ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %iocg_build_inner_walk.exit.i

while.body.i.i:                                   ; preds = %list_add_tail.exit.i.i.while.body.i.i_crit_edge, %for.end.i.i.while.body.i.i_crit_edge
  %inc64.i.i = phi i32 [ %inc.i.i, %list_add_tail.exit.i.i.while.body.i.i_crit_edge ], [ %lvl.0.in.i.i, %for.end.i.i.while.body.i.i_crit_edge ]
  %arrayidx46.i.i = getelementptr %struct.ioc_gq, ptr %iocg.0.i, i32 0, i32 39, i32 %inc64.i.i
  %57 = ptrtoint ptr %arrayidx46.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %arrayidx46.i.i, align 4
  %walk_list47.i.i = getelementptr inbounds %struct.ioc_gq, ptr %58, i32 0, i32 24
  %59 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %45, align 4
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %walk_list47.i.i, ptr noundef %60, ptr noundef nonnull %inner_walk.i) #17
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %while.body.i.i.list_add_tail.exit.i.i_crit_edge

while.body.i.i.list_add_tail.exit.i.i_crit_edge:  ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %list_add_tail.exit.i.i

if.end.i.i.i.i:                                   ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %61 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %walk_list47.i.i, ptr %45, align 4
  %62 = ptrtoint ptr %walk_list47.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %inner_walk.i, ptr %walk_list47.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.ioc_gq, ptr %58, i32 0, i32 24, i32 1
  %63 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %60, ptr %prev3.i.i.i.i, align 4
  %64 = ptrtoint ptr %60 to i32
  call void @__asan_store4_noabort(i32 %64)
  store volatile ptr %walk_list47.i.i, ptr %60, align 4
  br label %list_add_tail.exit.i.i

list_add_tail.exit.i.i:                           ; preds = %if.end.i.i.i.i, %while.body.i.i.list_add_tail.exit.i.i_crit_edge
  %inc.i.i = add i32 %inc64.i.i, 1
  %65 = ptrtoint ptr %level.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %level.i.i, align 8
  %sub43.i.i = add i32 %66, -1
  %cmp44.not.i.i = icmp sgt i32 %inc.i.i, %sub43.i.i
  br i1 %cmp44.not.i.i, label %list_add_tail.exit.i.i.iocg_build_inner_walk.exit.i_crit_edge, label %list_add_tail.exit.i.i.while.body.i.i_crit_edge

list_add_tail.exit.i.i.while.body.i.i_crit_edge:  ; preds = %list_add_tail.exit.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body.i.i

list_add_tail.exit.i.i.iocg_build_inner_walk.exit.i_crit_edge: ; preds = %list_add_tail.exit.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %iocg_build_inner_walk.exit.i

iocg_build_inner_walk.exit.i:                     ; preds = %list_add_tail.exit.i.i.iocg_build_inner_walk.exit.i_crit_edge, %for.end.i.i.iocg_build_inner_walk.exit.i_crit_edge
  %67 = ptrtoint ptr %.pn7.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %.pn.i = load ptr, ptr %.pn7.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %active_iocgs
  br i1 %cmp.not.i, label %iocg_build_inner_walk.exit.i.for.end.i_crit_edge, label %iocg_build_inner_walk.exit.i.for.body.i511_crit_edge

iocg_build_inner_walk.exit.i.for.body.i511_crit_edge: ; preds = %iocg_build_inner_walk.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i511

iocg_build_inner_walk.exit.i.for.end.i_crit_edge: ; preds = %iocg_build_inner_walk.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end.i

for.end.i:                                        ; preds = %iocg_build_inner_walk.exit.i.for.end.i_crit_edge, %if.end46.for.end.i_crit_edge
  %68 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %45, align 4
  %cmp17.not8.i = icmp eq ptr %69, %inner_walk.i
  br i1 %cmp17.not8.i, label %for.end.i.iocg_flush_stat.exit_crit_edge, label %for.end.i.for.body19.i_crit_edge

for.end.i.for.body19.i_crit_edge:                 ; preds = %for.end.i
  br label %for.body19.i

for.end.i.iocg_flush_stat.exit_crit_edge:         ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %iocg_flush_stat.exit

for.body19.i:                                     ; preds = %list_del_init.exit.i.for.body19.i_crit_edge, %for.end.i.for.body19.i_crit_edge
  %.pn29.i = phi ptr [ %.pn1.i, %list_del_init.exit.i.for.body19.i_crit_edge ], [ %69, %for.end.i.for.body19.i_crit_edge ]
  %iocg.1.i = getelementptr i8, ptr %.pn29.i, i32 -148
  %.pn1.in.i = getelementptr inbounds %struct.list_head, ptr %.pn29.i, i32 0, i32 1
  %70 = ptrtoint ptr %.pn1.in.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %.pn1.i = load ptr, ptr %.pn1.in.i, align 4
  call fastcc void @iocg_flush_stat_one(ptr noundef %iocg.1.i) #17
  %call.i.i.i512 = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn29.i) #17
  br i1 %call.i.i.i512, label %if.end.i.i.i, label %for.body19.i.list_del_init.exit.i_crit_edge

for.body19.i.list_del_init.exit.i_crit_edge:      ; preds = %for.body19.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %for.body19.i
  call void @__sanitizer_cov_trace_pc() #19
  %71 = ptrtoint ptr %.pn1.in.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %.pn1.in.i, align 4
  %73 = ptrtoint ptr %.pn29.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %.pn29.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %74, i32 0, i32 1
  %75 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %72, ptr %prev1.i.i.i.i, align 4
  %76 = ptrtoint ptr %72 to i32
  call void @__asan_store4_noabort(i32 %76)
  store volatile ptr %74, ptr %72, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %for.body19.i.list_del_init.exit.i_crit_edge
  %77 = ptrtoint ptr %.pn29.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store volatile ptr %.pn29.i, ptr %.pn29.i, align 4
  %78 = ptrtoint ptr %.pn1.in.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %.pn29.i, ptr %.pn1.in.i, align 4
  %cmp17.not.i = icmp eq ptr %.pn1.i, %inner_walk.i
  br i1 %cmp17.not.i, label %list_del_init.exit.i.iocg_flush_stat.exit_crit_edge, label %list_del_init.exit.i.for.body19.i_crit_edge

list_del_init.exit.i.for.body19.i_crit_edge:      ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body19.i

list_del_init.exit.i.iocg_flush_stat.exit_crit_edge: ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %iocg_flush_stat.exit

iocg_flush_stat.exit:                             ; preds = %list_del_init.exit.i.iocg_flush_stat.exit_crit_edge, %for.end.i.iocg_flush_stat.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %inner_walk.i) #17
  %79 = ptrtoint ptr %active_iocgs to i32
  call void @__asan_load4_noabort(i32 %79)
  %.pn599 = load ptr, ptr %active_iocgs, align 4
  %cmp.not601 = icmp eq ptr %.pn599, %active_iocgs
  br i1 %cmp.not601, label %for.end.thread, label %for.body.lr.ph

for.end.thread:                                   ; preds = %iocg_flush_stat.exit
  call void @__sanitizer_cov_trace_pc() #19
  %80 = ptrtoint ptr %surpluses to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load volatile ptr, ptr %surpluses, align 4
  br label %if.end246

for.body.lr.ph:                                   ; preds = %iocg_flush_stat.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp58.not = icmp eq i32 %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp59.not = icmp eq i32 %9, 0
  %or.cond = select i1 %cmp58.not, i1 %cmp59.not, i1 false
  %mul.neg = mul i64 %sub5, -10
  %low = getelementptr i8, ptr %timer, i32 -84
  %vtime_base_rate = getelementptr i8, ptr %timer, i32 76
  %period_at = getelementptr i8, ptr %timer, i32 132
  br label %for.body

for.body:                                         ; preds = %if.end235.for.body_crit_edge, %for.body.lr.ph
  %.pn607 = phi ptr [ %.pn599, %for.body.lr.ph ], [ %.pn, %if.end235.for.body_crit_edge ]
  %nr_shortages.0604 = phi i32 [ 0, %for.body.lr.ph ], [ %nr_shortages.2, %if.end235.for.body_crit_edge ]
  %nr_lagging.0603 = phi i32 [ 0, %for.body.lr.ph ], [ %nr_lagging.1, %if.end235.for.body_crit_edge ]
  %usage_us_sum.0602 = phi i64 [ 0, %for.body.lr.ph ], [ %add, %if.end235.for.body_crit_edge ]
  %iocg.0608 = getelementptr i8, ptr %.pn607, i32 -96
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hw_active) #17
  %82 = ptrtoint ptr %hw_active to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 -1, ptr %hw_active, align 4, !annotation !287
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hw_inuse) #17
  %83 = ptrtoint ptr %hw_inuse to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 -1, ptr %hw_inuse, align 4, !annotation !287
  %done_vtime = getelementptr i8, ptr %.pn607, i32 -40
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %done_vtime, i32 noundef 8) #17
  %call.i = call i64 @generic_atomic64_read(ptr noundef %done_vtime) #17
  %vtime56 = getelementptr i8, ptr %.pn607, i32 -48
  %call.i.i505 = call zeroext i1 @__kasan_check_read(ptr noundef %vtime56, i32 noundef 8) #17
  %call.i506 = call i64 @generic_atomic64_read(ptr noundef %vtime56) #17
  call fastcc void @current_hweight(ptr noundef %iocg.0608, ptr noundef nonnull %hw_active, ptr noundef nonnull %hw_inuse)
  br i1 %or.cond, label %for.body.if.end77_crit_edge, label %land.lhs.true

for.body.if.end77_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end77

land.lhs.true:                                    ; preds = %for.body
  %tobool.not.i.i = icmp eq ptr %iocg.0608, null
  br i1 %tobool.not.i.i, label %land.lhs.true.iocg_to_blkg.exit_crit_edge, label %cond.true.i.i

land.lhs.true.iocg_to_blkg.exit_crit_edge:        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %iocg_to_blkg.exit

cond.true.i.i:                                    ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  %84 = ptrtoint ptr %iocg.0608 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %iocg.0608, align 4
  br label %iocg_to_blkg.exit

iocg_to_blkg.exit:                                ; preds = %cond.true.i.i, %land.lhs.true.iocg_to_blkg.exit_crit_edge
  %cond.i.i = phi ptr [ %85, %cond.true.i.i ], [ null, %land.lhs.true.iocg_to_blkg.exit_crit_edge ]
  %use_delay = getelementptr inbounds %struct.blkcg_gq, ptr %cond.i.i, i32 0, i32 13
  %call.i.i507 = call zeroext i1 @__kasan_check_read(ptr noundef %use_delay, i32 noundef 4) #17
  %86 = ptrtoint ptr %use_delay to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load volatile i32, ptr %use_delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %tobool62.not = icmp eq i32 %87, 0
  %sub64 = sub i64 %call.i, %call.i506
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub64)
  %cmp65 = icmp slt i64 %sub64, 0
  %or.cond502 = select i1 %tobool62.not, i1 %cmp65, i1 false
  br i1 %or.cond502, label %land.lhs.true66, label %iocg_to_blkg.exit.if.end77_crit_edge

iocg_to_blkg.exit.if.end77_crit_edge:             ; preds = %iocg_to_blkg.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end77

land.lhs.true66:                                  ; preds = %iocg_to_blkg.exit
  %88 = ptrtoint ptr %1 to i32
  call void @__asan_load8_noabort(i32 %88)
  %89 = load i64, ptr %1, align 8
  %sub68 = sub i64 %mul.neg, %call.i506
  %sub69 = add i64 %sub68, %89
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub69)
  %cmp70 = icmp slt i64 %sub69, 0
  br i1 %cmp70, label %land.lhs.true71, label %land.lhs.true66.if.end77_crit_edge

land.lhs.true66.if.end77_crit_edge:               ; preds = %land.lhs.true66
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end77

land.lhs.true71:                                  ; preds = %land.lhs.true66
  call void @__sanitizer_cov_trace_pc() #19
  %sub73.neg = add i64 %call.i, %sub5
  %sub74 = sub i64 %sub73.neg, %89
  %sub74.lobit = lshr i64 %sub74, 63
  %90 = trunc i64 %sub74.lobit to i32
  %spec.select = add i32 %nr_lagging.0603, %90
  br label %if.end77

if.end77:                                         ; preds = %land.lhs.true71, %land.lhs.true66.if.end77_crit_edge, %iocg_to_blkg.exit.if.end77_crit_edge, %for.body.if.end77_crit_edge
  %nr_lagging.1 = phi i32 [ %nr_lagging.0603, %iocg_to_blkg.exit.if.end77_crit_edge ], [ %nr_lagging.0603, %land.lhs.true66.if.end77_crit_edge ], [ %nr_lagging.0603, %for.body.if.end77_crit_edge ], [ %spec.select, %land.lhs.true71 ]
  %usage_delta_us = getelementptr i8, ptr %.pn607, i32 288
  %91 = ptrtoint ptr %usage_delta_us to i32
  call void @__asan_load8_noabort(i32 %91)
  %92 = load i64, ptr %usage_delta_us, align 8
  %add = add i64 %92, %usage_us_sum.0602
  %surplus_list = getelementptr i8, ptr %.pn607, i32 60
  %93 = ptrtoint ptr %surplus_list to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load volatile ptr, ptr %surplus_list, align 4
  %cmp.i513.not = icmp eq ptr %94, %surplus_list
  br i1 %cmp.i513.not, label %if.end77.if.end127_crit_edge, label %land.rhs89

if.end77.if.end127_crit_edge:                     ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end127

land.rhs89:                                       ; preds = %if.end77
  %.b497499 = load i1, ptr @ioc_timer_fn.__already_done.60, align 1
  br i1 %.b497499, label %land.rhs89.if.end127_crit_edge, label %if.then100, !prof !285

land.rhs89.if.end127_crit_edge:                   ; preds = %land.rhs89
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end127

if.then100:                                       ; preds = %land.rhs89
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @ioc_timer_fn.__already_done.60, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.44, i32 noundef 2280, i32 noundef 9, ptr noundef null) #17
  br label %if.end127

if.end127:                                        ; preds = %if.then100, %land.rhs89.if.end127_crit_edge, %if.end77.if.end127_crit_edge
  %95 = ptrtoint ptr %hw_inuse to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %hw_inuse, align 4
  %97 = ptrtoint ptr %hw_active to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %hw_active, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %96, i32 %98)
  %cmp135 = icmp ult i32 %96, %98
  br i1 %cmp135, label %if.end127.if.then144_crit_edge, label %lor.lhs.false136

if.end127.if.then144_crit_edge:                   ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then144

lor.lhs.false136:                                 ; preds = %if.end127
  %head.i = getelementptr i8, ptr %.pn607, i32 112
  %99 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load volatile ptr, ptr %head.i, align 4
  %cmp.i.i515.not = icmp eq ptr %100, %head.i
  br i1 %cmp.i.i515.not, label %land.lhs.true139, label %lor.lhs.false136.if.else233_crit_edge

lor.lhs.false136.if.else233_crit_edge:            ; preds = %lor.lhs.false136
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else233

land.lhs.true139:                                 ; preds = %lor.lhs.false136
  %101 = ptrtoint ptr %1 to i32
  call void @__asan_load8_noabort(i32 %101)
  %102 = load i64, ptr %1, align 8
  %103 = ptrtoint ptr %low to i32
  call void @__asan_load8_noabort(i32 %103)
  %104 = load i64, ptr %low, align 8
  %sub141.neg = sub i64 %call.i506, %102
  %sub142 = add i64 %sub141.neg, %104
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub142)
  %cmp143 = icmp slt i64 %sub142, 0
  br i1 %cmp143, label %land.lhs.true139.if.then144_crit_edge, label %land.lhs.true139.if.else233_crit_edge

land.lhs.true139.if.else233_crit_edge:            ; preds = %land.lhs.true139
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else233

land.lhs.true139.if.then144_crit_edge:            ; preds = %land.lhs.true139
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then144

if.then144:                                       ; preds = %land.lhs.true139.if.then144_crit_edge, %if.end127.if.then144_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hwa) #17
  %105 = ptrtoint ptr %hwa to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 -1, ptr %hwa, align 4, !annotation !287
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old_hwi) #17
  %106 = ptrtoint ptr %old_hwi to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 -1, ptr %old_hwi, align 4, !annotation !287
  call void @__sanitizer_cov_trace_cmp8(i64 %call.i, i64 %call.i506)
  %cmp145.not = icmp eq i64 %call.i, %call.i506
  br i1 %cmp145.not, label %if.then144.if.end155_crit_edge, label %if.then146

if.then144.if.end155_crit_edge:                   ; preds = %if.then144
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end155

if.then146:                                       ; preds = %if.then144
  call void @__sanitizer_cov_trace_pc() #19
  %107 = ptrtoint ptr %vtime_base_rate to i32
  call void @__asan_load8_noabort(i32 %107)
  %108 = load i64, ptr %vtime_base_rate, align 8
  %sub148 = sub i64 %call.i506, %call.i
  %conv.i516 = zext i32 %96 to i64
  %mul.i517 = mul i64 %sub148, %conv.i516
  %sub.i518 = add i64 %mul.i517, 65535
  %call.i519 = call i64 @div64_u64(i64 noundef %sub.i518, i64 noundef 65536) #17
  %add150 = add i64 %108, -1
  %sub151 = add i64 %add150, %call.i519
  %call152 = call i64 @div64_u64(i64 noundef %sub151, i64 noundef %108) #17
  %109 = call i64 @llvm.umax.i64(i64 %92, i64 %call152)
  br label %if.end155

if.end155:                                        ; preds = %if.then146, %if.then144.if.end155_crit_edge
  %usage_us.0 = phi i64 [ %109, %if.then146 ], [ %92, %if.then144.if.end155_crit_edge ]
  %110 = ptrtoint ptr %period_at to i32
  call void @__asan_load8_noabort(i32 %110)
  %111 = load i64, ptr %period_at, align 8
  %activated_at = getelementptr i8, ptr %.pn607, i32 168
  %112 = ptrtoint ptr %activated_at to i32
  call void @__asan_load8_noabort(i32 %112)
  %113 = load i64, ptr %activated_at, align 8
  %sub156 = sub i64 %111, %113
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub156)
  %cmp157 = icmp slt i64 %sub156, 0
  %114 = ptrtoint ptr %0 to i32
  call void @__asan_load8_noabort(i32 %114)
  %115 = load i64, ptr %0, align 8
  %. = select i1 %cmp157, i64 %113, i64 %111
  %sub170 = sub i64 %115, %.
  %116 = call i64 @llvm.umax.i64(i64 %sub170, i64 1)
  %mul180 = shl i64 %usage_us.0, 16
  %add181 = add i64 %mul180, -1
  %sub182 = add i64 %add181, %116
  %call183 = call i64 @div64_u64(i64 noundef %sub182, i64 noundef %116) #17
  %conv = trunc i64 %call183 to i32
  %117 = call i32 @llvm.umax.i32(i32 %conv, i32 1)
  %118 = call i32 @llvm.umin.i32(i32 %117, i32 65536)
  call fastcc void @current_hweight(ptr noundef %iocg.0608, ptr noundef nonnull %hwa, ptr noundef nonnull %old_hwi)
  %active.i = getelementptr i8, ptr %.pn607, i32 -76
  %119 = ptrtoint ptr %active.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %active.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %121 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %121)
  %tobool.not.i520 = icmp eq i32 %121, 0
  br i1 %tobool.not.i520, label %if.end155.if.end.i_crit_edge, label %land.rhs.i

if.end155.if.end.i_crit_edge:                     ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i

land.rhs.i:                                       ; preds = %if.end155
  %ioc.i = getelementptr i8, ptr %.pn607, i32 -88
  %122 = ptrtoint ptr %ioc.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %ioc.i, align 8
  %dep_map.i = getelementptr inbounds %struct.ioc, ptr %123, i32 0, i32 8, i32 0, i32 0, i32 4
  %call.i.i521 = call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i521)
  %cmp.not.i522 = icmp eq i32 %call.i.i521, 0
  br i1 %cmp.not.i522, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !286

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.44, i32 noundef 1211, i32 noundef 9, ptr noundef null) #17
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge, %if.end155.if.end.i_crit_edge
  %level.i = getelementptr i8, ptr %.pn607, i32 320
  %124 = ptrtoint ptr %level.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %level.i, align 8
  %lvl.063.i = add i32 %125, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %lvl.063.i)
  %cmp2464.i = icmp sgt i32 %lvl.063.i, -1
  br i1 %cmp2464.i, label %if.end.i.for.body.i528_crit_edge, label %if.end.i.current_hweight_max.exit_crit_edge

if.end.i.current_hweight_max.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %current_hweight_max.exit

if.end.i.for.body.i528_crit_edge:                 ; preds = %if.end.i
  br label %for.body.i528

for.body.i528:                                    ; preds = %for.body.i528.for.body.i528_crit_edge, %if.end.i.for.body.i528_crit_edge
  %lvl.068.i = phi i32 [ %lvl.0.i, %for.body.i528.for.body.i528_crit_edge ], [ %lvl.063.i, %if.end.i.for.body.i528_crit_edge ]
  %hwm.067.i = phi i32 [ %conv35.i, %for.body.i528.for.body.i528_crit_edge ], [ 65536, %if.end.i.for.body.i528_crit_edge ]
  %inuse.066.i = phi i32 [ %conv43.i, %for.body.i528.for.body.i528_crit_edge ], [ %120, %if.end.i.for.body.i528_crit_edge ]
  %lvl.0.in65.i = phi i32 [ %lvl.068.i, %for.body.i528.for.body.i528_crit_edge ], [ %125, %if.end.i.for.body.i528_crit_edge ]
  %arrayidx.i523 = getelementptr %struct.ioc_gq, ptr %iocg.0608, i32 0, i32 39, i32 %lvl.068.i
  %126 = ptrtoint ptr %arrayidx.i523 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %arrayidx.i523, align 4
  %arrayidx26.i = getelementptr %struct.ioc_gq, ptr %iocg.0608, i32 0, i32 39, i32 %lvl.0.in65.i
  %128 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %arrayidx26.i, align 4
  %child_inuse_sum27.i = getelementptr inbounds %struct.ioc_gq, ptr %127, i32 0, i32 17
  %130 = ptrtoint ptr %child_inuse_sum27.i to i32
  call void @__asan_load8_noabort(i32 %130)
  %131 = load i64, ptr %child_inuse_sum27.i, align 8
  %conv.i524 = zext i32 %inuse.066.i to i64
  %add28.i = add i64 %131, %conv.i524
  %inuse29.i = getelementptr inbounds %struct.ioc_gq, ptr %129, i32 0, i32 5
  %132 = ptrtoint ptr %inuse29.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %inuse29.i, align 8
  %conv30.i = zext i32 %133 to i64
  %sub31.i525 = sub i64 %add28.i, %conv30.i
  %conv32.i = zext i32 %hwm.067.i to i64
  %mul.i526 = mul nuw i64 %conv.i524, %conv32.i
  %call34.i = call i64 @div64_u64(i64 noundef %mul.i526, i64 noundef %sub31.i525) #17
  %conv35.i = trunc i64 %call34.i to i32
  %child_active_sum.i = getelementptr inbounds %struct.ioc_gq, ptr %127, i32 0, i32 16
  %134 = ptrtoint ptr %child_active_sum.i to i32
  call void @__asan_load8_noabort(i32 %134)
  %135 = load i64, ptr %child_active_sum.i, align 8
  %active37.i = getelementptr inbounds %struct.ioc_gq, ptr %127, i32 0, i32 4
  %136 = ptrtoint ptr %active37.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %active37.i, align 4
  %conv38.i = zext i32 %137 to i64
  %mul39.i = mul i64 %sub31.i525, %conv38.i
  %add40.i527 = add i64 %135, -1
  %sub41.i = add i64 %add40.i527, %mul39.i
  %call42.i = call i64 @div64_u64(i64 noundef %sub41.i, i64 noundef %135) #17
  %conv43.i = trunc i64 %call42.i to i32
  %lvl.0.i = add nsw i32 %lvl.068.i, -1
  %cmp24.i.not = icmp eq i32 %lvl.068.i, 0
  br i1 %cmp24.i.not, label %current_hweight_max.exit.loopexit, label %for.body.i528.for.body.i528_crit_edge

for.body.i528.for.body.i528_crit_edge:            ; preds = %for.body.i528
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i528

current_hweight_max.exit.loopexit:                ; preds = %for.body.i528
  call void @__sanitizer_cov_trace_pc() #19
  %conv35.i.le = trunc i64 %call34.i to i32
  br label %current_hweight_max.exit

current_hweight_max.exit:                         ; preds = %current_hweight_max.exit.loopexit, %if.end.i.current_hweight_max.exit_crit_edge
  %hwm.0.lcssa.i = phi i32 [ 65536, %if.end.i.current_hweight_max.exit_crit_edge ], [ %conv35.i.le, %current_hweight_max.exit.loopexit ]
  %138 = call i32 @llvm.umax.i32(i32 %hwm.0.lcssa.i, i32 1) #17
  %139 = ptrtoint ptr %old_hwi to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %old_hwi, align 4
  %ioc1.i = getelementptr i8, ptr %.pn607, i32 -88
  %141 = ptrtoint ptr %ioc1.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %ioc1.i, align 8
  %call.i.i.i530 = call zeroext i1 @__kasan_check_read(ptr noundef %vtime56, i32 noundef 8) #17
  %call.i.i531 = call i64 @generic_atomic64_read(ptr noundef %vtime56) #17
  %abs_vdebt.i = getelementptr i8, ptr %.pn607, i32 -32
  %143 = ptrtoint ptr %abs_vdebt.i to i32
  call void @__asan_load8_noabort(i32 %143)
  %144 = load i64, ptr %abs_vdebt.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %144)
  %tobool.not.i532 = icmp eq i64 %144, 0
  br i1 %tobool.not.i532, label %if.end.i533, label %current_hweight_max.exit.hweight_after_donation.exit_crit_edge

current_hweight_max.exit.hweight_after_donation.exit_crit_edge: ; preds = %current_hweight_max.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %hweight_after_donation.exit

if.end.i533:                                      ; preds = %current_hweight_max.exit
  %head.i.i = getelementptr i8, ptr %.pn607, i32 112
  %145 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load volatile ptr, ptr %head.i.i, align 4
  %cmp.i.i.not.i = icmp eq ptr %146, %head.i.i
  br i1 %cmp.i.i.not.i, label %lor.lhs.false.i, label %if.end.i533.do.body208_crit_edge

if.end.i533.do.body208_crit_edge:                 ; preds = %if.end.i533
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body208

lor.lhs.false.i:                                  ; preds = %if.end.i533
  %147 = ptrtoint ptr %1 to i32
  call void @__asan_load8_noabort(i32 %147)
  %148 = load i64, ptr %1, align 8
  %margins.i = getelementptr inbounds %struct.ioc, ptr %142, i32 0, i32 3
  %149 = ptrtoint ptr %margins.i to i32
  call void @__asan_load8_noabort(i32 %149)
  %150 = load i64, ptr %margins.i, align 8
  %151 = add i64 %call.i.i531, %150
  %sub5.i = sub i64 %148, %151
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub5.i)
  %cmp.i534 = icmp slt i64 %sub5.i, 0
  br i1 %cmp.i534, label %lor.lhs.false.i.do.body208_crit_edge, label %if.end7.i

lor.lhs.false.i.do.body208_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body208

if.end7.i:                                        ; preds = %lor.lhs.false.i
  %target11.i = getelementptr inbounds %struct.ioc, ptr %142, i32 0, i32 3, i32 2
  %152 = ptrtoint ptr %target11.i to i32
  call void @__asan_load8_noabort(i32 %152)
  %153 = load i64, ptr %target11.i, align 8
  %154 = add i64 %call.i.i531, %153
  %sub12.i = sub i64 %148, %154
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub12.i)
  %cmp13.i = icmp sgt i64 %sub12.i, 0
  br i1 %cmp13.i, label %if.then14.i, label %if.end7.i.if.end18.i_crit_edge

if.end7.i.if.end18.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end18.i

if.then14.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #19
  %call.i.i70.i = call zeroext i1 @__kasan_check_write(ptr noundef %vtime56, i32 noundef 8) #17
  call void @generic_atomic64_add(i64 noundef %sub12.i, ptr noundef %vtime56) #17
  %call.i.i71.i = call zeroext i1 @__kasan_check_write(ptr noundef %done_vtime, i32 noundef 8) #17
  call void @generic_atomic64_add(i64 noundef %sub12.i, ptr noundef %done_vtime) #17
  %add.i535 = add i64 %sub12.i, %call.i.i531
  %conv.i536 = zext i32 %140 to i64
  %mul.i537 = mul i64 %sub12.i, %conv.i536
  %call16.i = call i64 @div64_u64(i64 noundef %mul.i537, i64 noundef 65536) #17
  %vtime_err.i = getelementptr inbounds %struct.ioc, ptr %142, i32 0, i32 15
  %155 = ptrtoint ptr %vtime_err.i to i32
  call void @__asan_load8_noabort(i32 %155)
  %156 = load i64, ptr %vtime_err.i, align 8
  %sub17.i = sub i64 %156, %call16.i
  store i64 %sub17.i, ptr %vtime_err.i, align 8
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.then14.i, %if.end7.i.if.end18.i_crit_edge
  %vtime.0.i = phi i64 [ %add.i535, %if.then14.i ], [ %call.i.i531, %if.end7.i.if.end18.i_crit_edge ]
  %157 = ptrtoint ptr %1 to i32
  call void @__asan_load8_noabort(i32 %157)
  %158 = load i64, ptr %1, align 8
  %sub20.i = sub i64 %158, %vtime.0.i
  %mul21.i = shl i64 %sub20.i, 16
  %period_at_vtime.i = getelementptr inbounds %struct.ioc, ptr %142, i32 0, i32 18
  %159 = ptrtoint ptr %period_at_vtime.i to i32
  call void @__asan_load8_noabort(i32 %159)
  %160 = load i64, ptr %period_at_vtime.i, align 8
  %sub23.i = sub i64 %158, %160
  %call24.i = call i64 @div64_s64(i64 noundef %mul21.i, i64 noundef %sub23.i) #17
  %mul25.i = shl i32 %118, 16
  %conv26.i = zext i32 %mul25.i to i64
  %add28.i538 = add i64 %call24.i, 32768
  %call29.i = call i64 @div64_s64(i64 noundef %conv26.i, i64 noundef %add28.i538) #17
  %161 = call i64 @llvm.smax.i64(i64 %call29.i, i64 1) #17
  %conv32.i539 = zext i32 %138 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %161, i64 %conv32.i539)
  %cmp34.i = icmp ult i64 %161, %conv32.i539
  %extract.t.i = trunc i64 %161 to i32
  %cond39.off0.i = select i1 %cmp34.i, i32 %extract.t.i, i32 %138
  br label %hweight_after_donation.exit

hweight_after_donation.exit:                      ; preds = %if.end18.i, %current_hweight_max.exit.hweight_after_donation.exit_crit_edge
  %retval.0.i = phi i32 [ %cond39.off0.i, %if.end18.i ], [ 1, %current_hweight_max.exit.hweight_after_donation.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i, i32 %138)
  %cmp200 = icmp ult i32 %retval.0.i, %138
  br i1 %cmp200, label %land.lhs.true202, label %hweight_after_donation.exit.do.body208_crit_edge

hweight_after_donation.exit.do.body208_crit_edge: ; preds = %hweight_after_donation.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body208

land.lhs.true202:                                 ; preds = %hweight_after_donation.exit
  %162 = ptrtoint ptr %hwa to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %hwa, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %163)
  %cmp203 = icmp ugt i32 %163, 1
  br i1 %cmp203, label %if.then205, label %land.lhs.true202.do.body208_crit_edge

land.lhs.true202.do.body208_crit_edge:            ; preds = %land.lhs.true202
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body208

if.then205:                                       ; preds = %land.lhs.true202
  %hweight_donating = getelementptr i8, ptr %.pn607, i32 44
  %164 = ptrtoint ptr %hweight_donating to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 %163, ptr %hweight_donating, align 4
  %hweight_after_donation = getelementptr i8, ptr %.pn607, i32 48
  %165 = ptrtoint ptr %hweight_after_donation to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 %retval.0.i, ptr %hweight_after_donation, align 8
  %166 = ptrtoint ptr %surpluses to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %surpluses, align 4
  %call.i.i540 = call zeroext i1 @__list_add_valid(ptr noundef %surplus_list, ptr noundef nonnull %surpluses, ptr noundef %167) #17
  br i1 %call.i.i540, label %if.end.i.i, label %if.then205.if.end232_crit_edge

if.then205.if.end232_crit_edge:                   ; preds = %if.then205
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end232

if.end.i.i:                                       ; preds = %if.then205
  call void @__sanitizer_cov_trace_pc() #19
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %167, i32 0, i32 1
  %168 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %168)
  store ptr %surplus_list, ptr %prev1.i.i, align 4
  %169 = ptrtoint ptr %surplus_list to i32
  call void @__asan_store4_noabort(i32 %169)
  store ptr %167, ptr %surplus_list, align 4
  %prev3.i.i = getelementptr i8, ptr %.pn607, i32 64
  %170 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %170)
  store ptr %surpluses, ptr %prev3.i.i, align 4
  %171 = ptrtoint ptr %surpluses to i32
  call void @__asan_store4_noabort(i32 %171)
  store volatile ptr %surplus_list, ptr %surpluses, align 4
  br label %if.end232

do.body208:                                       ; preds = %land.lhs.true202.do.body208_crit_edge, %hweight_after_donation.exit.do.body208_crit_edge, %lor.lhs.false.i.do.body208_crit_edge, %if.end.i533.do.body208_crit_edge
  %retval.0.i590 = phi i32 [ %retval.0.i, %hweight_after_donation.exit.do.body208_crit_edge ], [ %retval.0.i, %land.lhs.true202.do.body208_crit_edge ], [ %138, %lor.lhs.false.i.do.body208_crit_edge ], [ %138, %if.end.i533.do.body208_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_iocost_inuse_shortage, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@ioc_timer_fn, %do.body212)) #17
          to label %if.end226 [label %do.body212], !srcloc !300

do.body212:                                       ; preds = %do.body208
  %call217 = call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @trace_iocg_path_lock) #17
  %tobool.not.i.i541 = icmp eq ptr %iocg.0608, null
  br i1 %tobool.not.i.i541, label %do.body212.iocg_to_blkg.exit544_crit_edge, label %cond.true.i.i542

do.body212.iocg_to_blkg.exit544_crit_edge:        ; preds = %do.body212
  call void @__sanitizer_cov_trace_pc() #19
  br label %iocg_to_blkg.exit544

cond.true.i.i542:                                 ; preds = %do.body212
  call void @__sanitizer_cov_trace_pc() #19
  %172 = ptrtoint ptr %iocg.0608 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %iocg.0608, align 4
  br label %iocg_to_blkg.exit544

iocg_to_blkg.exit544:                             ; preds = %cond.true.i.i542, %do.body212.iocg_to_blkg.exit544_crit_edge
  %cond.i.i543 = phi ptr [ %173, %cond.true.i.i542 ], [ null, %do.body212.iocg_to_blkg.exit544_crit_edge ]
  %blkcg = getelementptr inbounds %struct.blkcg_gq, ptr %cond.i.i543, i32 0, i32 3
  %174 = ptrtoint ptr %blkcg to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %blkcg, align 4
  %176 = ptrtoint ptr %175 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %175, align 8
  %kn.i = getelementptr inbounds %struct.cgroup, ptr %177, i32 0, i32 11
  %178 = ptrtoint ptr %kn.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %kn.i, align 8
  %call.i.i545 = call i32 @kernfs_path_from_node(ptr noundef %179, ptr noundef null, ptr noundef nonnull @trace_iocg_path, i32 noundef 1024) #17
  %inuse = getelementptr i8, ptr %.pn607, i32 -72
  %180 = ptrtoint ptr %inuse to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %inuse, align 8
  %182 = ptrtoint ptr %active.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %active.i, align 4
  %hweight_inuse = getelementptr i8, ptr %.pn607, i32 40
  %184 = ptrtoint ptr %hweight_inuse to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %hweight_inuse, align 8
  %conv224 = zext i32 %185 to i64
  %conv225 = zext i32 %retval.0.i590 to i64
  call fastcc void @trace_iocost_inuse_shortage(ptr noundef %iocg.0608, ptr noundef nonnull %now, i32 noundef %181, i32 noundef %183, i64 noundef %conv224, i64 noundef %conv225)
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @trace_iocg_path_lock, i32 noundef %call217) #17
  br label %if.end226

if.end226:                                        ; preds = %iocg_to_blkg.exit544, %do.body208
  %186 = ptrtoint ptr %active.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %active.i, align 4
  call fastcc void @__propagate_weights(ptr noundef %iocg.0608, i32 noundef %187, i32 noundef %187, i1 noundef zeroext true, ptr noundef nonnull %now)
  %inc231 = add i32 %nr_shortages.0604, 1
  br label %if.end232

if.end232:                                        ; preds = %if.end226, %if.end.i.i, %if.then205.if.end232_crit_edge
  %nr_shortages.1 = phi i32 [ %inc231, %if.end226 ], [ %nr_shortages.0604, %if.then205.if.end232_crit_edge ], [ %nr_shortages.0604, %if.end.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old_hwi) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hwa) #17
  br label %if.end235

if.else233:                                       ; preds = %land.lhs.true139.if.else233_crit_edge, %lor.lhs.false136.if.else233_crit_edge
  %inc234 = add i32 %nr_shortages.0604, 1
  br label %if.end235

if.end235:                                        ; preds = %if.else233, %if.end232
  %nr_shortages.2 = phi i32 [ %nr_shortages.1, %if.end232 ], [ %inc234, %if.else233 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hw_inuse) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hw_active) #17
  %188 = ptrtoint ptr %.pn607 to i32
  call void @__asan_load4_noabort(i32 %188)
  %.pn = load ptr, ptr %.pn607, align 4
  %cmp.not = icmp eq ptr %.pn, %active_iocgs
  br i1 %cmp.not, label %for.end, label %if.end235.for.body_crit_edge

if.end235.for.body_crit_edge:                     ; preds = %if.end235
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.end:                                          ; preds = %if.end235
  %189 = ptrtoint ptr %surpluses to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load volatile ptr, ptr %surpluses, align 4
  %cmp.i546 = icmp eq ptr %190, %surpluses
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_shortages.2)
  %tobool244.not = icmp eq i32 %nr_shortages.2, 0
  %or.cond503 = select i1 %cmp.i546, i1 true, i1 %tobool244.not
  br i1 %or.cond503, label %for.end.if.end246_crit_edge, label %if.then245

for.end.if.end246_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end246

if.then245:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #19
  call fastcc void @transfer_surpluses(ptr noundef nonnull %surpluses, ptr noundef nonnull %now)
  br label %if.end246

if.end246:                                        ; preds = %if.then245, %for.end.if.end246_crit_edge, %for.end.thread
  %tobool244.not625 = phi i1 [ true, %for.end.thread ], [ %tobool244.not, %if.then245 ], [ %tobool244.not, %for.end.if.end246_crit_edge ]
  %nr_shortages.0.lcssa623 = phi i32 [ 0, %for.end.thread ], [ %nr_shortages.2, %if.then245 ], [ %nr_shortages.2, %for.end.if.end246_crit_edge ]
  %nr_lagging.0.lcssa621 = phi i32 [ 0, %for.end.thread ], [ %nr_lagging.1, %if.then245 ], [ %nr_lagging.1, %for.end.if.end246_crit_edge ]
  %usage_us_sum.0.lcssa620 = phi i64 [ 0, %for.end.thread ], [ %add, %if.then245 ], [ %add, %for.end.if.end246_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %191 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %191)
  %tobool.not.i548 = icmp eq i32 %191, 0
  br i1 %tobool.not.i548, label %if.end246.if.end.i554_crit_edge, label %land.rhs.i552

if.end246.if.end.i554_crit_edge:                  ; preds = %if.end246
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i554

land.rhs.i552:                                    ; preds = %if.end246
  %dep_map.i549 = getelementptr i8, ptr %timer, i32 -28
  %call.i.i550 = call i32 @lock_is_held_type(ptr noundef %dep_map.i549, i32 noundef -1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i550)
  %cmp.not.i551 = icmp eq i32 %call.i.i550, 0
  br i1 %cmp.not.i551, label %do.end.i553, label %land.rhs.i552.if.end.i554_crit_edge, !prof !286

land.rhs.i552.if.end.i554_crit_edge:              ; preds = %land.rhs.i552
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i554

do.end.i553:                                      ; preds = %land.rhs.i552
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.44, i32 noundef 1129, i32 noundef 9, ptr noundef null) #17
  br label %if.end.i554

if.end.i554:                                      ; preds = %do.end.i553, %land.rhs.i552.if.end.i554_crit_edge, %if.end246.if.end.i554_crit_edge
  %weights_updated.i = getelementptr i8, ptr %timer, i32 160
  %192 = ptrtoint ptr %weights_updated.i to i32
  call void @__asan_load1_noabort(i32 %192)
  %193 = load i8, ptr %weights_updated.i, align 4, !range !288
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %193)
  %tobool24.not.i = icmp eq i8 %193, 0
  br i1 %tobool24.not.i, label %if.end.i554.commit_weights.exit_crit_edge, label %do.end29.i

if.end.i554.commit_weights.exit_crit_edge:        ; preds = %if.end.i554
  call void @__sanitizer_cov_trace_pc() #19
  br label %commit_weights.exit

do.end29.i:                                       ; preds = %if.end.i554
  call void @__sanitizer_cov_trace_pc() #19
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !289
  %hweight_gen.i = getelementptr i8, ptr %timer, i32 164
  %call.i.i.i555 = call zeroext i1 @__kasan_check_write(ptr noundef %hweight_gen.i, i32 noundef 4) #17
  call void @llvm.prefetch.p0(ptr %hweight_gen.i, i32 1, i32 3, i32 1) #17
  %194 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %hweight_gen.i, ptr %hweight_gen.i, i32 1, ptr elementtype(i32) %hweight_gen.i) #17, !srcloc !290
  %195 = ptrtoint ptr %weights_updated.i to i32
  call void @__asan_store1_noabort(i32 %195)
  store i8 0, ptr %weights_updated.i, align 4
  br label %commit_weights.exit

commit_weights.exit:                              ; preds = %do.end29.i, %if.end.i554.commit_weights.exit_crit_edge
  %196 = ptrtoint ptr %surpluses to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %surpluses, align 4
  %cmp258.not613 = icmp eq ptr %197, %surpluses
  br i1 %cmp258.not613, label %commit_weights.exit.for.end270_crit_edge, label %commit_weights.exit.for.body262_crit_edge

commit_weights.exit.for.body262_crit_edge:        ; preds = %commit_weights.exit
  br label %for.body262

commit_weights.exit.for.end270_crit_edge:         ; preds = %commit_weights.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end270

for.body262:                                      ; preds = %list_del_init.exit.for.body262_crit_edge, %commit_weights.exit.for.body262_crit_edge
  %198 = phi ptr [ %.pn498, %list_del_init.exit.for.body262_crit_edge ], [ %197, %commit_weights.exit.for.body262_crit_edge ]
  %199 = ptrtoint ptr %198 to i32
  call void @__asan_load4_noabort(i32 %199)
  %.pn498 = load ptr, ptr %198, align 4
  %call.i.i556 = call zeroext i1 @__list_del_entry_valid(ptr noundef %198) #17
  br i1 %call.i.i556, label %if.end.i.i557, label %for.body262.list_del_init.exit_crit_edge

for.body262.list_del_init.exit_crit_edge:         ; preds = %for.body262
  call void @__sanitizer_cov_trace_pc() #19
  br label %list_del_init.exit

if.end.i.i557:                                    ; preds = %for.body262
  call void @__sanitizer_cov_trace_pc() #19
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %198, i32 0, i32 1
  %200 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %prev.i.i, align 4
  %202 = ptrtoint ptr %198 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %198, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %203, i32 0, i32 1
  %204 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %204)
  store ptr %201, ptr %prev1.i.i.i, align 4
  %205 = ptrtoint ptr %201 to i32
  call void @__asan_store4_noabort(i32 %205)
  store volatile ptr %203, ptr %201, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i557, %for.body262.list_del_init.exit_crit_edge
  %206 = ptrtoint ptr %198 to i32
  call void @__asan_store4_noabort(i32 %206)
  store volatile ptr %198, ptr %198, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %198, i32 0, i32 1
  %207 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %207)
  store ptr %198, ptr %prev.i3.i, align 4
  %cmp258.not = icmp eq ptr %.pn498, %surpluses
  br i1 %cmp258.not, label %list_del_init.exit.for.end270_crit_edge, label %list_del_init.exit.for.body262_crit_edge

list_del_init.exit.for.body262_crit_edge:         ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body262

list_del_init.exit.for.end270_crit_edge:          ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end270

for.end270:                                       ; preds = %list_del_init.exit.for.end270_crit_edge, %commit_weights.exit.for.end270_crit_edge
  %busy_level = getelementptr i8, ptr %timer, i32 156
  %208 = ptrtoint ptr %busy_level to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %busy_level, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %conv60.i)
  %cmp271 = icmp ugt i32 %conv60.i, 5
  br i1 %cmp271, label %for.end270.if.then281_crit_edge, label %lor.lhs.false273

for.end270.if.then281_crit_edge:                  ; preds = %for.end270
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then281

lor.lhs.false273:                                 ; preds = %for.end270
  %210 = ptrtoint ptr %missed_ppm to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %missed_ppm, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %211, i32 %sub)
  %cmp275 = icmp ugt i32 %211, %sub
  br i1 %cmp275, label %lor.lhs.false273.if.then281_crit_edge, label %lor.lhs.false277

lor.lhs.false273.if.then281_crit_edge:            ; preds = %lor.lhs.false273
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then281

lor.lhs.false277:                                 ; preds = %lor.lhs.false273
  %212 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %10, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %213, i32 %sub4)
  %cmp279 = icmp ugt i32 %213, %sub4
  br i1 %cmp279, label %lor.lhs.false277.if.then281_crit_edge, label %if.else293

lor.lhs.false277.if.then281_crit_edge:            ; preds = %lor.lhs.false277
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then281

if.then281:                                       ; preds = %lor.lhs.false277.if.then281_crit_edge, %lor.lhs.false273.if.then281_crit_edge, %for.end270.if.then281_crit_edge
  %phi.bo = add i32 %209, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %209)
  %cmp284.inv = icmp slt i32 %209, 1
  %cond289 = select i1 %cmp284.inv, i32 1, i32 %phi.bo
  br label %if.end329.sink.split

if.else293:                                       ; preds = %lor.lhs.false277
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %conv60.i)
  %cmp294 = icmp ult i32 %conv60.i, 4
  br i1 %cmp294, label %land.lhs.true296, label %if.else293.if.end329.sink.split_crit_edge

if.else293.if.end329.sink.split_crit_edge:        ; preds = %if.else293
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end329.sink.split

land.lhs.true296:                                 ; preds = %if.else293
  %mul298 = mul i32 %sub, 75
  %div = udiv i32 %mul298, 100
  call void @__sanitizer_cov_trace_cmp4(i32 %211, i32 %div)
  %cmp299.not = icmp ugt i32 %211, %div
  br i1 %cmp299.not, label %land.lhs.true296.if.end329.sink.split_crit_edge, label %land.lhs.true301

land.lhs.true296.if.end329.sink.split_crit_edge:  ; preds = %land.lhs.true296
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end329.sink.split

land.lhs.true301:                                 ; preds = %land.lhs.true296
  %mul303 = mul i32 %sub4, 75
  %div304 = udiv i32 %mul303, 100
  call void @__sanitizer_cov_trace_cmp4(i32 %213, i32 %div304)
  %cmp305.not = icmp ugt i32 %213, %div304
  %brmerge = select i1 %cmp305.not, i1 true, i1 %tobool244.not625
  br i1 %brmerge, label %land.lhs.true301.if.end329.sink.split_crit_edge, label %if.then309

land.lhs.true301.if.end329.sink.split_crit_edge:  ; preds = %land.lhs.true301
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end329.sink.split

if.then309:                                       ; preds = %land.lhs.true301
  %214 = call i32 @llvm.smin.i32(i32 %209, i32 0)
  %215 = ptrtoint ptr %busy_level to i32
  call void @__asan_store4_noabort(i32 %215)
  store i32 %214, ptr %busy_level, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_lagging.0.lcssa621)
  %tobool319.not = icmp eq i32 %nr_lagging.0.lcssa621, 0
  br i1 %tobool319.not, label %if.then320, label %if.then309.if.end329_crit_edge

if.then309.if.end329_crit_edge:                   ; preds = %if.then309
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end329

if.then320:                                       ; preds = %if.then309
  call void @__sanitizer_cov_trace_pc() #19
  %dec = add i32 %214, -1
  br label %if.end329.sink.split

if.end329.sink.split:                             ; preds = %if.then320, %land.lhs.true301.if.end329.sink.split_crit_edge, %land.lhs.true296.if.end329.sink.split_crit_edge, %if.else293.if.end329.sink.split_crit_edge, %if.then281
  %.sink626 = phi i32 [ %dec, %if.then320 ], [ %cond289, %if.then281 ], [ 0, %land.lhs.true301.if.end329.sink.split_crit_edge ], [ 0, %land.lhs.true296.if.end329.sink.split_crit_edge ], [ 0, %if.else293.if.end329.sink.split_crit_edge ]
  %216 = ptrtoint ptr %busy_level to i32
  call void @__asan_store4_noabort(i32 %216)
  store i32 %.sink626, ptr %busy_level, align 8
  br label %if.end329

if.end329:                                        ; preds = %if.end329.sink.split, %if.then309.if.end329_crit_edge
  %217 = ptrtoint ptr %busy_level to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %busy_level, align 8
  %219 = call i32 @llvm.smax.i32(i32 %218, i32 -1000)
  %220 = call i32 @llvm.smin.i32(i32 %219, i32 1000)
  %221 = ptrtoint ptr %busy_level to i32
  call void @__asan_store4_noabort(i32 %221)
  store i32 %220, ptr %busy_level, align 8
  %vtime_base_rate.i = getelementptr i8, ptr %timer, i32 76
  %222 = ptrtoint ptr %vtime_base_rate.i to i32
  call void @__asan_load8_noabort(i32 %222)
  %223 = load i64, ptr %vtime_base_rate.i, align 8
  %vrate_min1.i = getelementptr i8, ptr %timer, i32 -60
  %224 = ptrtoint ptr %vrate_min1.i to i32
  call void @__asan_load8_noabort(i32 %224)
  %225 = load i64, ptr %vrate_min1.i, align 8
  %vrate_max2.i = getelementptr i8, ptr %timer, i32 -52
  %226 = ptrtoint ptr %vrate_max2.i to i32
  call void @__asan_load8_noabort(i32 %226)
  %227 = load i64, ptr %vrate_max2.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %220)
  %tobool.not.i558 = icmp eq i32 %220, 0
  br i1 %tobool.not.i558, label %if.then.i561, label %lor.lhs.false.i560

lor.lhs.false.i560:                               ; preds = %if.end329
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %220)
  %cmp.i559 = icmp sgt i32 %220, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_lagging.0.lcssa621)
  %tobool4.not.i = icmp eq i32 %nr_lagging.0.lcssa621, 0
  %or.cond.i = or i1 %tobool4.not.i, %cmp.i559
  br i1 %or.cond.i, label %if.end10.i, label %lor.lhs.false.i560.if.then9.i_crit_edge

lor.lhs.false.i560.if.then9.i_crit_edge:          ; preds = %lor.lhs.false.i560
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then9.i

if.then.i561:                                     ; preds = %if.end329
  %228 = or i32 %209, %nr_lagging.0.lcssa621
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %228)
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %if.then.i561.ioc_adjust_base_vrate.exit_crit_edge, label %if.then.i561.if.then9.i_crit_edge

if.then.i561.if.then9.i_crit_edge:                ; preds = %if.then.i561
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then9.i

if.then.i561.ioc_adjust_base_vrate.exit_crit_edge: ; preds = %if.then.i561
  call void @__sanitizer_cov_trace_pc() #19
  br label %ioc_adjust_base_vrate.exit

if.then9.i:                                       ; preds = %if.then.i561.if.then9.i_crit_edge, %lor.lhs.false.i560.if.then9.i_crit_edge
  %vtime_rate.i = getelementptr i8, ptr %timer, i32 68
  %call.i.i.i562 = call zeroext i1 @__kasan_check_read(ptr noundef %vtime_rate.i, i32 noundef 8) #17
  %call.i.i563 = call i64 @generic_atomic64_read(ptr noundef %vtime_rate.i) #17
  call fastcc void @trace_iocost_ioc_vrate_adj(ptr noundef %add.ptr, i64 noundef %call.i.i563, ptr noundef nonnull %missed_ppm, i32 noundef %conv60.i, i32 noundef %nr_lagging.0.lcssa621, i32 noundef %nr_shortages.0.lcssa623) #17
  br label %ioc_adjust_base_vrate.exit

if.end10.i:                                       ; preds = %lor.lhs.false.i560
  call void @__sanitizer_cov_trace_cmp8(i64 %223, i64 %225)
  %cmp11.i = icmp ult i64 %223, %225
  br i1 %cmp11.i, label %if.then12.i, label %if.else.i

if.then12.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #19
  %mul.i564 = mul i64 %223, 104
  %call13.i = call i64 @div64_u64(i64 noundef %mul.i564, i64 noundef 100) #17
  %230 = call i64 @llvm.umin.i64(i64 %call13.i, i64 %225) #17
  br label %if.end65.i

if.else.i:                                        ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_cmp8(i64 %223, i64 %227)
  %cmp15.i = icmp ugt i64 %223, %227
  br i1 %cmp15.i, label %if.then16.i, label %if.else25.i

if.then16.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #19
  %mul17.i = mul i64 %223, 96
  %call18.i = call i64 @div64_u64(i64 noundef %mul17.i, i64 noundef 100) #17
  %231 = call i64 @llvm.umax.i64(i64 %call18.i, i64 %227) #17
  br label %if.end65.i

if.else25.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #19
  %232 = call i32 @llvm.abs.i32(i32 %220, i1 true) #17
  %233 = call i32 @llvm.smin.i32(i32 %232, i32 52) #17
  %arrayidx.i565 = getelementptr [53 x i32], ptr @vrate_adj_pct, i32 0, i32 %233
  %234 = ptrtoint ptr %arrayidx.i565 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %arrayidx.i565, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %219)
  %cmp40.i = icmp sgt i32 %219, 0
  %236 = sub i32 0, %235
  %adj_pct.0.p.i = select i1 %cmp40.i, i32 %236, i32 %235
  %adj_pct.0.i = add i32 %adj_pct.0.p.i, 100
  %conv.i566 = zext i32 %adj_pct.0.i to i64
  %mul46.i = mul i64 %223, %conv.i566
  %sub48.i567 = add i64 %mul46.i, 99
  %call49.i568 = call i64 @div64_u64(i64 noundef %sub48.i567, i64 noundef 100) #17
  %237 = call i64 @llvm.umax.i64(i64 %call49.i568, i64 %225) #17
  %238 = call i64 @llvm.umin.i64(i64 %237, i64 %227) #17
  br label %if.end65.i

if.end65.i:                                       ; preds = %if.else25.i, %if.then16.i, %if.then12.i
  %vrate.0.i = phi i64 [ %230, %if.then12.i ], [ %231, %if.then16.i ], [ %238, %if.else25.i ]
  call fastcc void @trace_iocost_ioc_vrate_adj(ptr noundef %add.ptr, i64 noundef %vrate.0.i, ptr noundef nonnull %missed_ppm, i32 noundef %conv60.i, i32 noundef %nr_lagging.0.lcssa621, i32 noundef %nr_shortages.0.lcssa623) #17
  %239 = ptrtoint ptr %vtime_base_rate.i to i32
  call void @__asan_store8_noabort(i32 %239)
  store i64 %vrate.0.i, ptr %vtime_base_rate.i, align 8
  %margins1.i.i = getelementptr i8, ptr %timer, i32 -92
  %240 = ptrtoint ptr %period_us.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %period_us.i, align 8
  %mul.i.i = mul i32 %241, 10
  %div.i.i = udiv i32 %mul.i.i, 100
  %conv.i.i = zext i32 %div.i.i to i64
  %mul3.i.i = mul i64 %vrate.0.i, %conv.i.i
  %242 = ptrtoint ptr %margins1.i.i to i32
  call void @__asan_store8_noabort(i32 %242)
  store i64 %mul3.i.i, ptr %margins1.i.i, align 8
  %mul4.i.i = mul i32 %241, 20
  %div5.i.i = udiv i32 %mul4.i.i, 100
  %conv6.i.i = zext i32 %div5.i.i to i64
  %mul7.i.i = mul i64 %vrate.0.i, %conv6.i.i
  %low.i.i = getelementptr i8, ptr %timer, i32 -84
  %243 = ptrtoint ptr %low.i.i to i32
  call void @__asan_store8_noabort(i32 %243)
  store i64 %mul7.i.i, ptr %low.i.i, align 8
  %mul8.i.i = mul i32 %241, 50
  %div9.i.i = udiv i32 %mul8.i.i, 100
  %conv10.i.i = zext i32 %div9.i.i to i64
  %mul11.i.i = mul i64 %vrate.0.i, %conv10.i.i
  %target.i.i = getelementptr i8, ptr %timer, i32 -76
  %244 = ptrtoint ptr %target.i.i to i32
  call void @__asan_store8_noabort(i32 %244)
  store i64 %mul11.i.i, ptr %target.i.i, align 8
  br label %ioc_adjust_base_vrate.exit

ioc_adjust_base_vrate.exit:                       ; preds = %if.end65.i, %if.then9.i, %if.then.i561.ioc_adjust_base_vrate.exit_crit_edge
  call fastcc void @ioc_refresh_params(ptr noundef %add.ptr, i1 noundef zeroext false)
  call fastcc void @ioc_forgive_debts(ptr noundef %add.ptr, i64 noundef %usage_us_sum.0.lcssa620, i32 noundef %call, ptr noundef nonnull %now)
  %cur_period = getelementptr i8, ptr %timer, i32 148
  %call.i.i508 = call zeroext i1 @__kasan_check_write(ptr noundef %cur_period, i32 noundef 8) #17
  call void @generic_atomic64_add(i64 noundef 1, ptr noundef %cur_period) #17
  %running = getelementptr i8, ptr %timer, i32 60
  %245 = ptrtoint ptr %running to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %running, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %246)
  %cmp348.not = icmp eq i32 %246, 2
  br i1 %cmp348.not, label %ioc_adjust_base_vrate.exit.cleanup_crit_edge, label %if.then350

ioc_adjust_base_vrate.exit.cleanup_crit_edge:     ; preds = %ioc_adjust_base_vrate.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then350:                                       ; preds = %ioc_adjust_base_vrate.exit
  %247 = ptrtoint ptr %active_iocgs to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load volatile ptr, ptr %active_iocgs, align 4
  %cmp.i569.not = icmp eq ptr %248, %active_iocgs
  br i1 %cmp.i569.not, label %if.else355, label %if.then354

if.then354:                                       ; preds = %if.then350
  call void @__sanitizer_cov_trace_pc() #19
  call fastcc void @ioc_start_period(ptr noundef %add.ptr, ptr noundef nonnull %now)
  br label %if.end358

if.else355:                                       ; preds = %if.then350
  call void @__sanitizer_cov_trace_pc() #19
  %249 = ptrtoint ptr %busy_level to i32
  call void @__asan_store4_noabort(i32 %249)
  store i32 0, ptr %busy_level, align 8
  %vtime_err = getelementptr i8, ptr %timer, i32 84
  %250 = ptrtoint ptr %vtime_err to i32
  call void @__asan_store8_noabort(i32 %250)
  store i64 0, ptr %vtime_err, align 8
  %251 = ptrtoint ptr %running to i32
  call void @__asan_store4_noabort(i32 %251)
  store i32 0, ptr %running, align 8
  br label %if.end358

if.end358:                                        ; preds = %if.else355, %if.then354
  %period_at.i = getelementptr i8, ptr %timer, i32 132
  %252 = ptrtoint ptr %period_at.i to i32
  call void @__asan_load8_noabort(i32 %252)
  %253 = load i64, ptr %period_at.i, align 8
  %254 = ptrtoint ptr %period_us.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %period_us.i, align 8
  %conv.i572 = zext i32 %255 to i64
  %add.i573 = add i64 %253, %conv.i572
  %256 = ptrtoint ptr %0 to i32
  call void @__asan_load8_noabort(i32 %256)
  %257 = load i64, ptr %0, align 8
  %sub.i574 = sub i64 %add.i573, %257
  %258 = ptrtoint ptr %vtime_base_rate.i to i32
  call void @__asan_load8_noabort(i32 %258)
  %259 = load i64, ptr %vtime_base_rate.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %260 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %260)
  %tobool.not.i576 = icmp eq i32 %260, 0
  br i1 %tobool.not.i576, label %if.end358.if.end.i582_crit_edge, label %land.rhs.i580

if.end358.if.end.i582_crit_edge:                  ; preds = %if.end358
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i582

land.rhs.i580:                                    ; preds = %if.end358
  %dep_map.i577 = getelementptr i8, ptr %timer, i32 -28
  %call.i.i578 = call i32 @lock_is_held_type(ptr noundef %dep_map.i577, i32 noundef -1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i578)
  %cmp.not.i579 = icmp eq i32 %call.i.i578, 0
  br i1 %cmp.not.i579, label %do.end.i581, label %land.rhs.i580.if.end.i582_crit_edge, !prof !286

land.rhs.i580.if.end.i582_crit_edge:              ; preds = %land.rhs.i580
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i582

do.end.i581:                                      ; preds = %land.rhs.i580
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.44, i32 noundef 950, i32 noundef 9, ptr noundef null) #17
  br label %if.end.i582

if.end.i582:                                      ; preds = %do.end.i581, %land.rhs.i580.if.end.i582_crit_edge, %if.end358.if.end.i582_crit_edge
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %sub.i574)
  %cmp28.i = icmp slt i64 %sub.i574, 1
  br i1 %cmp28.i, label %if.end.i582.ioc_refresh_vrate.exit_crit_edge, label %if.end31.i

if.end.i582.ioc_refresh_vrate.exit_crit_edge:     ; preds = %if.end.i582
  call void @__sanitizer_cov_trace_pc() #19
  br label %ioc_refresh_vrate.exit

if.end31.i:                                       ; preds = %if.end.i582
  call void @__sanitizer_cov_trace_pc() #19
  %vtime_err.i583 = getelementptr i8, ptr %timer, i32 84
  %261 = ptrtoint ptr %vtime_err.i583 to i32
  call void @__asan_load8_noabort(i32 %261)
  %262 = load i64, ptr %vtime_err.i583, align 8
  %call32.i = call i64 @div64_s64(i64 noundef %262, i64 noundef %sub.i574) #17
  %sub33.i = sub i64 0, %call32.i
  %263 = ptrtoint ptr %vtime_base_rate.i to i32
  call void @__asan_load8_noabort(i32 %263)
  %264 = load i64, ptr %vtime_base_rate.i, align 8
  %shr.i = lshr i64 %264, 1
  %sub35.i = sub nsw i64 0, %shr.i
  %265 = call i64 @llvm.smax.i64(i64 %sub33.i, i64 %sub35.i) #17
  %266 = call i64 @llvm.smin.i64(i64 %265, i64 %264) #17
  %mul47.i = mul i64 %266, %sub.i574
  %267 = ptrtoint ptr %vtime_err.i583 to i32
  call void @__asan_load8_noabort(i32 %267)
  %268 = load i64, ptr %vtime_err.i583, align 8
  %add49.i = add i64 %mul47.i, %268
  store i64 %add49.i, ptr %vtime_err.i583, align 8
  %vtime_rate.i584 = getelementptr i8, ptr %timer, i32 68
  %add51.i = add i64 %266, %264
  %call.i.i.i585 = call zeroext i1 @__kasan_check_write(ptr noundef %vtime_rate.i584, i32 noundef 8) #17
  call void @generic_atomic64_set(ptr noundef %vtime_rate.i584, i64 noundef %add51.i) #17
  br label %ioc_refresh_vrate.exit

ioc_refresh_vrate.exit:                           ; preds = %if.end31.i, %if.end.i582.ioc_refresh_vrate.exit_crit_edge
  %mul.i586 = mul i64 %259, %conv.i572
  %vtime_err52.i = getelementptr i8, ptr %timer, i32 84
  %269 = ptrtoint ptr %vtime_err52.i to i32
  call void @__asan_load8_noabort(i32 %269)
  %270 = load i64, ptr %vtime_err52.i, align 8
  %sub53.i = sub i64 0, %mul.i586
  %271 = call i64 @llvm.smax.i64(i64 %270, i64 %sub53.i) #17
  %272 = call i64 @llvm.smin.i64(i64 %271, i64 %mul.i586) #17
  %273 = ptrtoint ptr %vtime_err52.i to i32
  call void @__asan_store8_noabort(i32 %273)
  store i64 %272, ptr %vtime_err52.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %ioc_refresh_vrate.exit, %ioc_adjust_base_vrate.exit.cleanup_crit_edge, %if.then, %land.rhs.cleanup_crit_edge
  call void @_raw_spin_unlock_irq(ptr noundef %lock) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %missed_ppm) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %surpluses) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %now) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blkcg_activate_policy(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_set(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ioc_rqos_throttle(ptr nocapture noundef readonly %rqos, ptr noundef %bio) #0 align 64 {
entry:
  %now = alloca %struct.ioc_now, align 8
  %wait = alloca %struct.iocg_wait, align 8
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %bi_blkg = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 12
  %0 = ptrtoint ptr %bi_blkg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bi_blkg, align 8
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %entry.blkg_to_iocg.exit_crit_edge, label %cond.true.i.i

entry.blkg_to_iocg.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %blkg_to_iocg.exit

cond.true.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %2 = load i32, ptr @blkcg_policy_iocost, align 4
  %arrayidx.i.i = getelementptr %struct.blkcg_gq, ptr %1, i32 0, i32 9, i32 %2
  %3 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx.i.i, align 4
  br label %blkg_to_iocg.exit

blkg_to_iocg.exit:                                ; preds = %cond.true.i.i, %entry.blkg_to_iocg.exit_crit_edge
  %cond.i.i = phi ptr [ %4, %cond.true.i.i ], [ null, %entry.blkg_to_iocg.exit_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %now) #17
  %5 = getelementptr inbounds %struct.ioc_now, ptr %now, i32 0, i32 2
  %6 = call ptr @memset(ptr %now, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %wait) #17
  %7 = call ptr @memset(ptr %wait, i32 255, i32 40)
  %enabled = getelementptr inbounds %struct.ioc, ptr %rqos, i32 0, i32 1
  %8 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %enabled, align 4, !range !288
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  %tobool2.not = icmp eq ptr %cond.i.i, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool2.not
  br i1 %or.cond, label %blkg_to_iocg.exit.cleanup_crit_edge, label %lor.lhs.false3

blkg_to_iocg.exit.cleanup_crit_edge:              ; preds = %blkg_to_iocg.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

lor.lhs.false3:                                   ; preds = %blkg_to_iocg.exit
  %level = getelementptr inbounds %struct.ioc_gq, ptr %cond.i.i, i32 0, i32 38
  %10 = ptrtoint ptr %level to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %level, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool4.not = icmp eq i32 %11, 0
  br i1 %tobool4.not, label %lor.lhs.false3.cleanup_crit_edge, label %if.end

lor.lhs.false3.cleanup_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false3
  %ioc1.i.i = getelementptr inbounds %struct.ioc_gq, ptr %cond.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %ioc1.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ioc1.i.i, align 8
  %bi_iter.i.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8
  %bi_size.i.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8, i32 1
  %14 = ptrtoint ptr %bi_size.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bi_size.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8191, i32 %15)
  %cmp.i.i = icmp ugt i32 %15, 8191
  %shr.i.i = lshr i32 %15, 12
  %narrow.i.i = select i1 %cmp.i.i, i32 %shr.i.i, i32 1
  %cond.i.i219 = zext i32 %narrow.i.i to i64
  %bi_opf.i.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 2
  %16 = ptrtoint ptr %bi_opf.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bi_opf.i.i, align 8
  %trunc.i.i = trunc i32 %17 to i8
  %18 = zext i8 %trunc.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.93)
  switch i8 %trunc.i.i, label %if.end.cleanup_crit_edge [
    i8 0, label %sw.bb.i.i
    i8 1, label %sw.bb10.i.i
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

sw.bb.i.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %lcoefs.i.i = getelementptr inbounds %struct.ioc, ptr %13, i32 0, i32 2, i32 2
  %arrayidx.i.i220 = getelementptr %struct.ioc, ptr %13, i32 0, i32 2, i32 2, i32 1
  %arrayidx6.i.i = getelementptr %struct.ioc, ptr %13, i32 0, i32 2, i32 2, i32 2
  br label %sw.epilog.i.i

sw.bb10.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %arrayidx13.i.i = getelementptr %struct.ioc, ptr %13, i32 0, i32 2, i32 2, i32 4
  %arrayidx16.i.i = getelementptr %struct.ioc, ptr %13, i32 0, i32 2, i32 2, i32 5
  %arrayidx19.i.i = getelementptr %struct.ioc, ptr %13, i32 0, i32 2, i32 2, i32 3
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %sw.bb10.i.i, %sw.bb.i.i
  %coef_randio.0.in.i.i = phi ptr [ %arrayidx16.i.i, %sw.bb10.i.i ], [ %arrayidx6.i.i, %sw.bb.i.i ]
  %coef_page.0.in.i.i = phi ptr [ %arrayidx19.i.i, %sw.bb10.i.i ], [ %lcoefs.i.i, %sw.bb.i.i ]
  %coef_seqio.0.in.i.i = phi ptr [ %arrayidx13.i.i, %sw.bb10.i.i ], [ %arrayidx.i.i220, %sw.bb.i.i ]
  %19 = ptrtoint ptr %coef_seqio.0.in.i.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %coef_seqio.0.i.i = load i64, ptr %coef_seqio.0.in.i.i, align 8
  %20 = ptrtoint ptr %coef_page.0.in.i.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %coef_page.0.i.i = load i64, ptr %coef_page.0.in.i.i, align 8
  %cursor.i.i = getelementptr inbounds %struct.ioc_gq, ptr %cond.i.i, i32 0, i32 8
  %21 = ptrtoint ptr %cursor.i.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %cursor.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %22)
  %tobool.not.i.i221 = icmp eq i64 %22, 0
  br i1 %tobool.not.i.i221, label %sw.epilog.i.i.calc_vtime_cost.exit_crit_edge, label %if.end.i.i

sw.epilog.i.i.calc_vtime_cost.exit_crit_edge:     ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %calc_vtime_cost.exit

if.end.i.i:                                       ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %23 = ptrtoint ptr %coef_randio.0.in.i.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %coef_randio.0.i.i = load i64, ptr %coef_randio.0.in.i.i, align 8
  %24 = ptrtoint ptr %bi_iter.i.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %bi_iter.i.i, align 8
  %sub.i.i = sub i64 %25, %22
  %26 = tail call i64 @llvm.abs.i64(i64 %sub.i.i, i1 false) #17
  call void @__sanitizer_cov_trace_const_cmp8(i64 32775, i64 %26)
  %cmp33.i.i = icmp ugt i64 %26, 32775
  %spec.select.i.i = select i1 %cmp33.i.i, i64 %coef_randio.0.i.i, i64 %coef_seqio.0.i.i
  br label %calc_vtime_cost.exit

calc_vtime_cost.exit:                             ; preds = %if.end.i.i, %sw.epilog.i.i.calc_vtime_cost.exit_crit_edge
  %27 = phi i64 [ %coef_seqio.0.i.i, %sw.epilog.i.i.calc_vtime_cost.exit_crit_edge ], [ %spec.select.i.i, %if.end.i.i ]
  %mul.i.i = mul i64 %coef_page.0.i.i, %cond.i.i219
  %add39.i.i = add i64 %27, %mul.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %add39.i.i)
  %tobool6.not = icmp eq i64 %add39.i.i, 0
  br i1 %tobool6.not, label %calc_vtime_cost.exit.cleanup_crit_edge, label %if.end8

calc_vtime_cost.exit.cleanup_crit_edge:           ; preds = %calc_vtime_cost.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end8:                                          ; preds = %calc_vtime_cost.exit
  %call9 = call fastcc zeroext i1 @iocg_activate(ptr noundef nonnull %cond.i.i, ptr noundef nonnull %now)
  br i1 %call9, label %if.end11, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end11:                                         ; preds = %if.end8
  %28 = ptrtoint ptr %bi_iter.i.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %bi_iter.i.i, align 8
  %30 = ptrtoint ptr %bi_size.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %bi_size.i.i, align 8
  %shr = lshr i32 %31, 9
  %conv = zext i32 %shr to i64
  %add = add i64 %29, %conv
  %32 = ptrtoint ptr %cursor.i.i to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %add, ptr %cursor.i.i, align 8
  %vtime13 = getelementptr inbounds %struct.ioc_gq, ptr %cond.i.i, i32 0, i32 9
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %vtime13, i32 noundef 8) #17
  %call.i = call i64 @generic_atomic64_read(ptr noundef %vtime13) #17
  %call15 = call fastcc i64 @adjust_inuse_and_calc_cost(ptr noundef nonnull %cond.i.i, i64 noundef %call.i, i64 noundef %add39.i.i, ptr noundef nonnull %now)
  %waitq = getelementptr inbounds %struct.ioc_gq, ptr %cond.i.i, i32 0, i32 26
  %head.i = getelementptr inbounds %struct.ioc_gq, ptr %cond.i.i, i32 0, i32 26, i32 1
  %33 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile ptr, ptr %head.i, align 4
  %cmp.i.i222.not = icmp eq ptr %34, %head.i
  br i1 %cmp.i.i222.not, label %land.lhs.true, label %if.end11.if.end23_crit_edge

if.end11.if.end23_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end23

land.lhs.true:                                    ; preds = %if.end11
  %abs_vdebt = getelementptr inbounds %struct.ioc_gq, ptr %cond.i.i, i32 0, i32 11
  %35 = ptrtoint ptr %abs_vdebt to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %abs_vdebt, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %36)
  %tobool18.not = icmp eq i64 %36, 0
  br i1 %tobool18.not, label %land.lhs.true19, label %land.lhs.true.if.end23_crit_edge

land.lhs.true.if.end23_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end23

land.lhs.true19:                                  ; preds = %land.lhs.true
  %37 = ptrtoint ptr %5 to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %5, align 8
  %39 = add i64 %call15, %call.i
  %sub = sub i64 %38, %39
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %sub)
  %cmp = icmp sgt i64 %sub, -1
  br i1 %cmp, label %if.then22, label %land.lhs.true19.if.end23_crit_edge

land.lhs.true19.if.end23_crit_edge:               ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end23

if.then22:                                        ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #19
  call fastcc void @iocg_commit_bio(ptr noundef nonnull %cond.i.i, ptr noundef %bio, i64 noundef %add39.i.i, i64 noundef %call15)
  br label %cleanup

if.end23:                                         ; preds = %land.lhs.true19.if.end23_crit_edge, %land.lhs.true.if.end23_crit_edge, %if.end11.if.end23_crit_edge
  %40 = ptrtoint ptr %bi_opf.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %bi_opf.i.i, align 8
  %42 = and i32 %41, 67112960
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp.i.not = icmp eq i32 %42, 0
  br i1 %cmp.i.not, label %lor.rhs, label %if.end23.lor.end34_crit_edge

if.end23.lor.end34_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #19
  br label %lor.end34

lor.rhs:                                          ; preds = %if.end23
  %43 = call i32 @llvm.read_register.i32(metadata !275) #17
  %and.i = and i32 %43, -16384
  %44 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %44, i32 0, i32 2
  %45 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %task, align 8
  %stack.i.i.i = getelementptr inbounds %struct.task_struct, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %stack.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %stack.i.i.i, align 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %48, align 4
  %and1.i.i.i.i.i = and i32 %50, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool.not.i, label %lor.rhs.do.end_crit_edge, label %lor.end

lor.rhs.do.end_crit_edge:                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end

lor.end:                                          ; preds = %lor.rhs
  %signal.i.i = getelementptr inbounds %struct.task_struct, ptr %46, i32 0, i32 116, i32 1
  %51 = ptrtoint ptr %signal.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %signal.i.i, align 4
  %53 = and i32 %52, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool28.not = icmp eq i32 %53, 0
  br i1 %tobool28.not, label %lor.end.do.end_crit_edge, label %lor.end.lor.end34_crit_edge

lor.end.lor.end34_crit_edge:                      ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %lor.end34

lor.end.do.end_crit_edge:                         ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end

do.end:                                           ; preds = %lor.end.do.end_crit_edge, %lor.rhs.do.end_crit_edge
  %abs_vdebt32 = getelementptr inbounds %struct.ioc_gq, ptr %cond.i.i, i32 0, i32 11
  %54 = ptrtoint ptr %abs_vdebt32 to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load volatile i64, ptr %abs_vdebt32, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %55)
  %tobool33 = icmp ne i64 %55, 0
  br label %lor.end34

lor.end34:                                        ; preds = %do.end, %lor.end.lor.end34_crit_edge, %if.end23.lor.end34_crit_edge
  %56 = phi i1 [ true, %lor.end.lor.end34_crit_edge ], [ false, %do.end ], [ true, %if.end23.lor.end34_crit_edge ]
  %57 = phi i1 [ true, %lor.end.lor.end34_crit_edge ], [ %tobool33, %do.end ], [ true, %if.end23.lor.end34_crit_edge ]
  %active_list256 = getelementptr inbounds %struct.ioc_gq, ptr %cond.i.i, i32 0, i32 15
  %abs_vdebt54 = getelementptr inbounds %struct.ioc_gq, ptr %cond.i.i, i32 0, i32 11
  %inuse = getelementptr inbounds %struct.ioc_gq, ptr %cond.i.i, i32 0, i32 5
  %active = getelementptr inbounds %struct.ioc_gq, ptr %cond.i.i, i32 0, i32 4
  br label %retry_lock

retry_lock:                                       ; preds = %if.then61, %lor.end34
  %ioc_locked.0.off0 = phi i1 [ %57, %lor.end34 ], [ true, %if.then61 ]
  br i1 %ioc_locked.0.off0, label %iocg_lock.exit, label %iocg_lock.exit.thread

iocg_lock.exit:                                   ; preds = %retry_lock
  %58 = ptrtoint ptr %ioc1.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ioc1.i.i, align 8
  %lock.i = getelementptr inbounds %struct.ioc, ptr %59, i32 0, i32 8
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #17
  call void @_raw_spin_lock(ptr noundef %waitq) #17
  %60 = ptrtoint ptr %active_list256 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile ptr, ptr %active_list256, align 4
  %cmp.i223.not = icmp eq ptr %61, %active_list256
  br i1 %cmp.i223.not, label %if.then.i, label %iocg_lock.exit.if.end43_crit_edge, !prof !286

iocg_lock.exit.if.end43_crit_edge:                ; preds = %iocg_lock.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end43

iocg_lock.exit.thread:                            ; preds = %retry_lock
  %call15.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %waitq) #17
  %62 = ptrtoint ptr %active_list256 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile ptr, ptr %active_list256, align 4
  %cmp.i223257.not = icmp eq ptr %63, %active_list256
  br i1 %cmp.i223257.not, label %iocg_lock.exit.thread.iocg_unlock.exit_crit_edge, label %iocg_lock.exit.thread.if.end43_crit_edge, !prof !286

iocg_lock.exit.thread.if.end43_crit_edge:         ; preds = %iocg_lock.exit.thread
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end43

iocg_lock.exit.thread.iocg_unlock.exit_crit_edge: ; preds = %iocg_lock.exit.thread
  call void @__sanitizer_cov_trace_pc() #19
  br label %iocg_unlock.exit

if.then.i:                                        ; preds = %iocg_lock.exit
  call void @__sanitizer_cov_trace_pc() #19
  call void @_raw_spin_unlock(ptr noundef %waitq) #17
  %64 = ptrtoint ptr %ioc1.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %ioc1.i.i, align 8
  %lock1.i = getelementptr inbounds %struct.ioc, ptr %65, i32 0, i32 8
  br label %iocg_unlock.exit

iocg_unlock.exit:                                 ; preds = %if.then.i, %iocg_lock.exit.thread.iocg_unlock.exit_crit_edge
  %flags.0261263 = phi i32 [ %call2.i, %if.then.i ], [ %call15.i, %iocg_lock.exit.thread.iocg_unlock.exit_crit_edge ]
  %waitq.sink.i = phi ptr [ %lock1.i, %if.then.i ], [ %waitq, %iocg_lock.exit.thread.iocg_unlock.exit_crit_edge ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %waitq.sink.i, i32 noundef %flags.0261263) #17
  call fastcc void @iocg_commit_bio(ptr noundef %cond.i.i, ptr noundef %bio, i64 noundef %add39.i.i, i64 noundef %call15)
  br label %cleanup

if.end43:                                         ; preds = %iocg_lock.exit.thread.if.end43_crit_edge, %iocg_lock.exit.if.end43_crit_edge
  %flags.0260 = phi i32 [ %call15.i, %iocg_lock.exit.thread.if.end43_crit_edge ], [ %call2.i, %iocg_lock.exit.if.end43_crit_edge ]
  br i1 %56, label %if.then45, label %if.end53

if.then45:                                        ; preds = %if.end43
  call fastcc void @iocg_incur_debt(ptr noundef %cond.i.i, i64 noundef %add39.i.i, ptr noundef nonnull %now)
  %call46 = call fastcc zeroext i1 @iocg_kick_delay(ptr noundef %cond.i.i, ptr noundef nonnull %now)
  br i1 %call46, label %if.then47, label %if.then45.if.end51_crit_edge

if.then45.if.end51_crit_edge:                     ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end51

if.then47:                                        ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #19
  %q = getelementptr inbounds %struct.rq_qos, ptr %rqos, i32 0, i32 1
  %66 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %q, align 4
  %68 = ptrtoint ptr %bi_opf.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %bi_opf.i.i, align 8
  %70 = and i32 %69, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %cmp49 = icmp ne i32 %70, 0
  call void @blkcg_schedule_throttle(ptr noundef %67, i1 noundef zeroext %cmp49) #17
  br label %if.end51

if.end51:                                         ; preds = %if.then47, %if.then45.if.end51_crit_edge
  br i1 %57, label %if.then.i229, label %if.end51.iocg_unlock.exit231_crit_edge

if.end51.iocg_unlock.exit231_crit_edge:           ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #19
  br label %iocg_unlock.exit231

if.then.i229:                                     ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #19
  call void @_raw_spin_unlock(ptr noundef %waitq) #17
  %71 = ptrtoint ptr %ioc1.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %ioc1.i.i, align 8
  %lock1.i228 = getelementptr inbounds %struct.ioc, ptr %72, i32 0, i32 8
  br label %iocg_unlock.exit231

iocg_unlock.exit231:                              ; preds = %if.then.i229, %if.end51.iocg_unlock.exit231_crit_edge
  %waitq.sink.i230 = phi ptr [ %lock1.i228, %if.then.i229 ], [ %waitq, %if.end51.iocg_unlock.exit231_crit_edge ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %waitq.sink.i230, i32 noundef %flags.0260) #17
  br label %cleanup

if.end53:                                         ; preds = %if.end43
  %73 = ptrtoint ptr %abs_vdebt54 to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %abs_vdebt54, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %74)
  %tobool55.not = icmp eq i64 %74, 0
  br i1 %tobool55.not, label %land.lhs.true56, label %if.end53.if.end65_crit_edge

if.end53.if.end65_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end65

land.lhs.true56:                                  ; preds = %if.end53
  %75 = ptrtoint ptr %inuse to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %inuse, align 8
  %77 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %active, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %76, i32 %78)
  %cmp57.not = icmp eq i32 %76, %78
  br i1 %cmp57.not, label %land.lhs.true56.if.end65_crit_edge, label %if.then59

land.lhs.true56.if.end65_crit_edge:               ; preds = %land.lhs.true56
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end65

if.then59:                                        ; preds = %land.lhs.true56
  br i1 %ioc_locked.0.off0, label %if.end62, label %if.then61

if.then61:                                        ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #19
  call void @_raw_spin_unlock_irqrestore(ptr noundef %waitq, i32 noundef %flags.0260) #17
  br label %retry_lock

if.end62:                                         ; preds = %if.then59
  call fastcc void @__propagate_weights(ptr noundef %cond.i.i, i32 noundef %78, i32 noundef %78, i1 noundef zeroext true, ptr noundef nonnull %now) #17
  %79 = ptrtoint ptr %ioc1.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %ioc1.i.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %81 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %tobool.not.i.i235 = icmp eq i32 %81, 0
  br i1 %tobool.not.i.i235, label %if.end62.if.end.i.i236_crit_edge, label %land.rhs.i.i

if.end62.if.end.i.i236_crit_edge:                 ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i.i236

land.rhs.i.i:                                     ; preds = %if.end62
  %dep_map.i.i = getelementptr inbounds %struct.ioc, ptr %80, i32 0, i32 8, i32 0, i32 0, i32 4
  %call.i.i.i = call i32 @lock_is_held_type(ptr noundef %dep_map.i.i, i32 noundef -1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %cmp.not.i.i, label %do.end.i.i, label %land.rhs.i.i.if.end.i.i236_crit_edge, !prof !286

land.rhs.i.i.if.end.i.i236_crit_edge:             ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i.i236

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.44, i32 noundef 1129, i32 noundef 9, ptr noundef null) #17
  br label %if.end.i.i236

if.end.i.i236:                                    ; preds = %do.end.i.i, %land.rhs.i.i.if.end.i.i236_crit_edge, %if.end62.if.end.i.i236_crit_edge
  %weights_updated.i.i = getelementptr inbounds %struct.ioc, ptr %80, i32 0, i32 21
  %82 = ptrtoint ptr %weights_updated.i.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %weights_updated.i.i, align 4, !range !288
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %83)
  %tobool24.not.i.i = icmp eq i8 %83, 0
  br i1 %tobool24.not.i.i, label %if.end.i.i236.if.end65_crit_edge, label %do.end29.i.i

if.end.i.i236.if.end65_crit_edge:                 ; preds = %if.end.i.i236
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end65

do.end29.i.i:                                     ; preds = %if.end.i.i236
  call void @__sanitizer_cov_trace_pc() #19
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !289
  %hweight_gen.i.i = getelementptr inbounds %struct.ioc, ptr %80, i32 0, i32 22
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %hweight_gen.i.i, i32 noundef 4) #17
  call void @llvm.prefetch.p0(ptr %hweight_gen.i.i, i32 1, i32 3, i32 1) #17
  %84 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %hweight_gen.i.i, ptr %hweight_gen.i.i, i32 1, ptr elementtype(i32) %hweight_gen.i.i) #17, !srcloc !290
  %85 = ptrtoint ptr %weights_updated.i.i to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 0, ptr %weights_updated.i.i, align 4
  br label %if.end65

if.end65:                                         ; preds = %do.end29.i.i, %if.end.i.i236.if.end65_crit_edge, %land.lhs.true56.if.end65_crit_edge, %if.end53.if.end65_crit_edge
  %86 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 0, ptr %wait, align 8
  %private.i = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1
  %func1.i = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2
  %87 = ptrtoint ptr %func1.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr @iocg_wake_fn, ptr %func1.i, align 8
  %88 = call i32 @llvm.read_register.i32(metadata !275) #17
  %and.i237 = and i32 %88, -16384
  %89 = inttoptr i32 %and.i237 to ptr
  %task68 = getelementptr inbounds %struct.thread_info, ptr %89, i32 0, i32 2
  %90 = ptrtoint ptr %task68 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %task68, align 8
  %92 = ptrtoint ptr %private.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %91, ptr %private.i, align 4
  %bio70 = getelementptr inbounds %struct.iocg_wait, ptr %wait, i32 0, i32 1
  %93 = ptrtoint ptr %bio70 to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %bio, ptr %bio70, align 4
  %abs_cost71 = getelementptr inbounds %struct.iocg_wait, ptr %wait, i32 0, i32 2
  %94 = ptrtoint ptr %abs_cost71 to i32
  call void @__asan_store8_noabort(i32 %94)
  store i64 %add39.i.i, ptr %abs_cost71, align 8
  %committed = getelementptr inbounds %struct.iocg_wait, ptr %wait, i32 0, i32 3
  %95 = ptrtoint ptr %committed to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 0, ptr %committed, align 8
  %entry1.i = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3
  %prev.i.i = getelementptr inbounds %struct.ioc_gq, ptr %cond.i.i, i32 0, i32 26, i32 1, i32 1
  %96 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i239 = call zeroext i1 @__list_add_valid(ptr noundef %entry1.i, ptr noundef %97, ptr noundef %head.i) #17
  br i1 %call.i.i.i239, label %if.end.i.i.i, label %if.end65.__add_wait_queue_entry_tail.exit_crit_edge

if.end65.__add_wait_queue_entry_tail.exit_crit_edge: ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #19
  br label %__add_wait_queue_entry_tail.exit

if.end.i.i.i:                                     ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #19
  %98 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %entry1.i, ptr %prev.i.i, align 4
  %99 = ptrtoint ptr %entry1.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %head.i, ptr %entry1.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, i32 1
  %100 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %97, ptr %prev3.i.i.i, align 8
  %101 = ptrtoint ptr %97 to i32
  call void @__asan_store4_noabort(i32 %101)
  store volatile ptr %entry1.i, ptr %97, align 4
  br label %__add_wait_queue_entry_tail.exit

__add_wait_queue_entry_tail.exit:                 ; preds = %if.end.i.i.i, %if.end65.__add_wait_queue_entry_tail.exit_crit_edge
  call fastcc void @iocg_kick_waitq(ptr noundef %cond.i.i, i1 noundef zeroext %ioc_locked.0.off0, ptr noundef nonnull %now)
  br i1 %ioc_locked.0.off0, label %if.then.i243, label %__add_wait_queue_entry_tail.exit.iocg_unlock.exit245_crit_edge

__add_wait_queue_entry_tail.exit.iocg_unlock.exit245_crit_edge: ; preds = %__add_wait_queue_entry_tail.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %iocg_unlock.exit245

if.then.i243:                                     ; preds = %__add_wait_queue_entry_tail.exit
  call void @__sanitizer_cov_trace_pc() #19
  call void @_raw_spin_unlock(ptr noundef %waitq) #17
  %102 = ptrtoint ptr %ioc1.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %ioc1.i.i, align 8
  %lock1.i242 = getelementptr inbounds %struct.ioc, ptr %103, i32 0, i32 8
  br label %iocg_unlock.exit245

iocg_unlock.exit245:                              ; preds = %if.then.i243, %__add_wait_queue_entry_tail.exit.iocg_unlock.exit245_crit_edge
  %waitq.sink.i244 = phi ptr [ %lock1.i242, %if.then.i243 ], [ %waitq, %__add_wait_queue_entry_tail.exit.iocg_unlock.exit245_crit_edge ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %waitq.sink.i244, i32 noundef %flags.0260) #17
  br label %__here

__here:                                           ; preds = %if.end153, %iocg_unlock.exit245
  %104 = ptrtoint ptr %task68 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %task68, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %105, i32 0, i32 212
  %106 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 ptrtoint (ptr blockaddress(@ioc_rqos_throttle, %__here) to i32), ptr %task_state_change, align 4
  %107 = load ptr, ptr %task68, align 8
  %108 = ptrtoint ptr %107 to i32
  call void @__asan_store4_noabort(i32 %108)
  store volatile i32 2, ptr %107, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !301
  %109 = ptrtoint ptr %committed to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %committed, align 8, !range !288
  %tobool151.not = icmp eq i8 %110, 0
  br i1 %tobool151.not, label %if.end153, label %while.end

if.end153:                                        ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #19
  call void @io_schedule() #17
  br label %__here

while.end:                                        ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #19
  call void @finish_wait(ptr noundef %waitq, ptr noundef nonnull %wait) #17
  br label %cleanup

cleanup:                                          ; preds = %while.end, %iocg_unlock.exit231, %iocg_unlock.exit, %if.then22, %if.end8.cleanup_crit_edge, %calc_vtime_cost.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false3.cleanup_crit_edge, %blkg_to_iocg.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %wait) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %now) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ioc_rqos_merge(ptr noundef %rqos, ptr nocapture noundef readonly %rq, ptr nocapture noundef %bio) #0 align 64 {
entry:
  %now = alloca %struct.ioc_now, align 8
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %bi_blkg = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 12
  %0 = ptrtoint ptr %bi_blkg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bi_blkg, align 8
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %entry.blkg_to_iocg.exit_crit_edge, label %cond.true.i.i

entry.blkg_to_iocg.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %blkg_to_iocg.exit

cond.true.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %2 = load i32, ptr @blkcg_policy_iocost, align 4
  %arrayidx.i.i = getelementptr %struct.blkcg_gq, ptr %1, i32 0, i32 9, i32 %2
  %3 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx.i.i, align 4
  br label %blkg_to_iocg.exit

blkg_to_iocg.exit:                                ; preds = %cond.true.i.i, %entry.blkg_to_iocg.exit_crit_edge
  %cond.i.i = phi ptr [ %4, %cond.true.i.i ], [ null, %entry.blkg_to_iocg.exit_crit_edge ]
  %bi_iter = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8
  %5 = ptrtoint ptr %bi_iter to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %bi_iter, align 8
  %bi_size = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8, i32 1
  %7 = ptrtoint ptr %bi_size to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %bi_size, align 8
  %shr = lshr i32 %8, 9
  %conv = zext i32 %shr to i64
  %add = add i64 %6, %conv
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %now) #17
  %9 = getelementptr inbounds %struct.ioc_now, ptr %now, i32 0, i32 2
  %enabled = getelementptr inbounds %struct.ioc, ptr %rqos, i32 0, i32 1
  %10 = call ptr @memset(ptr %now, i32 255, i32 32)
  %11 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %enabled, align 4, !range !288
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not = icmp eq i8 %12, 0
  %tobool3.not = icmp eq ptr %cond.i.i, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool3.not
  br i1 %or.cond, label %blkg_to_iocg.exit.cleanup_crit_edge, label %lor.lhs.false4

blkg_to_iocg.exit.cleanup_crit_edge:              ; preds = %blkg_to_iocg.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

lor.lhs.false4:                                   ; preds = %blkg_to_iocg.exit
  %level = getelementptr inbounds %struct.ioc_gq, ptr %cond.i.i, i32 0, i32 38
  %13 = ptrtoint ptr %level to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %level, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool5.not = icmp eq i32 %14, 0
  br i1 %tobool5.not, label %lor.lhs.false4.cleanup_crit_edge, label %if.end

lor.lhs.false4.cleanup_crit_edge:                 ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false4
  %ioc1.i.i = getelementptr inbounds %struct.ioc_gq, ptr %cond.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %ioc1.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ioc1.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8191, i32 %8)
  %cmp.i.i = icmp ugt i32 %8, 8191
  %shr.i.i = lshr i32 %8, 12
  %narrow.i.i = select i1 %cmp.i.i, i32 %shr.i.i, i32 1
  %cond.i.i105 = zext i32 %narrow.i.i to i64
  %bi_opf.i.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 2
  %17 = ptrtoint ptr %bi_opf.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %bi_opf.i.i, align 8
  %trunc.i.i = trunc i32 %18 to i8
  %19 = zext i8 %trunc.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.94)
  switch i8 %trunc.i.i, label %if.end.cleanup_crit_edge [
    i8 0, label %sw.bb.i.i
    i8 1, label %sw.bb10.i.i
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

sw.bb.i.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %lcoefs.i.i = getelementptr inbounds %struct.ioc, ptr %16, i32 0, i32 2, i32 2
  br label %sw.epilog.i.i

sw.bb10.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %arrayidx19.i.i = getelementptr %struct.ioc, ptr %16, i32 0, i32 2, i32 2, i32 3
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %sw.bb10.i.i, %sw.bb.i.i
  %coef_page.0.in.i.i = phi ptr [ %arrayidx19.i.i, %sw.bb10.i.i ], [ %lcoefs.i.i, %sw.bb.i.i ]
  %20 = ptrtoint ptr %coef_page.0.in.i.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %coef_page.0.i.i = load i64, ptr %coef_page.0.in.i.i, align 8
  %mul.i.i = mul i64 %coef_page.0.i.i, %cond.i.i105
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %mul.i.i)
  %tobool7.not = icmp eq i64 %mul.i.i, 0
  br i1 %tobool7.not, label %sw.epilog.i.i.cleanup_crit_edge, label %if.end9

sw.epilog.i.i.cleanup_crit_edge:                  ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end9:                                          ; preds = %sw.epilog.i.i
  call fastcc void @ioc_now(ptr noundef %rqos, ptr noundef nonnull %now)
  %vtime10 = getelementptr inbounds %struct.ioc_gq, ptr %cond.i.i, i32 0, i32 9
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %vtime10, i32 noundef 8) #17
  %call.i = tail call i64 @generic_atomic64_read(ptr noundef %vtime10) #17
  %call12 = call fastcc i64 @adjust_inuse_and_calc_cost(ptr noundef nonnull %cond.i.i, i64 noundef %call.i, i64 noundef %mul.i.i, ptr noundef nonnull %now)
  %__sector.i = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 9
  %21 = ptrtoint ptr %__sector.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %__sector.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %22, i64 %add)
  %cmp = icmp ult i64 %22, %add
  br i1 %cmp, label %land.lhs.true, label %if.end9.if.end23_crit_edge

if.end9.if.end23_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end23

land.lhs.true:                                    ; preds = %if.end9
  %__data_len.i.i = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 8
  %23 = ptrtoint ptr %__data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %__data_len.i.i, align 8
  %shr.i = lshr i32 %24, 9
  %conv17 = zext i32 %shr.i to i64
  %add18 = add i64 %22, %conv17
  %cursor = getelementptr inbounds %struct.ioc_gq, ptr %cond.i.i, i32 0, i32 8
  %25 = ptrtoint ptr %cursor to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %cursor, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add18, i64 %26)
  %cmp19 = icmp eq i64 %add18, %26
  br i1 %cmp19, label %if.then21, label %land.lhs.true.if.end23_crit_edge

land.lhs.true.if.end23_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end23

if.then21:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  %27 = ptrtoint ptr %cursor to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %add, ptr %cursor, align 8
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %land.lhs.true.if.end23_crit_edge, %if.end9.if.end23_crit_edge
  %bio24 = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 10
  %28 = ptrtoint ptr %bio24 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bio24, align 8
  %tobool25.not = icmp eq ptr %29, null
  br i1 %tobool25.not, label %if.end23.do.body37_crit_edge, label %land.lhs.true26

if.end23.do.body37_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body37

land.lhs.true26:                                  ; preds = %if.end23
  %bi_iocost_cost = getelementptr inbounds %struct.bio, ptr %29, i32 0, i32 14
  %30 = ptrtoint ptr %bi_iocost_cost to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %bi_iocost_cost, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %31)
  %tobool28.not = icmp eq i64 %31, 0
  br i1 %tobool28.not, label %land.lhs.true26.do.body37_crit_edge, label %land.lhs.true29

land.lhs.true26.do.body37_crit_edge:              ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body37

land.lhs.true29:                                  ; preds = %land.lhs.true26
  %32 = ptrtoint ptr %9 to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %9, align 8
  %call.i.i103 = call zeroext i1 @__kasan_check_read(ptr noundef %vtime10, i32 noundef 8) #17
  %call.i104 = call i64 @generic_atomic64_read(ptr noundef %vtime10) #17
  %34 = add i64 %call12, %call.i104
  %sub = sub i64 %33, %34
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %sub)
  %cmp33 = icmp sgt i64 %sub, -1
  br i1 %cmp33, label %if.then35, label %land.lhs.true29.do.body37_crit_edge

land.lhs.true29.do.body37_crit_edge:              ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body37

if.then35:                                        ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #19
  %bi_iocost_cost.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 14
  %35 = ptrtoint ptr %bi_iocost_cost.i to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %call12, ptr %bi_iocost_cost.i, align 8
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %vtime10, i32 noundef 8) #17
  call void @generic_atomic64_add(i64 noundef %call12, ptr noundef %vtime10) #17
  %36 = call i32 @llvm.read_register.i32(metadata !275) #17
  %and.i.i.i.i = and i32 %36, -16384
  %37 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %39, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !302
  %pcpu_stat.i = getelementptr inbounds %struct.ioc_gq, ptr %cond.i.i, i32 0, i32 29
  %40 = ptrtoint ptr %pcpu_stat.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pcpu_stat.i, align 8
  %42 = ptrtoint ptr %41 to i32
  %43 = call i32 @llvm.read_register.i32(metadata !275) #17
  %and.i.i = and i32 %43, -16384
  %44 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %44, i32 0, i32 3
  %45 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %46
  %47 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %48, %42
  %49 = inttoptr i32 %add.i to ptr
  %call.i.i15.i = call zeroext i1 @__kasan_check_write(ptr noundef %49, i32 noundef 8) #17
  call void @generic_atomic64_add(i64 noundef %mul.i.i, ptr noundef %49) #17
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !303
  %50 = call i32 @llvm.read_register.i32(metadata !275) #17
  %and.i.i.i16.i = and i32 %50, -16384
  %51 = inttoptr i32 %and.i.i.i16.i to ptr
  %preempt_count.i.i17.i = getelementptr inbounds %struct.thread_info, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %preempt_count.i.i17.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %preempt_count.i.i17.i, align 4
  %sub.i.i109 = add i32 %53, -1
  store volatile i32 %sub.i.i109, ptr %preempt_count.i.i17.i, align 4
  br label %cleanup

do.body37:                                        ; preds = %land.lhs.true29.do.body37_crit_edge, %land.lhs.true26.do.body37_crit_edge, %if.end23.do.body37_crit_edge
  %lock = getelementptr inbounds %struct.ioc, ptr %rqos, i32 0, i32 8
  %call41 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #17
  %waitq = getelementptr inbounds %struct.ioc_gq, ptr %cond.i.i, i32 0, i32 26
  call void @_raw_spin_lock(ptr noundef %waitq) #17
  %active_list = getelementptr inbounds %struct.ioc_gq, ptr %cond.i.i, i32 0, i32 15
  %54 = ptrtoint ptr %active_list to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile ptr, ptr %active_list, align 4
  %cmp.i.not = icmp eq ptr %55, %active_list
  br i1 %cmp.i.not, label %if.else, label %if.then50, !prof !286

if.then50:                                        ; preds = %do.body37
  call fastcc void @iocg_incur_debt(ptr noundef nonnull %cond.i.i, i64 noundef %mul.i.i, ptr noundef nonnull %now)
  %call51 = call fastcc zeroext i1 @iocg_kick_delay(ptr noundef nonnull %cond.i.i, ptr noundef nonnull %now)
  br i1 %call51, label %if.then52, label %if.then50.if.end57_crit_edge

if.then50.if.end57_crit_edge:                     ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end57

if.then52:                                        ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #19
  %q = getelementptr inbounds %struct.rq_qos, ptr %rqos, i32 0, i32 1
  %56 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %q, align 4
  %58 = ptrtoint ptr %bi_opf.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %bi_opf.i.i, align 8
  %60 = and i32 %59, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %cmp54 = icmp ne i32 %60, 0
  call void @blkcg_schedule_throttle(ptr noundef %57, i1 noundef zeroext %cmp54) #17
  br label %if.end57

if.else:                                          ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #19
  call fastcc void @iocg_commit_bio(ptr noundef nonnull %cond.i.i, ptr noundef %bio, i64 noundef %mul.i.i, i64 noundef %call12)
  br label %if.end57

if.end57:                                         ; preds = %if.else, %if.then52, %if.then50.if.end57_crit_edge
  call void @_raw_spin_unlock(ptr noundef %waitq) #17
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call41) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end57, %if.then35, %sw.epilog.i.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false4.cleanup_crit_edge, %blkg_to_iocg.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %now) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ioc_rqos_done(ptr nocapture noundef readonly %rqos, ptr nocapture noundef readonly %rq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %enabled = getelementptr inbounds %struct.ioc, ptr %rqos, i32 0, i32 1
  %0 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %enabled, align 4, !range !288
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %alloc_time_ns = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 14
  %2 = ptrtoint ptr %alloc_time_ns to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %alloc_time_ns, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %3)
  %tobool1.not = icmp eq i64 %3, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false2

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %start_time_ns = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 15
  %4 = ptrtoint ptr %start_time_ns to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %start_time_ns, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %5)
  %tobool3.not = icmp eq i64 %5, 0
  br i1 %tobool3.not, label %lor.lhs.false2.cleanup_crit_edge, label %if.end

lor.lhs.false2.cleanup_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false2
  %cmd_flags = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 3
  %6 = ptrtoint ptr %cmd_flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cmd_flags, align 4
  %trunc = trunc i32 %7 to i8
  %8 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.95)
  switch i8 %trunc, label %if.end.cleanup_crit_edge [
    i8 0, label %if.end.sw.epilog_crit_edge
    i8 1, label %sw.bb5
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

sw.bb5:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb5, %if.end.sw.epilog_crit_edge
  %pidx.0 = phi i32 [ 3, %sw.bb5 ], [ 1, %if.end.sw.epilog_crit_edge ]
  %rw.0 = phi i32 [ 1, %sw.bb5 ], [ 0, %if.end.sw.epilog_crit_edge ]
  %call.i = tail call i64 @ktime_get() #17
  %9 = ptrtoint ptr %alloc_time_ns to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %alloc_time_ns, align 8
  %sub = sub i64 %call.i, %10
  %11 = ptrtoint ptr %start_time_ns to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %start_time_ns, align 8
  %sub10 = sub i64 %12, %10
  %stats_sectors.i.i.i = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 18
  %13 = ptrtoint ptr %stats_sectors.i.i.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %stats_sectors.i.i.i, align 2
  %15 = lshr i16 %14, 3
  %16 = ptrtoint ptr %cmd_flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cmd_flags, align 4
  %trunc.i.i = trunc i32 %17 to i8
  %18 = zext i8 %trunc.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.96)
  switch i8 %trunc.i.i, label %sw.epilog.calc_size_vtime_cost.exit_crit_edge [
    i8 0, label %sw.bb.i.i
    i8 1, label %sw.bb1.i.i
  ]

sw.epilog.calc_size_vtime_cost.exit_crit_edge:    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #19
  br label %calc_size_vtime_cost.exit

sw.bb.i.i:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #19
  %lcoefs.i.i = getelementptr inbounds %struct.ioc, ptr %rqos, i32 0, i32 2, i32 2
  br label %sw.epilog.sink.split.i.i

sw.bb1.i.i:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #19
  %arrayidx5.i.i = getelementptr %struct.ioc, ptr %rqos, i32 0, i32 2, i32 2, i32 3
  br label %sw.epilog.sink.split.i.i

sw.epilog.sink.split.i.i:                         ; preds = %sw.bb1.i.i, %sw.bb.i.i
  %arrayidx5.sink.i.i = phi ptr [ %arrayidx5.i.i, %sw.bb1.i.i ], [ %lcoefs.i.i, %sw.bb.i.i ]
  %conv2.sink.i.i = zext i16 %15 to i64
  %19 = ptrtoint ptr %arrayidx5.sink.i.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %arrayidx5.sink.i.i, align 8
  %mul6.i.i = mul i64 %20, %conv2.sink.i.i
  br label %calc_size_vtime_cost.exit

calc_size_vtime_cost.exit:                        ; preds = %sw.epilog.sink.split.i.i, %sw.epilog.calc_size_vtime_cost.exit_crit_edge
  %.sink.i.i = phi i64 [ 0, %sw.epilog.calc_size_vtime_cost.exit_crit_edge ], [ %mul6.i.i, %sw.epilog.sink.split.i.i ]
  %call12 = tail call i64 @div64_u64(i64 noundef %.sink.i.i, i64 noundef 137) #17
  %21 = tail call i32 @llvm.read_register.i32(metadata !275) #17
  %and.i.i.i = and i32 %21, -16384
  %22 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %24, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !304
  %pcpu_stat = getelementptr inbounds %struct.ioc, ptr %rqos, i32 0, i32 11
  %25 = ptrtoint ptr %pcpu_stat to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pcpu_stat, align 4
  %27 = ptrtoint ptr %26 to i32
  %28 = tail call i32 @llvm.read_register.i32(metadata !275) #17
  %and.i = and i32 %28, -16384
  %29 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %31
  %32 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx, align 4
  %add = add i32 %33, %27
  %34 = inttoptr i32 %add to ptr
  call void @__sanitizer_cov_trace_cmp8(i64 %sub, i64 %call12)
  %cmp.not = icmp ugt i64 %sub, %call12
  br i1 %cmp.not, label %lor.lhs.false19, label %calc_size_vtime_cost.exit.if.then24_crit_edge

calc_size_vtime_cost.exit.if.then24_crit_edge:    ; preds = %calc_size_vtime_cost.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then24

lor.lhs.false19:                                  ; preds = %calc_size_vtime_cost.exit
  %sub20 = sub i64 %sub, %call12
  %params = getelementptr inbounds %struct.ioc, ptr %rqos, i32 0, i32 2
  %arrayidx21 = getelementptr [6 x i32], ptr %params, i32 0, i32 %pidx.0
  %35 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx21, align 4
  %mul = mul i32 %36, 1000
  %conv = zext i32 %mul to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %sub20, i64 %conv)
  %cmp22.not = icmp ugt i64 %sub20, %conv
  br i1 %cmp22.not, label %if.else, label %lor.lhs.false19.if.then24_crit_edge

lor.lhs.false19.if.then24_crit_edge:              ; preds = %lor.lhs.false19
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then24

if.then24:                                        ; preds = %lor.lhs.false19.if.then24_crit_edge, %calc_size_vtime_cost.exit.if.then24_crit_edge
  %arrayidx25 = getelementptr [2 x %struct.ioc_missed], ptr %34, i32 0, i32 %rw.0
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx25, i32 noundef 4) #17
  tail call void @llvm.prefetch.p0(ptr %arrayidx25, i32 1, i32 3, i32 1) #17
  %37 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx25, ptr %arrayidx25, i32 1, ptr elementtype(i32) %arrayidx25) #17, !srcloc !290
  br label %if.end29

if.else:                                          ; preds = %lor.lhs.false19
  call void @__sanitizer_cov_trace_pc() #19
  %nr_missed = getelementptr [2 x %struct.ioc_missed], ptr %34, i32 0, i32 %rw.0, i32 1
  %call.i.i59 = tail call zeroext i1 @__kasan_check_write(ptr noundef %nr_missed, i32 noundef 4) #17
  tail call void @llvm.prefetch.p0(ptr %nr_missed, i32 1, i32 3, i32 1) #17
  %38 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nr_missed, ptr %nr_missed, i32 1, ptr elementtype(i32) %nr_missed) #17, !srcloc !290
  br label %if.end29

if.end29:                                         ; preds = %if.else, %if.then24
  %rq_wait_ns30 = getelementptr inbounds %struct.ioc_pcpu_stat, ptr %34, i32 0, i32 1
  %call.i.i60 = tail call zeroext i1 @__kasan_check_write(ptr noundef %rq_wait_ns30, i32 noundef 8) #17
  tail call void @generic_atomic64_add(i64 noundef %sub10, ptr noundef %rq_wait_ns30) #17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !305
  %39 = tail call i32 @llvm.read_register.i32(metadata !275) #17
  %and.i.i.i61 = and i32 %39, -16384
  %40 = inttoptr i32 %and.i.i.i61 to ptr
  %preempt_count.i.i62 = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %preempt_count.i.i62 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %preempt_count.i.i62, align 4
  %sub.i = add i32 %42, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i62, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %if.end.cleanup_crit_edge, %lor.lhs.false2.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ioc_rqos_done_bio(ptr nocapture noundef readnone %rqos, ptr nocapture noundef readonly %bio) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %bi_blkg = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 12
  %0 = ptrtoint ptr %bi_blkg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bi_blkg, align 8
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %entry.if.end_crit_edge, label %blkg_to_iocg.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

blkg_to_iocg.exit:                                ; preds = %entry
  %2 = load i32, ptr @blkcg_policy_iocost, align 4
  %arrayidx.i.i = getelementptr %struct.blkcg_gq, ptr %1, i32 0, i32 9, i32 %2
  %3 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %blkg_to_iocg.exit.if.end_crit_edge, label %land.lhs.true

blkg_to_iocg.exit.if.end_crit_edge:               ; preds = %blkg_to_iocg.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

land.lhs.true:                                    ; preds = %blkg_to_iocg.exit
  %bi_iocost_cost = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 14
  %5 = ptrtoint ptr %bi_iocost_cost to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %bi_iocost_cost, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %6)
  %tobool1.not = icmp eq i64 %6, 0
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  %done_vtime = getelementptr inbounds %struct.ioc_gq, ptr %4, i32 0, i32 10
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %done_vtime, i32 noundef 8) #17
  tail call void @generic_atomic64_add(i64 noundef %6, ptr noundef %done_vtime) #17
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %blkg_to_iocg.exit.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ioc_rqos_queue_depth_changed(ptr noundef %rqos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.ioc, ptr %rqos, i32 0, i32 8
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #17
  tail call fastcc void @ioc_refresh_params(ptr noundef %rqos, i1 noundef zeroext false)
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ioc_rqos_exit(ptr noundef %rqos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %q = getelementptr inbounds %struct.rq_qos, ptr %rqos, i32 0, i32 1
  %0 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %q, align 4
  tail call void @blkcg_deactivate_policy(ptr noundef %1, ptr noundef nonnull @blkcg_policy_iocost) #17
  %lock = getelementptr inbounds %struct.ioc, ptr %rqos, i32 0, i32 8
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #17
  %running = getelementptr inbounds %struct.ioc, ptr %rqos, i32 0, i32 12
  %2 = ptrtoint ptr %running to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2, ptr %running, align 8
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #17
  %timer = getelementptr inbounds %struct.ioc, ptr %rqos, i32 0, i32 9
  %call2 = tail call i32 @del_timer_sync(ptr noundef %timer) #17
  %pcpu_stat = getelementptr inbounds %struct.ioc, ptr %rqos, i32 0, i32 11
  %3 = ptrtoint ptr %pcpu_stat to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pcpu_stat, align 4
  tail call void @free_percpu(ptr noundef %4) #17
  tail call void @kfree(ptr noundef %rqos) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @iocg_activate(ptr noundef %iocg, ptr noundef %now) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %ioc1 = getelementptr inbounds %struct.ioc_gq, ptr %iocg, i32 0, i32 1
  %0 = ptrtoint ptr %ioc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioc1, align 8
  %active_list = getelementptr inbounds %struct.ioc_gq, ptr %iocg, i32 0, i32 15
  %2 = ptrtoint ptr %active_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %active_list, align 4
  %cmp.i.not = icmp eq ptr %3, %active_list
  br i1 %cmp.i.not, label %if.end7, label %if.then

if.then:                                          ; preds = %entry
  tail call fastcc void @ioc_now(ptr noundef %1, ptr noundef %now)
  %cur_period2 = getelementptr inbounds %struct.ioc, ptr %1, i32 0, i32 19
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %cur_period2, i32 noundef 8) #17
  %call.i = tail call i64 @generic_atomic64_read(ptr noundef %cur_period2) #17
  %active_period = getelementptr inbounds %struct.ioc_gq, ptr %iocg, i32 0, i32 14
  %call.i.i123 = tail call zeroext i1 @__kasan_check_read(ptr noundef %active_period, i32 noundef 8) #17
  %call.i124 = tail call i64 @generic_atomic64_read(ptr noundef %active_period) #17
  call void @__sanitizer_cov_trace_cmp8(i64 %call.i124, i64 %call.i)
  %cmp.not = icmp eq i64 %call.i124, %call.i
  br i1 %cmp.not, label %if.then.cleanup_crit_edge, label %if.then5

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  %call.i.i125 = tail call zeroext i1 @__kasan_check_write(ptr noundef %active_period, i32 noundef 8) #17
  tail call void @generic_atomic64_set(ptr noundef %active_period, i64 noundef %call.i) #17
  br label %cleanup

if.end7:                                          ; preds = %entry
  %child_active_sum = getelementptr inbounds %struct.ioc_gq, ptr %iocg, i32 0, i32 16
  %4 = ptrtoint ptr %child_active_sum to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %child_active_sum, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %5)
  %tobool8.not = icmp eq i64 %5, 0
  br i1 %tobool8.not, label %if.end10, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end10:                                         ; preds = %if.end7
  %lock = getelementptr inbounds %struct.ioc, ptr %1, i32 0, i32 8
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #17
  tail call fastcc void @ioc_now(ptr noundef %1, ptr noundef %now)
  %cur_period11 = getelementptr inbounds %struct.ioc, ptr %1, i32 0, i32 19
  %call.i.i126 = tail call zeroext i1 @__kasan_check_read(ptr noundef %cur_period11, i32 noundef 8) #17
  %call.i127 = tail call i64 @generic_atomic64_read(ptr noundef %cur_period11) #17
  %active_period13 = getelementptr inbounds %struct.ioc_gq, ptr %iocg, i32 0, i32 14
  %call.i.i128 = tail call zeroext i1 @__kasan_check_read(ptr noundef %active_period13, i32 noundef 8) #17
  %call.i129 = tail call i64 @generic_atomic64_read(ptr noundef %active_period13) #17
  %call.i.i130 = tail call zeroext i1 @__kasan_check_write(ptr noundef %active_period13, i32 noundef 8) #17
  tail call void @generic_atomic64_set(ptr noundef %active_period13, i64 noundef %call.i127) #17
  %6 = ptrtoint ptr %active_list to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %active_list, align 4
  %cmp.i136.not = icmp eq ptr %7, %active_list
  br i1 %cmp.i136.not, label %if.end20, label %if.end10.succeed_unlock_crit_edge

if.end10.succeed_unlock_crit_edge:                ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #19
  br label %succeed_unlock

if.end20:                                         ; preds = %if.end10
  %level = getelementptr inbounds %struct.ioc_gq, ptr %iocg, i32 0, i32 38
  %8 = ptrtoint ptr %level to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %level, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end20
  %i.0.in = phi i32 [ %9, %if.end20 ], [ %i.0, %for.body.for.cond_crit_edge ]
  %i.0 = add i32 %i.0.in, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0)
  %cmp21 = icmp sgt i32 %i.0, 0
  br i1 %cmp21, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr %struct.ioc_gq, ptr %iocg, i32 0, i32 39, i32 %i.0
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %active_list22 = getelementptr inbounds %struct.ioc_gq, ptr %11, i32 0, i32 15
  %12 = ptrtoint ptr %active_list22 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %active_list22, align 4
  %cmp.i138.not = icmp eq ptr %13, %active_list22
  br i1 %cmp.i138.not, label %for.body.for.cond_crit_edge, label %for.body.fail_unlock_crit_edge

for.body.fail_unlock_crit_edge:                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %fail_unlock

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %14 = ptrtoint ptr %child_active_sum to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %child_active_sum, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %15)
  %tobool28.not = icmp eq i64 %15, 0
  br i1 %tobool28.not, label %if.end30, label %for.end.fail_unlock_crit_edge

for.end.fail_unlock_crit_edge:                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %fail_unlock

if.end30:                                         ; preds = %for.end
  %vnow = getelementptr inbounds %struct.ioc_now, ptr %now, i32 0, i32 2
  %16 = ptrtoint ptr %vnow to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %vnow, align 8
  %target = getelementptr inbounds %struct.ioc, ptr %1, i32 0, i32 3, i32 2
  %18 = ptrtoint ptr %target to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %target, align 8
  %sub31 = sub i64 %17, %19
  %vtime32 = getelementptr inbounds %struct.ioc_gq, ptr %iocg, i32 0, i32 9
  %call.i.i131 = tail call zeroext i1 @__kasan_check_read(ptr noundef %vtime32, i32 noundef 8) #17
  %call.i132 = tail call i64 @generic_atomic64_read(ptr noundef %vtime32) #17
  %sub34 = sub i64 %sub31, %call.i132
  %call.i.i133 = tail call zeroext i1 @__kasan_check_write(ptr noundef %vtime32, i32 noundef 8) #17
  tail call void @generic_atomic64_add(i64 noundef %sub34, ptr noundef %vtime32) #17
  %done_vtime = getelementptr inbounds %struct.ioc_gq, ptr %iocg, i32 0, i32 10
  %call.i.i134 = tail call zeroext i1 @__kasan_check_write(ptr noundef %done_vtime, i32 noundef 8) #17
  tail call void @generic_atomic64_add(i64 noundef %sub34, ptr noundef %done_vtime) #17
  %hweight_gen = getelementptr inbounds %struct.ioc, ptr %1, i32 0, i32 22
  %call.i.i135 = tail call zeroext i1 @__kasan_check_read(ptr noundef %hweight_gen, i32 noundef 4) #17
  %20 = ptrtoint ptr %hweight_gen to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %hweight_gen, align 4
  %sub38 = add i32 %21, -1
  %hweight_gen39 = getelementptr inbounds %struct.ioc_gq, ptr %iocg, i32 0, i32 19
  %22 = ptrtoint ptr %hweight_gen39 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %sub38, ptr %hweight_gen39, align 8
  %active_iocgs = getelementptr inbounds %struct.ioc, ptr %1, i32 0, i32 10
  %23 = ptrtoint ptr %active_iocgs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %active_iocgs, align 4
  %call.i.i140 = tail call zeroext i1 @__list_add_valid(ptr noundef %active_list, ptr noundef %active_iocgs, ptr noundef %24) #17
  br i1 %call.i.i140, label %if.end.i.i, label %if.end30.list_add.exit_crit_edge

if.end30.list_add.exit_crit_edge:                 ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #19
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #19
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %active_list, ptr %prev1.i.i, align 4
  %26 = ptrtoint ptr %active_list to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %24, ptr %active_list, align 4
  %prev3.i.i = getelementptr inbounds %struct.ioc_gq, ptr %iocg, i32 0, i32 15, i32 1
  %27 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %active_iocgs, ptr %prev3.i.i, align 4
  %28 = ptrtoint ptr %active_iocgs to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %active_list, ptr %active_iocgs, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end30.list_add.exit_crit_edge
  %weight = getelementptr inbounds %struct.ioc_gq, ptr %iocg, i32 0, i32 3
  %29 = ptrtoint ptr %weight to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %weight, align 8
  %last_inuse = getelementptr inbounds %struct.ioc_gq, ptr %iocg, i32 0, i32 6
  %31 = ptrtoint ptr %last_inuse to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %last_inuse, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool41.not = icmp eq i32 %32, 0
  %spec.select = select i1 %tobool41.not, i32 %30, i32 %32
  tail call fastcc void @__propagate_weights(ptr noundef %iocg, i32 noundef %30, i32 noundef %spec.select, i1 noundef zeroext true, ptr noundef %now) #17
  %33 = ptrtoint ptr %ioc1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ioc1, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %35 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.not.i.i = icmp eq i32 %35, 0
  br i1 %tobool.not.i.i, label %list_add.exit.if.end.i.i141_crit_edge, label %land.rhs.i.i

list_add.exit.if.end.i.i141_crit_edge:            ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i.i141

land.rhs.i.i:                                     ; preds = %list_add.exit
  %dep_map.i.i = getelementptr inbounds %struct.ioc, ptr %34, i32 0, i32 8, i32 0, i32 0, i32 4
  %call.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i, i32 noundef -1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %cmp.not.i.i, label %do.end.i.i, label %land.rhs.i.i.if.end.i.i141_crit_edge, !prof !286

land.rhs.i.i.if.end.i.i141_crit_edge:             ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i.i141

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.44, i32 noundef 1129, i32 noundef 9, ptr noundef null) #17
  br label %if.end.i.i141

if.end.i.i141:                                    ; preds = %do.end.i.i, %land.rhs.i.i.if.end.i.i141_crit_edge, %list_add.exit.if.end.i.i141_crit_edge
  %weights_updated.i.i = getelementptr inbounds %struct.ioc, ptr %34, i32 0, i32 21
  %36 = ptrtoint ptr %weights_updated.i.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %weights_updated.i.i, align 4, !range !288
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool24.not.i.i = icmp eq i8 %37, 0
  br i1 %tobool24.not.i.i, label %if.end.i.i141.propagate_weights.exit_crit_edge, label %do.end29.i.i

if.end.i.i141.propagate_weights.exit_crit_edge:   ; preds = %if.end.i.i141
  call void @__sanitizer_cov_trace_pc() #19
  br label %propagate_weights.exit

do.end29.i.i:                                     ; preds = %if.end.i.i141
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !289
  %hweight_gen.i.i = getelementptr inbounds %struct.ioc, ptr %34, i32 0, i32 22
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %hweight_gen.i.i, i32 noundef 4) #17
  tail call void @llvm.prefetch.p0(ptr %hweight_gen.i.i, i32 1, i32 3, i32 1) #17
  %38 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %hweight_gen.i.i, ptr %hweight_gen.i.i, i32 1, ptr elementtype(i32) %hweight_gen.i.i) #17, !srcloc !290
  %39 = ptrtoint ptr %weights_updated.i.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %weights_updated.i.i, align 4
  br label %propagate_weights.exit

propagate_weights.exit:                           ; preds = %do.end29.i.i, %if.end.i.i141.propagate_weights.exit_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_iocost_iocg_activate, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@iocg_activate, %do.body46)) #17
          to label %if.end54 [label %do.body46], !srcloc !300

do.body46:                                        ; preds = %propagate_weights.exit
  %call49 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @trace_iocg_path_lock) #17
  %tobool.not.i.i142 = icmp eq ptr %iocg, null
  br i1 %tobool.not.i.i142, label %do.body46.iocg_to_blkg.exit_crit_edge, label %cond.true.i.i

do.body46.iocg_to_blkg.exit_crit_edge:            ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #19
  br label %iocg_to_blkg.exit

cond.true.i.i:                                    ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #19
  %40 = ptrtoint ptr %iocg to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %iocg, align 4
  br label %iocg_to_blkg.exit

iocg_to_blkg.exit:                                ; preds = %cond.true.i.i, %do.body46.iocg_to_blkg.exit_crit_edge
  %cond.i.i = phi ptr [ %41, %cond.true.i.i ], [ null, %do.body46.iocg_to_blkg.exit_crit_edge ]
  %blkcg = getelementptr inbounds %struct.blkcg_gq, ptr %cond.i.i, i32 0, i32 3
  %42 = ptrtoint ptr %blkcg to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %blkcg, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %43, align 8
  %kn.i = getelementptr inbounds %struct.cgroup, ptr %45, i32 0, i32 11
  %46 = ptrtoint ptr %kn.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %kn.i, align 8
  %call.i.i143 = tail call i32 @kernfs_path_from_node(ptr noundef %47, ptr noundef null, ptr noundef nonnull @trace_iocg_path, i32 noundef 1024) #17
  tail call fastcc void @trace_iocost_iocg_activate(ptr noundef %iocg, ptr noundef %now, i64 noundef %call.i129, i64 noundef %call.i127, i64 noundef %sub31)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @trace_iocg_path_lock, i32 noundef %call49) #17
  br label %if.end54

if.end54:                                         ; preds = %iocg_to_blkg.exit, %propagate_weights.exit
  %now57 = getelementptr inbounds %struct.ioc_now, ptr %now, i32 0, i32 1
  %48 = ptrtoint ptr %now57 to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %now57, align 8
  %activated_at = getelementptr inbounds %struct.ioc_gq, ptr %iocg, i32 0, i32 28
  %50 = ptrtoint ptr %activated_at to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 %49, ptr %activated_at, align 8
  %running = getelementptr inbounds %struct.ioc, ptr %1, i32 0, i32 12
  %51 = ptrtoint ptr %running to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %running, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %cmp58 = icmp eq i32 %52, 0
  br i1 %cmp58, label %if.then60, label %if.end54.succeed_unlock_crit_edge

if.end54.succeed_unlock_crit_edge:                ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #19
  br label %succeed_unlock

if.then60:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #19
  %53 = ptrtoint ptr %running to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 1, ptr %running, align 8
  %54 = ptrtoint ptr %now57 to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %now57, align 8
  %dfgv_period_at = getelementptr inbounds %struct.ioc, ptr %1, i32 0, i32 23
  %56 = ptrtoint ptr %dfgv_period_at to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 %55, ptr %dfgv_period_at, align 8
  %dfgv_period_rem = getelementptr inbounds %struct.ioc, ptr %1, i32 0, i32 24
  %57 = ptrtoint ptr %dfgv_period_rem to i32
  call void @__asan_store8_noabort(i32 %57)
  store i64 0, ptr %dfgv_period_rem, align 8
  tail call fastcc void @ioc_start_period(ptr noundef %1, ptr noundef %now)
  br label %succeed_unlock

succeed_unlock:                                   ; preds = %if.then60, %if.end54.succeed_unlock_crit_edge, %if.end10.succeed_unlock_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #17
  br label %cleanup

fail_unlock:                                      ; preds = %for.end.fail_unlock_crit_edge, %for.body.fail_unlock_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #17
  br label %cleanup

cleanup:                                          ; preds = %fail_unlock, %succeed_unlock, %if.end7.cleanup_crit_edge, %if.then5, %if.then.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %fail_unlock ], [ true, %succeed_unlock ], [ true, %if.then5 ], [ true, %if.then.cleanup_crit_edge ], [ false, %if.end7.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @adjust_inuse_and_calc_cost(ptr noundef %iocg, i64 noundef %vtime, i64 noundef %abs_cost, ptr noundef %now) unnamed_addr #0 align 64 {
entry:
  %hwi = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %ioc1 = getelementptr inbounds %struct.ioc_gq, ptr %iocg, i32 0, i32 1
  %0 = ptrtoint ptr %ioc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioc1, align 8
  %inuse = getelementptr inbounds %struct.ioc_gq, ptr %iocg, i32 0, i32 5
  %2 = ptrtoint ptr %inuse to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %inuse, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hwi) #17
  %4 = ptrtoint ptr %hwi to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %hwi, align 4, !annotation !287
  call fastcc void @current_hweight(ptr noundef %iocg, ptr noundef null, ptr noundef nonnull %hwi)
  %5 = ptrtoint ptr %hwi to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %hwi, align 4
  %conv.i = zext i32 %6 to i64
  %mul.i = shl i64 %abs_cost, 16
  %add.i = add i64 %mul.i, -1
  %sub.i = add i64 %add.i, %conv.i
  %call.i = call i64 @div64_u64(i64 noundef %sub.i, i64 noundef %conv.i) #17
  %vnow = getelementptr inbounds %struct.ioc_now, ptr %now, i32 0, i32 2
  %7 = ptrtoint ptr %vnow to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %vnow, align 8
  %9 = add i64 %call.i, %vtime
  %sub3 = sub i64 %8, %9
  %abs_vdebt = getelementptr inbounds %struct.ioc_gq, ptr %iocg, i32 0, i32 11
  %10 = ptrtoint ptr %abs_vdebt to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %abs_vdebt, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %11)
  %tobool.not = icmp eq i64 %11, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %saved_margin = getelementptr inbounds %struct.ioc_gq, ptr %iocg, i32 0, i32 7
  %12 = ptrtoint ptr %saved_margin to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %saved_margin, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %sub3, i64 %13)
  %cmp.not = icmp slt i64 %sub3, %13
  br i1 %cmp.not, label %lor.lhs.false, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %low = getelementptr inbounds %struct.ioc, ptr %1, i32 0, i32 3, i32 1
  %14 = ptrtoint ptr %low to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %low, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %sub3, i64 %15)
  %cmp4.not = icmp slt i64 %sub3, %15
  br i1 %cmp4.not, label %lor.lhs.false5, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %16 = ptrtoint ptr %inuse to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %inuse, align 8
  %active = getelementptr inbounds %struct.ioc_gq, ptr %iocg, i32 0, i32 4
  %18 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %active, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %19)
  %cmp7 = icmp eq i32 %17, %19
  br i1 %cmp7, label %lor.lhs.false5.cleanup_crit_edge, label %if.end9

lor.lhs.false5.cleanup_crit_edge:                 ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end9:                                          ; preds = %lor.lhs.false5
  %lock = getelementptr inbounds %struct.ioc, ptr %1, i32 0, i32 8
  call void @_raw_spin_lock_irq(ptr noundef %lock) #17
  %20 = ptrtoint ptr %abs_vdebt to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %abs_vdebt, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %21)
  %tobool11.not = icmp eq i64 %21, 0
  br i1 %tobool11.not, label %lor.lhs.false12, label %if.end9.if.then15_crit_edge

if.end9.if.then15_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then15

lor.lhs.false12:                                  ; preds = %if.end9
  %active_list = getelementptr inbounds %struct.ioc_gq, ptr %iocg, i32 0, i32 15
  %22 = ptrtoint ptr %active_list to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %active_list, align 4
  %cmp.i.not = icmp eq ptr %23, %active_list
  br i1 %cmp.i.not, label %lor.lhs.false12.if.then15_crit_edge, label %if.end17

lor.lhs.false12.if.then15_crit_edge:              ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then15

if.then15:                                        ; preds = %lor.lhs.false12.if.then15_crit_edge, %if.end9.if.then15_crit_edge
  call void @_raw_spin_unlock_irq(ptr noundef %lock) #17
  br label %cleanup

if.end17:                                         ; preds = %lor.lhs.false12
  %24 = ptrtoint ptr %inuse to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %inuse, align 8
  %conv = zext i32 %25 to i64
  %26 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %active, align 4
  %mul = mul i32 %27, 25
  %sub20 = add i32 %mul, 99
  %div = udiv i32 %sub20, 100
  %conv21 = zext i32 %div to i64
  br label %do.body

do.body:                                          ; preds = %land.rhs.do.body_crit_edge, %if.end17
  %new_inuse.0 = phi i64 [ %conv, %if.end17 ], [ %add22, %land.rhs.do.body_crit_edge ]
  %add22 = add i64 %new_inuse.0, %conv21
  %28 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %active, align 4
  %conv24 = trunc i64 %add22 to i32
  call fastcc void @__propagate_weights(ptr noundef %iocg, i32 noundef %29, i32 noundef %conv24, i1 noundef zeroext true, ptr noundef %now) #17
  %30 = ptrtoint ptr %ioc1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ioc1, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %32 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.not.i.i = icmp eq i32 %32, 0
  br i1 %tobool.not.i.i, label %do.body.if.end.i.i_crit_edge, label %land.rhs.i.i

do.body.if.end.i.i_crit_edge:                     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i.i

land.rhs.i.i:                                     ; preds = %do.body
  %dep_map.i.i = getelementptr inbounds %struct.ioc, ptr %31, i32 0, i32 8, i32 0, i32 0, i32 4
  %call.i.i.i = call i32 @lock_is_held_type(ptr noundef %dep_map.i.i, i32 noundef -1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %cmp.not.i.i, label %do.end.i.i, label %land.rhs.i.i.if.end.i.i_crit_edge, !prof !286

land.rhs.i.i.if.end.i.i_crit_edge:                ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i.i

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.44, i32 noundef 1129, i32 noundef 9, ptr noundef null) #17
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end.i.i, %land.rhs.i.i.if.end.i.i_crit_edge, %do.body.if.end.i.i_crit_edge
  %weights_updated.i.i = getelementptr inbounds %struct.ioc, ptr %31, i32 0, i32 21
  %33 = ptrtoint ptr %weights_updated.i.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %weights_updated.i.i, align 4, !range !288
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool24.not.i.i = icmp eq i8 %34, 0
  br i1 %tobool24.not.i.i, label %if.end.i.i.propagate_weights.exit_crit_edge, label %do.end29.i.i

if.end.i.i.propagate_weights.exit_crit_edge:      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %propagate_weights.exit

do.end29.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !289
  %hweight_gen.i.i = getelementptr inbounds %struct.ioc, ptr %31, i32 0, i32 22
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %hweight_gen.i.i, i32 noundef 4) #17
  call void @llvm.prefetch.p0(ptr %hweight_gen.i.i, i32 1, i32 3, i32 1) #17
  %35 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %hweight_gen.i.i, ptr %hweight_gen.i.i, i32 1, ptr elementtype(i32) %hweight_gen.i.i) #17, !srcloc !290
  %36 = ptrtoint ptr %weights_updated.i.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %weights_updated.i.i, align 4
  br label %propagate_weights.exit

propagate_weights.exit:                           ; preds = %do.end29.i.i, %if.end.i.i.propagate_weights.exit_crit_edge
  call fastcc void @current_hweight(ptr noundef %iocg, ptr noundef null, ptr noundef nonnull %hwi)
  %37 = ptrtoint ptr %hwi to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %hwi, align 4
  %conv.i99 = zext i32 %38 to i64
  %sub.i102 = add i64 %add.i, %conv.i99
  %call.i103 = call i64 @div64_u64(i64 noundef %sub.i102, i64 noundef %conv.i99) #17
  %39 = ptrtoint ptr %vnow to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %vnow, align 8
  %41 = add i64 %call.i103, %vtime
  %sub28 = sub i64 %40, %41
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub28)
  %cmp29 = icmp slt i64 %sub28, 0
  br i1 %cmp29, label %land.rhs, label %propagate_weights.exit.do.end_crit_edge

propagate_weights.exit.do.end_crit_edge:          ; preds = %propagate_weights.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end

land.rhs:                                         ; preds = %propagate_weights.exit
  %42 = ptrtoint ptr %inuse to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %inuse, align 8
  %44 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %active, align 4
  %cmp33.not = icmp eq i32 %43, %45
  br i1 %cmp33.not, label %land.rhs.do.end_crit_edge, label %land.rhs.do.body_crit_edge

land.rhs.do.body_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body

land.rhs.do.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end

do.end:                                           ; preds = %land.rhs.do.end_crit_edge, %propagate_weights.exit.do.end_crit_edge
  call void @_raw_spin_unlock_irq(ptr noundef %lock) #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_iocost_inuse_adjust, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@adjust_inuse_and_calc_cost, %do.body40)) #17
          to label %cleanup [label %do.body40], !srcloc !300

do.body40:                                        ; preds = %do.end
  %call44 = call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @trace_iocg_path_lock) #17
  %tobool.not.i.i104 = icmp eq ptr %iocg, null
  br i1 %tobool.not.i.i104, label %do.body40.iocg_to_blkg.exit_crit_edge, label %cond.true.i.i

do.body40.iocg_to_blkg.exit_crit_edge:            ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #19
  br label %iocg_to_blkg.exit

cond.true.i.i:                                    ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #19
  %46 = ptrtoint ptr %iocg to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %iocg, align 4
  br label %iocg_to_blkg.exit

iocg_to_blkg.exit:                                ; preds = %cond.true.i.i, %do.body40.iocg_to_blkg.exit_crit_edge
  %cond.i.i = phi ptr [ %47, %cond.true.i.i ], [ null, %do.body40.iocg_to_blkg.exit_crit_edge ]
  %blkcg = getelementptr inbounds %struct.blkcg_gq, ptr %cond.i.i, i32 0, i32 3
  %48 = ptrtoint ptr %blkcg to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %blkcg, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %49, align 8
  %kn.i = getelementptr inbounds %struct.cgroup, ptr %51, i32 0, i32 11
  %52 = ptrtoint ptr %kn.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %kn.i, align 8
  %call.i.i = call i32 @kernfs_path_from_node(ptr noundef %53, ptr noundef null, ptr noundef nonnull @trace_iocg_path, i32 noundef 1024) #17
  %54 = ptrtoint ptr %inuse to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %inuse, align 8
  %56 = ptrtoint ptr %hwi to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %hwi, align 4
  %conv53 = zext i32 %57 to i64
  call fastcc void @trace_iocost_inuse_adjust(ptr noundef %iocg, ptr noundef %now, i32 noundef %3, i32 noundef %55, i64 noundef %conv.i, i64 noundef %conv53)
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @trace_iocg_path_lock, i32 noundef %call44) #17
  br label %cleanup

cleanup:                                          ; preds = %iocg_to_blkg.exit, %do.end, %if.then15, %lor.lhs.false5.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i64 [ %call.i, %if.then15 ], [ %call.i, %entry.cleanup_crit_edge ], [ %call.i, %lor.lhs.false5.cleanup_crit_edge ], [ %call.i, %lor.lhs.false.cleanup_crit_edge ], [ %call.i, %if.end.cleanup_crit_edge ], [ %call.i103, %iocg_to_blkg.exit ], [ %call.i103, %do.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hwi) #17
  ret i64 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @iocg_commit_bio(ptr noundef %iocg, ptr nocapture noundef writeonly %bio, i64 noundef %abs_cost, i64 noundef %cost) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %bi_iocost_cost = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 14
  %0 = ptrtoint ptr %bi_iocost_cost to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %cost, ptr %bi_iocost_cost, align 8
  %vtime = getelementptr inbounds %struct.ioc_gq, ptr %iocg, i32 0, i32 9
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %vtime, i32 noundef 8) #17
  tail call void @generic_atomic64_add(i64 noundef %cost, ptr noundef %vtime) #17
  %1 = tail call i32 @llvm.read_register.i32(metadata !275) #17
  %and.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %4, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !302
  %pcpu_stat = getelementptr inbounds %struct.ioc_gq, ptr %iocg, i32 0, i32 29
  %5 = ptrtoint ptr %pcpu_stat to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pcpu_stat, align 8
  %7 = ptrtoint ptr %6 to i32
  %8 = tail call i32 @llvm.read_register.i32(metadata !275) #17
  %and.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %11
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 4
  %add = add i32 %13, %7
  %14 = inttoptr i32 %add to ptr
  %call.i.i15 = tail call zeroext i1 @__kasan_check_write(ptr noundef %14, i32 noundef 8) #17
  tail call void @generic_atomic64_add(i64 noundef %abs_cost, ptr noundef %14) #17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !303
  %15 = tail call i32 @llvm.read_register.i32(metadata !275) #17
  %and.i.i.i16 = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i.i16 to ptr
  %preempt_count.i.i17 = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %preempt_count.i.i17 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %preempt_count.i.i17, align 4
  %sub.i = add i32 %18, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i17, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @iocg_incur_debt(ptr noundef %iocg, i64 noundef %abs_cost, ptr nocapture noundef readonly %now) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end56_crit_edge, label %land.rhs

entry.if.end56_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end56

land.rhs:                                         ; preds = %entry
  %ioc = getelementptr inbounds %struct.ioc_gq, ptr %iocg, i32 0, i32 1
  %1 = ptrtoint ptr %ioc to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ioc, align 8
  %dep_map = getelementptr inbounds %struct.ioc, ptr %2, i32 0, i32 8, i32 0, i32 0, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !286

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.44, i32 noundef 1388, i32 noundef 9, ptr noundef null) #17
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %.pr = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool26.not = icmp eq i32 %.pr, 0
  br i1 %tobool26.not, label %if.end.if.end56_crit_edge, label %land.rhs27

if.end.if.end56_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end56

land.rhs27:                                       ; preds = %if.end
  %dep_map29 = getelementptr inbounds %struct.ioc_gq, ptr %iocg, i32 0, i32 26, i32 0, i32 0, i32 0, i32 4
  %call.i161 = tail call i32 @lock_is_held_type(ptr noundef %dep_map29, i32 noundef -1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i161)
  %cmp31.not = icmp eq i32 %call.i161, 0
  br i1 %cmp31.not, label %do.end50, label %land.rhs27.if.end56_crit_edge, !prof !286

land.rhs27.if.end56_crit_edge:                    ; preds = %land.rhs27
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end56

do.end50:                                         ; preds = %land.rhs27
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.44, i32 noundef 1389, i32 noundef 9, ptr noundef null) #17
  br label %if.end56

if.end56:                                         ; preds = %do.end50, %land.rhs27.if.end56_crit_edge, %if.end.if.end56_crit_edge, %entry.if.end56_crit_edge
  %active_list = getelementptr inbounds %struct.ioc_gq, ptr %iocg, i32 0, i32 15
  %3 = ptrtoint ptr %active_list to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %active_list, align 4
  %cmp.i.not = icmp eq ptr %4, %active_list
  br i1 %cmp.i.not, label %land.rhs73, label %if.end56.if.end111_crit_edge

if.end56.if.end111_crit_edge:                     ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end111

land.rhs73:                                       ; preds = %if.end56
  %.b158 = load i1, ptr @iocg_incur_debt.__already_done, align 1
  br i1 %.b158, label %land.rhs73.if.end111_crit_edge, label %if.then84, !prof !285

land.rhs73.if.end111_crit_edge:                   ; preds = %land.rhs73
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end111

if.then84:                                        ; preds = %land.rhs73
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @iocg_incur_debt.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.44, i32 noundef 1390, i32 noundef 9, ptr noundef null) #17
  br label %if.end111

if.end111:                                        ; preds = %if.then84, %land.rhs73.if.end111_crit_edge, %if.end56.if.end111_crit_edge
  %abs_vdebt = getelementptr inbounds %struct.ioc_gq, ptr %iocg, i32 0, i32 11
  %5 = ptrtoint ptr %abs_vdebt to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %abs_vdebt, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %6)
  %tobool119.not = icmp eq i64 %6, 0
  br i1 %tobool119.not, label %if.then121, label %if.end111.if.end123_crit_edge

if.end111.if.end123_crit_edge:                    ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end123

if.then121:                                       ; preds = %if.end111
  %now122 = getelementptr inbounds %struct.ioc_now, ptr %now, i32 0, i32 1
  %7 = ptrtoint ptr %now122 to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %now122, align 8
  %indebt_since = getelementptr inbounds %struct.ioc_gq, ptr %iocg, i32 0, i32 36
  %9 = ptrtoint ptr %indebt_since to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %8, ptr %indebt_since, align 8
  %active = getelementptr inbounds %struct.ioc_gq, ptr %iocg, i32 0, i32 4
  %10 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %active, align 4
  tail call fastcc void @__propagate_weights(ptr noundef %iocg, i32 noundef %11, i32 noundef 0, i1 noundef zeroext false, ptr noundef %now) #17
  %ioc.i = getelementptr inbounds %struct.ioc_gq, ptr %iocg, i32 0, i32 1
  %12 = ptrtoint ptr %ioc.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ioc.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %14 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i.i = icmp eq i32 %14, 0
  br i1 %tobool.not.i.i, label %if.then121.if.end.i.i_crit_edge, label %land.rhs.i.i

if.then121.if.end.i.i_crit_edge:                  ; preds = %if.then121
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i.i

land.rhs.i.i:                                     ; preds = %if.then121
  %dep_map.i.i = getelementptr inbounds %struct.ioc, ptr %13, i32 0, i32 8, i32 0, i32 0, i32 4
  %call.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i, i32 noundef -1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %cmp.not.i.i, label %do.end.i.i, label %land.rhs.i.i.if.end.i.i_crit_edge, !prof !286

land.rhs.i.i.if.end.i.i_crit_edge:                ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i.i

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.44, i32 noundef 1129, i32 noundef 9, ptr noundef null) #17
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end.i.i, %land.rhs.i.i.if.end.i.i_crit_edge, %if.then121.if.end.i.i_crit_edge
  %weights_updated.i.i = getelementptr inbounds %struct.ioc, ptr %13, i32 0, i32 21
  %15 = ptrtoint ptr %weights_updated.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %weights_updated.i.i, align 4, !range !288
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool24.not.i.i = icmp eq i8 %16, 0
  br i1 %tobool24.not.i.i, label %if.end.i.i.if.end123_crit_edge, label %do.end29.i.i

if.end.i.i.if.end123_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end123

do.end29.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !289
  %hweight_gen.i.i = getelementptr inbounds %struct.ioc, ptr %13, i32 0, i32 22
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %hweight_gen.i.i, i32 noundef 4) #17
  tail call void @llvm.prefetch.p0(ptr %hweight_gen.i.i, i32 1, i32 3, i32 1) #17
  %17 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %hweight_gen.i.i, ptr %hweight_gen.i.i, i32 1, ptr elementtype(i32) %hweight_gen.i.i) #17, !srcloc !290
  %18 = ptrtoint ptr %weights_updated.i.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %weights_updated.i.i, align 4
  br label %if.end123

if.end123:                                        ; preds = %do.end29.i.i, %if.end.i.i.if.end123_crit_edge, %if.end111.if.end123_crit_edge
  %19 = ptrtoint ptr %abs_vdebt to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %abs_vdebt, align 8
  %add = add i64 %20, %abs_cost
  store i64 %add, ptr %abs_vdebt, align 8
  %21 = tail call i32 @llvm.read_register.i32(metadata !275) #17
  %and.i.i.i = and i32 %21, -16384
  %22 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %24, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !306
  %pcpu_stat = getelementptr inbounds %struct.ioc_gq, ptr %iocg, i32 0, i32 29
  %25 = ptrtoint ptr %pcpu_stat to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pcpu_stat, align 8
  %27 = ptrtoint ptr %26 to i32
  %28 = tail call i32 @llvm.read_register.i32(metadata !275) #17
  %and.i = and i32 %28, -16384
  %29 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %31
  %32 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx, align 4
  %add135 = add i32 %33, %27
  %34 = inttoptr i32 %add135 to ptr
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %34, i32 noundef 8) #17
  tail call void @generic_atomic64_add(i64 noundef %abs_cost, ptr noundef %34) #17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !307
  %35 = tail call i32 @llvm.read_register.i32(metadata !275) #17
  %and.i.i.i159 = and i32 %35, -16384
  %36 = inttoptr i32 %and.i.i.i159 to ptr
  %preempt_count.i.i160 = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %preempt_count.i.i160 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %preempt_count.i.i160, align 4
  %sub.i = add i32 %38, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i160, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @iocg_kick_delay(ptr noundef %iocg, ptr nocapture noundef readonly %now) unnamed_addr #0 align 64 {
entry:
  %hwa = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %ioc1 = getelementptr inbounds %struct.ioc_gq, ptr %iocg, i32 0, i32 1
  %0 = ptrtoint ptr %ioc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioc1, align 8
  %tobool.not.i.i = icmp eq ptr %iocg, null
  br i1 %tobool.not.i.i, label %entry.iocg_to_blkg.exit_crit_edge, label %cond.true.i.i

entry.iocg_to_blkg.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %iocg_to_blkg.exit

cond.true.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %2 = ptrtoint ptr %iocg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iocg, align 4
  br label %iocg_to_blkg.exit

iocg_to_blkg.exit:                                ; preds = %cond.true.i.i, %entry.iocg_to_blkg.exit_crit_edge
  %cond.i.i = phi ptr [ %3, %cond.true.i.i ], [ null, %entry.iocg_to_blkg.exit_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hwa) #17
  %4 = ptrtoint ptr %hwa to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %hwa, align 4, !annotation !287
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %5 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %iocg_to_blkg.exit.if.end_crit_edge, label %land.rhs

iocg_to_blkg.exit.if.end_crit_edge:               ; preds = %iocg_to_blkg.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

land.rhs:                                         ; preds = %iocg_to_blkg.exit
  %dep_map = getelementptr inbounds %struct.ioc_gq, ptr %iocg, i32 0, i32 26, i32 0, i32 0, i32 0, i32 4
  %call.i117 = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i117)
  %cmp.not = icmp eq i32 %call.i117, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !286

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.44, i32 noundef 1334, i32 noundef 9, ptr noundef null) #17
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %iocg_to_blkg.exit.if.end_crit_edge
  %now26 = getelementptr inbounds %struct.ioc_now, ptr %now, i32 0, i32 1
  %delay_at = getelementptr inbounds %struct.ioc_gq, ptr %iocg, i32 0, i32 13
  %delay27 = getelementptr inbounds %struct.ioc_gq, ptr %iocg, i32 0, i32 12
  %6 = ptrtoint ptr %delay27 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %delay27, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %7)
  %tobool28.not = icmp eq i64 %7, 0
  br i1 %tobool28.not, label %if.end.if.end32_crit_edge, label %if.then29

if.end.if.end32_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end32

if.then29:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %8 = ptrtoint ptr %now26 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %now26, align 8
  %10 = ptrtoint ptr %delay_at to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %delay_at, align 8
  %sub = sub i64 %9, %11
  %call31 = tail call i64 @div64_u64(i64 noundef %sub, i64 noundef 1000000) #17
  %shr = lshr i64 %7, %call31
  br label %if.end32

if.end32:                                         ; preds = %if.then29, %if.end.if.end32_crit_edge
  %delay.0 = phi i64 [ %shr, %if.then29 ], [ 0, %if.end.if.end32_crit_edge ]
  call fastcc void @current_hweight(ptr noundef %iocg, ptr noundef nonnull %hwa, ptr noundef null)
  %vtime = getelementptr inbounds %struct.ioc_gq, ptr %iocg, i32 0, i32 9
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %vtime, i32 noundef 8) #17
  %call.i = call i64 @generic_atomic64_read(ptr noundef %vtime) #17
  %abs_vdebt = getelementptr inbounds %struct.ioc_gq, ptr %iocg, i32 0, i32 11
  %12 = ptrtoint ptr %abs_vdebt to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %abs_vdebt, align 8
  %14 = ptrtoint ptr %hwa to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %hwa, align 4
  %conv.i = zext i32 %15 to i64
  %mul.i = shl i64 %13, 16
  %add.i = add i64 %mul.i, -1
  %sub.i = add i64 %add.i, %conv.i
  %call.i118 = call i64 @div64_u64(i64 noundef %sub.i, i64 noundef %conv.i) #17
  %add = add i64 %call.i118, %call.i
  %vnow = getelementptr inbounds %struct.ioc_now, ptr %now, i32 0, i32 2
  %16 = ptrtoint ptr %vnow to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %vnow, align 8
  %sub35 = sub i64 %add, %17
  %mul = mul i64 %sub35, 100
  %period_us = getelementptr inbounds %struct.ioc, ptr %1, i32 0, i32 4
  %18 = ptrtoint ptr %period_us to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %period_us, align 8
  %conv = zext i32 %19 to i64
  %vtime_base_rate = getelementptr inbounds %struct.ioc, ptr %1, i32 0, i32 14
  %20 = ptrtoint ptr %vtime_base_rate to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %vtime_base_rate, align 8
  %mul36 = mul i64 %21, %conv
  %call37 = call i64 @div64_s64(i64 noundef %mul, i64 noundef %mul36) #17
  call void @__sanitizer_cov_trace_const_cmp8(i64 501, i64 %call37)
  %cmp38 = icmp slt i64 %call37, 501
  br i1 %cmp38, label %if.end32.if.end58_crit_edge, label %if.else41

if.end32.if.end58_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end58

if.else41:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_const_cmp8(i64 24999, i64 %call37)
  %cmp42 = icmp ugt i64 %call37, 24999
  br i1 %cmp42, label %if.else41.if.end51_crit_edge, label %if.else45

if.else41.if.end51_crit_edge:                     ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end51

if.else45:                                        ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #19
  %22 = mul nuw nsw i64 %call37, 249750
  %mul47 = add nsw i64 %22, -124875000
  %23 = call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -6110766322539866160, i64 %mul47, i32 0) #24, !srcloc !291
  %asmresult.i.i.i = extractvalue { i64, i32 } %23, 0
  %asmresult4.i.i.i = extractvalue { i64, i32 } %23, 1
  %24 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -6110766322539866160, i64 %mul47, i64 %asmresult.i.i.i, i32 %asmresult4.i.i.i) #24, !srcloc !292
  %asmresult10.i.i.i = extractvalue { i64, i32 } %24, 0
  %div158.i.i140 = lshr i64 %asmresult10.i.i.i, 14
  %add49 = add nuw nsw i64 %div158.i.i140, 250
  br label %if.end51

if.end51:                                         ; preds = %if.else45, %if.else41.if.end51_crit_edge
  %new_delay.0 = phi i64 [ %add49, %if.else45 ], [ 250000, %if.else41.if.end51_crit_edge ]
  call void @__sanitizer_cov_trace_cmp8(i64 %new_delay.0, i64 %delay.0)
  %cmp52 = icmp ugt i64 %new_delay.0, %delay.0
  br i1 %cmp52, label %if.end58.thread, label %if.end51.if.end58_crit_edge

if.end51.if.end58_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end58

if.end58.thread:                                  ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #19
  %25 = ptrtoint ptr %delay27 to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %new_delay.0, ptr %delay27, align 8
  %26 = ptrtoint ptr %now26 to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %now26, align 8
  %28 = ptrtoint ptr %delay_at to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %27, ptr %delay_at, align 8
  br label %if.then61

if.end58:                                         ; preds = %if.end51.if.end58_crit_edge, %if.end32.if.end58_crit_edge
  call void @__sanitizer_cov_trace_const_cmp8(i64 249, i64 %delay.0)
  %cmp59 = icmp ugt i64 %delay.0, 249
  br i1 %cmp59, label %if.end58.if.then61_crit_edge, label %if.else68

if.end58.if.then61_crit_edge:                     ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then61

if.then61:                                        ; preds = %if.end58.if.then61_crit_edge, %if.end58.thread
  %delay.1137 = phi i64 [ %new_delay.0, %if.end58.thread ], [ %delay.0, %if.end58.if.then61_crit_edge ]
  %indelay_since = getelementptr inbounds %struct.ioc_gq, ptr %iocg, i32 0, i32 37
  %29 = ptrtoint ptr %indelay_since to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %indelay_since, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %30)
  %tobool62.not = icmp eq i64 %30, 0
  br i1 %tobool62.not, label %if.then63, label %if.then61.if.end66_crit_edge

if.then61.if.end66_crit_edge:                     ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end66

if.then63:                                        ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #19
  %31 = ptrtoint ptr %now26 to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %now26, align 8
  %33 = ptrtoint ptr %indelay_since to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %32, ptr %indelay_since, align 8
  br label %if.end66

if.end66:                                         ; preds = %if.then63, %if.then61.if.end66_crit_edge
  %mul67 = mul i64 %delay.1137, 1000
  %use_delay.i = getelementptr inbounds %struct.blkcg_gq, ptr %cond.i.i, i32 0, i32 13
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %use_delay.i, i32 noundef 4) #17
  %34 = ptrtoint ptr %use_delay.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %use_delay.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.not.i = icmp eq i32 %35, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.end66.blkcg_set_delay.exit_crit_edge

if.end66.blkcg_set_delay.exit_crit_edge:          ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #19
  br label %blkcg_set_delay.exit

land.lhs.true.i:                                  ; preds = %if.end66
  %call.i.i8.i = call zeroext i1 @__kasan_check_write(ptr noundef %use_delay.i, i32 noundef 4) #17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !308
  call void @llvm.prefetch.p0(ptr %use_delay.i, i32 1, i32 3, i32 1) #17
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %do.body.i.i.i.i.do.body.i.i.i.i_crit_edge, %land.lhs.true.i
  %36 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %use_delay.i, ptr %use_delay.i, i32 0, i32 -1, ptr elementtype(i32) %use_delay.i) #17, !srcloc !309
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %36, 0
  %tobool.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %atomic_cmpxchg.exit.i, label %do.body.i.i.i.i.do.body.i.i.i.i_crit_edge

do.body.i.i.i.i.do.body.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body.i.i.i.i

atomic_cmpxchg.exit.i:                            ; preds = %do.body.i.i.i.i
  %asmresult3.i.i.i.i = extractvalue { i32, i32 } %36, 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !310
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult3.i.i.i.i)
  %cmp.i = icmp eq i32 %asmresult3.i.i.i.i, 0
  br i1 %cmp.i, label %if.then.i, label %atomic_cmpxchg.exit.i.blkcg_set_delay.exit_crit_edge

atomic_cmpxchg.exit.i.blkcg_set_delay.exit_crit_edge: ; preds = %atomic_cmpxchg.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %blkcg_set_delay.exit

if.then.i:                                        ; preds = %atomic_cmpxchg.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  %blkcg.i = getelementptr inbounds %struct.blkcg_gq, ptr %cond.i.i, i32 0, i32 3
  %37 = ptrtoint ptr %blkcg.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %blkcg.i, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %38, align 8
  %congestion_count.i = getelementptr inbounds %struct.cgroup, ptr %40, i32 0, i32 35
  %call.i.i9.i = call zeroext i1 @__kasan_check_write(ptr noundef %congestion_count.i, i32 noundef 4) #17
  call void @llvm.prefetch.p0(ptr %congestion_count.i, i32 1, i32 3, i32 1) #17
  %41 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %congestion_count.i, ptr %congestion_count.i, i32 1, ptr elementtype(i32) %congestion_count.i) #17, !srcloc !290
  br label %blkcg_set_delay.exit

blkcg_set_delay.exit:                             ; preds = %if.then.i, %atomic_cmpxchg.exit.i.blkcg_set_delay.exit_crit_edge, %if.end66.blkcg_set_delay.exit_crit_edge
  %delay_nsec.i = getelementptr inbounds %struct.blkcg_gq, ptr %cond.i.i, i32 0, i32 14
  %call.i.i10.i = call zeroext i1 @__kasan_check_write(ptr noundef %delay_nsec.i, i32 noundef 8) #17
  call void @generic_atomic64_set(ptr noundef %delay_nsec.i, i64 noundef %mul67) #17
  br label %cleanup

if.else68:                                        ; preds = %if.end58
  %indelay_since69 = getelementptr inbounds %struct.ioc_gq, ptr %iocg, i32 0, i32 37
  %42 = ptrtoint ptr %indelay_since69 to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %indelay_since69, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %43)
  %tobool70.not = icmp eq i64 %43, 0
  br i1 %tobool70.not, label %if.else68.if.end77_crit_edge, label %if.then71

if.else68.if.end77_crit_edge:                     ; preds = %if.else68
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end77

if.then71:                                        ; preds = %if.else68
  call void @__sanitizer_cov_trace_pc() #19
  %44 = ptrtoint ptr %now26 to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %now26, align 8
  %sub74 = sub i64 %45, %43
  %indelay_us = getelementptr inbounds %struct.ioc_gq, ptr %iocg, i32 0, i32 30, i32 3
  %46 = ptrtoint ptr %indelay_us to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %indelay_us, align 8
  %add75 = add i64 %sub74, %47
  store i64 %add75, ptr %indelay_us, align 8
  %48 = ptrtoint ptr %indelay_since69 to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 0, ptr %indelay_since69, align 8
  br label %if.end77

if.end77:                                         ; preds = %if.then71, %if.else68.if.end77_crit_edge
  %49 = ptrtoint ptr %delay27 to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 0, ptr %delay27, align 8
  %use_delay.i119 = getelementptr inbounds %struct.blkcg_gq, ptr %cond.i.i, i32 0, i32 13
  %call.i.i.i120 = call zeroext i1 @__kasan_check_read(ptr noundef %use_delay.i119, i32 noundef 4) #17
  %50 = ptrtoint ptr %use_delay.i119 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %use_delay.i119, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool.not.i121 = icmp eq i32 %51, 0
  br i1 %tobool.not.i121, label %if.end77.cleanup_crit_edge, label %land.lhs.true.i122

if.end77.cleanup_crit_edge:                       ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

land.lhs.true.i122:                               ; preds = %if.end77
  %call.i.i7.i = call zeroext i1 @__kasan_check_write(ptr noundef %use_delay.i119, i32 noundef 4) #17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !308
  call void @llvm.prefetch.p0(ptr %use_delay.i119, i32 1, i32 3, i32 1) #17
  br label %do.body.i.i.i.i125

do.body.i.i.i.i125:                               ; preds = %do.body.i.i.i.i125.do.body.i.i.i.i125_crit_edge, %land.lhs.true.i122
  %52 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %use_delay.i119, ptr %use_delay.i119, i32 %51, i32 0, ptr elementtype(i32) %use_delay.i119) #17, !srcloc !309
  %asmresult.i.i.i.i123 = extractvalue { i32, i32 } %52, 0
  %tobool.not.i.i.i.i124 = icmp eq i32 %asmresult.i.i.i.i123, 0
  br i1 %tobool.not.i.i.i.i124, label %atomic_cmpxchg.exit.i128, label %do.body.i.i.i.i125.do.body.i.i.i.i125_crit_edge

do.body.i.i.i.i125.do.body.i.i.i.i125_crit_edge:  ; preds = %do.body.i.i.i.i125
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body.i.i.i.i125

atomic_cmpxchg.exit.i128:                         ; preds = %do.body.i.i.i.i125
  %asmresult3.i.i.i.i126 = extractvalue { i32, i32 } %52, 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !310
  call void @__sanitizer_cov_trace_cmp4(i32 %asmresult3.i.i.i.i126, i32 %51)
  %cmp.i127 = icmp eq i32 %asmresult3.i.i.i.i126, %51
  br i1 %cmp.i127, label %if.then.i132, label %atomic_cmpxchg.exit.i128.cleanup_crit_edge

atomic_cmpxchg.exit.i128.cleanup_crit_edge:       ; preds = %atomic_cmpxchg.exit.i128
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then.i132:                                     ; preds = %atomic_cmpxchg.exit.i128
  call void @__sanitizer_cov_trace_pc() #19
  %blkcg.i129 = getelementptr inbounds %struct.blkcg_gq, ptr %cond.i.i, i32 0, i32 3
  %53 = ptrtoint ptr %blkcg.i129 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %blkcg.i129, align 4
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %54, align 8
  %congestion_count.i130 = getelementptr inbounds %struct.cgroup, ptr %56, i32 0, i32 35
  %call.i.i8.i131 = call zeroext i1 @__kasan_check_write(ptr noundef %congestion_count.i130, i32 noundef 4) #17
  call void @llvm.prefetch.p0(ptr %congestion_count.i130, i32 1, i32 3, i32 1) #17
  %57 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %congestion_count.i130, ptr %congestion_count.i130, i32 1, ptr elementtype(i32) %congestion_count.i130) #17, !srcloc !311
  br label %cleanup

cleanup:                                          ; preds = %if.then.i132, %atomic_cmpxchg.exit.i128.cleanup_crit_edge, %if.end77.cleanup_crit_edge, %blkcg_set_delay.exit
  %cmp59138 = phi i1 [ true, %blkcg_set_delay.exit ], [ false, %if.end77.cleanup_crit_edge ], [ false, %atomic_cmpxchg.exit.i128.cleanup_crit_edge ], [ false, %if.then.i132 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hwa) #17
  ret i1 %cmp59138
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blkcg_schedule_throttle(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iocg_wake_fn(ptr noundef %wq_entry, i32 noundef %mode, i32 noundef %flags, ptr noundef %key) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %abs_cost = getelementptr inbounds %struct.iocg_wait, ptr %wq_entry, i32 0, i32 2
  %0 = ptrtoint ptr %abs_cost to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %abs_cost, align 8
  %hw_inuse = getelementptr inbounds %struct.iocg_wake_ctx, ptr %key, i32 0, i32 1
  %2 = ptrtoint ptr %hw_inuse to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hw_inuse, align 4
  %conv.i = zext i32 %3 to i64
  %mul.i = shl i64 %1, 16
  %add.i = add i64 %mul.i, -1
  %sub.i = add i64 %add.i, %conv.i
  %call.i = tail call i64 @div64_u64(i64 noundef %sub.i, i64 noundef %conv.i) #17
  %vbudget = getelementptr inbounds %struct.iocg_wake_ctx, ptr %key, i32 0, i32 2
  %4 = ptrtoint ptr %vbudget to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %vbudget, align 8
  %sub = sub i64 %5, %call.i
  store i64 %sub, ptr %vbudget, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub)
  %cmp = icmp slt i64 %sub, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %key, align 8
  %bio = getelementptr inbounds %struct.iocg_wait, ptr %wq_entry, i32 0, i32 1
  %8 = ptrtoint ptr %bio to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bio, align 4
  %10 = ptrtoint ptr %abs_cost to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %abs_cost, align 8
  %bi_iocost_cost.i = getelementptr inbounds %struct.bio, ptr %9, i32 0, i32 14
  %12 = ptrtoint ptr %bi_iocost_cost.i to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %call.i, ptr %bi_iocost_cost.i, align 8
  %vtime.i = getelementptr inbounds %struct.ioc_gq, ptr %7, i32 0, i32 9
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %vtime.i, i32 noundef 8) #17
  tail call void @generic_atomic64_add(i64 noundef %call.i, ptr noundef %vtime.i) #17
  %13 = tail call i32 @llvm.read_register.i32(metadata !275) #17
  %and.i.i.i.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %16, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !302
  %pcpu_stat.i = getelementptr inbounds %struct.ioc_gq, ptr %7, i32 0, i32 29
  %17 = ptrtoint ptr %pcpu_stat.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pcpu_stat.i, align 8
  %19 = ptrtoint ptr %18 to i32
  %20 = tail call i32 @llvm.read_register.i32(metadata !275) #17
  %and.i.i = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %23
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.i, align 4
  %add.i17 = add i32 %25, %19
  %26 = inttoptr i32 %add.i17 to ptr
  %call.i.i15.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %26, i32 noundef 8) #17
  tail call void @generic_atomic64_add(i64 noundef %11, ptr noundef %26) #17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !303
  %27 = tail call i32 @llvm.read_register.i32(metadata !275) #17
  %and.i.i.i16.i = and i32 %27, -16384
  %28 = inttoptr i32 %and.i.i.i16.i to ptr
  %preempt_count.i.i17.i = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %preempt_count.i.i17.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %preempt_count.i.i17.i, align 4
  %sub.i.i = add i32 %30, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i17.i, align 4
  %committed = getelementptr inbounds %struct.iocg_wait, ptr %wq_entry, i32 0, i32 3
  %31 = ptrtoint ptr %committed to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %committed, align 8
  %call3 = tail call i32 @default_wake_function(ptr noundef %wq_entry, i32 noundef %mode, i32 noundef %flags, ptr noundef %key) #17
  %entry4 = getelementptr inbounds %struct.wait_queue_entry, ptr %wq_entry, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %entry4) #17
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del_init_careful.exit_crit_edge

if.end.list_del_init_careful.exit_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %list_del_init_careful.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %prev.i.i = getelementptr inbounds %struct.wait_queue_entry, ptr %wq_entry, i32 0, i32 3, i32 1
  %32 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %prev.i.i, align 4
  %34 = ptrtoint ptr %entry4 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %entry4, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %33, ptr %prev1.i.i.i, align 4
  %37 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %35, ptr %33, align 4
  br label %list_del_init_careful.exit

list_del_init_careful.exit:                       ; preds = %if.end.i.i, %if.end.list_del_init_careful.exit_crit_edge
  %prev.i = getelementptr inbounds %struct.wait_queue_entry, ptr %wq_entry, i32 0, i32 3, i32 1
  %38 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %entry4, ptr %prev.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !312
  %39 = ptrtoint ptr %entry4 to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %entry4, ptr %entry4, align 4
  br label %cleanup

cleanup:                                          ; preds = %list_del_init_careful.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %list_del_init_careful.exit ], [ -1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @iocg_kick_waitq(ptr noundef %iocg, i1 noundef zeroext %pay_debt, ptr nocapture noundef readonly %now) unnamed_addr #0 align 64 {
entry:
  %ctx = alloca %struct.iocg_wake_ctx, align 8
  %hwa = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %ioc1 = getelementptr inbounds %struct.ioc_gq, ptr %iocg, i32 0, i32 1
  %0 = ptrtoint ptr %ioc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioc1, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ctx) #17
  %2 = getelementptr inbounds %struct.iocg_wake_ctx, ptr %ctx, i32 0, i32 1
  %3 = getelementptr inbounds %struct.iocg_wake_ctx, ptr %ctx, i32 0, i32 2
  %4 = getelementptr inbounds i8, ptr %ctx, i32 8
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 -1, ptr %4, align 8
  %6 = ptrtoint ptr %ctx to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %iocg, ptr %ctx, align 8
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %2, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hwa) #17
  %8 = ptrtoint ptr %hwa to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %hwa, align 4, !annotation !287
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %9 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.ioc_gq, ptr %iocg, i32 0, i32 26, i32 0, i32 0, i32 0, i32 4
  %call.i280 = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i280)
  %cmp.not = icmp eq i32 %call.i280, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !286

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.44, i32 noundef 1471, i32 noundef 9, ptr noundef null) #17
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  call fastcc void @current_hweight(ptr noundef %iocg, ptr noundef nonnull %hwa, ptr noundef null)
  %vnow = getelementptr inbounds %struct.ioc_now, ptr %now, i32 0, i32 2
  %10 = ptrtoint ptr %vnow to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %vnow, align 8
  %vtime = getelementptr inbounds %struct.ioc_gq, ptr %iocg, i32 0, i32 9
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %vtime, i32 noundef 8) #17
  %call.i = call i64 @generic_atomic64_read(ptr noundef %vtime) #17
  %sub = sub i64 %11, %call.i
  br i1 %pay_debt, label %land.lhs.true, label %if.end.if.end82_crit_edge

if.end.if.end82_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end82

land.lhs.true:                                    ; preds = %if.end
  %abs_vdebt = getelementptr inbounds %struct.ioc_gq, ptr %iocg, i32 0, i32 11
  %12 = ptrtoint ptr %abs_vdebt to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %abs_vdebt, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %13)
  %tobool29.not = icmp ne i64 %13, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub)
  %cmp31 = icmp sgt i64 %sub, 0
  %or.cond = select i1 %tobool29.not, i1 %cmp31, i1 false
  br i1 %or.cond, label %if.then32, label %land.lhs.true.if.end82_crit_edge

land.lhs.true.if.end82_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end82

if.then32:                                        ; preds = %land.lhs.true
  %14 = ptrtoint ptr %hwa to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %hwa, align 4
  %conv.i = zext i32 %15 to i64
  %mul.i = mul i64 %sub, %conv.i
  %sub.i = add i64 %mul.i, 65535
  %call.i281 = call i64 @div64_u64(i64 noundef %sub.i, i64 noundef 65536) #17
  %16 = ptrtoint ptr %abs_vdebt to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %abs_vdebt, align 8
  %18 = call i64 @llvm.umin.i64(i64 %call.i281, i64 %17)
  %19 = ptrtoint ptr %hwa to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %hwa, align 4
  %conv.i282 = zext i32 %20 to i64
  %mul.i283 = shl i64 %18, 16
  %add.i = add i64 %mul.i283, -1
  %sub.i284 = add i64 %add.i, %conv.i282
  %call.i285 = call i64 @div64_u64(i64 noundef %sub.i284, i64 noundef %conv.i282) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %21 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool40.not = icmp eq i32 %21, 0
  br i1 %tobool40.not, label %if.then32.if.end70_crit_edge, label %land.rhs41

if.then32.if.end70_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end70

land.rhs41:                                       ; preds = %if.then32
  %dep_map43 = getelementptr inbounds %struct.ioc, ptr %1, i32 0, i32 8, i32 0, i32 0, i32 4
  %call.i286 = call i32 @lock_is_held_type(ptr noundef %dep_map43, i32 noundef -1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i286)
  %cmp45.not = icmp eq i32 %call.i286, 0
  br i1 %cmp45.not, label %do.end64, label %land.rhs41.if.end70_crit_edge, !prof !286

land.rhs41.if.end70_crit_edge:                    ; preds = %land.rhs41
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end70

do.end64:                                         ; preds = %land.rhs41
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.44, i32 noundef 1482, i32 noundef 9, ptr noundef null) #17
  br label %if.end70

if.end70:                                         ; preds = %do.end64, %land.rhs41.if.end70_crit_edge, %if.then32.if.end70_crit_edge
  %call.i.i278 = call zeroext i1 @__kasan_check_write(ptr noundef %vtime, i32 noundef 8) #17
  call void @generic_atomic64_add(i64 noundef %call.i285, ptr noundef %vtime) #17
  %done_vtime = getelementptr inbounds %struct.ioc_gq, ptr %iocg, i32 0, i32 10
  %call.i.i279 = call zeroext i1 @__kasan_check_write(ptr noundef %done_vtime, i32 noundef 8) #17
  call void @generic_atomic64_add(i64 noundef %call.i285, ptr noundef %done_vtime) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %22 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i = icmp eq i32 %22, 0
  br i1 %tobool.not.i, label %if.end70.if.end56.i_crit_edge, label %land.rhs.i

if.end70.if.end56.i_crit_edge:                    ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end56.i

land.rhs.i:                                       ; preds = %if.end70
  %23 = ptrtoint ptr %ioc1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ioc1, align 8
  %dep_map.i = getelementptr inbounds %struct.ioc, ptr %24, i32 0, i32 8, i32 0, i32 0, i32 4
  %call.i.i287 = call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i287)
  %cmp.not.i = icmp eq i32 %call.i.i287, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !286

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.44, i32 noundef 1411, i32 noundef 9, ptr noundef null) #17
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %.pr.i = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i)
  %tobool26.not.i = icmp eq i32 %.pr.i, 0
  br i1 %tobool26.not.i, label %if.end.i.if.end56.i_crit_edge, label %land.rhs27.i

if.end.i.if.end56.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end56.i

land.rhs27.i:                                     ; preds = %if.end.i
  %dep_map29.i = getelementptr inbounds %struct.ioc_gq, ptr %iocg, i32 0, i32 26, i32 0, i32 0, i32 0, i32 4
  %call.i207.i = call i32 @lock_is_held_type(ptr noundef %dep_map29.i, i32 noundef -1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i207.i)
  %cmp31.not.i = icmp eq i32 %call.i207.i, 0
  br i1 %cmp31.not.i, label %do.end50.i, label %land.rhs27.i.if.end56.i_crit_edge, !prof !286

land.rhs27.i.if.end56.i_crit_edge:                ; preds = %land.rhs27.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end56.i

do.end50.i:                                       ; preds = %land.rhs27.i
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.44, i32 noundef 1412, i32 noundef 9, ptr noundef null) #17
  br label %if.end56.i

if.end56.i:                                       ; preds = %do.end50.i, %land.rhs27.i.if.end56.i_crit_edge, %if.end.i.if.end56.i_crit_edge, %if.end70.if.end56.i_crit_edge
  %active_list.i = getelementptr inbounds %struct.ioc_gq, ptr %iocg, i32 0, i32 15
  %25 = ptrtoint ptr %active_list.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile ptr, ptr %active_list.i, align 4
  %cmp.i.not.i = icmp eq ptr %26, %active_list.i
  br i1 %cmp.i.not.i, label %land.rhs73.i, label %if.end56.i.if.end111.i_crit_edge

if.end56.i.if.end111.i_crit_edge:                 ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end111.i

land.rhs73.i:                                     ; preds = %if.end56.i
  %.b206.i = load i1, ptr @iocg_pay_debt.__already_done, align 1
  br i1 %.b206.i, label %land.rhs73.i.if.end111.i_crit_edge, label %if.then84.i, !prof !285

land.rhs73.i.if.end111.i_crit_edge:               ; preds = %land.rhs73.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end111.i

if.then84.i:                                      ; preds = %land.rhs73.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @iocg_pay_debt.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.44, i32 noundef 1415, i32 noundef 9, ptr noundef null) #17
  br label %if.end111.i

if.end111.i:                                      ; preds = %if.then84.i, %land.rhs73.i.if.end111.i_crit_edge, %if.end56.i.if.end111.i_crit_edge
  %inuse.i = getelementptr inbounds %struct.ioc_gq, ptr %iocg, i32 0, i32 5
  %27 = ptrtoint ptr %inuse.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %inuse.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %28)
  %cmp120.i = icmp ugt i32 %28, 1
  br i1 %cmp120.i, label %land.rhs127.i, label %if.end111.i.if.end165.i_crit_edge

if.end111.i.if.end165.i_crit_edge:                ; preds = %if.end111.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end165.i

land.rhs127.i:                                    ; preds = %if.end111.i
  %.b204205.i = load i1, ptr @iocg_pay_debt.__already_done.59, align 1
  br i1 %.b204205.i, label %land.rhs127.i.if.end165.i_crit_edge, label %if.then138.i, !prof !285

land.rhs127.i.if.end165.i_crit_edge:              ; preds = %land.rhs127.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end165.i

if.then138.i:                                     ; preds = %land.rhs127.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @iocg_pay_debt.__already_done.59, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.44, i32 noundef 1416, i32 noundef 9, ptr noundef null) #17
  br label %if.end165.i

if.end165.i:                                      ; preds = %if.then138.i, %land.rhs127.i.if.end165.i_crit_edge, %if.end111.i.if.end165.i_crit_edge
  %29 = ptrtoint ptr %abs_vdebt to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %abs_vdebt, align 8
  %31 = call i64 @llvm.usub.sat.i64(i64 %30, i64 %18) #17
  %32 = ptrtoint ptr %abs_vdebt to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %31, ptr %abs_vdebt, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %30, i64 %18)
  %tobool177.not.not.i = icmp ugt i64 %30, %18
  br i1 %tobool177.not.not.i, label %if.end165.i.iocg_pay_debt.exit_crit_edge, label %if.then178.i

if.end165.i.iocg_pay_debt.exit_crit_edge:         ; preds = %if.end165.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %iocg_pay_debt.exit

if.then178.i:                                     ; preds = %if.end165.i
  %now179.i = getelementptr inbounds %struct.ioc_now, ptr %now, i32 0, i32 1
  %33 = ptrtoint ptr %now179.i to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %now179.i, align 8
  %indebt_since.i = getelementptr inbounds %struct.ioc_gq, ptr %iocg, i32 0, i32 36
  %35 = ptrtoint ptr %indebt_since.i to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %indebt_since.i, align 8
  %sub180.i = sub i64 %34, %36
  %indebt_us.i = getelementptr inbounds %struct.ioc_gq, ptr %iocg, i32 0, i32 30, i32 2
  %37 = ptrtoint ptr %indebt_us.i to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %indebt_us.i, align 8
  %add.i288 = add i64 %sub180.i, %38
  store i64 %add.i288, ptr %indebt_us.i, align 8
  store i64 0, ptr %indebt_since.i, align 8
  %active.i = getelementptr inbounds %struct.ioc_gq, ptr %iocg, i32 0, i32 4
  %39 = ptrtoint ptr %active.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %active.i, align 4
  %last_inuse.i = getelementptr inbounds %struct.ioc_gq, ptr %iocg, i32 0, i32 6
  %41 = ptrtoint ptr %last_inuse.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %last_inuse.i, align 4
  call fastcc void @__propagate_weights(ptr noundef %iocg, i32 noundef %40, i32 noundef %42, i1 noundef zeroext false, ptr noundef %now) #17
  %43 = ptrtoint ptr %ioc1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ioc1, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %45 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool.not.i.i.i = icmp eq i32 %45, 0
  br i1 %tobool.not.i.i.i, label %if.then178.i.if.end.i.i.i_crit_edge, label %land.rhs.i.i.i

if.then178.i.if.end.i.i.i_crit_edge:              ; preds = %if.then178.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i.i.i

land.rhs.i.i.i:                                   ; preds = %if.then178.i
  %dep_map.i.i.i = getelementptr inbounds %struct.ioc, ptr %44, i32 0, i32 8, i32 0, i32 0, i32 4
  %call.i.i.i.i = call i32 @lock_is_held_type(ptr noundef %dep_map.i.i.i, i32 noundef -1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %cmp.not.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %do.end.i.i.i, label %land.rhs.i.i.i.if.end.i.i.i_crit_edge, !prof !286

land.rhs.i.i.i.if.end.i.i.i_crit_edge:            ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i.i.i

do.end.i.i.i:                                     ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.44, i32 noundef 1129, i32 noundef 9, ptr noundef null) #17
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %do.end.i.i.i, %land.rhs.i.i.i.if.end.i.i.i_crit_edge, %if.then178.i.if.end.i.i.i_crit_edge
  %weights_updated.i.i.i = getelementptr inbounds %struct.ioc, ptr %44, i32 0, i32 21
  %46 = ptrtoint ptr %weights_updated.i.i.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %weights_updated.i.i.i, align 4, !range !288
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool24.not.i.i.i = icmp eq i8 %47, 0
  br i1 %tobool24.not.i.i.i, label %if.end.i.i.i.iocg_pay_debt.exit_crit_edge, label %do.end29.i.i.i

if.end.i.i.i.iocg_pay_debt.exit_crit_edge:        ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %iocg_pay_debt.exit

do.end29.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !289
  %hweight_gen.i.i.i = getelementptr inbounds %struct.ioc, ptr %44, i32 0, i32 22
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %hweight_gen.i.i.i, i32 noundef 4) #17
  call void @llvm.prefetch.p0(ptr %hweight_gen.i.i.i, i32 1, i32 3, i32 1) #17
  %48 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %hweight_gen.i.i.i, ptr %hweight_gen.i.i.i, i32 1, ptr elementtype(i32) %hweight_gen.i.i.i) #17, !srcloc !290
  %49 = ptrtoint ptr %weights_updated.i.i.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 0, ptr %weights_updated.i.i.i, align 4
  br label %iocg_pay_debt.exit

iocg_pay_debt.exit:                               ; preds = %do.end29.i.i.i, %if.end.i.i.i.iocg_pay_debt.exit_crit_edge, %if.end165.i.iocg_pay_debt.exit_crit_edge
  %sub81 = sub i64 %sub, %call.i285
  br label %if.end82

if.end82:                                         ; preds = %iocg_pay_debt.exit, %land.lhs.true.if.end82_crit_edge, %if.end.if.end82_crit_edge
  %vbudget3.0 = phi i64 [ %sub81, %iocg_pay_debt.exit ], [ %sub, %land.lhs.true.if.end82_crit_edge ], [ %sub, %if.end.if.end82_crit_edge ]
  %abs_vdebt83 = getelementptr inbounds %struct.ioc_gq, ptr %iocg, i32 0, i32 11
  %50 = ptrtoint ptr %abs_vdebt83 to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %abs_vdebt83, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %51)
  %tobool84.not = icmp eq i64 %51, 0
  br i1 %tobool84.not, label %lor.lhs.false, label %if.end82.if.then86_crit_edge

if.end82.if.then86_crit_edge:                     ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then86

lor.lhs.false:                                    ; preds = %if.end82
  %delay = getelementptr inbounds %struct.ioc_gq, ptr %iocg, i32 0, i32 12
  %52 = ptrtoint ptr %delay to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %delay, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %53)
  %tobool85.not = icmp eq i64 %53, 0
  br i1 %tobool85.not, label %lor.lhs.false.if.end88_crit_edge, label %lor.lhs.false.if.then86_crit_edge

lor.lhs.false.if.then86_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then86

lor.lhs.false.if.end88_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end88

if.then86:                                        ; preds = %lor.lhs.false.if.then86_crit_edge, %if.end82.if.then86_crit_edge
  %call87 = call fastcc zeroext i1 @iocg_kick_delay(ptr noundef %iocg, ptr noundef %now)
  br label %if.end88

if.end88:                                         ; preds = %if.then86, %lor.lhs.false.if.end88_crit_edge
  %54 = ptrtoint ptr %abs_vdebt83 to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %abs_vdebt83, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %55)
  %tobool90.not = icmp eq i64 %55, 0
  br i1 %tobool90.not, label %if.end88.if.end101_crit_edge, label %if.then91

if.end88.if.end101_crit_edge:                     ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end101

if.then91:                                        ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #19
  %56 = ptrtoint ptr %hwa to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %hwa, align 4
  %conv.i289 = zext i32 %57 to i64
  %mul.i290 = shl i64 %55, 16
  %add.i291 = add i64 %mul.i290, -1
  %sub.i292 = add i64 %add.i291, %conv.i289
  %call.i293 = call i64 @div64_u64(i64 noundef %sub.i292, i64 noundef %conv.i289) #17
  %sub94 = sub i64 %vbudget3.0, %call.i293
  %58 = call i64 @llvm.smin.i64(i64 %sub94, i64 0)
  br label %if.end101

if.end101:                                        ; preds = %if.then91, %if.end88.if.end101_crit_edge
  %vbudget3.1 = phi i64 [ %58, %if.then91 ], [ %vbudget3.0, %if.end88.if.end101_crit_edge ]
  %59 = ptrtoint ptr %3 to i32
  call void @__asan_store8_noabort(i32 %59)
  store i64 %vbudget3.1, ptr %3, align 8
  call fastcc void @current_hweight(ptr noundef %iocg, ptr noundef null, ptr noundef %2)
  %waitq104 = getelementptr inbounds %struct.ioc_gq, ptr %iocg, i32 0, i32 26
  call void @__wake_up_locked_key(ptr noundef %waitq104, i32 noundef 3, ptr noundef nonnull %ctx) #17
  %head.i = getelementptr inbounds %struct.ioc_gq, ptr %iocg, i32 0, i32 26, i32 1
  %60 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile ptr, ptr %head.i, align 4
  %cmp.i.i.not = icmp eq ptr %61, %head.i
  %wait_since = getelementptr inbounds %struct.ioc_gq, ptr %iocg, i32 0, i32 35
  %62 = ptrtoint ptr %wait_since to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %wait_since, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %63)
  %tobool109.not = icmp eq i64 %63, 0
  br i1 %cmp.i.i.not, label %if.then108, label %if.end116

if.then108:                                       ; preds = %if.end101
  br i1 %tobool109.not, label %if.then108.cleanup_crit_edge, label %if.then110

if.then108.cleanup_crit_edge:                     ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then110:                                       ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #19
  %now111 = getelementptr inbounds %struct.ioc_now, ptr %now, i32 0, i32 1
  %64 = ptrtoint ptr %now111 to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %now111, align 8
  %sub113 = sub i64 %65, %63
  %wait_us = getelementptr inbounds %struct.ioc_gq, ptr %iocg, i32 0, i32 30, i32 1
  %66 = ptrtoint ptr %wait_us to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %wait_us, align 8
  %add = add i64 %sub113, %67
  store i64 %add, ptr %wait_us, align 8
  %68 = ptrtoint ptr %wait_since to i32
  call void @__asan_store8_noabort(i32 %68)
  store i64 0, ptr %wait_since, align 8
  br label %cleanup

if.end116:                                        ; preds = %if.end101
  br i1 %tobool109.not, label %if.then119, label %if.end116.if.end122_crit_edge

if.end116.if.end122_crit_edge:                    ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end122

if.then119:                                       ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #19
  %now120 = getelementptr inbounds %struct.ioc_now, ptr %now, i32 0, i32 1
  %69 = ptrtoint ptr %now120 to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %now120, align 8
  %71 = ptrtoint ptr %wait_since to i32
  call void @__asan_store8_noabort(i32 %71)
  store i64 %70, ptr %wait_since, align 8
  br label %if.end122

if.end122:                                        ; preds = %if.then119, %if.end116.if.end122_crit_edge
  %72 = ptrtoint ptr %3 to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %3, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %73)
  %cmp124 = icmp sgt i64 %73, -1
  br i1 %cmp124, label %land.rhs131, label %if.end179

land.rhs131:                                      ; preds = %if.end122
  %.b276 = load i1, ptr @iocg_kick_waitq.__already_done, align 1
  br i1 %.b276, label %land.rhs131.cleanup_crit_edge, label %if.then142, !prof !285

land.rhs131.cleanup_crit_edge:                    ; preds = %land.rhs131
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then142:                                       ; preds = %land.rhs131
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @iocg_kick_waitq.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.44, i32 noundef 1525, i32 noundef 9, ptr noundef null) #17
  br label %cleanup

if.end179:                                        ; preds = %if.end122
  %74 = ptrtoint ptr %now to i32
  call void @__asan_load8_noabort(i32 %74)
  %75 = load i64, ptr %now, align 8
  %vtime_base_rate = getelementptr inbounds %struct.ioc, ptr %1, i32 0, i32 14
  %76 = ptrtoint ptr %vtime_base_rate to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %vtime_base_rate, align 8
  %78 = xor i64 %73, -1
  %sub184 = add i64 %77, %78
  %call185 = call i64 @div64_u64(i64 noundef %sub184, i64 noundef %77) #17
  %mul = mul i64 %call185, 1000
  %add186 = add i64 %mul, %75
  %timer_slack_ns = getelementptr inbounds %struct.ioc, ptr %1, i32 0, i32 5
  %79 = ptrtoint ptr %timer_slack_ns to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %timer_slack_ns, align 4
  %conv = zext i32 %80 to i64
  %add187 = add i64 %add186, %conv
  %waitq_timer = getelementptr inbounds %struct.ioc_gq, ptr %iocg, i32 0, i32 27
  %_softexpires.i = getelementptr inbounds %struct.ioc_gq, ptr %iocg, i32 0, i32 27, i32 1
  %81 = ptrtoint ptr %_softexpires.i to i32
  call void @__asan_load8_noabort(i32 %81)
  %82 = load i64, ptr %_softexpires.i, align 8
  %state.i = getelementptr inbounds %struct.ioc_gq, ptr %iocg, i32 0, i32 27, i32 4
  %83 = ptrtoint ptr %state.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load volatile i8, ptr %state.i, align 8
  %85 = and i8 %84, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %85)
  %tobool.i.not = icmp eq i8 %85, 0
  br i1 %tobool.i.not, label %if.end179.if.end208_crit_edge, label %land.lhs.true193

if.end179.if.end208_crit_edge:                    ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end208

land.lhs.true193:                                 ; preds = %if.end179
  %sub194 = sub i64 %82, %add187
  %86 = call i64 @llvm.abs.i64(i64 %sub194, i1 false)
  call void @__sanitizer_cov_trace_cmp8(i64 %86, i64 %conv)
  %cmp205.not = icmp sgt i64 %86, %conv
  br i1 %cmp205.not, label %land.lhs.true193.if.end208_crit_edge, label %land.lhs.true193.cleanup_crit_edge

land.lhs.true193.cleanup_crit_edge:               ; preds = %land.lhs.true193
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

land.lhs.true193.if.end208_crit_edge:             ; preds = %land.lhs.true193
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end208

if.end208:                                        ; preds = %land.lhs.true193.if.end208_crit_edge, %if.end179.if.end208_crit_edge
  call void @hrtimer_start_range_ns(ptr noundef %waitq_timer, i64 noundef %add187, i64 noundef %conv, i32 noundef 0) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end208, %land.lhs.true193.cleanup_crit_edge, %if.then142, %land.rhs131.cleanup_crit_edge, %if.then110, %if.then108.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hwa) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ctx) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @io_schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_iocost_iocg_activate(ptr noundef %iocg, ptr noundef %now, i64 noundef %last_period, i64 noundef %cur_period, i64 noundef %vtime) unnamed_addr #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_iocost_iocg_activate, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_iocost_iocg_activate, %do.body)) #17
          to label %if.end48 [label %do.body], !srcloc !300

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !275) #17
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
  call void @__sanitizer_cov_trace_pc() #19
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !285

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.57, i32 noundef 108, i32 noundef 9, ptr noundef null) #17
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
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %if.end31

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end69

if.end31:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !275) #17
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !313
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_iocost_iocg_activate, i32 0, i32 7), align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.end48.critedge, label %if.end31.do.body2.i_crit_edge

if.end31.do.body2.i_crit_edge:                    ; preds = %if.end31
  br label %do.body2.i

do.body2.i:                                       ; preds = %do.body2.i.do.body2.i_crit_edge, %if.end31.do.body2.i_crit_edge
  %it_func_ptr.0.i = phi ptr [ %incdec.ptr.i, %do.body2.i.do.body2.i_crit_edge ], [ %13, %if.end31.do.body2.i_crit_edge ]
  %14 = ptrtoint ptr %it_func_ptr.0.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %it_func_ptr.0.i, align 4
  %data.i = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 0, i32 1
  %16 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data.i, align 4
  tail call void %15(ptr noundef %17, ptr noundef %iocg, ptr noundef nonnull @trace_iocg_path, ptr noundef %now, i64 noundef %last_period, i64 noundef %cur_period, i64 noundef %vtime) #17
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool9.not.i = icmp eq ptr %19, null
  br i1 %tobool9.not.i, label %cleanup, label %do.body2.i.do.body2.i_crit_edge

do.body2.i.do.body2.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body2.i

cleanup:                                          ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !314
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !314
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !275) #17
  %and.i.i.i2.c = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i2.c to ptr
  %preempt_count.i.i3.c = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i3.c to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i3.c, align 4
  %sub.i = add i32 %23, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i3.c, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.end48.sink.split, %entry
  %24 = tail call i32 @llvm.read_register.i32(metadata !275) #17
  %and.i5 = and i32 %24, -16384
  %25 = inttoptr i32 %and.i5 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %28 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %27)
  %cmp.not.i.i.i.i6 = icmp ugt i32 %28, %27
  br i1 %cmp.not.i.i.i.i6, label %if.end48.cpu_online.exit14_crit_edge, label %land.rhs.i.i.i.i8

if.end48.cpu_online.exit14_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #19
  br label %cpu_online.exit14

land.rhs.i.i.i.i8:                                ; preds = %if.end48
  %.b37.i.i.i.i7 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i7, label %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, label %if.then.i.i.i.i9, !prof !285

land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge:    ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #19
  br label %cpu_online.exit14

if.then.i.i.i.i9:                                 ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.57, i32 noundef 108, i32 noundef 9, ptr noundef null) #17
  br label %cpu_online.exit14

cpu_online.exit14:                                ; preds = %if.then.i.i.i.i9, %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, %if.end48.cpu_online.exit14_crit_edge
  %div3.i.i.i10 = lshr i32 %27, 5
  %arrayidx.i.i.i11 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i10
  %29 = ptrtoint ptr %arrayidx.i.i.i11 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %arrayidx.i.i.i11, align 4
  %and.i.i.i12 = and i32 %27, 31
  %31 = shl nuw i32 1, %and.i.i.i12
  %32 = and i32 %30, %31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.i13.not = icmp eq i32 %32, 0
  br i1 %tobool.i13.not, label %cpu_online.exit14.if.end69_crit_edge, label %if.then52

cpu_online.exit14.if.end69_crit_edge:             ; preds = %cpu_online.exit14
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit14
  %33 = tail call i32 @llvm.read_register.i32(metadata !275) #17
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !315
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_iocost_iocg_activate, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b1 = load i1, ptr @trace_iocost_iocg_activate.__warned, align 1
  br i1 %.b1, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @trace_iocost_iocg_activate.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.55, i32 noundef 67, ptr noundef nonnull @.str.56) #17
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !316
  %38 = tail call i32 @llvm.read_register.i32(metadata !275) #17
  %and.i.i.i.i15 = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i.i.i15 to ptr
  %preempt_count.i.i.i16 = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %preempt_count.i.i.i16 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %preempt_count.i.i.i16, align 4
  %sub.i.i = add i32 %41, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i16, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit14.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ioc_start_period(ptr noundef %ioc, ptr nocapture noundef readonly %now) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %running = getelementptr inbounds %struct.ioc, ptr %ioc, i32 0, i32 12
  %0 = ptrtoint ptr %running to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %running, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.not = icmp eq i32 %1, 1
  br i1 %cmp.not, label %entry.if.end27_crit_edge, label %land.rhs

entry.if.end27_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end27

land.rhs:                                         ; preds = %entry
  %.b74 = load i1, ptr @ioc_start_period.__already_done, align 1
  br i1 %.b74, label %land.rhs.if.end27_crit_edge, label %if.then, !prof !285

land.rhs.if.end27_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end27

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @ioc_start_period.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.44, i32 noundef 1048, i32 noundef 9, ptr noundef null) #17
  br label %if.end27

if.end27:                                         ; preds = %if.then, %land.rhs.if.end27_crit_edge, %entry.if.end27_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %2 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i, label %if.end27.__seqprop_spinlock_assert.exit_crit_edge, label %land.rhs.i

if.end27.__seqprop_spinlock_assert.exit_crit_edge: ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #19
  br label %__seqprop_spinlock_assert.exit

land.rhs.i:                                       ; preds = %if.end27
  %lock.i = getelementptr inbounds %struct.ioc, ptr %ioc, i32 0, i32 16, i32 1
  %3 = ptrtoint ptr %lock.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %lock.i, align 4
  %dep_map.i = getelementptr inbounds %struct.anon.3, ptr %4, i32 0, i32 1
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.__seqprop_spinlock_assert.exit_crit_edge, !prof !286

land.rhs.i.__seqprop_spinlock_assert.exit_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %__seqprop_spinlock_assert.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.58, i32 noundef 277, i32 noundef 9, ptr noundef null) #17
  br label %__seqprop_spinlock_assert.exit

__seqprop_spinlock_assert.exit:                   ; preds = %do.end.i, %land.rhs.i.__seqprop_spinlock_assert.exit_crit_edge, %if.end27.__seqprop_spinlock_assert.exit_crit_edge
  %period_seqcount = getelementptr inbounds %struct.ioc, ptr %ioc, i32 0, i32 16
  %5 = ptrtoint ptr %period_seqcount to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %period_seqcount, align 4
  %inc.i.i.i = add i32 %6, 1
  store i32 %inc.i.i.i, ptr %period_seqcount, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !317
  %dep_map.i.i = getelementptr inbounds %struct.ioc, ptr %ioc, i32 0, i32 16, i32 0, i32 1
  %7 = tail call ptr @llvm.returnaddress(i32 0) #17
  %8 = ptrtoint ptr %7 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %8) #17
  %now46 = getelementptr inbounds %struct.ioc_now, ptr %now, i32 0, i32 1
  %9 = ptrtoint ptr %now46 to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %now46, align 8
  %period_at = getelementptr inbounds %struct.ioc, ptr %ioc, i32 0, i32 17
  %11 = ptrtoint ptr %period_at to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %10, ptr %period_at, align 8
  %vnow = getelementptr inbounds %struct.ioc_now, ptr %now, i32 0, i32 2
  %12 = ptrtoint ptr %vnow to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %vnow, align 8
  %period_at_vtime = getelementptr inbounds %struct.ioc, ptr %ioc, i32 0, i32 18
  %14 = ptrtoint ptr %period_at_vtime to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %13, ptr %period_at_vtime, align 8
  tail call void @lock_release(ptr noundef %dep_map.i.i, i32 noundef %8) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !318
  %15 = ptrtoint ptr %period_seqcount to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %period_seqcount, align 4
  %inc.i.i = add i32 %16, 1
  store i32 %inc.i.i, ptr %period_seqcount, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %17 = load volatile i32, ptr @jiffies, align 128
  %period_us = getelementptr inbounds %struct.ioc, ptr %ioc, i32 0, i32 4
  %18 = ptrtoint ptr %period_us to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %period_us, align 8
  %call3.i = tail call i32 @__usecs_to_jiffies(i32 noundef %19) #17
  %add = add i32 %call3.i, %17
  %timer = getelementptr inbounds %struct.ioc, ptr %ioc, i32 0, i32 9
  %expires = getelementptr inbounds %struct.ioc, ptr %ioc, i32 0, i32 9, i32 1
  %20 = ptrtoint ptr %expires to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %add, ptr %expires, align 4
  tail call void @add_timer(ptr noundef %timer) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_add(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernfs_path_from_node(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__usecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @current_hweight(ptr nocapture noundef %iocg, ptr noundef writeonly %hw_activep, ptr noundef writeonly %hw_inusep) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %ioc1 = getelementptr inbounds %struct.ioc_gq, ptr %iocg, i32 0, i32 1
  %0 = ptrtoint ptr %ioc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioc1, align 8
  %hweight_gen = getelementptr inbounds %struct.ioc, ptr %1, i32 0, i32 22
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %hweight_gen, i32 noundef 4) #17
  %2 = ptrtoint ptr %hweight_gen to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %hweight_gen, align 4
  %hweight_gen2 = getelementptr inbounds %struct.ioc_gq, ptr %iocg, i32 0, i32 19
  %4 = ptrtoint ptr %hweight_gen2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hweight_gen2, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp = icmp eq i32 %3, %5
  br i1 %cmp, label %entry.out_crit_edge, label %do.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %out

do.end:                                           ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !319
  %level = getelementptr inbounds %struct.ioc_gq, ptr %iocg, i32 0, i32 38
  %6 = ptrtoint ptr %level to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %level, align 8
  %sub111 = add i32 %7, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub111)
  %cmp6.not112 = icmp slt i32 %sub111, 0
  br i1 %cmp6.not112, label %do.end.for.end_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %do.end.for.body_crit_edge
  %lvl.0115 = phi i32 [ %add, %cleanup.for.body_crit_edge ], [ 0, %do.end.for.body_crit_edge ]
  %hwa.0114 = phi i32 [ %hwa.1, %cleanup.for.body_crit_edge ], [ 65536, %do.end.for.body_crit_edge ]
  %hwi.0113 = phi i32 [ %hwi.1, %cleanup.for.body_crit_edge ], [ 65536, %do.end.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.ioc_gq, ptr %iocg, i32 0, i32 39, i32 %lvl.0115
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %add = add i32 %lvl.0115, 1
  %arrayidx8 = getelementptr %struct.ioc_gq, ptr %iocg, i32 0, i32 39, i32 %add
  %10 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx8, align 4
  %child_active_sum = getelementptr inbounds %struct.ioc_gq, ptr %9, i32 0, i32 16
  %12 = ptrtoint ptr %child_active_sum to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load volatile i64, ptr %child_active_sum, align 8
  %child_inuse_sum = getelementptr inbounds %struct.ioc_gq, ptr %9, i32 0, i32 17
  %14 = ptrtoint ptr %child_inuse_sum to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load volatile i64, ptr %child_inuse_sum, align 8
  %active20 = getelementptr inbounds %struct.ioc_gq, ptr %11, i32 0, i32 4
  %16 = ptrtoint ptr %active20 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %active20, align 4
  %inuse25 = getelementptr inbounds %struct.ioc_gq, ptr %11, i32 0, i32 5
  %18 = ptrtoint ptr %inuse25 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %inuse25, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %13)
  %tobool.not = icmp eq i64 %13, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %15)
  %tobool26.not = icmp eq i64 %15, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool26.not
  br i1 %or.cond, label %for.body.cleanup_crit_edge, label %if.end28

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end28:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  %conv = zext i32 %17 to i64
  %20 = tail call i64 @llvm.umax.i64(i64 %13, i64 %conv)
  %conv32 = zext i32 %hwa.0114 to i64
  %mul = mul nuw i64 %conv, %conv32
  %call34 = tail call i64 @div64_u64(i64 noundef %mul, i64 noundef %20) #17
  %conv35 = trunc i64 %call34 to i32
  %conv36 = zext i32 %19 to i64
  %21 = tail call i64 @llvm.umax.i64(i64 %15, i64 %conv36)
  %conv44 = zext i32 %hwi.0113 to i64
  %mul46 = mul nuw i64 %conv36, %conv44
  %call47 = tail call i64 @div64_u64(i64 noundef %mul46, i64 noundef %21) #17
  %conv48 = trunc i64 %call47 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %for.body.cleanup_crit_edge
  %hwi.1 = phi i32 [ %conv48, %if.end28 ], [ %hwi.0113, %for.body.cleanup_crit_edge ]
  %hwa.1 = phi i32 [ %conv35, %if.end28 ], [ %hwa.0114, %for.body.cleanup_crit_edge ]
  %22 = ptrtoint ptr %level to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %level, align 8
  %sub = add i32 %23, -1
  %cmp6.not = icmp sgt i32 %add, %sub
  br i1 %cmp6.not, label %cleanup.for.end_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %do.end.for.end_crit_edge
  %hwi.0.lcssa = phi i32 [ 65536, %do.end.for.end_crit_edge ], [ %hwi.1, %cleanup.for.end_crit_edge ]
  %hwa.0.lcssa = phi i32 [ 65536, %do.end.for.end_crit_edge ], [ %hwa.1, %cleanup.for.end_crit_edge ]
  %24 = tail call i32 @llvm.umax.i32(i32 %hwa.0.lcssa, i32 1)
  %hweight_active = getelementptr inbounds %struct.ioc_gq, ptr %iocg, i32 0, i32 20
  %25 = ptrtoint ptr %hweight_active to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %hweight_active, align 4
  %26 = tail call i32 @llvm.umax.i32(i32 %hwi.0.lcssa, i32 1)
  %hweight_inuse = getelementptr inbounds %struct.ioc_gq, ptr %iocg, i32 0, i32 21
  %27 = ptrtoint ptr %hweight_inuse to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %hweight_inuse, align 8
  %28 = ptrtoint ptr %hweight_gen2 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %3, ptr %hweight_gen2, align 8
  br label %out

out:                                              ; preds = %for.end, %entry.out_crit_edge
  %tobool69.not = icmp eq ptr %hw_activep, null
  br i1 %tobool69.not, label %out.if.end72_crit_edge, label %if.then70

out.if.end72_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end72

if.then70:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #19
  %hweight_active71 = getelementptr inbounds %struct.ioc_gq, ptr %iocg, i32 0, i32 20
  %29 = ptrtoint ptr %hweight_active71 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %hweight_active71, align 4
  %31 = ptrtoint ptr %hw_activep to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %hw_activep, align 4
  br label %if.end72

if.end72:                                         ; preds = %if.then70, %out.if.end72_crit_edge
  %tobool73.not = icmp eq ptr %hw_inusep, null
  br i1 %tobool73.not, label %if.end72.if.end76_crit_edge, label %if.then74

if.end72.if.end76_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end76

if.then74:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #19
  %hweight_inuse75 = getelementptr inbounds %struct.ioc_gq, ptr %iocg, i32 0, i32 21
  %32 = ptrtoint ptr %hweight_inuse75 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %hweight_inuse75, align 8
  %34 = ptrtoint ptr %hw_inusep to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %hw_inusep, align 4
  br label %if.end76

if.end76:                                         ; preds = %if.then74, %if.end72.if.end76_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_iocost_inuse_adjust(ptr noundef %iocg, ptr noundef %now, i32 noundef %old_inuse, i32 noundef %new_inuse, i64 noundef %old_hw_inuse, i64 noundef %new_hw_inuse) unnamed_addr #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_iocost_inuse_adjust, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_iocost_inuse_adjust, %do.body)) #17
          to label %if.end48 [label %do.body], !srcloc !300

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !275) #17
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
  call void @__sanitizer_cov_trace_pc() #19
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !285

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.57, i32 noundef 108, i32 noundef 9, ptr noundef null) #17
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
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %if.end31

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end69

if.end31:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !275) #17
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !320
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_iocost_inuse_adjust, i32 0, i32 7), align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.end48.critedge, label %if.end31.do.body2.i_crit_edge

if.end31.do.body2.i_crit_edge:                    ; preds = %if.end31
  br label %do.body2.i

do.body2.i:                                       ; preds = %do.body2.i.do.body2.i_crit_edge, %if.end31.do.body2.i_crit_edge
  %it_func_ptr.0.i = phi ptr [ %incdec.ptr.i, %do.body2.i.do.body2.i_crit_edge ], [ %13, %if.end31.do.body2.i_crit_edge ]
  %14 = ptrtoint ptr %it_func_ptr.0.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %it_func_ptr.0.i, align 4
  %data.i = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 0, i32 1
  %16 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data.i, align 4
  tail call void %15(ptr noundef %17, ptr noundef %iocg, ptr noundef nonnull @trace_iocg_path, ptr noundef %now, i32 noundef %old_inuse, i32 noundef %new_inuse, i64 noundef %old_hw_inuse, i64 noundef %new_hw_inuse) #17
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool9.not.i = icmp eq ptr %19, null
  br i1 %tobool9.not.i, label %cleanup, label %do.body2.i.do.body2.i_crit_edge

do.body2.i.do.body2.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body2.i

cleanup:                                          ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !321
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !321
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !275) #17
  %and.i.i.i2.c = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i2.c to ptr
  %preempt_count.i.i3.c = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i3.c to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i3.c, align 4
  %sub.i = add i32 %23, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i3.c, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.end48.sink.split, %entry
  %24 = tail call i32 @llvm.read_register.i32(metadata !275) #17
  %and.i5 = and i32 %24, -16384
  %25 = inttoptr i32 %and.i5 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %28 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %27)
  %cmp.not.i.i.i.i6 = icmp ugt i32 %28, %27
  br i1 %cmp.not.i.i.i.i6, label %if.end48.cpu_online.exit14_crit_edge, label %land.rhs.i.i.i.i8

if.end48.cpu_online.exit14_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #19
  br label %cpu_online.exit14

land.rhs.i.i.i.i8:                                ; preds = %if.end48
  %.b37.i.i.i.i7 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i7, label %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, label %if.then.i.i.i.i9, !prof !285

land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge:    ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #19
  br label %cpu_online.exit14

if.then.i.i.i.i9:                                 ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.57, i32 noundef 108, i32 noundef 9, ptr noundef null) #17
  br label %cpu_online.exit14

cpu_online.exit14:                                ; preds = %if.then.i.i.i.i9, %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, %if.end48.cpu_online.exit14_crit_edge
  %div3.i.i.i10 = lshr i32 %27, 5
  %arrayidx.i.i.i11 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i10
  %29 = ptrtoint ptr %arrayidx.i.i.i11 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %arrayidx.i.i.i11, align 4
  %and.i.i.i12 = and i32 %27, 31
  %31 = shl nuw i32 1, %and.i.i.i12
  %32 = and i32 %30, %31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.i13.not = icmp eq i32 %32, 0
  br i1 %tobool.i13.not, label %cpu_online.exit14.if.end69_crit_edge, label %if.then52

cpu_online.exit14.if.end69_crit_edge:             ; preds = %cpu_online.exit14
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit14
  %33 = tail call i32 @llvm.read_register.i32(metadata !275) #17
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !315
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_iocost_inuse_adjust, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b1 = load i1, ptr @trace_iocost_inuse_adjust.__warned, align 1
  br i1 %.b1, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @trace_iocost_inuse_adjust.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.55, i32 noundef 140, ptr noundef nonnull @.str.56) #17
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !316
  %38 = tail call i32 @llvm.read_register.i32(metadata !275) #17
  %and.i.i.i.i15 = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i.i.i15 to ptr
  %preempt_count.i.i.i16 = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %preempt_count.i.i.i16 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %preempt_count.i.i.i16, align 4
  %sub.i.i = add i32 %41, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i16, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit14.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_s64(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @default_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up_locked_key(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_start_range_ns(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blkcg_deactivate_policy(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ioc_check_iocgs(ptr noundef %ioc, ptr noundef %now) unnamed_addr #0 align 64 {
entry:
  %old_hwi = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %active_iocgs = getelementptr inbounds %struct.ioc, ptr %ioc, i32 0, i32 10
  %0 = ptrtoint ptr %active_iocgs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %active_iocgs, align 4
  %cmp.not166 = icmp eq ptr %1, %active_iocgs
  br i1 %cmp.not166, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %now15 = getelementptr inbounds %struct.ioc_now, ptr %now, i32 0, i32 1
  %vnow = getelementptr inbounds %struct.ioc_now, ptr %now, i32 0, i32 2
  %target = getelementptr inbounds %struct.ioc, ptr %ioc, i32 0, i32 3, i32 2
  %vtime_err = getelementptr inbounds %struct.ioc, ptr %ioc, i32 0, i32 15
  %cur_period = getelementptr inbounds %struct.ioc, ptr %ioc, i32 0, i32 19
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %nr_debtors.0170 = phi i32 [ 0, %for.body.lr.ph ], [ %nr_debtors.2, %for.inc.for.body_crit_edge ]
  %.pn.in167 = phi ptr [ %1, %for.body.lr.ph ], [ %.pn178, %for.inc.for.body_crit_edge ]
  %iocg.0174 = getelementptr i8, ptr %.pn.in167, i32 -96
  %2 = ptrtoint ptr %.pn.in167 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn178 = load ptr, ptr %.pn.in167, align 8
  %waitq = getelementptr i8, ptr %.pn.in167, i32 68
  %head.i = getelementptr i8, ptr %.pn.in167, i32 112
  %3 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %head.i, align 4
  %cmp.i.i.not = icmp eq ptr %4, %head.i
  br i1 %cmp.i.i.not, label %land.lhs.true, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

land.lhs.true:                                    ; preds = %for.body
  %abs_vdebt = getelementptr i8, ptr %.pn.in167, i32 -32
  %5 = ptrtoint ptr %abs_vdebt to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %abs_vdebt, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %6)
  %tobool7.not = icmp eq i64 %6, 0
  br i1 %tobool7.not, label %land.lhs.true8, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

land.lhs.true8:                                   ; preds = %land.lhs.true
  %delay = getelementptr i8, ptr %.pn.in167, i32 -24
  %7 = ptrtoint ptr %delay to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %delay, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %8)
  %tobool9.not = icmp eq i64 %8, 0
  br i1 %tobool9.not, label %land.lhs.true10, label %land.lhs.true8.if.end_crit_edge

land.lhs.true8.if.end_crit_edge:                  ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

land.lhs.true10:                                  ; preds = %land.lhs.true8
  %call11 = call fastcc zeroext i1 @iocg_is_idle(ptr noundef %iocg.0174)
  br i1 %call11, label %land.lhs.true10.if.end_crit_edge, label %land.lhs.true10.for.inc_crit_edge

land.lhs.true10.for.inc_crit_edge:                ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

land.lhs.true10.if.end_crit_edge:                 ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.end:                                           ; preds = %land.lhs.true10.if.end_crit_edge, %land.lhs.true8.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %for.body.if.end_crit_edge
  call void @_raw_spin_lock(ptr noundef %waitq) #17
  %wait_since = getelementptr i8, ptr %.pn.in167, i32 296
  %9 = ptrtoint ptr %wait_since to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %wait_since, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %10)
  %tobool13.not = icmp eq i64 %10, 0
  br i1 %tobool13.not, label %if.end.if.end19_crit_edge, label %if.then14

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end19

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %11 = ptrtoint ptr %now15 to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %now15, align 8
  %sub = sub i64 %12, %10
  %wait_us = getelementptr i8, ptr %.pn.in167, i32 192
  %13 = ptrtoint ptr %wait_us to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %wait_us, align 8
  %add = add i64 %sub, %14
  store i64 %add, ptr %wait_us, align 8
  %15 = load i64, ptr %now15, align 8
  %16 = ptrtoint ptr %wait_since to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %15, ptr %wait_since, align 8
  br label %if.end19

if.end19:                                         ; preds = %if.then14, %if.end.if.end19_crit_edge
  %indebt_since = getelementptr i8, ptr %.pn.in167, i32 304
  %17 = ptrtoint ptr %indebt_since to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %indebt_since, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %18)
  %tobool20.not = icmp eq i64 %18, 0
  br i1 %tobool20.not, label %if.end19.if.end29_crit_edge, label %if.then21

if.end19.if.end29_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end29

if.then21:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #19
  %19 = ptrtoint ptr %now15 to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %now15, align 8
  %sub24 = sub i64 %20, %18
  %indebt_us = getelementptr i8, ptr %.pn.in167, i32 200
  %21 = ptrtoint ptr %indebt_us to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %indebt_us, align 8
  %add26 = add i64 %sub24, %22
  store i64 %add26, ptr %indebt_us, align 8
  %23 = load i64, ptr %now15, align 8
  %24 = ptrtoint ptr %indebt_since to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %23, ptr %indebt_since, align 8
  br label %if.end29

if.end29:                                         ; preds = %if.then21, %if.end19.if.end29_crit_edge
  %indelay_since = getelementptr i8, ptr %.pn.in167, i32 312
  %25 = ptrtoint ptr %indelay_since to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %indelay_since, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %26)
  %tobool30.not = icmp eq i64 %26, 0
  br i1 %tobool30.not, label %if.end29.if.end39_crit_edge, label %if.then31

if.end29.if.end39_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end39

if.then31:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #19
  %27 = ptrtoint ptr %now15 to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %now15, align 8
  %sub34 = sub i64 %28, %26
  %indelay_us = getelementptr i8, ptr %.pn.in167, i32 208
  %29 = ptrtoint ptr %indelay_us to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %indelay_us, align 8
  %add36 = add i64 %sub34, %30
  store i64 %add36, ptr %indelay_us, align 8
  %31 = load i64, ptr %now15, align 8
  %32 = ptrtoint ptr %indelay_since to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %31, ptr %indelay_since, align 8
  br label %if.end39

if.end39:                                         ; preds = %if.then31, %if.end29.if.end39_crit_edge
  %33 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile ptr, ptr %head.i, align 4
  %cmp.i.i154.not = icmp eq ptr %34, %head.i
  br i1 %cmp.i.i154.not, label %lor.lhs.false, label %if.end39.if.then48_crit_edge

if.end39.if.then48_crit_edge:                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then48

lor.lhs.false:                                    ; preds = %if.end39
  %abs_vdebt43 = getelementptr i8, ptr %.pn.in167, i32 -32
  %35 = ptrtoint ptr %abs_vdebt43 to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %abs_vdebt43, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %36)
  %tobool44.not = icmp eq i64 %36, 0
  br i1 %tobool44.not, label %lor.lhs.false45, label %lor.lhs.false.if.then48_crit_edge

lor.lhs.false.if.then48_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then48

lor.lhs.false45:                                  ; preds = %lor.lhs.false
  %delay46 = getelementptr i8, ptr %.pn.in167, i32 -24
  %37 = ptrtoint ptr %delay46 to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %delay46, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %38)
  %tobool47.not = icmp eq i64 %38, 0
  br i1 %tobool47.not, label %if.else, label %lor.lhs.false45.if.then48_crit_edge

lor.lhs.false45.if.then48_crit_edge:              ; preds = %lor.lhs.false45
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then48

if.then48:                                        ; preds = %lor.lhs.false45.if.then48_crit_edge, %lor.lhs.false.if.then48_crit_edge, %if.end39.if.then48_crit_edge
  call fastcc void @iocg_kick_waitq(ptr noundef %iocg.0174, i1 noundef zeroext true, ptr noundef %now)
  %abs_vdebt49 = getelementptr i8, ptr %.pn.in167, i32 -32
  %39 = ptrtoint ptr %abs_vdebt49 to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %abs_vdebt49, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %40)
  %tobool50.not = icmp eq i64 %40, 0
  br i1 %tobool50.not, label %lor.lhs.false51, label %if.then48.if.then54_crit_edge

if.then48.if.then54_crit_edge:                    ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then54

lor.lhs.false51:                                  ; preds = %if.then48
  %delay52 = getelementptr i8, ptr %.pn.in167, i32 -24
  %41 = ptrtoint ptr %delay52 to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %delay52, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %42)
  %tobool53.not = icmp eq i64 %42, 0
  br i1 %tobool53.not, label %lor.lhs.false51.if.end87_crit_edge, label %lor.lhs.false51.if.then54_crit_edge

lor.lhs.false51.if.then54_crit_edge:              ; preds = %lor.lhs.false51
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then54

lor.lhs.false51.if.end87_crit_edge:               ; preds = %lor.lhs.false51
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end87

if.then54:                                        ; preds = %lor.lhs.false51.if.then54_crit_edge, %if.then48.if.then54_crit_edge
  %inc = add i32 %nr_debtors.0170, 1
  br label %if.end87

if.else:                                          ; preds = %lor.lhs.false45
  %call56 = call fastcc zeroext i1 @iocg_is_idle(ptr noundef %iocg.0174)
  br i1 %call56, label %if.then57, label %if.else.if.end87_crit_edge

if.else.if.end87_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end87

if.then57:                                        ; preds = %if.else
  %vtime58 = getelementptr i8, ptr %.pn.in167, i32 -48
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %vtime58, i32 noundef 8) #17
  %call.i = call i64 @generic_atomic64_read(ptr noundef %vtime58) #17
  %43 = ptrtoint ptr %vnow to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %vnow, align 8
  %45 = ptrtoint ptr %target to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %target, align 8
  %47 = add i64 %call.i, %46
  %sub61 = sub i64 %44, %47
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub61)
  %cmp62 = icmp sgt i64 %sub61, 0
  br i1 %cmp62, label %if.then63, label %if.then57.do.body_crit_edge

if.then57.do.body_crit_edge:                      ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body

if.then63:                                        ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old_hwi) #17
  %48 = ptrtoint ptr %old_hwi to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 -1, ptr %old_hwi, align 4, !annotation !287
  call fastcc void @current_hweight(ptr noundef %iocg.0174, ptr noundef null, ptr noundef nonnull %old_hwi)
  %49 = ptrtoint ptr %old_hwi to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %old_hwi, align 4
  %conv = zext i32 %50 to i64
  %mul = mul i64 %sub61, %conv
  %call64 = call i64 @div64_u64(i64 noundef %mul, i64 noundef 65536) #17
  %51 = ptrtoint ptr %vtime_err to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %vtime_err, align 8
  %sub65 = sub i64 %52, %call64
  store i64 %sub65, ptr %vtime_err, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old_hwi) #17
  br label %do.body

do.body:                                          ; preds = %if.then63, %if.then57.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_iocost_iocg_idle, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@ioc_check_iocgs, %do.body70)) #17
          to label %if.end82 [label %do.body70], !srcloc !300

do.body70:                                        ; preds = %do.body
  %call75 = call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @trace_iocg_path_lock) #17
  %tobool.not.i.i = icmp eq ptr %iocg.0174, null
  br i1 %tobool.not.i.i, label %do.body70.iocg_to_blkg.exit_crit_edge, label %cond.true.i.i

do.body70.iocg_to_blkg.exit_crit_edge:            ; preds = %do.body70
  call void @__sanitizer_cov_trace_pc() #19
  br label %iocg_to_blkg.exit

cond.true.i.i:                                    ; preds = %do.body70
  call void @__sanitizer_cov_trace_pc() #19
  %53 = ptrtoint ptr %iocg.0174 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %iocg.0174, align 4
  br label %iocg_to_blkg.exit

iocg_to_blkg.exit:                                ; preds = %cond.true.i.i, %do.body70.iocg_to_blkg.exit_crit_edge
  %cond.i.i = phi ptr [ %54, %cond.true.i.i ], [ null, %do.body70.iocg_to_blkg.exit_crit_edge ]
  %blkcg = getelementptr inbounds %struct.blkcg_gq, ptr %cond.i.i, i32 0, i32 3
  %55 = ptrtoint ptr %blkcg to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %blkcg, align 4
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %56, align 8
  %kn.i = getelementptr inbounds %struct.cgroup, ptr %58, i32 0, i32 11
  %59 = ptrtoint ptr %kn.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %kn.i, align 8
  %call.i.i156 = call i32 @kernfs_path_from_node(ptr noundef %60, ptr noundef null, ptr noundef nonnull @trace_iocg_path, i32 noundef 1024) #17
  %active_period = getelementptr i8, ptr %.pn.in167, i32 -8
  %call.i.i149 = call zeroext i1 @__kasan_check_read(ptr noundef %active_period, i32 noundef 8) #17
  %call.i150 = call i64 @generic_atomic64_read(ptr noundef %active_period) #17
  %call.i.i151 = call zeroext i1 @__kasan_check_read(ptr noundef %cur_period, i32 noundef 8) #17
  %call.i152 = call i64 @generic_atomic64_read(ptr noundef %cur_period) #17
  call fastcc void @trace_iocost_iocg_idle(ptr noundef %iocg.0174, ptr noundef %now, i64 noundef %call.i150, i64 noundef %call.i152, i64 noundef %call.i)
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @trace_iocg_path_lock, i32 noundef %call75) #17
  br label %if.end82

if.end82:                                         ; preds = %iocg_to_blkg.exit, %do.body
  call fastcc void @__propagate_weights(ptr noundef %iocg.0174, i32 noundef 0, i32 noundef 0, i1 noundef zeroext false, ptr noundef %now)
  %call.i.i157 = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in167) #17
  br i1 %call.i.i157, label %if.end.i.i, label %if.end82.list_del_init.exit_crit_edge

if.end82.list_del_init.exit_crit_edge:            ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #19
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #19
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in167, i32 0, i32 1
  %61 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %prev.i.i, align 4
  %63 = ptrtoint ptr %.pn.in167 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %.pn.in167, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %64, i32 0, i32 1
  %65 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %62, ptr %prev1.i.i.i, align 4
  %66 = ptrtoint ptr %62 to i32
  call void @__asan_store4_noabort(i32 %66)
  store volatile ptr %64, ptr %62, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.end82.list_del_init.exit_crit_edge
  %67 = ptrtoint ptr %.pn.in167 to i32
  call void @__asan_store4_noabort(i32 %67)
  store volatile ptr %.pn.in167, ptr %.pn.in167, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %.pn.in167, i32 0, i32 1
  %68 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %.pn.in167, ptr %prev.i3.i, align 4
  br label %if.end87

if.end87:                                         ; preds = %list_del_init.exit, %if.else.if.end87_crit_edge, %if.then54, %lor.lhs.false51.if.end87_crit_edge
  %nr_debtors.1 = phi i32 [ %inc, %if.then54 ], [ %nr_debtors.0170, %lor.lhs.false51.if.end87_crit_edge ], [ %nr_debtors.0170, %list_del_init.exit ], [ %nr_debtors.0170, %if.else.if.end87_crit_edge ]
  call void @_raw_spin_unlock(ptr noundef %waitq) #17
  br label %for.inc

for.inc:                                          ; preds = %if.end87, %land.lhs.true10.for.inc_crit_edge
  %nr_debtors.2 = phi i32 [ %nr_debtors.1, %if.end87 ], [ %nr_debtors.0170, %land.lhs.true10.for.inc_crit_edge ]
  %cmp.not = icmp eq ptr %.pn178, %active_iocgs
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %nr_debtors.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %nr_debtors.2, %for.inc.for.end_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %69 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool.not.i = icmp eq i32 %69, 0
  br i1 %tobool.not.i, label %for.end.if.end.i_crit_edge, label %land.rhs.i

for.end.if.end.i_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i

land.rhs.i:                                       ; preds = %for.end
  %dep_map.i = getelementptr inbounds %struct.ioc, ptr %ioc, i32 0, i32 8, i32 0, i32 0, i32 4
  %call.i.i158 = call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i158)
  %cmp.not.i = icmp eq i32 %call.i.i158, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !286

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.44, i32 noundef 1129, i32 noundef 9, ptr noundef null) #17
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge, %for.end.if.end.i_crit_edge
  %weights_updated.i = getelementptr inbounds %struct.ioc, ptr %ioc, i32 0, i32 21
  %70 = ptrtoint ptr %weights_updated.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %weights_updated.i, align 4, !range !288
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool24.not.i = icmp eq i8 %71, 0
  br i1 %tobool24.not.i, label %if.end.i.commit_weights.exit_crit_edge, label %do.end29.i

if.end.i.commit_weights.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %commit_weights.exit

do.end29.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !289
  %hweight_gen.i = getelementptr inbounds %struct.ioc, ptr %ioc, i32 0, i32 22
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %hweight_gen.i, i32 noundef 4) #17
  call void @llvm.prefetch.p0(ptr %hweight_gen.i, i32 1, i32 3, i32 1) #17
  %72 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %hweight_gen.i, ptr %hweight_gen.i, i32 1, ptr elementtype(i32) %hweight_gen.i) #17, !srcloc !290
  %73 = ptrtoint ptr %weights_updated.i to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 0, ptr %weights_updated.i, align 4
  br label %commit_weights.exit

commit_weights.exit:                              ; preds = %do.end29.i, %if.end.i.commit_weights.exit_crit_edge
  ret i32 %nr_debtors.0.lcssa
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_iocost_inuse_shortage(ptr noundef %iocg, ptr noundef %now, i32 noundef %old_inuse, i32 noundef %new_inuse, i64 noundef %old_hw_inuse, i64 noundef %new_hw_inuse) unnamed_addr #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_iocost_inuse_shortage, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_iocost_inuse_shortage, %do.body)) #17
          to label %if.end48 [label %do.body], !srcloc !300

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !275) #17
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
  call void @__sanitizer_cov_trace_pc() #19
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !285

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.57, i32 noundef 108, i32 noundef 9, ptr noundef null) #17
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
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %if.end31

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end69

if.end31:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !275) #17
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !322
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_iocost_inuse_shortage, i32 0, i32 7), align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.end48.critedge, label %if.end31.do.body2.i_crit_edge

if.end31.do.body2.i_crit_edge:                    ; preds = %if.end31
  br label %do.body2.i

do.body2.i:                                       ; preds = %do.body2.i.do.body2.i_crit_edge, %if.end31.do.body2.i_crit_edge
  %it_func_ptr.0.i = phi ptr [ %incdec.ptr.i, %do.body2.i.do.body2.i_crit_edge ], [ %13, %if.end31.do.body2.i_crit_edge ]
  %14 = ptrtoint ptr %it_func_ptr.0.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %it_func_ptr.0.i, align 4
  %data.i = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 0, i32 1
  %16 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data.i, align 4
  tail call void %15(ptr noundef %17, ptr noundef %iocg, ptr noundef nonnull @trace_iocg_path, ptr noundef %now, i32 noundef %old_inuse, i32 noundef %new_inuse, i64 noundef %old_hw_inuse, i64 noundef %new_hw_inuse) #17
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool9.not.i = icmp eq ptr %19, null
  br i1 %tobool9.not.i, label %cleanup, label %do.body2.i.do.body2.i_crit_edge

do.body2.i.do.body2.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body2.i

cleanup:                                          ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !323
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !323
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !275) #17
  %and.i.i.i2.c = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i2.c to ptr
  %preempt_count.i.i3.c = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i3.c to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i3.c, align 4
  %sub.i = add i32 %23, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i3.c, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.end48.sink.split, %entry
  %24 = tail call i32 @llvm.read_register.i32(metadata !275) #17
  %and.i5 = and i32 %24, -16384
  %25 = inttoptr i32 %and.i5 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %28 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %27)
  %cmp.not.i.i.i.i6 = icmp ugt i32 %28, %27
  br i1 %cmp.not.i.i.i.i6, label %if.end48.cpu_online.exit14_crit_edge, label %land.rhs.i.i.i.i8

if.end48.cpu_online.exit14_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #19
  br label %cpu_online.exit14

land.rhs.i.i.i.i8:                                ; preds = %if.end48
  %.b37.i.i.i.i7 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i7, label %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, label %if.then.i.i.i.i9, !prof !285

land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge:    ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #19
  br label %cpu_online.exit14

if.then.i.i.i.i9:                                 ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.57, i32 noundef 108, i32 noundef 9, ptr noundef null) #17
  br label %cpu_online.exit14

cpu_online.exit14:                                ; preds = %if.then.i.i.i.i9, %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, %if.end48.cpu_online.exit14_crit_edge
  %div3.i.i.i10 = lshr i32 %27, 5
  %arrayidx.i.i.i11 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i10
  %29 = ptrtoint ptr %arrayidx.i.i.i11 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %arrayidx.i.i.i11, align 4
  %and.i.i.i12 = and i32 %27, 31
  %31 = shl nuw i32 1, %and.i.i.i12
  %32 = and i32 %30, %31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.i13.not = icmp eq i32 %32, 0
  br i1 %tobool.i13.not, label %cpu_online.exit14.if.end69_crit_edge, label %if.then52

cpu_online.exit14.if.end69_crit_edge:             ; preds = %cpu_online.exit14
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit14
  %33 = tail call i32 @llvm.read_register.i32(metadata !275) #17
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !315
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_iocost_inuse_shortage, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b1 = load i1, ptr @trace_iocost_inuse_shortage.__warned, align 1
  br i1 %.b1, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @trace_iocost_inuse_shortage.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.55, i32 noundef 120, ptr noundef nonnull @.str.56) #17
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !316
  %38 = tail call i32 @llvm.read_register.i32(metadata !275) #17
  %and.i.i.i.i15 = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i.i.i15 to ptr
  %preempt_count.i.i.i16 = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %preempt_count.i.i.i16 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %preempt_count.i.i.i16, align 4
  %sub.i.i = add i32 %41, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i16, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit14.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @transfer_surpluses(ptr noundef readonly %surpluses, ptr noundef %now) unnamed_addr #0 align 64 {
entry:
  %over_hwa = alloca %struct.list_head, align 4
  %inner_walk = alloca %struct.list_head, align 4
  %hwa = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %over_hwa) #17
  %0 = getelementptr inbounds %struct.list_head, ptr %over_hwa, i32 0, i32 1
  %1 = ptrtoint ptr %over_hwa to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %over_hwa, ptr %over_hwa, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %over_hwa, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %inner_walk) #17
  %3 = getelementptr inbounds %struct.list_head, ptr %inner_walk, i32 0, i32 1
  %4 = ptrtoint ptr %inner_walk to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %inner_walk, ptr %inner_walk, align 4
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %inner_walk, ptr %3, align 4
  %6 = ptrtoint ptr %surpluses to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn868 = load ptr, ptr %surpluses, align 4
  %cmp.not869 = icmp eq ptr %.pn868, %surpluses
  br i1 %cmp.not869, label %entry.if.end55_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.if.end55_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end55

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn872 = phi ptr [ %.pn, %if.end.for.body_crit_edge ], [ %.pn868, %entry.for.body_crit_edge ]
  %after_sum.0871 = phi i32 [ %add, %if.end.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %over_sum.0870 = phi i32 [ %over_sum.1, %if.end.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %iocg.0 = getelementptr i8, ptr %.pn872, i32 -156
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hwa) #17
  %7 = ptrtoint ptr %hwa to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %hwa, align 4, !annotation !287
  call fastcc void @current_hweight(ptr noundef %iocg.0, ptr noundef nonnull %hwa, ptr noundef null)
  %hweight_after_donation = getelementptr i8, ptr %.pn872, i32 -12
  %8 = ptrtoint ptr %hweight_after_donation to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %hweight_after_donation, align 8
  %add = add i32 %9, %after_sum.0871
  %10 = ptrtoint ptr %hwa to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %hwa, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp5 = icmp ugt i32 %9, %11
  br i1 %cmp5, label %if.then, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %for.body
  %add7 = add i32 %9, %over_sum.0870
  %walk_list = getelementptr i8, ptr %.pn872, i32 -8
  %12 = ptrtoint ptr %over_hwa to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %over_hwa, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %walk_list, ptr noundef nonnull %over_hwa, ptr noundef %13) #17
  br i1 %call.i.i, label %if.end.i.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %walk_list, ptr %prev1.i.i, align 4
  %15 = ptrtoint ptr %walk_list to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %13, ptr %walk_list, align 4
  %prev3.i.i = getelementptr i8, ptr %.pn872, i32 -4
  %16 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %over_hwa, ptr %prev3.i.i, align 4
  %17 = ptrtoint ptr %over_hwa to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %walk_list, ptr %over_hwa, align 4
  br label %if.end

if.end:                                           ; preds = %if.end.i.i, %if.then.if.end_crit_edge, %for.body.if.end_crit_edge
  %over_sum.1 = phi i32 [ %over_sum.0870, %for.body.if.end_crit_edge ], [ %add7, %if.then.if.end_crit_edge ], [ %add7, %if.end.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hwa) #17
  %18 = ptrtoint ptr %.pn872 to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pn = load ptr, ptr %.pn872, align 4
  %cmp.not = icmp eq ptr %.pn, %surpluses
  br i1 %cmp.not, label %for.end, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.end:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %add)
  %cmp13 = icmp ugt i32 %add, 65535
  br i1 %cmp13, label %if.then14, label %for.end.if.end55_crit_edge

for.end.if.end55_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end55

if.then14:                                        ; preds = %for.end
  %sub = add i32 %add, -65535
  call void @__sanitizer_cov_trace_cmp4(i32 %over_sum.1, i32 %sub)
  %cmp15.not = icmp ugt i32 %over_sum.1, %sub
  br i1 %cmp15.not, label %if.then14.if.end46_crit_edge, label %land.rhs

if.then14.if.end46_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end46

land.rhs:                                         ; preds = %if.then14
  %.b845 = load i1, ptr @transfer_surpluses.__already_done, align 1
  br i1 %.b845, label %land.rhs.if.end46_crit_edge, label %if.then23, !prof !285

land.rhs.if.end46_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end46

if.then23:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @transfer_surpluses.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.44, i32 noundef 1858, i32 noundef 9, ptr noundef null) #17
  br label %if.end46

if.end46:                                         ; preds = %if.then23, %land.rhs.if.end46_crit_edge, %if.then14.if.end46_crit_edge
  %sub54 = sub i32 %over_sum.1, %sub
  br label %if.end55

if.end55:                                         ; preds = %if.end46, %for.end.if.end55_crit_edge, %entry.if.end55_crit_edge
  %over_sum.0.lcssa910 = phi i32 [ %over_sum.1, %if.end46 ], [ %over_sum.1, %for.end.if.end55_crit_edge ], [ 0, %entry.if.end55_crit_edge ]
  %over_target.0 = phi i32 [ %sub54, %if.end46 ], [ 0, %for.end.if.end55_crit_edge ], [ 0, %entry.if.end55_crit_edge ]
  %19 = ptrtoint ptr %over_hwa to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %over_hwa, align 4
  %cmp67.not875 = icmp eq ptr %20, %over_hwa
  br i1 %cmp67.not875, label %if.end55.for.cond90.preheader_crit_edge, label %for.body70.lr.ph

if.end55.for.cond90.preheader_crit_edge:          ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond90.preheader

for.body70.lr.ph:                                 ; preds = %if.end55
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %over_target.0)
  %tobool71.not = icmp eq i32 %over_target.0, 0
  %conv74 = zext i32 %over_target.0 to i64
  br label %for.body70

for.cond90.preheader:                             ; preds = %list_del_init.exit.for.cond90.preheader_crit_edge, %if.end55.for.cond90.preheader_crit_edge
  %21 = ptrtoint ptr %surpluses to i32
  call void @__asan_load4_noabort(i32 %21)
  %.pn833879 = load ptr, ptr %surpluses, align 4
  %cmp92.not880 = icmp eq ptr %.pn833879, %surpluses
  br i1 %cmp92.not880, label %for.cond90.preheader.for.end103_crit_edge, label %for.cond90.preheader.for.body96_crit_edge

for.cond90.preheader.for.body96_crit_edge:        ; preds = %for.cond90.preheader
  br label %for.body96

for.cond90.preheader.for.end103_crit_edge:        ; preds = %for.cond90.preheader
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end103

for.body70:                                       ; preds = %list_del_init.exit.for.body70_crit_edge, %for.body70.lr.ph
  %.pn832.in876 = phi ptr [ %20, %for.body70.lr.ph ], [ %.pn832878, %list_del_init.exit.for.body70_crit_edge ]
  %22 = ptrtoint ptr %.pn832.in876 to i32
  call void @__asan_load4_noabort(i32 %22)
  %.pn832878 = load ptr, ptr %.pn832.in876, align 4
  br i1 %tobool71.not, label %for.body70.if.end77_crit_edge, label %if.then72

for.body70.if.end77_crit_edge:                    ; preds = %for.body70
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end77

if.then72:                                        ; preds = %for.body70
  %hweight_after_donation73 = getelementptr i8, ptr %.pn832.in876, i32 -4
  %23 = ptrtoint ptr %hweight_after_donation73 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %hweight_after_donation73, align 8
  %conv = zext i32 %24 to i64
  %mul = mul nuw i64 %conv, %conv74
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul)
  %cmp164.i.i = icmp ult i64 %mul, 4294967296
  br i1 %cmp164.i.i, label %if.then168.i.i, label %if.else174.i.i, !prof !285

if.then168.i.i:                                   ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #19
  %conv169.i.i = trunc i64 %mul to i32
  %div172.i.i = udiv i32 %conv169.i.i, %over_sum.0.lcssa910
  br label %div_u64.exit

if.else174.i.i:                                   ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #19
  %25 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %over_sum.0.lcssa910, i64 %mul) #24, !srcloc !324
  %asmresult1.i.i.i = extractvalue { i64, i64 } %25, 1
  %extract.t866 = trunc i64 %asmresult1.i.i.i to i32
  br label %div_u64.exit

div_u64.exit:                                     ; preds = %if.else174.i.i, %if.then168.i.i
  %dividend.addr.0.i.i.off0 = phi i32 [ %div172.i.i, %if.then168.i.i ], [ %extract.t866, %if.else174.i.i ]
  %26 = ptrtoint ptr %hweight_after_donation73 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %dividend.addr.0.i.i.off0, ptr %hweight_after_donation73, align 8
  br label %if.end77

if.end77:                                         ; preds = %div_u64.exit, %for.body70.if.end77_crit_edge
  %call.i.i848 = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn832.in876) #17
  br i1 %call.i.i848, label %if.end.i.i849, label %if.end77.list_del_init.exit_crit_edge

if.end77.list_del_init.exit_crit_edge:            ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #19
  br label %list_del_init.exit

if.end.i.i849:                                    ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #19
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn832.in876, i32 0, i32 1
  %27 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %prev.i.i, align 4
  %29 = ptrtoint ptr %.pn832.in876 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %.pn832.in876, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %28, ptr %prev1.i.i.i, align 4
  %32 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %30, ptr %28, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i849, %if.end77.list_del_init.exit_crit_edge
  %33 = ptrtoint ptr %.pn832.in876 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %.pn832.in876, ptr %.pn832.in876, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %.pn832.in876, i32 0, i32 1
  %34 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %.pn832.in876, ptr %prev.i3.i, align 4
  %cmp67.not = icmp eq ptr %.pn832878, %over_hwa
  br i1 %cmp67.not, label %list_del_init.exit.for.cond90.preheader_crit_edge, label %list_del_init.exit.for.body70_crit_edge

list_del_init.exit.for.body70_crit_edge:          ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body70

list_del_init.exit.for.cond90.preheader_crit_edge: ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond90.preheader

for.body96:                                       ; preds = %iocg_build_inner_walk.exit.for.body96_crit_edge, %for.cond90.preheader.for.body96_crit_edge
  %.pn833881 = phi ptr [ %.pn833, %iocg_build_inner_walk.exit.for.body96_crit_edge ], [ %.pn833879, %for.cond90.preheader.for.body96_crit_edge ]
  %iocg.2 = getelementptr i8, ptr %.pn833881, i32 -156
  %walk_list.i = getelementptr i8, ptr %.pn833881, i32 -8
  %35 = ptrtoint ptr %walk_list.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile ptr, ptr %walk_list.i, align 4
  %cmp.i.not.i = icmp eq ptr %36, %walk_list.i
  br i1 %cmp.i.not.i, label %for.body96.if.end29.i_crit_edge, label %land.rhs.i

for.body96.if.end29.i_crit_edge:                  ; preds = %for.body96
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end29.i

land.rhs.i:                                       ; preds = %for.body96
  %.b58.i = load i1, ptr @iocg_build_inner_walk.__already_done, align 1
  br i1 %.b58.i, label %land.rhs.i.if.end29.i_crit_edge, label %if.then.i, !prof !285

land.rhs.i.if.end29.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end29.i

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @iocg_build_inner_walk.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.44, i32 noundef 1627, i32 noundef 9, ptr noundef null) #17
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.then.i, %land.rhs.i.if.end29.i_crit_edge, %for.body96.if.end29.i_crit_edge
  %level.i = getelementptr i8, ptr %.pn833881, i32 260
  %37 = ptrtoint ptr %level.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %level.i, align 8
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end29.i
  %lvl.0.in.i = phi i32 [ %38, %if.end29.i ], [ %lvl.0.i, %for.body.i.for.cond.i_crit_edge ]
  %lvl.0.i = add i32 %lvl.0.in.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %lvl.0.i)
  %cmp.i = icmp sgt i32 %lvl.0.i, -1
  br i1 %cmp.i, label %for.body.i, label %for.cond.i.for.end.i_crit_edge

for.cond.i.for.end.i_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end.i

for.body.i:                                       ; preds = %for.cond.i
  %arrayidx.i = getelementptr %struct.ioc_gq, ptr %iocg.2, i32 0, i32 39, i32 %lvl.0.i
  %39 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx.i, align 4
  %walk_list37.i = getelementptr inbounds %struct.ioc_gq, ptr %40, i32 0, i32 24
  %41 = ptrtoint ptr %walk_list37.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile ptr, ptr %walk_list37.i, align 4
  %cmp.i59.not.i = icmp eq ptr %42, %walk_list37.i
  br i1 %cmp.i59.not.i, label %for.body.i.for.cond.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end.i

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %for.cond.i.for.end.i_crit_edge
  %sub4362.i = add i32 %38, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %lvl.0.in.i, i32 %sub4362.i)
  %cmp44.not63.i = icmp sgt i32 %lvl.0.in.i, %sub4362.i
  br i1 %cmp44.not63.i, label %for.end.i.iocg_build_inner_walk.exit_crit_edge, label %for.end.i.while.body.i_crit_edge

for.end.i.while.body.i_crit_edge:                 ; preds = %for.end.i
  br label %while.body.i

for.end.i.iocg_build_inner_walk.exit_crit_edge:   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %iocg_build_inner_walk.exit

while.body.i:                                     ; preds = %list_add_tail.exit.i.while.body.i_crit_edge, %for.end.i.while.body.i_crit_edge
  %inc64.i = phi i32 [ %inc.i, %list_add_tail.exit.i.while.body.i_crit_edge ], [ %lvl.0.in.i, %for.end.i.while.body.i_crit_edge ]
  %arrayidx46.i = getelementptr %struct.ioc_gq, ptr %iocg.2, i32 0, i32 39, i32 %inc64.i
  %43 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx46.i, align 4
  %walk_list47.i = getelementptr inbounds %struct.ioc_gq, ptr %44, i32 0, i32 24
  %45 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %3, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %walk_list47.i, ptr noundef %46, ptr noundef nonnull %inner_walk) #17
  br i1 %call.i.i.i, label %if.end.i.i.i, label %while.body.i.list_add_tail.exit.i_crit_edge

while.body.i.list_add_tail.exit.i_crit_edge:      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #19
  %47 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %walk_list47.i, ptr %3, align 4
  %48 = ptrtoint ptr %walk_list47.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %inner_walk, ptr %walk_list47.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.ioc_gq, ptr %44, i32 0, i32 24, i32 1
  %49 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %46, ptr %prev3.i.i.i, align 4
  %50 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %walk_list47.i, ptr %46, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %while.body.i.list_add_tail.exit.i_crit_edge
  %inc.i = add i32 %inc64.i, 1
  %51 = ptrtoint ptr %level.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %level.i, align 8
  %sub43.i = add i32 %52, -1
  %cmp44.not.i = icmp sgt i32 %inc.i, %sub43.i
  br i1 %cmp44.not.i, label %list_add_tail.exit.i.iocg_build_inner_walk.exit_crit_edge, label %list_add_tail.exit.i.while.body.i_crit_edge

list_add_tail.exit.i.while.body.i_crit_edge:      ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body.i

list_add_tail.exit.i.iocg_build_inner_walk.exit_crit_edge: ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %iocg_build_inner_walk.exit

iocg_build_inner_walk.exit:                       ; preds = %list_add_tail.exit.i.iocg_build_inner_walk.exit_crit_edge, %for.end.i.iocg_build_inner_walk.exit_crit_edge
  %53 = ptrtoint ptr %.pn833881 to i32
  call void @__asan_load4_noabort(i32 %53)
  %.pn833 = load ptr, ptr %.pn833881, align 4
  %cmp92.not = icmp eq ptr %.pn833, %surpluses
  br i1 %cmp92.not, label %iocg_build_inner_walk.exit.for.end103_crit_edge, label %iocg_build_inner_walk.exit.for.body96_crit_edge

iocg_build_inner_walk.exit.for.body96_crit_edge:  ; preds = %iocg_build_inner_walk.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body96

iocg_build_inner_walk.exit.for.end103_crit_edge:  ; preds = %iocg_build_inner_walk.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end103

for.end103:                                       ; preds = %iocg_build_inner_walk.exit.for.end103_crit_edge, %for.cond90.preheader.for.end103_crit_edge
  %54 = ptrtoint ptr %inner_walk to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %inner_walk, align 4
  %level = getelementptr i8, ptr %55, i32 268
  %56 = ptrtoint ptr %level to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %level, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %cmp109 = icmp sgt i32 %57, 0
  br i1 %cmp109, label %land.rhs118, label %for.end103.if.end156_crit_edge

for.end103.if.end156_crit_edge:                   ; preds = %for.end103
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end156

land.rhs118:                                      ; preds = %for.end103
  %.b829844 = load i1, ptr @transfer_surpluses.__already_done.61, align 1
  br i1 %.b829844, label %land.rhs118.if.end156_crit_edge, label %if.then129, !prof !285

land.rhs118.if.end156_crit_edge:                  ; preds = %land.rhs118
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end156

if.then129:                                       ; preds = %land.rhs118
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @transfer_surpluses.__already_done.61, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.44, i32 noundef 1881, i32 noundef 9, ptr noundef null) #17
  br label %if.end156

if.end156:                                        ; preds = %if.then129, %land.rhs118.if.end156_crit_edge, %for.end103.if.end156_crit_edge
  %58 = ptrtoint ptr %inner_walk to i32
  call void @__asan_load4_noabort(i32 %58)
  %.pn834882 = load ptr, ptr %inner_walk, align 4
  %cmp170.not883 = icmp eq ptr %.pn834882, %inner_walk
  br i1 %cmp170.not883, label %if.end156.for.cond187.preheader_crit_edge, label %if.end156.for.body174_crit_edge

if.end156.for.body174_crit_edge:                  ; preds = %if.end156
  br label %for.body174

if.end156.for.cond187.preheader_crit_edge:        ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond187.preheader

for.cond187.preheader:                            ; preds = %for.body174.for.cond187.preheader_crit_edge, %if.end156.for.cond187.preheader_crit_edge
  %59 = ptrtoint ptr %surpluses to i32
  call void @__asan_load4_noabort(i32 %59)
  %.pn835885 = load ptr, ptr %surpluses, align 4
  %cmp189.not886 = icmp eq ptr %.pn835885, %surpluses
  br i1 %cmp189.not886, label %for.cond187.preheader.for.end208_crit_edge, label %for.cond187.preheader.for.body193_crit_edge

for.cond187.preheader.for.body193_crit_edge:      ; preds = %for.cond187.preheader
  br label %for.body193

for.cond187.preheader.for.end208_crit_edge:       ; preds = %for.cond187.preheader
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end208

for.body174:                                      ; preds = %for.body174.for.body174_crit_edge, %if.end156.for.body174_crit_edge
  %.pn834884 = phi ptr [ %.pn834, %for.body174.for.body174_crit_edge ], [ %.pn834882, %if.end156.for.body174_crit_edge ]
  %child_adjusted_sum = getelementptr i8, ptr %.pn834884, i32 -28
  %60 = ptrtoint ptr %child_adjusted_sum to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 0, ptr %child_adjusted_sum, align 8
  %hweight_donating = getelementptr i8, ptr %.pn834884, i32 -8
  %61 = ptrtoint ptr %hweight_donating to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 0, ptr %hweight_donating, align 4
  %hweight_after_donation175 = getelementptr i8, ptr %.pn834884, i32 -4
  %62 = ptrtoint ptr %hweight_after_donation175 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %hweight_after_donation175, align 8
  %63 = ptrtoint ptr %.pn834884 to i32
  call void @__asan_load4_noabort(i32 %63)
  %.pn834 = load ptr, ptr %.pn834884, align 4
  %cmp170.not = icmp eq ptr %.pn834, %inner_walk
  br i1 %cmp170.not, label %for.body174.for.cond187.preheader_crit_edge, label %for.body174.for.body174_crit_edge

for.body174.for.body174_crit_edge:                ; preds = %for.body174
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body174

for.body174.for.cond187.preheader_crit_edge:      ; preds = %for.body174
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond187.preheader

for.body193:                                      ; preds = %for.body193.for.body193_crit_edge, %for.cond187.preheader.for.body193_crit_edge
  %.pn835887 = phi ptr [ %.pn835, %for.body193.for.body193_crit_edge ], [ %.pn835885, %for.cond187.preheader.for.body193_crit_edge ]
  %ancestors = getelementptr i8, ptr %.pn835887, i32 264
  %level194 = getelementptr i8, ptr %.pn835887, i32 260
  %64 = ptrtoint ptr %level194 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %level194, align 8
  %sub195 = add i32 %65, -1
  %arrayidx = getelementptr [0 x ptr], ptr %ancestors, i32 0, i32 %sub195
  %66 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %arrayidx, align 4
  %hweight_donating196 = getelementptr i8, ptr %.pn835887, i32 -16
  %68 = ptrtoint ptr %hweight_donating196 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %hweight_donating196, align 4
  %hweight_donating197 = getelementptr inbounds %struct.ioc_gq, ptr %67, i32 0, i32 22
  %70 = ptrtoint ptr %hweight_donating197 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %hweight_donating197, align 4
  %add198 = add i32 %71, %69
  store i32 %add198, ptr %hweight_donating197, align 4
  %hweight_after_donation199 = getelementptr i8, ptr %.pn835887, i32 -12
  %72 = ptrtoint ptr %hweight_after_donation199 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %hweight_after_donation199, align 8
  %hweight_after_donation200 = getelementptr inbounds %struct.ioc_gq, ptr %67, i32 0, i32 23
  %74 = ptrtoint ptr %hweight_after_donation200 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %hweight_after_donation200, align 8
  %add201 = add i32 %75, %73
  store i32 %add201, ptr %hweight_after_donation200, align 8
  %76 = ptrtoint ptr %.pn835887 to i32
  call void @__asan_load4_noabort(i32 %76)
  %.pn835 = load ptr, ptr %.pn835887, align 4
  %cmp189.not = icmp eq ptr %.pn835, %surpluses
  br i1 %cmp189.not, label %for.body193.for.end208_crit_edge, label %for.body193.for.body193_crit_edge

for.body193.for.body193_crit_edge:                ; preds = %for.body193
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body193

for.body193.for.end208_crit_edge:                 ; preds = %for.body193
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end208

for.end208:                                       ; preds = %for.body193.for.end208_crit_edge, %for.cond187.preheader.for.end208_crit_edge
  %77 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %3, align 4
  %cmp215.not888 = icmp eq ptr %78, %inner_walk
  br i1 %cmp215.not888, label %for.end208.for.cond247.preheader_crit_edge, label %for.end208.for.body219_crit_edge

for.end208.for.body219_crit_edge:                 ; preds = %for.end208
  br label %for.body219

for.end208.for.cond247.preheader_crit_edge:       ; preds = %for.end208
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond247.preheader

for.cond247.preheader:                            ; preds = %for.inc236.for.cond247.preheader_crit_edge, %for.end208.for.cond247.preheader_crit_edge
  %79 = ptrtoint ptr %inner_walk to i32
  call void @__asan_load4_noabort(i32 %79)
  %.pn837891 = load ptr, ptr %inner_walk, align 4
  %cmp249.not893 = icmp eq ptr %.pn837891, %inner_walk
  br i1 %cmp249.not893, label %for.cond247.preheader.for.end375_crit_edge, label %for.cond247.preheader.for.body253_crit_edge

for.cond247.preheader.for.body253_crit_edge:      ; preds = %for.cond247.preheader
  br label %for.body253

for.cond247.preheader.for.end375_crit_edge:       ; preds = %for.cond247.preheader
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end375

for.body219:                                      ; preds = %for.inc236.for.body219_crit_edge, %for.end208.for.body219_crit_edge
  %.pn836889 = phi ptr [ %93, %for.inc236.for.body219_crit_edge ], [ %78, %for.end208.for.body219_crit_edge ]
  %level220 = getelementptr i8, ptr %.pn836889, i32 268
  %80 = ptrtoint ptr %level220 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %level220, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %cmp221 = icmp sgt i32 %81, 0
  br i1 %cmp221, label %if.then223, label %for.body219.for.inc236_crit_edge

for.body219.for.inc236_crit_edge:                 ; preds = %for.body219
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc236

if.then223:                                       ; preds = %for.body219
  call void @__sanitizer_cov_trace_pc() #19
  %ancestors225 = getelementptr i8, ptr %.pn836889, i32 272
  %sub227 = add nsw i32 %81, -1
  %arrayidx228 = getelementptr [0 x ptr], ptr %ancestors225, i32 0, i32 %sub227
  %82 = ptrtoint ptr %arrayidx228 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %arrayidx228, align 4
  %hweight_donating229 = getelementptr i8, ptr %.pn836889, i32 -8
  %84 = ptrtoint ptr %hweight_donating229 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %hweight_donating229, align 4
  %hweight_donating230 = getelementptr inbounds %struct.ioc_gq, ptr %83, i32 0, i32 22
  %86 = ptrtoint ptr %hweight_donating230 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %hweight_donating230, align 4
  %add231 = add i32 %87, %85
  store i32 %add231, ptr %hweight_donating230, align 4
  %hweight_after_donation232 = getelementptr i8, ptr %.pn836889, i32 -4
  %88 = ptrtoint ptr %hweight_after_donation232 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %hweight_after_donation232, align 8
  %hweight_after_donation233 = getelementptr inbounds %struct.ioc_gq, ptr %83, i32 0, i32 23
  %90 = ptrtoint ptr %hweight_after_donation233 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %hweight_after_donation233, align 8
  %add234 = add i32 %91, %89
  store i32 %add234, ptr %hweight_after_donation233, align 8
  br label %for.inc236

for.inc236:                                       ; preds = %if.then223, %for.body219.for.inc236_crit_edge
  %prev239 = getelementptr inbounds %struct.list_head, ptr %.pn836889, i32 0, i32 1
  %92 = ptrtoint ptr %prev239 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %prev239, align 4
  %cmp215.not = icmp eq ptr %93, %inner_walk
  br i1 %cmp215.not, label %for.inc236.for.cond247.preheader_crit_edge, label %for.inc236.for.body219_crit_edge

for.inc236.for.body219_crit_edge:                 ; preds = %for.inc236
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body219

for.inc236.for.cond247.preheader_crit_edge:       ; preds = %for.inc236
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond247.preheader

for.body253:                                      ; preds = %for.inc369.for.body253_crit_edge, %for.cond247.preheader.for.body253_crit_edge
  %.pn837894 = phi ptr [ %.pn837, %for.inc369.for.body253_crit_edge ], [ %.pn837891, %for.cond247.preheader.for.body253_crit_edge ]
  %iocg.6895 = getelementptr i8, ptr %.pn837894, i32 -148
  %level254 = getelementptr i8, ptr %.pn837894, i32 268
  %94 = ptrtoint ptr %level254 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %level254, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %tobool255.not = icmp eq i32 %95, 0
  br i1 %tobool255.not, label %for.body253.if.end271_crit_edge, label %if.then256

for.body253.if.end271_crit_edge:                  ; preds = %for.body253
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end271

if.then256:                                       ; preds = %for.body253
  call void @__sanitizer_cov_trace_pc() #19
  %ancestors258 = getelementptr i8, ptr %.pn837894, i32 272
  %sub260 = add i32 %95, -1
  %arrayidx261 = getelementptr [0 x ptr], ptr %ancestors258, i32 0, i32 %sub260
  %96 = ptrtoint ptr %arrayidx261 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %arrayidx261, align 4
  %child_active_sum = getelementptr inbounds %struct.ioc_gq, ptr %97, i32 0, i32 16
  %98 = ptrtoint ptr %child_active_sum to i32
  call void @__asan_load8_noabort(i32 %98)
  %99 = load i64, ptr %child_active_sum, align 8
  %hweight_active = getelementptr inbounds %struct.ioc_gq, ptr %97, i32 0, i32 20
  %100 = ptrtoint ptr %hweight_active to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %hweight_active, align 4
  %conv263 = zext i32 %101 to i64
  %active = getelementptr i8, ptr %.pn837894, i32 -128
  %102 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %active, align 4
  %conv264 = zext i32 %103 to i64
  %mul265 = mul nuw i64 %conv264, %conv263
  %add266 = add i64 %99, -1
  %sub267 = add i64 %add266, %mul265
  %call268 = call i64 @div64_u64(i64 noundef %sub267, i64 noundef %99) #17
  %conv269 = trunc i64 %call268 to i32
  %hweight_active270 = getelementptr i8, ptr %.pn837894, i32 -16
  %104 = ptrtoint ptr %hweight_active270 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %conv269, ptr %hweight_active270, align 4
  br label %if.end271

if.end271:                                        ; preds = %if.then256, %for.body253.if.end271_crit_edge
  %hweight_donating272 = getelementptr i8, ptr %.pn837894, i32 -8
  %105 = ptrtoint ptr %hweight_donating272 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %hweight_donating272, align 4
  %hweight_active273 = getelementptr i8, ptr %.pn837894, i32 -16
  %107 = ptrtoint ptr %hweight_active273 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %hweight_active273, align 4
  %109 = call i32 @llvm.umin.i32(i32 %106, i32 %108)
  %110 = ptrtoint ptr %hweight_donating272 to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %109, ptr %hweight_donating272, align 4
  %hweight_after_donation278 = getelementptr i8, ptr %.pn837894, i32 -4
  %111 = ptrtoint ptr %hweight_after_donation278 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %hweight_after_donation278, align 8
  %sub280 = add i32 %109, -1
  %113 = call i32 @llvm.umin.i32(i32 %112, i32 %sub280)
  %114 = ptrtoint ptr %hweight_after_donation278 to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %113, ptr %hweight_after_donation278, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %108)
  %cmp291 = icmp ult i32 %108, 2
  br i1 %cmp291, label %if.end271.land.rhs306_crit_edge, label %lor.lhs.false

if.end271.land.rhs306_crit_edge:                  ; preds = %if.end271
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs306

lor.lhs.false:                                    ; preds = %if.end271
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %109)
  %cmp294 = icmp ult i32 %109, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %113)
  %cmp297 = icmp eq i32 %113, 0
  %spec.select = select i1 %cmp294, i1 true, i1 %cmp297
  br i1 %spec.select, label %lor.lhs.false.land.rhs306_crit_edge, label %lor.lhs.false.for.inc369_crit_edge

lor.lhs.false.for.inc369_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc369

lor.lhs.false.land.rhs306_crit_edge:              ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs306

land.rhs306:                                      ; preds = %lor.lhs.false.land.rhs306_crit_edge, %if.end271.land.rhs306_crit_edge
  %.b830843 = load i1, ptr @transfer_surpluses.__already_done.62, align 1
  br i1 %.b830843, label %land.rhs306.do.end356_crit_edge, label %if.then317, !prof !285

land.rhs306.do.end356_crit_edge:                  ; preds = %land.rhs306
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end356

if.then317:                                       ; preds = %land.rhs306
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @transfer_surpluses.__already_done.62, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.44, i32 noundef 1930, i32 noundef 9, ptr noundef null) #17
  br label %do.end356

do.end356:                                        ; preds = %if.then317, %land.rhs306.do.end356_crit_edge
  %call358 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63) #26
  %tobool.not.i.i851 = icmp eq ptr %iocg.6895, null
  br i1 %tobool.not.i.i851, label %do.end356.iocg_to_blkg.exit_crit_edge, label %cond.true.i.i

do.end356.iocg_to_blkg.exit_crit_edge:            ; preds = %do.end356
  call void @__sanitizer_cov_trace_pc() #19
  br label %iocg_to_blkg.exit

cond.true.i.i:                                    ; preds = %do.end356
  call void @__sanitizer_cov_trace_pc() #19
  %115 = ptrtoint ptr %iocg.6895 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %iocg.6895, align 4
  br label %iocg_to_blkg.exit

iocg_to_blkg.exit:                                ; preds = %cond.true.i.i, %do.end356.iocg_to_blkg.exit_crit_edge
  %cond.i.i = phi ptr [ %116, %cond.true.i.i ], [ null, %do.end356.iocg_to_blkg.exit_crit_edge ]
  %blkcg = getelementptr inbounds %struct.blkcg_gq, ptr %cond.i.i, i32 0, i32 3
  %117 = ptrtoint ptr %blkcg to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %blkcg, align 4
  %119 = ptrtoint ptr %118 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %118, align 8
  %kn.i = getelementptr inbounds %struct.cgroup, ptr %120, i32 0, i32 11
  %121 = ptrtoint ptr %kn.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %kn.i, align 8
  call void @pr_cont_kernfs_path(ptr noundef %122) #17
  %123 = ptrtoint ptr %hweight_active273 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %hweight_active273, align 4
  %125 = ptrtoint ptr %hweight_donating272 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %hweight_donating272, align 4
  %127 = ptrtoint ptr %hweight_after_donation278 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %hweight_after_donation278, align 8
  %call367 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, i32 noundef %124, i32 noundef %126, i32 noundef %128) #26
  br label %for.inc369

for.inc369:                                       ; preds = %iocg_to_blkg.exit, %lor.lhs.false.for.inc369_crit_edge
  %129 = ptrtoint ptr %.pn837894 to i32
  call void @__asan_load4_noabort(i32 %129)
  %.pn837 = load ptr, ptr %.pn837894, align 4
  %cmp249.not = icmp eq ptr %.pn837, %inner_walk
  br i1 %cmp249.not, label %for.inc369.for.end375_crit_edge, label %for.inc369.for.body253_crit_edge

for.inc369.for.body253_crit_edge:                 ; preds = %for.inc369
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body253

for.inc369.for.end375_crit_edge:                  ; preds = %for.inc369
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end375

for.end375:                                       ; preds = %for.inc369.for.end375_crit_edge, %for.cond247.preheader.for.end375_crit_edge
  %130 = ptrtoint ptr %inner_walk to i32
  call void @__asan_load4_noabort(i32 %130)
  %.pn839896 = load ptr, ptr %inner_walk, align 4
  %cmp407.not897 = icmp eq ptr %.pn839896, %inner_walk
  br i1 %cmp407.not897, label %for.end375.for.cond527.preheader_crit_edge, label %for.body411.lr.ph

for.end375.for.cond527.preheader_crit_edge:       ; preds = %for.end375
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond527.preheader

for.body411.lr.ph:                                ; preds = %for.end375
  %hweight_after_donation376 = getelementptr i8, ptr %55, i32 -4
  %131 = ptrtoint ptr %hweight_after_donation376 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %hweight_after_donation376, align 8
  %.neg = mul i32 %132, -65536
  %add388 = add i32 %.neg, -1
  %hweight_donating379 = getelementptr i8, ptr %55, i32 -8
  %133 = ptrtoint ptr %hweight_donating379 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %hweight_donating379, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %134)
  %cmp381 = icmp ult i32 %134, 65535
  %phi.bo = sub i32 65536, %134
  %cond386 = select i1 %cmp381, i32 %phi.bo, i32 1
  %sub389 = add i32 %add388, %cond386
  %div = udiv i32 %sub389, %cond386
  %conv438 = zext i32 %div to i64
  br label %for.body411

for.cond527.preheader:                            ; preds = %cleanup.for.cond527.preheader_crit_edge, %for.end375.for.cond527.preheader_crit_edge
  %135 = ptrtoint ptr %surpluses to i32
  call void @__asan_load4_noabort(i32 %135)
  %.pn840899 = load ptr, ptr %surpluses, align 4
  %cmp529.not901 = icmp eq ptr %.pn840899, %surpluses
  br i1 %cmp529.not901, label %for.cond527.preheader.for.end650_crit_edge, label %for.cond527.preheader.for.body533_crit_edge

for.cond527.preheader.for.body533_crit_edge:      ; preds = %for.cond527.preheader
  br label %for.body533

for.cond527.preheader.for.end650_crit_edge:       ; preds = %for.cond527.preheader
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end650

for.body411:                                      ; preds = %cleanup.for.body411_crit_edge, %for.body411.lr.ph
  %.pn839898 = phi ptr [ %.pn839896, %for.body411.lr.ph ], [ %.pn839, %cleanup.for.body411_crit_edge ]
  %level413 = getelementptr i8, ptr %.pn839898, i32 268
  %136 = ptrtoint ptr %level413 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %level413, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %137)
  %cmp414 = icmp eq i32 %137, 0
  br i1 %cmp414, label %if.then416, label %if.end431

if.then416:                                       ; preds = %for.body411
  call void @__sanitizer_cov_trace_pc() #19
  %hweight_after_donation418 = getelementptr i8, ptr %.pn839898, i32 -4
  %138 = ptrtoint ptr %hweight_after_donation418 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %hweight_after_donation418, align 8
  %sub419 = sub i32 65536, %139
  %conv420 = zext i32 %sub419 to i64
  %child_active_sum422 = getelementptr i8, ptr %.pn839898, i32 -44
  %140 = ptrtoint ptr %child_active_sum422 to i32
  call void @__asan_load8_noabort(i32 %140)
  %141 = load i64, ptr %child_active_sum422, align 8
  %hweight_donating423 = getelementptr i8, ptr %.pn839898, i32 -8
  %142 = ptrtoint ptr %hweight_donating423 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %hweight_donating423, align 4
  %sub424 = sub i32 65536, %143
  %conv425 = zext i32 %sub424 to i64
  %mul426 = mul i64 %141, %conv425
  %add427 = add nsw i64 %conv420, -1
  %sub428 = add i64 %add427, %mul426
  %call429 = call i64 @div64_u64(i64 noundef %sub428, i64 noundef %conv420) #17
  br label %cleanup

if.end431:                                        ; preds = %for.body411
  call void @__sanitizer_cov_trace_pc() #19
  %ancestors432 = getelementptr i8, ptr %.pn839898, i32 272
  %sub434 = add i32 %137, -1
  %arrayidx435 = getelementptr [0 x ptr], ptr %ancestors432, i32 0, i32 %sub434
  %144 = ptrtoint ptr %arrayidx435 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %arrayidx435, align 4
  %hweight_active439 = getelementptr i8, ptr %.pn839898, i32 -16
  %146 = ptrtoint ptr %hweight_active439 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %hweight_active439, align 4
  %hweight_donating440 = getelementptr i8, ptr %.pn839898, i32 -8
  %148 = ptrtoint ptr %hweight_donating440 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %hweight_donating440, align 4
  %sub441 = sub i32 %147, %149
  %conv442 = zext i32 %sub441 to i64
  %mul443 = mul nuw i64 %conv442, %conv438
  %sub445 = add nuw i64 %mul443, 65535
  %call446 = call i64 @div64_u64(i64 noundef %sub445, i64 noundef 65536) #17
  %hweight_after_donation447 = getelementptr i8, ptr %.pn839898, i32 -4
  %150 = ptrtoint ptr %hweight_after_donation447 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %hweight_after_donation447, align 8
  %152 = trunc i64 %call446 to i32
  %conv450 = add i32 %151, %152
  %hweight_inuse = getelementptr i8, ptr %.pn839898, i32 -12
  %153 = ptrtoint ptr %hweight_inuse to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 %conv450, ptr %hweight_inuse, align 8
  %hweight_inuse452 = getelementptr inbounds %struct.ioc_gq, ptr %145, i32 0, i32 21
  %154 = ptrtoint ptr %hweight_inuse452 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %hweight_inuse452, align 8
  %conv453 = zext i32 %155 to i64
  %child_adjusted_sum455 = getelementptr inbounds %struct.ioc_gq, ptr %145, i32 0, i32 18
  %156 = ptrtoint ptr %child_adjusted_sum455 to i32
  call void @__asan_load8_noabort(i32 %156)
  %157 = load i64, ptr %child_adjusted_sum455, align 8
  %conv457 = zext i32 %conv450 to i64
  %mul458 = mul i64 %157, %conv457
  %add459 = add nsw i64 %conv453, -1
  %sub460 = add i64 %add459, %mul458
  %call461 = call i64 @div64_u64(i64 noundef %sub460, i64 noundef %conv453) #17
  %158 = ptrtoint ptr %hweight_active439 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %hweight_active439, align 4
  %conv465 = zext i32 %159 to i64
  %child_active_sum467 = getelementptr i8, ptr %.pn839898, i32 -44
  %160 = ptrtoint ptr %child_active_sum467 to i32
  call void @__asan_load8_noabort(i32 %160)
  %161 = load i64, ptr %child_active_sum467, align 8
  %162 = ptrtoint ptr %hweight_donating440 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %hweight_donating440, align 4
  %conv469 = zext i32 %163 to i64
  %mul470 = mul i64 %161, %conv469
  %add471 = add nsw i64 %conv465, -1
  %sub472 = add i64 %add471, %mul470
  %call473 = call i64 @div64_u64(i64 noundef %sub472, i64 noundef %conv465) #17
  %164 = ptrtoint ptr %child_active_sum467 to i32
  call void @__asan_load8_noabort(i32 %164)
  %165 = load i64, ptr %child_active_sum467, align 8
  %sub475 = sub i64 %165, %call473
  %166 = ptrtoint ptr %hweight_active439 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %hweight_active439, align 4
  %conv478 = zext i32 %167 to i64
  %active480 = getelementptr i8, ptr %.pn839898, i32 -128
  %168 = ptrtoint ptr %active480 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %active480, align 4
  %conv481 = zext i32 %169 to i64
  %170 = ptrtoint ptr %hweight_donating440 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %hweight_donating440, align 4
  %conv483 = zext i32 %171 to i64
  %mul484 = mul nuw i64 %conv483, %conv481
  %add485 = add nsw i64 %conv478, -1
  %sub486 = add i64 %add485, %mul484
  %call487 = call i64 @div64_u64(i64 noundef %sub486, i64 noundef %conv478) #17
  %172 = ptrtoint ptr %hweight_inuse to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %hweight_inuse, align 8
  %conv491 = zext i32 %173 to i64
  %conv493 = and i64 %call461, 4294967295
  %174 = ptrtoint ptr %hweight_after_donation447 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %hweight_after_donation447, align 8
  %conv495 = zext i32 %175 to i64
  %mul496 = mul nuw i64 %conv493, %conv495
  %add497 = add nsw i64 %conv491, -1
  %sub498 = add i64 %add497, %mul496
  %call499 = call i64 @div64_u64(i64 noundef %sub498, i64 noundef %conv491) #17
  %conv502 = and i64 %call487, 4294967295
  %conv504 = and i64 %call499, 4294967295
  %mul505 = mul i64 %conv504, %call473
  %add506 = add nsw i64 %conv502, -1
  %sub507 = add i64 %add506, %mul505
  %call508 = call i64 @div64_u64(i64 noundef %sub507, i64 noundef %conv502) #17
  %add509 = add i64 %sub475, %call508
  br label %cleanup

cleanup:                                          ; preds = %if.end431, %if.then416
  %add509.sink = phi i64 [ %call429, %if.then416 ], [ %add509, %if.end431 ]
  %176 = getelementptr i8, ptr %.pn839898, i32 -28
  %177 = ptrtoint ptr %176 to i32
  call void @__asan_store8_noabort(i32 %177)
  store i64 %add509.sink, ptr %176, align 8
  %178 = ptrtoint ptr %.pn839898 to i32
  call void @__asan_load4_noabort(i32 %178)
  %.pn839 = load ptr, ptr %.pn839898, align 4
  %cmp407.not = icmp eq ptr %.pn839, %inner_walk
  br i1 %cmp407.not, label %cleanup.for.cond527.preheader_crit_edge, label %cleanup.for.body411_crit_edge

cleanup.for.body411_crit_edge:                    ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body411

cleanup.for.cond527.preheader_crit_edge:          ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond527.preheader

for.body533:                                      ; preds = %cleanup640.for.body533_crit_edge, %for.cond527.preheader.for.body533_crit_edge
  %.pn840902 = phi ptr [ %.pn840, %cleanup640.for.body533_crit_edge ], [ %.pn840899, %for.cond527.preheader.for.body533_crit_edge ]
  %iocg.8903 = getelementptr i8, ptr %.pn840902, i32 -156
  %abs_vdebt = getelementptr i8, ptr %.pn840902, i32 -92
  %179 = ptrtoint ptr %abs_vdebt to i32
  call void @__asan_load8_noabort(i32 %179)
  %180 = load i64, ptr %abs_vdebt, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %180)
  %tobool540.not = icmp eq i64 %180, 0
  br i1 %tobool540.not, label %if.end599, label %if.then541

if.then541:                                       ; preds = %for.body533
  %inuse543 = getelementptr i8, ptr %.pn840902, i32 -132
  %181 = ptrtoint ptr %inuse543 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %inuse543, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %182)
  %cmp544 = icmp ugt i32 %182, 1
  br i1 %cmp544, label %land.rhs553, label %if.then541.cleanup640_crit_edge

if.then541.cleanup640_crit_edge:                  ; preds = %if.then541
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup640

land.rhs553:                                      ; preds = %if.then541
  %.b831842 = load i1, ptr @transfer_surpluses.__already_done.68, align 1
  br i1 %.b831842, label %land.rhs553.cleanup640_crit_edge, label %if.then564, !prof !285

land.rhs553.cleanup640_crit_edge:                 ; preds = %land.rhs553
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup640

if.then564:                                       ; preds = %land.rhs553
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @transfer_surpluses.__already_done.68, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.44, i32 noundef 2017, i32 noundef 9, ptr noundef null) #17
  br label %cleanup640

if.end599:                                        ; preds = %for.body533
  %ancestors535 = getelementptr i8, ptr %.pn840902, i32 264
  %level536 = getelementptr i8, ptr %.pn840902, i32 260
  %183 = ptrtoint ptr %level536 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %level536, align 8
  %sub537 = add i32 %184, -1
  %arrayidx538 = getelementptr [0 x ptr], ptr %ancestors535, i32 0, i32 %sub537
  %185 = ptrtoint ptr %arrayidx538 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %arrayidx538, align 4
  %hweight_inuse601 = getelementptr inbounds %struct.ioc_gq, ptr %186, i32 0, i32 21
  %187 = ptrtoint ptr %hweight_inuse601 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %hweight_inuse601, align 8
  %conv602 = zext i32 %188 to i64
  %child_adjusted_sum604 = getelementptr inbounds %struct.ioc_gq, ptr %186, i32 0, i32 18
  %189 = ptrtoint ptr %child_adjusted_sum604 to i32
  call void @__asan_load8_noabort(i32 %189)
  %190 = load i64, ptr %child_adjusted_sum604, align 8
  %hweight_after_donation605 = getelementptr i8, ptr %.pn840902, i32 -12
  %191 = ptrtoint ptr %hweight_after_donation605 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %hweight_after_donation605, align 8
  %conv606 = zext i32 %192 to i64
  %mul607 = mul i64 %190, %conv606
  %add608 = add nsw i64 %conv602, -1
  %sub609 = add i64 %add608, %mul607
  %call610 = call i64 @div64_u64(i64 noundef %sub609, i64 noundef %conv602) #17
  %conv611 = trunc i64 %call610 to i32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_iocost_inuse_transfer, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@transfer_surpluses, %do.body616)) #17
          to label %if.end636 [label %do.body616], !srcloc !300

do.body616:                                       ; preds = %if.end599
  %call621 = call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @trace_iocg_path_lock) #17
  %tobool.not.i.i852 = icmp eq ptr %iocg.8903, null
  br i1 %tobool.not.i.i852, label %do.body616.iocg_to_blkg.exit855_crit_edge, label %cond.true.i.i853

do.body616.iocg_to_blkg.exit855_crit_edge:        ; preds = %do.body616
  call void @__sanitizer_cov_trace_pc() #19
  br label %iocg_to_blkg.exit855

cond.true.i.i853:                                 ; preds = %do.body616
  call void @__sanitizer_cov_trace_pc() #19
  %193 = ptrtoint ptr %iocg.8903 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %iocg.8903, align 4
  br label %iocg_to_blkg.exit855

iocg_to_blkg.exit855:                             ; preds = %cond.true.i.i853, %do.body616.iocg_to_blkg.exit855_crit_edge
  %cond.i.i854 = phi ptr [ %194, %cond.true.i.i853 ], [ null, %do.body616.iocg_to_blkg.exit855_crit_edge ]
  %blkcg627 = getelementptr inbounds %struct.blkcg_gq, ptr %cond.i.i854, i32 0, i32 3
  %195 = ptrtoint ptr %blkcg627 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %blkcg627, align 4
  %197 = ptrtoint ptr %196 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %196, align 8
  %kn.i856 = getelementptr inbounds %struct.cgroup, ptr %198, i32 0, i32 11
  %199 = ptrtoint ptr %kn.i856 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %kn.i856, align 8
  %call.i.i857 = call i32 @kernfs_path_from_node(ptr noundef %200, ptr noundef null, ptr noundef nonnull @trace_iocg_path, i32 noundef 1024) #17
  %inuse631 = getelementptr i8, ptr %.pn840902, i32 -132
  %201 = ptrtoint ptr %inuse631 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %inuse631, align 8
  %hweight_inuse632 = getelementptr i8, ptr %.pn840902, i32 -20
  %203 = ptrtoint ptr %hweight_inuse632 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %hweight_inuse632, align 8
  %conv633 = zext i32 %204 to i64
  %205 = ptrtoint ptr %hweight_after_donation605 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %hweight_after_donation605, align 8
  %conv635 = zext i32 %206 to i64
  call fastcc void @trace_iocost_inuse_transfer(ptr noundef %iocg.8903, ptr noundef %now, i32 noundef %202, i32 noundef %conv611, i64 noundef %conv633, i64 noundef %conv635)
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @trace_iocg_path_lock, i32 noundef %call621) #17
  br label %if.end636

if.end636:                                        ; preds = %iocg_to_blkg.exit855, %if.end599
  %active639 = getelementptr i8, ptr %.pn840902, i32 -136
  %207 = ptrtoint ptr %active639 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %active639, align 4
  call fastcc void @__propagate_weights(ptr noundef %iocg.8903, i32 noundef %208, i32 noundef %conv611, i1 noundef zeroext true, ptr noundef %now)
  br label %cleanup640

cleanup640:                                       ; preds = %if.end636, %if.then564, %land.rhs553.cleanup640_crit_edge, %if.then541.cleanup640_crit_edge
  %209 = ptrtoint ptr %.pn840902 to i32
  call void @__asan_load4_noabort(i32 %209)
  %.pn840 = load ptr, ptr %.pn840902, align 4
  %cmp529.not = icmp eq ptr %.pn840, %surpluses
  br i1 %cmp529.not, label %cleanup640.for.end650_crit_edge, label %cleanup640.for.body533_crit_edge

cleanup640.for.body533_crit_edge:                 ; preds = %cleanup640
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body533

cleanup640.for.end650_crit_edge:                  ; preds = %cleanup640
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end650

for.end650:                                       ; preds = %cleanup640.for.end650_crit_edge, %for.cond527.preheader.for.end650_crit_edge
  %210 = ptrtoint ptr %inner_walk to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %inner_walk, align 4
  %cmp662.not906 = icmp eq ptr %211, %inner_walk
  br i1 %cmp662.not906, label %for.end650.for.end674_crit_edge, label %for.end650.for.body666_crit_edge

for.end650.for.body666_crit_edge:                 ; preds = %for.end650
  br label %for.body666

for.end650.for.end674_crit_edge:                  ; preds = %for.end650
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end674

for.body666:                                      ; preds = %list_del_init.exit863.for.body666_crit_edge, %for.end650.for.body666_crit_edge
  %212 = phi ptr [ %.pn841, %list_del_init.exit863.for.body666_crit_edge ], [ %211, %for.end650.for.body666_crit_edge ]
  %213 = ptrtoint ptr %212 to i32
  call void @__asan_load4_noabort(i32 %213)
  %.pn841 = load ptr, ptr %212, align 4
  %call.i.i858 = call zeroext i1 @__list_del_entry_valid(ptr noundef %212) #17
  br i1 %call.i.i858, label %if.end.i.i861, label %for.body666.list_del_init.exit863_crit_edge

for.body666.list_del_init.exit863_crit_edge:      ; preds = %for.body666
  call void @__sanitizer_cov_trace_pc() #19
  br label %list_del_init.exit863

if.end.i.i861:                                    ; preds = %for.body666
  call void @__sanitizer_cov_trace_pc() #19
  %prev.i.i859 = getelementptr inbounds %struct.list_head, ptr %212, i32 0, i32 1
  %214 = ptrtoint ptr %prev.i.i859 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %prev.i.i859, align 4
  %216 = ptrtoint ptr %212 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %212, align 4
  %prev1.i.i.i860 = getelementptr inbounds %struct.list_head, ptr %217, i32 0, i32 1
  %218 = ptrtoint ptr %prev1.i.i.i860 to i32
  call void @__asan_store4_noabort(i32 %218)
  store ptr %215, ptr %prev1.i.i.i860, align 4
  %219 = ptrtoint ptr %215 to i32
  call void @__asan_store4_noabort(i32 %219)
  store volatile ptr %217, ptr %215, align 4
  br label %list_del_init.exit863

list_del_init.exit863:                            ; preds = %if.end.i.i861, %for.body666.list_del_init.exit863_crit_edge
  %220 = ptrtoint ptr %212 to i32
  call void @__asan_store4_noabort(i32 %220)
  store volatile ptr %212, ptr %212, align 4
  %prev.i3.i862 = getelementptr inbounds %struct.list_head, ptr %212, i32 0, i32 1
  %221 = ptrtoint ptr %prev.i3.i862 to i32
  call void @__asan_store4_noabort(i32 %221)
  store ptr %212, ptr %prev.i3.i862, align 4
  %cmp662.not = icmp eq ptr %.pn841, %inner_walk
  br i1 %cmp662.not, label %list_del_init.exit863.for.end674_crit_edge, label %list_del_init.exit863.for.body666_crit_edge

list_del_init.exit863.for.body666_crit_edge:      ; preds = %list_del_init.exit863
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body666

list_del_init.exit863.for.end674_crit_edge:       ; preds = %list_del_init.exit863
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end674

for.end674:                                       ; preds = %list_del_init.exit863.for.end674_crit_edge, %for.end650.for.end674_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %inner_walk) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %over_hwa) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ioc_forgive_debts(ptr noundef %ioc, i64 noundef %usage_us_sum, i32 noundef %nr_debtors, ptr noundef %now) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_debtors)
  %tobool.not = icmp eq i32 %nr_debtors, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %now1 = getelementptr inbounds %struct.ioc_now, ptr %now, i32 0, i32 1
  %0 = ptrtoint ptr %now1 to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %now1, align 8
  %dfgv_period_at = getelementptr inbounds %struct.ioc, ptr %ioc, i32 0, i32 23
  %2 = ptrtoint ptr %dfgv_period_at to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %1, ptr %dfgv_period_at, align 8
  %dfgv_period_rem = getelementptr inbounds %struct.ioc, ptr %ioc, i32 0, i32 24
  %3 = call ptr @memset(ptr %dfgv_period_rem, i32 0, i32 16)
  br label %cleanup288

if.end:                                           ; preds = %entry
  %busy_level = getelementptr inbounds %struct.ioc, ptr %ioc, i32 0, i32 20
  %4 = ptrtoint ptr %busy_level to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %busy_level, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp sgt i32 %5, 0
  br i1 %cmp, label %if.then2, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end5

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %period_us = getelementptr inbounds %struct.ioc, ptr %ioc, i32 0, i32 4
  %6 = ptrtoint ptr %period_us to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %period_us, align 8
  %conv = zext i32 %7 to i64
  %8 = tail call i64 @llvm.umax.i64(i64 %conv, i64 %usage_us_sum)
  br label %if.end5

if.end5:                                          ; preds = %if.then2, %if.end.if.end5_crit_edge
  %usage_us_sum.addr.0 = phi i64 [ %8, %if.then2 ], [ %usage_us_sum, %if.end.if.end5_crit_edge ]
  %dfgv_usage_us_sum6 = getelementptr inbounds %struct.ioc, ptr %ioc, i32 0, i32 25
  %9 = ptrtoint ptr %dfgv_usage_us_sum6 to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %dfgv_usage_us_sum6, align 8
  %add = add i64 %10, %usage_us_sum.addr.0
  store i64 %add, ptr %dfgv_usage_us_sum6, align 8
  %now7 = getelementptr inbounds %struct.ioc_now, ptr %now, i32 0, i32 1
  %11 = ptrtoint ptr %now7 to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %now7, align 8
  %dfgv_period_at8 = getelementptr inbounds %struct.ioc, ptr %ioc, i32 0, i32 23
  %13 = ptrtoint ptr %dfgv_period_at8 to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %dfgv_period_at8, align 8
  %add9.neg = add i64 %12, -100000
  %sub = sub i64 %add9.neg, %14
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub)
  %cmp10 = icmp slt i64 %sub, 0
  br i1 %cmp10, label %if.end5.cleanup288_crit_edge, label %if.end13

if.end5.cleanup288_crit_edge:                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup288

if.end13:                                         ; preds = %if.end5
  %sub16 = sub i64 %12, %14
  %mul = mul i64 %add, 100
  %call = tail call i64 @div64_u64(i64 noundef %mul, i64 noundef %sub16) #17
  %15 = ptrtoint ptr %now7 to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %now7, align 8
  %17 = ptrtoint ptr %dfgv_period_at8 to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %16, ptr %dfgv_period_at8, align 8
  %18 = ptrtoint ptr %dfgv_usage_us_sum6 to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 0, ptr %dfgv_usage_us_sum6, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 50, i64 %call)
  %cmp21 = icmp ugt i64 %call, 50
  %dfgv_period_rem24 = getelementptr inbounds %struct.ioc, ptr %ioc, i32 0, i32 24
  br i1 %cmp21, label %if.then23, label %if.end220

if.then23:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #19
  %19 = ptrtoint ptr %dfgv_period_rem24 to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 0, ptr %dfgv_period_rem24, align 8
  br label %cleanup288

if.end220:                                        ; preds = %if.end13
  %20 = ptrtoint ptr %dfgv_period_rem24 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %dfgv_period_rem24, align 8
  %add27 = add i64 %21, %sub16
  %conv51 = trunc i64 %add27 to i32
  %22 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -6357485877563259869, i64 %add27, i32 0) #24, !srcloc !291
  %asmresult.i = extractvalue { i64, i32 } %22, 0
  %asmresult4.i = extractvalue { i64, i32 } %22, 1
  %23 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -6357485877563259869, i64 %add27, i64 %asmresult.i, i32 %asmresult4.i) #24, !srcloc !292
  %asmresult10.i = extractvalue { i64, i32 } %23, 0
  %div200417 = lshr i64 %asmresult10.i, 16
  %conv201 = trunc i64 %div200417 to i32
  %mul202.neg = mul i32 %conv201, -100000
  %sub203 = add i32 %mul202.neg, %conv51
  %conv222 = zext i32 %sub203 to i64
  %24 = ptrtoint ptr %dfgv_period_rem24 to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %conv222, ptr %dfgv_period_rem24, align 8
  %active_iocgs = getelementptr inbounds %struct.ioc, ptr %ioc, i32 0, i32 10
  %25 = ptrtoint ptr %active_iocgs to i32
  call void @__asan_load4_noabort(i32 %25)
  %.pn419 = load ptr, ptr %active_iocgs, align 4
  %cmp226.not421 = icmp eq ptr %.pn419, %active_iocgs
  br i1 %cmp226.not421, label %if.end220.cleanup288_crit_edge, label %for.body.lr.ph

if.end220.cleanup288_crit_edge:                   ; preds = %if.end220
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup288

for.body.lr.ph:                                   ; preds = %if.end220
  %conv274 = trunc i64 %call to i32
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %.pn422 = phi ptr [ %.pn419, %for.body.lr.ph ], [ %.pn, %cleanup.for.body_crit_edge ]
  %iocg.0423 = getelementptr i8, ptr %.pn422, i32 -96
  %abs_vdebt = getelementptr i8, ptr %.pn422, i32 -32
  %26 = ptrtoint ptr %abs_vdebt to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %abs_vdebt, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %27)
  %tobool230.not = icmp eq i64 %27, 0
  br i1 %tobool230.not, label %land.lhs.true231, label %for.body.if.end234_crit_edge

for.body.if.end234_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end234

land.lhs.true231:                                 ; preds = %for.body
  %delay = getelementptr i8, ptr %.pn422, i32 -24
  %28 = ptrtoint ptr %delay to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %delay, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %29)
  %tobool232.not = icmp eq i64 %29, 0
  br i1 %tobool232.not, label %land.lhs.true231.cleanup_crit_edge, label %land.lhs.true231.if.end234_crit_edge

land.lhs.true231.if.end234_crit_edge:             ; preds = %land.lhs.true231
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end234

land.lhs.true231.cleanup_crit_edge:               ; preds = %land.lhs.true231
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end234:                                        ; preds = %land.lhs.true231.if.end234_crit_edge, %for.body.if.end234_crit_edge
  %waitq = getelementptr i8, ptr %.pn422, i32 68
  tail call void @_raw_spin_lock(ptr noundef %waitq) #17
  %30 = ptrtoint ptr %abs_vdebt to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %abs_vdebt, align 8
  %delay236 = getelementptr i8, ptr %.pn422, i32 -24
  %32 = ptrtoint ptr %delay236 to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %delay236, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %31)
  %tobool238.not = icmp eq i64 %31, 0
  br i1 %tobool238.not, label %if.end234.if.end248_crit_edge, label %if.then239

if.end234.if.end248_crit_edge:                    ; preds = %if.end234
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end248

if.then239:                                       ; preds = %if.end234
  call void @__sanitizer_cov_trace_pc() #19
  %shr241 = lshr i64 %31, %div200417
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shr241)
  %tobool242.not = icmp eq i64 %shr241, 0
  %shr241. = select i1 %tobool242.not, i64 1, i64 %shr241
  %34 = ptrtoint ptr %abs_vdebt to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %shr241., ptr %abs_vdebt, align 8
  %35 = ptrtoint ptr %delay236 to i32
  call void @__asan_load8_noabort(i32 %35)
  %.pr = load i64, ptr %delay236, align 8
  br label %if.end248

if.end248:                                        ; preds = %if.then239, %if.end234.if.end248_crit_edge
  %36 = phi i64 [ %.pr, %if.then239 ], [ %33, %if.end234.if.end248_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %36)
  %tobool250.not = icmp eq i64 %36, 0
  br i1 %tobool250.not, label %if.end248.if.end260_crit_edge, label %if.then251

if.end248.if.end260_crit_edge:                    ; preds = %if.end248
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end260

if.then251:                                       ; preds = %if.end248
  call void @__sanitizer_cov_trace_pc() #19
  %shr253 = lshr i64 %36, %div200417
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shr253)
  %tobool254.not = icmp eq i64 %shr253, 0
  %shr253. = select i1 %tobool254.not, i64 1, i64 %shr253
  %37 = ptrtoint ptr %delay236 to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %shr253., ptr %delay236, align 8
  br label %if.end260

if.end260:                                        ; preds = %if.then251, %if.end248.if.end260_crit_edge
  tail call fastcc void @iocg_kick_waitq(ptr noundef %iocg.0423, i1 noundef zeroext true, ptr noundef %now)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_iocost_iocg_forgive_debt, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@ioc_forgive_debts, %do.body264)) #17
          to label %if.end277 [label %do.body264], !srcloc !300

do.body264:                                       ; preds = %if.end260
  %call269 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @trace_iocg_path_lock) #17
  %tobool.not.i.i = icmp eq ptr %iocg.0423, null
  br i1 %tobool.not.i.i, label %do.body264.iocg_to_blkg.exit_crit_edge, label %cond.true.i.i

do.body264.iocg_to_blkg.exit_crit_edge:           ; preds = %do.body264
  call void @__sanitizer_cov_trace_pc() #19
  br label %iocg_to_blkg.exit

cond.true.i.i:                                    ; preds = %do.body264
  call void @__sanitizer_cov_trace_pc() #19
  %38 = ptrtoint ptr %iocg.0423 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %iocg.0423, align 4
  br label %iocg_to_blkg.exit

iocg_to_blkg.exit:                                ; preds = %cond.true.i.i, %do.body264.iocg_to_blkg.exit_crit_edge
  %cond.i.i = phi ptr [ %39, %cond.true.i.i ], [ null, %do.body264.iocg_to_blkg.exit_crit_edge ]
  %blkcg = getelementptr inbounds %struct.blkcg_gq, ptr %cond.i.i, i32 0, i32 3
  %40 = ptrtoint ptr %blkcg to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %blkcg, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %41, align 8
  %kn.i = getelementptr inbounds %struct.cgroup, ptr %43, i32 0, i32 11
  %44 = ptrtoint ptr %kn.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %kn.i, align 8
  %call.i.i = tail call i32 @kernfs_path_from_node(ptr noundef %45, ptr noundef null, ptr noundef nonnull @trace_iocg_path, i32 noundef 1024) #17
  %46 = ptrtoint ptr %abs_vdebt to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %abs_vdebt, align 8
  %48 = ptrtoint ptr %delay236 to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %delay236, align 8
  tail call fastcc void @trace_iocost_iocg_forgive_debt(ptr noundef %iocg.0423, ptr noundef %now, i32 noundef %conv274, i64 noundef %31, i64 noundef %47, i64 noundef %33, i64 noundef %49)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @trace_iocg_path_lock, i32 noundef %call269) #17
  br label %if.end277

if.end277:                                        ; preds = %iocg_to_blkg.exit, %if.end260
  tail call void @_raw_spin_unlock(ptr noundef %waitq) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end277, %land.lhs.true231.cleanup_crit_edge
  %50 = ptrtoint ptr %.pn422 to i32
  call void @__asan_load4_noabort(i32 %50)
  %.pn = load ptr, ptr %.pn422, align 4
  %cmp226.not = icmp eq ptr %.pn, %active_iocgs
  br i1 %cmp226.not, label %cleanup.cleanup288_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

cleanup.cleanup288_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup288

cleanup288:                                       ; preds = %cleanup.cleanup288_crit_edge, %if.end220.cleanup288_crit_edge, %if.then23, %if.end5.cleanup288_crit_edge, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @iocg_is_idle(ptr noundef %iocg) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %ioc1 = getelementptr inbounds %struct.ioc_gq, ptr %iocg, i32 0, i32 1
  %0 = ptrtoint ptr %ioc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioc1, align 8
  %active_period = getelementptr inbounds %struct.ioc_gq, ptr %iocg, i32 0, i32 14
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %active_period, i32 noundef 8) #17
  %call.i = tail call i64 @generic_atomic64_read(ptr noundef %active_period) #17
  %cur_period = getelementptr inbounds %struct.ioc, ptr %1, i32 0, i32 19
  %call.i.i11 = tail call zeroext i1 @__kasan_check_read(ptr noundef %cur_period, i32 noundef 8) #17
  %call.i12 = tail call i64 @generic_atomic64_read(ptr noundef %cur_period) #17
  call void @__sanitizer_cov_trace_cmp8(i64 %call.i, i64 %call.i12)
  %cmp = icmp eq i64 %call.i, %call.i12
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %done_vtime = getelementptr inbounds %struct.ioc_gq, ptr %iocg, i32 0, i32 10
  %call.i.i13 = tail call zeroext i1 @__kasan_check_read(ptr noundef %done_vtime, i32 noundef 8) #17
  %call.i14 = tail call i64 @generic_atomic64_read(ptr noundef %done_vtime) #17
  %vtime = getelementptr inbounds %struct.ioc_gq, ptr %iocg, i32 0, i32 9
  %call.i.i15 = tail call zeroext i1 @__kasan_check_read(ptr noundef %vtime, i32 noundef 8) #17
  %call.i16 = tail call i64 @generic_atomic64_read(ptr noundef %vtime) #17
  call void @__sanitizer_cov_trace_cmp8(i64 %call.i14, i64 %call.i16)
  %cmp5.not = icmp eq i64 %call.i14, %call.i16
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %entry.cleanup_crit_edge ], [ %cmp5.not, %if.end ]
  ret i1 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_iocost_iocg_idle(ptr noundef %iocg, ptr noundef %now, i64 noundef %last_period, i64 noundef %cur_period, i64 noundef %vtime) unnamed_addr #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_iocost_iocg_idle, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_iocost_iocg_idle, %do.body)) #17
          to label %if.end48 [label %do.body], !srcloc !300

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !275) #17
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
  call void @__sanitizer_cov_trace_pc() #19
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !285

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.57, i32 noundef 108, i32 noundef 9, ptr noundef null) #17
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
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %if.end31

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end69

if.end31:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !275) #17
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !325
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_iocost_iocg_idle, i32 0, i32 7), align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.end48.critedge, label %if.end31.do.body2.i_crit_edge

if.end31.do.body2.i_crit_edge:                    ; preds = %if.end31
  br label %do.body2.i

do.body2.i:                                       ; preds = %do.body2.i.do.body2.i_crit_edge, %if.end31.do.body2.i_crit_edge
  %it_func_ptr.0.i = phi ptr [ %incdec.ptr.i, %do.body2.i.do.body2.i_crit_edge ], [ %13, %if.end31.do.body2.i_crit_edge ]
  %14 = ptrtoint ptr %it_func_ptr.0.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %it_func_ptr.0.i, align 4
  %data.i = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 0, i32 1
  %16 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data.i, align 4
  tail call void %15(ptr noundef %17, ptr noundef %iocg, ptr noundef nonnull @trace_iocg_path, ptr noundef %now, i64 noundef %last_period, i64 noundef %cur_period, i64 noundef %vtime) #17
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool9.not.i = icmp eq ptr %19, null
  br i1 %tobool9.not.i, label %cleanup, label %do.body2.i.do.body2.i_crit_edge

do.body2.i.do.body2.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body2.i

cleanup:                                          ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !326
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !326
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !275) #17
  %and.i.i.i2.c = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i2.c to ptr
  %preempt_count.i.i3.c = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i3.c to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i3.c, align 4
  %sub.i = add i32 %23, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i3.c, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.end48.sink.split, %entry
  %24 = tail call i32 @llvm.read_register.i32(metadata !275) #17
  %and.i5 = and i32 %24, -16384
  %25 = inttoptr i32 %and.i5 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %28 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %27)
  %cmp.not.i.i.i.i6 = icmp ugt i32 %28, %27
  br i1 %cmp.not.i.i.i.i6, label %if.end48.cpu_online.exit14_crit_edge, label %land.rhs.i.i.i.i8

if.end48.cpu_online.exit14_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #19
  br label %cpu_online.exit14

land.rhs.i.i.i.i8:                                ; preds = %if.end48
  %.b37.i.i.i.i7 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i7, label %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, label %if.then.i.i.i.i9, !prof !285

land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge:    ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #19
  br label %cpu_online.exit14

if.then.i.i.i.i9:                                 ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.57, i32 noundef 108, i32 noundef 9, ptr noundef null) #17
  br label %cpu_online.exit14

cpu_online.exit14:                                ; preds = %if.then.i.i.i.i9, %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, %if.end48.cpu_online.exit14_crit_edge
  %div3.i.i.i10 = lshr i32 %27, 5
  %arrayidx.i.i.i11 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i10
  %29 = ptrtoint ptr %arrayidx.i.i.i11 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %arrayidx.i.i.i11, align 4
  %and.i.i.i12 = and i32 %27, 31
  %31 = shl nuw i32 1, %and.i.i.i12
  %32 = and i32 %30, %31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.i13.not = icmp eq i32 %32, 0
  br i1 %tobool.i13.not, label %cpu_online.exit14.if.end69_crit_edge, label %if.then52

cpu_online.exit14.if.end69_crit_edge:             ; preds = %cpu_online.exit14
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit14
  %33 = tail call i32 @llvm.read_register.i32(metadata !275) #17
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !315
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_iocost_iocg_idle, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b1 = load i1, ptr @trace_iocost_iocg_idle.__warned, align 1
  br i1 %.b1, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @trace_iocost_iocg_idle.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.55, i32 noundef 74, ptr noundef nonnull @.str.56) #17
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !316
  %38 = tail call i32 @llvm.read_register.i32(metadata !275) #17
  %and.i.i.i.i15 = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i.i.i15 to ptr
  %preempt_count.i.i.i16 = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %preempt_count.i.i.i16 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %preempt_count.i.i.i16, align 4
  %sub.i.i = add i32 %41, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i16, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit14.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @iocg_flush_stat_one(ptr noundef %iocg) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %ioc1 = getelementptr inbounds %struct.ioc_gq, ptr %iocg, i32 0, i32 1
  %0 = ptrtoint ptr %ioc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioc1, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %2 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.ioc, ptr %1, i32 0, i32 8, i32 0, i32 0, i32 4
  %call.i1 = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1)
  %cmp.not = icmp eq i32 %call.i1, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !286

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.44, i32 noundef 1653, i32 noundef 9, ptr noundef null) #17
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %call265 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #25
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %3 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call265, i32 %3)
  %cmp276 = icmp ult i32 %call265, %3
  br i1 %cmp276, label %do.body28.lr.ph, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

do.body28.lr.ph:                                  ; preds = %if.end
  %pcpu_stat = getelementptr inbounds %struct.ioc_gq, ptr %iocg, i32 0, i32 29
  br label %do.body28

do.body28:                                        ; preds = %do.body28.do.body28_crit_edge, %do.body28.lr.ph
  %call268 = phi i32 [ %call265, %do.body28.lr.ph ], [ %call26, %do.body28.do.body28_crit_edge ]
  %abs_vusage.07 = phi i64 [ 0, %do.body28.lr.ph ], [ %add35, %do.body28.do.body28_crit_edge ]
  %4 = ptrtoint ptr %pcpu_stat to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pcpu_stat, align 8
  %6 = ptrtoint ptr %5 to i32
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call268
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  %add = add i32 %8, %6
  %9 = inttoptr i32 %add to ptr
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %9, i32 noundef 8) #17
  %call.i = tail call i64 @generic_atomic64_read(ptr noundef %9) #17
  %add35 = add i64 %call.i, %abs_vusage.07
  %call26 = tail call i32 @cpumask_next(i32 noundef %call268, ptr noundef nonnull @__cpu_possible_mask) #25
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %10 = load i32, ptr @nr_cpu_ids, align 4
  %cmp27 = icmp ult i32 %call26, %10
  br i1 %cmp27, label %do.body28.do.body28_crit_edge, label %do.body28.for.end_crit_edge

do.body28.for.end_crit_edge:                      ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

do.body28.do.body28_crit_edge:                    ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body28

for.end:                                          ; preds = %do.body28.for.end_crit_edge, %if.end.for.end_crit_edge
  %abs_vusage.0.lcssa = phi i64 [ 0, %if.end.for.end_crit_edge ], [ %add35, %do.body28.for.end_crit_edge ]
  %last_stat_abs_vusage = getelementptr inbounds %struct.ioc_gq, ptr %iocg, i32 0, i32 33
  %11 = ptrtoint ptr %last_stat_abs_vusage to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %last_stat_abs_vusage, align 8
  %sub = sub i64 %abs_vusage.0.lcssa, %12
  store i64 %abs_vusage.0.lcssa, ptr %last_stat_abs_vusage, align 8
  %vtime_base_rate = getelementptr inbounds %struct.ioc, ptr %1, i32 0, i32 14
  %13 = ptrtoint ptr %vtime_base_rate to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %vtime_base_rate, align 8
  %call37 = tail call i64 @div64_u64(i64 noundef %sub, i64 noundef %14) #17
  %usage_delta_us = getelementptr inbounds %struct.ioc_gq, ptr %iocg, i32 0, i32 34
  %15 = ptrtoint ptr %usage_delta_us to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %call37, ptr %usage_delta_us, align 8
  %local_stat = getelementptr inbounds %struct.ioc_gq, ptr %iocg, i32 0, i32 30
  %16 = ptrtoint ptr %local_stat to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %local_stat, align 8
  %add39 = add i64 %17, %call37
  store i64 %add39, ptr %local_stat, align 8
  %desc_stat = getelementptr inbounds %struct.ioc_gq, ptr %iocg, i32 0, i32 31
  %18 = ptrtoint ptr %desc_stat to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %desc_stat, align 8
  %add43 = add i64 %19, %add39
  %wait_us = getelementptr inbounds %struct.ioc_gq, ptr %iocg, i32 0, i32 30, i32 1
  %20 = ptrtoint ptr %wait_us to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %wait_us, align 8
  %wait_us47 = getelementptr inbounds %struct.ioc_gq, ptr %iocg, i32 0, i32 31, i32 1
  %22 = ptrtoint ptr %wait_us47 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %wait_us47, align 8
  %add48 = add i64 %23, %21
  %indebt_us = getelementptr inbounds %struct.ioc_gq, ptr %iocg, i32 0, i32 30, i32 2
  %24 = ptrtoint ptr %indebt_us to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %indebt_us, align 8
  %indebt_us52 = getelementptr inbounds %struct.ioc_gq, ptr %iocg, i32 0, i32 31, i32 2
  %26 = ptrtoint ptr %indebt_us52 to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %indebt_us52, align 8
  %add53 = add i64 %27, %25
  %indelay_us = getelementptr inbounds %struct.ioc_gq, ptr %iocg, i32 0, i32 30, i32 3
  %28 = ptrtoint ptr %indelay_us to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %indelay_us, align 8
  %indelay_us57 = getelementptr inbounds %struct.ioc_gq, ptr %iocg, i32 0, i32 31, i32 3
  %30 = ptrtoint ptr %indelay_us57 to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %indelay_us57, align 8
  %add58 = add i64 %31, %29
  %level = getelementptr inbounds %struct.ioc_gq, ptr %iocg, i32 0, i32 38
  %32 = ptrtoint ptr %level to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %level, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp60 = icmp sgt i32 %33, 0
  br i1 %cmp60, label %if.then61, label %for.end.if.end89_crit_edge

for.end.if.end89_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end89

if.then61:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #19
  %sub63 = add nsw i32 %33, -1
  %arrayidx64 = getelementptr %struct.ioc_gq, ptr %iocg, i32 0, i32 39, i32 %sub63
  %34 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx64, align 4
  %desc_stat65 = getelementptr inbounds %struct.ioc_gq, ptr %35, i32 0, i32 31
  %last_stat = getelementptr inbounds %struct.ioc_gq, ptr %iocg, i32 0, i32 32
  %36 = ptrtoint ptr %last_stat to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %last_stat, align 8
  %sub68 = sub i64 %add43, %37
  %38 = ptrtoint ptr %desc_stat65 to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %desc_stat65, align 8
  %add70 = add i64 %sub68, %39
  store i64 %add70, ptr %desc_stat65, align 8
  %wait_us73 = getelementptr inbounds %struct.ioc_gq, ptr %iocg, i32 0, i32 32, i32 1
  %40 = ptrtoint ptr %wait_us73 to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %wait_us73, align 8
  %sub74 = sub i64 %add48, %41
  %wait_us75 = getelementptr inbounds %struct.ioc_gq, ptr %35, i32 0, i32 31, i32 1
  %42 = ptrtoint ptr %wait_us75 to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %wait_us75, align 8
  %add76 = add i64 %sub74, %43
  store i64 %add76, ptr %wait_us75, align 8
  %indebt_us79 = getelementptr inbounds %struct.ioc_gq, ptr %iocg, i32 0, i32 32, i32 2
  %44 = ptrtoint ptr %indebt_us79 to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %indebt_us79, align 8
  %sub80 = sub i64 %add53, %45
  %indebt_us81 = getelementptr inbounds %struct.ioc_gq, ptr %35, i32 0, i32 31, i32 2
  %46 = ptrtoint ptr %indebt_us81 to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %indebt_us81, align 8
  %add82 = add i64 %sub80, %47
  store i64 %add82, ptr %indebt_us81, align 8
  %indelay_us85 = getelementptr inbounds %struct.ioc_gq, ptr %iocg, i32 0, i32 32, i32 3
  %48 = ptrtoint ptr %indelay_us85 to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %indelay_us85, align 8
  %sub86 = sub i64 %add58, %49
  %indelay_us87 = getelementptr inbounds %struct.ioc_gq, ptr %35, i32 0, i32 31, i32 3
  %50 = ptrtoint ptr %indelay_us87 to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %indelay_us87, align 8
  %add88 = add i64 %sub86, %51
  store i64 %add88, ptr %indelay_us87, align 8
  br label %if.end89

if.end89:                                         ; preds = %if.then61, %for.end.if.end89_crit_edge
  %last_stat90 = getelementptr inbounds %struct.ioc_gq, ptr %iocg, i32 0, i32 32
  %52 = ptrtoint ptr %last_stat90 to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 %add43, ptr %last_stat90, align 8
  %new_stat.sroa.6.0.last_stat90.sroa_idx = getelementptr inbounds %struct.ioc_gq, ptr %iocg, i32 0, i32 32, i32 1
  %53 = ptrtoint ptr %new_stat.sroa.6.0.last_stat90.sroa_idx to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 %add48, ptr %new_stat.sroa.6.0.last_stat90.sroa_idx, align 8
  %new_stat.sroa.9.0.last_stat90.sroa_idx = getelementptr inbounds %struct.ioc_gq, ptr %iocg, i32 0, i32 32, i32 2
  %54 = ptrtoint ptr %new_stat.sroa.9.0.last_stat90.sroa_idx to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 %add53, ptr %new_stat.sroa.9.0.last_stat90.sroa_idx, align 8
  %new_stat.sroa.12.0.last_stat90.sroa_idx = getelementptr inbounds %struct.ioc_gq, ptr %iocg, i32 0, i32 32, i32 3
  %55 = ptrtoint ptr %new_stat.sroa.12.0.last_stat90.sroa_idx to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 %add58, ptr %new_stat.sroa.12.0.last_stat90.sroa_idx, align 8
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #14

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_iocost_inuse_transfer(ptr noundef %iocg, ptr noundef %now, i32 noundef %old_inuse, i32 noundef %new_inuse, i64 noundef %old_hw_inuse, i64 noundef %new_hw_inuse) unnamed_addr #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_iocost_inuse_transfer, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_iocost_inuse_transfer, %do.body)) #17
          to label %if.end48 [label %do.body], !srcloc !300

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !275) #17
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
  call void @__sanitizer_cov_trace_pc() #19
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !285

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.57, i32 noundef 108, i32 noundef 9, ptr noundef null) #17
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
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %if.end31

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end69

if.end31:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !275) #17
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !327
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_iocost_inuse_transfer, i32 0, i32 7), align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.end48.critedge, label %if.end31.do.body2.i_crit_edge

if.end31.do.body2.i_crit_edge:                    ; preds = %if.end31
  br label %do.body2.i

do.body2.i:                                       ; preds = %do.body2.i.do.body2.i_crit_edge, %if.end31.do.body2.i_crit_edge
  %it_func_ptr.0.i = phi ptr [ %incdec.ptr.i, %do.body2.i.do.body2.i_crit_edge ], [ %13, %if.end31.do.body2.i_crit_edge ]
  %14 = ptrtoint ptr %it_func_ptr.0.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %it_func_ptr.0.i, align 4
  %data.i = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 0, i32 1
  %16 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data.i, align 4
  tail call void %15(ptr noundef %17, ptr noundef %iocg, ptr noundef nonnull @trace_iocg_path, ptr noundef %now, i32 noundef %old_inuse, i32 noundef %new_inuse, i64 noundef %old_hw_inuse, i64 noundef %new_hw_inuse) #17
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool9.not.i = icmp eq ptr %19, null
  br i1 %tobool9.not.i, label %cleanup, label %do.body2.i.do.body2.i_crit_edge

do.body2.i.do.body2.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body2.i

cleanup:                                          ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !328
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !328
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !275) #17
  %and.i.i.i2.c = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i2.c to ptr
  %preempt_count.i.i3.c = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i3.c to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i3.c, align 4
  %sub.i = add i32 %23, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i3.c, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.end48.sink.split, %entry
  %24 = tail call i32 @llvm.read_register.i32(metadata !275) #17
  %and.i5 = and i32 %24, -16384
  %25 = inttoptr i32 %and.i5 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %28 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %27)
  %cmp.not.i.i.i.i6 = icmp ugt i32 %28, %27
  br i1 %cmp.not.i.i.i.i6, label %if.end48.cpu_online.exit14_crit_edge, label %land.rhs.i.i.i.i8

if.end48.cpu_online.exit14_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #19
  br label %cpu_online.exit14

land.rhs.i.i.i.i8:                                ; preds = %if.end48
  %.b37.i.i.i.i7 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i7, label %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, label %if.then.i.i.i.i9, !prof !285

land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge:    ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #19
  br label %cpu_online.exit14

if.then.i.i.i.i9:                                 ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.57, i32 noundef 108, i32 noundef 9, ptr noundef null) #17
  br label %cpu_online.exit14

cpu_online.exit14:                                ; preds = %if.then.i.i.i.i9, %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, %if.end48.cpu_online.exit14_crit_edge
  %div3.i.i.i10 = lshr i32 %27, 5
  %arrayidx.i.i.i11 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i10
  %29 = ptrtoint ptr %arrayidx.i.i.i11 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %arrayidx.i.i.i11, align 4
  %and.i.i.i12 = and i32 %27, 31
  %31 = shl nuw i32 1, %and.i.i.i12
  %32 = and i32 %30, %31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.i13.not = icmp eq i32 %32, 0
  br i1 %tobool.i13.not, label %cpu_online.exit14.if.end69_crit_edge, label %if.then52

cpu_online.exit14.if.end69_crit_edge:             ; preds = %cpu_online.exit14
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit14
  %33 = tail call i32 @llvm.read_register.i32(metadata !275) #17
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !315
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_iocost_inuse_transfer, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b1 = load i1, ptr @trace_iocost_inuse_transfer.__warned, align 1
  br i1 %.b1, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @trace_iocost_inuse_transfer.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.55, i32 noundef 130, ptr noundef nonnull @.str.56) #17
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !316
  %38 = tail call i32 @llvm.read_register.i32(metadata !275) #17
  %and.i.i.i.i15 = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i.i.i15 to ptr
  %preempt_count.i.i.i16 = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %preempt_count.i.i.i16 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %preempt_count.i.i.i16, align 4
  %sub.i.i = add i32 %41, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i16, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit14.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pr_cont_kernfs_path(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_iocost_ioc_vrate_adj(ptr noundef %ioc, i64 noundef %new_vrate, ptr noundef %missed_ppm, i32 noundef %rq_wait_pct, i32 noundef %nr_lagging, i32 noundef %nr_shortages) unnamed_addr #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_iocost_ioc_vrate_adj, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_iocost_ioc_vrate_adj, %do.body)) #17
          to label %if.end48 [label %do.body], !srcloc !300

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !275) #17
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
  call void @__sanitizer_cov_trace_pc() #19
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !285

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.57, i32 noundef 108, i32 noundef 9, ptr noundef null) #17
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
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %if.end31

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end69

if.end31:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !275) #17
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !329
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_iocost_ioc_vrate_adj, i32 0, i32 7), align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.end48.critedge, label %if.end31.do.body2.i_crit_edge

if.end31.do.body2.i_crit_edge:                    ; preds = %if.end31
  br label %do.body2.i

do.body2.i:                                       ; preds = %do.body2.i.do.body2.i_crit_edge, %if.end31.do.body2.i_crit_edge
  %it_func_ptr.0.i = phi ptr [ %incdec.ptr.i, %do.body2.i.do.body2.i_crit_edge ], [ %13, %if.end31.do.body2.i_crit_edge ]
  %14 = ptrtoint ptr %it_func_ptr.0.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %it_func_ptr.0.i, align 4
  %data.i = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 0, i32 1
  %16 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data.i, align 4
  tail call void %15(ptr noundef %17, ptr noundef %ioc, i64 noundef %new_vrate, ptr noundef %missed_ppm, i32 noundef %rq_wait_pct, i32 noundef %nr_lagging, i32 noundef %nr_shortages) #17
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool9.not.i = icmp eq ptr %19, null
  br i1 %tobool9.not.i, label %cleanup, label %do.body2.i.do.body2.i_crit_edge

do.body2.i.do.body2.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body2.i

cleanup:                                          ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !330
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !330
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !275) #17
  %and.i.i.i73.c = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i73.c to ptr
  %preempt_count.i.i74.c = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i74.c to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i74.c, align 4
  %sub.i = add i32 %23, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74.c, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.end48.sink.split, %entry
  %24 = tail call i32 @llvm.read_register.i32(metadata !275) #17
  %and.i76 = and i32 %24, -16384
  %25 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %28 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %27)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %28, %27
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #19
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !285

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #19
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.57, i32 noundef 108, i32 noundef 9, ptr noundef null) #17
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %27, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %29 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %27, 31
  %31 = shl nuw i32 1, %and.i.i.i83
  %32 = and i32 %30, %31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.i84.not = icmp eq i32 %32, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %33 = tail call i32 @llvm.read_register.i32(metadata !275) #17
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !315
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_iocost_ioc_vrate_adj, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_iocost_ioc_vrate_adj.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @trace_iocost_ioc_vrate_adj.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.55, i32 noundef 179, ptr noundef nonnull @.str.56) #17
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !316
  %38 = tail call i32 @llvm.read_register.i32(metadata !275) #17
  %and.i.i.i.i86 = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %41, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_iocost_iocg_forgive_debt(ptr noundef %iocg, ptr noundef %now, i32 noundef %usage_pct, i64 noundef %old_debt, i64 noundef %new_debt, i64 noundef %old_delay, i64 noundef %new_delay) unnamed_addr #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_iocost_iocg_forgive_debt, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_iocost_iocg_forgive_debt, %do.body)) #17
          to label %if.end48 [label %do.body], !srcloc !300

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !275) #17
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
  call void @__sanitizer_cov_trace_pc() #19
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !285

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.57, i32 noundef 108, i32 noundef 9, ptr noundef null) #17
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
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %if.end31

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end69

if.end31:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !275) #17
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !331
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_iocost_iocg_forgive_debt, i32 0, i32 7), align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.end48.critedge, label %if.end31.do.body2.i_crit_edge

if.end31.do.body2.i_crit_edge:                    ; preds = %if.end31
  br label %do.body2.i

do.body2.i:                                       ; preds = %do.body2.i.do.body2.i_crit_edge, %if.end31.do.body2.i_crit_edge
  %it_func_ptr.0.i = phi ptr [ %incdec.ptr.i, %do.body2.i.do.body2.i_crit_edge ], [ %13, %if.end31.do.body2.i_crit_edge ]
  %14 = ptrtoint ptr %it_func_ptr.0.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %it_func_ptr.0.i, align 4
  %data.i = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 0, i32 1
  %16 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data.i, align 4
  tail call void %15(ptr noundef %17, ptr noundef %iocg, ptr noundef nonnull @trace_iocg_path, ptr noundef %now, i32 noundef %usage_pct, i64 noundef %old_debt, i64 noundef %new_debt, i64 noundef %old_delay, i64 noundef %new_delay) #17
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool9.not.i = icmp eq ptr %19, null
  br i1 %tobool9.not.i, label %cleanup, label %do.body2.i.do.body2.i_crit_edge

do.body2.i.do.body2.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body2.i

cleanup:                                          ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !332
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !332
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !275) #17
  %and.i.i.i2.c = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i2.c to ptr
  %preempt_count.i.i3.c = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i3.c to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i3.c, align 4
  %sub.i = add i32 %23, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i3.c, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.end48.sink.split, %entry
  %24 = tail call i32 @llvm.read_register.i32(metadata !275) #17
  %and.i5 = and i32 %24, -16384
  %25 = inttoptr i32 %and.i5 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %28 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %27)
  %cmp.not.i.i.i.i6 = icmp ugt i32 %28, %27
  br i1 %cmp.not.i.i.i.i6, label %if.end48.cpu_online.exit14_crit_edge, label %land.rhs.i.i.i.i8

if.end48.cpu_online.exit14_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #19
  br label %cpu_online.exit14

land.rhs.i.i.i.i8:                                ; preds = %if.end48
  %.b37.i.i.i.i7 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i7, label %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, label %if.then.i.i.i.i9, !prof !285

land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge:    ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #19
  br label %cpu_online.exit14

if.then.i.i.i.i9:                                 ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.57, i32 noundef 108, i32 noundef 9, ptr noundef null) #17
  br label %cpu_online.exit14

cpu_online.exit14:                                ; preds = %if.then.i.i.i.i9, %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, %if.end48.cpu_online.exit14_crit_edge
  %div3.i.i.i10 = lshr i32 %27, 5
  %arrayidx.i.i.i11 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i10
  %29 = ptrtoint ptr %arrayidx.i.i.i11 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %arrayidx.i.i.i11, align 4
  %and.i.i.i12 = and i32 %27, 31
  %31 = shl nuw i32 1, %and.i.i.i12
  %32 = and i32 %30, %31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.i13.not = icmp eq i32 %32, 0
  br i1 %tobool.i13.not, label %cpu_online.exit14.if.end69_crit_edge, label %if.then52

cpu_online.exit14.if.end69_crit_edge:             ; preds = %cpu_online.exit14
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit14
  %33 = tail call i32 @llvm.read_register.i32(metadata !275) #17
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !315
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_iocost_iocg_forgive_debt, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b1 = load i1, ptr @trace_iocost_iocg_forgive_debt.__warned, align 1
  br i1 %.b1, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @trace_iocost_iocg_forgive_debt.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.55, i32 noundef 220, ptr noundef nonnull @.str.56) #17
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !316
  %38 = tail call i32 @llvm.read_register.i32(metadata !275) #17
  %and.i.i.i.i15 = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i.i.i15 to ptr
  %preempt_count.i.i.i16 = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %preempt_count.i.i.i16 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %preempt_count.i.i.i16, align 4
  %sub.i.i = add i32 %41, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i16, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit14.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_freeze_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_unfreeze_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_debugfs_register_rqos(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_debugfs_unregister_rqos(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @ioc_cost_model_prfill(ptr noundef %sf, ptr nocapture noundef readonly %pd, i32 noundef %off) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pd, align 4
  %call = tail call ptr @blkg_dev_name(ptr noundef %1) #17
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %ioc2 = getelementptr inbounds %struct.ioc_gq, ptr %pd, i32 0, i32 1
  %2 = ptrtoint ptr %ioc2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ioc2, align 8
  %i_lcoefs = getelementptr inbounds %struct.ioc, ptr %3, i32 0, i32 2, i32 1
  %user_cost_model = getelementptr inbounds %struct.ioc, ptr %3, i32 0, i32 29
  %4 = ptrtoint ptr %user_cost_model to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %user_cost_model, align 4
  %5 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %bf.cast.not = icmp eq i8 %5, 0
  %cond = select i1 %bf.cast.not, ptr @.str.47, ptr @.str.46
  %6 = ptrtoint ptr %i_lcoefs to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %i_lcoefs, align 8
  %arrayidx3 = getelementptr %struct.ioc, ptr %3, i32 0, i32 2, i32 1, i32 1
  %8 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %arrayidx3, align 8
  %arrayidx4 = getelementptr %struct.ioc, ptr %3, i32 0, i32 2, i32 1, i32 2
  %10 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %arrayidx4, align 8
  %arrayidx5 = getelementptr %struct.ioc, ptr %3, i32 0, i32 2, i32 1, i32 3
  %12 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %arrayidx5, align 8
  %arrayidx6 = getelementptr %struct.ioc, ptr %3, i32 0, i32 2, i32 1, i32 4
  %14 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %arrayidx6, align 8
  %arrayidx7 = getelementptr %struct.ioc, ptr %3, i32 0, i32 2, i32 1, i32 5
  %16 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %arrayidx7, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.77, ptr noundef nonnull %call, ptr noundef nonnull %cond, i64 noundef %7, i64 noundef %9, i64 noundef %11, i64 noundef %13, i64 noundef %15, i64 noundef %17) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i64 0
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__alloc_percpu_gfp(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #15

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_init(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iocg_waitq_timer_fn(ptr noundef %timer) #0 align 64 {
entry:
  %now = alloca %struct.ioc_now, align 8
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %timer, i32 -216
  %abs_vdebt = getelementptr i8, ptr %timer, i32 -152
  %0 = ptrtoint ptr %abs_vdebt to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load volatile i64, ptr %abs_vdebt, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %tobool.not = icmp eq i64 %1, 0
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %now) #17
  %ioc = getelementptr i8, ptr %timer, i32 -208
  %2 = call ptr @memset(ptr %now, i32 255, i32 32)
  %3 = ptrtoint ptr %ioc to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ioc, align 8
  call fastcc void @ioc_now(ptr noundef %4, ptr noundef nonnull %now)
  br i1 %tobool.not, label %iocg_lock.exit, label %if.then.i

iocg_lock.exit:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %waitq12.i = getelementptr i8, ptr %timer, i32 -52
  %call15.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %waitq12.i) #17
  call fastcc void @iocg_kick_waitq(ptr noundef %add.ptr, i1 noundef zeroext false, ptr noundef nonnull %now)
  br label %iocg_unlock.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %5 = ptrtoint ptr %ioc to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ioc, align 8
  %lock.i = getelementptr inbounds %struct.ioc, ptr %6, i32 0, i32 8
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #17
  %waitq.i = getelementptr i8, ptr %timer, i32 -52
  tail call void @_raw_spin_lock(ptr noundef %waitq.i) #17
  call fastcc void @iocg_kick_waitq(ptr noundef %add.ptr, i1 noundef zeroext true, ptr noundef nonnull %now)
  tail call void @_raw_spin_unlock(ptr noundef %waitq.i) #17
  %7 = ptrtoint ptr %ioc to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ioc, align 8
  %lock1.i = getelementptr inbounds %struct.ioc, ptr %8, i32 0, i32 8
  br label %iocg_unlock.exit

iocg_unlock.exit:                                 ; preds = %if.then.i, %iocg_lock.exit
  %flags.015 = phi i32 [ %call2.i, %if.then.i ], [ %call15.i, %iocg_lock.exit ]
  %waitq.sink.i = phi ptr [ %lock1.i, %if.then.i ], [ %waitq12.i, %iocg_lock.exit ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %waitq.sink.i, i32 noundef %flags.015) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %now) #17
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hrtimer_cancel(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blkcg_policy_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #16

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #15

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #15

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #15

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.usub.sat.i64(i64, i64) #15

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smin.i64(i64, i64) #15

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #15

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #15

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #15

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #17

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #18 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 118)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #18 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 118)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #16 = { argmemonly nofree nounwind readonly willreturn }
attributes #17 = { nounwind }
attributes #18 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #19 = { nomerge }
attributes #20 = { nobuiltin nounwind }
attributes #21 = { nobuiltin }
attributes #22 = { nounwind allocsize(2) }
attributes #23 = { nounwind allocsize(0) }
attributes #24 = { nounwind readnone }
attributes #25 = { nounwind readonly willreturn }
attributes #26 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !23, !24, !26, !27, !28, !30, !31, !32, !33, !34, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !57, !59, !60, !61, !62, !63, !64, !65, !66, !68, !69, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !147, !149, !150, !152, !153, !155, !157, !159, !160, !162, !163, !164, !165, !166, !168, !169, !171, !173, !174, !175, !177, !179, !181, !183, !185, !187, !188, !189, !191, !192, !193, !195, !197, !199, !201, !202, !203, !204, !206, !207, !208, !210, !211, !212, !213, !214, !216, !217, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !254, !256, !258, !260, !262, !264, !265, !267, !269, !271, !273}
!llvm.named.register.sp = !{!275}
!llvm.module.flags = !{!276, !277, !278, !279, !280, !281, !282, !283}
!llvm.ident = !{!284}

!0 = !{ptr @__tracepoint_iocost_iocg_activate, !1, !"__tracepoint_iocost_iocg_activate", i1 false, i1 false}
!1 = !{!"../include/trace/events/iocost.h", i32 62, i32 1}
!2 = !{ptr @__tracepoint_ptr_iocost_iocg_activate, !1, !"__tracepoint_ptr_iocost_iocg_activate", i1 false, i1 false}
!3 = !{ptr @__SCK__tp_func_iocost_iocg_activate, !1, !"__SCK__tp_func_iocost_iocg_activate", i1 false, i1 false}
!4 = !{ptr @__tracepoint_iocost_iocg_idle, !5, !"__tracepoint_iocost_iocg_idle", i1 false, i1 false}
!5 = !{!"../include/trace/events/iocost.h", i32 69, i32 1}
!6 = !{ptr @__tracepoint_ptr_iocost_iocg_idle, !5, !"__tracepoint_ptr_iocost_iocg_idle", i1 false, i1 false}
!7 = !{ptr @__SCK__tp_func_iocost_iocg_idle, !5, !"__SCK__tp_func_iocost_iocg_idle", i1 false, i1 false}
!8 = !{ptr @__tracepoint_iocost_inuse_shortage, !9, !"__tracepoint_iocost_inuse_shortage", i1 false, i1 false}
!9 = !{!"../include/trace/events/iocost.h", i32 112, i32 1}
!10 = !{ptr @__tracepoint_ptr_iocost_inuse_shortage, !9, !"__tracepoint_ptr_iocost_inuse_shortage", i1 false, i1 false}
!11 = !{ptr @__SCK__tp_func_iocost_inuse_shortage, !9, !"__SCK__tp_func_iocost_inuse_shortage", i1 false, i1 false}
!12 = !{ptr @__tracepoint_iocost_inuse_transfer, !13, !"__tracepoint_iocost_inuse_transfer", i1 false, i1 false}
!13 = !{!"../include/trace/events/iocost.h", i32 122, i32 1}
!14 = !{ptr @__tracepoint_ptr_iocost_inuse_transfer, !13, !"__tracepoint_ptr_iocost_inuse_transfer", i1 false, i1 false}
!15 = !{ptr @__SCK__tp_func_iocost_inuse_transfer, !13, !"__SCK__tp_func_iocost_inuse_transfer", i1 false, i1 false}
!16 = !{ptr @__tracepoint_iocost_inuse_adjust, !17, !"__tracepoint_iocost_inuse_adjust", i1 false, i1 false}
!17 = !{!"../include/trace/events/iocost.h", i32 132, i32 1}
!18 = !{ptr @__tracepoint_ptr_iocost_inuse_adjust, !17, !"__tracepoint_ptr_iocost_inuse_adjust", i1 false, i1 false}
!19 = !{ptr @__SCK__tp_func_iocost_inuse_adjust, !17, !"__SCK__tp_func_iocost_inuse_adjust", i1 false, i1 false}
!20 = !{ptr @__tracepoint_iocost_ioc_vrate_adj, !21, !"__tracepoint_iocost_ioc_vrate_adj", i1 false, i1 false}
!21 = !{!"../include/trace/events/iocost.h", i32 142, i32 1}
!22 = !{ptr @__tracepoint_ptr_iocost_ioc_vrate_adj, !21, !"__tracepoint_ptr_iocost_ioc_vrate_adj", i1 false, i1 false}
!23 = !{ptr @__SCK__tp_func_iocost_ioc_vrate_adj, !21, !"__SCK__tp_func_iocost_ioc_vrate_adj", i1 false, i1 false}
!24 = !{ptr @__tracepoint_iocost_iocg_forgive_debt, !25, !"__tracepoint_iocost_iocg_forgive_debt", i1 false, i1 false}
!25 = !{!"../include/trace/events/iocost.h", i32 181, i32 1}
!26 = !{ptr @__tracepoint_ptr_iocost_iocg_forgive_debt, !25, !"__tracepoint_ptr_iocost_iocg_forgive_debt", i1 false, i1 false}
!27 = !{ptr @__SCK__tp_func_iocost_iocg_forgive_debt, !25, !"__SCK__tp_func_iocost_iocg_forgive_debt", i1 false, i1 false}
!28 = !{ptr @event_class_iocost_iocg_state, !29, !"event_class_iocost_iocg_state", i1 false, i1 false}
!29 = !{!"../include/trace/events/iocost.h", i32 14, i32 1}
!30 = !{ptr @event_iocost_iocg_activate, !1, !"event_iocost_iocg_activate", i1 false, i1 false}
!31 = !{ptr @__event_iocost_iocg_activate, !1, !"__event_iocost_iocg_activate", i1 false, i1 false}
!32 = !{ptr @event_iocost_iocg_idle, !5, !"event_iocost_iocg_idle", i1 false, i1 false}
!33 = !{ptr @__event_iocost_iocg_idle, !5, !"__event_iocost_iocg_idle", i1 false, i1 false}
!34 = !{ptr @event_class_iocg_inuse_update, !35, !"event_class_iocg_inuse_update", i1 false, i1 false}
!35 = !{!"../include/trace/events/iocost.h", i32 76, i32 1}
!36 = !{ptr @event_iocost_inuse_shortage, !9, !"event_iocost_inuse_shortage", i1 false, i1 false}
!37 = !{ptr @__event_iocost_inuse_shortage, !9, !"__event_iocost_inuse_shortage", i1 false, i1 false}
!38 = !{ptr @event_iocost_inuse_transfer, !13, !"event_iocost_inuse_transfer", i1 false, i1 false}
!39 = !{ptr @__event_iocost_inuse_transfer, !13, !"__event_iocost_inuse_transfer", i1 false, i1 false}
!40 = !{ptr @event_iocost_inuse_adjust, !17, !"event_iocost_inuse_adjust", i1 false, i1 false}
!41 = !{ptr @__event_iocost_inuse_adjust, !17, !"__event_iocost_inuse_adjust", i1 false, i1 false}
!42 = !{ptr @event_class_iocost_ioc_vrate_adj, !21, !"event_class_iocost_ioc_vrate_adj", i1 false, i1 false}
!43 = !{ptr @event_iocost_ioc_vrate_adj, !21, !"event_iocost_ioc_vrate_adj", i1 false, i1 false}
!44 = !{ptr @__event_iocost_ioc_vrate_adj, !21, !"__event_iocost_ioc_vrate_adj", i1 false, i1 false}
!45 = !{ptr @event_class_iocost_iocg_forgive_debt, !25, !"event_class_iocost_iocg_forgive_debt", i1 false, i1 false}
!46 = !{ptr @event_iocost_iocg_forgive_debt, !25, !"event_iocost_iocg_forgive_debt", i1 false, i1 false}
!47 = !{ptr @__event_iocost_iocg_forgive_debt, !25, !"__event_iocost_iocg_forgive_debt", i1 false, i1 false}
!48 = !{ptr @__bpf_trace_tp_map_iocost_iocg_activate, !1, !"__bpf_trace_tp_map_iocost_iocg_activate", i1 false, i1 false}
!49 = !{ptr @__bpf_trace_tp_map_iocost_iocg_idle, !5, !"__bpf_trace_tp_map_iocost_iocg_idle", i1 false, i1 false}
!50 = !{ptr @__bpf_trace_tp_map_iocost_inuse_shortage, !9, !"__bpf_trace_tp_map_iocost_inuse_shortage", i1 false, i1 false}
!51 = !{ptr @__bpf_trace_tp_map_iocost_inuse_transfer, !13, !"__bpf_trace_tp_map_iocost_inuse_transfer", i1 false, i1 false}
!52 = !{ptr @__bpf_trace_tp_map_iocost_inuse_adjust, !17, !"__bpf_trace_tp_map_iocost_inuse_adjust", i1 false, i1 false}
!53 = !{ptr @__bpf_trace_tp_map_iocost_ioc_vrate_adj, !21, !"__bpf_trace_tp_map_iocost_ioc_vrate_adj", i1 false, i1 false}
!54 = !{ptr @__bpf_trace_tp_map_iocost_iocg_forgive_debt, !25, !"__bpf_trace_tp_map_iocost_iocg_forgive_debt", i1 false, i1 false}
!55 = !{ptr @__initcall__kmod_blk_iocost__427_3452_ioc_init6, !56, !"__initcall__kmod_blk_iocost__427_3452_ioc_init6", i1 false, i1 false}
!56 = !{!"../block/blk-iocost.c", i32 3452, i32 1}
!57 = !{ptr @__exitcall_ioc_exit, !58, !"__exitcall_ioc_exit", i1 false, i1 false}
!58 = !{!"../block/blk-iocost.c", i32 3453, i32 1}
!59 = !{ptr @__tpstrtab_iocost_iocg_activate, !1, !"__tpstrtab_iocost_iocg_activate", i1 false, i1 false}
!60 = !{ptr @__tpstrtab_iocost_iocg_idle, !5, !"__tpstrtab_iocost_iocg_idle", i1 false, i1 false}
!61 = !{ptr @__tpstrtab_iocost_inuse_shortage, !9, !"__tpstrtab_iocost_inuse_shortage", i1 false, i1 false}
!62 = !{ptr @__tpstrtab_iocost_inuse_transfer, !13, !"__tpstrtab_iocost_inuse_transfer", i1 false, i1 false}
!63 = !{ptr @__tpstrtab_iocost_inuse_adjust, !17, !"__tpstrtab_iocost_inuse_adjust", i1 false, i1 false}
!64 = !{ptr @__tpstrtab_iocost_ioc_vrate_adj, !21, !"__tpstrtab_iocost_ioc_vrate_adj", i1 false, i1 false}
!65 = !{ptr @__tpstrtab_iocost_iocg_forgive_debt, !25, !"__tpstrtab_iocost_iocg_forgive_debt", i1 false, i1 false}
!66 = !{ptr @str__iocost__trace_system_name, !67, !"str__iocost__trace_system_name", i1 false, i1 false}
!67 = !{!"../include/trace/trace_events.h", i32 36, i32 1}
!68 = !{ptr @.str, !29, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @.str.1, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../block/blk-iocost.c", i32 673, i32 10}
!71 = !{ptr @.str.2, !29, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.3, !29, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @.str.4, !29, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @.str.5, !29, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @.str.6, !29, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @.str.15, !29, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @.str.16, !29, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @trace_event_fields_iocost_iocg_state, !29, !"trace_event_fields_iocost_iocg_state", i1 false, i1 false}
!87 = !{ptr @trace_event_type_funcs_iocost_iocg_state, !29, !"trace_event_type_funcs_iocost_iocg_state", i1 false, i1 false}
!88 = !{ptr @.str.17, !29, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @print_fmt_iocost_iocg_state, !29, !"print_fmt_iocost_iocg_state", i1 false, i1 false}
!90 = !{ptr @.str.18, !35, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @.str.19, !35, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @.str.20, !35, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @.str.21, !35, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @trace_event_fields_iocg_inuse_update, !35, !"trace_event_fields_iocg_inuse_update", i1 false, i1 false}
!95 = !{ptr @trace_event_type_funcs_iocg_inuse_update, !35, !"trace_event_type_funcs_iocg_inuse_update", i1 false, i1 false}
!96 = !{ptr @.str.22, !35, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @print_fmt_iocg_inuse_update, !35, !"print_fmt_iocg_inuse_update", i1 false, i1 false}
!98 = !{ptr @.str.23, !21, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @.str.24, !21, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @.str.25, !21, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @.str.26, !21, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @.str.27, !21, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @.str.28, !21, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @.str.29, !21, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @.str.30, !21, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @.str.31, !21, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @trace_event_fields_iocost_ioc_vrate_adj, !21, !"trace_event_fields_iocost_ioc_vrate_adj", i1 false, i1 false}
!108 = !{ptr @trace_event_type_funcs_iocost_ioc_vrate_adj, !21, !"trace_event_type_funcs_iocost_ioc_vrate_adj", i1 false, i1 false}
!109 = !{ptr @.str.32, !21, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @print_fmt_iocost_ioc_vrate_adj, !21, !"print_fmt_iocost_ioc_vrate_adj", i1 false, i1 false}
!111 = !{ptr @.str.33, !25, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @.str.34, !25, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @.str.35, !25, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @.str.36, !25, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @.str.37, !25, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @trace_event_fields_iocost_iocg_forgive_debt, !25, !"trace_event_fields_iocost_iocg_forgive_debt", i1 false, i1 false}
!117 = !{ptr @trace_event_type_funcs_iocost_iocg_forgive_debt, !25, !"trace_event_type_funcs_iocost_iocg_forgive_debt", i1 false, i1 false}
!118 = !{ptr @.str.38, !25, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @print_fmt_iocost_iocg_forgive_debt, !25, !"print_fmt_iocost_iocg_forgive_debt", i1 false, i1 false}
!120 = !{ptr @blkcg_policy_iocost, !121, !"blkcg_policy_iocost", i1 false, i1 false}
!121 = !{!"../block/blk-iocost.c", i32 3432, i32 28}
!122 = !{ptr @ioc_files, !123, !"ioc_files", i1 false, i1 false}
!123 = !{!"../block/blk-iocost.c", i32 3410, i32 22}
!124 = !{ptr @.str.39, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../block/blk-iocost.c", i32 3040, i32 17}
!126 = !{ptr @.str.40, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../block/blk-iocost.c", i32 3030, i32 18}
!128 = !{ptr @.str.41, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../block/blk-iocost.c", i32 3060, i32 20}
!130 = !{ptr @.str.42, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../block/blk-iocost.c", i32 3060, i32 54}
!132 = !{ptr @.str.43, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../block/blk-iocost.c", i32 3089, i32 25}
!134 = !{ptr @.str.44, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../block/blk-iocost.c", i32 1233, i32 2}
!136 = !{ptr @.str.45, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../block/blk-iocost.c", i32 3121, i32 17}
!138 = !{ptr @.str.46, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../block/blk-iocost.c", i32 3122, i32 50}
!140 = !{ptr @.str.47, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../block/blk-iocost.c", i32 3122, i32 59}
!142 = !{ptr @.str.48, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../block/blk-iocost.c", i32 3189, i32 29}
!144 = !{ptr @blk_iocost_init.__key, !145, !"__key", i1 false, i1 false}
!145 = !{!"../block/blk-iocost.c", i32 2863, i32 2}
!146 = !{ptr @.str.49, !145, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @blk_iocost_init.__key.50, !148, !"__key", i1 false, i1 false}
!148 = !{!"../block/blk-iocost.c", i32 2864, i32 2}
!149 = !{ptr @.str.51, !148, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @blk_iocost_init.__key.52, !151, !"__key", i1 false, i1 false}
!151 = !{!"../block/blk-iocost.c", i32 2870, i32 2}
!152 = !{ptr @.str.53, !151, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @ioc_rqos_ops, !154, !"ioc_rqos_ops", i1 false, i1 false}
!154 = !{!"../block/blk-iocost.c", i32 2823, i32 26}
!155 = distinct !{null, !156, !"__already_done", i1 false, i1 false}
!156 = !{!"../block/blk-iocost.c", i32 2682, i32 3}
!157 = !{ptr @.str.54, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../block/blk-iocost.c", i32 192, i32 8}
!159 = !{ptr @trace_iocg_path_lock, !158, !"trace_iocg_path_lock", i1 false, i1 false}
!160 = !{ptr @trace_iocg_path, !161, !"trace_iocg_path", i1 false, i1 false}
!161 = !{!"../block/blk-iocost.c", i32 193, i32 13}
!162 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!163 = !{ptr @.str.55, !1, !"<string literal>", i1 false, i1 false}
!164 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!165 = !{ptr @.str.56, !1, !"<string literal>", i1 false, i1 false}
!166 = distinct !{null, !167, !"__already_done", i1 false, i1 false}
!167 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!168 = !{ptr @.str.57, !167, !"<string literal>", i1 false, i1 false}
!169 = distinct !{null, !170, !"__already_done", i1 false, i1 false}
!170 = !{!"../block/blk-iocost.c", i32 1048, i32 2}
!171 = !{ptr @.str.58, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../include/linux/seqlock.h", i32 277, i32 1}
!173 = distinct !{null, !17, !"__already_done", i1 false, i1 false}
!174 = distinct !{null, !17, !"__warned", i1 false, i1 false}
!175 = distinct !{null, !176, !"__already_done", i1 false, i1 false}
!176 = !{!"../block/blk-iocost.c", i32 1390, i32 2}
!177 = distinct !{null, !178, !"__already_done", i1 false, i1 false}
!178 = !{!"../block/blk-iocost.c", i32 1525, i32 6}
!179 = distinct !{null, !180, !"__already_done", i1 false, i1 false}
!180 = !{!"../block/blk-iocost.c", i32 1415, i32 2}
!181 = distinct !{null, !182, !"__already_done", i1 false, i1 false}
!182 = !{!"../block/blk-iocost.c", i32 1416, i32 2}
!183 = distinct !{null, !184, !"__already_done", i1 false, i1 false}
!184 = !{!"../block/blk-iocost.c", i32 2232, i32 6}
!185 = distinct !{null, !186, !"__already_done", i1 false, i1 false}
!186 = !{!"../block/blk-iocost.c", i32 2280, i32 3}
!187 = distinct !{null, !5, !"__already_done", i1 false, i1 false}
!188 = distinct !{null, !5, !"__warned", i1 false, i1 false}
!189 = distinct !{null, !190, !"__already_done", i1 false, i1 false}
!190 = !{!"../block/blk-iocost.c", i32 1627, i32 2}
!191 = distinct !{null, !9, !"__already_done", i1 false, i1 false}
!192 = distinct !{null, !9, !"__warned", i1 false, i1 false}
!193 = distinct !{null, !194, !"__already_done", i1 false, i1 false}
!194 = !{!"../block/blk-iocost.c", i32 1858, i32 3}
!195 = distinct !{null, !196, !"__already_done", i1 false, i1 false}
!196 = !{!"../block/blk-iocost.c", i32 1881, i32 2}
!197 = distinct !{null, !198, !"__already_done", i1 false, i1 false}
!198 = !{!"../block/blk-iocost.c", i32 1928, i32 7}
!199 = !{ptr @.str.63, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../block/blk-iocost.c", i32 1931, i32 4}
!201 = !{ptr @.str.64, !200, !"<string literal>", i1 false, i1 false}
!202 = !{ptr @transfer_surpluses._entry, !200, !"_entry", i1 false, i1 false}
!203 = !{ptr @transfer_surpluses._entry_ptr, !200, !"_entry_ptr", i1 false, i1 false}
!204 = !{ptr @.str.66, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../block/blk-iocost.c", i32 1933, i32 4}
!206 = !{ptr @transfer_surpluses._entry.65, !205, !"_entry", i1 false, i1 false}
!207 = !{ptr @transfer_surpluses._entry_ptr.67, !205, !"_entry_ptr", i1 false, i1 false}
!208 = distinct !{null, !209, !"__already_done", i1 false, i1 false}
!209 = !{!"../block/blk-iocost.c", i32 2017, i32 4}
!210 = distinct !{null, !13, !"__already_done", i1 false, i1 false}
!211 = distinct !{null, !13, !"__warned", i1 false, i1 false}
!212 = distinct !{null, !21, !"__already_done", i1 false, i1 false}
!213 = distinct !{null, !21, !"__warned", i1 false, i1 false}
!214 = !{ptr @vrate_adj_pct, !215, !"vrate_adj_pct", i1 false, i1 false}
!215 = !{!"../block/blk-iocost.c", i32 649, i32 12}
!216 = distinct !{null, !25, !"__already_done", i1 false, i1 false}
!217 = distinct !{null, !25, !"__warned", i1 false, i1 false}
!218 = !{ptr @.str.69, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../block/blk-iocost.c", i32 3146, i32 17}
!220 = !{ptr @.str.70, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../block/blk-iocost.c", i32 3147, i32 15}
!222 = !{ptr @qos_ctrl_tokens, !223, !"qos_ctrl_tokens", i1 false, i1 false}
!223 = !{!"../block/blk-iocost.c", i32 3145, i32 28}
!224 = !{ptr @.str.71, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../block/blk-iocost.c", i32 3152, i32 15}
!226 = !{ptr @.str.72, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../block/blk-iocost.c", i32 3153, i32 15}
!228 = !{ptr @.str.73, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../block/blk-iocost.c", i32 3154, i32 15}
!230 = !{ptr @.str.74, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../block/blk-iocost.c", i32 3155, i32 15}
!232 = !{ptr @.str.75, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../block/blk-iocost.c", i32 3156, i32 14}
!234 = !{ptr @.str.76, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../block/blk-iocost.c", i32 3157, i32 14}
!236 = !{ptr @qos_tokens, !237, !"qos_tokens", i1 false, i1 false}
!237 = !{!"../block/blk-iocost.c", i32 3151, i32 28}
!238 = !{ptr @autop, !239, !"autop", i1 false, i1 false}
!239 = !{!"../block/blk-iocost.c", i32 576, i32 32}
!240 = !{ptr @.str.77, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../block/blk-iocost.c", i32 3294, i32 17}
!242 = !{ptr @.str.78, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../block/blk-iocost.c", i32 3376, i32 20}
!244 = !{ptr @.str.79, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../block/blk-iocost.c", i32 3314, i32 17}
!246 = !{ptr @cost_ctrl_tokens, !247, !"cost_ctrl_tokens", i1 false, i1 false}
!247 = !{!"../block/blk-iocost.c", i32 3312, i32 28}
!248 = !{ptr @.str.80, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../block/blk-iocost.c", i32 3319, i32 19}
!250 = !{ptr @.str.81, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../block/blk-iocost.c", i32 3320, i32 22}
!252 = !{ptr @.str.82, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../block/blk-iocost.c", i32 3321, i32 23}
!254 = !{ptr @.str.83, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../block/blk-iocost.c", i32 3322, i32 19}
!256 = !{ptr @.str.84, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../block/blk-iocost.c", i32 3323, i32 22}
!258 = !{ptr @.str.85, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../block/blk-iocost.c", i32 3324, i32 23}
!260 = !{ptr @i_lcoef_tokens, !261, !"i_lcoef_tokens", i1 false, i1 false}
!261 = !{!"../block/blk-iocost.c", i32 3318, i32 28}
!262 = !{ptr @ioc_pd_init.__key, !263, !"__key", i1 false, i1 false}
!263 = !{!"../block/blk-iocost.c", i32 2954, i32 2}
!264 = !{ptr @.str.86, !263, !"<string literal>", i1 false, i1 false}
!265 = distinct !{null, !266, !"__already_done", i1 false, i1 false}
!266 = !{!"../block/blk-iocost.c", i32 2987, i32 3}
!267 = distinct !{null, !268, !"__already_done", i1 false, i1 false}
!268 = !{!"../block/blk-iocost.c", i32 2988, i32 3}
!269 = !{ptr @.str.88, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../block/blk-iocost.c", i32 3010, i32 17}
!271 = !{ptr @.str.89, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../block/blk-iocost.c", i32 3013, i32 16}
!273 = !{ptr @.str.90, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../block/blk-iocost.c", i32 3016, i32 17}
!275 = !{!"sp"}
!276 = !{i32 1, !"wchar_size", i32 2}
!277 = !{i32 1, !"min_enum_size", i32 4}
!278 = !{i32 8, !"branch-target-enforcement", i32 0}
!279 = !{i32 8, !"sign-return-address", i32 0}
!280 = !{i32 8, !"sign-return-address-all", i32 0}
!281 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!282 = !{i32 7, !"uwtable", i32 1}
!283 = !{i32 7, !"frame-pointer", i32 2}
!284 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!285 = !{!"branch_weights", i32 2000, i32 1}
!286 = !{!"branch_weights", i32 1, i32 2000}
!287 = !{!"auto-init"}
!288 = !{i8 0, i8 2}
!289 = !{i64 2156344578}
!290 = !{i64 2148306738, i64 2148306764, i64 2148306793, i64 2148306827, i64 2148306858, i64 2148306881}
!291 = !{i64 1211728, i64 1211755, i64 1211777, i64 1211805}
!292 = !{i64 1212136, i64 1212163, i64 1212196, i64 1212217, i64 1212244, i64 1212270}
!293 = !{i64 699219, i64 699280}
!294 = !{i64 701951}
!295 = !{i64 702236}
!296 = !{i64 2156317267}
!297 = !{i64 2156317109}
!298 = !{i64 2156317437}
!299 = !{i64 2150068874}
!300 = !{i64 2148788553, i64 2148788558, i64 2148788571, i64 2148788615, i64 2148788649, i64 2148788670}
!301 = !{i64 2156577283}
!302 = !{i64 2154893968}
!303 = !{i64 2154895119}
!304 = !{i64 2156578738}
!305 = !{i64 2156579987}
!306 = !{i64 2156374856}
!307 = !{i64 2156376007}
!308 = !{i64 2148408561}
!309 = !{i64 790474, i64 790498, i64 790519, i64 790536, i64 790553}
!310 = !{i64 2148408787}
!311 = !{i64 2148309203, i64 2148309229, i64 2148309258, i64 2148309292, i64 2148309323, i64 2148309346}
!312 = !{i64 2148867518}
!313 = !{i64 2154977970}
!314 = !{i64 2154978267}
!315 = !{i64 2149461766}
!316 = !{i64 2149462802}
!317 = !{i64 2150069199}
!318 = !{i64 2150069524}
!319 = !{i64 2156344743}
!320 = !{i64 2155058018}
!321 = !{i64 2155058353}
!322 = !{i64 2155015285}
!323 = !{i64 2155015624}
!324 = !{i64 2148697272, i64 2148697552, i64 2148697886, i64 2148698220}
!325 = !{i64 2154996389}
!326 = !{i64 2154996678}
!327 = !{i64 2155038720}
!328 = !{i64 2155039059}
!329 = !{i64 2155076836}
!330 = !{i64 2155077169}
!331 = !{i64 2155100384}
!332 = !{i64 2155100735}
