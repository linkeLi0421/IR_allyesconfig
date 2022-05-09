; ModuleID = '/llk/IR_all_yes/mm/oom_kill.c_pt.bc'
source_filename = "../mm/oom_kill.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+register_oom_notifier\22, \22a\22\09"
module asm "\09.weak\09__crc_register_oom_notifier\09\09\09\09"
module asm "\09.long\09__crc_register_oom_notifier\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_register_oom_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22register_oom_notifier\22\09\09\09\09\09"
module asm "__kstrtabns_register_oom_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+unregister_oom_notifier\22, \22a\22\09"
module asm "\09.weak\09__crc_unregister_oom_notifier\09\09\09\09"
module asm "\09.long\09__crc_unregister_oom_notifier\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_unregister_oom_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22unregister_oom_notifier\22\09\09\09\09\09"
module asm "__kstrtabns_unregister_oom_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.static_call_key = type { ptr }
%struct.atomic_t = type { i32 }
%struct.trace_eval_map = type { ptr, ptr, i32 }
%struct.trace_event_fields = type { ptr, %union.anon.19 }
%union.anon.19 = type { %struct.anon.20 }
%struct.anon.20 = type { ptr, i32, i32, i32, i32 }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.21, %struct.trace_event, ptr, ptr, %union.anon.22, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.21 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.22 = type { ptr }
%union.anon.112 = type { %struct.bpf_raw_event_map }
%struct.bpf_raw_event_map = type { ptr, ptr, i32, i32, [16 x i8] }
%union.anon.113 = type { %struct.bpf_raw_event_map }
%union.anon.114 = type { %struct.bpf_raw_event_map }
%union.anon.115 = type { %struct.bpf_raw_event_map }
%union.anon.116 = type { %struct.bpf_raw_event_map }
%union.anon.117 = type { %struct.bpf_raw_event_map }
%union.anon.118 = type { %struct.bpf_raw_event_map }
%union.anon.119 = type { %struct.bpf_raw_event_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.10 }
%union.anon.10 = type { %struct.raw_spinlock }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.syscall_metadata = type { ptr, i32, i32, ptr, ptr, %struct.list_head, ptr, ptr }
%struct.trace_print_flags = type { i32, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon }
%union.anon = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.100, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.0 }
%struct.llist_node = type { ptr }
%union.anon.0 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.78 }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.100 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, ptr, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [16 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.42 }
%union.anon.42 = type { [5 x %struct.uid_gid_extent] }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.kgid_t = type { i32 }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.52, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.52 = type { %struct.anon.53 }
%struct.anon.53 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.vm_event_state = type { [76 x i32] }
%struct.static_key_true = type { %struct.static_key }
%struct.cgroup_root = type { ptr, i32, i32, %struct.cgroup, i64, %struct.atomic_t, %struct.list_head, i32, [4096 x i8], [64 x i8] }
%struct.cgroup = type { %struct.cgroup_subsys_state, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, %struct.cgroup_file, %struct.cgroup_file, i16, i16, i16, i16, [14 x ptr], ptr, %struct.list_head, [14 x %struct.list_head], ptr, ptr, ptr, %struct.list_head, %struct.cgroup_base_stat, %struct.cgroup_base_stat, %struct.prev_cputime, %struct.list_head, %struct.mutex, %struct.wait_queue_head, %struct.work_struct, %struct.psi_group, %struct.cgroup_bpf, %struct.atomic_t, %struct.cgroup_freezer_state, [0 x i64] }
%struct.cgroup_subsys_state = type { ptr, ptr, %struct.percpu_ref, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i64, %struct.atomic_t, %struct.work_struct, %struct.rcu_work, ptr }
%struct.percpu_ref = type { i32, ptr }
%struct.rcu_work = type { %struct.work_struct, %struct.callback_head, ptr }
%struct.cgroup_file = type { ptr, i32, %struct.timer_list }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.cgroup_base_stat = type { %struct.task_cputime }
%struct.task_cputime = type { i64, i64, i64 }
%struct.psi_group = type { %struct.mutex, ptr, [6 x i64], i64, i64, %struct.delayed_work, [2 x [6 x i64]], [6 x [3 x i32]], ptr, %struct.timer_list, %struct.wait_queue_head, %struct.atomic_t, %struct.mutex, %struct.list_head, [6 x i32], i32, i64, [6 x i64], i64, i64 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.cgroup_bpf = type { [23 x ptr], [23 x %struct.list_head], [23 x i32], %struct.list_head, ptr, %struct.percpu_ref, %struct.work_struct }
%struct.cgroup_freezer_state = type { i8, i32, i32, i32 }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.trace_event_raw_oom_score_adj_update = type { %struct.trace_entry, i32, [16 x i8], i16, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.signal_struct = type { %struct.refcount_struct, %struct.atomic_t, i32, %struct.list_head, %struct.wait_queue_head, ptr, %struct.sigpending, %struct.hlist_head, i32, i32, ptr, i32, i32, ptr, i8, i32, %struct.list_head, %struct.hrtimer, i64, [2 x %struct.cpu_itimer], %struct.thread_group_cputimer, %struct.posix_cputimers, [4 x ptr], ptr, i32, ptr, ptr, %struct.seqlock_t, i64, i64, i64, i64, i64, i64, %struct.prev_cputime, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.task_io_accounting, i64, [16 x %struct.rlimit], %struct.pacct_struct, ptr, i32, ptr, i8, i16, i16, ptr, %struct.mutex, %struct.rw_semaphore }
%struct.cpu_itimer = type { i64, i64 }
%struct.thread_group_cputimer = type { %struct.task_cputime_atomic }
%struct.task_cputime_atomic = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.rlimit = type { i32, i32 }
%struct.pacct_struct = type { i32, i32, i32, i64, i64, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.trace_event_raw_reclaim_retry_zone = type { %struct.trace_entry, i32, i32, i32, i32, i32, i32, i32, i8, [0 x i8] }
%struct.zoneref = type { ptr, i32 }
%struct.trace_event_raw_mark_victim = type { %struct.trace_entry, i32, [0 x i8] }
%struct.trace_event_raw_wake_reaper = type { %struct.trace_entry, i32, [0 x i8] }
%struct.trace_event_raw_start_task_reaping = type { %struct.trace_entry, i32, [0 x i8] }
%struct.trace_event_raw_finish_task_reaping = type { %struct.trace_entry, i32, [0 x i8] }
%struct.trace_event_raw_skip_task_reaping = type { %struct.trace_entry, i32, [0 x i8] }
%struct.trace_event_raw_compact_retry = type { %struct.trace_entry, i32, i32, i32, i32, i32, i8, [0 x i8] }
%struct.anon.3 = type { ptr, %struct.rb_root, i64, ptr, i32, i32, i32, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i32, i32, i32, %struct.atomic64_t, i32, i32, i32, i32, %struct.seqcount, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [42 x i32], %struct.mm_rss_stat, ptr, %struct.mm_context_t, i32, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.mm_rss_stat = type { [4 x %struct.atomic_t] }
%struct.mm_context_t = type { %struct.atomic64_t, i32, i32, i32, i32, i32 }
%struct.uprobes_state = type { ptr }
%struct.mmu_notifier_range = type { ptr, ptr, i32, i32, i32, i32, ptr }
%struct.mmu_gather = type { ptr, i32, i32, i16, i32, ptr, %struct.mmu_gather_batch, [8 x ptr] }
%struct.mmu_gather_batch = type { ptr, i32, i32, [0 x ptr] }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.4, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type { ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.oom_control = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32 }
%struct.mem_cgroup = type { %struct.cgroup_subsys_state, %struct.mem_cgroup_id, %struct.page_counter, %union.anon.101, %struct.page_counter, %struct.page_counter, %struct.work_struct, i32, %struct.vmpressure, i8, i8, i32, i32, i32, %struct.cgroup_file, %struct.cgroup_file, %struct.cgroup_file, %struct.mutex, %struct.mem_cgroup_thresholds, %struct.mem_cgroup_thresholds, %struct.list_head, i32, %struct.spinlock, i32, [20 x i8], %struct.memcg_padding, %struct.memcg_vmstats, [9 x %struct.atomic_t], [9 x %struct.atomic_t], i32, i8, i32, i32, ptr, %struct.list_head, [92 x i8], %struct.memcg_padding, %struct.atomic_t, ptr, ptr, %struct.list_head, %struct.wb_domain, [4 x %struct.memcg_cgwb_frn], %struct.list_head, %struct.spinlock, [0 x ptr], [84 x i8] }
%struct.mem_cgroup_id = type { i32, %struct.refcount_struct }
%union.anon.101 = type { %struct.page_counter }
%struct.page_counter = type { %struct.atomic_t, i32, i32, i32, i32, i32, %struct.atomic_t, %struct.atomic_t, i32, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr }
%struct.vmpressure = type { i32, i32, i32, i32, %struct.spinlock, %struct.list_head, %struct.mutex, %struct.work_struct }
%struct.mem_cgroup_thresholds = type { ptr, ptr }
%struct.memcg_vmstats = type { [44 x i32], [76 x i32], [44 x i32], [76 x i32] }
%struct.memcg_padding = type { [0 x i8] }
%struct.wb_domain = type { %struct.spinlock, %struct.fprop_global, %struct.timer_list, i32, i32, i32 }
%struct.fprop_global = type { %struct.percpu_counter, i32, %struct.seqcount }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.memcg_cgwb_frn = type { i64, i32, i64, %struct.wb_completion }
%struct.wb_completion = type { %struct.atomic_t, ptr }
%struct.percpu_ref_data = type { %struct.atomic_t, ptr, ptr, i8, %struct.callback_head, ptr }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.67 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.67 = type { %struct.callback_head }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, ptr, i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }

@__tpstrtab_oom_score_adj_update = internal constant [21 x i8] c"oom_score_adj_update\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_oom_score_adj_update = dso_local global %struct.static_call_key { ptr @__traceiter_oom_score_adj_update }, align 4
@__tracepoint_oom_score_adj_update = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_oom_score_adj_update, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_oom_score_adj_update, ptr null, ptr @__traceiter_oom_score_adj_update, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_oom_score_adj_update = internal constant ptr @__tracepoint_oom_score_adj_update, section "__tracepoints_ptrs", align 4
@__tpstrtab_reclaim_retry_zone = internal constant [19 x i8] c"reclaim_retry_zone\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_reclaim_retry_zone = dso_local global %struct.static_call_key { ptr @__traceiter_reclaim_retry_zone }, align 4
@__tracepoint_reclaim_retry_zone = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_reclaim_retry_zone, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_reclaim_retry_zone, ptr null, ptr @__traceiter_reclaim_retry_zone, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_reclaim_retry_zone = internal constant ptr @__tracepoint_reclaim_retry_zone, section "__tracepoints_ptrs", align 4
@__tpstrtab_mark_victim = internal constant [12 x i8] c"mark_victim\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_mark_victim = dso_local global %struct.static_call_key { ptr @__traceiter_mark_victim }, align 4
@__tracepoint_mark_victim = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_mark_victim, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_mark_victim, ptr null, ptr @__traceiter_mark_victim, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_mark_victim = internal constant ptr @__tracepoint_mark_victim, section "__tracepoints_ptrs", align 4
@__tpstrtab_wake_reaper = internal constant [12 x i8] c"wake_reaper\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_wake_reaper = dso_local global %struct.static_call_key { ptr @__traceiter_wake_reaper }, align 4
@__tracepoint_wake_reaper = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_wake_reaper, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_wake_reaper, ptr null, ptr @__traceiter_wake_reaper, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_wake_reaper = internal constant ptr @__tracepoint_wake_reaper, section "__tracepoints_ptrs", align 4
@__tpstrtab_start_task_reaping = internal constant [19 x i8] c"start_task_reaping\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_start_task_reaping = dso_local global %struct.static_call_key { ptr @__traceiter_start_task_reaping }, align 4
@__tracepoint_start_task_reaping = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_start_task_reaping, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_start_task_reaping, ptr null, ptr @__traceiter_start_task_reaping, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_start_task_reaping = internal constant ptr @__tracepoint_start_task_reaping, section "__tracepoints_ptrs", align 4
@__tpstrtab_finish_task_reaping = internal constant [20 x i8] c"finish_task_reaping\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_finish_task_reaping = dso_local global %struct.static_call_key { ptr @__traceiter_finish_task_reaping }, align 4
@__tracepoint_finish_task_reaping = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_finish_task_reaping, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_finish_task_reaping, ptr null, ptr @__traceiter_finish_task_reaping, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_finish_task_reaping = internal constant ptr @__tracepoint_finish_task_reaping, section "__tracepoints_ptrs", align 4
@__tpstrtab_skip_task_reaping = internal constant [18 x i8] c"skip_task_reaping\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_skip_task_reaping = dso_local global %struct.static_call_key { ptr @__traceiter_skip_task_reaping }, align 4
@__tracepoint_skip_task_reaping = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_skip_task_reaping, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_skip_task_reaping, ptr null, ptr @__traceiter_skip_task_reaping, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_skip_task_reaping = internal constant ptr @__tracepoint_skip_task_reaping, section "__tracepoints_ptrs", align 4
@__tpstrtab_compact_retry = internal constant [14 x i8] c"compact_retry\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_compact_retry = dso_local global %struct.static_call_key { ptr @__traceiter_compact_retry }, align 4
@__tracepoint_compact_retry = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_compact_retry, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_compact_retry, ptr null, ptr @__traceiter_compact_retry, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_compact_retry = internal constant ptr @__tracepoint_compact_retry, section "__tracepoints_ptrs", align 4
@str__oom__trace_system_name = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"oom\00", [28 x i8] zeroinitializer }, align 32
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"COMPACT_SKIPPED\00", [16 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_COMPACT_SKIPPED = internal global %struct.trace_eval_map { ptr @str__oom__trace_system_name, ptr @.str, i32 1 }, section ".init.data", align 4
@TRACE_SYSTEM_COMPACT_SKIPPED = internal global ptr @__TRACE_SYSTEM_COMPACT_SKIPPED, section "_ftrace_eval_map", align 4
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"COMPACT_DEFERRED\00", [47 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_COMPACT_DEFERRED = internal global %struct.trace_eval_map { ptr @str__oom__trace_system_name, ptr @.str.1, i32 2 }, section ".init.data", align 4
@TRACE_SYSTEM_COMPACT_DEFERRED = internal global ptr @__TRACE_SYSTEM_COMPACT_DEFERRED, section "_ftrace_eval_map", align 4
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"COMPACT_CONTINUE\00", [47 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_COMPACT_CONTINUE = internal global %struct.trace_eval_map { ptr @str__oom__trace_system_name, ptr @.str.2, i32 4 }, section ".init.data", align 4
@TRACE_SYSTEM_COMPACT_CONTINUE = internal global ptr @__TRACE_SYSTEM_COMPACT_CONTINUE, section "_ftrace_eval_map", align 4
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"COMPACT_SUCCESS\00", [16 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_COMPACT_SUCCESS = internal global %struct.trace_eval_map { ptr @str__oom__trace_system_name, ptr @.str.3, i32 8 }, section ".init.data", align 4
@TRACE_SYSTEM_COMPACT_SUCCESS = internal global ptr @__TRACE_SYSTEM_COMPACT_SUCCESS, section "_ftrace_eval_map", align 4
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"COMPACT_PARTIAL_SKIPPED\00", [40 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_COMPACT_PARTIAL_SKIPPED = internal global %struct.trace_eval_map { ptr @str__oom__trace_system_name, ptr @.str.4, i32 6 }, section ".init.data", align 4
@TRACE_SYSTEM_COMPACT_PARTIAL_SKIPPED = internal global ptr @__TRACE_SYSTEM_COMPACT_PARTIAL_SKIPPED, section "_ftrace_eval_map", align 4
@.str.5 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"COMPACT_COMPLETE\00", [47 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_COMPACT_COMPLETE = internal global %struct.trace_eval_map { ptr @str__oom__trace_system_name, ptr @.str.5, i32 5 }, section ".init.data", align 4
@TRACE_SYSTEM_COMPACT_COMPLETE = internal global ptr @__TRACE_SYSTEM_COMPACT_COMPLETE, section "_ftrace_eval_map", align 4
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"COMPACT_NO_SUITABLE_PAGE\00", [39 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_COMPACT_NO_SUITABLE_PAGE = internal global %struct.trace_eval_map { ptr @str__oom__trace_system_name, ptr @.str.6, i32 3 }, section ".init.data", align 4
@TRACE_SYSTEM_COMPACT_NO_SUITABLE_PAGE = internal global ptr @__TRACE_SYSTEM_COMPACT_NO_SUITABLE_PAGE, section "_ftrace_eval_map", align 4
@.str.7 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"COMPACT_NOT_SUITABLE_ZONE\00", [38 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_COMPACT_NOT_SUITABLE_ZONE = internal global %struct.trace_eval_map { ptr @str__oom__trace_system_name, ptr @.str.7, i32 0 }, section ".init.data", align 4
@TRACE_SYSTEM_COMPACT_NOT_SUITABLE_ZONE = internal global ptr @__TRACE_SYSTEM_COMPACT_NOT_SUITABLE_ZONE, section "_ftrace_eval_map", align 4
@.str.8 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"COMPACT_CONTENDED\00", [46 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_COMPACT_CONTENDED = internal global %struct.trace_eval_map { ptr @str__oom__trace_system_name, ptr @.str.8, i32 7 }, section ".init.data", align 4
@TRACE_SYSTEM_COMPACT_CONTENDED = internal global ptr @__TRACE_SYSTEM_COMPACT_CONTENDED, section "_ftrace_eval_map", align 4
@.str.9 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"COMPACT_PRIO_SYNC_FULL\00", [41 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_COMPACT_PRIO_SYNC_FULL = internal global %struct.trace_eval_map { ptr @str__oom__trace_system_name, ptr @.str.9, i32 0 }, section ".init.data", align 4
@TRACE_SYSTEM_COMPACT_PRIO_SYNC_FULL = internal global ptr @__TRACE_SYSTEM_COMPACT_PRIO_SYNC_FULL, section "_ftrace_eval_map", align 4
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"COMPACT_PRIO_SYNC_LIGHT\00", [40 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_COMPACT_PRIO_SYNC_LIGHT = internal global %struct.trace_eval_map { ptr @str__oom__trace_system_name, ptr @.str.10, i32 1 }, section ".init.data", align 4
@TRACE_SYSTEM_COMPACT_PRIO_SYNC_LIGHT = internal global ptr @__TRACE_SYSTEM_COMPACT_PRIO_SYNC_LIGHT, section "_ftrace_eval_map", align 4
@.str.11 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"COMPACT_PRIO_ASYNC\00", [45 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_COMPACT_PRIO_ASYNC = internal global %struct.trace_eval_map { ptr @str__oom__trace_system_name, ptr @.str.11, i32 2 }, section ".init.data", align 4
@TRACE_SYSTEM_COMPACT_PRIO_ASYNC = internal global ptr @__TRACE_SYSTEM_COMPACT_PRIO_ASYNC, section "_ftrace_eval_map", align 4
@.str.12 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ZONE_DMA\00", [23 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_ZONE_DMA = internal global %struct.trace_eval_map { ptr @str__oom__trace_system_name, ptr @.str.12, i32 0 }, section ".init.data", align 4
@TRACE_SYSTEM_ZONE_DMA = internal global ptr @__TRACE_SYSTEM_ZONE_DMA, section "_ftrace_eval_map", align 4
@.str.13 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ZONE_NORMAL\00", [20 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_ZONE_NORMAL = internal global %struct.trace_eval_map { ptr @str__oom__trace_system_name, ptr @.str.13, i32 1 }, section ".init.data", align 4
@TRACE_SYSTEM_ZONE_NORMAL = internal global ptr @__TRACE_SYSTEM_ZONE_NORMAL, section "_ftrace_eval_map", align 4
@.str.14 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ZONE_HIGHMEM\00", [19 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_ZONE_HIGHMEM = internal global %struct.trace_eval_map { ptr @str__oom__trace_system_name, ptr @.str.14, i32 2 }, section ".init.data", align 4
@TRACE_SYSTEM_ZONE_HIGHMEM = internal global ptr @__TRACE_SYSTEM_ZONE_HIGHMEM, section "_ftrace_eval_map", align 4
@.str.15 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ZONE_MOVABLE\00", [19 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_ZONE_MOVABLE = internal global %struct.trace_eval_map { ptr @str__oom__trace_system_name, ptr @.str.15, i32 3 }, section ".init.data", align 4
@TRACE_SYSTEM_ZONE_MOVABLE = internal global ptr @__TRACE_SYSTEM_ZONE_MOVABLE, section "_ftrace_eval_map", align 4
@.str.16 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"LRU_INACTIVE_ANON\00", [46 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_LRU_INACTIVE_ANON = internal global %struct.trace_eval_map { ptr @str__oom__trace_system_name, ptr @.str.16, i32 0 }, section ".init.data", align 4
@TRACE_SYSTEM_LRU_INACTIVE_ANON = internal global ptr @__TRACE_SYSTEM_LRU_INACTIVE_ANON, section "_ftrace_eval_map", align 4
@.str.17 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"LRU_ACTIVE_ANON\00", [16 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_LRU_ACTIVE_ANON = internal global %struct.trace_eval_map { ptr @str__oom__trace_system_name, ptr @.str.17, i32 1 }, section ".init.data", align 4
@TRACE_SYSTEM_LRU_ACTIVE_ANON = internal global ptr @__TRACE_SYSTEM_LRU_ACTIVE_ANON, section "_ftrace_eval_map", align 4
@.str.18 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"LRU_INACTIVE_FILE\00", [46 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_LRU_INACTIVE_FILE = internal global %struct.trace_eval_map { ptr @str__oom__trace_system_name, ptr @.str.18, i32 2 }, section ".init.data", align 4
@TRACE_SYSTEM_LRU_INACTIVE_FILE = internal global ptr @__TRACE_SYSTEM_LRU_INACTIVE_FILE, section "_ftrace_eval_map", align 4
@.str.19 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"LRU_ACTIVE_FILE\00", [16 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_LRU_ACTIVE_FILE = internal global %struct.trace_eval_map { ptr @str__oom__trace_system_name, ptr @.str.19, i32 3 }, section ".init.data", align 4
@TRACE_SYSTEM_LRU_ACTIVE_FILE = internal global ptr @__TRACE_SYSTEM_LRU_ACTIVE_FILE, section "_ftrace_eval_map", align 4
@.str.20 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"LRU_UNEVICTABLE\00", [16 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_LRU_UNEVICTABLE = internal global %struct.trace_eval_map { ptr @str__oom__trace_system_name, ptr @.str.20, i32 4 }, section ".init.data", align 4
@TRACE_SYSTEM_LRU_UNEVICTABLE = internal global ptr @__TRACE_SYSTEM_LRU_UNEVICTABLE, section "_ftrace_eval_map", align 4
@trace_event_fields_oom_score_adj_update = internal global { [4 x %struct.trace_event_fields], [32 x i8] } { [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.42, %union.anon.19 { %struct.anon.20 { ptr @.str.43, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.44, %union.anon.19 { %struct.anon.20 { ptr @.str.45, i32 16, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.46, %union.anon.19 { %struct.anon.20 { ptr @.str.47, i32 2, i32 2, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [32 x i8] zeroinitializer }, align 32
@event_class_oom_score_adj_update = internal global %struct.trace_event_class { ptr @str__oom__trace_system_name, ptr @trace_event_raw_event_oom_score_adj_update, ptr @perf_trace_oom_score_adj_update, ptr @trace_event_reg, ptr @trace_event_fields_oom_score_adj_update, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_oom_score_adj_update, i64 24), ptr getelementptr (i8, ptr @event_class_oom_score_adj_update, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_oom_score_adj_update = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_oom_score_adj_update, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_oom_score_adj_update = internal global { [76 x i8], [52 x i8] } { [76 x i8] c"\22pid=%d comm=%s oom_score_adj=%hd\22, REC->pid, REC->comm, REC->oom_score_adj\00", [52 x i8] zeroinitializer }, align 32
@event_oom_score_adj_update = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_oom_score_adj_update, %union.anon.21 { ptr @__tracepoint_oom_score_adj_update }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_oom_score_adj_update }, ptr @print_fmt_oom_score_adj_update, ptr null, %union.anon.22 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_oom_score_adj_update = internal global ptr @event_oom_score_adj_update, section "_ftrace_events", align 4
@trace_event_fields_reclaim_retry_zone = internal global { [9 x %struct.trace_event_fields], [40 x i8] } { [9 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.49, %union.anon.19 { %struct.anon.20 { ptr @.str.50, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.49, %union.anon.19 { %struct.anon.20 { ptr @.str.51, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.49, %union.anon.19 { %struct.anon.20 { ptr @.str.52, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.53, %union.anon.19 { %struct.anon.20 { ptr @.str.54, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.53, %union.anon.19 { %struct.anon.20 { ptr @.str.55, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.53, %union.anon.19 { %struct.anon.20 { ptr @.str.56, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.49, %union.anon.19 { %struct.anon.20 { ptr @.str.57, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.58, %union.anon.19 { %struct.anon.20 { ptr @.str.59, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [40 x i8] zeroinitializer }, align 32
@event_class_reclaim_retry_zone = internal global %struct.trace_event_class { ptr @str__oom__trace_system_name, ptr @trace_event_raw_event_reclaim_retry_zone, ptr @perf_trace_reclaim_retry_zone, ptr @trace_event_reg, ptr @trace_event_fields_reclaim_retry_zone, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_reclaim_retry_zone, i64 24), ptr getelementptr (i8, ptr @event_class_reclaim_retry_zone, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_reclaim_retry_zone = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_reclaim_retry_zone, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_reclaim_retry_zone = internal global { [355 x i8], [93 x i8] } { [355 x i8] c"\22node=%d zone=%-8s order=%d reclaimable=%lu available=%lu min_wmark=%lu no_progress_loops=%d wmark_check=%d\22, REC->node, __print_symbolic(REC->zone_idx, {ZONE_DMA, \22DMA\22}, {ZONE_NORMAL, \22Normal\22}, {ZONE_HIGHMEM, \22HighMem\22}, {ZONE_MOVABLE, \22Movable\22}), REC->order, REC->reclaimable, REC->available, REC->min_wmark, REC->no_progress_loops, REC->wmark_check\00", [93 x i8] zeroinitializer }, align 32
@event_reclaim_retry_zone = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_reclaim_retry_zone, %union.anon.21 { ptr @__tracepoint_reclaim_retry_zone }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_reclaim_retry_zone }, ptr @print_fmt_reclaim_retry_zone, ptr null, %union.anon.22 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_reclaim_retry_zone = internal global ptr @event_reclaim_retry_zone, section "_ftrace_events", align 4
@trace_event_fields_mark_victim = internal global { [2 x %struct.trace_event_fields], [48 x i8] } { [2 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.49, %union.anon.19 { %struct.anon.20 { ptr @.str.43, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [48 x i8] zeroinitializer }, align 32
@event_class_mark_victim = internal global %struct.trace_event_class { ptr @str__oom__trace_system_name, ptr @trace_event_raw_event_mark_victim, ptr @perf_trace_mark_victim, ptr @trace_event_reg, ptr @trace_event_fields_mark_victim, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_mark_victim, i64 24), ptr getelementptr (i8, ptr @event_class_mark_victim, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_mark_victim = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_mark_victim, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_mark_victim = internal global { [19 x i8], [45 x i8] } { [19 x i8] c"\22pid=%d\22, REC->pid\00", [45 x i8] zeroinitializer }, align 32
@event_mark_victim = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_mark_victim, %union.anon.21 { ptr @__tracepoint_mark_victim }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_mark_victim }, ptr @print_fmt_mark_victim, ptr null, %union.anon.22 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_mark_victim = internal global ptr @event_mark_victim, section "_ftrace_events", align 4
@trace_event_fields_wake_reaper = internal global { [2 x %struct.trace_event_fields], [48 x i8] } { [2 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.49, %union.anon.19 { %struct.anon.20 { ptr @.str.43, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [48 x i8] zeroinitializer }, align 32
@event_class_wake_reaper = internal global %struct.trace_event_class { ptr @str__oom__trace_system_name, ptr @trace_event_raw_event_wake_reaper, ptr @perf_trace_wake_reaper, ptr @trace_event_reg, ptr @trace_event_fields_wake_reaper, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_wake_reaper, i64 24), ptr getelementptr (i8, ptr @event_class_wake_reaper, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_wake_reaper = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_wake_reaper, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_wake_reaper = internal global { [19 x i8], [45 x i8] } { [19 x i8] c"\22pid=%d\22, REC->pid\00", [45 x i8] zeroinitializer }, align 32
@event_wake_reaper = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_wake_reaper, %union.anon.21 { ptr @__tracepoint_wake_reaper }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_wake_reaper }, ptr @print_fmt_wake_reaper, ptr null, %union.anon.22 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_wake_reaper = internal global ptr @event_wake_reaper, section "_ftrace_events", align 4
@trace_event_fields_start_task_reaping = internal global { [2 x %struct.trace_event_fields], [48 x i8] } { [2 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.49, %union.anon.19 { %struct.anon.20 { ptr @.str.43, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [48 x i8] zeroinitializer }, align 32
@event_class_start_task_reaping = internal global %struct.trace_event_class { ptr @str__oom__trace_system_name, ptr @trace_event_raw_event_start_task_reaping, ptr @perf_trace_start_task_reaping, ptr @trace_event_reg, ptr @trace_event_fields_start_task_reaping, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_start_task_reaping, i64 24), ptr getelementptr (i8, ptr @event_class_start_task_reaping, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_start_task_reaping = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_start_task_reaping, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_start_task_reaping = internal global { [19 x i8], [45 x i8] } { [19 x i8] c"\22pid=%d\22, REC->pid\00", [45 x i8] zeroinitializer }, align 32
@event_start_task_reaping = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_start_task_reaping, %union.anon.21 { ptr @__tracepoint_start_task_reaping }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_start_task_reaping }, ptr @print_fmt_start_task_reaping, ptr null, %union.anon.22 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_start_task_reaping = internal global ptr @event_start_task_reaping, section "_ftrace_events", align 4
@trace_event_fields_finish_task_reaping = internal global { [2 x %struct.trace_event_fields], [48 x i8] } { [2 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.49, %union.anon.19 { %struct.anon.20 { ptr @.str.43, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [48 x i8] zeroinitializer }, align 32
@event_class_finish_task_reaping = internal global %struct.trace_event_class { ptr @str__oom__trace_system_name, ptr @trace_event_raw_event_finish_task_reaping, ptr @perf_trace_finish_task_reaping, ptr @trace_event_reg, ptr @trace_event_fields_finish_task_reaping, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_finish_task_reaping, i64 24), ptr getelementptr (i8, ptr @event_class_finish_task_reaping, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_finish_task_reaping = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_finish_task_reaping, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_finish_task_reaping = internal global { [19 x i8], [45 x i8] } { [19 x i8] c"\22pid=%d\22, REC->pid\00", [45 x i8] zeroinitializer }, align 32
@event_finish_task_reaping = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_finish_task_reaping, %union.anon.21 { ptr @__tracepoint_finish_task_reaping }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_finish_task_reaping }, ptr @print_fmt_finish_task_reaping, ptr null, %union.anon.22 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_finish_task_reaping = internal global ptr @event_finish_task_reaping, section "_ftrace_events", align 4
@trace_event_fields_skip_task_reaping = internal global { [2 x %struct.trace_event_fields], [48 x i8] } { [2 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.49, %union.anon.19 { %struct.anon.20 { ptr @.str.43, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [48 x i8] zeroinitializer }, align 32
@event_class_skip_task_reaping = internal global %struct.trace_event_class { ptr @str__oom__trace_system_name, ptr @trace_event_raw_event_skip_task_reaping, ptr @perf_trace_skip_task_reaping, ptr @trace_event_reg, ptr @trace_event_fields_skip_task_reaping, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_skip_task_reaping, i64 24), ptr getelementptr (i8, ptr @event_class_skip_task_reaping, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_skip_task_reaping = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_skip_task_reaping, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_skip_task_reaping = internal global { [19 x i8], [45 x i8] } { [19 x i8] c"\22pid=%d\22, REC->pid\00", [45 x i8] zeroinitializer }, align 32
@event_skip_task_reaping = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_skip_task_reaping, %union.anon.21 { ptr @__tracepoint_skip_task_reaping }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_skip_task_reaping }, ptr @print_fmt_skip_task_reaping, ptr null, %union.anon.22 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_skip_task_reaping = internal global ptr @event_skip_task_reaping, section "_ftrace_events", align 4
@trace_event_fields_compact_retry = internal global { [7 x %struct.trace_event_fields], [56 x i8] } { [7 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.49, %union.anon.19 { %struct.anon.20 { ptr @.str.52, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.49, %union.anon.19 { %struct.anon.20 { ptr @.str.66, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.49, %union.anon.19 { %struct.anon.20 { ptr @.str.67, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.49, %union.anon.19 { %struct.anon.20 { ptr @.str.68, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.49, %union.anon.19 { %struct.anon.20 { ptr @.str.69, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.58, %union.anon.19 { %struct.anon.20 { ptr @.str.70, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [56 x i8] zeroinitializer }, align 32
@event_class_compact_retry = internal global %struct.trace_event_class { ptr @str__oom__trace_system_name, ptr @trace_event_raw_event_compact_retry, ptr @perf_trace_compact_retry, ptr @trace_event_reg, ptr @trace_event_fields_compact_retry, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_compact_retry, i64 24), ptr getelementptr (i8, ptr @event_class_compact_retry, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_compact_retry = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_compact_retry, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_compact_retry = internal global { [404 x i8], [108 x i8] } { [404 x i8] c"\22order=%d priority=%s compaction_result=%s retries=%d max_retries=%d should_retry=%d\22, REC->order, __print_symbolic(REC->priority, {COMPACT_PRIO_SYNC_FULL, \22COMPACT_PRIO_SYNC_FULL\22}, {COMPACT_PRIO_SYNC_LIGHT, \22COMPACT_PRIO_SYNC_LIGHT\22}, {COMPACT_PRIO_ASYNC, \22COMPACT_PRIO_ASYNC\22}), __print_symbolic(REC->result, {1, \22failed\22}, {2, \22withdrawn\22}, {3, \22progress\22}), REC->retries, REC->max_retries, REC->ret\00", [108 x i8] zeroinitializer }, align 32
@event_compact_retry = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_compact_retry, %union.anon.21 { ptr @__tracepoint_compact_retry }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_compact_retry }, ptr @print_fmt_compact_retry, ptr null, %union.anon.22 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_compact_retry = internal global ptr @event_compact_retry, section "_ftrace_events", align 4
@__bpf_trace_tp_map_oom_score_adj_update = internal global %union.anon.112 { %struct.bpf_raw_event_map { ptr @__tracepoint_oom_score_adj_update, ptr @__bpf_trace_oom_score_adj_update, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_reclaim_retry_zone = internal global %union.anon.113 { %struct.bpf_raw_event_map { ptr @__tracepoint_reclaim_retry_zone, ptr @__bpf_trace_reclaim_retry_zone, i32 7, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_mark_victim = internal global %union.anon.114 { %struct.bpf_raw_event_map { ptr @__tracepoint_mark_victim, ptr @__bpf_trace_mark_victim, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_wake_reaper = internal global %union.anon.115 { %struct.bpf_raw_event_map { ptr @__tracepoint_wake_reaper, ptr @__bpf_trace_wake_reaper, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_start_task_reaping = internal global %union.anon.116 { %struct.bpf_raw_event_map { ptr @__tracepoint_start_task_reaping, ptr @__bpf_trace_start_task_reaping, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_finish_task_reaping = internal global %union.anon.117 { %struct.bpf_raw_event_map { ptr @__tracepoint_finish_task_reaping, ptr @__bpf_trace_finish_task_reaping, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_skip_task_reaping = internal global %union.anon.118 { %struct.bpf_raw_event_map { ptr @__tracepoint_skip_task_reaping, ptr @__bpf_trace_skip_task_reaping, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_compact_retry = internal global %union.anon.119 { %struct.bpf_raw_event_map { ptr @__tracepoint_compact_retry, ptr @__bpf_trace_compact_retry, i32 6, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@sysctl_oom_dump_tasks = dso_local global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"oom_lock.wait_lock\00", [45 x i8] zeroinitializer }, align 32
@oom_lock = dso_local global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.21, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @oom_lock, i64 52), ptr getelementptr (i8, ptr @oom_lock, i64 52) }, ptr @oom_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.22, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"oom_lock\00", [23 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"oom_adj_mutex.wait_lock\00", [40 x i8] zeroinitializer }, align 32
@oom_adj_mutex = dso_local global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.23, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @oom_adj_mutex, i64 52), ptr getelementptr (i8, ptr @oom_adj_mutex, i64 52) }, ptr @oom_adj_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.24, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"oom_adj_mutex\00", [18 x i8] zeroinitializer }, align 32
@find_lock_task_mm.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.25 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mm/oom_kill.c\00", [18 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@process_shares_mm.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__initcall__kmod_oom_kill__365_685_oom_init4 = internal global ptr @oom_init, section ".initcall4.init", align 4
@oom_victims = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@oom_victims_wait = internal global { %struct.wait_queue_head, [44 x i8] } { %struct.wait_queue_head { %struct.spinlock { %union.anon.10 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.92, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, %struct.list_head { ptr getelementptr (i8, ptr @oom_victims_wait, i64 44), ptr getelementptr (i8, ptr @oom_victims_wait, i64 44) } }, [44 x i8] zeroinitializer }, align 32
@oom_killer_disabled = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@oom_killer_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.25, i32 745, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\016OOM killer enabled.\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"oom_killer_enable\00", [46 x i8] zeroinitializer }, align 32
@oom_killer_enable._entry_ptr = internal global ptr @oom_killer_enable._entry, section ".printk_index", align 4
@oom_killer_disable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.25, i32 782, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\016OOM killer disabled.\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"oom_killer_disable\00", [45 x i8] zeroinitializer }, align 32
@oom_killer_disable._entry_ptr = internal global ptr @oom_killer_disable._entry, section ".printk_index", align 4
@oom_notify_list = internal global { %struct.blocking_notifier_head, [60 x i8] } { %struct.blocking_notifier_head { %struct.rw_semaphore { %struct.atomic_t zeroinitializer, %struct.atomic_t zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.93, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.list_head { ptr getelementptr (i8, ptr @oom_notify_list, i64 56), ptr getelementptr (i8, ptr @oom_notify_list, i64 56) }, ptr @oom_notify_list, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.94, i8 0, i8 4, i8 0, i32 0, i32 0 } }, ptr null }, [60 x i8] zeroinitializer }, align 32
@__kstrtab_register_oom_notifier = external dso_local constant [0 x i8], align 1
@__kstrtabns_register_oom_notifier = external dso_local constant [0 x i8], align 1
@__ksymtab_register_oom_notifier = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @register_oom_notifier to i32), ptr @__kstrtab_register_oom_notifier, ptr @__kstrtabns_register_oom_notifier }, section "___ksymtab_gpl+register_oom_notifier", align 4
@__kstrtab_unregister_oom_notifier = external dso_local constant [0 x i8], align 1
@__kstrtabns_unregister_oom_notifier = external dso_local constant [0 x i8], align 1
@__ksymtab_unregister_oom_notifier = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @unregister_oom_notifier to i32), ptr @__kstrtab_unregister_oom_notifier, ptr @__kstrtabns_unregister_oom_notifier }, section "___ksymtab_gpl+unregister_oom_notifier", align 4
@sysctl_oom_kill_allocating_task = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@.str.31 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Out of memory (oom_kill_allocating_task)\00", [55 x i8] zeroinitializer }, align 32
@out_of_memory._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.25, i32 1110, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\014Out of memory and no killable processes...\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"out_of_memory\00", [18 x i8] zeroinitializer }, align 32
@out_of_memory._entry_ptr = internal global ptr @out_of_memory._entry, section ".printk_index", align 4
@.str.34 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"System is deadlocked on memory\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Out of memory\00", [18 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Memory cgroup out of memory\00", [36 x i8] zeroinitializer }, align 32
@pagefault_out_of_memory.pfoom_rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.37, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pfoom_rs.lock\00", [18 x i8] zeroinitializer }, align 32
@__func__.pagefault_out_of_memory = private unnamed_addr constant [24 x i8] c"pagefault_out_of_memory\00", align 1
@pagefault_out_of_memory._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @__func__.pagefault_out_of_memory, ptr @.str.25, i32 1143, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\014Huh VM_FAULT_OOM leaked out to the #PF handler. Retrying PF\0A\00", [33 x i8] zeroinitializer }, align 32
@pagefault_out_of_memory._entry_ptr = internal global ptr @pagefault_out_of_memory._entry, section ".printk_index", align 4
@event_class_syscall_enter = external dso_local global %struct.trace_event_class, align 4
@.str.39 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"sys_enter_process_mrelease\00", [37 x i8] zeroinitializer }, align 32
@enter_syscall_print_funcs = external dso_local global %struct.trace_event_functions, align 4
@__syscall_meta__process_mrelease = internal global %struct.syscall_metadata { ptr @.str.41, i32 -1, i32 2, ptr @types__process_mrelease, ptr @args__process_mrelease, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__process_mrelease, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__process_mrelease, i64 20) }, ptr @event_enter__process_mrelease, ptr @event_exit__process_mrelease }, align 4
@event_enter__process_mrelease = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.21 { ptr @.str.39 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.22 zeroinitializer, ptr @__syscall_meta__process_mrelease, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__process_mrelease = internal global ptr @event_enter__process_mrelease, section "_ftrace_events", align 4
@event_class_syscall_exit = external dso_local global %struct.trace_event_class, align 4
@.str.40 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sys_exit_process_mrelease\00", [38 x i8] zeroinitializer }, align 32
@exit_syscall_print_funcs = external dso_local global %struct.trace_event_functions, align 4
@event_exit__process_mrelease = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.21 { ptr @.str.40 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.22 zeroinitializer, ptr @__syscall_meta__process_mrelease, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__process_mrelease = internal global ptr @event_exit__process_mrelease, section "_ftrace_events", align 4
@.str.41 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sys_process_mrelease\00", [43 x i8] zeroinitializer }, align 32
@types__process_mrelease = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.49, ptr @.str.127], [24 x i8] zeroinitializer }, align 32
@args__process_mrelease = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.128, ptr @.str.129], [24 x i8] zeroinitializer }, align 32
@__p_syscall_meta__process_mrelease = internal global ptr @__syscall_meta__process_mrelease, section "__syscalls_metadata", align 4
@sysctl_panic_on_oom = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@.str.42 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pid_t\00", [26 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pid\00", [28 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"char[TASK_COMM_LEN]\00", [44 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"comm\00", [27 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"short\00", [26 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"oom_score_adj\00", [18 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"pid=%d comm=%s oom_score_adj=%hd\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"int\00", [28 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"node\00", [27 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"zone_idx\00", [23 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"order\00", [26 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"unsigned long\00", [18 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"reclaimable\00", [20 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"available\00", [22 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"min_wmark\00", [22 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"no_progress_loops\00", [46 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"bool\00", [27 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"wmark_check\00", [20 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [108 x i8], [52 x i8] } { [108 x i8] c"node=%d zone=%-8s order=%d reclaimable=%lu available=%lu min_wmark=%lu no_progress_loops=%d wmark_check=%d\0A\00", [52 x i8] zeroinitializer }, align 32
@trace_raw_output_reclaim_retry_zone.symbols = internal constant { [5 x %struct.trace_print_flags], [56 x i8] } { [5 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 0, ptr @.str.61 }, %struct.trace_print_flags { i32 1, ptr @.str.62 }, %struct.trace_print_flags { i32 2, ptr @.str.63 }, %struct.trace_print_flags { i32 3, ptr @.str.64 }, %struct.trace_print_flags { i32 -1, ptr null }], [56 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DMA\00", [28 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Normal\00", [25 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"HighMem\00", [24 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Movable\00", [24 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pid=%d\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"priority\00", [23 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"result\00", [25 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"retries\00", [24 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"max_retries\00", [20 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ret\00", [28 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [85 x i8], [43 x i8] } { [85 x i8] c"order=%d priority=%s compaction_result=%s retries=%d max_retries=%d should_retry=%d\0A\00", [43 x i8] zeroinitializer }, align 32
@trace_raw_output_compact_retry.symbols = internal constant { [4 x %struct.trace_print_flags], [32 x i8] } { [4 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 0, ptr @.str.9 }, %struct.trace_print_flags { i32 1, ptr @.str.10 }, %struct.trace_print_flags { i32 2, ptr @.str.11 }, %struct.trace_print_flags { i32 -1, ptr null }], [32 x i8] zeroinitializer }, align 32
@trace_raw_output_compact_retry.symbols.72 = internal constant { [4 x %struct.trace_print_flags], [32 x i8] } { [4 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 1, ptr @.str.73 }, %struct.trace_print_flags { i32 2, ptr @.str.74 }, %struct.trace_print_flags { i32 3, ptr @.str.75 }, %struct.trace_print_flags { i32 -1, ptr null }], [32 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"failed\00", [25 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"withdrawn\00", [22 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"progress\00", [23 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.76 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.78 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@in_vfork.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.79 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/sched/mm.h\00", [39 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__mmu_notifier_invalidate_range_start_map = external dso_local global %struct.lockdep_map, align 4
@.str.81 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"include/linux/mmu_notifier.h\00", [35 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"oom_reaper\00", [21 x i8] zeroinitializer }, align 32
@oom_reaper_th = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@oom_reaper_list = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@oom_reaper_wait = internal global { %struct.wait_queue_head, [44 x i8] } { %struct.wait_queue_head { %struct.spinlock { %union.anon.10 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.83, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, %struct.list_head { ptr getelementptr (i8, ptr @oom_reaper_wait, i64 44), ptr getelementptr (i8, ptr @oom_reaper_wait, i64 44) } }, [44 x i8] zeroinitializer }, align 32
@oom_reaper_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.10 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.85, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"oom_reaper_wait.lock\00", [43 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/freezer.h\00", [40 x i8] zeroinitializer }, align 32
@system_freezing_cnt = external dso_local global %struct.atomic_t, align 4
@.str.85 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"oom_reaper_lock\00", [16 x i8] zeroinitializer }, align 32
@oom_reap_task._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.87, ptr @.str.25, i32 625, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016oom_reaper: unable to reap pid:%d (%s)\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"oom_reap_task\00", [18 x i8] zeroinitializer }, align 32
@oom_reap_task._entry_ptr = internal global ptr @oom_reap_task._entry, section ".printk_index", align 4
@oom_reap_task_mm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.89, ptr @.str.25, i32 601, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [91 x i8], [37 x i8] } { [91 x i8] c"\016oom_reaper: reaped process %d (%s), now anon-rss:%lukB, file-rss:%lukB, shmem-rss:%lukB\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"oom_reap_task_mm\00", [47 x i8] zeroinitializer }, align 32
@oom_reap_task_mm._entry_ptr = internal global ptr @oom_reap_task_mm._entry, section ".printk_index", align 4
@__tracepoint_mmap_lock_start_locking = external dso_local global %struct.tracepoint, align 4
@__tracepoint_mmap_lock_acquire_returned = external dso_local global %struct.tracepoint, align 4
@.str.90 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"include/trace/events/oom.h\00", [37 x i8] zeroinitializer }, align 32
@trace_skip_task_reaping.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.91 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@trace_start_task_reaping.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@trace_finish_task_reaping.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_mmap_lock_released = external dso_local global %struct.tracepoint, align 4
@.str.92 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"oom_victims_wait.lock\00", [42 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"(oom_notify_list).rwsem.wait_lock\00", [62 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"(oom_notify_list).rwsem\00", [40 x i8] zeroinitializer }, align 32
@init_task = external dso_local global %struct.task_struct, align 128
@trace_mark_victim.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@trace_wake_reaper.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@total_swap_pages = external dso_local local_unnamed_addr global i32, align 4
@_totalram_pages = external dso_local global %struct.atomic_t, align 4
@.str.95 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Out of memory: %s panic_on_oom is enabled\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"compulsory\00", [21 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"system-wide\00", [20 x i8] zeroinitializer }, align 32
@oom_kill_process.oom_rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.98, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"oom_rs.lock\00", [20 x i8] zeroinitializer }, align 32
@__func__.oom_kill_process = private unnamed_addr constant [17 x i8] c"oom_kill_process\00", align 1
@__oom_kill_process._entry = internal constant %struct.pi_entry { ptr @.str.99, ptr @.str.100, ptr @.str.25, i32 871, ptr null, ptr null }, align 1
@.str.99 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\016%s: OOM victim %d (%s) is already exiting. Skip killing the task\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"__oom_kill_process\00", [45 x i8] zeroinitializer }, align 32
@__oom_kill_process._entry_ptr = internal global ptr @__oom_kill_process._entry, section ".printk_index", align 4
@__oom_kill_process._entry.101 = internal constant %struct.pi_entry { ptr @.str.102, ptr @.str.100, ptr @.str.25, i32 901, ptr null, ptr null }, align 1
@.str.102 = internal constant { [135 x i8], [57 x i8] } { [135 x i8] c"\013%s: Killed process %d (%s) total-vm:%lukB, anon-rss:%lukB, file-rss:%lukB, shmem-rss:%lukB, UID:%u pgtables:%lukB oom_score_adj:%hd\0A\00", [57 x i8] zeroinitializer }, align 32
@__oom_kill_process._entry_ptr.103 = internal global ptr @__oom_kill_process._entry.101, section ".printk_index", align 4
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@__oom_kill_process.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__oom_kill_process._entry.104 = internal constant %struct.pi_entry { ptr @.str.105, ptr @.str.100, ptr @.str.25, i32 924, ptr null, ptr null }, align 1
@.str.105 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016oom killer %d (%s) has mm pinned by %d (%s)\0A\00", [49 x i8] zeroinitializer }, align 32
@__oom_kill_process._entry_ptr.106 = internal global ptr @__oom_kill_process._entry.104, section ".printk_index", align 4
@vm_event_states = external dso_local global %struct.vm_event_state, section ".data..percpu", align 4
@memcg_memory_event_mm.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.107 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"include/linux/memcontrol.h\00", [37 x i8] zeroinitializer }, align 32
@memory_cgrp_subsys_enabled_key = external dso_local global %struct.static_key_true, align 4
@memory_cgrp_subsys_on_dfl_key = external dso_local global %struct.static_key_true, align 4
@cgrp_dfl_root = external dso_local local_unnamed_addr global %struct.cgroup_root, align 8
@root_mem_cgroup = external dso_local local_unnamed_addr global ptr, align 4
@dump_header._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.109, ptr @.str.25, i32 459, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"\014%s invoked oom-killer: gfp_mask=%#x(%pGg), order=%d, oom_score_adj=%hd\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"dump_header\00", [20 x i8] zeroinitializer }, align 32
@dump_header._entry_ptr = internal global ptr @dump_header._entry, section ".printk_index", align 4
@vm_node_stat = external dso_local global [40 x %struct.atomic_t], align 4
@dump_tasks._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.112, ptr @.str.25, i32 428, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016Tasks state (memory values in pages):\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"dump_tasks\00", [21 x i8] zeroinitializer }, align 32
@dump_tasks._entry_ptr = internal global ptr @dump_tasks._entry, section ".printk_index", align 4
@dump_tasks._entry.113 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.112, ptr @.str.25, i32 429, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [86 x i8], [42 x i8] } { [86 x i8] c"\016[  pid  ]   uid  tgid total_vm      rss pgtables_bytes swapents oom_score_adj name\0A\00", [42 x i8] zeroinitializer }, align 32
@dump_tasks._entry_ptr.115 = internal global ptr @dump_tasks._entry.113, section ".printk_index", align 4
@dump_task._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.116, ptr @.str.117, ptr @.str.25, i32 410, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\016[%7d] %5d %5d %8lu %8lu %8ld %8lu         %5hd %s\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dump_task\00", [22 x i8] zeroinitializer }, align 32
@dump_task._entry_ptr = internal global ptr @dump_task._entry, section ".printk_index", align 4
@dump_task.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@dump_oom_summary._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.119, ptr @.str.25, i32 448, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016oom-kill:constraint=%s,nodemask=%*pbl\00", [56 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dump_oom_summary\00", [47 x i8] zeroinitializer }, align 32
@dump_oom_summary._entry_ptr = internal global ptr @dump_oom_summary._entry, section ".printk_index", align 4
@oom_constraint_text = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126], [16 x i8] zeroinitializer }, align 32
@dump_oom_summary._entry.120 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.119, ptr @.str.25, i32 452, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\01c,task=%s,pid=%d,uid=%d\0A\00", [38 x i8] zeroinitializer }, align 32
@dump_oom_summary._entry_ptr.122 = internal global ptr @dump_oom_summary._entry.120, section ".printk_index", align 4
@dump_oom_summary.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.123 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"CONSTRAINT_NONE\00", [16 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"CONSTRAINT_CPUSET\00", [46 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"CONSTRAINT_MEMORY_POLICY\00", [39 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"CONSTRAINT_MEMCG\00", [47 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"unsigned int\00", [19 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pidfd\00", [26 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"flags\00", [26 x i8] zeroinitializer }, align 32
@switch.table.trace_event_raw_event_compact_retry = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 2, i32 3, i32 3, i32 1, i32 2, i32 2], [40 x i8] zeroinitializer }, align 32
@switch.table.perf_trace_compact_retry = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 2, i32 3, i32 3, i32 1, i32 2, i32 2], [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.130 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@___asan_gen_.131 = private unnamed_addr constant [28 x i8] c"str__oom__trace_system_name\00", align 1
@___asan_gen_.132 = private unnamed_addr constant [32 x i8] c"../include/trace/trace_events.h\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 36, i32 1 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 274, i32 1 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 275, i32 1 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 277, i32 1 }
@___asan_gen_.195 = private unnamed_addr constant [34 x i8] c"../include/trace/events/mmflags.h\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 278, i32 1 }
@___asan_gen_.197 = private unnamed_addr constant [40 x i8] c"trace_event_fields_oom_score_adj_update\00", align 1
@___asan_gen_.200 = private unnamed_addr constant [44 x i8] c"trace_event_type_funcs_oom_score_adj_update\00", align 1
@___asan_gen_.203 = private unnamed_addr constant [31 x i8] c"print_fmt_oom_score_adj_update\00", align 1
@___asan_gen_.206 = private unnamed_addr constant [27 x i8] c"event_oom_score_adj_update\00", align 1
@___asan_gen_.209 = private unnamed_addr constant [38 x i8] c"trace_event_fields_reclaim_retry_zone\00", align 1
@___asan_gen_.212 = private unnamed_addr constant [42 x i8] c"trace_event_type_funcs_reclaim_retry_zone\00", align 1
@___asan_gen_.215 = private unnamed_addr constant [29 x i8] c"print_fmt_reclaim_retry_zone\00", align 1
@___asan_gen_.218 = private unnamed_addr constant [25 x i8] c"event_reclaim_retry_zone\00", align 1
@___asan_gen_.221 = private unnamed_addr constant [31 x i8] c"trace_event_fields_mark_victim\00", align 1
@___asan_gen_.224 = private unnamed_addr constant [35 x i8] c"trace_event_type_funcs_mark_victim\00", align 1
@___asan_gen_.227 = private unnamed_addr constant [22 x i8] c"print_fmt_mark_victim\00", align 1
@___asan_gen_.230 = private unnamed_addr constant [18 x i8] c"event_mark_victim\00", align 1
@___asan_gen_.233 = private unnamed_addr constant [31 x i8] c"trace_event_fields_wake_reaper\00", align 1
@___asan_gen_.236 = private unnamed_addr constant [35 x i8] c"trace_event_type_funcs_wake_reaper\00", align 1
@___asan_gen_.239 = private unnamed_addr constant [22 x i8] c"print_fmt_wake_reaper\00", align 1
@___asan_gen_.242 = private unnamed_addr constant [18 x i8] c"event_wake_reaper\00", align 1
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.576, i32 90, i32 1 }
@___asan_gen_.245 = private unnamed_addr constant [38 x i8] c"trace_event_fields_start_task_reaping\00", align 1
@___asan_gen_.248 = private unnamed_addr constant [42 x i8] c"trace_event_type_funcs_start_task_reaping\00", align 1
@___asan_gen_.251 = private unnamed_addr constant [29 x i8] c"print_fmt_start_task_reaping\00", align 1
@___asan_gen_.254 = private unnamed_addr constant [25 x i8] c"event_start_task_reaping\00", align 1
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.576, i32 106, i32 1 }
@___asan_gen_.257 = private unnamed_addr constant [39 x i8] c"trace_event_fields_finish_task_reaping\00", align 1
@___asan_gen_.260 = private unnamed_addr constant [43 x i8] c"trace_event_type_funcs_finish_task_reaping\00", align 1
@___asan_gen_.263 = private unnamed_addr constant [30 x i8] c"print_fmt_finish_task_reaping\00", align 1
@___asan_gen_.266 = private unnamed_addr constant [26 x i8] c"event_finish_task_reaping\00", align 1
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.576, i32 122, i32 1 }
@___asan_gen_.269 = private unnamed_addr constant [37 x i8] c"trace_event_fields_skip_task_reaping\00", align 1
@___asan_gen_.272 = private unnamed_addr constant [41 x i8] c"trace_event_type_funcs_skip_task_reaping\00", align 1
@___asan_gen_.275 = private unnamed_addr constant [28 x i8] c"print_fmt_skip_task_reaping\00", align 1
@___asan_gen_.278 = private unnamed_addr constant [24 x i8] c"event_skip_task_reaping\00", align 1
@___asan_gen_.281 = private unnamed_addr constant [33 x i8] c"trace_event_fields_compact_retry\00", align 1
@___asan_gen_.284 = private unnamed_addr constant [37 x i8] c"trace_event_type_funcs_compact_retry\00", align 1
@___asan_gen_.287 = private unnamed_addr constant [24 x i8] c"print_fmt_compact_retry\00", align 1
@___asan_gen_.290 = private unnamed_addr constant [20 x i8] c"event_compact_retry\00", align 1
@___asan_gen_.293 = private unnamed_addr constant [22 x i8] c"sysctl_oom_dump_tasks\00", align 1
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 57, i32 5 }
@___asan_gen_.299 = private unnamed_addr constant [9 x i8] c"oom_lock\00", align 1
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 67, i32 1 }
@___asan_gen_.308 = private unnamed_addr constant [14 x i8] c"oom_adj_mutex\00", align 1
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 69, i32 1 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 142, i32 2 }
@___asan_gen_.320 = private unnamed_addr constant [12 x i8] c"oom_victims\00", align 1
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 480, i32 17 }
@___asan_gen_.323 = private unnamed_addr constant [17 x i8] c"oom_victims_wait\00", align 1
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 745, i32 2 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 782, i32 2 }
@___asan_gen_.344 = private unnamed_addr constant [16 x i8] c"oom_notify_list\00", align 1
@___asan_gen_.347 = private unnamed_addr constant [32 x i8] c"sysctl_oom_kill_allocating_task\00", align 1
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 56, i32 5 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 1102, i32 24 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 1110, i32 3 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 1117, i32 10 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 1120, i32 44 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 1121, i32 6 }
@___asan_gen_.371 = private unnamed_addr constant [9 x i8] c"pfoom_rs\00", align 1
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 1133, i32 9 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 1143, i32 3 }
@___asan_gen_.386 = private unnamed_addr constant [30 x i8] c"event_enter__process_mrelease\00", align 1
@___asan_gen_.392 = private unnamed_addr constant [29 x i8] c"event_exit__process_mrelease\00", align 1
@___asan_gen_.398 = private unnamed_addr constant [24 x i8] c"types__process_mrelease\00", align 1
@___asan_gen_.401 = private unnamed_addr constant [23 x i8] c"args__process_mrelease\00", align 1
@___asan_gen_.404 = private unnamed_addr constant [20 x i8] c"sysctl_panic_on_oom\00", align 1
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 55, i32 5 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.576, i32 10, i32 1 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.576, i32 32, i32 1 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.576, i32 74, i32 1 }
@___asan_gen_.503 = private unnamed_addr constant [8 x i8] c"symbols\00", align 1
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.576, i32 155, i32 1 }
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.522, i32 695, i32 2 }
@___asan_gen_.522 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.522, i32 723, i32 2 }
@___asan_gen_.528 = private unnamed_addr constant [28 x i8] c"../include/linux/sched/mm.h\00", align 1
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 173, i32 4 }
@___asan_gen_.531 = private unnamed_addr constant [32 x i8] c"../include/linux/mmu_notifier.h\00", align 1
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 482, i32 3 }
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 682, i32 18 }
@___asan_gen_.536 = private unnamed_addr constant [14 x i8] c"oom_reaper_th\00", align 1
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 510, i32 28 }
@___asan_gen_.539 = private unnamed_addr constant [16 x i8] c"oom_reaper_list\00", align 1
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 512, i32 28 }
@___asan_gen_.542 = private unnamed_addr constant [16 x i8] c"oom_reaper_wait\00", align 1
@___asan_gen_.545 = private unnamed_addr constant [16 x i8] c"oom_reaper_lock\00", align 1
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 511, i32 8 }
@___asan_gen_.552 = private unnamed_addr constant [27 x i8] c"../include/linux/freezer.h\00", align 1
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 57, i32 2 }
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 513, i32 8 }
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 624, i32 2 }
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 597, i32 2 }
@___asan_gen_.576 = private unnamed_addr constant [30 x i8] c"../include/trace/events/oom.h\00", align 1
@___asan_gen_.577 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.576, i32 138, i32 1 }
@___asan_gen_.579 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 108, i32 2 }
@___asan_gen_.583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 481, i32 8 }
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 1029, i32 8 }
@___asan_gen_.592 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 1025, i32 8 }
@___asan_gen_.595 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 1026, i32 30 }
@___asan_gen_.598 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 1026, i32 45 }
@___asan_gen_.599 = private unnamed_addr constant [7 x i8] c"oom_rs\00", align 1
@___asan_gen_.604 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 963, i32 9 }
@___asan_gen_.610 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 870, i32 3 }
@___asan_gen_.613 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 895, i32 2 }
@___asan_gen_.616 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 922, i32 4 }
@___asan_gen_.618 = private unnamed_addr constant [30 x i8] c"../include/linux/memcontrol.h\00", align 1
@___asan_gen_.619 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 1099, i32 31 }
@___asan_gen_.628 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 457, i32 2 }
@___asan_gen_.637 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 428, i32 2 }
@___asan_gen_.643 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 429, i32 2 }
@___asan_gen_.652 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 405, i32 2 }
@___asan_gen_.661 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 446, i32 2 }
@___asan_gen_.662 = private unnamed_addr constant [20 x i8] c"oom_constraint_text\00", align 1
@___asan_gen_.664 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 244, i32 27 }
@___asan_gen_.665 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.670 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 451, i32 2 }
@___asan_gen_.673 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 245, i32 22 }
@___asan_gen_.676 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 246, i32 24 }
@___asan_gen_.679 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 247, i32 31 }
@___asan_gen_.682 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 248, i32 23 }
@___asan_gen_.689 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.690 = private constant [17 x i8] c"../mm/oom_kill.c\00", align 1
@___asan_gen_.691 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.690, i32 1146, i32 1 }
@___asan_gen_.692 = private unnamed_addr constant [49 x i8] c"switch.table.trace_event_raw_event_compact_retry\00", align 1
@___asan_gen_.693 = private unnamed_addr constant [38 x i8] c"switch.table.perf_trace_compact_retry\00", align 1
@llvm.compiler.used = appending global [296 x ptr] [ptr @TRACE_SYSTEM_COMPACT_COMPLETE, ptr @TRACE_SYSTEM_COMPACT_CONTENDED, ptr @TRACE_SYSTEM_COMPACT_CONTINUE, ptr @TRACE_SYSTEM_COMPACT_DEFERRED, ptr @TRACE_SYSTEM_COMPACT_NOT_SUITABLE_ZONE, ptr @TRACE_SYSTEM_COMPACT_NO_SUITABLE_PAGE, ptr @TRACE_SYSTEM_COMPACT_PARTIAL_SKIPPED, ptr @TRACE_SYSTEM_COMPACT_PRIO_ASYNC, ptr @TRACE_SYSTEM_COMPACT_PRIO_SYNC_FULL, ptr @TRACE_SYSTEM_COMPACT_PRIO_SYNC_LIGHT, ptr @TRACE_SYSTEM_COMPACT_SKIPPED, ptr @TRACE_SYSTEM_COMPACT_SUCCESS, ptr @TRACE_SYSTEM_LRU_ACTIVE_ANON, ptr @TRACE_SYSTEM_LRU_ACTIVE_FILE, ptr @TRACE_SYSTEM_LRU_INACTIVE_ANON, ptr @TRACE_SYSTEM_LRU_INACTIVE_FILE, ptr @TRACE_SYSTEM_LRU_UNEVICTABLE, ptr @TRACE_SYSTEM_ZONE_DMA, ptr @TRACE_SYSTEM_ZONE_HIGHMEM, ptr @TRACE_SYSTEM_ZONE_MOVABLE, ptr @TRACE_SYSTEM_ZONE_NORMAL, ptr @__TRACE_SYSTEM_COMPACT_COMPLETE, ptr @__TRACE_SYSTEM_COMPACT_CONTENDED, ptr @__TRACE_SYSTEM_COMPACT_CONTINUE, ptr @__TRACE_SYSTEM_COMPACT_DEFERRED, ptr @__TRACE_SYSTEM_COMPACT_NOT_SUITABLE_ZONE, ptr @__TRACE_SYSTEM_COMPACT_NO_SUITABLE_PAGE, ptr @__TRACE_SYSTEM_COMPACT_PARTIAL_SKIPPED, ptr @__TRACE_SYSTEM_COMPACT_PRIO_ASYNC, ptr @__TRACE_SYSTEM_COMPACT_PRIO_SYNC_FULL, ptr @__TRACE_SYSTEM_COMPACT_PRIO_SYNC_LIGHT, ptr @__TRACE_SYSTEM_COMPACT_SKIPPED, ptr @__TRACE_SYSTEM_COMPACT_SUCCESS, ptr @__TRACE_SYSTEM_LRU_ACTIVE_ANON, ptr @__TRACE_SYSTEM_LRU_ACTIVE_FILE, ptr @__TRACE_SYSTEM_LRU_INACTIVE_ANON, ptr @__TRACE_SYSTEM_LRU_INACTIVE_FILE, ptr @__TRACE_SYSTEM_LRU_UNEVICTABLE, ptr @__TRACE_SYSTEM_ZONE_DMA, ptr @__TRACE_SYSTEM_ZONE_HIGHMEM, ptr @__TRACE_SYSTEM_ZONE_MOVABLE, ptr @__TRACE_SYSTEM_ZONE_NORMAL, ptr @__bpf_trace_tp_map_compact_retry, ptr @__bpf_trace_tp_map_finish_task_reaping, ptr @__bpf_trace_tp_map_mark_victim, ptr @__bpf_trace_tp_map_oom_score_adj_update, ptr @__bpf_trace_tp_map_reclaim_retry_zone, ptr @__bpf_trace_tp_map_skip_task_reaping, ptr @__bpf_trace_tp_map_start_task_reaping, ptr @__bpf_trace_tp_map_wake_reaper, ptr @__event_compact_retry, ptr @__event_enter__process_mrelease, ptr @__event_exit__process_mrelease, ptr @__event_finish_task_reaping, ptr @__event_mark_victim, ptr @__event_oom_score_adj_update, ptr @__event_reclaim_retry_zone, ptr @__event_skip_task_reaping, ptr @__event_start_task_reaping, ptr @__event_wake_reaper, ptr @__initcall__kmod_oom_kill__365_685_oom_init4, ptr @__ksymtab_register_oom_notifier, ptr @__ksymtab_unregister_oom_notifier, ptr @__oom_kill_process._entry, ptr @__oom_kill_process._entry.101, ptr @__oom_kill_process._entry.104, ptr @__oom_kill_process._entry_ptr, ptr @__oom_kill_process._entry_ptr.103, ptr @__oom_kill_process._entry_ptr.106, ptr @__p_syscall_meta__process_mrelease, ptr @__syscall_meta__process_mrelease, ptr @__tracepoint_compact_retry, ptr @__tracepoint_finish_task_reaping, ptr @__tracepoint_mark_victim, ptr @__tracepoint_oom_score_adj_update, ptr @__tracepoint_ptr_compact_retry, ptr @__tracepoint_ptr_finish_task_reaping, ptr @__tracepoint_ptr_mark_victim, ptr @__tracepoint_ptr_oom_score_adj_update, ptr @__tracepoint_ptr_reclaim_retry_zone, ptr @__tracepoint_ptr_skip_task_reaping, ptr @__tracepoint_ptr_start_task_reaping, ptr @__tracepoint_ptr_wake_reaper, ptr @__tracepoint_reclaim_retry_zone, ptr @__tracepoint_skip_task_reaping, ptr @__tracepoint_start_task_reaping, ptr @__tracepoint_wake_reaper, ptr @dump_header._entry, ptr @dump_header._entry_ptr, ptr @dump_oom_summary._entry, ptr @dump_oom_summary._entry.120, ptr @dump_oom_summary._entry_ptr, ptr @dump_oom_summary._entry_ptr.122, ptr @dump_task._entry, ptr @dump_task._entry_ptr, ptr @dump_tasks._entry, ptr @dump_tasks._entry.113, ptr @dump_tasks._entry_ptr, ptr @dump_tasks._entry_ptr.115, ptr @event_class_compact_retry, ptr @event_class_finish_task_reaping, ptr @event_class_mark_victim, ptr @event_class_oom_score_adj_update, ptr @event_class_reclaim_retry_zone, ptr @event_class_skip_task_reaping, ptr @event_class_start_task_reaping, ptr @event_class_wake_reaper, ptr @event_compact_retry, ptr @event_enter__process_mrelease, ptr @event_exit__process_mrelease, ptr @event_finish_task_reaping, ptr @event_mark_victim, ptr @event_oom_score_adj_update, ptr @event_reclaim_retry_zone, ptr @event_skip_task_reaping, ptr @event_start_task_reaping, ptr @event_wake_reaper, ptr @oom_killer_disable._entry, ptr @oom_killer_disable._entry_ptr, ptr @oom_killer_enable._entry, ptr @oom_killer_enable._entry_ptr, ptr @oom_reap_task._entry, ptr @oom_reap_task._entry_ptr, ptr @oom_reap_task_mm._entry, ptr @oom_reap_task_mm._entry_ptr, ptr @out_of_memory._entry, ptr @out_of_memory._entry_ptr, ptr @pagefault_out_of_memory._entry, ptr @pagefault_out_of_memory._entry_ptr, ptr @str__oom__trace_system_name, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @trace_event_fields_oom_score_adj_update, ptr @trace_event_type_funcs_oom_score_adj_update, ptr @print_fmt_oom_score_adj_update, ptr @trace_event_fields_reclaim_retry_zone, ptr @trace_event_type_funcs_reclaim_retry_zone, ptr @print_fmt_reclaim_retry_zone, ptr @trace_event_fields_mark_victim, ptr @trace_event_type_funcs_mark_victim, ptr @print_fmt_mark_victim, ptr @trace_event_fields_wake_reaper, ptr @trace_event_type_funcs_wake_reaper, ptr @print_fmt_wake_reaper, ptr @trace_event_fields_start_task_reaping, ptr @trace_event_type_funcs_start_task_reaping, ptr @print_fmt_start_task_reaping, ptr @trace_event_fields_finish_task_reaping, ptr @trace_event_type_funcs_finish_task_reaping, ptr @print_fmt_finish_task_reaping, ptr @trace_event_fields_skip_task_reaping, ptr @trace_event_type_funcs_skip_task_reaping, ptr @print_fmt_skip_task_reaping, ptr @trace_event_fields_compact_retry, ptr @trace_event_type_funcs_compact_retry, ptr @print_fmt_compact_retry, ptr @sysctl_oom_dump_tasks, ptr @.str.21, ptr @oom_lock, ptr @.str.22, ptr @.str.23, ptr @oom_adj_mutex, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @oom_victims, ptr @oom_victims_wait, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @oom_notify_list, ptr @sysctl_oom_kill_allocating_task, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @pagefault_out_of_memory.pfoom_rs, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @types__process_mrelease, ptr @args__process_mrelease, ptr @sysctl_panic_on_oom, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @trace_raw_output_reclaim_retry_zone.symbols, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @trace_raw_output_compact_retry.symbols, ptr @trace_raw_output_compact_retry.symbols.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @oom_reaper_th, ptr @oom_reaper_list, ptr @oom_reaper_wait, ptr @oom_reaper_lock, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @oom_kill_process.oom_rs, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.102, ptr @.str.105, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.111, ptr @.str.112, ptr @.str.114, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @oom_constraint_text, ptr @.str.121, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @switch.table.trace_event_raw_event_compact_retry, ptr @switch.table.perf_trace_compact_retry], section "llvm.metadata"
@0 = internal global [189 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str__oom__trace_system_name to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_oom_score_adj_update to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_oom_score_adj_update to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_oom_score_adj_update to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_oom_score_adj_update to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_reclaim_retry_zone to i32), i32 216, i32 256, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_reclaim_retry_zone to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_reclaim_retry_zone to i32), i32 355, i32 448, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_reclaim_retry_zone to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_mark_victim to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_mark_victim to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_mark_victim to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_mark_victim to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_wake_reaper to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_wake_reaper to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_wake_reaper to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_wake_reaper to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_start_task_reaping to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_start_task_reaping to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_start_task_reaping to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_start_task_reaping to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_finish_task_reaping to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_finish_task_reaping to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_finish_task_reaping to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_finish_task_reaping to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_skip_task_reaping to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_skip_task_reaping to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_skip_task_reaping to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_skip_task_reaping to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_compact_retry to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_compact_retry to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_compact_retry to i32), i32 404, i32 512, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_compact_retry to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysctl_oom_dump_tasks to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @oom_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @oom_adj_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @oom_victims to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @oom_victims_wait to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @oom_killer_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @oom_killer_disable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @oom_notify_list to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysctl_oom_kill_allocating_task to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @out_of_memory._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pagefault_out_of_memory.pfoom_rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pagefault_out_of_memory._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__process_mrelease to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__process_mrelease to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__process_mrelease to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__process_mrelease to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysctl_panic_on_oom to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_raw_output_reclaim_retry_zone.symbols to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 85, i32 128, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_raw_output_compact_retry.symbols to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_raw_output_compact_retry.symbols.72 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @oom_reaper_th to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @oom_reaper_list to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @oom_reaper_wait to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @oom_reaper_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @oom_reap_task._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @oom_reap_task_mm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 91, i32 128, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @oom_kill_process.oom_rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 135, i32 192, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_header._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_tasks._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_tasks._entry.113 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 86, i32 128, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_task._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_oom_summary._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @oom_constraint_text to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_oom_summary._entry.120 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.trace_event_raw_event_compact_retry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.perf_trace_compact_retry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

@sys_process_mrelease = dso_local alias i32 (i32, i32), ptr @__se_sys_process_mrelease

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_oom_score_adj_update(ptr nocapture readnone %__data, ptr noundef %task) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_oom_score_adj_update, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
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
  tail call void %2(ptr noundef %4, ptr noundef %task) #12
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_reclaim_retry_zone(ptr nocapture readnone %__data, ptr noundef %zoneref, i32 noundef %order, i32 noundef %reclaimable, i32 noundef %available, i32 noundef %min_wmark, i32 noundef %no_progress_loops, i1 noundef zeroext %wmark_check) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_reclaim_retry_zone, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
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
  tail call void %2(ptr noundef %4, ptr noundef %zoneref, i32 noundef %order, i32 noundef %reclaimable, i32 noundef %available, i32 noundef %min_wmark, i32 noundef %no_progress_loops, i1 noundef zeroext %wmark_check) #12
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool10.not = icmp eq ptr %6, null
  br i1 %tobool10.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_mark_victim(ptr nocapture readnone %__data, i32 noundef %pid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mark_victim, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
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
  tail call void %2(ptr noundef %4, i32 noundef %pid) #12
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_wake_reaper(ptr nocapture readnone %__data, i32 noundef %pid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_wake_reaper, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
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
  tail call void %2(ptr noundef %4, i32 noundef %pid) #12
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_start_task_reaping(ptr nocapture readnone %__data, i32 noundef %pid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_start_task_reaping, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
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
  tail call void %2(ptr noundef %4, i32 noundef %pid) #12
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_finish_task_reaping(ptr nocapture readnone %__data, i32 noundef %pid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_finish_task_reaping, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
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
  tail call void %2(ptr noundef %4, i32 noundef %pid) #12
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_skip_task_reaping(ptr nocapture readnone %__data, i32 noundef %pid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_skip_task_reaping, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
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
  tail call void %2(ptr noundef %4, i32 noundef %pid) #12
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_compact_retry(ptr nocapture readnone %__data, i32 noundef %order, i32 noundef %priority, i32 noundef %result, i32 noundef %retries, i32 noundef %max_retries, i1 noundef zeroext %ret) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_compact_retry, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
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
  tail call void %2(ptr noundef %4, i32 noundef %order, i32 noundef %priority, i32 noundef %result, i32 noundef %retries, i32 noundef %max_retries, i1 noundef zeroext %ret) #12
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool10.not = icmp eq ptr %6, null
  br i1 %tobool10.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_oom_score_adj_update(ptr noundef %__data, ptr nocapture noundef readonly %task) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #12
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !417

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !418

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #12
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 32) #12
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %pid = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 68
  %3 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %pid, align 8
  %pid6 = getelementptr inbounds %struct.trace_event_raw_oom_score_adj_update, ptr %call3, i32 0, i32 1
  %5 = ptrtoint ptr %pid6 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %pid6, align 4
  %comm = getelementptr inbounds %struct.trace_event_raw_oom_score_adj_update, ptr %call3, i32 0, i32 2
  %comm7 = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 101
  %6 = call ptr @memcpy(ptr %comm, ptr %comm7, i32 16)
  %signal = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 111
  %7 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %signal, align 16
  %oom_score_adj = getelementptr inbounds %struct.signal_struct, ptr %8, i32 0, i32 57
  %9 = ptrtoint ptr %oom_score_adj to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %oom_score_adj, align 2
  %oom_score_adj9 = getelementptr inbounds %struct.trace_event_raw_oom_score_adj_update, ptr %call3, i32 0, i32 3
  %11 = ptrtoint ptr %oom_score_adj9 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %oom_score_adj9, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_oom_score_adj_update(ptr noundef %__data, ptr nocapture noundef readonly %task) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #12
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !419
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #12
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !419
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !407) #12
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
  %add = add i32 %10, %4
  %11 = inttoptr i32 %add to ptr
  %prog_array.i = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 11
  %12 = ptrtoint ptr %prog_array.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %prog_array.i, align 4
  %tobool.i.not = icmp eq ptr %13, null
  br i1 %tobool.i.not, label %land.lhs.true7, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 36, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #12
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #12
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #12
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !407) #12
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %pid = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 68
  %27 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %pid, align 8
  %pid17 = getelementptr inbounds %struct.trace_event_raw_oom_score_adj_update, ptr %call13, i32 0, i32 1
  %29 = ptrtoint ptr %pid17 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %pid17, align 4
  %comm = getelementptr inbounds %struct.trace_event_raw_oom_score_adj_update, ptr %call13, i32 0, i32 2
  %comm18 = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 101
  %30 = call ptr @memcpy(ptr %comm, ptr %comm18, i32 16)
  %signal = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 111
  %31 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %signal, align 16
  %oom_score_adj = getelementptr inbounds %struct.signal_struct, ptr %32, i32 0, i32 57
  %33 = ptrtoint ptr %oom_score_adj to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %oom_score_adj, align 2
  %oom_score_adj20 = getelementptr inbounds %struct.trace_event_raw_oom_score_adj_update, ptr %call13, i32 0, i32 3
  %35 = ptrtoint ptr %oom_score_adj20 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %34, ptr %oom_score_adj20, align 4
  %36 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %rctx, align 4
  %38 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 36, i32 noundef %37, ptr noundef %__data, i64 noundef 1, ptr noundef %39, ptr noundef %11, ptr noundef null) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_reg(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_raw_init(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_reclaim_retry_zone(ptr noundef %__data, ptr nocapture noundef readonly %zoneref, i32 noundef %order, i32 noundef %reclaimable, i32 noundef %available, i32 noundef %min_wmark, i32 noundef %no_progress_loops, i1 noundef zeroext %wmark_check) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #14
  %frombool = zext i1 %wmark_check to i8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #12
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !417

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !418

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #12
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 40) #12
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %node = getelementptr inbounds %struct.trace_event_raw_reclaim_retry_zone, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %node, align 4
  %zone_idx = getelementptr inbounds %struct.zoneref, ptr %zoneref, i32 0, i32 1
  %4 = ptrtoint ptr %zone_idx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %zone_idx, align 4
  %zone_idx8 = getelementptr inbounds %struct.trace_event_raw_reclaim_retry_zone, ptr %call3, i32 0, i32 2
  %6 = ptrtoint ptr %zone_idx8 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %zone_idx8, align 4
  %order9 = getelementptr inbounds %struct.trace_event_raw_reclaim_retry_zone, ptr %call3, i32 0, i32 3
  %7 = ptrtoint ptr %order9 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %order, ptr %order9, align 4
  %reclaimable10 = getelementptr inbounds %struct.trace_event_raw_reclaim_retry_zone, ptr %call3, i32 0, i32 4
  %8 = ptrtoint ptr %reclaimable10 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %reclaimable, ptr %reclaimable10, align 4
  %available11 = getelementptr inbounds %struct.trace_event_raw_reclaim_retry_zone, ptr %call3, i32 0, i32 5
  %9 = ptrtoint ptr %available11 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %available, ptr %available11, align 4
  %min_wmark12 = getelementptr inbounds %struct.trace_event_raw_reclaim_retry_zone, ptr %call3, i32 0, i32 6
  %10 = ptrtoint ptr %min_wmark12 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %min_wmark, ptr %min_wmark12, align 4
  %no_progress_loops13 = getelementptr inbounds %struct.trace_event_raw_reclaim_retry_zone, ptr %call3, i32 0, i32 7
  %11 = ptrtoint ptr %no_progress_loops13 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %no_progress_loops, ptr %no_progress_loops13, align 4
  %wmark_check15 = getelementptr inbounds %struct.trace_event_raw_reclaim_retry_zone, ptr %call3, i32 0, i32 8
  %12 = ptrtoint ptr %wmark_check15 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %frombool, ptr %wmark_check15, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_reclaim_retry_zone(ptr noundef %__data, ptr nocapture noundef readonly %zoneref, i32 noundef %order, i32 noundef %reclaimable, i32 noundef %available, i32 noundef %min_wmark, i32 noundef %no_progress_loops, i1 noundef zeroext %wmark_check) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  %frombool = zext i1 %wmark_check to i8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #12
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !419
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #12
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !419
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !407) #12
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
  %add = add i32 %10, %4
  %11 = inttoptr i32 %add to ptr
  %prog_array.i = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 11
  %12 = ptrtoint ptr %prog_array.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %prog_array.i, align 4
  %tobool.i.not = icmp eq ptr %13, null
  br i1 %tobool.i.not, label %land.lhs.true8, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true8:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true8.cleanup_crit_edge, label %land.lhs.true8.if.end_crit_edge

land.lhs.true8.if.end_crit_edge:                  ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true8.cleanup_crit_edge:                 ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true8.if.end_crit_edge, %entry.if.end_crit_edge
  %call14 = call ptr @perf_trace_buf_alloc(i32 noundef 44, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #12
  %tobool15.not = icmp eq ptr %call14, null
  br i1 %tobool15.not, label %if.end.cleanup_crit_edge, label %if.end17

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end17:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #12
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #12
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !407) #12
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %node = getelementptr inbounds %struct.trace_event_raw_reclaim_retry_zone, ptr %call14, i32 0, i32 1
  %27 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %node, align 4
  %zone_idx = getelementptr inbounds %struct.zoneref, ptr %zoneref, i32 0, i32 1
  %28 = ptrtoint ptr %zone_idx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %zone_idx, align 4
  %zone_idx19 = getelementptr inbounds %struct.trace_event_raw_reclaim_retry_zone, ptr %call14, i32 0, i32 2
  %30 = ptrtoint ptr %zone_idx19 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %zone_idx19, align 4
  %order20 = getelementptr inbounds %struct.trace_event_raw_reclaim_retry_zone, ptr %call14, i32 0, i32 3
  %31 = ptrtoint ptr %order20 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %order, ptr %order20, align 4
  %reclaimable21 = getelementptr inbounds %struct.trace_event_raw_reclaim_retry_zone, ptr %call14, i32 0, i32 4
  %32 = ptrtoint ptr %reclaimable21 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %reclaimable, ptr %reclaimable21, align 4
  %available22 = getelementptr inbounds %struct.trace_event_raw_reclaim_retry_zone, ptr %call14, i32 0, i32 5
  %33 = ptrtoint ptr %available22 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %available, ptr %available22, align 4
  %min_wmark23 = getelementptr inbounds %struct.trace_event_raw_reclaim_retry_zone, ptr %call14, i32 0, i32 6
  %34 = ptrtoint ptr %min_wmark23 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %min_wmark, ptr %min_wmark23, align 4
  %no_progress_loops24 = getelementptr inbounds %struct.trace_event_raw_reclaim_retry_zone, ptr %call14, i32 0, i32 7
  %35 = ptrtoint ptr %no_progress_loops24 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %no_progress_loops, ptr %no_progress_loops24, align 4
  %wmark_check26 = getelementptr inbounds %struct.trace_event_raw_reclaim_retry_zone, ptr %call14, i32 0, i32 8
  %36 = ptrtoint ptr %wmark_check26 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %frombool, ptr %wmark_check26, align 4
  %37 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %rctx, align 4
  %39 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call14, i32 noundef 44, i32 noundef %38, ptr noundef %__data, i64 noundef 1, ptr noundef %40, ptr noundef %11, ptr noundef null) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.end.cleanup_crit_edge, %land.lhs.true8.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_mark_victim(ptr noundef %__data, i32 noundef %pid) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #12
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !417

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !418

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #12
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 12) #12
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %pid6 = getelementptr inbounds %struct.trace_event_raw_mark_victim, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %pid6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %pid, ptr %pid6, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_mark_victim(ptr noundef %__data, i32 noundef %pid) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #12
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !419
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #12
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !419
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !407) #12
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
  %add = add i32 %10, %4
  %11 = inttoptr i32 %add to ptr
  %prog_array.i = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 11
  %12 = ptrtoint ptr %prog_array.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %prog_array.i, align 4
  %tobool.i.not = icmp eq ptr %13, null
  br i1 %tobool.i.not, label %land.lhs.true7, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 12, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #12
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #12
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #12
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !407) #12
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %pid17 = getelementptr inbounds %struct.trace_event_raw_mark_victim, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %pid17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %pid, ptr %pid17, align 4
  %28 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rctx, align 4
  %30 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 12, i32 noundef %29, ptr noundef %__data, i64 noundef 1, ptr noundef %31, ptr noundef %11, ptr noundef null) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_wake_reaper(ptr noundef %__data, i32 noundef %pid) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #12
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !417

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !418

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #12
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 12) #12
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %pid6 = getelementptr inbounds %struct.trace_event_raw_wake_reaper, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %pid6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %pid, ptr %pid6, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_wake_reaper(ptr noundef %__data, i32 noundef %pid) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #12
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !419
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #12
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !419
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !407) #12
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
  %add = add i32 %10, %4
  %11 = inttoptr i32 %add to ptr
  %prog_array.i = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 11
  %12 = ptrtoint ptr %prog_array.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %prog_array.i, align 4
  %tobool.i.not = icmp eq ptr %13, null
  br i1 %tobool.i.not, label %land.lhs.true7, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 12, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #12
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #12
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #12
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !407) #12
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %pid17 = getelementptr inbounds %struct.trace_event_raw_wake_reaper, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %pid17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %pid, ptr %pid17, align 4
  %28 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rctx, align 4
  %30 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 12, i32 noundef %29, ptr noundef %__data, i64 noundef 1, ptr noundef %31, ptr noundef %11, ptr noundef null) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_start_task_reaping(ptr noundef %__data, i32 noundef %pid) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #12
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !417

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !418

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #12
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 12) #12
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %pid6 = getelementptr inbounds %struct.trace_event_raw_start_task_reaping, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %pid6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %pid, ptr %pid6, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_start_task_reaping(ptr noundef %__data, i32 noundef %pid) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #12
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !419
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #12
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !419
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !407) #12
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
  %add = add i32 %10, %4
  %11 = inttoptr i32 %add to ptr
  %prog_array.i = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 11
  %12 = ptrtoint ptr %prog_array.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %prog_array.i, align 4
  %tobool.i.not = icmp eq ptr %13, null
  br i1 %tobool.i.not, label %land.lhs.true7, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 12, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #12
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #12
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #12
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !407) #12
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %pid17 = getelementptr inbounds %struct.trace_event_raw_start_task_reaping, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %pid17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %pid, ptr %pid17, align 4
  %28 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rctx, align 4
  %30 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 12, i32 noundef %29, ptr noundef %__data, i64 noundef 1, ptr noundef %31, ptr noundef %11, ptr noundef null) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_finish_task_reaping(ptr noundef %__data, i32 noundef %pid) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #12
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !417

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !418

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #12
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 12) #12
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %pid6 = getelementptr inbounds %struct.trace_event_raw_finish_task_reaping, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %pid6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %pid, ptr %pid6, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_finish_task_reaping(ptr noundef %__data, i32 noundef %pid) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #12
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !419
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #12
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !419
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !407) #12
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
  %add = add i32 %10, %4
  %11 = inttoptr i32 %add to ptr
  %prog_array.i = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 11
  %12 = ptrtoint ptr %prog_array.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %prog_array.i, align 4
  %tobool.i.not = icmp eq ptr %13, null
  br i1 %tobool.i.not, label %land.lhs.true7, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 12, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #12
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #12
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #12
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !407) #12
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %pid17 = getelementptr inbounds %struct.trace_event_raw_finish_task_reaping, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %pid17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %pid, ptr %pid17, align 4
  %28 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rctx, align 4
  %30 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 12, i32 noundef %29, ptr noundef %__data, i64 noundef 1, ptr noundef %31, ptr noundef %11, ptr noundef null) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_skip_task_reaping(ptr noundef %__data, i32 noundef %pid) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #12
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !417

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !418

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #12
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 12) #12
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %pid6 = getelementptr inbounds %struct.trace_event_raw_skip_task_reaping, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %pid6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %pid, ptr %pid6, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_skip_task_reaping(ptr noundef %__data, i32 noundef %pid) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #12
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !419
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #12
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !419
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !407) #12
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
  %add = add i32 %10, %4
  %11 = inttoptr i32 %add to ptr
  %prog_array.i = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 11
  %12 = ptrtoint ptr %prog_array.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %prog_array.i, align 4
  %tobool.i.not = icmp eq ptr %13, null
  br i1 %tobool.i.not, label %land.lhs.true7, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 12, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #12
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #12
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #12
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !407) #12
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %pid17 = getelementptr inbounds %struct.trace_event_raw_skip_task_reaping, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %pid17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %pid, ptr %pid17, align 4
  %28 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rctx, align 4
  %30 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 12, i32 noundef %29, ptr noundef %__data, i64 noundef 1, ptr noundef %31, ptr noundef %11, ptr noundef null) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_compact_retry(ptr noundef %__data, i32 noundef %order, i32 noundef %priority, i32 noundef %result, i32 noundef %retries, i32 noundef %max_retries, i1 noundef zeroext %ret) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #14
  %frombool = zext i1 %ret to i8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #12
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !417

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !418

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #12
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 32) #12
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %order7 = getelementptr inbounds %struct.trace_event_raw_compact_retry, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %order7 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %order, ptr %order7, align 4
  %priority8 = getelementptr inbounds %struct.trace_event_raw_compact_retry, ptr %call3, i32 0, i32 2
  %4 = ptrtoint ptr %priority8 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %priority, ptr %priority8, align 4
  %switch.tableidx = add i32 %result, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %switch.tableidx)
  %5 = icmp ult i32 %switch.tableidx, 6
  br i1 %5, label %switch.lookup, label %if.end6.cond.end_crit_edge

if.end6.cond.end_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

switch.lookup:                                    ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  %switch.gep = getelementptr inbounds [6 x i32], ptr @switch.table.trace_event_raw_event_compact_retry, i32 0, i32 %switch.tableidx
  %6 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %6)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %cond.end

cond.end:                                         ; preds = %switch.lookup, %if.end6.cond.end_crit_edge
  %cond11 = phi i32 [ %switch.load, %switch.lookup ], [ 3, %if.end6.cond.end_crit_edge ]
  %result12 = getelementptr inbounds %struct.trace_event_raw_compact_retry, ptr %call3, i32 0, i32 3
  %7 = ptrtoint ptr %result12 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %cond11, ptr %result12, align 4
  %retries13 = getelementptr inbounds %struct.trace_event_raw_compact_retry, ptr %call3, i32 0, i32 4
  %8 = ptrtoint ptr %retries13 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %retries, ptr %retries13, align 4
  %max_retries14 = getelementptr inbounds %struct.trace_event_raw_compact_retry, ptr %call3, i32 0, i32 5
  %9 = ptrtoint ptr %max_retries14 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %max_retries, ptr %max_retries14, align 4
  %ret16 = getelementptr inbounds %struct.trace_event_raw_compact_retry, ptr %call3, i32 0, i32 6
  %10 = ptrtoint ptr %ret16 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %frombool, ptr %ret16, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #12
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_compact_retry(ptr noundef %__data, i32 noundef %order, i32 noundef %priority, i32 noundef %result, i32 noundef %retries, i32 noundef %max_retries, i1 noundef zeroext %ret) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  %frombool = zext i1 %ret to i8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #12
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !419
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #12
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !419
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !407) #12
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
  %add = add i32 %10, %4
  %11 = inttoptr i32 %add to ptr
  %prog_array.i = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 11
  %12 = ptrtoint ptr %prog_array.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %prog_array.i, align 4
  %tobool.i.not = icmp eq ptr %13, null
  br i1 %tobool.i.not, label %land.lhs.true8, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true8:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true8.cleanup_crit_edge, label %land.lhs.true8.if.end_crit_edge

land.lhs.true8.if.end_crit_edge:                  ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true8.cleanup_crit_edge:                 ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true8.if.end_crit_edge, %entry.if.end_crit_edge
  %call14 = call ptr @perf_trace_buf_alloc(i32 noundef 36, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #12
  %tobool15.not = icmp eq ptr %call14, null
  br i1 %tobool15.not, label %if.end.cleanup_crit_edge, label %if.end17

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end17:                                         ; preds = %if.end
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #12
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #12
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !407) #12
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %order18 = getelementptr inbounds %struct.trace_event_raw_compact_retry, ptr %call14, i32 0, i32 1
  %27 = ptrtoint ptr %order18 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %order, ptr %order18, align 4
  %priority19 = getelementptr inbounds %struct.trace_event_raw_compact_retry, ptr %call14, i32 0, i32 2
  %28 = ptrtoint ptr %priority19 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %priority, ptr %priority19, align 4
  %switch.tableidx = add i32 %result, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %switch.tableidx)
  %29 = icmp ult i32 %switch.tableidx, 6
  br i1 %29, label %switch.lookup, label %if.end17.cond.end_crit_edge

if.end17.cond.end_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

switch.lookup:                                    ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  %switch.gep = getelementptr inbounds [6 x i32], ptr @switch.table.perf_trace_compact_retry, i32 0, i32 %switch.tableidx
  %30 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %30)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %cond.end

cond.end:                                         ; preds = %switch.lookup, %if.end17.cond.end_crit_edge
  %cond23 = phi i32 [ %switch.load, %switch.lookup ], [ 3, %if.end17.cond.end_crit_edge ]
  %result24 = getelementptr inbounds %struct.trace_event_raw_compact_retry, ptr %call14, i32 0, i32 3
  %31 = ptrtoint ptr %result24 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %cond23, ptr %result24, align 4
  %retries25 = getelementptr inbounds %struct.trace_event_raw_compact_retry, ptr %call14, i32 0, i32 4
  %32 = ptrtoint ptr %retries25 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %retries, ptr %retries25, align 4
  %max_retries26 = getelementptr inbounds %struct.trace_event_raw_compact_retry, ptr %call14, i32 0, i32 5
  %33 = ptrtoint ptr %max_retries26 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %max_retries, ptr %max_retries26, align 4
  %ret28 = getelementptr inbounds %struct.trace_event_raw_compact_retry, ptr %call14, i32 0, i32 6
  %34 = ptrtoint ptr %ret28 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %frombool, ptr %ret28, align 4
  %35 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %rctx, align 4
  %37 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call14, i32 noundef 36, i32 noundef %36, ptr noundef %__data, i64 noundef 1, ptr noundef %38, ptr noundef %11, ptr noundef null) #12
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.end.cleanup_crit_edge, %land.lhs.true8.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_oom_score_adj_update(ptr noundef %__data, ptr noundef %task) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %0 = ptrtoint ptr %task to i32
  %conv = zext i32 %0 to i64
  tail call void @bpf_trace_run1(ptr noundef %__data, i64 noundef %conv) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_reclaim_retry_zone(ptr noundef %__data, ptr noundef %zoneref, i32 noundef %order, i32 noundef %reclaimable, i32 noundef %available, i32 noundef %min_wmark, i32 noundef %no_progress_loops, i1 noundef zeroext %wmark_check) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %0 = ptrtoint ptr %zoneref to i32
  %conv = zext i32 %0 to i64
  %conv4 = zext i32 %order to i64
  %conv8 = zext i32 %reclaimable to i64
  %conv12 = zext i32 %available to i64
  %conv16 = zext i32 %min_wmark to i64
  %conv20 = zext i32 %no_progress_loops to i64
  %conv25 = zext i1 %wmark_check to i64
  tail call void @bpf_trace_run7(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8, i64 noundef %conv12, i64 noundef %conv16, i64 noundef %conv20, i64 noundef %conv25) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_mark_victim(ptr noundef %__data, i32 noundef %pid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %conv = zext i32 %pid to i64
  tail call void @bpf_trace_run1(ptr noundef %__data, i64 noundef %conv) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_wake_reaper(ptr noundef %__data, i32 noundef %pid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %conv = zext i32 %pid to i64
  tail call void @bpf_trace_run1(ptr noundef %__data, i64 noundef %conv) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_start_task_reaping(ptr noundef %__data, i32 noundef %pid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %conv = zext i32 %pid to i64
  tail call void @bpf_trace_run1(ptr noundef %__data, i64 noundef %conv) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_finish_task_reaping(ptr noundef %__data, i32 noundef %pid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %conv = zext i32 %pid to i64
  tail call void @bpf_trace_run1(ptr noundef %__data, i64 noundef %conv) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_skip_task_reaping(ptr noundef %__data, i32 noundef %pid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %conv = zext i32 %pid to i64
  tail call void @bpf_trace_run1(ptr noundef %__data, i64 noundef %conv) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_compact_retry(ptr noundef %__data, i32 noundef %order, i32 noundef %priority, i32 noundef %result, i32 noundef %retries, i32 noundef %max_retries, i1 noundef zeroext %ret) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %conv = zext i32 %order to i64
  %conv4 = zext i32 %priority to i64
  %conv8 = zext i32 %result to i64
  %conv12 = zext i32 %retries to i64
  %conv16 = zext i32 %max_retries to i64
  %conv21 = zext i1 %ret to i64
  tail call void @bpf_trace_run6(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8, i64 noundef %conv12, i64 noundef %conv16, i64 noundef %conv21) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @find_lock_task_mm(ptr nocapture noundef readonly %p) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !407) #12
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !420
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.76, i32 noundef 696, ptr noundef nonnull @.str.77) #12
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call = tail call i32 @rcu_read_lock_any_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b31 = load i1, ptr @find_lock_task_mm.__warned, align 1
  br i1 %.b31, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @find_lock_task_mm.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.25, i32 noundef 142, ptr noundef nonnull @.str.26) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  %signal = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 111
  %4 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %signal, align 16
  %thread_head = getelementptr inbounds %struct.signal_struct, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %thread_head to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn44 = load volatile ptr, ptr %thread_head, align 4
  %cmp.not46 = icmp eq ptr %.pn44, %thread_head
  br i1 %cmp.not46, label %do.end.found_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.found_crit_edge:                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %found

for.body:                                         ; preds = %if.end15.for.body_crit_edge, %do.end.for.body_crit_edge
  %.pn47 = phi ptr [ %.pn, %if.end15.for.body_crit_edge ], [ %.pn44, %do.end.for.body_crit_edge ]
  %alloc_lock.i = getelementptr i8, ptr %.pn47, i32 380
  tail call void @_raw_spin_lock(ptr noundef %alloc_lock.i) #12
  %mm = getelementptr i8, ptr %.pn47, i32 -228
  %7 = ptrtoint ptr %mm to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mm, align 8
  %tobool11.not = icmp eq ptr %8, null
  br i1 %tobool11.not, label %if.end15, label %found.split.loop.exit42, !prof !418

if.end15:                                         ; preds = %for.body
  tail call void @_raw_spin_unlock(ptr noundef %alloc_lock.i) #12
  %9 = ptrtoint ptr %.pn47 to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn = load volatile ptr, ptr %.pn47, align 4
  %10 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %signal, align 16
  %thread_head10 = getelementptr inbounds %struct.signal_struct, ptr %11, i32 0, i32 3
  %cmp.not = icmp eq ptr %.pn, %thread_head10
  br i1 %cmp.not, label %if.end15.found_crit_edge, label %if.end15.for.body_crit_edge

if.end15.for.body_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

if.end15.found_crit_edge:                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %found

found.split.loop.exit42:                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %t.0.le = getelementptr i8, ptr %.pn47, i32 -1404
  br label %found

found:                                            ; preds = %found.split.loop.exit42, %if.end15.found_crit_edge, %do.end.found_crit_edge
  %t.1 = phi ptr [ %t.0.le, %found.split.loop.exit42 ], [ null, %do.end.found_crit_edge ], [ null, %if.end15.found_crit_edge ]
  %call.i33 = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i33, label %found.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i36

found.rcu_read_unlock.exit_crit_edge:             ; preds = %found
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true.i36:                                ; preds = %found
  %call1.i34 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i34)
  %tobool.not.i35 = icmp eq i32 %call1.i34, 0
  br i1 %tobool.not.i35, label %land.lhs.true.i36.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i38

land.lhs.true.i36.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i36
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true2.i38:                               ; preds = %land.lhs.true.i36
  %.b4.i37 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i37, label %land.lhs.true2.i38.rcu_read_unlock.exit_crit_edge, label %if.then.i39

land.lhs.true2.i38.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i38
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

if.then.i39:                                      ; preds = %land.lhs.true2.i38
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.76, i32 noundef 724, ptr noundef nonnull @.str.78) #12
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i39, %land.lhs.true2.i38.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i36.rcu_read_unlock.exit_crit_edge, %found.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !421
  %12 = tail call i32 @llvm.read_register.i32(metadata !407) #12
  %and.i.i.i.i.i40 = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i.i.i40 to ptr
  %preempt_count.i.i.i.i41 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %preempt_count.i.i.i.i41 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %preempt_count.i.i.i.i41, align 4
  %sub.i.i.i = add i32 %15, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i41, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  ret ptr %t.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @oom_badness(ptr nocapture noundef readonly %p, i32 noundef %totalpages) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tgid.i.i.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 69
  %0 = ptrtoint ptr %tgid.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tgid.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.i.not.i = icmp eq i32 %1, 1
  br i1 %cmp.i.not.i, label %entry.cleanup_crit_edge, label %oom_unkillable_task.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

oom_unkillable_task.exit:                         ; preds = %entry
  %flags.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 3
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %3, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i.not, label %if.end, label %oom_unkillable_task.exit.cleanup_crit_edge

oom_unkillable_task.exit.cleanup_crit_edge:       ; preds = %oom_unkillable_task.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %oom_unkillable_task.exit
  %call1 = tail call ptr @find_lock_task_mm(ptr noundef %p)
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %signal = getelementptr inbounds %struct.task_struct, ptr %call1, i32 0, i32 111
  %4 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %signal, align 16
  %oom_score_adj = getelementptr inbounds %struct.signal_struct, ptr %5, i32 0, i32 57
  %6 = ptrtoint ptr %oom_score_adj to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %oom_score_adj, align 2
  %conv = sext i16 %7 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1000, i16 %7)
  %cmp = icmp eq i16 %7, -1000
  br i1 %cmp, label %if.end3.if.then10_crit_edge, label %lor.lhs.false

if.end3.if.then10_crit_edge:                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then10

lor.lhs.false:                                    ; preds = %if.end3
  %mm = getelementptr inbounds %struct.task_struct, ptr %call1, i32 0, i32 53
  %8 = ptrtoint ptr %mm to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mm, align 8
  %flags = getelementptr inbounds %struct.anon.3, ptr %9, i32 0, i32 43
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %flags, align 4
  %12 = and i32 %11, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool6.not = icmp eq i32 %12, 0
  br i1 %tobool6.not, label %lor.lhs.false7, label %lor.lhs.false.if.then10_crit_edge

lor.lhs.false.if.then10_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then10

lor.lhs.false7:                                   ; preds = %lor.lhs.false
  %13 = tail call i32 @llvm.read_register.i32(metadata !407) #12
  %and.i.i.i.i.i.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %16, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !420
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i.i, label %lor.lhs.false7.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

lor.lhs.false7.rcu_read_lock.exit.i_crit_edge:    ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %lor.lhs.false7
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.76, i32 noundef 696, ptr noundef nonnull @.str.77) #12
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %lor.lhs.false7.rcu_read_lock.exit.i_crit_edge
  %vfork_done.i = getelementptr inbounds %struct.task_struct, ptr %call1, i32 0, i32 82
  %17 = ptrtoint ptr %vfork_done.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %vfork_done.i, align 4
  %tobool.not.i = icmp eq ptr %18, null
  br i1 %tobool.not.i, label %rcu_read_lock.exit.i.land.end.i_crit_edge, label %land.rhs.i

rcu_read_lock.exit.i.land.end.i_crit_edge:        ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.end.i

land.rhs.i:                                       ; preds = %rcu_read_lock.exit.i
  %real_parent.i = getelementptr inbounds %struct.task_struct, ptr %call1, i32 0, i32 71
  %19 = ptrtoint ptr %real_parent.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %real_parent.i, align 4
  %call.i = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i, label %land.rhs.i.do.end8.i_crit_edge

land.rhs.i.do.end8.i_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end8.i

land.lhs.true.i:                                  ; preds = %land.rhs.i
  %call3.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i.do.end8.i_crit_edge, label %land.lhs.true5.i

land.lhs.true.i.do.end8.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end8.i

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %.b14.i = load i1, ptr @in_vfork.__warned, align 1
  br i1 %.b14.i, label %land.lhs.true5.i.do.end8.i_crit_edge, label %if.then.i

land.lhs.true5.i.do.end8.i_crit_edge:             ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end8.i

if.then.i:                                        ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @in_vfork.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.79, i32 noundef 173, ptr noundef nonnull @.str.80) #12
  br label %do.end8.i

do.end8.i:                                        ; preds = %if.then.i, %land.lhs.true5.i.do.end8.i_crit_edge, %land.lhs.true.i.do.end8.i_crit_edge, %land.rhs.i.do.end8.i_crit_edge
  %mm.i = getelementptr inbounds %struct.task_struct, ptr %20, i32 0, i32 53
  %21 = ptrtoint ptr %mm.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mm.i, align 8
  %23 = ptrtoint ptr %mm to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mm, align 8
  %cmp.i = icmp eq ptr %22, %24
  br label %land.end.i

land.end.i:                                       ; preds = %do.end8.i, %rcu_read_lock.exit.i.land.end.i_crit_edge
  %25 = phi i1 [ false, %rcu_read_lock.exit.i.land.end.i_crit_edge ], [ %cmp.i, %do.end8.i ]
  %call.i15.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i15.i, label %land.end.i.in_vfork.exit_crit_edge, label %land.lhs.true.i18.i

land.end.i.in_vfork.exit_crit_edge:               ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %in_vfork.exit

land.lhs.true.i18.i:                              ; preds = %land.end.i
  %call1.i16.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i16.i)
  %tobool.not.i17.i = icmp eq i32 %call1.i16.i, 0
  br i1 %tobool.not.i17.i, label %land.lhs.true.i18.i.in_vfork.exit_crit_edge, label %land.lhs.true2.i20.i

land.lhs.true.i18.i.in_vfork.exit_crit_edge:      ; preds = %land.lhs.true.i18.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %in_vfork.exit

land.lhs.true2.i20.i:                             ; preds = %land.lhs.true.i18.i
  %.b4.i19.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i19.i, label %land.lhs.true2.i20.i.in_vfork.exit_crit_edge, label %if.then.i21.i

land.lhs.true2.i20.i.in_vfork.exit_crit_edge:     ; preds = %land.lhs.true2.i20.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %in_vfork.exit

if.then.i21.i:                                    ; preds = %land.lhs.true2.i20.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.76, i32 noundef 724, ptr noundef nonnull @.str.78) #12
  br label %in_vfork.exit

in_vfork.exit:                                    ; preds = %if.then.i21.i, %land.lhs.true2.i20.i.in_vfork.exit_crit_edge, %land.lhs.true.i18.i.in_vfork.exit_crit_edge, %land.end.i.in_vfork.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !421
  %26 = tail call i32 @llvm.read_register.i32(metadata !407) #12
  %and.i.i.i.i.i22.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i.i22.i to ptr
  %preempt_count.i.i.i.i23.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i.i23.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i.i23.i, align 4
  %sub.i.i.i.i = add i32 %29, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i23.i, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  br i1 %25, label %in_vfork.exit.if.then10_crit_edge, label %if.end11

in_vfork.exit.if.then10_crit_edge:                ; preds = %in_vfork.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then10

if.then10:                                        ; preds = %in_vfork.exit.if.then10_crit_edge, %lor.lhs.false.if.then10_crit_edge, %if.end3.if.then10_crit_edge
  %alloc_lock.i = getelementptr inbounds %struct.task_struct, ptr %call1, i32 0, i32 127
  tail call void @_raw_spin_unlock(ptr noundef %alloc_lock.i) #12
  br label %cleanup

if.end11:                                         ; preds = %in_vfork.exit
  call void @__sanitizer_cov_trace_pc() #14
  %30 = ptrtoint ptr %mm to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mm, align 8
  %rss_stat.i.i = getelementptr inbounds %struct.anon.3, ptr %31, i32 0, i32 40
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %rss_stat.i.i, i32 noundef 4) #12
  %32 = ptrtoint ptr %rss_stat.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %rss_stat.i.i, align 4
  %34 = tail call i32 @llvm.smax.i32(i32 %33, i32 0) #12
  %arrayidx.i.i = getelementptr %struct.anon.3, ptr %31, i32 0, i32 40, i32 0, i32 1
  %call.i.i.i7.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.i.i, i32 noundef 4) #12
  %35 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %arrayidx.i.i, align 4
  %37 = tail call i32 @llvm.smax.i32(i32 %36, i32 0) #12
  %arrayidx.i9.i = getelementptr %struct.anon.3, ptr %31, i32 0, i32 40, i32 0, i32 3
  %call.i.i.i10.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.i9.i, i32 noundef 4) #12
  %38 = ptrtoint ptr %arrayidx.i9.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %arrayidx.i9.i, align 4
  %40 = tail call i32 @llvm.smax.i32(i32 %39, i32 0) #12
  %41 = ptrtoint ptr %mm to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %mm, align 8
  %arrayidx.i = getelementptr %struct.anon.3, ptr %42, i32 0, i32 40, i32 0, i32 2
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.i, i32 noundef 4) #12
  %43 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %arrayidx.i, align 4
  %45 = tail call i32 @llvm.smax.i32(i32 %44, i32 0) #12
  %46 = ptrtoint ptr %mm to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %mm, align 8
  %pgtables_bytes.i = getelementptr inbounds %struct.anon.3, ptr %47, i32 0, i32 12
  %call.i.i.i36 = tail call zeroext i1 @__kasan_check_read(ptr noundef %pgtables_bytes.i, i32 noundef 4) #12
  %48 = ptrtoint ptr %pgtables_bytes.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %pgtables_bytes.i, align 4
  %div35 = lshr i32 %49, 12
  %alloc_lock.i37 = getelementptr inbounds %struct.task_struct, ptr %call1, i32 0, i32 127
  tail call void @_raw_spin_unlock(ptr noundef %alloc_lock.i37) #12
  %div19 = udiv i32 %totalpages, 1000
  %mul = mul i32 %div19, %conv
  %add.i = add i32 %34, %mul
  %add3.i = add i32 %add.i, %37
  %add = add i32 %add3.i, %40
  %add18 = add i32 %add, %45
  %add20 = add i32 %add18, %div35
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.then10, %if.end.cleanup_crit_edge, %oom_unkillable_task.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -2147483648, %if.then10 ], [ %add20, %if.end11 ], [ -2147483648, %oom_unkillable_task.exit.cleanup_crit_edge ], [ -2147483648, %if.end.cleanup_crit_edge ], [ -2147483648, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @process_shares_mm(ptr nocapture noundef readonly %p, ptr noundef readnone %mm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rcu_read_lock_any_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b34 = load i1, ptr @process_shares_mm.__warned, align 1
  br i1 %.b34, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @process_shares_mm.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.25, i32 noundef 497, ptr noundef nonnull @.str.26) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %signal = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 111
  %0 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %signal, align 16
  %thread_head = getelementptr inbounds %struct.signal_struct, ptr %1, i32 0, i32 3
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %do.end
  %.pn.in = phi ptr [ %thread_head, %do.end ], [ %.pn, %for.body.for.cond_crit_edge ]
  %2 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn = load volatile ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, %thread_head
  br i1 %cmp.not, label %for.cond.cleanup29_crit_edge, label %for.body

for.cond.cleanup29_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup29

for.body:                                         ; preds = %for.cond
  %mm15 = getelementptr i8, ptr %.pn, i32 -228
  %3 = ptrtoint ptr %mm15 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %mm15, align 8
  %tobool16.not = icmp eq ptr %4, null
  br i1 %tobool16.not, label %for.body.for.cond_crit_edge, label %cleanup29.split.loop.exit35

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond

cleanup29.split.loop.exit35:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %cmp18.le = icmp eq ptr %4, %mm
  br label %cleanup29

cleanup29:                                        ; preds = %cleanup29.split.loop.exit35, %for.cond.cleanup29_crit_edge
  %retval.2 = phi i1 [ %cmp18.le, %cleanup29.split.loop.exit35 ], [ false, %for.cond.cleanup29_crit_edge ]
  ret i1 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @__oom_reap_task_mm(ptr noundef %mm) local_unnamed_addr #0 align 64 {
entry:
  %range = alloca %struct.mmu_notifier_range, align 4
  %tlb = alloca %struct.mmu_gather, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.anon.3, ptr %mm, i32 0, i32 43
  tail call void @_set_bit(i32 noundef 22, ptr noundef %flags) #12
  %0 = ptrtoint ptr %mm to i32
  call void @__asan_load4_noabort(i32 %0)
  %vma.029 = load ptr, ptr %mm, align 4
  %tobool.not30 = icmp eq ptr %vma.029, null
  br i1 %tobool.not30, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %1 = getelementptr inbounds %struct.mmu_notifier_range, ptr %range, i32 0, i32 1
  %2 = getelementptr inbounds %struct.mmu_notifier_range, ptr %range, i32 0, i32 2
  %3 = getelementptr inbounds %struct.mmu_notifier_range, ptr %range, i32 0, i32 3
  %4 = getelementptr inbounds %struct.mmu_notifier_range, ptr %range, i32 0, i32 4
  %5 = getelementptr inbounds %struct.mmu_notifier_range, ptr %range, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %vma.032 = phi ptr [ %vma.029, %for.body.lr.ph ], [ %vma.0, %for.inc.for.body_crit_edge ]
  %ret.0.off031 = phi i1 [ true, %for.body.lr.ph ], [ %ret.2.off0, %for.inc.for.body_crit_edge ]
  %vm_flags.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma.032, i32 0, i32 8
  %6 = ptrtoint ptr %vm_flags.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vm_flags.i, align 4
  %and.i = and i32 %7, 4203520
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end:                                           ; preds = %for.body
  %vm_ops.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma.032, i32 0, i32 12
  %8 = ptrtoint ptr %vm_ops.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vm_ops.i, align 4
  %tobool.not.i28 = icmp eq ptr %9, null
  %and = and i32 %7, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  %or.cond = select i1 %tobool.not.i28, i1 true, i1 %tobool2.not
  br i1 %or.cond, label %if.then3, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then3:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %range) #12
  %10 = call ptr @memset(ptr %range, i32 255, i32 28)
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %tlb) #12
  %11 = call ptr @memset(ptr %tlb, i32 255, i32 68)
  %12 = ptrtoint ptr %vma.032 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %vma.032, align 4
  %vm_end = getelementptr inbounds %struct.vm_area_struct, ptr %vma.032, i32 0, i32 1
  %14 = ptrtoint ptr %vm_end to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %vm_end, align 4
  %16 = ptrtoint ptr %range to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %vma.032, ptr %range, align 4
  %17 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %5, align 4
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %mm, ptr %1, align 4
  %19 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %13, ptr %2, align 4
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %15, ptr %3, align 4
  %21 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %4, align 4
  call void @tlb_gather_mmu(ptr noundef nonnull %tlb, ptr noundef %mm) #12
  %call4 = call fastcc i32 @mmu_notifier_invalidate_range_start_nonblock(ptr noundef nonnull %range)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.then3.cleanup_crit_edge

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end7:                                          ; preds = %if.then3
  %22 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %2, align 4
  %24 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %3, align 4
  call void @unmap_page_range(ptr noundef nonnull %tlb, ptr noundef nonnull %vma.032, i32 noundef %23, i32 noundef %25, ptr noundef null) #12
  %26 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %4, align 4
  %and.i.i = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.end7.if.end.i_crit_edge, label %do.body.i

if.end7.if.end.i_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

do.body.i:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  call void @__might_sleep(ptr noundef nonnull @.str.81, i32 noundef 482) #12
  br label %if.end.i

if.end.i:                                         ; preds = %do.body.i, %if.end7.if.end.i_crit_edge
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 4
  %notifier_subscriptions.i.i = getelementptr inbounds %struct.anon.3, ptr %29, i32 0, i32 49
  %30 = ptrtoint ptr %notifier_subscriptions.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %notifier_subscriptions.i.i, align 8
  %tobool.i8.not.i = icmp eq ptr %31, null
  br i1 %tobool.i8.not.i, label %if.end.i.cleanup_crit_edge, label %if.then4.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__mmu_notifier_invalidate_range_end(ptr noundef nonnull %range, i1 noundef zeroext false) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then4.i, %if.end.i.cleanup_crit_edge, %if.then3.cleanup_crit_edge
  %ret.1.off0 = phi i1 [ false, %if.then3.cleanup_crit_edge ], [ %ret.0.off031, %if.end.i.cleanup_crit_edge ], [ %ret.0.off031, %if.then4.i ]
  call void @tlb_finish_mmu(ptr noundef nonnull %tlb) #12
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %tlb) #12
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %range) #12
  br label %for.inc

for.inc:                                          ; preds = %cleanup, %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %ret.2.off0 = phi i1 [ %ret.1.off0, %cleanup ], [ %ret.0.off031, %for.body.for.inc_crit_edge ], [ %ret.0.off031, %if.end.for.inc_crit_edge ]
  %vm_next = getelementptr inbounds %struct.vm_area_struct, ptr %vma.032, i32 0, i32 2
  %32 = ptrtoint ptr %vm_next to i32
  call void @__asan_load4_noabort(i32 %32)
  %vma.0 = load ptr, ptr %vm_next, align 4
  %tobool.not = icmp eq ptr %vma.0, null
  br i1 %tobool.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %ret.0.off0.lcssa = phi i1 [ true, %entry.for.end_crit_edge ], [ %ret.2.off0, %for.inc.for.end_crit_edge ]
  ret i1 %ret.0.off0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tlb_gather_mmu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mmu_notifier_invalidate_range_start_nonblock(ptr noundef %range) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  tail call void @lock_acquire(ptr noundef nonnull @__mmu_notifier_invalidate_range_start_map, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@mmu_notifier_invalidate_range_start_nonblock, %__here) to i32)) #12
  %mm = getelementptr inbounds %struct.mmu_notifier_range, ptr %range, i32 0, i32 1
  %0 = ptrtoint ptr %mm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mm, align 4
  %notifier_subscriptions.i = getelementptr inbounds %struct.anon.3, ptr %1, i32 0, i32 49
  %2 = ptrtoint ptr %notifier_subscriptions.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %notifier_subscriptions.i, align 8
  %tobool.i.not = icmp eq ptr %3, null
  br i1 %tobool.i.not, label %__here.__here2_crit_edge, label %if.then

__here.__here2_crit_edge:                         ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here2

if.then:                                          ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #14
  %flags = getelementptr inbounds %struct.mmu_notifier_range, ptr %range, i32 0, i32 4
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %and = and i32 %5, -2
  store i32 %and, ptr %flags, align 4
  %call1 = tail call i32 @__mmu_notifier_invalidate_range_start(ptr noundef %range) #12
  br label %__here2

__here2:                                          ; preds = %if.then, %__here.__here2_crit_edge
  %ret.0 = phi i32 [ %call1, %if.then ], [ 0, %__here.__here2_crit_edge ]
  tail call void @lock_release(ptr noundef nonnull @__mmu_notifier_invalidate_range_start_map, i32 noundef ptrtoint (ptr blockaddress(@mmu_notifier_invalidate_range_start_nonblock, %__here2) to i32)) #12
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tlb_finish_mmu(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unmap_page_range(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @oom_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @oom_reaper, ptr noundef null, i32 noundef -1, ptr noundef nonnull @.str.82) #12
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call2 = tail call i32 @wake_up_process(ptr noundef %call) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  store ptr %call, ptr @oom_reaper_th, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @exit_oom_victim() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !407) #12
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  tail call void @_clear_bit(i32 noundef 18, ptr noundef %1) #12
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @oom_victims, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !422
  tail call void @llvm.prefetch.p0(ptr nonnull @oom_victims, i32 1, i32 3, i32 1) #12
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @oom_victims, ptr nonnull @oom_victims, i32 1, ptr nonnull elementtype(i32) @oom_victims) #12, !srcloc !423
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %2, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !424
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %tobool.not = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__wake_up(ptr noundef nonnull @oom_victims_wait, i32 noundef 3, i32 noundef 0, ptr noundef null) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @oom_killer_enable() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  store i1 false, ptr @oom_killer_disabled, align 1
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27) #15
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @oom_killer_disable(i32 noundef %timeout) local_unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mutex_lock_killable_nested(ptr noundef nonnull @oom_lock, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup51_crit_edge

entry.cleanup51_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup51

if.end:                                           ; preds = %entry
  store i1 true, ptr @oom_killer_disabled, align 1
  tail call void @mutex_unlock(ptr noundef nonnull @oom_lock) #12
  tail call void @__might_sleep(ptr noundef nonnull @.str.25, i32 noundef 777) #12
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @oom_victims, i32 noundef 4) #12
  %0 = load volatile i32, ptr @oom_victims, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool5.not = icmp eq i32 %0, 0
  %1 = or i32 %0, %timeout
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %2 = icmp eq i32 %1, 0
  %__ret.0 = select i1 %2, i32 1, i32 %timeout
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret.0)
  %tobool11.not = icmp eq i32 %__ret.0, 0
  %3 = select i1 %tobool5.not, i1 true, i1 %tobool11.not
  br i1 %3, label %if.end.if.end42_crit_edge, label %if.then14

if.end.if.end42_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end42

if.then14:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #12
  %4 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #12
  %call1672 = call i32 @prepare_to_wait_event(ptr noundef nonnull @oom_victims_wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #12
  %call.i.i6273 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull @oom_victims, i32 noundef 4) #12
  %5 = load volatile i32, ptr @oom_victims, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool19.not74 = icmp eq i32 %5, 0
  %6 = or i32 %5, %timeout
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %7 = icmp eq i32 %6, 0
  %__ret15.176 = select i1 %7, i32 1, i32 %timeout
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret15.176)
  %tobool30.not77 = icmp eq i32 %__ret15.176, 0
  %8 = select i1 %tobool19.not74, i1 true, i1 %tobool30.not77
  br i1 %8, label %if.then14.for.end_crit_edge, label %if.then14.if.end36_crit_edge

if.then14.if.end36_crit_edge:                     ; preds = %if.then14
  br label %if.end36

if.then14.for.end_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.end36:                                         ; preds = %cleanup.if.end36_crit_edge, %if.then14.if.end36_crit_edge
  %__ret15.179 = phi i32 [ %__ret15.1, %cleanup.if.end36_crit_edge ], [ %__ret15.176, %if.then14.if.end36_crit_edge ]
  %call1678 = phi i32 [ %call16, %cleanup.if.end36_crit_edge ], [ %call1672, %if.then14.if.end36_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1678)
  %tobool37.not = icmp eq i32 %call1678, 0
  br i1 %tobool37.not, label %cleanup, label %if.end36.__out_crit_edge

if.end36.__out_crit_edge:                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #14
  br label %__out

cleanup:                                          ; preds = %if.end36
  %call40 = call i32 @schedule_timeout(i32 noundef %__ret15.179) #12
  %call16 = call i32 @prepare_to_wait_event(ptr noundef nonnull @oom_victims_wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #12
  %call.i.i62 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull @oom_victims, i32 noundef 4) #12
  %9 = load volatile i32, ptr @oom_victims, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool19.not = icmp eq i32 %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool24.not = icmp eq i32 %call40, 0
  %10 = select i1 %tobool19.not, i1 %tobool24.not, i1 false
  %__ret15.1 = select i1 %10, i32 1, i32 %call40
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret15.1)
  %tobool30.not = icmp eq i32 %__ret15.1, 0
  %11 = select i1 %tobool19.not, i1 true, i1 %tobool30.not
  br i1 %11, label %cleanup.for.end_crit_edge, label %cleanup.if.end36_crit_edge

cleanup.if.end36_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.then14.for.end_crit_edge
  %__ret15.1.lcssa = phi i32 [ %__ret15.176, %if.then14.for.end_crit_edge ], [ %__ret15.1, %cleanup.for.end_crit_edge ]
  call void @finish_wait(ptr noundef nonnull @oom_victims_wait, ptr noundef nonnull %__wq_entry) #12
  br label %__out

__out:                                            ; preds = %for.end, %if.end36.__out_crit_edge
  %__ret15.265 = phi i32 [ %__ret15.1.lcssa, %for.end ], [ %call1678, %if.end36.__out_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #12
  br label %if.end42

if.end42:                                         ; preds = %__out, %if.end.if.end42_crit_edge
  %__ret.1 = phi i32 [ %__ret.0, %if.end.if.end42_crit_edge ], [ %__ret15.265, %__out ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %__ret.1)
  %cmp = icmp slt i32 %__ret.1, 1
  br i1 %cmp, label %if.then44, label %if.end42.cleanup51.sink.split_crit_edge

if.end42.cleanup51.sink.split_crit_edge:          ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup51.sink.split

if.then44:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #14
  store i1 false, ptr @oom_killer_disabled, align 1
  br label %cleanup51.sink.split

cleanup51.sink.split:                             ; preds = %if.then44, %if.end42.cleanup51.sink.split_crit_edge
  %.str.29.sink = phi ptr [ @.str.27, %if.then44 ], [ @.str.29, %if.end42.cleanup51.sink.split_crit_edge ]
  %12 = xor i1 %cmp, true
  %call50 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.29.sink) #15
  br label %cleanup51

cleanup51:                                        ; preds = %cleanup51.sink.split, %entry.cleanup51_crit_edge
  %retval.0 = phi i1 [ false, %entry.cleanup51_crit_edge ], [ %12, %cleanup51.sink.split ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_killable_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @register_oom_notifier(ptr noundef %nb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @blocking_notifier_chain_register(ptr noundef nonnull @oom_notify_list, ptr noundef %nb) #12
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_chain_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @unregister_oom_notifier(ptr noundef %nb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @blocking_notifier_chain_unregister(ptr noundef nonnull @oom_notify_list, ptr noundef %nb) #12
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_chain_unregister(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @out_of_memory(ptr noundef %oc) local_unnamed_addr #0 align 64 {
entry:
  %freed = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %freed) #12
  %0 = ptrtoint ptr %freed to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %freed, align 4
  %.b102 = load i1, ptr @oom_killer_disabled, align 1
  br i1 %.b102, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %memcg.i = getelementptr inbounds %struct.oom_control, ptr %oc, i32 0, i32 2
  %1 = ptrtoint ptr %memcg.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %memcg.i, align 4
  %cmp.i.not = icmp eq ptr %2, null
  br i1 %cmp.i.not, label %if.then1, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

if.then1:                                         ; preds = %if.end
  %call2 = call i32 @blocking_notifier_call_chain(ptr noundef nonnull @oom_notify_list, i32 noundef 0, ptr noundef nonnull %freed) #12
  %3 = ptrtoint ptr %freed to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %freed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.not = icmp eq i32 %4, 0
  br i1 %cmp.not, label %if.then1.if.end6_crit_edge, label %land.lhs.true

if.then1.if.end6_crit_edge:                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

land.lhs.true:                                    ; preds = %if.then1
  %order.i = getelementptr inbounds %struct.oom_control, ptr %oc, i32 0, i32 4
  %5 = ptrtoint ptr %order.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %order.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %cmp.i103 = icmp eq i32 %6, -1
  br i1 %cmp.i103, label %land.lhs.true.if.end6_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

if.end6:                                          ; preds = %land.lhs.true.if.end6_crit_edge, %if.then1.if.end6_crit_edge, %if.end.if.end6_crit_edge
  %7 = call i32 @llvm.read_register.i32(metadata !407) #12
  %and.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %task, align 8
  %call8 = call fastcc zeroext i1 @task_will_free_mem(ptr noundef %10)
  br i1 %call8, label %if.then9, label %if.end14

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  %11 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %task, align 8
  call fastcc void @mark_oom_victim(ptr noundef %12)
  %13 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %task, align 8
  call fastcc void @wake_oom_reaper(ptr noundef %14)
  br label %cleanup

if.end14:                                         ; preds = %if.end6
  %gfp_mask = getelementptr inbounds %struct.oom_control, ptr %oc, i32 0, i32 3
  %15 = ptrtoint ptr %gfp_mask to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %gfp_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool15.not = icmp ne i32 %16, 0
  %and = and i32 %16, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool18.not = icmp eq i32 %and, 0
  %or.cond = and i1 %tobool15.not, %tobool18.not
  br i1 %or.cond, label %land.lhs.true19, label %if.end14.if.end22_crit_edge

if.end14.if.end22_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22

land.lhs.true19:                                  ; preds = %if.end14
  %17 = ptrtoint ptr %memcg.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %memcg.i, align 4
  %cmp.i105.not = icmp eq ptr %18, null
  br i1 %cmp.i105.not, label %land.lhs.true19.cleanup_crit_edge, label %land.lhs.true19.if.end22_crit_edge

land.lhs.true19.if.end22_crit_edge:               ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22

land.lhs.true19.cleanup_crit_edge:                ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end22:                                         ; preds = %land.lhs.true19.if.end22_crit_edge, %if.end14.if.end22_crit_edge
  %and.i.i = and i32 %16, 15
  %shr2.i.i = lshr i32 59624, %and.i.i
  %and3.i.i = and i32 %shr2.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i.i)
  %tobool.not.i.i = icmp eq i32 %and3.i.i, 0
  br i1 %tobool.not.i.i, label %gfp_zone.exit.i, label %do.body6.i.i, !prof !417

do.body6.i.i:                                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/gfp.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 485, 0\0A.popsection", ""() #12, !srcloc !425
  unreachable

gfp_zone.exit.i:                                  ; preds = %if.end22
  %19 = ptrtoint ptr %memcg.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %memcg.i, align 4
  %cmp.i.not.i = icmp eq ptr %20, null
  br i1 %cmp.i.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %gfp_zone.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %call2.i = call i32 @mem_cgroup_get_max(ptr noundef nonnull %20) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  %call2..i = select i1 %tobool.not.i, i32 1, i32 %call2.i
  br label %if.end27

if.end.i:                                         ; preds = %gfp_zone.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull @_totalram_pages, i32 noundef 4) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @_totalram_pages to i32))
  %21 = load volatile i32, ptr @_totalram_pages, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @total_swap_pages to i32))
  %22 = load i32, ptr @total_swap_pages, align 4
  %add.i = add i32 %22, %21
  br label %if.end27

if.end27:                                         ; preds = %if.end.i, %if.then.i
  %call2..sink.i = phi i32 [ %add.i, %if.end.i ], [ %call2..i, %if.then.i ]
  %retval.0.i = phi i32 [ 0, %if.end.i ], [ 3, %if.then.i ]
  %23 = getelementptr inbounds %struct.oom_control, ptr %oc, i32 0, i32 5
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %call2..sink.i, ptr %23, align 4
  %constraint = getelementptr inbounds %struct.oom_control, ptr %oc, i32 0, i32 8
  %25 = ptrtoint ptr %constraint to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %retval.0.i, ptr %constraint, align 4
  %nodemask = getelementptr inbounds %struct.oom_control, ptr %oc, i32 0, i32 1
  %26 = ptrtoint ptr %nodemask to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %nodemask, align 4
  %27 = load i32, ptr @sysctl_panic_on_oom, align 4
  %28 = zext i32 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values)
  switch i32 %27, label %if.then4.i [
    i32 0, label %if.end27.check_panic_on_oom.exit_crit_edge
    i32 2, label %if.end27.if.end8.i_crit_edge
  ], !prof !426

if.end27.if.end8.i_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8.i

if.end27.check_panic_on_oom.exit_crit_edge:       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  br label %check_panic_on_oom.exit

if.then4.i:                                       ; preds = %if.end27
  br i1 %cmp.i.not.i, label %if.then4.i.if.end8.i_crit_edge, label %if.then4.i.check_panic_on_oom.exit_crit_edge

if.then4.i.check_panic_on_oom.exit_crit_edge:     ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %check_panic_on_oom.exit

if.then4.i.if.end8.i_crit_edge:                   ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then4.i.if.end8.i_crit_edge, %if.end27.if.end8.i_crit_edge
  %order.i.i = getelementptr inbounds %struct.oom_control, ptr %oc, i32 0, i32 4
  %29 = ptrtoint ptr %order.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %order.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %30)
  %cmp.i.i = icmp eq i32 %30, -1
  br i1 %cmp.i.i, label %if.end8.i.check_panic_on_oom.exit_crit_edge, label %if.end10.i

if.end8.i.check_panic_on_oom.exit_crit_edge:      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %check_panic_on_oom.exit

if.end10.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  call fastcc void @dump_header(ptr noundef %oc, ptr noundef null) #12
  %31 = load i32, ptr @sysctl_panic_on_oom, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %31)
  %cmp11.i = icmp eq i32 %31, 2
  %cond.i = select i1 %cmp11.i, ptr @.str.96, ptr @.str.97
  call void @__asan_handle_no_return()
  call void (ptr, ...) @panic(ptr noundef nonnull @.str.95, ptr noundef nonnull %cond.i) #16
  unreachable

check_panic_on_oom.exit:                          ; preds = %if.end8.i.check_panic_on_oom.exit_crit_edge, %if.then4.i.check_panic_on_oom.exit_crit_edge, %if.end27.check_panic_on_oom.exit_crit_edge
  %32 = ptrtoint ptr %memcg.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %memcg.i, align 4
  %cmp.i107.not = icmp eq ptr %33, null
  br i1 %cmp.i107.not, label %land.lhs.true29, label %if.then.i114

land.lhs.true29:                                  ; preds = %check_panic_on_oom.exit
  %34 = load i32, ptr @sysctl_oom_kill_allocating_task, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool30.not = icmp eq i32 %34, 0
  br i1 %tobool30.not, label %land.lhs.true29.if.else.i_crit_edge, label %land.lhs.true31

land.lhs.true29.if.else.i_crit_edge:              ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i

land.lhs.true31:                                  ; preds = %land.lhs.true29
  %35 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %task, align 8
  %mm = getelementptr inbounds %struct.task_struct, ptr %36, i32 0, i32 53
  %37 = ptrtoint ptr %mm to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %mm, align 8
  %tobool34.not = icmp eq ptr %38, null
  br i1 %tobool34.not, label %land.lhs.true31.if.else.i_crit_edge, label %land.lhs.true35

land.lhs.true31.if.else.i_crit_edge:              ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i

land.lhs.true35:                                  ; preds = %land.lhs.true31
  %tgid.i.i.i = getelementptr inbounds %struct.task_struct, ptr %36, i32 0, i32 69
  %39 = ptrtoint ptr %tgid.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %tgid.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %40)
  %cmp.i.not.i108 = icmp eq i32 %40, 1
  br i1 %cmp.i.not.i108, label %land.lhs.true35.if.else.i_crit_edge, label %oom_unkillable_task.exit

land.lhs.true35.if.else.i_crit_edge:              ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i

oom_unkillable_task.exit:                         ; preds = %land.lhs.true35
  %flags.i = getelementptr inbounds %struct.task_struct, ptr %36, i32 0, i32 3
  %41 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %flags.i, align 4
  %and.i109 = and i32 %42, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i109)
  %tobool1.not.i.not = icmp eq i32 %and.i109, 0
  br i1 %tobool1.not.i.not, label %land.lhs.true39, label %oom_unkillable_task.exit.if.else.i_crit_edge

oom_unkillable_task.exit.if.else.i_crit_edge:     ; preds = %oom_unkillable_task.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i

land.lhs.true39:                                  ; preds = %oom_unkillable_task.exit
  %signal = getelementptr inbounds %struct.task_struct, ptr %36, i32 0, i32 111
  %43 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %signal, align 16
  %oom_score_adj = getelementptr inbounds %struct.signal_struct, ptr %44, i32 0, i32 57
  %45 = ptrtoint ptr %oom_score_adj to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %oom_score_adj, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1000, i16 %46)
  %cmp46.not = icmp eq i16 %46, -1000
  br i1 %cmp46.not, label %land.lhs.true39.if.else.i_crit_edge, label %if.then48

land.lhs.true39.if.else.i_crit_edge:              ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i

if.then48:                                        ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #14
  call fastcc void @get_task_struct(ptr noundef %36)
  %47 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %task, align 8
  %chosen = getelementptr inbounds %struct.oom_control, ptr %oc, i32 0, i32 6
  %49 = ptrtoint ptr %chosen to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %48, ptr %chosen, align 4
  call fastcc void @oom_kill_process(ptr noundef %oc, ptr noundef nonnull @.str.31)
  br label %cleanup

if.then.i114:                                     ; preds = %check_panic_on_oom.exit
  call void @__sanitizer_cov_trace_pc() #14
  %chosen_points.i = getelementptr inbounds %struct.oom_control, ptr %oc, i32 0, i32 7
  %50 = ptrtoint ptr %chosen_points.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 -2147483648, ptr %chosen_points.i, align 4
  %call1.i = call i32 @mem_cgroup_scan_tasks(ptr noundef nonnull %33, ptr noundef nonnull @oom_evaluate_task, ptr noundef %oc) #12
  br label %select_bad_process.exit

if.else.i:                                        ; preds = %land.lhs.true39.if.else.i_crit_edge, %oom_unkillable_task.exit.if.else.i_crit_edge, %land.lhs.true35.if.else.i_crit_edge, %land.lhs.true31.if.else.i_crit_edge, %land.lhs.true29.if.else.i_crit_edge
  %chosen_points.i124 = getelementptr inbounds %struct.oom_control, ptr %oc, i32 0, i32 7
  %51 = ptrtoint ptr %chosen_points.i124 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 -2147483648, ptr %chosen_points.i124, align 4
  %52 = call i32 @llvm.read_register.i32(metadata !407) #12
  %and.i.i.i.i.i.i = and i32 %52, -16384
  %53 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %55, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !420
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i.i = call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i.i, label %if.else.i.for.cond.i.preheader_crit_edge, label %land.lhs.true.i.i

if.else.i.for.cond.i.preheader_crit_edge:         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i.preheader

land.lhs.true.i.i:                                ; preds = %if.else.i
  %call1.i.i = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i115 = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i115, label %land.lhs.true.i.i.for.cond.i.preheader_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.for.cond.i.preheader_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i.preheader

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.for.cond.i.preheader_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.for.cond.i.preheader_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i.preheader

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.76, i32 noundef 696, ptr noundef nonnull @.str.77) #12
  br label %for.cond.i.preheader

for.cond.i.preheader:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.for.cond.i.preheader_crit_edge, %land.lhs.true.i.i.for.cond.i.preheader_crit_edge, %if.else.i.for.cond.i.preheader_crit_edge
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %for.cond.i.preheader
  %p.0.i = phi ptr [ %add.ptr.i, %for.body.i.for.cond.i_crit_edge ], [ @init_task, %for.cond.i.preheader ]
  %tasks.i = getelementptr inbounds %struct.task_struct, ptr %p.0.i, i32 0, i32 50
  %56 = ptrtoint ptr %tasks.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile ptr, ptr %tasks.i, align 16
  %add.ptr.i = getelementptr i8, ptr %57, i32 -1136
  %cmp.not.i = icmp eq ptr %add.ptr.i, @init_task
  br i1 %cmp.not.i, label %for.cond.i.for.end.i_crit_edge, label %for.body.i

for.cond.i.for.end.i_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.body.i:                                       ; preds = %for.cond.i
  %call3.i = call i32 @oom_evaluate_task(ptr noundef %add.ptr.i, ptr noundef %oc) #12
  %tobool.not.i116 = icmp eq i32 %call3.i, 0
  br i1 %tobool.not.i116, label %for.body.i.for.cond.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %for.cond.i.for.end.i_crit_edge
  %call.i11.i = call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i11.i, label %for.end.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i14.i

for.end.i.rcu_read_unlock.exit.i_crit_edge:       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit.i

land.lhs.true.i14.i:                              ; preds = %for.end.i
  %call1.i12.i = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i12.i)
  %tobool.not.i13.i = icmp eq i32 %call1.i12.i, 0
  br i1 %tobool.not.i13.i, label %land.lhs.true.i14.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i16.i

land.lhs.true.i14.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i14.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i16.i:                             ; preds = %land.lhs.true.i14.i
  %.b4.i15.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i15.i, label %land.lhs.true2.i16.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i17.i

land.lhs.true2.i16.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i16.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit.i

if.then.i17.i:                                    ; preds = %land.lhs.true2.i16.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.76, i32 noundef 724, ptr noundef nonnull @.str.78) #12
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i17.i, %land.lhs.true2.i16.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i14.i.rcu_read_unlock.exit.i_crit_edge, %for.end.i.rcu_read_unlock.exit.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !421
  %58 = call i32 @llvm.read_register.i32(metadata !407) #12
  %and.i.i.i.i.i18.i = and i32 %58, -16384
  %59 = inttoptr i32 %and.i.i.i.i.i18.i to ptr
  %preempt_count.i.i.i.i19.i = getelementptr inbounds %struct.thread_info, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %preempt_count.i.i.i.i19.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile i32, ptr %preempt_count.i.i.i.i19.i, align 4
  %sub.i.i.i.i = add i32 %61, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i19.i, align 4
  call void @rcu_read_unlock_strict() #12
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  br label %select_bad_process.exit

select_bad_process.exit:                          ; preds = %rcu_read_unlock.exit.i, %if.then.i114
  %chosen55 = getelementptr inbounds %struct.oom_control, ptr %oc, i32 0, i32 6
  %62 = ptrtoint ptr %chosen55 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %chosen55, align 4
  %tobool56.not = icmp eq ptr %63, null
  br i1 %tobool56.not, label %if.then57, label %select_bad_process.exit.if.end64_crit_edge

select_bad_process.exit.if.end64_crit_edge:       ; preds = %select_bad_process.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end64

if.then57:                                        ; preds = %select_bad_process.exit
  call fastcc void @dump_header(ptr noundef %oc, ptr noundef null)
  %call58 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32) #15
  %order.i117 = getelementptr inbounds %struct.oom_control, ptr %oc, i32 0, i32 4
  %64 = ptrtoint ptr %order.i117 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %order.i117, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %65)
  %cmp.i118 = icmp eq i32 %65, -1
  br i1 %cmp.i118, label %if.then57.if.end64_crit_edge, label %land.lhs.true60

if.then57.if.end64_crit_edge:                     ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end64

land.lhs.true60:                                  ; preds = %if.then57
  %66 = ptrtoint ptr %memcg.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %memcg.i, align 4
  %cmp.i120.not = icmp eq ptr %67, null
  br i1 %cmp.i120.not, label %if.then62, label %land.lhs.true60.if.end64_crit_edge

land.lhs.true60.if.end64_crit_edge:               ; preds = %land.lhs.true60
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end64

if.then62:                                        ; preds = %land.lhs.true60
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_handle_no_return()
  call void (ptr, ...) @panic(ptr noundef nonnull @.str.34) #16
  unreachable

if.end64:                                         ; preds = %land.lhs.true60.if.end64_crit_edge, %if.then57.if.end64_crit_edge, %select_bad_process.exit.if.end64_crit_edge
  %68 = ptrtoint ptr %chosen55 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %chosen55, align 4
  %magicptr = ptrtoint ptr %69 to i32
  %70 = zext i32 %magicptr to i64
  call void @__sanitizer_cov_trace_switch(i64 %70, ptr @__sancov_gen_cov_switch_values.130)
  switch i32 %magicptr, label %if.then71 [
    i32 0, label %if.end64.if.end73_crit_edge
    i32 -1, label %if.end64.if.end73_crit_edge126
  ]

if.end64.if.end73_crit_edge126:                   ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end73

if.end64.if.end73_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end73

if.then71:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #14
  %71 = ptrtoint ptr %memcg.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %memcg.i, align 4
  %cmp.i122.not = icmp eq ptr %72, null
  %cond = select i1 %cmp.i122.not, ptr @.str.35, ptr @.str.36
  call fastcc void @oom_kill_process(ptr noundef %oc, ptr noundef nonnull %cond)
  br label %if.end73

if.end73:                                         ; preds = %if.then71, %if.end64.if.end73_crit_edge, %if.end64.if.end73_crit_edge126
  %73 = ptrtoint ptr %chosen55 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %chosen55, align 4
  %tobool75 = icmp ne ptr %74, null
  br label %cleanup

cleanup:                                          ; preds = %if.end73, %if.then48, %land.lhs.true19.cleanup_crit_edge, %if.then9, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %if.then9 ], [ %tobool75, %if.end73 ], [ true, %if.then48 ], [ false, %entry.cleanup_crit_edge ], [ true, %land.lhs.true.cleanup_crit_edge ], [ true, %land.lhs.true19.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %freed) #12
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_call_chain(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @task_will_free_mem(ptr noundef %task) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %mm1 = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 53
  %0 = ptrtoint ptr %mm1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mm1, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %signal.i = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 111
  %2 = ptrtoint ptr %signal.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %signal.i, align 16
  %core_state.i = getelementptr inbounds %struct.signal_struct, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %core_state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %core_state.i, align 4
  %tobool.not.i37 = icmp eq ptr %5, null
  br i1 %tobool.not.i37, label %if.end.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %flags.i = getelementptr inbounds %struct.signal_struct, ptr %3, i32 0, i32 12
  %6 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %if.end3.i, label %if.end.i.if.end3_crit_edge

if.end.i.if.end3_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end3

if.end3.i:                                        ; preds = %if.end.i
  %thread_group.i.i = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 80
  %8 = ptrtoint ptr %thread_group.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %thread_group.i.i, align 4
  %cmp.i.i.not.i = icmp eq ptr %9, %thread_group.i.i
  br i1 %cmp.i.i.not.i, label %land.lhs.true.i38, label %if.end3.i.cleanup_crit_edge

if.end3.i.cleanup_crit_edge:                      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true.i38:                                ; preds = %if.end3.i
  %flags5.i = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 3
  %10 = ptrtoint ptr %flags5.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags5.i, align 4
  %and6.i = and i32 %11, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.not.i = icmp eq i32 %and6.i, 0
  br i1 %tobool7.not.i, label %land.lhs.true.i38.cleanup_crit_edge, label %land.lhs.true.i38.if.end3_crit_edge

land.lhs.true.i38.if.end3_crit_edge:              ; preds = %land.lhs.true.i38
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end3

land.lhs.true.i38.cleanup_crit_edge:              ; preds = %land.lhs.true.i38
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end3:                                          ; preds = %land.lhs.true.i38.if.end3_crit_edge, %if.end.i.if.end3_crit_edge
  %flags = getelementptr inbounds %struct.anon.3, ptr %1, i32 0, i32 43
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %flags, align 4
  %14 = and i32 %13, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool5.not = icmp eq i32 %14, 0
  br i1 %tobool5.not, label %if.end7, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  %mm_users = getelementptr inbounds %struct.anon.3, ptr %1, i32 0, i32 10
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %mm_users, i32 noundef 4) #12
  %15 = ptrtoint ptr %mm_users to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %mm_users, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %16)
  %cmp = icmp slt i32 %16, 2
  br i1 %cmp, label %if.end7.cleanup_crit_edge, label %if.end10

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end10:                                         ; preds = %if.end7
  %17 = tail call i32 @llvm.read_register.i32(metadata !407) #12
  %and.i.i.i.i.i = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %20, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !420
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i, label %if.end10.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end10.rcu_read_lock.exit_crit_edge:            ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end10
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.76, i32 noundef 696, ptr noundef nonnull @.str.77) #12
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end10.rcu_read_lock.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.task_struct, ptr @init_task, i32 0, i32 50) to i32))
  %21 = load volatile ptr, ptr getelementptr inbounds (%struct.task_struct, ptr @init_task, i32 0, i32 50), align 16
  %add.ptr75 = getelementptr i8, ptr %21, i32 -1136
  %cmp12.not76 = icmp eq ptr %add.ptr75, @init_task
  br i1 %cmp12.not76, label %rcu_read_lock.exit.for.end_crit_edge, label %rcu_read_lock.exit.for.body_crit_edge

rcu_read_lock.exit.for.body_crit_edge:            ; preds = %rcu_read_lock.exit
  br label %for.body

rcu_read_lock.exit.for.end_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.cond.backedge.for.body_crit_edge, %rcu_read_lock.exit.for.body_crit_edge
  %22 = phi ptr [ %31, %for.cond.backedge.for.body_crit_edge ], [ %21, %rcu_read_lock.exit.for.body_crit_edge ]
  %call.i39 = tail call i32 @rcu_read_lock_any_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i39)
  %tobool.not.i40 = icmp eq i32 %call.i39, 0
  br i1 %tobool.not.i40, label %land.lhs.true.i42, label %for.body.do.end.i_crit_edge

for.body.do.end.i_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

land.lhs.true.i42:                                ; preds = %for.body
  %call1.i41 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i41)
  %tobool2.not.i = icmp eq i32 %call1.i41, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i42.do.end.i_crit_edge, label %land.lhs.true3.i

land.lhs.true.i42.do.end.i_crit_edge:             ; preds = %land.lhs.true.i42
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i42
  %.b34.i = load i1, ptr @process_shares_mm.__warned, align 1
  br i1 %.b34.i, label %land.lhs.true3.i.do.end.i_crit_edge, label %if.then.i43

land.lhs.true3.i.do.end.i_crit_edge:              ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

if.then.i43:                                      ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @process_shares_mm.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.25, i32 noundef 497, ptr noundef nonnull @.str.26) #12
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i43, %land.lhs.true3.i.do.end.i_crit_edge, %land.lhs.true.i42.do.end.i_crit_edge, %for.body.do.end.i_crit_edge
  %signal.i44 = getelementptr i8, ptr %22, i32 544
  %23 = ptrtoint ptr %signal.i44 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %signal.i44, align 16
  %thread_head.i = getelementptr inbounds %struct.signal_struct, ptr %24, i32 0, i32 3
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %do.end.i
  %.pn.in.i = phi ptr [ %thread_head.i, %do.end.i ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %25 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %.pn.i = load volatile ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %thread_head.i
  br i1 %cmp.not.i, label %for.cond.i.for.cond.backedge_crit_edge, label %for.body.i

for.cond.i.for.cond.backedge_crit_edge:           ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.backedge

for.body.i:                                       ; preds = %for.cond.i
  %mm15.i = getelementptr i8, ptr %.pn.i, i32 -228
  %26 = ptrtoint ptr %mm15.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile ptr, ptr %mm15.i, align 8
  %tobool16.not.i = icmp eq ptr %27, null
  br i1 %tobool16.not.i, label %for.body.i.for.cond.i_crit_edge, label %cleanup29.split.loop.exit35.i

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i

cleanup29.split.loop.exit35.i:                    ; preds = %for.body.i
  %cmp18.le.i = icmp eq ptr %27, %1
  br i1 %cmp18.le.i, label %if.end15, label %cleanup29.split.loop.exit35.i.for.cond.backedge_crit_edge

cleanup29.split.loop.exit35.i.for.cond.backedge_crit_edge: ; preds = %cleanup29.split.loop.exit35.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.backedge

if.end15:                                         ; preds = %cleanup29.split.loop.exit35.i
  %28 = ptrtoint ptr %signal.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %signal.i, align 16
  %cmp.i = icmp eq ptr %29, %24
  br i1 %cmp.i, label %if.end15.for.cond.backedge_crit_edge, label %if.end18

if.end15.for.cond.backedge_crit_edge:             ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.backedge

for.cond.backedge:                                ; preds = %land.lhs.true.i59.for.cond.backedge_crit_edge, %if.end.i52.for.cond.backedge_crit_edge, %if.end15.for.cond.backedge_crit_edge, %cleanup29.split.loop.exit35.i.for.cond.backedge_crit_edge, %for.cond.i.for.cond.backedge_crit_edge
  %30 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile ptr, ptr %22, align 16
  %add.ptr = getelementptr i8, ptr %31, i32 -1136
  %cmp12.not = icmp eq ptr %add.ptr, @init_task
  br i1 %cmp12.not, label %for.cond.backedge.for.end_crit_edge, label %for.cond.backedge.for.body_crit_edge

for.cond.backedge.for.body_crit_edge:             ; preds = %for.cond.backedge
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.cond.backedge.for.end_crit_edge:              ; preds = %for.cond.backedge
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.end18:                                         ; preds = %if.end15
  %core_state.i47 = getelementptr inbounds %struct.signal_struct, ptr %24, i32 0, i32 13
  %32 = ptrtoint ptr %core_state.i47 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %core_state.i47, align 4
  %tobool.not.i48 = icmp eq ptr %33, null
  br i1 %tobool.not.i48, label %if.end.i52, label %if.end18.for.end_crit_edge

if.end18.for.end_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.end.i52:                                       ; preds = %if.end18
  %flags.i49 = getelementptr inbounds %struct.signal_struct, ptr %24, i32 0, i32 12
  %34 = ptrtoint ptr %flags.i49 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %flags.i49, align 8
  %and.i50 = and i32 %35, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i50)
  %tobool1.not.i51 = icmp eq i32 %and.i50, 0
  br i1 %tobool1.not.i51, label %if.end3.i55, label %if.end.i52.for.cond.backedge_crit_edge

if.end.i52.for.cond.backedge_crit_edge:           ; preds = %if.end.i52
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.backedge

if.end3.i55:                                      ; preds = %if.end.i52
  %thread_group.i.i53 = getelementptr i8, ptr %22, i32 260
  %36 = ptrtoint ptr %thread_group.i.i53 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile ptr, ptr %thread_group.i.i53, align 4
  %cmp.i.i.not.i54 = icmp eq ptr %37, %thread_group.i.i53
  br i1 %cmp.i.i.not.i54, label %land.lhs.true.i59, label %if.end3.i55.for.end_crit_edge

if.end3.i55.for.end_crit_edge:                    ; preds = %if.end3.i55
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

land.lhs.true.i59:                                ; preds = %if.end3.i55
  %flags5.i56 = getelementptr i8, ptr %22, i32 -1124
  %38 = ptrtoint ptr %flags5.i56 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %flags5.i56, align 4
  %and6.i57 = and i32 %39, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i57)
  %tobool7.not.i58 = icmp eq i32 %and6.i57, 0
  br i1 %tobool7.not.i58, label %land.lhs.true.i59.for.end_crit_edge, label %land.lhs.true.i59.for.cond.backedge_crit_edge

land.lhs.true.i59.for.cond.backedge_crit_edge:    ; preds = %land.lhs.true.i59
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.backedge

land.lhs.true.i59.for.end_crit_edge:              ; preds = %land.lhs.true.i59
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %land.lhs.true.i59.for.end_crit_edge, %if.end3.i55.for.end_crit_edge, %if.end18.for.end_crit_edge, %for.cond.backedge.for.end_crit_edge, %rcu_read_lock.exit.for.end_crit_edge
  %cmp12.not.lcssa = phi i1 [ true, %rcu_read_lock.exit.for.end_crit_edge ], [ false, %if.end3.i55.for.end_crit_edge ], [ false, %land.lhs.true.i59.for.end_crit_edge ], [ false, %if.end18.for.end_crit_edge ], [ true, %for.cond.backedge.for.end_crit_edge ]
  %call.i63 = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i63, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i66

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true.i66:                                ; preds = %for.end
  %call1.i64 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i64)
  %tobool.not.i65 = icmp eq i32 %call1.i64, 0
  br i1 %tobool.not.i65, label %land.lhs.true.i66.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i68

land.lhs.true.i66.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i66
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true2.i68:                               ; preds = %land.lhs.true.i66
  %.b4.i67 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i67, label %land.lhs.true2.i68.rcu_read_unlock.exit_crit_edge, label %if.then.i69

land.lhs.true2.i68.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i68
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

if.then.i69:                                      ; preds = %land.lhs.true2.i68
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.76, i32 noundef 724, ptr noundef nonnull @.str.78) #12
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i69, %land.lhs.true2.i68.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i66.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !421
  %40 = tail call i32 @llvm.read_register.i32(metadata !407) #12
  %and.i.i.i.i.i70 = and i32 %40, -16384
  %41 = inttoptr i32 %and.i.i.i.i.i70 to ptr
  %preempt_count.i.i.i.i71 = getelementptr inbounds %struct.thread_info, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %preempt_count.i.i.i.i71 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %preempt_count.i.i.i.i71, align 4
  %sub.i.i.i = add i32 %43, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i71, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit, %if.end7.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %land.lhs.true.i38.cleanup_crit_edge, %if.end3.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %cmp12.not.lcssa, %rcu_read_unlock.exit ], [ false, %entry.cleanup_crit_edge ], [ false, %if.end3.cleanup_crit_edge ], [ true, %if.end7.cleanup_crit_edge ], [ false, %if.end.cleanup_crit_edge ], [ false, %land.lhs.true.i38.cleanup_crit_edge ], [ false, %if.end3.i.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mark_oom_victim(ptr noundef %tsk) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %mm1 = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 53
  %0 = ptrtoint ptr %mm1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mm1, align 8
  %.b56 = load i1, ptr @oom_killer_disabled, align 1
  br i1 %.b56, label %do.end, label %entry.if.end_crit_edge, !prof !418

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.25, i32 noundef 706, i32 noundef 9, ptr noundef null) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %stack.i = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 1
  %2 = ptrtoint ptr %stack.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stack.i, align 4
  %call.i.i57 = tail call i32 @_test_and_set_bit(i32 noundef 18, ptr noundef %3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i57)
  %tobool21.not = icmp eq i32 %call.i.i57, 0
  br i1 %tobool21.not, label %if.end23, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end23:                                         ; preds = %if.end
  %signal = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 111
  %4 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %signal, align 16
  %oom_mm = getelementptr inbounds %struct.signal_struct, ptr %5, i32 0, i32 59
  %call.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %oom_mm, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !427
  %6 = ptrtoint ptr %1 to i32
  tail call void @llvm.prefetch.p0(ptr %oom_mm, i32 1, i32 3, i32 1) #12
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %if.end23
  %7 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %oom_mm, i32 0, i32 %6) #12, !srcloc !428
  %asmresult.i = extractvalue { i32, i32 } %7, 0
  %tobool.not.i = icmp eq i32 %asmresult.i, 0
  br i1 %tobool.not.i, label %__cmpxchg.exit, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i

__cmpxchg.exit:                                   ; preds = %do.body.i
  %asmresult1.i = extractvalue { i32, i32 } %7, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !429
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult1.i)
  %tobool43.not = icmp eq i32 %asmresult1.i, 0
  br i1 %tobool43.not, label %if.then44, label %__cmpxchg.exit.if.end47_crit_edge

__cmpxchg.exit.if.end47_crit_edge:                ; preds = %__cmpxchg.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end47

if.then44:                                        ; preds = %__cmpxchg.exit
  call void @__sanitizer_cov_trace_pc() #14
  %8 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %signal, align 16
  %oom_mm46 = getelementptr inbounds %struct.signal_struct, ptr %9, i32 0, i32 59
  %10 = ptrtoint ptr %oom_mm46 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %oom_mm46, align 4
  %mm_count.i = getelementptr inbounds %struct.anon.3, ptr %11, i32 0, i32 11
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %mm_count.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %mm_count.i, i32 1, i32 3, i32 1) #12
  %12 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %mm_count.i, ptr %mm_count.i, i32 1, ptr elementtype(i32) %mm_count.i) #12, !srcloc !430
  %flags = getelementptr inbounds %struct.anon.3, ptr %1, i32 0, i32 43
  tail call void @_set_bit(i32 noundef 25, ptr noundef %flags) #12
  br label %if.end47

if.end47:                                         ; preds = %if.then44, %__cmpxchg.exit.if.end47_crit_edge
  tail call void @__thaw_task(ptr noundef %tsk) #12
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @oom_victims, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr nonnull @oom_victims, i32 1, i32 3, i32 1) #12
  %13 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @oom_victims, ptr nonnull @oom_victims, i32 1, ptr nonnull elementtype(i32) @oom_victims) #12, !srcloc !430
  %pid = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 68
  %14 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pid, align 8
  tail call fastcc void @trace_mark_victim(i32 noundef %15)
  br label %cleanup

cleanup:                                          ; preds = %if.end47, %if.end.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wake_oom_reaper(ptr noundef %tsk) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %signal = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 111
  %0 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %signal, align 16
  %oom_mm = getelementptr inbounds %struct.signal_struct, ptr %1, i32 0, i32 59
  %2 = ptrtoint ptr %oom_mm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %oom_mm, align 4
  %flags = getelementptr inbounds %struct.anon.3, ptr %3, i32 0, i32 43
  %call = tail call i32 @_test_and_set_bit(i32 noundef 26, ptr noundef %flags) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %entry
  %usage.i = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 2
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #12
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #12, !srcloc !431
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !418

if.end.if.end15.sink.split.i.i.i.i_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %5 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %.not.i.i.i.i = icmp sgt i32 %5, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.get_task_struct.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !417

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.get_task_struct.exit_crit_edge:   ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_task_struct.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %usage.i, i32 noundef %.sink.i.i.i.i) #12
  br label %get_task_struct.exit

get_task_struct.exit:                             ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.get_task_struct.exit_crit_edge
  tail call void @_raw_spin_lock(ptr noundef nonnull @oom_reaper_lock) #12
  %6 = load ptr, ptr @oom_reaper_list, align 4
  %oom_reaper_list = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 214
  %7 = ptrtoint ptr %oom_reaper_list to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %oom_reaper_list, align 4
  store ptr %tsk, ptr @oom_reaper_list, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @oom_reaper_lock) #12
  %pid = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 68
  %8 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pid, align 8
  tail call fastcc void @trace_wake_reaper(i32 noundef %9)
  tail call void @__wake_up(ptr noundef nonnull @oom_reaper_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #12
  br label %return

return:                                           ; preds = %get_task_struct.exit, %entry.return_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @get_task_struct(ptr noundef %t) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %usage = getelementptr inbounds %struct.task_struct, ptr %t, i32 0, i32 2
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %usage, i32 1, i32 3, i32 1) #12
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage, ptr %usage, i32 1, ptr elementtype(i32) %usage) #12, !srcloc !431
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %entry.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !418

entry.if.end15.sink.split.i.i.i_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %entry
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %1 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.refcount_inc.exit_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !417

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.refcount_inc.exit_crit_edge:        ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %refcount_inc.exit

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %entry.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %entry.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %usage, i32 noundef %.sink.i.i.i) #12
  br label %refcount_inc.exit

refcount_inc.exit:                                ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.refcount_inc.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @oom_kill_process(ptr noundef %oc, ptr noundef %message) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %chosen = getelementptr inbounds %struct.oom_control, ptr %oc, i32 0, i32 6
  %0 = ptrtoint ptr %chosen to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chosen, align 4
  %alloc_lock.i = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 127
  tail call void @_raw_spin_lock(ptr noundef %alloc_lock.i) #12
  %call = tail call fastcc zeroext i1 @task_will_free_mem(ptr noundef %1)
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call fastcc void @mark_oom_victim(ptr noundef %1)
  tail call fastcc void @wake_oom_reaper(ptr noundef %1)
  tail call void @_raw_spin_unlock(ptr noundef %alloc_lock.i) #12
  %usage.i = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 2
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !432
  tail call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #12
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #12, !srcloc !433
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !417

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %usage.i, i32 noundef 3) #12
  br label %cleanup

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !434
  tail call void @__put_task_struct(ptr noundef %1) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @_raw_spin_unlock(ptr noundef %alloc_lock.i) #12
  %call1 = tail call i32 @___ratelimit(ptr noundef nonnull @oom_kill_process.oom_rs, ptr noundef nonnull @__func__.oom_kill_process) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end.if.end3_crit_edge, label %if.then2

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @dump_header(ptr noundef %oc, ptr noundef %1)
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  %memcg = getelementptr inbounds %struct.oom_control, ptr %oc, i32 0, i32 2
  %3 = ptrtoint ptr %memcg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %memcg, align 4
  %call4 = tail call ptr @mem_cgroup_get_oom_group(ptr noundef %1, ptr noundef %4) #12
  tail call fastcc void @__oom_kill_process(ptr noundef %1, ptr noundef %message)
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %if.end3.cleanup_crit_edge, label %if.then6

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then6:                                         ; preds = %if.end3
  %arrayidx.i = getelementptr %struct.mem_cgroup, ptr %call4, i32 0, i32 28, i32 5
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %arrayidx.i, i32 1, i32 3, i32 1) #12
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx.i, ptr %arrayidx.i, i32 1, ptr elementtype(i32) %arrayidx.i) #12, !srcloc !430
  %events_local_file.i = getelementptr inbounds %struct.mem_cgroup, ptr %call4, i32 0, i32 15
  tail call void @cgroup_file_notify(ptr noundef %events_local_file.i) #12
  br label %do.body.i

do.body.i:                                        ; preds = %land.rhs.i.do.body.i_crit_edge, %if.then6
  %memcg.addr.0.i = phi ptr [ %call4, %if.then6 ], [ %add.ptr.i.i, %land.rhs.i.do.body.i_crit_edge ]
  %arrayidx3.i = getelementptr %struct.mem_cgroup, ptr %memcg.addr.0.i, i32 0, i32 27, i32 5
  %call.i.i33.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx3.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %arrayidx3.i, i32 1, i32 3, i32 1) #12
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx3.i, ptr %arrayidx3.i, i32 1, ptr elementtype(i32) %arrayidx3.i) #12, !srcloc !430
  %events_file.i = getelementptr inbounds %struct.mem_cgroup, ptr %memcg.addr.0.i, i32 0, i32 14
  tail call void @cgroup_file_notify(ptr noundef %events_file.i) #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (i8, ptr @memory_cgrp_subsys_on_dfl_key, i32 1), ptr blockaddress(@oom_kill_process, %if.then.i29)) #12
          to label %if.end13.i [label %if.then.i29], !srcloc !435

if.end13.i:                                       ; preds = %do.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cgroup_root, ptr @cgrp_dfl_root, i32 0, i32 7) to i32))
  %7 = load i32, ptr getelementptr inbounds (%struct.cgroup_root, ptr @cgrp_dfl_root, i32 0, i32 7), align 4
  %and.i = and i32 %7, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool14.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool14.not.i, label %do.cond.i, label %if.end13.i.if.then.i29_crit_edge

if.end13.i.if.then.i29_crit_edge:                 ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i29

do.cond.i:                                        ; preds = %if.end13.i
  %parent.i.i = getelementptr inbounds %struct.mem_cgroup, ptr %memcg.addr.0.i, i32 0, i32 2, i32 13
  %8 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %9, null
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 -176
  %tobool18.not36.i = icmp eq ptr %add.ptr.i.i, null
  %tobool18.not.i = or i1 %tobool.not.i.i, %tobool18.not36.i
  br i1 %tobool18.not.i, label %do.cond.i.if.then.i29_crit_edge, label %land.rhs.i

do.cond.i.if.then.i29_crit_edge:                  ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i29

land.rhs.i:                                       ; preds = %do.cond.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @root_mem_cgroup to i32))
  %10 = load ptr, ptr @root_mem_cgroup, align 4
  %cmp.i.i = icmp eq ptr %10, %add.ptr.i.i
  br i1 %cmp.i.i, label %land.rhs.i.if.then.i29_crit_edge, label %land.rhs.i.do.body.i_crit_edge

land.rhs.i.do.body.i_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i

land.rhs.i.if.then.i29_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i29

if.then.i29:                                      ; preds = %land.rhs.i.if.then.i29_crit_edge, %do.cond.i.if.then.i29_crit_edge, %if.end13.i.if.then.i29_crit_edge, %do.body.i
  tail call void @mem_cgroup_print_oom_group(ptr noundef nonnull %call4) #12
  %call7 = tail call i32 @mem_cgroup_scan_tasks(ptr noundef nonnull %call4, ptr noundef nonnull @oom_kill_memcg_member, ptr noundef %message) #12
  %flags.i.i = getelementptr inbounds %struct.cgroup_subsys_state, ptr %call4, i32 0, i32 7
  %11 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i28 = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i28, label %if.then.i.i, label %if.then.i29.cleanup_crit_edge

if.then.i29.cleanup_crit_edge:                    ; preds = %if.then.i29
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then.i.i:                                      ; preds = %if.then.i29
  %refcnt.i.i = getelementptr inbounds %struct.cgroup_subsys_state, ptr %call4, i32 0, i32 2
  %13 = tail call i32 @llvm.read_register.i32(metadata !407) #12
  %and.i.i.i.i.i.i.i.i.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i.i.i = add i32 %16, 1
  store volatile i32 %add.i.i.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !420
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i.i.i.i.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i.i.i.i.i, label %if.then.i.i.rcu_read_lock.exit.i.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i.i

if.then.i.i.rcu_read_lock.exit.i.i.i.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i.i.i.i

land.lhs.true.i.i.i.i.i:                          ; preds = %if.then.i.i
  %call1.i.i.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i.i)
  %tobool.not.i.i.i.i.i = icmp eq i32 %call1.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %land.lhs.true.i.i.i.i.i.rcu_read_lock.exit.i.i.i.i_crit_edge, label %land.lhs.true2.i.i.i.i.i

land.lhs.true.i.i.i.i.i.rcu_read_lock.exit.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i.i.i.i

land.lhs.true2.i.i.i.i.i:                         ; preds = %land.lhs.true.i.i.i.i.i
  %.b4.i.i.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i.i.i, label %land.lhs.true2.i.i.i.i.i.rcu_read_lock.exit.i.i.i.i_crit_edge, label %if.then.i.i.i.i.i

land.lhs.true2.i.i.i.i.i.rcu_read_lock.exit.i.i.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i.i.i.i

if.then.i.i.i.i.i:                                ; preds = %land.lhs.true2.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.76, i32 noundef 696, ptr noundef nonnull @.str.77) #12
  br label %rcu_read_lock.exit.i.i.i.i

rcu_read_lock.exit.i.i.i.i:                       ; preds = %if.then.i.i.i.i.i, %land.lhs.true2.i.i.i.i.i.rcu_read_lock.exit.i.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.i.rcu_read_lock.exit.i.i.i.i_crit_edge, %if.then.i.i.rcu_read_lock.exit.i.i.i.i_crit_edge
  %17 = ptrtoint ptr %refcnt.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %refcnt.i.i, align 4
  %and.i.i.i.i.i = and i32 %18, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.not.i1.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.not.i1.i.i.i.i, label %do.body1.i.i.i.i, label %if.else.i.i.i.i, !prof !417

do.body1.i.i.i.i:                                 ; preds = %rcu_read_lock.exit.i.i.i.i
  %19 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !436
  %20 = tail call i32 @llvm.read_register.i32(metadata !407) #12
  %and.i2.i.i.i.i = and i32 %20, -16384
  %21 = inttoptr i32 %and.i2.i.i.i.i to ptr
  %cpu.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %cpu.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cpu.i.i.i.i, align 4
  %arrayidx.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %23
  %24 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %25, %18
  %26 = inttoptr i32 %add.i.i.i.i to ptr
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %26, align 4
  %add15.i.i.i.i = add i32 %28, -1
  store i32 %add15.i.i.i.i, ptr %26, align 4
  %29 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !437
  %and.i.i.i.i.i.i = and i32 %29, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %if.then29.i.i.i.i, label %do.body1.i.i.i.i.do.end31.i.i.i.i_crit_edge, !prof !418

do.body1.i.i.i.i.do.end31.i.i.i.i_crit_edge:      ; preds = %do.body1.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end31.i.i.i.i

if.then29.i.i.i.i:                                ; preds = %do.body1.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @warn_bogus_irq_restore() #12
  br label %do.end31.i.i.i.i

do.end31.i.i.i.i:                                 ; preds = %if.then29.i.i.i.i, %do.body1.i.i.i.i.do.end31.i.i.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %19) #12, !srcloc !438
  br label %if.end48.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %rcu_read_lock.exit.i.i.i.i
  %data.i.i.i.i = getelementptr inbounds %struct.cgroup_subsys_state, ptr %call4, i32 0, i32 2, i32 1
  %30 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %data.i.i.i.i, align 4
  %call.i.i.i.i.i.i30 = tail call zeroext i1 @__kasan_check_write(ptr noundef %31, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !422
  tail call void @llvm.prefetch.p0(ptr %31, i32 1, i32 3, i32 1) #12
  %32 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %31, ptr %31, i32 1, ptr elementtype(i32) %31) #12, !srcloc !423
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %32, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !424
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then45.i.i.i.i, label %if.else.i.i.i.i.if.end48.i.i.i.i_crit_edge, !prof !418

if.else.i.i.i.i.if.end48.i.i.i.i_crit_edge:       ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end48.i.i.i.i

if.then45.i.i.i.i:                                ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %33 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %data.i.i.i.i, align 4
  %release.i.i.i.i = getelementptr inbounds %struct.percpu_ref_data, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %release.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %release.i.i.i.i, align 4
  tail call void %36(ptr noundef %refcnt.i.i) #12
  br label %if.end48.i.i.i.i

if.end48.i.i.i.i:                                 ; preds = %if.then45.i.i.i.i, %if.else.i.i.i.i.if.end48.i.i.i.i_crit_edge, %do.end31.i.i.i.i
  %call.i3.i.i.i.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i3.i.i.i.i, label %if.end48.i.i.i.i.percpu_ref_put.exit.i.i_crit_edge, label %land.lhs.true.i6.i.i.i.i

if.end48.i.i.i.i.percpu_ref_put.exit.i.i_crit_edge: ; preds = %if.end48.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %percpu_ref_put.exit.i.i

land.lhs.true.i6.i.i.i.i:                         ; preds = %if.end48.i.i.i.i
  %call1.i4.i.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i4.i.i.i.i)
  %tobool.not.i5.i.i.i.i = icmp eq i32 %call1.i4.i.i.i.i, 0
  br i1 %tobool.not.i5.i.i.i.i, label %land.lhs.true.i6.i.i.i.i.percpu_ref_put.exit.i.i_crit_edge, label %land.lhs.true2.i8.i.i.i.i

land.lhs.true.i6.i.i.i.i.percpu_ref_put.exit.i.i_crit_edge: ; preds = %land.lhs.true.i6.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %percpu_ref_put.exit.i.i

land.lhs.true2.i8.i.i.i.i:                        ; preds = %land.lhs.true.i6.i.i.i.i
  %.b4.i7.i.i.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i7.i.i.i.i, label %land.lhs.true2.i8.i.i.i.i.percpu_ref_put.exit.i.i_crit_edge, label %if.then.i9.i.i.i.i

land.lhs.true2.i8.i.i.i.i.percpu_ref_put.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i8.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %percpu_ref_put.exit.i.i

if.then.i9.i.i.i.i:                               ; preds = %land.lhs.true2.i8.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.76, i32 noundef 724, ptr noundef nonnull @.str.78) #12
  br label %percpu_ref_put.exit.i.i

percpu_ref_put.exit.i.i:                          ; preds = %if.then.i9.i.i.i.i, %land.lhs.true2.i8.i.i.i.i.percpu_ref_put.exit.i.i_crit_edge, %land.lhs.true.i6.i.i.i.i.percpu_ref_put.exit.i.i_crit_edge, %if.end48.i.i.i.i.percpu_ref_put.exit.i.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !421
  %37 = tail call i32 @llvm.read_register.i32(metadata !407) #12
  %and.i.i.i.i.i10.i.i.i.i = and i32 %37, -16384
  %38 = inttoptr i32 %and.i.i.i.i.i10.i.i.i.i to ptr
  %preempt_count.i.i.i.i11.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %preempt_count.i.i.i.i11.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %preempt_count.i.i.i.i11.i.i.i.i, align 4
  %sub.i.i.i.i.i.i.i = add i32 %40, -1
  store volatile i32 %sub.i.i.i.i.i.i.i, ptr %preempt_count.i.i.i.i11.i.i.i.i, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  br label %cleanup

cleanup:                                          ; preds = %percpu_ref_put.exit.i.i, %if.then.i29.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dump_header(ptr noundef %oc, ptr noundef %p) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !407) #12
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 101
  %gfp_mask = getelementptr inbounds %struct.oom_control, ptr %oc, i32 0, i32 3
  %4 = ptrtoint ptr %gfp_mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %gfp_mask, align 4
  %order = getelementptr inbounds %struct.oom_control, ptr %oc, i32 0, i32 4
  %6 = ptrtoint ptr %order to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %order, align 4
  %signal = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 111
  %8 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %signal, align 16
  %oom_score_adj = getelementptr inbounds %struct.signal_struct, ptr %9, i32 0, i32 57
  %10 = ptrtoint ptr %oom_score_adj to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %oom_score_adj, align 2
  %conv = sext i16 %11 to i32
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.108, ptr noundef %comm, i32 noundef %5, ptr noundef %gfp_mask, i32 noundef %7, i32 noundef %conv) #15
  tail call void @dump_stack() #15
  %memcg.i = getelementptr inbounds %struct.oom_control, ptr %oc, i32 0, i32 2
  %12 = ptrtoint ptr %memcg.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %memcg.i, align 4
  %cmp.i.not = icmp eq ptr %13, null
  br i1 %cmp.i.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @mem_cgroup_print_oom_meminfo(ptr noundef nonnull %13) #12
  br label %if.end8

if.else:                                          ; preds = %entry
  %nodemask = getelementptr inbounds %struct.oom_control, ptr %oc, i32 0, i32 1
  %14 = ptrtoint ptr %nodemask to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %nodemask, align 4
  tail call void @show_mem(i32 noundef 1, ptr noundef %15) #12
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 1), i32 noundef 4) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 1) to i32))
  %16 = load volatile i32, ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 1), align 4
  %17 = tail call i32 @llvm.smax.i32(i32 %16, i32 0) #12
  %call.i.i.i.i13.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @vm_node_stat, i32 noundef 4) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vm_node_stat to i32))
  %18 = load volatile i32, ptr @vm_node_stat, align 4
  %19 = tail call i32 @llvm.smax.i32(i32 %18, i32 0) #12
  %add.i = add nuw i32 %19, %17
  %call.i.i.i.i14.i = tail call zeroext i1 @__kasan_check_read(ptr noundef getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 3), i32 noundef 4) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 3) to i32))
  %20 = load volatile i32, ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 3), align 4
  %21 = tail call i32 @llvm.smax.i32(i32 %20, i32 0) #12
  %add3.i = add i32 %add.i, %21
  %call.i.i.i.i15.i = tail call zeroext i1 @__kasan_check_read(ptr noundef getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 2), i32 noundef 4) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 2) to i32))
  %22 = load volatile i32, ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 2), align 4
  %23 = tail call i32 @llvm.smax.i32(i32 %22, i32 0) #12
  %add5.i = add i32 %add3.i, %23
  %call.i.i.i.i16.i = tail call zeroext i1 @__kasan_check_read(ptr noundef getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 7), i32 noundef 4) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 7) to i32))
  %24 = load volatile i32, ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 7), align 4
  %25 = tail call i32 @llvm.smax.i32(i32 %24, i32 0) #12
  %add7.i = add i32 %add5.i, %25
  %call.i.i.i.i17.i = tail call zeroext i1 @__kasan_check_read(ptr noundef getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 8), i32 noundef 4) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 8) to i32))
  %26 = load volatile i32, ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 8), align 4
  %27 = tail call i32 @llvm.smax.i32(i32 %26, i32 0) #12
  %add9.i = add i32 %add7.i, %27
  %call.i.i.i.i18.i = tail call zeroext i1 @__kasan_check_read(ptr noundef getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 4), i32 noundef 4) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 4) to i32))
  %28 = load volatile i32, ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 4), align 4
  %29 = tail call i32 @llvm.smax.i32(i32 %28, i32 0) #12
  %add11.i = add i32 %add9.i, %29
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 6), i32 noundef 4) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 6) to i32))
  %30 = load volatile i32, ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 6), align 4
  %31 = tail call i32 @llvm.smax.i32(i32 %30, i32 0) #12
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %add11.i)
  %cmp.i22 = icmp ugt i32 %31, %add11.i
  br i1 %cmp.i22, label %if.then7, label %if.else.if.end8_crit_edge

if.else.if.end8_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

if.then7:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_unreclaimable_slab() #12
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.else.if.end8_crit_edge, %if.then
  %32 = load i32, ptr @sysctl_oom_dump_tasks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.not = icmp eq i32 %32, 0
  br i1 %tobool.not, label %if.end8.if.end10_crit_edge, label %if.then9

if.end8.if.end10_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

if.then9:                                         ; preds = %if.end8
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.111) #15
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.114) #15
  %33 = ptrtoint ptr %memcg.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %memcg.i, align 4
  %cmp.i.not.i = icmp eq ptr %34, null
  br i1 %cmp.i.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #14
  %call6.i = tail call i32 @mem_cgroup_scan_tasks(ptr noundef nonnull %34, ptr noundef nonnull @dump_task, ptr noundef %oc) #12
  br label %if.end10

if.else.i:                                        ; preds = %if.then9
  %35 = tail call i32 @llvm.read_register.i32(metadata !407) #12
  %and.i.i.i.i.i.i = and i32 %35, -16384
  %36 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %38, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !420
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i.i, label %if.else.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.else.i.rcu_read_lock.exit.i_crit_edge:         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.else.i
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.76, i32 noundef 696, ptr noundef nonnull @.str.77) #12
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.else.i.rcu_read_lock.exit.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.task_struct, ptr @init_task, i32 0, i32 50) to i32))
  %39 = load volatile ptr, ptr getelementptr inbounds (%struct.task_struct, ptr @init_task, i32 0, i32 50), align 16
  %add.ptr25.i = getelementptr i8, ptr %39, i32 -1136
  %cmp.not26.i = icmp eq ptr %add.ptr25.i, @init_task
  br i1 %cmp.not26.i, label %rcu_read_lock.exit.i.for.end.i_crit_edge, label %rcu_read_lock.exit.i.for.body.i_crit_edge

rcu_read_lock.exit.i.for.body.i_crit_edge:        ; preds = %rcu_read_lock.exit.i
  br label %for.body.i

rcu_read_lock.exit.i.for.end.i_crit_edge:         ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %rcu_read_lock.exit.i.for.body.i_crit_edge
  %add.ptr27.i = phi ptr [ %add.ptr.i, %for.body.i.for.body.i_crit_edge ], [ %add.ptr25.i, %rcu_read_lock.exit.i.for.body.i_crit_edge ]
  %call11.i = tail call i32 @dump_task(ptr noundef %add.ptr27.i, ptr noundef %oc) #12
  %tasks.i = getelementptr inbounds %struct.task_struct, ptr %add.ptr27.i, i32 0, i32 50
  %40 = ptrtoint ptr %tasks.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile ptr, ptr %tasks.i, align 16
  %add.ptr.i = getelementptr i8, ptr %41, i32 -1136
  %cmp.not.i = icmp eq ptr %add.ptr.i, @init_task
  br i1 %cmp.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %rcu_read_lock.exit.i.for.end.i_crit_edge
  %call.i16.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i16.i, label %for.end.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i19.i

for.end.i.rcu_read_unlock.exit.i_crit_edge:       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit.i

land.lhs.true.i19.i:                              ; preds = %for.end.i
  %call1.i17.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i17.i)
  %tobool.not.i18.i = icmp eq i32 %call1.i17.i, 0
  br i1 %tobool.not.i18.i, label %land.lhs.true.i19.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i21.i

land.lhs.true.i19.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i19.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i21.i:                             ; preds = %land.lhs.true.i19.i
  %.b4.i20.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i20.i, label %land.lhs.true2.i21.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i22.i

land.lhs.true2.i21.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i21.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit.i

if.then.i22.i:                                    ; preds = %land.lhs.true2.i21.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.76, i32 noundef 724, ptr noundef nonnull @.str.78) #12
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i22.i, %land.lhs.true2.i21.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i19.i.rcu_read_unlock.exit.i_crit_edge, %for.end.i.rcu_read_unlock.exit.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !421
  %42 = tail call i32 @llvm.read_register.i32(metadata !407) #12
  %and.i.i.i.i.i23.i = and i32 %42, -16384
  %43 = inttoptr i32 %and.i.i.i.i.i23.i to ptr
  %preempt_count.i.i.i.i24.i = getelementptr inbounds %struct.thread_info, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %preempt_count.i.i.i.i24.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %preempt_count.i.i.i.i24.i, align 4
  %sub.i.i.i.i = add i32 %45, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i24.i, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  br label %if.end10

if.end10:                                         ; preds = %rcu_read_unlock.exit.i, %if.then.i, %if.end8.if.end10_crit_edge
  %tobool11.not = icmp eq ptr %p, null
  br i1 %tobool11.not, label %if.end10.if.end13_crit_edge, label %if.then12

if.end10.if.end13_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

if.then12:                                        ; preds = %if.end10
  %constraint.i = getelementptr inbounds %struct.oom_control, ptr %oc, i32 0, i32 8
  %46 = ptrtoint ptr %constraint.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %constraint.i, align 4
  %arrayidx.i = getelementptr [4 x ptr], ptr @oom_constraint_text, i32 0, i32 %47
  %48 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx.i, align 4
  %nodemask.i = getelementptr inbounds %struct.oom_control, ptr %oc, i32 0, i32 1
  %50 = ptrtoint ptr %nodemask.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %nodemask.i, align 4
  %tobool.not.i29.i = icmp ne ptr %51, null
  %cond.i.i = zext i1 %tobool.not.i29.i to i32
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.118, ptr noundef %49, i32 noundef %cond.i.i, ptr noundef %51) #15
  tail call void @cpuset_print_current_mems_allowed() #12
  %52 = ptrtoint ptr %memcg.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %memcg.i, align 4
  tail call void @mem_cgroup_print_oom_context(ptr noundef %53, ptr noundef nonnull %p) #12
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 68
  %54 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %pid.i, align 8
  %56 = tail call i32 @llvm.read_register.i32(metadata !407) #12
  %and.i.i.i.i.i.i24 = and i32 %56, -16384
  %57 = inttoptr i32 %and.i.i.i.i.i.i24 to ptr
  %preempt_count.i.i.i.i.i25 = getelementptr inbounds %struct.thread_info, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %preempt_count.i.i.i.i.i25 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile i32, ptr %preempt_count.i.i.i.i.i25, align 4
  %add.i.i.i.i26 = add i32 %59, 1
  store volatile i32 %add.i.i.i.i26, ptr %preempt_count.i.i.i.i.i25, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !420
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i.i27 = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i.i27, label %if.then12.rcu_read_lock.exit.i35_crit_edge, label %land.lhs.true.i.i30

if.then12.rcu_read_lock.exit.i35_crit_edge:       ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i35

land.lhs.true.i.i30:                              ; preds = %if.then12
  %call1.i.i28 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i28)
  %tobool.not.i.i29 = icmp eq i32 %call1.i.i28, 0
  br i1 %tobool.not.i.i29, label %land.lhs.true.i.i30.rcu_read_lock.exit.i35_crit_edge, label %land.lhs.true2.i.i32

land.lhs.true.i.i30.rcu_read_lock.exit.i35_crit_edge: ; preds = %land.lhs.true.i.i30
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i35

land.lhs.true2.i.i32:                             ; preds = %land.lhs.true.i.i30
  %.b4.i.i31 = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i31, label %land.lhs.true2.i.i32.rcu_read_lock.exit.i35_crit_edge, label %if.then.i.i33

land.lhs.true2.i.i32.rcu_read_lock.exit.i35_crit_edge: ; preds = %land.lhs.true2.i.i32
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i35

if.then.i.i33:                                    ; preds = %land.lhs.true2.i.i32
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.76, i32 noundef 696, ptr noundef nonnull @.str.77) #12
  br label %rcu_read_lock.exit.i35

rcu_read_lock.exit.i35:                           ; preds = %if.then.i.i33, %land.lhs.true2.i.i32.rcu_read_lock.exit.i35_crit_edge, %land.lhs.true.i.i30.rcu_read_lock.exit.i35_crit_edge, %if.then12.rcu_read_lock.exit.i35_crit_edge
  %real_cred.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 98
  %60 = ptrtoint ptr %real_cred.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile ptr, ptr %real_cred.i, align 4
  %call11.i34 = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i34)
  %tobool.not.i = icmp eq i32 %call11.i34, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %rcu_read_lock.exit.i35.do.end17.i_crit_edge

rcu_read_lock.exit.i35.do.end17.i_crit_edge:      ; preds = %rcu_read_lock.exit.i35
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end17.i

land.lhs.true.i:                                  ; preds = %rcu_read_lock.exit.i35
  %call12.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %land.lhs.true.i.do.end17.i_crit_edge, label %land.lhs.true14.i

land.lhs.true.i.do.end17.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end17.i

land.lhs.true14.i:                                ; preds = %land.lhs.true.i
  %.b28.i = load i1, ptr @dump_oom_summary.__warned, align 1
  br i1 %.b28.i, label %land.lhs.true14.i.do.end17.i_crit_edge, label %if.then.i36

land.lhs.true14.i.do.end17.i_crit_edge:           ; preds = %land.lhs.true14.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end17.i

if.then.i36:                                      ; preds = %land.lhs.true14.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @dump_oom_summary.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.25, i32 noundef 452, ptr noundef nonnull @.str.80) #12
  br label %do.end17.i

do.end17.i:                                       ; preds = %if.then.i36, %land.lhs.true14.i.do.end17.i_crit_edge, %land.lhs.true.i.do.end17.i_crit_edge, %rcu_read_lock.exit.i35.do.end17.i_crit_edge
  %uid.i = getelementptr inbounds %struct.cred, ptr %61, i32 0, i32 4
  %62 = ptrtoint ptr %uid.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %___val.sroa.0.0.copyload.i = load i32, ptr %uid.i, align 4
  %call.i30.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i30.i, label %do.end17.i.dump_oom_summary.exit_crit_edge, label %land.lhs.true.i33.i

do.end17.i.dump_oom_summary.exit_crit_edge:       ; preds = %do.end17.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dump_oom_summary.exit

land.lhs.true.i33.i:                              ; preds = %do.end17.i
  %call1.i31.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i31.i)
  %tobool.not.i32.i = icmp eq i32 %call1.i31.i, 0
  br i1 %tobool.not.i32.i, label %land.lhs.true.i33.i.dump_oom_summary.exit_crit_edge, label %land.lhs.true2.i35.i

land.lhs.true.i33.i.dump_oom_summary.exit_crit_edge: ; preds = %land.lhs.true.i33.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dump_oom_summary.exit

land.lhs.true2.i35.i:                             ; preds = %land.lhs.true.i33.i
  %.b4.i34.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i34.i, label %land.lhs.true2.i35.i.dump_oom_summary.exit_crit_edge, label %if.then.i36.i

land.lhs.true2.i35.i.dump_oom_summary.exit_crit_edge: ; preds = %land.lhs.true2.i35.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dump_oom_summary.exit

if.then.i36.i:                                    ; preds = %land.lhs.true2.i35.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.76, i32 noundef 724, ptr noundef nonnull @.str.78) #12
  br label %dump_oom_summary.exit

dump_oom_summary.exit:                            ; preds = %if.then.i36.i, %land.lhs.true2.i35.i.dump_oom_summary.exit_crit_edge, %land.lhs.true.i33.i.dump_oom_summary.exit_crit_edge, %do.end17.i.dump_oom_summary.exit_crit_edge
  %comm.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 101
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !421
  %63 = tail call i32 @llvm.read_register.i32(metadata !407) #12
  %and.i.i.i.i.i37.i = and i32 %63, -16384
  %64 = inttoptr i32 %and.i.i.i.i.i37.i to ptr
  %preempt_count.i.i.i.i38.i = getelementptr inbounds %struct.thread_info, ptr %64, i32 0, i32 1
  %65 = ptrtoint ptr %preempt_count.i.i.i.i38.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile i32, ptr %preempt_count.i.i.i.i38.i, align 4
  %sub.i.i.i.i37 = add i32 %66, -1
  store volatile i32 %sub.i.i.i.i37, ptr %preempt_count.i.i.i.i38.i, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  %.fca.0.insert.i = insertvalue [1 x i32] poison, i32 %___val.sroa.0.0.copyload.i, 0
  %call19.i = tail call i32 @from_kuid(ptr noundef nonnull @init_user_ns, [1 x i32] %.fca.0.insert.i) #12
  %call20.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.121, ptr noundef %comm.i, i32 noundef %55, i32 noundef %call19.i) #15
  br label %if.end13

if.end13:                                         ; preds = %dump_oom_summary.exit, %if.end10.if.end13_crit_edge
  ret void
}

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pagefault_out_of_memory() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @mem_cgroup_oom_synchronize(i1 noundef zeroext true) #12
  br i1 %call, label %entry.if.end9_crit_edge, label %if.end

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

if.end:                                           ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !407) #12
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %stack.i.i.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %stack.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %stack.i.i.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %5, align 4
  %and1.i.i.i.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool.not.i, label %if.end.if.end4_crit_edge, label %fatal_signal_pending.exit

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4

fatal_signal_pending.exit:                        ; preds = %if.end
  %signal.i.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 116, i32 1
  %8 = ptrtoint ptr %signal.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %signal.i.i, align 4
  %10 = and i32 %9, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %fatal_signal_pending.exit.if.end4_crit_edge, label %fatal_signal_pending.exit.if.end9_crit_edge

fatal_signal_pending.exit.if.end9_crit_edge:      ; preds = %fatal_signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

fatal_signal_pending.exit.if.end4_crit_edge:      ; preds = %fatal_signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4

if.end4:                                          ; preds = %fatal_signal_pending.exit.if.end4_crit_edge, %if.end.if.end4_crit_edge
  %call5 = tail call i32 @___ratelimit(ptr noundef nonnull @pagefault_out_of_memory.pfoom_rs, ptr noundef nonnull @__func__.pagefault_out_of_memory) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end4.if.end9_crit_edge, label %do.end

if.end4.if.end9_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

do.end:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38) #15
  br label %if.end9

if.end9:                                          ; preds = %do.end, %if.end4.if.end9_crit_edge, %fatal_signal_pending.exit.if.end9_crit_edge, %entry.if.end9_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mem_cgroup_oom_synchronize(i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_process_mrelease(i32 noundef %pidfd, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__do_sys_process_mrelease(i32 noundef %pidfd, i32 noundef %flags)
  ret i32 %call
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__do_sys_process_mrelease(i32 noundef %pidfd, i32 noundef %flags) unnamed_addr #3 align 64 {
entry:
  %f_flags = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %f_flags) #12
  %0 = ptrtoint ptr %f_flags to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %f_flags, align 4, !annotation !419
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %flags)
  %tobool.not = icmp eq i32 %flags, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = call ptr @pidfd_get_task(i32 noundef %pidfd, ptr noundef nonnull %f_flags) #12
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %1 = ptrtoint ptr %call to i32
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = call ptr @find_lock_task_mm(ptr noundef %call)
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.end4.put_task_crit_edge, label %if.end8

if.end4.put_task_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %put_task

if.end8:                                          ; preds = %if.end4
  %mm9 = getelementptr inbounds %struct.task_struct, ptr %call5, i32 0, i32 53
  %2 = ptrtoint ptr %mm9 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mm9, align 8
  %mm_count.i = getelementptr inbounds %struct.anon.3, ptr %3, i32 0, i32 11
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %mm_count.i, i32 noundef 4) #12
  call void @llvm.prefetch.p0(ptr %mm_count.i, i32 1, i32 3, i32 1) #12
  %4 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %mm_count.i, ptr %mm_count.i, i32 1, ptr elementtype(i32) %mm_count.i) #12, !srcloc !430
  %call10 = call fastcc zeroext i1 @task_will_free_mem(ptr noundef nonnull %call5)
  br i1 %call10, label %if.end20, label %if.end17

if.end17:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  %flags12 = getelementptr inbounds %struct.anon.3, ptr %3, i32 0, i32 43
  %5 = ptrtoint ptr %flags12 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %flags12, align 4
  %7 = and i32 %6, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool14.not = icmp eq i32 %7, 0
  %spec.select = select i1 %tobool14.not, i32 -22, i32 0
  %alloc_lock.i = getelementptr inbounds %struct.task_struct, ptr %call5, i32 0, i32 127
  call void @_raw_spin_unlock(ptr noundef %alloc_lock.i) #12
  br label %drop_mm

if.end20:                                         ; preds = %if.end8
  %alloc_lock.i58 = getelementptr inbounds %struct.task_struct, ptr %call5, i32 0, i32 127
  call void @_raw_spin_unlock(ptr noundef %alloc_lock.i58) #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), ptr blockaddress(@__do_sys_process_mrelease, %if.then.i.i)) #12
          to label %__mmap_lock_trace_start_locking.exit.i [label %if.then.i.i], !srcloc !435

if.then.i.i:                                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  call void @__mmap_lock_do_trace_start_locking(ptr noundef %3, i1 noundef zeroext false) #12
  br label %__mmap_lock_trace_start_locking.exit.i

__mmap_lock_trace_start_locking.exit.i:           ; preds = %if.then.i.i, %if.end20
  %mmap_lock.i = getelementptr inbounds %struct.anon.3, ptr %3, i32 0, i32 15
  %call.i = call i32 @down_read_killable(ptr noundef %mmap_lock.i) #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), ptr blockaddress(@__do_sys_process_mrelease, %if.then.i4.i)) #12
          to label %mmap_read_lock_killable.exit [label %if.then.i4.i], !srcloc !435

if.then.i4.i:                                     ; preds = %__mmap_lock_trace_start_locking.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i51 = icmp eq i32 %call.i, 0
  call void @__mmap_lock_do_trace_acquire_returned(ptr noundef %3, i1 noundef zeroext false, i1 noundef zeroext %cmp.i51) #12
  br label %mmap_read_lock_killable.exit

mmap_read_lock_killable.exit:                     ; preds = %if.then.i4.i, %__mmap_lock_trace_start_locking.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool22.not = icmp eq i32 %call.i, 0
  br i1 %tobool22.not, label %if.end24, label %mmap_read_lock_killable.exit.drop_mm_crit_edge

mmap_read_lock_killable.exit.drop_mm_crit_edge:   ; preds = %mmap_read_lock_killable.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %drop_mm

if.end24:                                         ; preds = %mmap_read_lock_killable.exit
  %flags25 = getelementptr inbounds %struct.anon.3, ptr %3, i32 0, i32 43
  %8 = ptrtoint ptr %flags25 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %flags25, align 4
  %10 = and i32 %9, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool27.not = icmp eq i32 %10, 0
  br i1 %tobool27.not, label %land.lhs.true, label %if.end24.if.end30_crit_edge

if.end24.if.end30_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end30

land.lhs.true:                                    ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  %call28 = call zeroext i1 @__oom_reap_task_mm(ptr noundef %3)
  %spec.select48 = select i1 %call28, i32 0, i32 -11
  br label %if.end30

if.end30:                                         ; preds = %land.lhs.true, %if.end24.if.end30_crit_edge
  %ret.1 = phi i32 [ 0, %if.end24.if.end30_crit_edge ], [ %spec.select48, %land.lhs.true ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), ptr blockaddress(@__do_sys_process_mrelease, %if.then.i.i52)) #12
          to label %mmap_read_unlock.exit [label %if.then.i.i52], !srcloc !435

if.then.i.i52:                                    ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  call void @__mmap_lock_do_trace_released(ptr noundef %3, i1 noundef zeroext false) #12
  br label %mmap_read_unlock.exit

mmap_read_unlock.exit:                            ; preds = %if.then.i.i52, %if.end30
  call void @up_read(ptr noundef %mmap_lock.i) #12
  br label %drop_mm

drop_mm:                                          ; preds = %mmap_read_unlock.exit, %mmap_read_lock_killable.exit.drop_mm_crit_edge, %if.end17
  %ret.2 = phi i32 [ %ret.1, %mmap_read_unlock.exit ], [ %spec.select, %if.end17 ], [ -4, %mmap_read_lock_killable.exit.drop_mm_crit_edge ]
  %call.i.i.i55 = call zeroext i1 @__kasan_check_write(ptr noundef %mm_count.i, i32 noundef 4) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !422
  call void @llvm.prefetch.p0(ptr %mm_count.i, i32 1, i32 3, i32 1) #12
  %11 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %mm_count.i, ptr %mm_count.i, i32 1, ptr elementtype(i32) %mm_count.i) #12, !srcloc !423
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %11, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !424
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then.i, label %drop_mm.put_task_crit_edge, !prof !418

drop_mm.put_task_crit_edge:                       ; preds = %drop_mm
  call void @__sanitizer_cov_trace_pc() #14
  br label %put_task

if.then.i:                                        ; preds = %drop_mm
  call void @__sanitizer_cov_trace_pc() #14
  call void @__mmdrop(ptr noundef %3) #12
  br label %put_task

put_task:                                         ; preds = %if.then.i, %drop_mm.put_task_crit_edge, %if.end4.put_task_crit_edge
  %ret.3 = phi i32 [ -3, %if.end4.put_task_crit_edge ], [ %ret.2, %drop_mm.put_task_crit_edge ], [ %ret.2, %if.then.i ]
  %usage.i = getelementptr inbounds %struct.task_struct, ptr %call, i32 0, i32 2
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !432
  call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #12
  %12 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #12, !srcloc !433
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i56, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %put_task
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !417

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @refcount_warn_saturate(ptr noundef %usage.i, i32 noundef 3) #12
  br label %cleanup

if.then.i56:                                      ; preds = %put_task
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !434
  call void @__put_task_struct(ptr noundef %call) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then.i56, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %if.then2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %1, %if.then2 ], [ -22, %entry.cleanup_crit_edge ], [ %ret.3, %if.end5.i.i.i.i.cleanup_crit_edge ], [ %ret.3, %if.then10.i.i.i.i ], [ %ret.3, %if.then.i56 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %f_flags) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_event_buffer_reserve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_buffer_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_oom_score_adj_update(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %pid = getelementptr inbounds %struct.trace_event_raw_oom_score_adj_update, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pid, align 4
  %comm = getelementptr inbounds %struct.trace_event_raw_oom_score_adj_update, ptr %1, i32 0, i32 2
  %oom_score_adj = getelementptr inbounds %struct.trace_event_raw_oom_score_adj_update, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %oom_score_adj to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %oom_score_adj, align 4
  %conv = sext i16 %5 to i32
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.48, i32 noundef %3, ptr noundef %comm, i32 noundef %conv) #12
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_raw_output_prep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_handle_return(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_reclaim_retry_zone(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %tmp_seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 12
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %node = getelementptr inbounds %struct.trace_event_raw_reclaim_retry_zone, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %node, align 4
  %zone_idx = getelementptr inbounds %struct.trace_event_raw_reclaim_retry_zone, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %zone_idx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %zone_idx, align 4
  %call1 = tail call ptr @trace_print_symbols_seq(ptr noundef %tmp_seq, i32 noundef %5, ptr noundef nonnull @trace_raw_output_reclaim_retry_zone.symbols) #12
  %order = getelementptr inbounds %struct.trace_event_raw_reclaim_retry_zone, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %order to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %order, align 4
  %reclaimable = getelementptr inbounds %struct.trace_event_raw_reclaim_retry_zone, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %reclaimable to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %reclaimable, align 4
  %available = getelementptr inbounds %struct.trace_event_raw_reclaim_retry_zone, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %available to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %available, align 4
  %min_wmark = getelementptr inbounds %struct.trace_event_raw_reclaim_retry_zone, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %min_wmark to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %min_wmark, align 4
  %no_progress_loops = getelementptr inbounds %struct.trace_event_raw_reclaim_retry_zone, ptr %1, i32 0, i32 7
  %14 = ptrtoint ptr %no_progress_loops to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %no_progress_loops, align 4
  %wmark_check = getelementptr inbounds %struct.trace_event_raw_reclaim_retry_zone, ptr %1, i32 0, i32 8
  %16 = ptrtoint ptr %wmark_check to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %wmark_check, align 4, !range !439
  %18 = zext i8 %17 to i32
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.60, i32 noundef %3, ptr noundef %call1, i32 noundef %7, i32 noundef %9, i32 noundef %11, i32 noundef %13, i32 noundef %15, i32 noundef %18) #12
  %call2 = tail call i32 @trace_handle_return(ptr noundef %seq) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_print_symbols_seq(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_mark_victim(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %pid = getelementptr inbounds %struct.trace_event_raw_mark_victim, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pid, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.65, i32 noundef %3) #12
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_wake_reaper(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %pid = getelementptr inbounds %struct.trace_event_raw_wake_reaper, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pid, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.65, i32 noundef %3) #12
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_start_task_reaping(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %pid = getelementptr inbounds %struct.trace_event_raw_start_task_reaping, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pid, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.65, i32 noundef %3) #12
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_finish_task_reaping(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %pid = getelementptr inbounds %struct.trace_event_raw_finish_task_reaping, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pid, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.65, i32 noundef %3) #12
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_skip_task_reaping(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %pid = getelementptr inbounds %struct.trace_event_raw_skip_task_reaping, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pid, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.65, i32 noundef %3) #12
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_compact_retry(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %tmp_seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 12
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %order = getelementptr inbounds %struct.trace_event_raw_compact_retry, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %order to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %order, align 4
  %priority = getelementptr inbounds %struct.trace_event_raw_compact_retry, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %priority to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %priority, align 4
  %call1 = tail call ptr @trace_print_symbols_seq(ptr noundef %tmp_seq, i32 noundef %5, ptr noundef nonnull @trace_raw_output_compact_retry.symbols) #12
  %result = getelementptr inbounds %struct.trace_event_raw_compact_retry, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %result, align 4
  %call3 = tail call ptr @trace_print_symbols_seq(ptr noundef %tmp_seq, i32 noundef %7, ptr noundef nonnull @trace_raw_output_compact_retry.symbols.72) #12
  %retries = getelementptr inbounds %struct.trace_event_raw_compact_retry, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %retries to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %retries, align 4
  %max_retries = getelementptr inbounds %struct.trace_event_raw_compact_retry, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %max_retries to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %max_retries, align 4
  %ret4 = getelementptr inbounds %struct.trace_event_raw_compact_retry, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %ret4 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %ret4, align 4, !range !439
  %14 = zext i8 %13 to i32
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.71, i32 noundef %3, ptr noundef %call1, ptr noundef %call3, i32 noundef %9, i32 noundef %11, i32 noundef %14) #12
  %call5 = tail call i32 @trace_handle_return(ptr noundef %seq) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @perf_trace_buf_alloc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_trace_run_bpf_submit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.frameaddress.p0(i32 immarg) #7

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run1(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run7(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run6(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__mmu_notifier_invalidate_range_start(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmu_notifier_invalidate_range_end(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: noreturn nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @oom_reaper(ptr nocapture noundef readnone %unused) #9 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @set_freezable() #12
  br label %while.body

while.body:                                       ; preds = %while.body.backedge, %entry
  call void @__might_sleep(ptr noundef nonnull @.str.25, i32 noundef 649) #12
  %0 = load ptr, ptr @oom_reaper_list, align 4
  %cmp.not = icmp eq ptr %0, null
  br i1 %cmp.not, label %if.then, label %while.body.if.end10_crit_edge

while.body.if.end10_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

if.then:                                          ; preds = %while.body
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #12
  %1 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #12
  %call530 = call i32 @prepare_to_wait_event(ptr noundef nonnull @oom_reaper_wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #12
  %2 = load ptr, ptr @oom_reaper_list, align 4
  %cmp6.not31 = icmp eq ptr %2, null
  br i1 %cmp6.not31, label %if.then.if.end_crit_edge, label %if.then.for.end_crit_edge

if.then.for.end_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.then.if.end_crit_edge:                         ; preds = %if.then
  br label %if.end

if.end:                                           ; preds = %cleanup.if.end_crit_edge, %if.then.if.end_crit_edge
  %call532 = phi i32 [ %call5, %cleanup.if.end_crit_edge ], [ %call530, %if.then.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call532)
  %tobool.not = icmp eq i32 %call532, 0
  br i1 %tobool.not, label %if.end9, label %if.end.__out_crit_edge

if.end.__out_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %__out

if.end9:                                          ; preds = %if.end
  %3 = call i32 @llvm.read_register.i32(metadata !407) #12
  %and.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %task.i.i, align 8
  %flags.i.i = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags.i.i, align 4
  %or.i.i = or i32 %8, 1073741824
  store i32 %or.i.i, ptr %flags.i.i, align 4
  call void @schedule() #12
  %9 = call i32 @llvm.read_register.i32(metadata !407) #12
  %and.i.i1.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i1.i to ptr
  %task.i2.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %task.i2.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %task.i2.i, align 8
  %flags.i3.i = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %flags.i3.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags.i3.i, align 4
  %and.i.i = and i32 %14, -1073741825
  store i32 %and.i.i, ptr %flags.i3.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !440
  %15 = call i32 @llvm.read_register.i32(metadata !407) #12
  %and.i.i.i.i = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i.i.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %task.i.i.i, align 8
  %flags.i.i.i = getelementptr inbounds %struct.task_struct, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags.i.i.i, align 4
  %and.i4.i.i = and i32 %20, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i4.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i4.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %if.end9.if.end.i.i.i_crit_edge

if.end9.if.end.i.i.i_crit_edge:                   ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i.i

if.then.i.i.i:                                    ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  call void @debug_check_no_locks_held() #12
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i.i, %if.end9.if.end.i.i.i_crit_edge
  call void @__might_sleep(ptr noundef nonnull @.str.84, i32 noundef 57) #12
  %21 = call i32 @llvm.read_register.i32(metadata !407) #12
  %and.i.i.i.i.i = and i32 %21, -16384
  %22 = inttoptr i32 %and.i.i.i.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %task.i.i.i.i, align 8
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull @system_freezing_cnt, i32 noundef 4) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_freezing_cnt to i32))
  %25 = load volatile i32, ptr @system_freezing_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not.i.i.i.i.i = icmp eq i32 %25, 0
  br i1 %tobool.not.i.i.i.i.i, label %if.end.i.i.i.cleanup_crit_edge, label %freezing.exit.i.i.i.i, !prof !417

if.end.i.i.i.cleanup_crit_edge:                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

freezing.exit.i.i.i.i:                            ; preds = %if.end.i.i.i
  %call4.i.i.i.i.i = call zeroext i1 @freezing_slow_path(ptr noundef %24) #12
  br i1 %call4.i.i.i.i.i, label %if.end.i.i.i.i, label %freezing.exit.i.i.i.i.cleanup_crit_edge, !prof !418

freezing.exit.i.i.i.i.cleanup_crit_edge:          ; preds = %freezing.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i.i.i.i:                                   ; preds = %freezing.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call6.i.i.i.i = call zeroext i1 @__refrigerator(i1 noundef zeroext false) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i.i.i, %freezing.exit.i.i.i.i.cleanup_crit_edge, %if.end.i.i.i.cleanup_crit_edge
  %call5 = call i32 @prepare_to_wait_event(ptr noundef nonnull @oom_reaper_wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #12
  %26 = load ptr, ptr @oom_reaper_list, align 4
  %cmp6.not = icmp eq ptr %26, null
  br i1 %cmp6.not, label %cleanup.if.end_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

cleanup.if.end_crit_edge:                         ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.then.for.end_crit_edge
  call void @finish_wait(ptr noundef nonnull @oom_reaper_wait, ptr noundef nonnull %__wq_entry) #12
  br label %__out

__out:                                            ; preds = %for.end, %if.end.__out_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #12
  br label %if.end10

if.end10:                                         ; preds = %__out, %while.body.if.end10_crit_edge
  call void @_raw_spin_lock(ptr noundef nonnull @oom_reaper_lock) #12
  %27 = load ptr, ptr @oom_reaper_list, align 4
  %cmp12.not = icmp eq ptr %27, null
  br i1 %cmp12.not, label %if.end14.thread, label %if.then16

if.end14.thread:                                  ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  call void @_raw_spin_unlock(ptr noundef nonnull @oom_reaper_lock) #12
  br label %while.body.backedge

if.then16:                                        ; preds = %if.end10
  %oom_reaper_list = getelementptr inbounds %struct.task_struct, ptr %27, i32 0, i32 214
  %28 = ptrtoint ptr %oom_reaper_list to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %oom_reaper_list, align 4
  store ptr %29, ptr @oom_reaper_list, align 4
  call void @_raw_spin_unlock(ptr noundef nonnull @oom_reaper_lock) #12
  %signal.i = getelementptr inbounds %struct.task_struct, ptr %27, i32 0, i32 111
  %30 = ptrtoint ptr %signal.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %signal.i, align 16
  %oom_mm.i = getelementptr inbounds %struct.signal_struct, ptr %31, i32 0, i32 59
  %32 = ptrtoint ptr %oom_mm.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %oom_mm.i, align 4
  %call.i = call fastcc zeroext i1 @oom_reap_task_mm(ptr noundef nonnull %27, ptr noundef %33) #12
  br i1 %call.i, label %if.then16.done.i_crit_edge, label %while.body.i

if.then16.done.i_crit_edge:                       ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #14
  br label %done.i

while.body.i:                                     ; preds = %if.then16
  %call1.i = call i32 @schedule_timeout_idle(i32 noundef 10) #12
  %call.1.i = call fastcc zeroext i1 @oom_reap_task_mm(ptr noundef nonnull %27, ptr noundef %33) #12
  br i1 %call.1.i, label %while.body.i.done.i_crit_edge, label %while.body.1.i

while.body.i.done.i_crit_edge:                    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %done.i

while.body.1.i:                                   ; preds = %while.body.i
  %call1.1.i = call i32 @schedule_timeout_idle(i32 noundef 10) #12
  %call.2.i = call fastcc zeroext i1 @oom_reap_task_mm(ptr noundef nonnull %27, ptr noundef %33) #12
  br i1 %call.2.i, label %while.body.1.i.done.i_crit_edge, label %while.body.2.i

while.body.1.i.done.i_crit_edge:                  ; preds = %while.body.1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %done.i

while.body.2.i:                                   ; preds = %while.body.1.i
  %call1.2.i = call i32 @schedule_timeout_idle(i32 noundef 10) #12
  %call.3.i = call fastcc zeroext i1 @oom_reap_task_mm(ptr noundef nonnull %27, ptr noundef %33) #12
  br i1 %call.3.i, label %while.body.2.i.done.i_crit_edge, label %while.body.3.i

while.body.2.i.done.i_crit_edge:                  ; preds = %while.body.2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %done.i

while.body.3.i:                                   ; preds = %while.body.2.i
  %call1.3.i = call i32 @schedule_timeout_idle(i32 noundef 10) #12
  %call.4.i = call fastcc zeroext i1 @oom_reap_task_mm(ptr noundef nonnull %27, ptr noundef %33) #12
  br i1 %call.4.i, label %while.body.3.i.done.i_crit_edge, label %while.body.4.i

while.body.3.i.done.i_crit_edge:                  ; preds = %while.body.3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %done.i

while.body.4.i:                                   ; preds = %while.body.3.i
  %call1.4.i = call i32 @schedule_timeout_idle(i32 noundef 10) #12
  %call.5.i = call fastcc zeroext i1 @oom_reap_task_mm(ptr noundef nonnull %27, ptr noundef %33) #12
  br i1 %call.5.i, label %while.body.4.i.done.i_crit_edge, label %while.body.5.i

while.body.4.i.done.i_crit_edge:                  ; preds = %while.body.4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %done.i

while.body.5.i:                                   ; preds = %while.body.4.i
  %call1.5.i = call i32 @schedule_timeout_idle(i32 noundef 10) #12
  %call.6.i = call fastcc zeroext i1 @oom_reap_task_mm(ptr noundef nonnull %27, ptr noundef %33) #12
  br i1 %call.6.i, label %while.body.5.i.done.i_crit_edge, label %while.body.6.i

while.body.5.i.done.i_crit_edge:                  ; preds = %while.body.5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %done.i

while.body.6.i:                                   ; preds = %while.body.5.i
  %call1.6.i = call i32 @schedule_timeout_idle(i32 noundef 10) #12
  %call.7.i = call fastcc zeroext i1 @oom_reap_task_mm(ptr noundef nonnull %27, ptr noundef %33) #12
  br i1 %call.7.i, label %while.body.6.i.done.i_crit_edge, label %while.body.7.i

while.body.6.i.done.i_crit_edge:                  ; preds = %while.body.6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %done.i

while.body.7.i:                                   ; preds = %while.body.6.i
  %call1.7.i = call i32 @schedule_timeout_idle(i32 noundef 10) #12
  %call.8.i = call fastcc zeroext i1 @oom_reap_task_mm(ptr noundef nonnull %27, ptr noundef %33) #12
  br i1 %call.8.i, label %while.body.7.i.done.i_crit_edge, label %while.body.8.i

while.body.7.i.done.i_crit_edge:                  ; preds = %while.body.7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %done.i

while.body.8.i:                                   ; preds = %while.body.7.i
  %call1.8.i = call i32 @schedule_timeout_idle(i32 noundef 10) #12
  %call.9.i = call fastcc zeroext i1 @oom_reap_task_mm(ptr noundef nonnull %27, ptr noundef %33) #12
  br i1 %call.9.i, label %while.body.8.i.done.i_crit_edge, label %lor.lhs.false.i

while.body.8.i.done.i_crit_edge:                  ; preds = %while.body.8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %done.i

lor.lhs.false.i:                                  ; preds = %while.body.8.i
  %call1.9.i = call i32 @schedule_timeout_idle(i32 noundef 10) #12
  %flags.i = getelementptr inbounds %struct.anon.3, ptr %33, i32 0, i32 43
  %34 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %flags.i, align 4
  %36 = and i32 %35, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool.not.i = icmp eq i32 %36, 0
  br i1 %tobool.not.i, label %do.end.i, label %lor.lhs.false.i.done.i_crit_edge

lor.lhs.false.i.done.i_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %done.i

do.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  %pid.i.i = getelementptr inbounds %struct.task_struct, ptr %27, i32 0, i32 68
  %37 = ptrtoint ptr %pid.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %pid.i.i, align 8
  %comm.i = getelementptr inbounds %struct.task_struct, ptr %27, i32 0, i32 101
  %call5.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.86, i32 noundef %38, ptr noundef %comm.i) #15
  call void @sched_show_task(ptr noundef nonnull %27) #12
  call void @debug_show_all_locks() #12
  br label %done.i

done.i:                                           ; preds = %do.end.i, %lor.lhs.false.i.done.i_crit_edge, %while.body.8.i.done.i_crit_edge, %while.body.7.i.done.i_crit_edge, %while.body.6.i.done.i_crit_edge, %while.body.5.i.done.i_crit_edge, %while.body.4.i.done.i_crit_edge, %while.body.3.i.done.i_crit_edge, %while.body.2.i.done.i_crit_edge, %while.body.1.i.done.i_crit_edge, %while.body.i.done.i_crit_edge, %if.then16.done.i_crit_edge
  %39 = ptrtoint ptr %oom_reaper_list to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %oom_reaper_list, align 4
  %flags6.i = getelementptr inbounds %struct.anon.3, ptr %33, i32 0, i32 43
  call void @_set_bit(i32 noundef 21, ptr noundef %flags6.i) #12
  %usage.i.i = getelementptr inbounds %struct.task_struct, ptr %27, i32 0, i32 2
  %call.i.i.i.i.i.i.i21 = call zeroext i1 @__kasan_check_write(ptr noundef %usage.i.i, i32 noundef 4) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !432
  call void @llvm.prefetch.p0(ptr %usage.i.i, i32 1, i32 3, i32 1) #12
  %40 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i.i, ptr %usage.i.i, i32 1, ptr elementtype(i32) %usage.i.i) #12, !srcloc !433
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %40, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %done.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.while.body.backedge_crit_edge, label %if.then10.i.i.i.i.i, !prof !417

if.end5.i.i.i.i.i.while.body.backedge_crit_edge:  ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.backedge

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @refcount_warn_saturate(ptr noundef %usage.i.i, i32 noundef 3) #12
  br label %while.body.backedge

if.then.i.i:                                      ; preds = %done.i
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !434
  call void @__put_task_struct(ptr noundef nonnull %27) #12
  br label %while.body.backedge

while.body.backedge:                              ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.while.body.backedge_crit_edge, %if.end14.thread
  br label %while.body
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @set_freezable() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_check_no_locks_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__refrigerator(i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @freezing_slow_path(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @oom_reap_task_mm(ptr noundef %tsk, ptr noundef %mm) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), ptr blockaddress(@oom_reap_task_mm, %if.then.i.i)) #12
          to label %__mmap_lock_trace_start_locking.exit.i [label %if.then.i.i], !srcloc !435

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__mmap_lock_do_trace_start_locking(ptr noundef %mm, i1 noundef zeroext false) #12
  br label %__mmap_lock_trace_start_locking.exit.i

__mmap_lock_trace_start_locking.exit.i:           ; preds = %if.then.i.i, %entry
  %mmap_lock.i = getelementptr inbounds %struct.anon.3, ptr %mm, i32 0, i32 15
  %call.i = tail call i32 @down_read_trylock(ptr noundef %mmap_lock.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp ne i32 %call.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), ptr blockaddress(@oom_reap_task_mm, %if.then.i5.i)) #12
          to label %mmap_read_trylock.exit [label %if.then.i5.i], !srcloc !435

if.then.i5.i:                                     ; preds = %__mmap_lock_trace_start_locking.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__mmap_lock_do_trace_acquire_returned(ptr noundef %mm, i1 noundef zeroext false, i1 noundef zeroext %cmp.i) #12
  br label %mmap_read_trylock.exit

mmap_read_trylock.exit:                           ; preds = %if.then.i5.i, %__mmap_lock_trace_start_locking.exit.i
  br i1 %cmp.i, label %if.end, label %if.then

if.then:                                          ; preds = %mmap_read_trylock.exit
  call void @__sanitizer_cov_trace_pc() #14
  %pid = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 68
  %0 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pid, align 8
  tail call fastcc void @trace_skip_task_reaping(i32 noundef %1)
  br label %cleanup

if.end:                                           ; preds = %mmap_read_trylock.exit
  %flags = getelementptr inbounds %struct.anon.3, ptr %mm, i32 0, i32 43
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags, align 4
  %4 = and i32 %3, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  %pid5 = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 68
  %5 = ptrtoint ptr %pid5 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pid5, align 8
  br i1 %tobool.not, label %if.end4, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @trace_skip_task_reaping(i32 noundef %6)
  br label %out_unlock

if.end4:                                          ; preds = %if.end
  tail call fastcc void @trace_start_task_reaping(i32 noundef %6)
  %call6 = tail call zeroext i1 @__oom_reap_task_mm(ptr noundef %mm)
  br i1 %call6, label %do.end, label %if.end4.out_finish_crit_edge

if.end4.out_finish_crit_edge:                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_finish

do.end:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  %7 = ptrtoint ptr %pid5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pid5, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 101
  %rss_stat.i = getelementptr inbounds %struct.anon.3, ptr %mm, i32 0, i32 40
  %arrayidx.i = getelementptr %struct.anon.3, ptr %mm, i32 0, i32 40, i32 0, i32 1
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.i, i32 noundef 4) #12
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %arrayidx.i, align 4
  %11 = tail call i32 @llvm.smax.i32(i32 %10, i32 0) #12
  %shl = shl i32 %11, 2
  %call.i.i.i32 = tail call zeroext i1 @__kasan_check_read(ptr noundef %rss_stat.i, i32 noundef 4) #12
  %12 = ptrtoint ptr %rss_stat.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %rss_stat.i, align 4
  %14 = tail call i32 @llvm.smax.i32(i32 %13, i32 0) #12
  %shl13 = shl i32 %14, 2
  %arrayidx.i34 = getelementptr %struct.anon.3, ptr %mm, i32 0, i32 40, i32 0, i32 3
  %call.i.i.i35 = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.i34, i32 noundef 4) #12
  %15 = ptrtoint ptr %arrayidx.i34 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %arrayidx.i34, align 4
  %17 = tail call i32 @llvm.smax.i32(i32 %16, i32 0) #12
  %shl15 = shl i32 %17, 2
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.88, i32 noundef %8, ptr noundef %comm, i32 noundef %shl, i32 noundef %shl13, i32 noundef %shl15) #15
  br label %out_finish

out_finish:                                       ; preds = %do.end, %if.end4.out_finish_crit_edge
  %18 = ptrtoint ptr %pid5 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pid5, align 8
  tail call fastcc void @trace_finish_task_reaping(i32 noundef %19)
  br label %out_unlock

out_unlock:                                       ; preds = %out_finish, %if.then2
  %ret.0.off0 = phi i1 [ true, %if.then2 ], [ %call6, %out_finish ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), ptr blockaddress(@oom_reap_task_mm, %if.then.i.i36)) #12
          to label %mmap_read_unlock.exit [label %if.then.i.i36], !srcloc !435

if.then.i.i36:                                    ; preds = %out_unlock
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__mmap_lock_do_trace_released(ptr noundef %mm, i1 noundef zeroext false) #12
  br label %mmap_read_unlock.exit

mmap_read_unlock.exit:                            ; preds = %if.then.i.i36, %out_unlock
  tail call void @up_read(ptr noundef %mmap_lock.i) #12
  br label %cleanup

cleanup:                                          ; preds = %mmap_read_unlock.exit, %if.then
  %retval.0 = phi i1 [ %ret.0.off0, %mmap_read_unlock.exit ], [ false, %if.then ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout_idle(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sched_show_task(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_show_all_locks() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_skip_task_reaping(i32 noundef %pid) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_skip_task_reaping, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_skip_task_reaping, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !435

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !407) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !417

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.91, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.end31:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !407) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !441
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_skip_task_reaping, i32 0, i32 7), align 4
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
  tail call void %15(ptr noundef %17, i32 noundef %pid) #12
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool9.not.i = icmp eq ptr %19, null
  br i1 %tobool9.not.i, label %cleanup, label %do.body2.i.do.body2.i_crit_edge

do.body2.i.do.body2.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body2.i

cleanup:                                          ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !442
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !442
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !407) #12
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
  %24 = tail call i32 @llvm.read_register.i32(metadata !407) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !417

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.91, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %33 = tail call i32 @llvm.read_register.i32(metadata !407) #12
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !443
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_skip_task_reaping, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_skip_task_reaping.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_skip_task_reaping.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.90, i32 noundef 152, ptr noundef nonnull @.str.80) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !444
  %38 = tail call i32 @llvm.read_register.i32(metadata !407) #12
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
define internal fastcc void @trace_start_task_reaping(i32 noundef %pid) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_start_task_reaping, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_start_task_reaping, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !435

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !407) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !417

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.91, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.end31:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !407) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !445
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_start_task_reaping, i32 0, i32 7), align 4
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
  tail call void %15(ptr noundef %17, i32 noundef %pid) #12
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool9.not.i = icmp eq ptr %19, null
  br i1 %tobool9.not.i, label %cleanup, label %do.body2.i.do.body2.i_crit_edge

do.body2.i.do.body2.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body2.i

cleanup:                                          ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !446
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !446
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !407) #12
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
  %24 = tail call i32 @llvm.read_register.i32(metadata !407) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !417

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.91, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %33 = tail call i32 @llvm.read_register.i32(metadata !407) #12
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !443
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_start_task_reaping, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_start_task_reaping.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_start_task_reaping.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.90, i32 noundef 120, ptr noundef nonnull @.str.80) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !444
  %38 = tail call i32 @llvm.read_register.i32(metadata !407) #12
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
define internal fastcc void @trace_finish_task_reaping(i32 noundef %pid) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_finish_task_reaping, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_finish_task_reaping, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !435

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !407) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !417

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.91, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.end31:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !407) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !447
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_finish_task_reaping, i32 0, i32 7), align 4
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
  tail call void %15(ptr noundef %17, i32 noundef %pid) #12
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool9.not.i = icmp eq ptr %19, null
  br i1 %tobool9.not.i, label %cleanup, label %do.body2.i.do.body2.i_crit_edge

do.body2.i.do.body2.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body2.i

cleanup:                                          ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !448
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !448
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !407) #12
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
  %24 = tail call i32 @llvm.read_register.i32(metadata !407) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !417

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.91, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %33 = tail call i32 @llvm.read_register.i32(metadata !407) #12
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !443
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_finish_task_reaping, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_finish_task_reaping.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_finish_task_reaping.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.90, i32 noundef 136, ptr noundef nonnull @.str.80) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !444
  %38 = tail call i32 @llvm.read_register.i32(metadata !407) #12
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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_read_trylock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_start_locking(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_acquire_returned(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_released(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_task_struct(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__thaw_task(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_mark_victim(i32 noundef %pid) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mark_victim, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_mark_victim, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !435

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !407) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !417

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.91, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.end31:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !407) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !449
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mark_victim, i32 0, i32 7), align 4
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
  tail call void %15(ptr noundef %17, i32 noundef %pid) #12
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool9.not.i = icmp eq ptr %19, null
  br i1 %tobool9.not.i, label %cleanup, label %do.body2.i.do.body2.i_crit_edge

do.body2.i.do.body2.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body2.i

cleanup:                                          ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !450
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !450
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !407) #12
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
  %24 = tail call i32 @llvm.read_register.i32(metadata !407) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !417

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.91, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %33 = tail call i32 @llvm.read_register.i32(metadata !407) #12
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !443
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mark_victim, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_mark_victim.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_mark_victim.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.90, i32 noundef 88, ptr noundef nonnull @.str.80) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !444
  %38 = tail call i32 @llvm.read_register.i32(metadata !407) #12
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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_wake_reaper(i32 noundef %pid) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_wake_reaper, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_wake_reaper, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !435

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !407) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !417

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.91, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.end31:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !407) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !451
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_wake_reaper, i32 0, i32 7), align 4
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
  tail call void %15(ptr noundef %17, i32 noundef %pid) #12
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool9.not.i = icmp eq ptr %19, null
  br i1 %tobool9.not.i, label %cleanup, label %do.body2.i.do.body2.i_crit_edge

do.body2.i.do.body2.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body2.i

cleanup:                                          ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !452
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !452
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !407) #12
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
  %24 = tail call i32 @llvm.read_register.i32(metadata !407) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !417

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.91, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %33 = tail call i32 @llvm.read_register.i32(metadata !407) #12
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !443
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_wake_reaper, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_wake_reaper.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_wake_reaper.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.90, i32 noundef 104, ptr noundef nonnull @.str.80) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !444
  %38 = tail call i32 @llvm.read_register.i32(metadata !407) #12
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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mem_cgroup_get_max(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mem_cgroup_get_oom_group(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__oom_kill_process(ptr noundef %victim, ptr noundef %message) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @find_lock_task_mm(ptr noundef %victim)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.else

do.end:                                           ; preds = %entry
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %victim, i32 0, i32 68
  %0 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pid.i, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %victim, i32 0, i32 101
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.99, ptr noundef %message, i32 noundef %1, ptr noundef %comm) #15
  %usage.i = getelementptr inbounds %struct.task_struct, ptr %victim, i32 0, i32 2
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !432
  tail call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #12
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #12, !srcloc !433
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i132, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !417

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %usage.i, i32 noundef 3) #12
  br label %cleanup

if.then.i132:                                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !434
  tail call void @__put_task_struct(ptr noundef %victim) #12
  br label %cleanup

if.else:                                          ; preds = %entry
  %cmp.not = icmp eq ptr %call, %victim
  br i1 %cmp.not, label %if.else.if.end5_crit_edge, label %if.then3

if.else.if.end5_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

if.then3:                                         ; preds = %if.else
  %usage.i133 = getelementptr inbounds %struct.task_struct, ptr %call, i32 0, i32 2
  %call.i.i.i.i.i.i134 = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i133, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %usage.i133, i32 1, i32 3, i32 1) #12
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i133, ptr %usage.i133, i32 1, ptr elementtype(i32) %usage.i133) #12, !srcloc !431
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then3.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !418

if.then3.if.end15.sink.split.i.i.i.i_crit_edge:   ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then3
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %4 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %.not.i.i.i.i135 = icmp sgt i32 %4, -1
  br i1 %.not.i.i.i.i135, label %if.else.i.i.i.i.get_task_struct.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !417

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.get_task_struct.exit_crit_edge:   ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_task_struct.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then3.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then3.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %usage.i133, i32 noundef %.sink.i.i.i.i) #12
  br label %get_task_struct.exit

get_task_struct.exit:                             ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.get_task_struct.exit_crit_edge
  %usage.i136 = getelementptr inbounds %struct.task_struct, ptr %victim, i32 0, i32 2
  %call.i.i.i.i.i.i137 = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i136, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !432
  tail call void @llvm.prefetch.p0(ptr %usage.i136, i32 1, i32 3, i32 1) #12
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i136, ptr %usage.i136, i32 1, ptr elementtype(i32) %usage.i136) #12, !srcloc !433
  %asmresult.i.i.i.i.i.i.i138 = extractvalue { i32, i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i138)
  %cmp.i.i.i.i139 = icmp eq i32 %asmresult.i.i.i.i.i.i.i138, 1
  br i1 %cmp.i.i.i.i139, label %if.then.i143, label %if.end5.i.i.i.i141

if.end5.i.i.i.i141:                               ; preds = %get_task_struct.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i138)
  %.not.i.i.i.i140 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i138, 0
  br i1 %.not.i.i.i.i140, label %if.end5.i.i.i.i141.if.end5_crit_edge, label %if.then10.i.i.i.i142, !prof !417

if.end5.i.i.i.i141.if.end5_crit_edge:             ; preds = %if.end5.i.i.i.i141
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

if.then10.i.i.i.i142:                             ; preds = %if.end5.i.i.i.i141
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %usage.i136, i32 noundef 3) #12
  br label %if.end5

if.then.i143:                                     ; preds = %get_task_struct.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !434
  tail call void @__put_task_struct(ptr noundef %victim) #12
  br label %if.end5

if.end5:                                          ; preds = %if.then.i143, %if.then10.i.i.i.i142, %if.end5.i.i.i.i141.if.end5_crit_edge, %if.else.if.end5_crit_edge
  %victim.addr.0 = phi ptr [ %victim, %if.else.if.end5_crit_edge ], [ %call, %if.end5.i.i.i.i141.if.end5_crit_edge ], [ %call, %if.then10.i.i.i.i142 ], [ %call, %if.then.i143 ]
  %mm6 = getelementptr inbounds %struct.task_struct, ptr %victim.addr.0, i32 0, i32 53
  %6 = ptrtoint ptr %mm6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mm6, align 8
  %mm_count.i = getelementptr inbounds %struct.anon.3, ptr %7, i32 0, i32 11
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %mm_count.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %mm_count.i, i32 1, i32 3, i32 1) #12
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %mm_count.i, ptr %mm_count.i, i32 1, ptr elementtype(i32) %mm_count.i) #12, !srcloc !430
  %9 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !436
  %10 = tail call i32 @llvm.read_register.i32(metadata !407) #12
  %and.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cpu.i, align 4
  %arrayidx13.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %13
  %14 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx13.i, align 4
  %add.i = add i32 %15, ptrtoint (ptr getelementptr inbounds (%struct.vm_event_state, ptr @vm_event_states, i32 0, i32 0, i32 45) to i32)
  %16 = inttoptr i32 %add.i to ptr
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 4
  %add14.i = add i32 %18, 1
  store i32 %add14.i, ptr %16, align 4
  %19 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !437
  %and.i.i.i = and i32 %19, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i145 = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i145, label %if.then.i146, label %if.end5.count_vm_event.exit_crit_edge, !prof !418

if.end5.count_vm_event.exit_crit_edge:            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %count_vm_event.exit

if.then.i146:                                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @warn_bogus_irq_restore() #12
  br label %count_vm_event.exit

count_vm_event.exit:                              ; preds = %if.then.i146, %if.end5.count_vm_event.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %9) #12, !srcloc !438
  tail call fastcc void @memcg_memory_event_mm(ptr noundef %7)
  %call7 = tail call i32 @do_send_sig_info(i32 noundef 9, ptr noundef nonnull inttoptr (i32 1 to ptr), ptr noundef %victim.addr.0, i32 noundef 1) #12
  tail call fastcc void @mark_oom_victim(ptr noundef %victim.addr.0)
  %pid.i147 = getelementptr inbounds %struct.task_struct, ptr %victim.addr.0, i32 0, i32 68
  %20 = ptrtoint ptr %pid.i147 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pid.i147, align 8
  %comm13 = getelementptr inbounds %struct.task_struct, ptr %victim.addr.0, i32 0, i32 101
  %total_vm = getelementptr inbounds %struct.anon.3, ptr %7, i32 0, i32 19
  %22 = ptrtoint ptr %total_vm to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %total_vm, align 8
  %shl = shl i32 %23, 2
  %rss_stat.i = getelementptr inbounds %struct.anon.3, ptr %7, i32 0, i32 40
  %arrayidx.i = getelementptr %struct.anon.3, ptr %7, i32 0, i32 40, i32 0, i32 1
  %call.i.i.i148 = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.i, i32 noundef 4) #12
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %arrayidx.i, align 4
  %26 = tail call i32 @llvm.smax.i32(i32 %25, i32 0) #12
  %shl16 = shl i32 %26, 2
  %call.i.i.i150 = tail call zeroext i1 @__kasan_check_read(ptr noundef %rss_stat.i, i32 noundef 4) #12
  %27 = ptrtoint ptr %rss_stat.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %rss_stat.i, align 4
  %29 = tail call i32 @llvm.smax.i32(i32 %28, i32 0) #12
  %shl18 = shl i32 %29, 2
  %arrayidx.i152 = getelementptr %struct.anon.3, ptr %7, i32 0, i32 40, i32 0, i32 3
  %call.i.i.i153 = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.i152, i32 noundef 4) #12
  %30 = ptrtoint ptr %arrayidx.i152 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %arrayidx.i152, align 4
  %32 = tail call i32 @llvm.smax.i32(i32 %31, i32 0) #12
  %shl20 = shl i32 %32, 2
  %33 = tail call i32 @llvm.read_register.i32(metadata !407) #12
  %and.i.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %36, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !420
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i, label %count_vm_event.exit.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

count_vm_event.exit.rcu_read_lock.exit_crit_edge: ; preds = %count_vm_event.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %count_vm_event.exit
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.76, i32 noundef 696, ptr noundef nonnull @.str.77) #12
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %count_vm_event.exit.rcu_read_lock.exit_crit_edge
  %real_cred = getelementptr inbounds %struct.task_struct, ptr %victim.addr.0, i32 0, i32 98
  %37 = ptrtoint ptr %real_cred to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile ptr, ptr %real_cred, align 4
  %call26 = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end35_crit_edge

rcu_read_lock.exit.do.end35_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end35

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call28 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %land.lhs.true.do.end35_crit_edge, label %land.lhs.true30

land.lhs.true.do.end35_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end35

land.lhs.true30:                                  ; preds = %land.lhs.true
  %.b120 = load i1, ptr @__oom_kill_process.__warned, align 1
  br i1 %.b120, label %land.lhs.true30.do.end35_crit_edge, label %if.then32

land.lhs.true30.do.end35_crit_edge:               ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end35

if.then32:                                        ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__oom_kill_process.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.25, i32 noundef 901, ptr noundef nonnull @.str.80) #12
  br label %do.end35

do.end35:                                         ; preds = %if.then32, %land.lhs.true30.do.end35_crit_edge, %land.lhs.true.do.end35_crit_edge, %rcu_read_lock.exit.do.end35_crit_edge
  %uid = getelementptr inbounds %struct.cred, ptr %38, i32 0, i32 4
  %39 = ptrtoint ptr %uid to i32
  call void @__asan_load4_noabort(i32 %39)
  %___val.sroa.0.0.copyload = load i32, ptr %uid, align 4
  %call.i154 = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i154, label %do.end35.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i157

do.end35.rcu_read_unlock.exit_crit_edge:          ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true.i157:                               ; preds = %do.end35
  %call1.i155 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i155)
  %tobool.not.i156 = icmp eq i32 %call1.i155, 0
  br i1 %tobool.not.i156, label %land.lhs.true.i157.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i159

land.lhs.true.i157.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i157
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true2.i159:                              ; preds = %land.lhs.true.i157
  %.b4.i158 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i158, label %land.lhs.true2.i159.rcu_read_unlock.exit_crit_edge, label %if.then.i160

land.lhs.true2.i159.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i159
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

if.then.i160:                                     ; preds = %land.lhs.true2.i159
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.76, i32 noundef 724, ptr noundef nonnull @.str.78) #12
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i160, %land.lhs.true2.i159.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i157.rcu_read_unlock.exit_crit_edge, %do.end35.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !421
  %40 = tail call i32 @llvm.read_register.i32(metadata !407) #12
  %and.i.i.i.i.i161 = and i32 %40, -16384
  %41 = inttoptr i32 %and.i.i.i.i.i161 to ptr
  %preempt_count.i.i.i.i162 = getelementptr inbounds %struct.thread_info, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %preempt_count.i.i.i.i162 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %preempt_count.i.i.i.i162, align 4
  %sub.i.i.i = add i32 %43, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i162, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %___val.sroa.0.0.copyload, 0
  %call37 = tail call i32 @from_kuid(ptr noundef nonnull @init_user_ns, [1 x i32] %.fca.0.insert) #12
  %pgtables_bytes.i = getelementptr inbounds %struct.anon.3, ptr %7, i32 0, i32 12
  %call.i.i.i163 = tail call zeroext i1 @__kasan_check_read(ptr noundef %pgtables_bytes.i, i32 noundef 4) #12
  %44 = ptrtoint ptr %pgtables_bytes.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %pgtables_bytes.i, align 4
  %shr = lshr i32 %45, 10
  %signal = getelementptr inbounds %struct.task_struct, ptr %victim.addr.0, i32 0, i32 111
  %46 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %signal, align 16
  %oom_score_adj = getelementptr inbounds %struct.signal_struct, ptr %47, i32 0, i32 57
  %48 = ptrtoint ptr %oom_score_adj to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %oom_score_adj, align 2
  %conv = sext i16 %49 to i32
  %call39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.102, ptr noundef %message, i32 noundef %21, ptr noundef %comm13, i32 noundef %shl, i32 noundef %shl16, i32 noundef %shl18, i32 noundef %shl20, i32 noundef %call37, i32 noundef %shr, i32 noundef %conv) #15
  %alloc_lock.i = getelementptr inbounds %struct.task_struct, ptr %victim.addr.0, i32 0, i32 127
  tail call void @_raw_spin_unlock(ptr noundef %alloc_lock.i) #12
  %50 = tail call i32 @llvm.read_register.i32(metadata !407) #12
  %and.i.i.i.i.i121 = and i32 %50, -16384
  %51 = inttoptr i32 %and.i.i.i.i.i121 to ptr
  %preempt_count.i.i.i.i122 = getelementptr inbounds %struct.thread_info, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %preempt_count.i.i.i.i122 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %preempt_count.i.i.i.i122, align 4
  %add.i.i.i123 = add i32 %53, 1
  store volatile i32 %add.i.i.i123, ptr %preempt_count.i.i.i.i122, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !420
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i124 = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i124, label %rcu_read_unlock.exit.rcu_read_lock.exit131_crit_edge, label %land.lhs.true.i127

rcu_read_unlock.exit.rcu_read_lock.exit131_crit_edge: ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit131

land.lhs.true.i127:                               ; preds = %rcu_read_unlock.exit
  %call1.i125 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i125)
  %tobool.not.i126 = icmp eq i32 %call1.i125, 0
  br i1 %tobool.not.i126, label %land.lhs.true.i127.rcu_read_lock.exit131_crit_edge, label %land.lhs.true2.i129

land.lhs.true.i127.rcu_read_lock.exit131_crit_edge: ; preds = %land.lhs.true.i127
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit131

land.lhs.true2.i129:                              ; preds = %land.lhs.true.i127
  %.b4.i128 = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i128, label %land.lhs.true2.i129.rcu_read_lock.exit131_crit_edge, label %if.then.i130

land.lhs.true2.i129.rcu_read_lock.exit131_crit_edge: ; preds = %land.lhs.true2.i129
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit131

if.then.i130:                                     ; preds = %land.lhs.true2.i129
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.76, i32 noundef 696, ptr noundef nonnull @.str.77) #12
  br label %rcu_read_lock.exit131

rcu_read_lock.exit131:                            ; preds = %if.then.i130, %land.lhs.true2.i129.rcu_read_lock.exit131_crit_edge, %land.lhs.true.i127.rcu_read_lock.exit131_crit_edge, %rcu_read_unlock.exit.rcu_read_lock.exit131_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.task_struct, ptr @init_task, i32 0, i32 50) to i32))
  %54 = load volatile ptr, ptr getelementptr inbounds (%struct.task_struct, ptr @init_task, i32 0, i32 50), align 16
  %add.ptr202206 = getelementptr i8, ptr %54, i32 -1136
  %cmp45.not203207 = icmp eq ptr %add.ptr202206, @init_task
  br i1 %cmp45.not203207, label %rcu_read_lock.exit131.for.end_crit_edge, label %for.body.lr.ph.lr.ph

rcu_read_lock.exit131.for.end_crit_edge:          ; preds = %rcu_read_lock.exit131
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph.lr.ph:                             ; preds = %rcu_read_lock.exit131
  %flags = getelementptr inbounds %struct.anon.3, ptr %7, i32 0, i32 43
  br label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.then55.for.body.lr.ph_crit_edge, %for.body.lr.ph.lr.ph
  %add.ptr202209 = phi ptr [ %add.ptr202206, %for.body.lr.ph.lr.ph ], [ %add.ptr202, %if.then55.for.body.lr.ph_crit_edge ]
  %55 = phi ptr [ %54, %for.body.lr.ph.lr.ph ], [ %71, %if.then55.for.body.lr.ph_crit_edge ]
  %can_oom_reap.0.off0.ph208 = phi i1 [ true, %for.body.lr.ph.lr.ph ], [ false, %if.then55.for.body.lr.ph_crit_edge ]
  br label %for.body

for.body:                                         ; preds = %for.cond.backedge.for.body_crit_edge, %for.body.lr.ph
  %add.ptr204 = phi ptr [ %add.ptr202209, %for.body.lr.ph ], [ %add.ptr, %for.cond.backedge.for.body_crit_edge ]
  %56 = phi ptr [ %55, %for.body.lr.ph ], [ %75, %for.cond.backedge.for.body_crit_edge ]
  %call.i164 = tail call i32 @rcu_read_lock_any_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i164)
  %tobool.not.i165 = icmp eq i32 %call.i164, 0
  br i1 %tobool.not.i165, label %land.lhs.true.i167, label %for.body.do.end.i_crit_edge

for.body.do.end.i_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

land.lhs.true.i167:                               ; preds = %for.body
  %call1.i166 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i166)
  %tobool2.not.i = icmp eq i32 %call1.i166, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i167.do.end.i_crit_edge, label %land.lhs.true3.i

land.lhs.true.i167.do.end.i_crit_edge:            ; preds = %land.lhs.true.i167
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i167
  %.b34.i = load i1, ptr @process_shares_mm.__warned, align 1
  br i1 %.b34.i, label %land.lhs.true3.i.do.end.i_crit_edge, label %if.then.i168

land.lhs.true3.i.do.end.i_crit_edge:              ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

if.then.i168:                                     ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @process_shares_mm.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.25, i32 noundef 497, ptr noundef nonnull @.str.26) #12
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i168, %land.lhs.true3.i.do.end.i_crit_edge, %land.lhs.true.i167.do.end.i_crit_edge, %for.body.do.end.i_crit_edge
  %signal.i = getelementptr i8, ptr %56, i32 544
  %57 = ptrtoint ptr %signal.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %signal.i, align 16
  %thread_head.i = getelementptr inbounds %struct.signal_struct, ptr %58, i32 0, i32 3
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %do.end.i
  %.pn.in.i = phi ptr [ %thread_head.i, %do.end.i ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %59 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %.pn.i = load volatile ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %thread_head.i
  br i1 %cmp.not.i, label %for.cond.i.for.cond.backedge_crit_edge, label %for.body.i

for.cond.i.for.cond.backedge_crit_edge:           ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.backedge

for.body.i:                                       ; preds = %for.cond.i
  %mm15.i = getelementptr i8, ptr %.pn.i, i32 -228
  %60 = ptrtoint ptr %mm15.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile ptr, ptr %mm15.i, align 8
  %tobool16.not.i = icmp eq ptr %61, null
  br i1 %tobool16.not.i, label %for.body.i.for.cond.i_crit_edge, label %cleanup29.split.loop.exit35.i

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i

cleanup29.split.loop.exit35.i:                    ; preds = %for.body.i
  %cmp18.le.i = icmp eq ptr %61, %7
  br i1 %cmp18.le.i, label %if.end49, label %cleanup29.split.loop.exit35.i.for.cond.backedge_crit_edge

cleanup29.split.loop.exit35.i.for.cond.backedge_crit_edge: ; preds = %cleanup29.split.loop.exit35.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.backedge

if.end49:                                         ; preds = %cleanup29.split.loop.exit35.i
  %62 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %signal, align 16
  %cmp.i = icmp eq ptr %58, %63
  br i1 %cmp.i, label %if.end49.for.cond.backedge_crit_edge, label %if.end52

if.end49.for.cond.backedge_crit_edge:             ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.backedge

if.end52:                                         ; preds = %if.end49
  %tgid.i.i = getelementptr i8, ptr %56, i32 172
  %64 = ptrtoint ptr %tgid.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %tgid.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %65)
  %cmp.i170.not = icmp eq i32 %65, 1
  br i1 %cmp.i170.not, label %if.then55, label %if.end67

if.then55:                                        ; preds = %if.end52
  tail call void @_set_bit(i32 noundef 21, ptr noundef %flags) #12
  %66 = ptrtoint ptr %pid.i147 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %pid.i147, align 8
  %pid.i172 = getelementptr i8, ptr %56, i32 168
  %68 = ptrtoint ptr %pid.i172 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %pid.i172, align 8
  %comm64 = getelementptr i8, ptr %56, i32 488
  %call66 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.105, i32 noundef %67, ptr noundef %comm13, i32 noundef %69, ptr noundef %comm64) #15
  %tasks201 = getelementptr inbounds %struct.task_struct, ptr %add.ptr204, i32 0, i32 50
  %70 = ptrtoint ptr %tasks201 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load volatile ptr, ptr %tasks201, align 16
  %add.ptr202 = getelementptr i8, ptr %71, i32 -1136
  %cmp45.not203 = icmp eq ptr %add.ptr202, @init_task
  br i1 %cmp45.not203, label %if.then55.for.end_crit_edge, label %if.then55.for.body.lr.ph_crit_edge

if.then55.for.body.lr.ph_crit_edge:               ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.lr.ph

if.then55.for.end_crit_edge:                      ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.end67:                                         ; preds = %if.end52
  %flags68 = getelementptr i8, ptr %56, i32 -1124
  %72 = ptrtoint ptr %flags68 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %flags68, align 4
  %and = and i32 %73, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool69.not = icmp eq i32 %and, 0
  br i1 %tobool69.not, label %if.end73, label %if.end67.for.cond.backedge_crit_edge, !prof !417

if.end67.for.cond.backedge_crit_edge:             ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.backedge

if.end73:                                         ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #14
  %call74 = tail call i32 @do_send_sig_info(i32 noundef 9, ptr noundef nonnull inttoptr (i32 1 to ptr), ptr noundef %add.ptr204, i32 noundef 1) #12
  br label %for.cond.backedge

for.cond.backedge:                                ; preds = %if.end73, %if.end67.for.cond.backedge_crit_edge, %if.end49.for.cond.backedge_crit_edge, %cleanup29.split.loop.exit35.i.for.cond.backedge_crit_edge, %for.cond.i.for.cond.backedge_crit_edge
  %tasks = getelementptr inbounds %struct.task_struct, ptr %add.ptr204, i32 0, i32 50
  %74 = ptrtoint ptr %tasks to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load volatile ptr, ptr %tasks, align 16
  %add.ptr = getelementptr i8, ptr %75, i32 -1136
  %cmp45.not = icmp eq ptr %add.ptr, @init_task
  br i1 %cmp45.not, label %for.cond.backedge.for.end_crit_edge, label %for.cond.backedge.for.body_crit_edge

for.cond.backedge.for.body_crit_edge:             ; preds = %for.cond.backedge
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.cond.backedge.for.end_crit_edge:              ; preds = %for.cond.backedge
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.cond.backedge.for.end_crit_edge, %if.then55.for.end_crit_edge, %rcu_read_lock.exit131.for.end_crit_edge
  %can_oom_reap.0.off0.ph.lcssa = phi i1 [ true, %rcu_read_lock.exit131.for.end_crit_edge ], [ %can_oom_reap.0.off0.ph208, %for.cond.backedge.for.end_crit_edge ], [ false, %if.then55.for.end_crit_edge ]
  %call.i173 = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i173, label %for.end.rcu_read_unlock.exit184_crit_edge, label %land.lhs.true.i176

for.end.rcu_read_unlock.exit184_crit_edge:        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit184

land.lhs.true.i176:                               ; preds = %for.end
  %call1.i174 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i174)
  %tobool.not.i175 = icmp eq i32 %call1.i174, 0
  br i1 %tobool.not.i175, label %land.lhs.true.i176.rcu_read_unlock.exit184_crit_edge, label %land.lhs.true2.i178

land.lhs.true.i176.rcu_read_unlock.exit184_crit_edge: ; preds = %land.lhs.true.i176
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit184

land.lhs.true2.i178:                              ; preds = %land.lhs.true.i176
  %.b4.i177 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i177, label %land.lhs.true2.i178.rcu_read_unlock.exit184_crit_edge, label %if.then.i179

land.lhs.true2.i178.rcu_read_unlock.exit184_crit_edge: ; preds = %land.lhs.true2.i178
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit184

if.then.i179:                                     ; preds = %land.lhs.true2.i178
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.76, i32 noundef 724, ptr noundef nonnull @.str.78) #12
  br label %rcu_read_unlock.exit184

rcu_read_unlock.exit184:                          ; preds = %if.then.i179, %land.lhs.true2.i178.rcu_read_unlock.exit184_crit_edge, %land.lhs.true.i176.rcu_read_unlock.exit184_crit_edge, %for.end.rcu_read_unlock.exit184_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !421
  %76 = tail call i32 @llvm.read_register.i32(metadata !407) #12
  %and.i.i.i.i.i180 = and i32 %76, -16384
  %77 = inttoptr i32 %and.i.i.i.i.i180 to ptr
  %preempt_count.i.i.i.i181 = getelementptr inbounds %struct.thread_info, ptr %77, i32 0, i32 1
  %78 = ptrtoint ptr %preempt_count.i.i.i.i181 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load volatile i32, ptr %preempt_count.i.i.i.i181, align 4
  %sub.i.i.i182 = add i32 %79, -1
  store volatile i32 %sub.i.i.i182, ptr %preempt_count.i.i.i.i181, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  br i1 %can_oom_reap.0.off0.ph.lcssa, label %if.then76, label %rcu_read_unlock.exit184.if.end77_crit_edge

rcu_read_unlock.exit184.if.end77_crit_edge:       ; preds = %rcu_read_unlock.exit184
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end77

if.then76:                                        ; preds = %rcu_read_unlock.exit184
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @wake_oom_reaper(ptr noundef %victim.addr.0)
  br label %if.end77

if.end77:                                         ; preds = %if.then76, %rcu_read_unlock.exit184.if.end77_crit_edge
  %call.i.i.i186 = tail call zeroext i1 @__kasan_check_write(ptr noundef %mm_count.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !422
  tail call void @llvm.prefetch.p0(ptr %mm_count.i, i32 1, i32 3, i32 1) #12
  %80 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %mm_count.i, ptr %mm_count.i, i32 1, ptr elementtype(i32) %mm_count.i) #12, !srcloc !423
  %asmresult.i.i.i.i.i.i187 = extractvalue { i32, i32 } %80, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !424
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i187)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i187, 0
  br i1 %cmp.i.i.i, label %if.then.i188, label %if.end77.mmdrop.exit_crit_edge, !prof !418

if.end77.mmdrop.exit_crit_edge:                   ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #14
  br label %mmdrop.exit

if.then.i188:                                     ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__mmdrop(ptr noundef %7) #12
  br label %mmdrop.exit

mmdrop.exit:                                      ; preds = %if.then.i188, %if.end77.mmdrop.exit_crit_edge
  %usage.i189 = getelementptr inbounds %struct.task_struct, ptr %victim.addr.0, i32 0, i32 2
  %call.i.i.i.i.i.i190 = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i189, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !432
  tail call void @llvm.prefetch.p0(ptr %usage.i189, i32 1, i32 3, i32 1) #12
  %81 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i189, ptr %usage.i189, i32 1, ptr elementtype(i32) %usage.i189) #12, !srcloc !433
  %asmresult.i.i.i.i.i.i.i191 = extractvalue { i32, i32, i32 } %81, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i191)
  %cmp.i.i.i.i192 = icmp eq i32 %asmresult.i.i.i.i.i.i.i191, 1
  br i1 %cmp.i.i.i.i192, label %if.then.i196, label %if.end5.i.i.i.i194

if.end5.i.i.i.i194:                               ; preds = %mmdrop.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i191)
  %.not.i.i.i.i193 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i191, 0
  br i1 %.not.i.i.i.i193, label %if.end5.i.i.i.i194.cleanup_crit_edge, label %if.then10.i.i.i.i195, !prof !417

if.end5.i.i.i.i194.cleanup_crit_edge:             ; preds = %if.end5.i.i.i.i194
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then10.i.i.i.i195:                             ; preds = %if.end5.i.i.i.i194
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %usage.i189, i32 noundef 3) #12
  br label %cleanup

if.then.i196:                                     ; preds = %mmdrop.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !434
  tail call void @__put_task_struct(ptr noundef %victim.addr.0) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then.i196, %if.then10.i.i.i.i195, %if.end5.i.i.i.i194.cleanup_crit_edge, %if.then.i132, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mem_cgroup_print_oom_group(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mem_cgroup_scan_tasks(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @oom_kill_memcg_member(ptr noundef %task, ptr noundef %message) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %signal = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 111
  %0 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %signal, align 16
  %oom_score_adj = getelementptr inbounds %struct.signal_struct, ptr %1, i32 0, i32 57
  %2 = ptrtoint ptr %oom_score_adj to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %oom_score_adj, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1000, i16 %3)
  %cmp.not = icmp eq i16 %3, -1000
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %tgid.i.i = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 69
  %4 = ptrtoint ptr %tgid.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tgid.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp.i.not = icmp eq i32 %5, 1
  br i1 %cmp.i.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  %usage.i = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 2
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #12
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #12, !srcloc !431
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !418

if.then.if.end15.sink.split.i.i.i.i_crit_edge:    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %7 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %.not.i.i.i.i = icmp sgt i32 %7, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.get_task_struct.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !417

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.get_task_struct.exit_crit_edge:   ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_task_struct.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %usage.i, i32 noundef %.sink.i.i.i.i) #12
  br label %get_task_struct.exit

get_task_struct.exit:                             ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.get_task_struct.exit_crit_edge
  tail call fastcc void @__oom_kill_process(ptr noundef %task, ptr noundef %message)
  br label %if.end

if.end:                                           ; preds = %get_task_struct.exit, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @memcg_memory_event_mm(ptr noundef %mm) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (i8, ptr @memory_cgrp_subsys_enabled_key, i32 1), ptr blockaddress(@memcg_memory_event_mm, %cleanup)) #12
          to label %if.end [label %cleanup], !srcloc !435

if.end:                                           ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !407) #12
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !420
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.76, i32 noundef 696, ptr noundef nonnull @.str.77) #12
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %owner = getelementptr inbounds %struct.anon.3, ptr %mm, i32 0, i32 46
  %4 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %owner, align 4
  %call2 = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end10_crit_edge

rcu_read_lock.exit.do.end10_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end10_crit_edge, label %land.lhs.true5

land.lhs.true.do.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b1 = load i1, ptr @memcg_memory_event_mm.__warned, align 1
  br i1 %.b1, label %land.lhs.true5.do.end10_crit_edge, label %if.then7

land.lhs.true5.do.end10_crit_edge:                ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10

if.then7:                                         ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @memcg_memory_event_mm.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.107, i32 noundef 1099, ptr noundef nonnull @.str.80) #12
  br label %do.end10

do.end10:                                         ; preds = %if.then7, %land.lhs.true5.do.end10_crit_edge, %land.lhs.true.do.end10_crit_edge, %rcu_read_lock.exit.do.end10_crit_edge
  %call12 = tail call ptr @mem_cgroup_from_task(ptr noundef %5) #12
  %tobool13.not = icmp eq ptr %call12, null
  br i1 %tobool13.not, label %do.end10.if.end17_crit_edge, label %if.then16, !prof !418

do.end10.if.end17_crit_edge:                      ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17

if.then16:                                        ; preds = %do.end10
  %arrayidx.i = getelementptr %struct.mem_cgroup, ptr %call12, i32 0, i32 28, i32 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %arrayidx.i, i32 1, i32 3, i32 1) #12
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx.i, ptr %arrayidx.i, i32 1, ptr elementtype(i32) %arrayidx.i) #12, !srcloc !430
  %events_local_file.i = getelementptr inbounds %struct.mem_cgroup, ptr %call12, i32 0, i32 15
  tail call void @cgroup_file_notify(ptr noundef %events_local_file.i) #12
  br label %do.body.i

do.body.i:                                        ; preds = %land.rhs.i.do.body.i_crit_edge, %if.then16
  %memcg.addr.0.i = phi ptr [ %call12, %if.then16 ], [ %add.ptr.i.i, %land.rhs.i.do.body.i_crit_edge ]
  %arrayidx3.i = getelementptr %struct.mem_cgroup, ptr %memcg.addr.0.i, i32 0, i32 27, i32 4
  %call.i.i33.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx3.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %arrayidx3.i, i32 1, i32 3, i32 1) #12
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx3.i, ptr %arrayidx3.i, i32 1, ptr elementtype(i32) %arrayidx3.i) #12, !srcloc !430
  %events_file.i = getelementptr inbounds %struct.mem_cgroup, ptr %memcg.addr.0.i, i32 0, i32 14
  tail call void @cgroup_file_notify(ptr noundef %events_file.i) #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (i8, ptr @memory_cgrp_subsys_on_dfl_key, i32 1), ptr blockaddress(@memcg_memory_event_mm, %if.end17)) #12
          to label %if.end13.i [label %if.end17], !srcloc !435

if.end13.i:                                       ; preds = %do.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cgroup_root, ptr @cgrp_dfl_root, i32 0, i32 7) to i32))
  %8 = load i32, ptr getelementptr inbounds (%struct.cgroup_root, ptr @cgrp_dfl_root, i32 0, i32 7), align 4
  %and.i = and i32 %8, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool14.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool14.not.i, label %do.cond.i, label %if.end13.i.if.end17_crit_edge

if.end13.i.if.end17_crit_edge:                    ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17

do.cond.i:                                        ; preds = %if.end13.i
  %parent.i.i = getelementptr inbounds %struct.mem_cgroup, ptr %memcg.addr.0.i, i32 0, i32 2, i32 13
  %9 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %parent.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %10, null
  %add.ptr.i.i = getelementptr i8, ptr %10, i32 -176
  %tobool18.not36.i = icmp eq ptr %add.ptr.i.i, null
  %tobool18.not.i = or i1 %tobool.not.i.i, %tobool18.not36.i
  br i1 %tobool18.not.i, label %do.cond.i.if.end17_crit_edge, label %land.rhs.i

do.cond.i.if.end17_crit_edge:                     ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17

land.rhs.i:                                       ; preds = %do.cond.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @root_mem_cgroup to i32))
  %11 = load ptr, ptr @root_mem_cgroup, align 4
  %cmp.i.i = icmp eq ptr %11, %add.ptr.i.i
  br i1 %cmp.i.i, label %land.rhs.i.if.end17_crit_edge, label %land.rhs.i.do.body.i_crit_edge

land.rhs.i.do.body.i_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i

land.rhs.i.if.end17_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17

if.end17:                                         ; preds = %land.rhs.i.if.end17_crit_edge, %do.cond.i.if.end17_crit_edge, %if.end13.i.if.end17_crit_edge, %do.body.i, %do.end10.if.end17_crit_edge
  %call.i2 = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i2, label %if.end17.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i5

if.end17.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true.i5:                                 ; preds = %if.end17
  %call1.i3 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i3)
  %tobool.not.i4 = icmp eq i32 %call1.i3, 0
  br i1 %tobool.not.i4, label %land.lhs.true.i5.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i7

land.lhs.true.i5.rcu_read_unlock.exit_crit_edge:  ; preds = %land.lhs.true.i5
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true2.i7:                                ; preds = %land.lhs.true.i5
  %.b4.i6 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i6, label %land.lhs.true2.i7.rcu_read_unlock.exit_crit_edge, label %if.then.i8

land.lhs.true2.i7.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i7
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

if.then.i8:                                       ; preds = %land.lhs.true2.i7
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.76, i32 noundef 724, ptr noundef nonnull @.str.78) #12
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i8, %land.lhs.true2.i7.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i5.rcu_read_unlock.exit_crit_edge, %if.end17.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !421
  %12 = tail call i32 @llvm.read_register.i32(metadata !407) #12
  %and.i.i.i.i.i9 = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i.i.i9 to ptr
  %preempt_count.i.i.i.i10 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %preempt_count.i.i.i.i10 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %preempt_count.i.i.i.i10, align 4
  %sub.i.i.i = add i32 %15, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i10, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @do_send_sig_info(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kuid(ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mem_cgroup_from_task(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmdrop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cgroup_file_notify(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @oom_evaluate_task(ptr noundef %task, ptr nocapture noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tgid.i.i.i = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 69
  %0 = ptrtoint ptr %tgid.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tgid.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.i.not.i = icmp eq i32 %1, 1
  br i1 %cmp.i.not.i, label %entry.cleanup_crit_edge, label %oom_unkillable_task.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

oom_unkillable_task.exit:                         ; preds = %entry
  %flags.i = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 3
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %3, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i.not, label %if.end4, label %oom_unkillable_task.exit.cleanup_crit_edge

oom_unkillable_task.exit.cleanup_crit_edge:       ; preds = %oom_unkillable_task.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4:                                          ; preds = %oom_unkillable_task.exit
  %order.i = getelementptr inbounds %struct.oom_control, ptr %arg, i32 0, i32 4
  %4 = ptrtoint ptr %order.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %order.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %cmp.i55 = icmp eq i32 %5, -1
  br i1 %cmp.i55, label %if.end4.if.end12_crit_edge, label %land.lhs.true6

if.end4.if.end12_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

land.lhs.true6:                                   ; preds = %if.end4
  %signal.i = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 111
  %6 = ptrtoint ptr %signal.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %signal.i, align 16
  %oom_mm.i = getelementptr inbounds %struct.signal_struct, ptr %7, i32 0, i32 59
  %8 = ptrtoint ptr %oom_mm.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %oom_mm.i, align 4
  %tobool.i.not = icmp eq ptr %9, null
  br i1 %tobool.i.not, label %land.lhs.true6.if.end12_crit_edge, label %if.then8

land.lhs.true6.if.end12_crit_edge:                ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

if.then8:                                         ; preds = %land.lhs.true6
  %flags = getelementptr inbounds %struct.anon.3, ptr %9, i32 0, i32 43
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %flags, align 4
  %12 = and i32 %11, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not = icmp eq i32 %12, 0
  br i1 %tobool.not, label %abort, label %if.then8.cleanup_crit_edge

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end12:                                         ; preds = %land.lhs.true6.if.end12_crit_edge, %if.end4.if.end12_crit_edge
  %signal.i56 = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 111
  %13 = ptrtoint ptr %signal.i56 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %signal.i56, align 16
  %oom_flag_origin.i = getelementptr inbounds %struct.signal_struct, ptr %14, i32 0, i32 56
  %15 = ptrtoint ptr %oom_flag_origin.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %oom_flag_origin.i, align 4, !range !439
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.i57.not = icmp eq i8 %16, 0
  br i1 %tobool.i57.not, label %if.end15, label %if.end12.select_crit_edge

if.end12.select_crit_edge:                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %select

if.end15:                                         ; preds = %if.end12
  %totalpages = getelementptr inbounds %struct.oom_control, ptr %arg, i32 0, i32 5
  %17 = ptrtoint ptr %totalpages to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %totalpages, align 4
  %call16 = tail call i32 @oom_badness(ptr noundef %task, i32 noundef %18)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %call16)
  %cmp = icmp eq i32 %call16, -2147483648
  br i1 %cmp, label %if.end15.cleanup_crit_edge, label %lor.lhs.false

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end15
  %chosen_points = getelementptr inbounds %struct.oom_control, ptr %arg, i32 0, i32 7
  %19 = ptrtoint ptr %chosen_points to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %chosen_points, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call16, i32 %20)
  %cmp17 = icmp slt i32 %call16, %20
  br i1 %cmp17, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.select_crit_edge

lor.lhs.false.select_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %select

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

select:                                           ; preds = %lor.lhs.false.select_crit_edge, %if.end12.select_crit_edge
  %points.0 = phi i32 [ %call16, %lor.lhs.false.select_crit_edge ], [ 2147483647, %if.end12.select_crit_edge ]
  %chosen = getelementptr inbounds %struct.oom_control, ptr %arg, i32 0, i32 6
  %21 = ptrtoint ptr %chosen to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %chosen, align 4
  %tobool20.not = icmp eq ptr %22, null
  br i1 %tobool20.not, label %select.if.end23_crit_edge, label %if.then21

select.if.end23_crit_edge:                        ; preds = %select
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23

if.then21:                                        ; preds = %select
  %usage.i = getelementptr inbounds %struct.task_struct, ptr %22, i32 0, i32 2
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !432
  tail call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #12
  %23 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #12, !srcloc !433
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %23, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.if.end23_crit_edge, label %if.then10.i.i.i.i, !prof !417

if.end5.i.i.i.i.if.end23_crit_edge:               ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %usage.i, i32 noundef 3) #12
  br label %if.end23

if.then.i:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !434
  tail call void @__put_task_struct(ptr noundef nonnull %22) #12
  br label %if.end23

if.end23:                                         ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.if.end23_crit_edge, %select.if.end23_crit_edge
  %usage.i59 = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 2
  %call.i.i.i.i.i.i60 = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i59, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %usage.i59, i32 1, i32 3, i32 1) #12
  %24 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i59, ptr %usage.i59, i32 1, ptr elementtype(i32) %usage.i59) #12, !srcloc !431
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %24, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end23.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !418

if.end23.if.end15.sink.split.i.i.i.i_crit_edge:   ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end23
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %25 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %25)
  %.not.i.i.i.i61 = icmp sgt i32 %25, -1
  br i1 %.not.i.i.i.i61, label %if.else.i.i.i.i.get_task_struct.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !417

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.get_task_struct.exit_crit_edge:   ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_task_struct.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end23.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end23.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %usage.i59, i32 noundef %.sink.i.i.i.i) #12
  br label %get_task_struct.exit

get_task_struct.exit:                             ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.get_task_struct.exit_crit_edge
  %26 = ptrtoint ptr %chosen to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %task, ptr %chosen, align 4
  %chosen_points26 = getelementptr inbounds %struct.oom_control, ptr %arg, i32 0, i32 7
  %27 = ptrtoint ptr %chosen_points26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %points.0, ptr %chosen_points26, align 4
  br label %cleanup

abort:                                            ; preds = %if.then8
  %chosen27 = getelementptr inbounds %struct.oom_control, ptr %arg, i32 0, i32 6
  %28 = ptrtoint ptr %chosen27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %chosen27, align 4
  %tobool28.not = icmp eq ptr %29, null
  br i1 %tobool28.not, label %abort.if.end31_crit_edge, label %if.then29

abort.if.end31_crit_edge:                         ; preds = %abort
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end31

if.then29:                                        ; preds = %abort
  %usage.i62 = getelementptr inbounds %struct.task_struct, ptr %29, i32 0, i32 2
  %call.i.i.i.i.i.i63 = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i62, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !432
  tail call void @llvm.prefetch.p0(ptr %usage.i62, i32 1, i32 3, i32 1) #12
  %30 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i62, ptr %usage.i62, i32 1, ptr elementtype(i32) %usage.i62) #12, !srcloc !433
  %asmresult.i.i.i.i.i.i.i64 = extractvalue { i32, i32, i32 } %30, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i64)
  %cmp.i.i.i.i65 = icmp eq i32 %asmresult.i.i.i.i.i.i.i64, 1
  br i1 %cmp.i.i.i.i65, label %if.then.i69, label %if.end5.i.i.i.i67

if.end5.i.i.i.i67:                                ; preds = %if.then29
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i64)
  %.not.i.i.i.i66 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i64, 0
  br i1 %.not.i.i.i.i66, label %if.end5.i.i.i.i67.if.end31_crit_edge, label %if.then10.i.i.i.i68, !prof !417

if.end5.i.i.i.i67.if.end31_crit_edge:             ; preds = %if.end5.i.i.i.i67
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end31

if.then10.i.i.i.i68:                              ; preds = %if.end5.i.i.i.i67
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %usage.i62, i32 noundef 3) #12
  br label %if.end31

if.then.i69:                                      ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !434
  tail call void @__put_task_struct(ptr noundef nonnull %29) #12
  br label %if.end31

if.end31:                                         ; preds = %if.then.i69, %if.then10.i.i.i.i68, %if.end5.i.i.i.i67.if.end31_crit_edge, %abort.if.end31_crit_edge
  %31 = ptrtoint ptr %chosen27 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr inttoptr (i32 -1 to ptr), ptr %chosen27, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %get_task_struct.exit, %lor.lhs.false.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %if.then8.cleanup_crit_edge, %oom_unkillable_task.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end31 ], [ 0, %if.end15.cleanup_crit_edge ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %if.then8.cleanup_crit_edge ], [ 0, %oom_unkillable_task.exit.cleanup_crit_edge ], [ 0, %get_task_struct.exit ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @dump_stack() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mem_cgroup_print_oom_meminfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @show_mem(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_unreclaimable_slab() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dump_task(ptr nocapture noundef readonly %p, ptr nocapture noundef readonly %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tgid.i.i.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 69
  %0 = ptrtoint ptr %tgid.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tgid.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.i.not.i = icmp eq i32 %1, 1
  br i1 %cmp.i.not.i, label %entry.cleanup_crit_edge, label %oom_unkillable_task.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

oom_unkillable_task.exit:                         ; preds = %entry
  %flags.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 3
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %3, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i.not, label %if.end4, label %oom_unkillable_task.exit.cleanup_crit_edge

oom_unkillable_task.exit.cleanup_crit_edge:       ; preds = %oom_unkillable_task.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4:                                          ; preds = %oom_unkillable_task.exit
  %call5 = tail call ptr @find_lock_task_mm(ptr noundef %p)
  %tobool.not = icmp eq ptr %call5, null
  br i1 %tobool.not, label %if.end4.cleanup_crit_edge, label %do.end

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end:                                           ; preds = %if.end4
  %pid = getelementptr inbounds %struct.task_struct, ptr %call5, i32 0, i32 68
  %4 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pid, align 8
  %6 = tail call i32 @llvm.read_register.i32(metadata !407) #12
  %and.i.i.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %9, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !420
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i, label %do.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

do.end.rcu_read_lock.exit_crit_edge:              ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %do.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.76, i32 noundef 696, ptr noundef nonnull @.str.77) #12
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %do.end.rcu_read_lock.exit_crit_edge
  %real_cred = getelementptr inbounds %struct.task_struct, ptr %call5, i32 0, i32 98
  %10 = ptrtoint ptr %real_cred to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %real_cred, align 4
  %call13 = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %land.lhs.true15, label %rcu_read_lock.exit.do.end23_crit_edge

rcu_read_lock.exit.do.end23_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end23

land.lhs.true15:                                  ; preds = %rcu_read_lock.exit
  %call16 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %land.lhs.true15.do.end23_crit_edge, label %land.lhs.true18

land.lhs.true15.do.end23_crit_edge:               ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end23

land.lhs.true18:                                  ; preds = %land.lhs.true15
  %.b48 = load i1, ptr @dump_task.__warned, align 1
  br i1 %.b48, label %land.lhs.true18.do.end23_crit_edge, label %if.then20

land.lhs.true18.do.end23_crit_edge:               ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end23

if.then20:                                        ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @dump_task.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.25, i32 noundef 410, ptr noundef nonnull @.str.80) #12
  br label %do.end23

do.end23:                                         ; preds = %if.then20, %land.lhs.true18.do.end23_crit_edge, %land.lhs.true15.do.end23_crit_edge, %rcu_read_lock.exit.do.end23_crit_edge
  %uid = getelementptr inbounds %struct.cred, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %uid to i32
  call void @__asan_load4_noabort(i32 %12)
  %___val.sroa.0.0.copyload = load i32, ptr %uid, align 4
  %call.i49 = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i49, label %do.end23.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i52

do.end23.rcu_read_unlock.exit_crit_edge:          ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true.i52:                                ; preds = %do.end23
  %call1.i50 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i50)
  %tobool.not.i51 = icmp eq i32 %call1.i50, 0
  br i1 %tobool.not.i51, label %land.lhs.true.i52.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i54

land.lhs.true.i52.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i52
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true2.i54:                               ; preds = %land.lhs.true.i52
  %.b4.i53 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i53, label %land.lhs.true2.i54.rcu_read_unlock.exit_crit_edge, label %if.then.i55

land.lhs.true2.i54.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i54
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

if.then.i55:                                      ; preds = %land.lhs.true2.i54
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.76, i32 noundef 724, ptr noundef nonnull @.str.78) #12
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i55, %land.lhs.true2.i54.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i52.rcu_read_unlock.exit_crit_edge, %do.end23.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !421
  %13 = tail call i32 @llvm.read_register.i32(metadata !407) #12
  %and.i.i.i.i.i56 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i.i.i56 to ptr
  %preempt_count.i.i.i.i57 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i.i.i57 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i.i.i57, align 4
  %sub.i.i.i = add i32 %16, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i57, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %___val.sroa.0.0.copyload, 0
  %call25 = tail call i32 @from_kuid(ptr noundef nonnull @init_user_ns, [1 x i32] %.fca.0.insert) #12
  %tgid = getelementptr inbounds %struct.task_struct, ptr %call5, i32 0, i32 69
  %17 = ptrtoint ptr %tgid to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tgid, align 4
  %mm = getelementptr inbounds %struct.task_struct, ptr %call5, i32 0, i32 53
  %19 = ptrtoint ptr %mm to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mm, align 8
  %total_vm = getelementptr inbounds %struct.anon.3, ptr %20, i32 0, i32 19
  %21 = ptrtoint ptr %total_vm to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %total_vm, align 8
  %rss_stat.i.i = getelementptr inbounds %struct.anon.3, ptr %20, i32 0, i32 40
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %rss_stat.i.i, i32 noundef 4) #12
  %23 = ptrtoint ptr %rss_stat.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %rss_stat.i.i, align 4
  %25 = tail call i32 @llvm.smax.i32(i32 %24, i32 0) #12
  %arrayidx.i.i = getelementptr %struct.anon.3, ptr %20, i32 0, i32 40, i32 0, i32 1
  %call.i.i.i7.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.i.i, i32 noundef 4) #12
  %26 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %arrayidx.i.i, align 4
  %28 = tail call i32 @llvm.smax.i32(i32 %27, i32 0) #12
  %add.i = add nuw i32 %28, %25
  %arrayidx.i9.i = getelementptr %struct.anon.3, ptr %20, i32 0, i32 40, i32 0, i32 3
  %call.i.i.i10.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.i9.i, i32 noundef 4) #12
  %29 = ptrtoint ptr %arrayidx.i9.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %arrayidx.i9.i, align 4
  %31 = tail call i32 @llvm.smax.i32(i32 %30, i32 0) #12
  %add3.i = add i32 %add.i, %31
  %32 = ptrtoint ptr %mm to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %mm, align 8
  %pgtables_bytes.i = getelementptr inbounds %struct.anon.3, ptr %33, i32 0, i32 12
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %pgtables_bytes.i, i32 noundef 4) #12
  %34 = ptrtoint ptr %pgtables_bytes.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %pgtables_bytes.i, align 4
  %36 = ptrtoint ptr %mm to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %mm, align 8
  %arrayidx.i = getelementptr %struct.anon.3, ptr %37, i32 0, i32 40, i32 0, i32 2
  %call.i.i.i58 = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.i, i32 noundef 4) #12
  %38 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %arrayidx.i, align 4
  %40 = tail call i32 @llvm.smax.i32(i32 %39, i32 0) #12
  %signal = getelementptr inbounds %struct.task_struct, ptr %call5, i32 0, i32 111
  %41 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %signal, align 16
  %oom_score_adj = getelementptr inbounds %struct.signal_struct, ptr %42, i32 0, i32 57
  %43 = ptrtoint ptr %oom_score_adj to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %oom_score_adj, align 2
  %conv = sext i16 %44 to i32
  %comm = getelementptr inbounds %struct.task_struct, ptr %call5, i32 0, i32 101
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.116, i32 noundef %5, i32 noundef %call25, i32 noundef %18, i32 noundef %22, i32 noundef %add3.i, i32 noundef %35, i32 noundef %40, i32 noundef %conv, ptr noundef %comm) #15
  %alloc_lock.i = getelementptr inbounds %struct.task_struct, ptr %call5, i32 0, i32 127
  tail call void @_raw_spin_unlock(ptr noundef %alloc_lock.i) #12
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit, %if.end4.cleanup_crit_edge, %oom_unkillable_task.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpuset_print_current_mems_allowed() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mem_cgroup_print_oom_context(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pidfd_get_task(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_read_killable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_handle_no_return()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 189)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 189)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold noreturn null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { nounwind readonly }
attributes #9 = { noreturn nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { cold noreturn nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !62, !63, !64, !65, !66, !67, !68, !69, !70, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !133, !135, !136, !137, !139, !140, !141, !143, !144, !145, !147, !149, !151, !152, !153, !154, !156, !157, !158, !159, !161, !163, !165, !167, !168, !169, !170, !172, !174, !176, !178, !179, !181, !183, !184, !185, !187, !188, !189, !190, !191, !192, !193, !194, !195, !197, !199, !201, !202, !203, !204, !205, !206, !207, !208, !209, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !273, !274, !275, !277, !278, !280, !281, !282, !284, !286, !288, !290, !291, !293, !295, !296, !298, !299, !300, !301, !303, !304, !305, !306, !307, !308, !309, !311, !312, !313, !314, !315, !316, !318, !320, !322, !323, !325, !326, !327, !328, !329, !330, !331, !333, !335, !337, !339, !340, !342, !344, !345, !346, !347, !349, !350, !351, !352, !354, !355, !356, !358, !359, !361, !362, !363, !364, !366, !367, !369, !370, !371, !372, !374, !375, !376, !378, !379, !380, !381, !382, !384, !385, !386, !387, !389, !390, !391, !392, !394, !396, !398, !400, !402, !403, !404, !405, !406}
!llvm.named.register.sp = !{!407}
!llvm.module.flags = !{!408, !409, !410, !411, !412, !413, !414, !415}
!llvm.ident = !{!416}

!0 = !{ptr @__tracepoint_oom_score_adj_update, !1, !"__tracepoint_oom_score_adj_update", i1 false, i1 false}
!1 = !{!"../include/trace/events/oom.h", i32 10, i32 1}
!2 = !{ptr @__tracepoint_ptr_oom_score_adj_update, !1, !"__tracepoint_ptr_oom_score_adj_update", i1 false, i1 false}
!3 = !{ptr @__SCK__tp_func_oom_score_adj_update, !1, !"__SCK__tp_func_oom_score_adj_update", i1 false, i1 false}
!4 = !{ptr @__tracepoint_reclaim_retry_zone, !5, !"__tracepoint_reclaim_retry_zone", i1 false, i1 false}
!5 = !{!"../include/trace/events/oom.h", i32 32, i32 1}
!6 = !{ptr @__tracepoint_ptr_reclaim_retry_zone, !5, !"__tracepoint_ptr_reclaim_retry_zone", i1 false, i1 false}
!7 = !{ptr @__SCK__tp_func_reclaim_retry_zone, !5, !"__SCK__tp_func_reclaim_retry_zone", i1 false, i1 false}
!8 = !{ptr @__tracepoint_mark_victim, !9, !"__tracepoint_mark_victim", i1 false, i1 false}
!9 = !{!"../include/trace/events/oom.h", i32 74, i32 1}
!10 = !{ptr @__tracepoint_ptr_mark_victim, !9, !"__tracepoint_ptr_mark_victim", i1 false, i1 false}
!11 = !{ptr @__SCK__tp_func_mark_victim, !9, !"__SCK__tp_func_mark_victim", i1 false, i1 false}
!12 = !{ptr @__tracepoint_wake_reaper, !13, !"__tracepoint_wake_reaper", i1 false, i1 false}
!13 = !{!"../include/trace/events/oom.h", i32 90, i32 1}
!14 = !{ptr @__tracepoint_ptr_wake_reaper, !13, !"__tracepoint_ptr_wake_reaper", i1 false, i1 false}
!15 = !{ptr @__SCK__tp_func_wake_reaper, !13, !"__SCK__tp_func_wake_reaper", i1 false, i1 false}
!16 = !{ptr @__tracepoint_start_task_reaping, !17, !"__tracepoint_start_task_reaping", i1 false, i1 false}
!17 = !{!"../include/trace/events/oom.h", i32 106, i32 1}
!18 = !{ptr @__tracepoint_ptr_start_task_reaping, !17, !"__tracepoint_ptr_start_task_reaping", i1 false, i1 false}
!19 = !{ptr @__SCK__tp_func_start_task_reaping, !17, !"__SCK__tp_func_start_task_reaping", i1 false, i1 false}
!20 = !{ptr @__tracepoint_finish_task_reaping, !21, !"__tracepoint_finish_task_reaping", i1 false, i1 false}
!21 = !{!"../include/trace/events/oom.h", i32 122, i32 1}
!22 = !{ptr @__tracepoint_ptr_finish_task_reaping, !21, !"__tracepoint_ptr_finish_task_reaping", i1 false, i1 false}
!23 = !{ptr @__SCK__tp_func_finish_task_reaping, !21, !"__SCK__tp_func_finish_task_reaping", i1 false, i1 false}
!24 = !{ptr @__tracepoint_skip_task_reaping, !25, !"__tracepoint_skip_task_reaping", i1 false, i1 false}
!25 = !{!"../include/trace/events/oom.h", i32 138, i32 1}
!26 = !{ptr @__tracepoint_ptr_skip_task_reaping, !25, !"__tracepoint_ptr_skip_task_reaping", i1 false, i1 false}
!27 = !{ptr @__SCK__tp_func_skip_task_reaping, !25, !"__SCK__tp_func_skip_task_reaping", i1 false, i1 false}
!28 = !{ptr @__tracepoint_compact_retry, !29, !"__tracepoint_compact_retry", i1 false, i1 false}
!29 = !{!"../include/trace/events/oom.h", i32 155, i32 1}
!30 = !{ptr @__tracepoint_ptr_compact_retry, !29, !"__tracepoint_ptr_compact_retry", i1 false, i1 false}
!31 = !{ptr @__SCK__tp_func_compact_retry, !29, !"__SCK__tp_func_compact_retry", i1 false, i1 false}
!32 = !{ptr @.str, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../include/trace/events/mmflags.h", i32 274, i32 1}
!34 = !{ptr @__TRACE_SYSTEM_COMPACT_SKIPPED, !33, !"__TRACE_SYSTEM_COMPACT_SKIPPED", i1 false, i1 false}
!35 = !{ptr @TRACE_SYSTEM_COMPACT_SKIPPED, !33, !"TRACE_SYSTEM_COMPACT_SKIPPED", i1 false, i1 false}
!36 = !{ptr @.str.1, !33, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @__TRACE_SYSTEM_COMPACT_DEFERRED, !33, !"__TRACE_SYSTEM_COMPACT_DEFERRED", i1 false, i1 false}
!38 = !{ptr @TRACE_SYSTEM_COMPACT_DEFERRED, !33, !"TRACE_SYSTEM_COMPACT_DEFERRED", i1 false, i1 false}
!39 = !{ptr @.str.2, !33, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @__TRACE_SYSTEM_COMPACT_CONTINUE, !33, !"__TRACE_SYSTEM_COMPACT_CONTINUE", i1 false, i1 false}
!41 = !{ptr @TRACE_SYSTEM_COMPACT_CONTINUE, !33, !"TRACE_SYSTEM_COMPACT_CONTINUE", i1 false, i1 false}
!42 = !{ptr @.str.3, !33, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @__TRACE_SYSTEM_COMPACT_SUCCESS, !33, !"__TRACE_SYSTEM_COMPACT_SUCCESS", i1 false, i1 false}
!44 = !{ptr @TRACE_SYSTEM_COMPACT_SUCCESS, !33, !"TRACE_SYSTEM_COMPACT_SUCCESS", i1 false, i1 false}
!45 = !{ptr @.str.4, !33, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @__TRACE_SYSTEM_COMPACT_PARTIAL_SKIPPED, !33, !"__TRACE_SYSTEM_COMPACT_PARTIAL_SKIPPED", i1 false, i1 false}
!47 = !{ptr @TRACE_SYSTEM_COMPACT_PARTIAL_SKIPPED, !33, !"TRACE_SYSTEM_COMPACT_PARTIAL_SKIPPED", i1 false, i1 false}
!48 = !{ptr @.str.5, !33, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @__TRACE_SYSTEM_COMPACT_COMPLETE, !33, !"__TRACE_SYSTEM_COMPACT_COMPLETE", i1 false, i1 false}
!50 = !{ptr @TRACE_SYSTEM_COMPACT_COMPLETE, !33, !"TRACE_SYSTEM_COMPACT_COMPLETE", i1 false, i1 false}
!51 = !{ptr @.str.6, !33, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @__TRACE_SYSTEM_COMPACT_NO_SUITABLE_PAGE, !33, !"__TRACE_SYSTEM_COMPACT_NO_SUITABLE_PAGE", i1 false, i1 false}
!53 = !{ptr @TRACE_SYSTEM_COMPACT_NO_SUITABLE_PAGE, !33, !"TRACE_SYSTEM_COMPACT_NO_SUITABLE_PAGE", i1 false, i1 false}
!54 = !{ptr @.str.7, !33, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @__TRACE_SYSTEM_COMPACT_NOT_SUITABLE_ZONE, !33, !"__TRACE_SYSTEM_COMPACT_NOT_SUITABLE_ZONE", i1 false, i1 false}
!56 = !{ptr @TRACE_SYSTEM_COMPACT_NOT_SUITABLE_ZONE, !33, !"TRACE_SYSTEM_COMPACT_NOT_SUITABLE_ZONE", i1 false, i1 false}
!57 = !{ptr @.str.8, !33, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @__TRACE_SYSTEM_COMPACT_CONTENDED, !33, !"__TRACE_SYSTEM_COMPACT_CONTENDED", i1 false, i1 false}
!59 = !{ptr @TRACE_SYSTEM_COMPACT_CONTENDED, !33, !"TRACE_SYSTEM_COMPACT_CONTENDED", i1 false, i1 false}
!60 = !{ptr @.str.9, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../include/trace/events/mmflags.h", i32 275, i32 1}
!62 = !{ptr @__TRACE_SYSTEM_COMPACT_PRIO_SYNC_FULL, !61, !"__TRACE_SYSTEM_COMPACT_PRIO_SYNC_FULL", i1 false, i1 false}
!63 = !{ptr @TRACE_SYSTEM_COMPACT_PRIO_SYNC_FULL, !61, !"TRACE_SYSTEM_COMPACT_PRIO_SYNC_FULL", i1 false, i1 false}
!64 = !{ptr @.str.10, !61, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @__TRACE_SYSTEM_COMPACT_PRIO_SYNC_LIGHT, !61, !"__TRACE_SYSTEM_COMPACT_PRIO_SYNC_LIGHT", i1 false, i1 false}
!66 = !{ptr @TRACE_SYSTEM_COMPACT_PRIO_SYNC_LIGHT, !61, !"TRACE_SYSTEM_COMPACT_PRIO_SYNC_LIGHT", i1 false, i1 false}
!67 = !{ptr @.str.11, !61, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @__TRACE_SYSTEM_COMPACT_PRIO_ASYNC, !61, !"__TRACE_SYSTEM_COMPACT_PRIO_ASYNC", i1 false, i1 false}
!69 = !{ptr @TRACE_SYSTEM_COMPACT_PRIO_ASYNC, !61, !"TRACE_SYSTEM_COMPACT_PRIO_ASYNC", i1 false, i1 false}
!70 = !{ptr @.str.12, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../include/trace/events/mmflags.h", i32 277, i32 1}
!72 = !{ptr @__TRACE_SYSTEM_ZONE_DMA, !71, !"__TRACE_SYSTEM_ZONE_DMA", i1 false, i1 false}
!73 = !{ptr @TRACE_SYSTEM_ZONE_DMA, !71, !"TRACE_SYSTEM_ZONE_DMA", i1 false, i1 false}
!74 = !{ptr @.str.13, !71, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @__TRACE_SYSTEM_ZONE_NORMAL, !71, !"__TRACE_SYSTEM_ZONE_NORMAL", i1 false, i1 false}
!76 = !{ptr @TRACE_SYSTEM_ZONE_NORMAL, !71, !"TRACE_SYSTEM_ZONE_NORMAL", i1 false, i1 false}
!77 = !{ptr @.str.14, !71, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @__TRACE_SYSTEM_ZONE_HIGHMEM, !71, !"__TRACE_SYSTEM_ZONE_HIGHMEM", i1 false, i1 false}
!79 = !{ptr @TRACE_SYSTEM_ZONE_HIGHMEM, !71, !"TRACE_SYSTEM_ZONE_HIGHMEM", i1 false, i1 false}
!80 = !{ptr @.str.15, !71, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @__TRACE_SYSTEM_ZONE_MOVABLE, !71, !"__TRACE_SYSTEM_ZONE_MOVABLE", i1 false, i1 false}
!82 = !{ptr @TRACE_SYSTEM_ZONE_MOVABLE, !71, !"TRACE_SYSTEM_ZONE_MOVABLE", i1 false, i1 false}
!83 = !{ptr @.str.16, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../include/trace/events/mmflags.h", i32 278, i32 1}
!85 = !{ptr @__TRACE_SYSTEM_LRU_INACTIVE_ANON, !84, !"__TRACE_SYSTEM_LRU_INACTIVE_ANON", i1 false, i1 false}
!86 = !{ptr @TRACE_SYSTEM_LRU_INACTIVE_ANON, !84, !"TRACE_SYSTEM_LRU_INACTIVE_ANON", i1 false, i1 false}
!87 = !{ptr @.str.17, !84, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @__TRACE_SYSTEM_LRU_ACTIVE_ANON, !84, !"__TRACE_SYSTEM_LRU_ACTIVE_ANON", i1 false, i1 false}
!89 = !{ptr @TRACE_SYSTEM_LRU_ACTIVE_ANON, !84, !"TRACE_SYSTEM_LRU_ACTIVE_ANON", i1 false, i1 false}
!90 = !{ptr @.str.18, !84, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @__TRACE_SYSTEM_LRU_INACTIVE_FILE, !84, !"__TRACE_SYSTEM_LRU_INACTIVE_FILE", i1 false, i1 false}
!92 = !{ptr @TRACE_SYSTEM_LRU_INACTIVE_FILE, !84, !"TRACE_SYSTEM_LRU_INACTIVE_FILE", i1 false, i1 false}
!93 = !{ptr @.str.19, !84, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @__TRACE_SYSTEM_LRU_ACTIVE_FILE, !84, !"__TRACE_SYSTEM_LRU_ACTIVE_FILE", i1 false, i1 false}
!95 = !{ptr @TRACE_SYSTEM_LRU_ACTIVE_FILE, !84, !"TRACE_SYSTEM_LRU_ACTIVE_FILE", i1 false, i1 false}
!96 = !{ptr @.str.20, !84, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @__TRACE_SYSTEM_LRU_UNEVICTABLE, !84, !"__TRACE_SYSTEM_LRU_UNEVICTABLE", i1 false, i1 false}
!98 = !{ptr @TRACE_SYSTEM_LRU_UNEVICTABLE, !84, !"TRACE_SYSTEM_LRU_UNEVICTABLE", i1 false, i1 false}
!99 = !{ptr @event_class_oom_score_adj_update, !1, !"event_class_oom_score_adj_update", i1 false, i1 false}
!100 = !{ptr @event_oom_score_adj_update, !1, !"event_oom_score_adj_update", i1 false, i1 false}
!101 = !{ptr @__event_oom_score_adj_update, !1, !"__event_oom_score_adj_update", i1 false, i1 false}
!102 = !{ptr @event_class_reclaim_retry_zone, !5, !"event_class_reclaim_retry_zone", i1 false, i1 false}
!103 = !{ptr @event_reclaim_retry_zone, !5, !"event_reclaim_retry_zone", i1 false, i1 false}
!104 = !{ptr @__event_reclaim_retry_zone, !5, !"__event_reclaim_retry_zone", i1 false, i1 false}
!105 = !{ptr @event_class_mark_victim, !9, !"event_class_mark_victim", i1 false, i1 false}
!106 = !{ptr @event_mark_victim, !9, !"event_mark_victim", i1 false, i1 false}
!107 = !{ptr @__event_mark_victim, !9, !"__event_mark_victim", i1 false, i1 false}
!108 = !{ptr @event_class_wake_reaper, !13, !"event_class_wake_reaper", i1 false, i1 false}
!109 = !{ptr @event_wake_reaper, !13, !"event_wake_reaper", i1 false, i1 false}
!110 = !{ptr @__event_wake_reaper, !13, !"__event_wake_reaper", i1 false, i1 false}
!111 = !{ptr @event_class_start_task_reaping, !17, !"event_class_start_task_reaping", i1 false, i1 false}
!112 = !{ptr @event_start_task_reaping, !17, !"event_start_task_reaping", i1 false, i1 false}
!113 = !{ptr @__event_start_task_reaping, !17, !"__event_start_task_reaping", i1 false, i1 false}
!114 = !{ptr @event_class_finish_task_reaping, !21, !"event_class_finish_task_reaping", i1 false, i1 false}
!115 = !{ptr @event_finish_task_reaping, !21, !"event_finish_task_reaping", i1 false, i1 false}
!116 = !{ptr @__event_finish_task_reaping, !21, !"__event_finish_task_reaping", i1 false, i1 false}
!117 = !{ptr @event_class_skip_task_reaping, !25, !"event_class_skip_task_reaping", i1 false, i1 false}
!118 = !{ptr @event_skip_task_reaping, !25, !"event_skip_task_reaping", i1 false, i1 false}
!119 = !{ptr @__event_skip_task_reaping, !25, !"__event_skip_task_reaping", i1 false, i1 false}
!120 = !{ptr @event_class_compact_retry, !29, !"event_class_compact_retry", i1 false, i1 false}
!121 = !{ptr @event_compact_retry, !29, !"event_compact_retry", i1 false, i1 false}
!122 = !{ptr @__event_compact_retry, !29, !"__event_compact_retry", i1 false, i1 false}
!123 = !{ptr @__bpf_trace_tp_map_oom_score_adj_update, !1, !"__bpf_trace_tp_map_oom_score_adj_update", i1 false, i1 false}
!124 = !{ptr @__bpf_trace_tp_map_reclaim_retry_zone, !5, !"__bpf_trace_tp_map_reclaim_retry_zone", i1 false, i1 false}
!125 = !{ptr @__bpf_trace_tp_map_mark_victim, !9, !"__bpf_trace_tp_map_mark_victim", i1 false, i1 false}
!126 = !{ptr @__bpf_trace_tp_map_wake_reaper, !13, !"__bpf_trace_tp_map_wake_reaper", i1 false, i1 false}
!127 = !{ptr @__bpf_trace_tp_map_start_task_reaping, !17, !"__bpf_trace_tp_map_start_task_reaping", i1 false, i1 false}
!128 = !{ptr @__bpf_trace_tp_map_finish_task_reaping, !21, !"__bpf_trace_tp_map_finish_task_reaping", i1 false, i1 false}
!129 = !{ptr @__bpf_trace_tp_map_skip_task_reaping, !25, !"__bpf_trace_tp_map_skip_task_reaping", i1 false, i1 false}
!130 = !{ptr @__bpf_trace_tp_map_compact_retry, !29, !"__bpf_trace_tp_map_compact_retry", i1 false, i1 false}
!131 = !{ptr @sysctl_oom_dump_tasks, !132, !"sysctl_oom_dump_tasks", i1 false, i1 false}
!132 = !{!"../mm/oom_kill.c", i32 57, i32 5}
!133 = !{ptr @.str.21, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../mm/oom_kill.c", i32 67, i32 1}
!135 = !{ptr @.str.22, !134, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @oom_lock, !134, !"oom_lock", i1 false, i1 false}
!137 = !{ptr @.str.23, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../mm/oom_kill.c", i32 69, i32 1}
!139 = !{ptr @.str.24, !138, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @oom_adj_mutex, !138, !"oom_adj_mutex", i1 false, i1 false}
!141 = distinct !{null, !142, !"__warned", i1 false, i1 false}
!142 = !{!"../mm/oom_kill.c", i32 142, i32 2}
!143 = !{ptr @.str.25, !142, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @.str.26, !142, !"<string literal>", i1 false, i1 false}
!145 = distinct !{null, !146, !"__warned", i1 false, i1 false}
!146 = !{!"../mm/oom_kill.c", i32 497, i32 2}
!147 = !{ptr @__initcall__kmod_oom_kill__365_685_oom_init4, !148, !"__initcall__kmod_oom_kill__365_685_oom_init4", i1 false, i1 false}
!148 = !{!"../mm/oom_kill.c", i32 685, i32 1}
!149 = !{ptr @.str.27, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../mm/oom_kill.c", i32 745, i32 2}
!151 = !{ptr @.str.28, !150, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @oom_killer_enable._entry, !150, !"_entry", i1 false, i1 false}
!153 = !{ptr @oom_killer_enable._entry_ptr, !150, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.29, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../mm/oom_kill.c", i32 782, i32 2}
!156 = !{ptr @.str.30, !155, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @oom_killer_disable._entry, !155, !"_entry", i1 false, i1 false}
!158 = !{ptr @oom_killer_disable._entry_ptr, !155, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @__ksymtab_register_oom_notifier, !160, !"__ksymtab_register_oom_notifier", i1 false, i1 false}
!160 = !{!"../mm/oom_kill.c", i32 1035, i32 1}
!161 = !{ptr @__ksymtab_unregister_oom_notifier, !162, !"__ksymtab_unregister_oom_notifier", i1 false, i1 false}
!162 = !{!"../mm/oom_kill.c", i32 1041, i32 1}
!163 = !{ptr @.str.31, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../mm/oom_kill.c", i32 1102, i32 24}
!165 = !{ptr @.str.32, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../mm/oom_kill.c", i32 1110, i32 3}
!167 = !{ptr @.str.33, !166, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @out_of_memory._entry, !166, !"_entry", i1 false, i1 false}
!169 = !{ptr @out_of_memory._entry_ptr, !166, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @.str.34, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../mm/oom_kill.c", i32 1117, i32 10}
!172 = !{ptr @.str.35, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../mm/oom_kill.c", i32 1120, i32 44}
!174 = !{ptr @.str.36, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../mm/oom_kill.c", i32 1121, i32 6}
!176 = !{ptr @.str.37, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../mm/oom_kill.c", i32 1133, i32 9}
!178 = !{ptr @pagefault_out_of_memory.pfoom_rs, !177, !"pfoom_rs", i1 false, i1 false}
!179 = !{ptr @__func__.pagefault_out_of_memory, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../mm/oom_kill.c", i32 1142, i32 6}
!181 = !{ptr @.str.38, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../mm/oom_kill.c", i32 1143, i32 3}
!183 = !{ptr @pagefault_out_of_memory._entry, !182, !"_entry", i1 false, i1 false}
!184 = !{ptr @pagefault_out_of_memory._entry_ptr, !182, !"_entry_ptr", i1 false, i1 false}
!185 = !{ptr @.str.39, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../mm/oom_kill.c", i32 1146, i32 1}
!187 = !{ptr @event_enter__process_mrelease, !186, !"event_enter__process_mrelease", i1 false, i1 false}
!188 = !{ptr @__event_enter__process_mrelease, !186, !"__event_enter__process_mrelease", i1 false, i1 false}
!189 = !{ptr @.str.40, !186, !"<string literal>", i1 false, i1 false}
!190 = !{ptr @event_exit__process_mrelease, !186, !"event_exit__process_mrelease", i1 false, i1 false}
!191 = !{ptr @__event_exit__process_mrelease, !186, !"__event_exit__process_mrelease", i1 false, i1 false}
!192 = !{ptr @.str.41, !186, !"<string literal>", i1 false, i1 false}
!193 = !{ptr @__syscall_meta__process_mrelease, !186, !"__syscall_meta__process_mrelease", i1 false, i1 false}
!194 = !{ptr @__p_syscall_meta__process_mrelease, !186, !"__p_syscall_meta__process_mrelease", i1 false, i1 false}
!195 = !{ptr @sysctl_panic_on_oom, !196, !"sysctl_panic_on_oom", i1 false, i1 false}
!196 = !{!"../mm/oom_kill.c", i32 55, i32 5}
!197 = !{ptr @sysctl_oom_kill_allocating_task, !198, !"sysctl_oom_kill_allocating_task", i1 false, i1 false}
!198 = !{!"../mm/oom_kill.c", i32 56, i32 5}
!199 = distinct !{null, !200, !"oom_killer_disabled", i1 false, i1 false}
!200 = !{!"../mm/oom_kill.c", i32 483, i32 13}
!201 = !{ptr @__tpstrtab_oom_score_adj_update, !1, !"__tpstrtab_oom_score_adj_update", i1 false, i1 false}
!202 = !{ptr @__tpstrtab_reclaim_retry_zone, !5, !"__tpstrtab_reclaim_retry_zone", i1 false, i1 false}
!203 = !{ptr @__tpstrtab_mark_victim, !9, !"__tpstrtab_mark_victim", i1 false, i1 false}
!204 = !{ptr @__tpstrtab_wake_reaper, !13, !"__tpstrtab_wake_reaper", i1 false, i1 false}
!205 = !{ptr @__tpstrtab_start_task_reaping, !17, !"__tpstrtab_start_task_reaping", i1 false, i1 false}
!206 = !{ptr @__tpstrtab_finish_task_reaping, !21, !"__tpstrtab_finish_task_reaping", i1 false, i1 false}
!207 = !{ptr @__tpstrtab_skip_task_reaping, !25, !"__tpstrtab_skip_task_reaping", i1 false, i1 false}
!208 = !{ptr @__tpstrtab_compact_retry, !29, !"__tpstrtab_compact_retry", i1 false, i1 false}
!209 = !{ptr @str__oom__trace_system_name, !210, !"str__oom__trace_system_name", i1 false, i1 false}
!210 = !{!"../include/trace/trace_events.h", i32 36, i32 1}
!211 = !{ptr @.str.42, !1, !"<string literal>", i1 false, i1 false}
!212 = !{ptr @.str.43, !1, !"<string literal>", i1 false, i1 false}
!213 = !{ptr @.str.44, !1, !"<string literal>", i1 false, i1 false}
!214 = !{ptr @.str.45, !1, !"<string literal>", i1 false, i1 false}
!215 = !{ptr @.str.46, !1, !"<string literal>", i1 false, i1 false}
!216 = !{ptr @.str.47, !1, !"<string literal>", i1 false, i1 false}
!217 = !{ptr @trace_event_fields_oom_score_adj_update, !1, !"trace_event_fields_oom_score_adj_update", i1 false, i1 false}
!218 = !{ptr @trace_event_type_funcs_oom_score_adj_update, !1, !"trace_event_type_funcs_oom_score_adj_update", i1 false, i1 false}
!219 = !{ptr @.str.48, !1, !"<string literal>", i1 false, i1 false}
!220 = !{ptr @print_fmt_oom_score_adj_update, !1, !"print_fmt_oom_score_adj_update", i1 false, i1 false}
!221 = !{ptr @.str.49, !5, !"<string literal>", i1 false, i1 false}
!222 = !{ptr @.str.50, !5, !"<string literal>", i1 false, i1 false}
!223 = !{ptr @.str.51, !5, !"<string literal>", i1 false, i1 false}
!224 = !{ptr @.str.52, !5, !"<string literal>", i1 false, i1 false}
!225 = !{ptr @.str.53, !5, !"<string literal>", i1 false, i1 false}
!226 = !{ptr @.str.54, !5, !"<string literal>", i1 false, i1 false}
!227 = !{ptr @.str.55, !5, !"<string literal>", i1 false, i1 false}
!228 = !{ptr @.str.56, !5, !"<string literal>", i1 false, i1 false}
!229 = !{ptr @.str.57, !5, !"<string literal>", i1 false, i1 false}
!230 = !{ptr @.str.58, !5, !"<string literal>", i1 false, i1 false}
!231 = !{ptr @.str.59, !5, !"<string literal>", i1 false, i1 false}
!232 = !{ptr @trace_event_fields_reclaim_retry_zone, !5, !"trace_event_fields_reclaim_retry_zone", i1 false, i1 false}
!233 = !{ptr @trace_event_type_funcs_reclaim_retry_zone, !5, !"trace_event_type_funcs_reclaim_retry_zone", i1 false, i1 false}
!234 = !{ptr @.str.60, !5, !"<string literal>", i1 false, i1 false}
!235 = !{ptr @.str.61, !5, !"<string literal>", i1 false, i1 false}
!236 = !{ptr @.str.62, !5, !"<string literal>", i1 false, i1 false}
!237 = !{ptr @.str.63, !5, !"<string literal>", i1 false, i1 false}
!238 = !{ptr @.str.64, !5, !"<string literal>", i1 false, i1 false}
!239 = !{ptr @trace_raw_output_reclaim_retry_zone.symbols, !5, !"symbols", i1 false, i1 false}
!240 = !{ptr @print_fmt_reclaim_retry_zone, !5, !"print_fmt_reclaim_retry_zone", i1 false, i1 false}
!241 = !{ptr @trace_event_fields_mark_victim, !9, !"trace_event_fields_mark_victim", i1 false, i1 false}
!242 = !{ptr @trace_event_type_funcs_mark_victim, !9, !"trace_event_type_funcs_mark_victim", i1 false, i1 false}
!243 = !{ptr @.str.65, !9, !"<string literal>", i1 false, i1 false}
!244 = !{ptr @print_fmt_mark_victim, !9, !"print_fmt_mark_victim", i1 false, i1 false}
!245 = !{ptr @trace_event_fields_wake_reaper, !13, !"trace_event_fields_wake_reaper", i1 false, i1 false}
!246 = !{ptr @trace_event_type_funcs_wake_reaper, !13, !"trace_event_type_funcs_wake_reaper", i1 false, i1 false}
!247 = !{ptr @print_fmt_wake_reaper, !13, !"print_fmt_wake_reaper", i1 false, i1 false}
!248 = !{ptr @trace_event_fields_start_task_reaping, !17, !"trace_event_fields_start_task_reaping", i1 false, i1 false}
!249 = !{ptr @trace_event_type_funcs_start_task_reaping, !17, !"trace_event_type_funcs_start_task_reaping", i1 false, i1 false}
!250 = !{ptr @print_fmt_start_task_reaping, !17, !"print_fmt_start_task_reaping", i1 false, i1 false}
!251 = !{ptr @trace_event_fields_finish_task_reaping, !21, !"trace_event_fields_finish_task_reaping", i1 false, i1 false}
!252 = !{ptr @trace_event_type_funcs_finish_task_reaping, !21, !"trace_event_type_funcs_finish_task_reaping", i1 false, i1 false}
!253 = !{ptr @print_fmt_finish_task_reaping, !21, !"print_fmt_finish_task_reaping", i1 false, i1 false}
!254 = !{ptr @trace_event_fields_skip_task_reaping, !25, !"trace_event_fields_skip_task_reaping", i1 false, i1 false}
!255 = !{ptr @trace_event_type_funcs_skip_task_reaping, !25, !"trace_event_type_funcs_skip_task_reaping", i1 false, i1 false}
!256 = !{ptr @print_fmt_skip_task_reaping, !25, !"print_fmt_skip_task_reaping", i1 false, i1 false}
!257 = !{ptr @.str.66, !29, !"<string literal>", i1 false, i1 false}
!258 = !{ptr @.str.67, !29, !"<string literal>", i1 false, i1 false}
!259 = !{ptr @.str.68, !29, !"<string literal>", i1 false, i1 false}
!260 = !{ptr @.str.69, !29, !"<string literal>", i1 false, i1 false}
!261 = !{ptr @.str.70, !29, !"<string literal>", i1 false, i1 false}
!262 = !{ptr @trace_event_fields_compact_retry, !29, !"trace_event_fields_compact_retry", i1 false, i1 false}
!263 = !{ptr @trace_event_type_funcs_compact_retry, !29, !"trace_event_type_funcs_compact_retry", i1 false, i1 false}
!264 = !{ptr @.str.71, !29, !"<string literal>", i1 false, i1 false}
!265 = !{ptr @trace_raw_output_compact_retry.symbols, !29, !"symbols", i1 false, i1 false}
!266 = !{ptr @.str.73, !29, !"<string literal>", i1 false, i1 false}
!267 = !{ptr @.str.74, !29, !"<string literal>", i1 false, i1 false}
!268 = !{ptr @.str.75, !29, !"<string literal>", i1 false, i1 false}
!269 = !{ptr @trace_raw_output_compact_retry.symbols.72, !29, !"symbols", i1 false, i1 false}
!270 = !{ptr @print_fmt_compact_retry, !29, !"print_fmt_compact_retry", i1 false, i1 false}
!271 = distinct !{null, !272, !"__warned", i1 false, i1 false}
!272 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!273 = !{ptr @.str.76, !272, !"<string literal>", i1 false, i1 false}
!274 = !{ptr @.str.77, !272, !"<string literal>", i1 false, i1 false}
!275 = distinct !{null, !276, !"__warned", i1 false, i1 false}
!276 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!277 = !{ptr @.str.78, !276, !"<string literal>", i1 false, i1 false}
!278 = distinct !{null, !279, !"__warned", i1 false, i1 false}
!279 = !{!"../include/linux/sched/mm.h", i32 173, i32 4}
!280 = !{ptr @.str.79, !279, !"<string literal>", i1 false, i1 false}
!281 = !{ptr @.str.80, !279, !"<string literal>", i1 false, i1 false}
!282 = !{ptr @.str.81, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../include/linux/mmu_notifier.h", i32 482, i32 3}
!284 = !{ptr @.str.82, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../mm/oom_kill.c", i32 682, i32 18}
!286 = !{ptr @oom_reaper_list, !287, !"oom_reaper_list", i1 false, i1 false}
!287 = !{!"../mm/oom_kill.c", i32 512, i32 28}
!288 = !{ptr @.str.83, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../mm/oom_kill.c", i32 511, i32 8}
!290 = !{ptr @oom_reaper_wait, !289, !"oom_reaper_wait", i1 false, i1 false}
!291 = !{ptr @.str.84, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../include/linux/freezer.h", i32 57, i32 2}
!293 = !{ptr @.str.85, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../mm/oom_kill.c", i32 513, i32 8}
!295 = !{ptr @oom_reaper_lock, !294, !"oom_reaper_lock", i1 false, i1 false}
!296 = !{ptr @.str.86, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../mm/oom_kill.c", i32 624, i32 2}
!298 = !{ptr @.str.87, !297, !"<string literal>", i1 false, i1 false}
!299 = !{ptr @oom_reap_task._entry, !297, !"_entry", i1 false, i1 false}
!300 = !{ptr @oom_reap_task._entry_ptr, !297, !"_entry_ptr", i1 false, i1 false}
!301 = !{ptr @.str.88, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../mm/oom_kill.c", i32 597, i32 2}
!303 = !{ptr @.str.89, !302, !"<string literal>", i1 false, i1 false}
!304 = !{ptr @oom_reap_task_mm._entry, !302, !"_entry", i1 false, i1 false}
!305 = !{ptr @oom_reap_task_mm._entry_ptr, !302, !"_entry_ptr", i1 false, i1 false}
!306 = distinct !{null, !25, !"__already_done", i1 false, i1 false}
!307 = !{ptr @.str.90, !25, !"<string literal>", i1 false, i1 false}
!308 = distinct !{null, !25, !"__warned", i1 false, i1 false}
!309 = distinct !{null, !310, !"__already_done", i1 false, i1 false}
!310 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!311 = !{ptr @.str.91, !310, !"<string literal>", i1 false, i1 false}
!312 = distinct !{null, !17, !"__already_done", i1 false, i1 false}
!313 = distinct !{null, !17, !"__warned", i1 false, i1 false}
!314 = distinct !{null, !21, !"__already_done", i1 false, i1 false}
!315 = distinct !{null, !21, !"__warned", i1 false, i1 false}
!316 = !{ptr @oom_reaper_th, !317, !"oom_reaper_th", i1 false, i1 false}
!317 = !{!"../mm/oom_kill.c", i32 510, i32 28}
!318 = !{ptr @oom_victims, !319, !"oom_victims", i1 false, i1 false}
!319 = !{!"../mm/oom_kill.c", i32 480, i32 17}
!320 = !{ptr @.str.92, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../mm/oom_kill.c", i32 481, i32 8}
!322 = !{ptr @oom_victims_wait, !321, !"oom_victims_wait", i1 false, i1 false}
!323 = !{ptr @.str.93, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../mm/oom_kill.c", i32 1029, i32 8}
!325 = !{ptr @.str.94, !324, !"<string literal>", i1 false, i1 false}
!326 = !{ptr @oom_notify_list, !324, !"oom_notify_list", i1 false, i1 false}
!327 = distinct !{null, !9, !"__already_done", i1 false, i1 false}
!328 = distinct !{null, !9, !"__warned", i1 false, i1 false}
!329 = distinct !{null, !13, !"__already_done", i1 false, i1 false}
!330 = distinct !{null, !13, !"__warned", i1 false, i1 false}
!331 = !{ptr @.str.95, !332, !"<string literal>", i1 false, i1 false}
!332 = !{!"../mm/oom_kill.c", i32 1025, i32 8}
!333 = !{ptr @.str.96, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../mm/oom_kill.c", i32 1026, i32 30}
!335 = !{ptr @.str.97, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../mm/oom_kill.c", i32 1026, i32 45}
!337 = !{ptr @.str.98, !338, !"<string literal>", i1 false, i1 false}
!338 = !{!"../mm/oom_kill.c", i32 963, i32 9}
!339 = !{ptr @oom_kill_process.oom_rs, !338, !"oom_rs", i1 false, i1 false}
!340 = !{ptr @__func__.oom_kill_process, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../mm/oom_kill.c", i32 981, i32 6}
!342 = !{ptr @.str.99, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../mm/oom_kill.c", i32 870, i32 3}
!344 = !{ptr @.str.100, !343, !"<string literal>", i1 false, i1 false}
!345 = !{ptr @__oom_kill_process._entry, !343, !"_entry", i1 false, i1 false}
!346 = !{ptr @__oom_kill_process._entry_ptr, !343, !"_entry_ptr", i1 false, i1 false}
!347 = !{ptr @.str.102, !348, !"<string literal>", i1 false, i1 false}
!348 = !{!"../mm/oom_kill.c", i32 895, i32 2}
!349 = !{ptr @__oom_kill_process._entry.101, !348, !"_entry", i1 false, i1 false}
!350 = !{ptr @__oom_kill_process._entry_ptr.103, !348, !"_entry_ptr", i1 false, i1 false}
!351 = distinct !{null, !348, !"__warned", i1 false, i1 false}
!352 = !{ptr @.str.105, !353, !"<string literal>", i1 false, i1 false}
!353 = !{!"../mm/oom_kill.c", i32 922, i32 4}
!354 = !{ptr @__oom_kill_process._entry.104, !353, !"_entry", i1 false, i1 false}
!355 = !{ptr @__oom_kill_process._entry_ptr.106, !353, !"_entry_ptr", i1 false, i1 false}
!356 = distinct !{null, !357, !"__warned", i1 false, i1 false}
!357 = !{!"../include/linux/memcontrol.h", i32 1099, i32 31}
!358 = !{ptr @.str.107, !357, !"<string literal>", i1 false, i1 false}
!359 = !{ptr @.str.108, !360, !"<string literal>", i1 false, i1 false}
!360 = !{!"../mm/oom_kill.c", i32 457, i32 2}
!361 = !{ptr @.str.109, !360, !"<string literal>", i1 false, i1 false}
!362 = !{ptr @dump_header._entry, !360, !"_entry", i1 false, i1 false}
!363 = !{ptr @dump_header._entry_ptr, !360, !"_entry_ptr", i1 false, i1 false}
!364 = distinct !{null, !365, !"__already_done", i1 false, i1 false}
!365 = !{!"../include/linux/vmstat.h", i32 202, i32 2}
!366 = distinct !{null, !365, !"<string literal>", i1 false, i1 false}
!367 = !{ptr @.str.111, !368, !"<string literal>", i1 false, i1 false}
!368 = !{!"../mm/oom_kill.c", i32 428, i32 2}
!369 = !{ptr @.str.112, !368, !"<string literal>", i1 false, i1 false}
!370 = !{ptr @dump_tasks._entry, !368, !"_entry", i1 false, i1 false}
!371 = !{ptr @dump_tasks._entry_ptr, !368, !"_entry_ptr", i1 false, i1 false}
!372 = !{ptr @.str.114, !373, !"<string literal>", i1 false, i1 false}
!373 = !{!"../mm/oom_kill.c", i32 429, i32 2}
!374 = !{ptr @dump_tasks._entry.113, !373, !"_entry", i1 false, i1 false}
!375 = !{ptr @dump_tasks._entry_ptr.115, !373, !"_entry_ptr", i1 false, i1 false}
!376 = !{ptr @.str.116, !377, !"<string literal>", i1 false, i1 false}
!377 = !{!"../mm/oom_kill.c", i32 405, i32 2}
!378 = !{ptr @.str.117, !377, !"<string literal>", i1 false, i1 false}
!379 = !{ptr @dump_task._entry, !377, !"_entry", i1 false, i1 false}
!380 = !{ptr @dump_task._entry_ptr, !377, !"_entry_ptr", i1 false, i1 false}
!381 = distinct !{null, !377, !"__warned", i1 false, i1 false}
!382 = !{ptr @.str.118, !383, !"<string literal>", i1 false, i1 false}
!383 = !{!"../mm/oom_kill.c", i32 446, i32 2}
!384 = !{ptr @.str.119, !383, !"<string literal>", i1 false, i1 false}
!385 = !{ptr @dump_oom_summary._entry, !383, !"_entry", i1 false, i1 false}
!386 = !{ptr @dump_oom_summary._entry_ptr, !383, !"_entry_ptr", i1 false, i1 false}
!387 = !{ptr @.str.121, !388, !"<string literal>", i1 false, i1 false}
!388 = !{!"../mm/oom_kill.c", i32 451, i32 2}
!389 = !{ptr @dump_oom_summary._entry.120, !388, !"_entry", i1 false, i1 false}
!390 = !{ptr @dump_oom_summary._entry_ptr.122, !388, !"_entry_ptr", i1 false, i1 false}
!391 = distinct !{null, !388, !"__warned", i1 false, i1 false}
!392 = !{ptr @.str.123, !393, !"<string literal>", i1 false, i1 false}
!393 = !{!"../mm/oom_kill.c", i32 245, i32 22}
!394 = !{ptr @.str.124, !395, !"<string literal>", i1 false, i1 false}
!395 = !{!"../mm/oom_kill.c", i32 246, i32 24}
!396 = !{ptr @.str.125, !397, !"<string literal>", i1 false, i1 false}
!397 = !{!"../mm/oom_kill.c", i32 247, i32 31}
!398 = !{ptr @.str.126, !399, !"<string literal>", i1 false, i1 false}
!399 = !{!"../mm/oom_kill.c", i32 248, i32 23}
!400 = !{ptr @oom_constraint_text, !401, !"oom_constraint_text", i1 false, i1 false}
!401 = !{!"../mm/oom_kill.c", i32 244, i32 27}
!402 = !{ptr @.str.127, !186, !"<string literal>", i1 false, i1 false}
!403 = !{ptr @types__process_mrelease, !186, !"types__process_mrelease", i1 false, i1 false}
!404 = !{ptr @.str.128, !186, !"<string literal>", i1 false, i1 false}
!405 = !{ptr @.str.129, !186, !"<string literal>", i1 false, i1 false}
!406 = !{ptr @args__process_mrelease, !186, !"args__process_mrelease", i1 false, i1 false}
!407 = !{!"sp"}
!408 = !{i32 1, !"wchar_size", i32 2}
!409 = !{i32 1, !"min_enum_size", i32 4}
!410 = !{i32 8, !"branch-target-enforcement", i32 0}
!411 = !{i32 8, !"sign-return-address", i32 0}
!412 = !{i32 8, !"sign-return-address-all", i32 0}
!413 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!414 = !{i32 7, !"uwtable", i32 1}
!415 = !{i32 7, !"frame-pointer", i32 2}
!416 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!417 = !{!"branch_weights", i32 2000, i32 1}
!418 = !{!"branch_weights", i32 1, i32 2000}
!419 = !{!"auto-init"}
!420 = !{i64 2149218938}
!421 = !{i64 2149219204}
!422 = !{i64 2148438884}
!423 = !{i64 2148353593, i64 2148353625, i64 2148353654, i64 2148353688, i64 2148353719, i64 2148353742}
!424 = !{i64 2148439113}
!425 = !{i64 2151884657, i64 2151885141, i64 2151884694, i64 2151884750, i64 2151884784, i64 2151884808, i64 2151884849, i64 2151884870, i64 2151884898, i64 2151884932}
!426 = !{!"branch_weights", i32 1, i32 4000, i32 1}
!427 = !{i64 2156983691}
!428 = !{i64 859900, i64 859921, i64 859944, i64 859963, i64 859982}
!429 = !{i64 2156984103}
!430 = !{i64 2148350408, i64 2148350434, i64 2148350463, i64 2148350497, i64 2148350528, i64 2148350551}
!431 = !{i64 2148351938, i64 2148351970, i64 2148351999, i64 2148352033, i64 2148352064, i64 2148352087}
!432 = !{i64 2148439963}
!433 = !{i64 2148354403, i64 2148354435, i64 2148354464, i64 2148354498, i64 2148354529, i64 2148354552}
!434 = !{i64 2149656178}
!435 = !{i64 2148815887, i64 2148815892, i64 2148815905, i64 2148815949, i64 2148815983, i64 2148816004}
!436 = !{i64 814157, i64 814218}
!437 = !{i64 816889}
!438 = !{i64 817174}
!439 = !{i8 0, i8 2}
!440 = !{i64 2155620869}
!441 = !{i64 2155998226}
!442 = !{i64 2155998429}
!443 = !{i64 2149227497}
!444 = !{i64 2149228533}
!445 = !{i64 2155966042}
!446 = !{i64 2155966247}
!447 = !{i64 2155982145}
!448 = !{i64 2155982352}
!449 = !{i64 2155930875}
!450 = !{i64 2155931066}
!451 = !{i64 2155946294}
!452 = !{i64 2155946485}
