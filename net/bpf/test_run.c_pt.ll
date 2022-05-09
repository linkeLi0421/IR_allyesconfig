; ModuleID = '/llk/IR_all_yes/net/bpf/test_run.c_pt.bc'
source_filename = "../net/bpf/test_run.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.static_call_key = type { ptr }
%struct.atomic_t = type { i32 }
%struct.trace_event_fields = type { ptr, %union.anon.0 }
%union.anon.0 = type { %struct.anon }
%struct.anon = type { ptr, i32, i32, i32, i32 }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.1, %struct.trace_event, ptr, ptr, %union.anon.4, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.1 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.4 = type { ptr }
%union.anon.214 = type { %struct.bpf_raw_event_map }
%struct.bpf_raw_event_map = type { ptr, ptr, i32, i32, [16 x i8] }
%struct.btf_id_set = type { i32, [0 x i32] }
%struct.proto = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i8, ptr, i32, i32, i32, i32, ptr, ptr, ptr, %union.anon.77, ptr, [32 x i8], %struct.list_head, ptr }
%union.anon.77 = type { ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.cpumask = type { [1 x i32] }
%struct.bpf_test_timer = type { i32, i32, i64, i64 }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t, %union.anon }
%union.anon = type { i32 }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.trace_event_raw_bpf_test_finish = type { %struct.trace_entry, i32, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.bpf_fentry_test_t = type { ptr }
%struct.anon.100 = type { i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i64, i64, i32, i32 }
%struct.bpf_prog = type { i16, i16, i32, i32, i32, i32, [8 x i8], ptr, ptr, ptr, ptr, ptr, %union.anon.203 }
%union.anon.203 = type { %struct.anon.204 }
%struct.anon.204 = type { %struct.anon.205, [0 x %struct.sock_filter] }
%struct.anon.205 = type {}
%struct.sock_filter = type { i16, i8, i8, i32 }
%struct.bpf_raw_tp_test_run_info = type { ptr, ptr, i32 }
%struct.bpf_prog_aux = type { %struct.atomic64_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.mutex, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, %struct.hlist_node, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.bpf_ksym, ptr, ptr, %struct.mutex, ptr, ptr, ptr, i64, i32, [2 x ptr], [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, %union.anon.202 }
%struct.atomic64_t = type { i64 }
%struct.bpf_ksym = type { i32, i32, [128 x i8], %struct.list_head, %struct.latch_tree_node, i8 }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%union.anon.202 = type { %struct.work_struct }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.bpf_prog_stats = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync, [8 x i8] }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.164, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.27 }
%struct.llist_node = type { ptr }
%union.anon.27 = type { i32 }
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
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.29 }
%union.anon.29 = type { %struct.anon.30 }
%struct.anon.30 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.spinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.raw_spinlock }
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.tlbflush_unmap_batch = type {}
%union.anon.164 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.nsproxy = type { %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.44, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.44 = type { %struct.anon.45 }
%struct.anon.45 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.raw_notifier_head = type { ptr }
%struct.netns_core = type { ptr, i32, ptr }
%struct.netns_mib = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.netns_packet = type { %struct.mutex, %struct.hlist_head }
%struct.netns_unix = type { i32, ptr }
%struct.netns_nexthop = type { %struct.rb_root, ptr, i32, i32, %struct.blocking_notifier_head }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.netns_ipv4 = type { %struct.inet_timewait_death_row, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, ptr, ptr, ptr, i32, i8, i8, i8, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i32, i32, i32, i32, %struct.local_ports, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, [3 x i32], [3 x i32], i32, i32, i32, i32, ptr, ptr, i32, %struct.atomic_t, i32, i32, i32, i8, i8, i8, i32, i32, i32, %struct.ping_group_range, %struct.atomic_t, ptr, i32, %struct.list_head, ptr, i32, i8, i8, ptr, i32, ptr, i32, %struct.atomic_t, %struct.siphash_key_t, [96 x i8] }
%struct.inet_timewait_death_row = type { %struct.atomic_t, [124 x i8], ptr, i32 }
%struct.local_ports = type { %struct.seqlock_t, [2 x i32], i8 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.ping_group_range = type { %struct.seqlock_t, [2 x %struct.kgid_t] }
%struct.kgid_t = type { i32 }
%struct.siphash_key_t = type { [2 x i64] }
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.126, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.126 = type { %struct.hlist_head, %struct.spinlock, i32 }
%struct.netns_ieee802154_lowpan = type { %struct.netns_sysctl_lowpan, ptr }
%struct.netns_sysctl_lowpan = type { ptr }
%struct.netns_sctp = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, %struct.timer_list, %struct.list_head, %struct.spinlock, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netns_nf = type { ptr, [13 x ptr], ptr, [5 x ptr], [5 x ptr], [3 x ptr], [5 x ptr], [7 x ptr], i32, i32 }
%struct.netns_ct = type { i8, i8, i8, i8, i8, i8, i8, ptr, ptr, ptr, %struct.nf_ip_net, i32 }
%struct.nf_ip_net = type { %struct.nf_generic_net, %struct.nf_tcp_net, %struct.nf_udp_net, %struct.nf_icmp_net, %struct.nf_icmp_net, %struct.nf_dccp_net, %struct.nf_sctp_net, %struct.nf_gre_net }
%struct.nf_generic_net = type { i32 }
%struct.nf_tcp_net = type { [14 x i32], i8, i8, i8, i8, i32 }
%struct.nf_udp_net = type { [2 x i32], i32 }
%struct.nf_icmp_net = type { i32 }
%struct.nf_dccp_net = type { i8, [10 x i32] }
%struct.nf_sctp_net = type { [10 x i32] }
%struct.nf_gre_net = type { %struct.list_head, [2 x i32] }
%struct.netns_nftables = type { i8 }
%struct.sk_buff_head = type { %union.anon.86, i32, %struct.spinlock }
%union.anon.86 = type { %struct.anon.87 }
%struct.anon.87 = type { ptr, ptr }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [8 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_mpls = type { i32, i32, i32, ptr, ptr }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.netns_xdp = type { %struct.mutex, %struct.hlist_head }
%struct.netns_mctp = type { %struct.list_head, %struct.mutex, %struct.hlist_head, %struct.spinlock, %struct.hlist_head, i32, %struct.mutex, %struct.list_head }
%struct.netns_smc = type { ptr, %struct.mutex, ptr }
%struct.sk_buff = type { %union.anon.57, %union.anon.60, %union.anon.61, [48 x i8], %union.anon.62, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.64, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.57 = type { %struct.anon.58 }
%struct.anon.58 = type { ptr, ptr, %union.anon.59 }
%union.anon.59 = type { ptr }
%union.anon.60 = type { ptr }
%union.anon.61 = type { i64 }
%union.anon.62 = type { %struct.anon.63 }
%struct.anon.63 = type { i32, ptr }
%union.anon.64 = type { %struct.anon.65 }
%struct.anon.65 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.66, i32, i32, i32, i16, i16, %union.anon.68, i32, %union.anon.69, %union.anon.70, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.66 = type { i32 }
%union.anon.68 = type { i32 }
%union.anon.69 = type { i32 }
%union.anon.70 = type { i16 }
%struct.__sk_buff = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [5 x i32], i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32], [4 x i32], i32, i32, i32, %union.anon.215, i64, i32, i32, %union.anon.219, i32, i32, i64 }
%union.anon.215 = type { i64 }
%union.anon.219 = type { i64 }
%struct.sock_common = type { %union.anon.47, %union.anon.49, %union.anon.50, i16, i8, i8, i32, %union.anon.52, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.80, [0 x i32], %union.anon.81, i16, i16, %union.anon.82, %struct.refcount_struct, [0 x i32], %union.anon.83 }
%union.anon.47 = type { i64 }
%union.anon.49 = type { i32 }
%union.anon.50 = type { i32 }
%union.anon.52 = type { %struct.hlist_node }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.79 }
%union.anon.79 = type { [4 x i32] }
%union.anon.80 = type { i32 }
%union.anon.81 = type { %struct.hlist_node }
%union.anon.82 = type { i32 }
%union.anon.83 = type { i32 }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.anon.48 = type { i32, i32 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.bpf_prog_array_item = type { ptr, %union.anon.208 }
%union.anon.208 = type { i64 }
%struct.bpf_cg_run_ctx = type { %struct.bpf_run_ctx, ptr }
%struct.bpf_run_ctx = type {}
%struct.xdp_buff = type { ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.183, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.201, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.183 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%union.anon.201 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.xdp_md = type { i32, i32, i32, i32, i32, i32 }
%struct.netdev_rx_queue = type { %struct.xdp_rxq_info, ptr, ptr, %struct.kobject, ptr, ptr, ptr, [100 x i8] }
%struct.xdp_rxq_info = type { ptr, i32, i32, %struct.xdp_mem_info, i32, [104 x i8] }
%struct.xdp_mem_info = type { i32, i32 }
%struct.bpf_flow_dissector = type { ptr, ptr, ptr, ptr }
%struct.bpf_flow_keys = type { i16, i16, i16, i8, i8, i8, i8, i16, i16, i16, %union.anon.216, i32, i32 }
%union.anon.216 = type { %struct.anon.218 }
%struct.anon.218 = type { [4 x i32], [4 x i32] }
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }
%struct.bpf_sk_lookup_kern = type { i16, i16, i16, i16, %struct.anon.220, %struct.anon.221, ptr, i32, i8 }
%struct.anon.220 = type { i32, i32 }
%struct.anon.221 = type { ptr, ptr }
%struct.bpf_sk_lookup = type { %union.anon.222, i32, i32, i32, [4 x i32], i32, i32, [4 x i32], i32, i32 }
%union.anon.222 = type { %union.anon.223 }
%union.anon.223 = type { i64 }
%struct.bpf_prog_array = type { %struct.callback_head, [0 x %struct.bpf_prog_array_item] }
%struct.anon.28 = type { i8, i8, i8, i8 }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, ptr, i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }

@__tpstrtab_bpf_test_finish = internal constant [16 x i8] c"bpf_test_finish\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_bpf_test_finish = dso_local global %struct.static_call_key { ptr @__traceiter_bpf_test_finish }, align 4
@__tracepoint_bpf_test_finish = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_bpf_test_finish, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_bpf_test_finish, ptr null, ptr @__traceiter_bpf_test_finish, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_bpf_test_finish = internal constant ptr @__tracepoint_bpf_test_finish, section "__tracepoints_ptrs", align 4
@str__bpf_test_run__trace_system_name = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"bpf_test_run\00", [19 x i8] zeroinitializer }, align 32
@trace_event_fields_bpf_test_finish = internal global { [2 x %struct.trace_event_fields], [48 x i8] } { [2 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.1, %union.anon.0 { %struct.anon { ptr @.str.2, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [48 x i8] zeroinitializer }, align 32
@event_class_bpf_test_finish = internal global %struct.trace_event_class { ptr @str__bpf_test_run__trace_system_name, ptr @trace_event_raw_event_bpf_test_finish, ptr @perf_trace_bpf_test_finish, ptr @trace_event_reg, ptr @trace_event_fields_bpf_test_finish, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_bpf_test_finish, i64 24), ptr getelementptr (i8, ptr @event_class_bpf_test_finish, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_bpf_test_finish = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_bpf_test_finish, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_bpf_test_finish = internal global { [40 x i8], [56 x i8] } { [40 x i8] c"\22bpf_test_finish with err=%d\22, REC->err\00", [56 x i8] zeroinitializer }, align 32
@event_bpf_test_finish = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_bpf_test_finish, %union.anon.1 { ptr @__tracepoint_bpf_test_finish }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_bpf_test_finish }, ptr @print_fmt_bpf_test_finish, ptr null, %union.anon.4 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_bpf_test_finish = internal global ptr @event_bpf_test_finish, section "_ftrace_events", align 4
@__bpf_trace_tp_map_bpf_test_finish = internal global %union.anon.214 { %struct.bpf_raw_event_map { ptr @__tracepoint_bpf_test_finish, ptr @__bpf_trace_bpf_test_finish, i32 1, i32 4, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@test_sk_kfunc_ids = internal global { %struct.btf_id_set, [28 x i8] } zeroinitializer, align 32
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@bpf_dummy_proto = internal global { %struct.proto, [36 x i8] } { %struct.proto { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 0, ptr null, i32 960, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %union.anon.77 zeroinitializer, ptr null, [32 x i8] c"bpf_dummy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.list_head zeroinitializer, ptr null }, [36 x i8] zeroinitializer }, align 32
@bpf_prog_test_run_skb.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"net/bpf/test_run.c\00", [45 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"int\00", [28 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"err\00", [28 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"bpf_test_finish with err=%d\0A\00", [35 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"include/trace/events/bpf_test_run.h\00", [60 x i8] zeroinitializer }, align 32
@trace_bpf_test_finish.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.8 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.9 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.11 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__const.bpf_test_run.t = private unnamed_addr constant %struct.bpf_test_timer { i32 1, i32 0, i64 0, i64 0 }, align 8
@bpf_master_redirect_enabled_key = external dso_local global %struct.static_key_false, align 4
@.str.13 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/filter.h\00", [41 x i8] zeroinitializer }, align 32
@bpf_stats_enabled_key = external dso_local global %struct.static_key_false, align 4
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@rcu_trace_lock_map = external dso_local global %struct.lockdep_map, align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 24, i64 25, i64 26]
@__sancov_gen_cov_switch_values.16 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@__sancov_gen_cov_switch_values.17 = internal global [4 x i64] [i64 2, i64 32, i64 33, i64 35]
@__sancov_gen_cov_switch_values.18 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.19 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.20 = private unnamed_addr constant [37 x i8] c"str__bpf_test_run__trace_system_name\00", align 1
@___asan_gen_.21 = private unnamed_addr constant [32 x i8] c"../include/trace/trace_events.h\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 36, i32 1 }
@___asan_gen_.23 = private unnamed_addr constant [35 x i8] c"trace_event_fields_bpf_test_finish\00", align 1
@___asan_gen_.26 = private unnamed_addr constant [39 x i8] c"trace_event_type_funcs_bpf_test_finish\00", align 1
@___asan_gen_.29 = private unnamed_addr constant [26 x i8] c"print_fmt_bpf_test_finish\00", align 1
@___asan_gen_.32 = private unnamed_addr constant [22 x i8] c"event_bpf_test_finish\00", align 1
@___asan_gen_.35 = private unnamed_addr constant [18 x i8] c"test_sk_kfunc_ids\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 239, i32 1 }
@___asan_gen_.38 = private unnamed_addr constant [16 x i8] c"bpf_dummy_proto\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 559, i32 21 }
@___asan_gen_.42 = private constant [22 x i8] c"../net/bpf/test_run.c\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 684, i32 6 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 10, i32 1 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 230, i32 6 }
@___asan_gen_.57 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 214, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 174, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant [39 x i8] c"../include/trace/events/bpf_test_run.h\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 38, i32 1 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 695, i32 2 }
@___asan_gen_.75 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 723, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 108, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant [26 x i8] c"../include/linux/filter.h\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 613, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.84 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 271, i32 2 }
@llvm.compiler.used = appending global [27 x ptr] [ptr @__bpf_trace_tp_map_bpf_test_finish, ptr @__event_bpf_test_finish, ptr @__tracepoint_bpf_test_finish, ptr @__tracepoint_ptr_bpf_test_finish, ptr @event_bpf_test_finish, ptr @event_class_bpf_test_finish, ptr @str__bpf_test_run__trace_system_name, ptr @trace_event_fields_bpf_test_finish, ptr @trace_event_type_funcs_bpf_test_finish, ptr @print_fmt_bpf_test_finish, ptr @test_sk_kfunc_ids, ptr @bpf_dummy_proto, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str__bpf_test_run__trace_system_name to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_bpf_test_finish to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_bpf_test_finish to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_bpf_test_finish to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_bpf_test_finish to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_sk_kfunc_ids to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpf_dummy_proto to i32), i32 252, i32 288, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_bpf_test_finish(ptr nocapture readnone %__data, ptr noundef %err) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_bpf_test_finish, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %err) #12
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
define internal void @trace_event_raw_event_bpf_test_finish(ptr noundef %__data, ptr nocapture noundef readonly %err) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !66

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !67

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
  %3 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %err, align 4
  %err6 = getelementptr inbounds %struct.trace_event_raw_bpf_test_finish, ptr %call3, i32 0, i32 1
  %5 = ptrtoint ptr %err6 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %err6, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_bpf_test_finish(ptr noundef %__data, ptr nocapture noundef readonly %err) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #12
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !68
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #12
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !68
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !56) #12
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
  %24 = call i32 @llvm.read_register.i32(metadata !56) #12
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %27 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %err, align 4
  %err17 = getelementptr inbounds %struct.trace_event_raw_bpf_test_finish, ptr %call13, i32 0, i32 1
  %29 = ptrtoint ptr %err17 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %err17, align 4
  %30 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rctx, align 4
  %32 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 12, i32 noundef %31, ptr noundef %__data, i64 noundef 1, ptr noundef %33, ptr noundef %11, ptr noundef null) #12
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
define internal void @__bpf_trace_bpf_test_finish(ptr noundef %__data, ptr noundef %err) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %0 = ptrtoint ptr %err to i32
  %conv = zext i32 %0 to i64
  tail call void @bpf_trace_run1(ptr noundef %__data, i64 noundef %conv) #12
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @bpf_fentry_test1(i32 noundef %a) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %a, 1
  ret i32 %add
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @bpf_fentry_test2(i32 noundef %a, i64 noundef %b) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = trunc i64 %b to i32
  %conv1 = add i32 %0, %a
  ret i32 %conv1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @bpf_fentry_test3(i8 noundef zeroext %a, i32 noundef %b, i64 noundef %c) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %a to i32
  %add = add i32 %conv, %b
  %0 = trunc i64 %c to i32
  %conv3 = add i32 %add, %0
  ret i32 %conv3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @bpf_fentry_test4(ptr noundef %a, i8 noundef zeroext %b, i32 noundef %c, i64 noundef %d) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %a to i32
  %conv = zext i8 %b to i32
  %add = add i32 %conv, %0
  %add1 = add i32 %add, %c
  %1 = trunc i64 %d to i32
  %conv4 = add i32 %add1, %1
  ret i32 %conv4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @bpf_fentry_test5(i64 noundef %a, ptr noundef %b, i16 noundef signext %c, i32 noundef %d, i64 noundef %e) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %b to i32
  %conv7 = zext i32 %0 to i64
  %add = add i64 %conv7, %a
  %conv1 = sext i16 %c to i64
  %add2 = add i64 %add, %conv1
  %conv38 = zext i32 %d to i64
  %add4 = add i64 %add2, %conv38
  %add5 = add i64 %add4, %e
  %conv6 = trunc i64 %add5 to i32
  ret i32 %conv6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @bpf_fentry_test6(i64 noundef %a, ptr noundef %b, i16 noundef signext %c, i32 noundef %d, ptr noundef %e, i64 noundef %f) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %b to i32
  %conv11 = zext i32 %0 to i64
  %add = add i64 %conv11, %a
  %conv1 = sext i16 %c to i64
  %add2 = add i64 %add, %conv1
  %conv39 = zext i32 %d to i64
  %add4 = add i64 %add2, %conv39
  %1 = ptrtoint ptr %e to i32
  %add6 = add i64 %add4, %f
  %2 = trunc i64 %add6 to i32
  %conv8 = add i32 %2, %1
  ret i32 %conv8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @bpf_fentry_test7(ptr noundef %arg) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %arg to i32
  ret i32 %0
}

; Function Attrs: argmemonly mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @bpf_fentry_test8(ptr nocapture noundef readonly %arg) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arg, align 4
  %2 = ptrtoint ptr %1 to i32
  ret i32 %2
}

; Function Attrs: argmemonly mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @bpf_modify_return_test(i32 noundef %a, ptr nocapture noundef %b) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %b, align 4
  %add = add i32 %1, 1
  store i32 %add, ptr %b, align 4
  %add1 = add i32 %add, %a
  ret i32 %add1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i64 @bpf_kfunc_call_test1(ptr nocapture noundef readnone %sk, i32 noundef %a, i64 noundef %b, i32 noundef %c, i64 noundef %d) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i32 %a to i64
  %add = add i64 %conv, %b
  %conv1 = zext i32 %c to i64
  %add2 = add i64 %add, %conv1
  %add3 = add i64 %add2, %d
  ret i64 %add3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @bpf_kfunc_call_test2(ptr nocapture noundef readnone %sk, i32 noundef %a, i32 noundef %b) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %b, %a
  ret i32 %add
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @bpf_kfunc_call_test3(ptr noundef readnone returned %sk) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret ptr %sk
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @bpf_prog_test_check_kfunc_call(i32 noundef %kfunc_id, ptr nocapture noundef readnone %owner) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @btf_id_set_contains(ptr noundef nonnull @test_sk_kfunc_ids, i32 noundef %kfunc_id) #12
  ret i1 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @btf_id_set_contains(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bpf_prog_test_run_tracing(ptr nocapture noundef readonly %prog, ptr nocapture noundef readonly %kattr, ptr noundef %uattr) local_unnamed_addr #0 align 64 {
entry:
  %arg = alloca %struct.bpf_fentry_test_t, align 4
  %b = alloca i32, align 4
  %err = alloca i32, align 4
  %retval1 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %arg) #12
  %0 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %arg, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b) #12
  %1 = ptrtoint ptr %b to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 2, ptr %b, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err) #12
  %2 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -14, ptr %err, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval1) #12
  %3 = ptrtoint ptr %retval1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %retval1, align 4
  %flags = getelementptr inbounds %struct.anon.100, ptr %kattr, i32 0, i32 12
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %cpu = getelementptr inbounds %struct.anon.100, ptr %kattr, i32 0, i32 13
  %6 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cpu, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool2.not = icmp eq i32 %7, 0
  br i1 %tobool2.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %expected_attach_type = getelementptr inbounds %struct.bpf_prog, ptr %prog, i32 0, i32 3
  %8 = ptrtoint ptr %expected_attach_type to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %expected_attach_type, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %9, label %if.end.out_crit_edge [
    i32 24, label %if.end.sw.bb_crit_edge
    i32 25, label %if.end.sw.bb_crit_edge47
    i32 26, label %sw.bb26
  ]

if.end.sw.bb_crit_edge47:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge47
  %call = tail call i32 @bpf_fentry_test1(i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call)
  %cmp.not = icmp eq i32 %call, 2
  br i1 %cmp.not, label %lor.lhs.false3, label %sw.bb.out_crit_edge

sw.bb.out_crit_edge:                              ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

lor.lhs.false3:                                   ; preds = %sw.bb
  %call4 = tail call i32 @bpf_fentry_test2(i32 noundef 2, i64 noundef 3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call4)
  %cmp5.not = icmp eq i32 %call4, 5
  br i1 %cmp5.not, label %lor.lhs.false6, label %lor.lhs.false3.out_crit_edge

lor.lhs.false3.out_crit_edge:                     ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

lor.lhs.false6:                                   ; preds = %lor.lhs.false3
  %call7 = tail call i32 @bpf_fentry_test3(i8 noundef zeroext 4, i32 noundef 5, i64 noundef 6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %call7)
  %cmp8.not = icmp eq i32 %call7, 15
  br i1 %cmp8.not, label %lor.lhs.false9, label %lor.lhs.false6.out_crit_edge

lor.lhs.false6.out_crit_edge:                     ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

lor.lhs.false9:                                   ; preds = %lor.lhs.false6
  %call10 = tail call i32 @bpf_fentry_test4(ptr noundef nonnull inttoptr (i32 7 to ptr), i8 noundef zeroext 8, i32 noundef 9, i64 noundef 10)
  call void @__sanitizer_cov_trace_const_cmp4(i32 34, i32 %call10)
  %cmp11.not = icmp eq i32 %call10, 34
  br i1 %cmp11.not, label %lor.lhs.false12, label %lor.lhs.false9.out_crit_edge

lor.lhs.false9.out_crit_edge:                     ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

lor.lhs.false12:                                  ; preds = %lor.lhs.false9
  %call13 = tail call i32 @bpf_fentry_test5(i64 noundef 11, ptr noundef nonnull inttoptr (i32 12 to ptr), i16 noundef signext 13, i32 noundef 14, i64 noundef 15)
  call void @__sanitizer_cov_trace_const_cmp4(i32 65, i32 %call13)
  %cmp14.not = icmp eq i32 %call13, 65
  br i1 %cmp14.not, label %lor.lhs.false15, label %lor.lhs.false12.out_crit_edge

lor.lhs.false12.out_crit_edge:                    ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

lor.lhs.false15:                                  ; preds = %lor.lhs.false12
  %call16 = tail call i32 @bpf_fentry_test6(i64 noundef 16, ptr noundef nonnull inttoptr (i32 17 to ptr), i16 noundef signext 18, i32 noundef 19, ptr noundef nonnull inttoptr (i32 20 to ptr), i64 noundef 21)
  call void @__sanitizer_cov_trace_const_cmp4(i32 111, i32 %call16)
  %cmp17.not = icmp eq i32 %call16, 111
  br i1 %cmp17.not, label %lor.lhs.false18, label %lor.lhs.false15.out_crit_edge

lor.lhs.false15.out_crit_edge:                    ; preds = %lor.lhs.false15
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

lor.lhs.false18:                                  ; preds = %lor.lhs.false15
  %call19 = tail call i32 @bpf_fentry_test7(ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20.not = icmp eq i32 %call19, 0
  br i1 %cmp20.not, label %lor.lhs.false21, label %lor.lhs.false18.out_crit_edge

lor.lhs.false18.out_crit_edge:                    ; preds = %lor.lhs.false18
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

lor.lhs.false21:                                  ; preds = %lor.lhs.false18
  %call22 = call i32 @bpf_fentry_test8(ptr noundef nonnull %arg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp23.not = icmp eq i32 %call22, 0
  br i1 %cmp23.not, label %lor.lhs.false21.sw.epilog_crit_edge, label %lor.lhs.false21.out_crit_edge

lor.lhs.false21.out_crit_edge:                    ; preds = %lor.lhs.false21
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

lor.lhs.false21.sw.epilog_crit_edge:              ; preds = %lor.lhs.false21
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb26:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call27 = call i32 @bpf_modify_return_test(i32 noundef 1, ptr noundef nonnull %b)
  %11 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %b, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %12)
  %cmp28.not = icmp eq i32 %12, 2
  %spec.select = select i1 %cmp28.not, i32 0, i32 65536
  %phi.bo = and i32 %call27, 65535
  %13 = or i32 %spec.select, %phi.bo
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb26, %lor.lhs.false21.sw.epilog_crit_edge
  %or = phi i32 [ %13, %sw.bb26 ], [ 0, %lor.lhs.false21.sw.epilog_crit_edge ]
  %14 = ptrtoint ptr %retval1 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %or, ptr %retval1, align 4
  %retval34 = getelementptr inbounds %struct.anon.100, ptr %uattr, i32 0, i32 1
  tail call void @__might_fault(ptr noundef nonnull @.str.6, i32 noundef 174) #12
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i, label %sw.epilog.out_crit_edge, label %if.end.i.i

sw.epilog.out_crit_edge:                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end.i.i:                                       ; preds = %sw.epilog
  %15 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %retval34, i32 4, i32 -1226833920) #15, !srcloc !69
  %asmresult.i.i = extractvalue { i32, i32 } %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %copy_to_user.exit, label %if.end.i.i.out_crit_edge

if.end.i.i.out_crit_edge:                         ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

copy_to_user.exit:                                ; preds = %if.end.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %retval1, i32 noundef 4) #12
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %retval34, ptr noundef nonnull %retval1, i32 noundef 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool36.not = icmp eq i32 %call.i12.i.i, 0
  br i1 %tobool36.not, label %if.end38, label %copy_to_user.exit.out_crit_edge

copy_to_user.exit.out_crit_edge:                  ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end38:                                         ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #14
  %16 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %err, align 4
  br label %out

out:                                              ; preds = %if.end38, %copy_to_user.exit.out_crit_edge, %if.end.i.i.out_crit_edge, %sw.epilog.out_crit_edge, %lor.lhs.false21.out_crit_edge, %lor.lhs.false18.out_crit_edge, %lor.lhs.false15.out_crit_edge, %lor.lhs.false12.out_crit_edge, %lor.lhs.false9.out_crit_edge, %lor.lhs.false6.out_crit_edge, %lor.lhs.false3.out_crit_edge, %sw.bb.out_crit_edge, %if.end.out_crit_edge
  call fastcc void @trace_bpf_test_finish(ptr noundef nonnull %err)
  %17 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %err, align 4
  br label %cleanup

cleanup:                                          ; preds = %out, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %18, %out ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval1) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %arg) #12
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_bpf_test_finish(ptr noundef %err) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_bpf_test_finish, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_bpf_test_finish, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !70

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !56) #12
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !66

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !56) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !71
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_bpf_test_finish, i32 0, i32 7), align 4
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
  tail call void %15(ptr noundef %17, ptr noundef %err) #12
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
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !72
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !72
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !56) #12
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
  %24 = tail call i32 @llvm.read_register.i32(metadata !56) #12
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !66

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  %33 = tail call i32 @llvm.read_register.i32(metadata !56) #12
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !73
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_bpf_test_finish, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_bpf_test_finish.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_bpf_test_finish.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 45, ptr noundef nonnull @.str.8) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !74
  %38 = tail call i32 @llvm.read_register.i32(metadata !56) #12
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bpf_prog_test_run_raw_tp(ptr noundef %prog, ptr nocapture noundef readonly %kattr, ptr noundef %uattr) local_unnamed_addr #0 align 64 {
entry:
  %info = alloca %struct.bpf_raw_tp_test_run_info, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx_in2 = getelementptr inbounds %struct.anon.100, ptr %kattr, i32 0, i32 10
  %0 = ptrtoint ptr %ctx_in2 to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %ctx_in2, align 8
  %conv3 = trunc i64 %1 to i32
  %2 = inttoptr i32 %conv3 to ptr
  %ctx_size_in4 = getelementptr inbounds %struct.anon.100, ptr %kattr, i32 0, i32 8
  %3 = ptrtoint ptr %ctx_size_in4 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ctx_size_in4, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %info) #12
  %5 = getelementptr inbounds %struct.bpf_raw_tp_test_run_info, ptr %info, i32 0, i32 1
  %6 = getelementptr inbounds %struct.bpf_raw_tp_test_run_info, ptr %info, i32 0, i32 2
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %6, align 4, !annotation !68
  %cpu5 = getelementptr inbounds %struct.anon.100, ptr %kattr, i32 0, i32 13
  %8 = ptrtoint ptr %cpu5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cpu5, align 4
  %data_in = getelementptr inbounds %struct.anon.100, ptr %kattr, i32 0, i32 4
  %10 = ptrtoint ptr %data_in to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %data_in, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %11)
  %tobool.not = icmp eq i64 %11, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %data_out = getelementptr inbounds %struct.anon.100, ptr %kattr, i32 0, i32 5
  %12 = ptrtoint ptr %data_out to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %data_out, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %13)
  %tobool6.not = icmp eq i64 %13, 0
  br i1 %tobool6.not, label %lor.lhs.false7, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false7:                                   ; preds = %lor.lhs.false
  %ctx_out = getelementptr inbounds %struct.anon.100, ptr %kattr, i32 0, i32 11
  %14 = ptrtoint ptr %ctx_out to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %ctx_out, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %15)
  %tobool8.not = icmp eq i64 %15, 0
  br i1 %tobool8.not, label %lor.lhs.false9, label %lor.lhs.false7.cleanup_crit_edge

lor.lhs.false7.cleanup_crit_edge:                 ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false9:                                   ; preds = %lor.lhs.false7
  %duration = getelementptr inbounds %struct.anon.100, ptr %kattr, i32 0, i32 7
  %16 = ptrtoint ptr %duration to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %duration, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool10.not = icmp eq i32 %17, 0
  br i1 %tobool10.not, label %lor.lhs.false11, label %lor.lhs.false9.cleanup_crit_edge

lor.lhs.false9.cleanup_crit_edge:                 ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false11:                                  ; preds = %lor.lhs.false9
  %repeat = getelementptr inbounds %struct.anon.100, ptr %kattr, i32 0, i32 6
  %18 = ptrtoint ptr %repeat to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %repeat, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool12.not = icmp eq i32 %19, 0
  br i1 %tobool12.not, label %if.end, label %lor.lhs.false11.cleanup_crit_edge

lor.lhs.false11.cleanup_crit_edge:                ; preds = %lor.lhs.false11
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false11
  %aux = getelementptr inbounds %struct.bpf_prog, ptr %prog, i32 0, i32 10
  %20 = ptrtoint ptr %aux to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %aux, align 4
  %max_ctx_offset = getelementptr inbounds %struct.bpf_prog_aux, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %max_ctx_offset to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %max_ctx_offset, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %23)
  %cmp13 = icmp ult i32 %4, %23
  call void @__sanitizer_cov_trace_const_cmp4(i32 96, i32 %4)
  %cmp16 = icmp ugt i32 %4, 96
  %or.cond = or i1 %cmp16, %cmp13
  br i1 %or.cond, label %if.end.cleanup_crit_edge, label %if.end19

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end19:                                         ; preds = %if.end
  %flags = getelementptr inbounds %struct.anon.100, ptr %kattr, i32 0, i32 12
  %24 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %flags, align 8
  %and = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp20 = icmp ne i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp22.not = icmp eq i32 %9, 0
  %or.cond94 = select i1 %cmp20, i1 true, i1 %cmp22.not
  br i1 %or.cond94, label %if.end25, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end25:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool26.not = icmp eq i32 %4, 0
  br i1 %tobool26.not, label %if.else, label %if.then27

if.then27:                                        ; preds = %if.end25
  %call = tail call ptr @memdup_user(ptr noundef %2, i32 noundef %4) #12
  %26 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call, ptr %5, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then30, label %if.then27.if.end35_crit_edge

if.then27.if.end35_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35

if.then30:                                        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #14
  %27 = ptrtoint ptr %call to i32
  br label %cleanup

if.else:                                          ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  %28 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %5, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.else, %if.then27.if.end35_crit_edge
  %29 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %prog, ptr %info, align 4
  %30 = tail call i32 @llvm.read_register.i32(metadata !56) #12
  %and.i.i.i = and i32 %30, -16384
  %31 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %33, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !75
  %34 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %flags, align 8
  %and41 = and i32 %35, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %cmp42 = icmp eq i32 %and41, 0
  br i1 %cmp42, label %if.end35.if.then47_crit_edge, label %lor.lhs.false44

if.end35.if.then47_crit_edge:                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then47

lor.lhs.false44:                                  ; preds = %if.end35
  %36 = tail call i32 @llvm.read_register.i32(metadata !56) #12
  %and.i = and i32 %36, -16384
  %37 = inttoptr i32 %and.i to ptr
  %cpu39 = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 3
  %38 = ptrtoint ptr %cpu39 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %cpu39, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %39)
  %cmp45 = icmp eq i32 %9, %39
  br i1 %cmp45, label %lor.lhs.false44.if.then47_crit_edge, label %if.else48

lor.lhs.false44.if.then47_crit_edge:              ; preds = %lor.lhs.false44
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then47

if.then47:                                        ; preds = %lor.lhs.false44.if.then47_crit_edge, %if.end35.if.then47_crit_edge
  call void @__bpf_prog_test_run_raw_tp(ptr noundef nonnull %info)
  br label %do.body58

if.else48:                                        ; preds = %lor.lhs.false44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %40 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %40)
  %cmp49.not = icmp ult i32 %9, %40
  br i1 %cmp49.not, label %lor.lhs.false51, label %if.else48.do.body58_crit_edge

if.else48.do.body58_crit_edge:                    ; preds = %if.else48
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body58

lor.lhs.false51:                                  ; preds = %if.else48
  %call52 = tail call fastcc zeroext i1 @cpu_online(i32 noundef %9)
  br i1 %call52, label %if.else54, label %lor.lhs.false51.do.body58_crit_edge

lor.lhs.false51.do.body58_crit_edge:              ; preds = %lor.lhs.false51
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body58

if.else54:                                        ; preds = %lor.lhs.false51
  call void @__sanitizer_cov_trace_pc() #14
  %call55 = call i32 @smp_call_function_single(i32 noundef %9, ptr noundef nonnull @__bpf_prog_test_run_raw_tp, ptr noundef nonnull %info, i32 noundef 1) #12
  br label %do.body58

do.body58:                                        ; preds = %if.else54, %lor.lhs.false51.do.body58_crit_edge, %if.else48.do.body58_crit_edge, %if.then47
  %err.0 = phi i32 [ 0, %if.then47 ], [ %call55, %if.else54 ], [ -6, %lor.lhs.false51.do.body58_crit_edge ], [ -6, %if.else48.do.body58_crit_edge ]
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !76
  %41 = call i32 @llvm.read_register.i32(metadata !56) #12
  %and.i.i.i95 = and i32 %41, -16384
  %42 = inttoptr i32 %and.i.i.i95 to ptr
  %preempt_count.i.i96 = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %preempt_count.i.i96 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %preempt_count.i.i96, align 4
  %sub.i = add i32 %44, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i96, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool61.not = icmp eq i32 %err.0, 0
  br i1 %tobool61.not, label %land.lhs.true62, label %do.body58.if.end68_crit_edge

do.body58.if.end68_crit_edge:                     ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end68

land.lhs.true62:                                  ; preds = %do.body58
  %retval63 = getelementptr inbounds %struct.anon.100, ptr %uattr, i32 0, i32 1
  call void @__might_fault(ptr noundef nonnull @.str.6, i32 noundef 174) #12
  %call.i.i = call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i, label %land.lhs.true62.if.end68_crit_edge, label %if.end.i.i

land.lhs.true62.if.end68_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end68

if.end.i.i:                                       ; preds = %land.lhs.true62
  %45 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %retval63, i32 4, i32 -1226833920) #15, !srcloc !69
  %asmresult.i.i = extractvalue { i32, i32 } %45, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %copy_to_user.exit, label %if.end.i.i.if.end68_crit_edge

if.end.i.i.if.end68_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end68

copy_to_user.exit:                                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %6, i32 noundef 4) #12
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %retval63, ptr noundef %6, i32 noundef 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool66.not = icmp eq i32 %call.i12.i.i, 0
  %spec.select = select i1 %tobool66.not, i32 0, i32 -14
  br label %if.end68

if.end68:                                         ; preds = %copy_to_user.exit, %if.end.i.i.if.end68_crit_edge, %land.lhs.true62.if.end68_crit_edge, %do.body58.if.end68_crit_edge
  %err.1 = phi i32 [ %err.0, %do.body58.if.end68_crit_edge ], [ -14, %land.lhs.true62.if.end68_crit_edge ], [ -14, %if.end.i.i.if.end68_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  %46 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %5, align 4
  call void @kfree(ptr noundef %47) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end68, %if.then30, %if.end19.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false11.cleanup_crit_edge, %lor.lhs.false9.cleanup_crit_edge, %lor.lhs.false7.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %27, %if.then30 ], [ %err.1, %if.end68 ], [ -22, %lor.lhs.false11.cleanup_crit_edge ], [ -22, %lor.lhs.false9.cleanup_crit_edge ], [ -22, %lor.lhs.false7.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end19.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %info) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memdup_user(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_prog_test_run_raw_tp(ptr nocapture noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !56) #12
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !77
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 696, ptr noundef nonnull @.str.10) #12
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %ctx = getelementptr inbounds %struct.bpf_raw_tp_test_run_info, ptr %data, i32 0, i32 1
  %6 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ctx, align 4
  tail call void @__cant_migrate(ptr noundef nonnull @.str.13, i32 noundef 613) #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @bpf_stats_enabled_key, ptr blockaddress(@__bpf_prog_test_run_raw_tp, %if.then.i.i)) #12
          to label %if.else.i.i [label %if.then.i.i], !srcloc !70

if.then.i.i:                                      ; preds = %rcu_read_lock.exit
  %call3.i.i = tail call i64 @sched_clock() #12
  %insnsi.i.i = getelementptr inbounds %struct.bpf_prog, ptr %5, i32 1
  %bpf_func.i.i = getelementptr inbounds %struct.bpf_prog, ptr %5, i32 0, i32 9
  %8 = ptrtoint ptr %bpf_func.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bpf_func.i.i, align 4
  %call.i1.i = tail call i32 %9(ptr noundef %7, ptr noundef %insnsi.i.i) #12
  %stats9.i.i = getelementptr inbounds %struct.bpf_prog, ptr %5, i32 0, i32 7
  %10 = ptrtoint ptr %stats9.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %stats9.i.i, align 4
  %12 = ptrtoint ptr %11 to i32
  %13 = tail call i32 @llvm.read_register.i32(metadata !56) #12
  %and.i.i.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %16
  %17 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %18, %12
  %19 = inttoptr i32 %add.i.i to ptr
  %syncp.i.i = getelementptr inbounds %struct.bpf_prog_stats, ptr %19, i32 0, i32 3
  %20 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !78
  %and.i.i.i.i = and i32 %20, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %if.then.i.i.do.body12.i.i.i_crit_edge

if.then.i.i.do.body12.i.i.i_crit_edge:            ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body12.i.i.i

if.then.i.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @trace_hardirqs_off() #12
  br label %do.body12.i.i.i

do.body12.i.i.i:                                  ; preds = %if.then.i.i.i, %if.then.i.i.do.body12.i.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %21 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i.i.i.i = icmp eq i32 %21, 0
  br i1 %tobool.not.i.i.i.i, label %do.body12.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, label %land.lhs.true.i.i.i.i

do.body12.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %do.body12.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %u64_stats_update_begin_irqsave.exit.i.i

land.lhs.true.i.i.i.i:                            ; preds = %do.body12.i.i.i
  %22 = tail call i32 @llvm.read_register.i32(metadata !56) #12
  %and.i.i.i.i.i.i.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %25, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !79
  %26 = tail call i32 @llvm.read_register.i32(metadata !56) #12
  %and.i.i.i.i.i3 = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i.i3 to ptr
  %cpu.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %cpu.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %cpu.i.i.i.i, align 4
  %arrayidx.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %29
  %30 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %31, ptrtoint (ptr @lockdep_recursion to i32)
  %32 = inttoptr i32 %add.i.i.i.i to ptr
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %32, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !80
  %35 = tail call i32 @llvm.read_register.i32(metadata !56) #12
  %and.i.i.i7.i.i.i.i = and i32 %35, -16384
  %36 = inttoptr i32 %and.i.i.i7.i.i.i.i to ptr
  %preempt_count.i.i8.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %preempt_count.i.i8.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %preempt_count.i.i8.i.i.i.i, align 4
  %sub.i.i.i.i.i = add i32 %38, -1
  store volatile i32 %sub.i.i.i.i.i, ptr %preempt_count.i.i8.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool20.not.i.i.i.i = icmp eq i32 %34, 0
  br i1 %tobool20.not.i.i.i.i, label %land.rhs.i.i.i.i, label %land.lhs.true.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge

land.lhs.true.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %u64_stats_update_begin_irqsave.exit.i.i

land.rhs.i.i.i.i:                                 ; preds = %land.lhs.true.i.i.i.i
  %39 = tail call i32 @llvm.read_register.i32(metadata !56) #12
  %and.i.i.i.i.i.i = and i32 %39, -16384
  %40 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp.i.i.i.i = icmp eq i32 %42, 0
  br i1 %cmp.i.i.i.i, label %land.rhs22.i.i.i.i, label %land.rhs.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge

land.rhs.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %u64_stats_update_begin_irqsave.exit.i.i

land.rhs22.i.i.i.i:                               ; preds = %land.rhs.i.i.i.i
  %43 = tail call i32 @llvm.read_register.i32(metadata !56) #12
  %and.i.i.i9.i.i.i.i = and i32 %43, -16384
  %44 = inttoptr i32 %and.i.i.i9.i.i.i.i to ptr
  %preempt_count.i.i10.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %preempt_count.i.i10.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %preempt_count.i.i10.i.i.i.i, align 4
  %add.i11.i.i.i.i = add i32 %46, 1
  store volatile i32 %add.i11.i.i.i.i, ptr %preempt_count.i.i10.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !81
  %47 = ptrtoint ptr %cpu.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %cpu.i.i.i.i, align 4
  %arrayidx46.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %48
  %49 = ptrtoint ptr %arrayidx46.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx46.i.i.i.i, align 4
  %add47.i.i.i.i = add i32 %50, ptrtoint (ptr @hardirqs_enabled to i32)
  %51 = inttoptr i32 %add47.i.i.i.i to ptr
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %51, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !82
  %54 = tail call i32 @llvm.read_register.i32(metadata !56) #12
  %and.i.i.i12.i.i.i.i = and i32 %54, -16384
  %55 = inttoptr i32 %and.i.i.i12.i.i.i.i to ptr
  %preempt_count.i.i13.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %preempt_count.i.i13.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %preempt_count.i.i13.i.i.i.i, align 4
  %sub.i14.i.i.i.i = add i32 %57, -1
  store volatile i32 %sub.i14.i.i.i.i, ptr %preempt_count.i.i13.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool54.not.i.i.i.i = icmp eq i32 %53, 0
  br i1 %tobool54.not.i.i.i.i, label %land.rhs22.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, label %land.rhs58.i.i.i.i

land.rhs22.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %land.rhs22.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %u64_stats_update_begin_irqsave.exit.i.i

land.rhs58.i.i.i.i:                               ; preds = %land.rhs22.i.i.i.i
  %.b1.i.i.i.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i.i.i.i, label %land.rhs58.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, label %if.then.i.i.i.i, !prof !66

land.rhs58.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %land.rhs58.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %u64_stats_update_begin_irqsave.exit.i.i

if.then.i.i.i.i:                                  ; preds = %land.rhs58.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 271, i32 noundef 9, ptr noundef null) #12
  br label %u64_stats_update_begin_irqsave.exit.i.i

u64_stats_update_begin_irqsave.exit.i.i:          ; preds = %if.then.i.i.i.i, %land.rhs58.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, %land.rhs22.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, %land.rhs.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, %land.lhs.true.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, %do.body12.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge
  %58 = ptrtoint ptr %syncp.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %syncp.i.i, align 4
  %inc.i.i.i.i.i.i = add i32 %59, 1
  store i32 %inc.i.i.i.i.i.i, ptr %syncp.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !83
  %dep_map.i.i.i.i.i = getelementptr inbounds %struct.bpf_prog_stats, ptr %19, i32 0, i32 3, i32 0, i32 1
  %60 = tail call ptr @llvm.returnaddress(i32 0) #12
  %61 = ptrtoint ptr %60 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %61) #12
  %62 = ptrtoint ptr %19 to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %19, align 8
  %inc.i.i.i = add i64 %63, 1
  store i64 %inc.i.i.i, ptr %19, align 8
  %nsecs.i.i = getelementptr inbounds %struct.bpf_prog_stats, ptr %19, i32 0, i32 1
  %call13.i.i = tail call i64 @sched_clock() #12
  %sub.i.i = sub i64 %call13.i.i, %call3.i.i
  %conv.i.i.i = and i64 %sub.i.i, 4294967295
  %64 = ptrtoint ptr %nsecs.i.i to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %nsecs.i.i, align 8
  %add.i.i.i4 = add i64 %conv.i.i.i, %65
  store i64 %add.i.i.i4, ptr %nsecs.i.i, align 8
  tail call void @lock_release(ptr noundef %dep_map.i.i.i.i.i, i32 noundef %61) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !84
  %66 = ptrtoint ptr %syncp.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %syncp.i.i, align 4
  %inc.i.i.i.i.i = add i32 %67, 1
  store i32 %inc.i.i.i.i.i, ptr %syncp.i.i, align 4
  br i1 %tobool.not.i.i.i, label %if.then8.i.i.i, label %u64_stats_update_begin_irqsave.exit.i.i.do.body10.i.i.i_crit_edge

u64_stats_update_begin_irqsave.exit.i.i.do.body10.i.i.i_crit_edge: ; preds = %u64_stats_update_begin_irqsave.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body10.i.i.i

if.then8.i.i.i:                                   ; preds = %u64_stats_update_begin_irqsave.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @trace_hardirqs_on() #12
  br label %do.body10.i.i.i

do.body10.i.i.i:                                  ; preds = %if.then8.i.i.i, %u64_stats_update_begin_irqsave.exit.i.i.do.body10.i.i.i_crit_edge
  %68 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !85
  %and.i.i.i30.i.i = and i32 %68, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i30.i.i)
  %tobool18.not.i.i.i = icmp eq i32 %and.i.i.i30.i.i, 0
  br i1 %tobool18.not.i.i.i, label %if.then22.i.i.i, label %do.body10.i.i.i.u64_stats_update_end_irqrestore.exit.i.i_crit_edge, !prof !67

do.body10.i.i.i.u64_stats_update_end_irqrestore.exit.i.i_crit_edge: ; preds = %do.body10.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %u64_stats_update_end_irqrestore.exit.i.i

if.then22.i.i.i:                                  ; preds = %do.body10.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @warn_bogus_irq_restore() #12
  br label %u64_stats_update_end_irqrestore.exit.i.i

u64_stats_update_end_irqrestore.exit.i.i:         ; preds = %if.then22.i.i.i, %do.body10.i.i.i.u64_stats_update_end_irqrestore.exit.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %20) #12, !srcloc !86
  br label %bpf_prog_run.exit

if.else.i.i:                                      ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  %insnsi15.i.i = getelementptr inbounds %struct.bpf_prog, ptr %5, i32 1
  %bpf_func17.i.i = getelementptr inbounds %struct.bpf_prog, ptr %5, i32 0, i32 9
  %69 = ptrtoint ptr %bpf_func17.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %bpf_func17.i.i, align 4
  %call.i.i = tail call i32 %70(ptr noundef %7, ptr noundef %insnsi15.i.i) #12
  br label %bpf_prog_run.exit

bpf_prog_run.exit:                                ; preds = %if.else.i.i, %u64_stats_update_end_irqrestore.exit.i.i
  %ret.0.i.i = phi i32 [ %call.i1.i, %u64_stats_update_end_irqrestore.exit.i.i ], [ %call.i.i, %if.else.i.i ]
  %retval = getelementptr inbounds %struct.bpf_raw_tp_test_run_info, ptr %data, i32 0, i32 2
  %71 = ptrtoint ptr %retval to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %ret.0.i.i, ptr %retval, align 4
  %call.i5 = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i5, label %bpf_prog_run.exit.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i8

bpf_prog_run.exit.rcu_read_unlock.exit_crit_edge: ; preds = %bpf_prog_run.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true.i8:                                 ; preds = %bpf_prog_run.exit
  %call1.i6 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i6)
  %tobool.not.i7 = icmp eq i32 %call1.i6, 0
  br i1 %tobool.not.i7, label %land.lhs.true.i8.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i10

land.lhs.true.i8.rcu_read_unlock.exit_crit_edge:  ; preds = %land.lhs.true.i8
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true2.i10:                               ; preds = %land.lhs.true.i8
  %.b4.i9 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i9, label %land.lhs.true2.i10.rcu_read_unlock.exit_crit_edge, label %if.then.i11

land.lhs.true2.i10.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i10
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

if.then.i11:                                      ; preds = %land.lhs.true2.i10
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 724, ptr noundef nonnull @.str.11) #12
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i11, %land.lhs.true2.i10.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i8.rcu_read_unlock.exit_crit_edge, %bpf_prog_run.exit.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !87
  %72 = tail call i32 @llvm.read_register.i32(metadata !56) #12
  %and.i.i.i.i.i12 = and i32 %72, -16384
  %73 = inttoptr i32 %and.i.i.i.i.i12 to ptr
  %preempt_count.i.i.i.i13 = getelementptr inbounds %struct.thread_info, ptr %73, i32 0, i32 1
  %74 = ptrtoint ptr %preempt_count.i.i.i.i13 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load volatile i32, ptr %preempt_count.i.i.i.i13, align 4
  %sub.i.i.i = add i32 %75, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i13, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @cpu_online(i32 noundef %cpu) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %0, i32 %cpu)
  %cmp.not.i.i.i = icmp ugt i32 %0, %cpu
  br i1 %cmp.not.i.i.i, label %entry.cpumask_test_cpu.exit_crit_edge, label %land.rhs.i.i.i

entry.cpumask_test_cpu.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpumask_test_cpu.exit

land.rhs.i.i.i:                                   ; preds = %entry
  %.b37.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i, label %land.rhs.i.i.i.cpumask_test_cpu.exit_crit_edge, label %if.then.i.i.i, !prof !66

land.rhs.i.i.i.cpumask_test_cpu.exit_crit_edge:   ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpumask_test_cpu.exit

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpumask_test_cpu.exit

cpumask_test_cpu.exit:                            ; preds = %if.then.i.i.i, %land.rhs.i.i.i.cpumask_test_cpu.exit_crit_edge, %entry.cpumask_test_cpu.exit_crit_edge
  %div3.i.i = lshr i32 %cpu, 5
  %arrayidx.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i
  %1 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %cpu, 31
  %3 = shl nuw i32 1, %and.i.i
  %4 = and i32 %2, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool = icmp ne i32 %4, 0
  ret i1 %tobool
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smp_call_function_single(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bpf_prog_test_run_skb(ptr noundef %prog, ptr nocapture noundef readonly %kattr, ptr noundef %uattr) local_unnamed_addr #0 align 64 {
entry:
  %retval2 = alloca i32, align 4
  %duration = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !56) #12
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %nsproxy = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 110
  %4 = ptrtoint ptr %nsproxy to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %nsproxy, align 4
  %net_ns = getelementptr inbounds %struct.nsproxy, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %net_ns to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %net_ns, align 4
  %loopback_dev = getelementptr inbounds %struct.net, ptr %7, i32 0, i32 27
  %8 = ptrtoint ptr %loopback_dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %loopback_dev, align 4
  %data_size_in = getelementptr inbounds %struct.anon.100, ptr %kattr, i32 0, i32 2
  %10 = ptrtoint ptr %data_size_in to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %data_size_in, align 8
  %repeat1 = getelementptr inbounds %struct.anon.100, ptr %kattr, i32 0, i32 6
  %12 = ptrtoint ptr %repeat1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %repeat1, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval2) #12
  %14 = ptrtoint ptr %retval2 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %retval2, align 4, !annotation !68
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %duration) #12
  %15 = ptrtoint ptr %duration to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %duration, align 4, !annotation !68
  %flags = getelementptr inbounds %struct.anon.100, ptr %kattr, i32 0, i32 12
  %16 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not = icmp eq i32 %17, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup145_crit_edge

entry.cleanup145_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup145

lor.lhs.false:                                    ; preds = %entry
  %cpu = getelementptr inbounds %struct.anon.100, ptr %kattr, i32 0, i32 13
  %18 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cpu, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool3.not = icmp eq i32 %19, 0
  br i1 %tobool3.not, label %if.end, label %lor.lhs.false.cleanup145_crit_edge

lor.lhs.false.cleanup145_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup145

if.end:                                           ; preds = %lor.lhs.false
  %call4 = tail call fastcc ptr @bpf_test_init(ptr noundef %kattr, i32 noundef %11, i32 noundef 130, i32 noundef 256)
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %20 = ptrtoint ptr %call4 to i32
  br label %cleanup145

if.end8:                                          ; preds = %if.end
  %call9 = tail call fastcc ptr @bpf_ctx_init(ptr noundef %kattr, i32 noundef 192)
  %cmp.i242 = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i242, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree(ptr noundef %call4) #12
  %21 = ptrtoint ptr %call9 to i32
  br label %cleanup145

if.end13:                                         ; preds = %if.end8
  %type = getelementptr inbounds %struct.bpf_prog, ptr %prog, i32 0, i32 2
  %22 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %type, align 4
  %switch.tableidx = add i32 %23, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %switch.tableidx)
  %24 = icmp ult i32 %switch.tableidx, 10
  br i1 %24, label %switch.hole_check, label %if.end13.sw.epilog_crit_edge

if.end13.sw.epilog_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

switch.hole_check:                                ; preds = %if.end13
  %switch.maskindex = trunc i32 %switch.tableidx to i16
  %switch.shifted = lshr i16 899, %switch.maskindex
  %25 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %switch.lobit.not = icmp eq i16 %25, 0
  br i1 %switch.lobit.not, label %switch.hole_check.sw.epilog_crit_edge, label %switch.lookup

switch.hole_check.sw.epilog_crit_edge:            ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #14
  %switch.cast = trunc i32 %switch.tableidx to i10
  %switch.downshift = lshr i10 127, %switch.cast
  %26 = and i10 %switch.downshift, 1
  %27 = sext i10 %26 to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %switch.masked = icmp ne i10 %26, 0
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %switch.hole_check.sw.epilog_crit_edge, %if.end13.sw.epilog_crit_edge
  %is_direct_pkt_access.0.off0 = phi i1 [ false, %if.end13.sw.epilog_crit_edge ], [ true, %switch.lookup ], [ false, %switch.hole_check.sw.epilog_crit_edge ]
  %is_l2.1.off0 = phi i1 [ false, %if.end13.sw.epilog_crit_edge ], [ %switch.masked, %switch.lookup ], [ false, %switch.hole_check.sw.epilog_crit_edge ]
  %call15 = tail call ptr @sk_alloc(ptr noundef %7, i32 noundef 0, i32 noundef 1051840, ptr noundef nonnull @bpf_dummy_proto, i32 noundef 1) #12
  %tobool16.not = icmp eq ptr %call15, null
  br i1 %tobool16.not, label %if.then17, label %if.end18

if.then17:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree(ptr noundef %call4) #12
  tail call void @kfree(ptr noundef %call9) #12
  br label %cleanup145

if.end18:                                         ; preds = %sw.epilog
  tail call void @sock_init_data(ptr noundef null, ptr noundef nonnull %call15) #12
  %call19 = tail call ptr @build_skb(ptr noundef %call4, i32 noundef 0) #12
  %tobool20.not = icmp eq ptr %call19, null
  br i1 %tobool20.not, label %if.then21, label %if.end22

if.then21:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree(ptr noundef %call4) #12
  tail call void @kfree(ptr noundef %call9) #12
  tail call void @sk_free(ptr noundef nonnull %call15) #12
  br label %cleanup145

if.end22:                                         ; preds = %if.end18
  %28 = getelementptr inbounds %struct.sk_buff, ptr %call19, i32 0, i32 1
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call15, ptr %28, align 4
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call19, i32 0, i32 19
  %30 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %31, i32 130
  store ptr %add.ptr.i, ptr %data.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call19, i32 0, i32 16
  %32 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %33, i32 130
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %call19, i32 0, i32 7
  %34 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.i.not.i = icmp eq i32 %35, 0
  br i1 %tobool.i.not.i, label %__skb_put.exit, label %do.body3.i, !prof !66

do.body3.i:                                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #12, !srcloc !88
  unreachable

__skb_put.exit:                                   ; preds = %if.end22
  %add.ptr.i244 = getelementptr i8, ptr %add.ptr1.i, i32 %11
  %36 = ptrtoint ptr %tail.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %add.ptr.i244, ptr %tail.i, align 8
  %len9.i = getelementptr inbounds %struct.sk_buff, ptr %call19, i32 0, i32 6
  %37 = ptrtoint ptr %len9.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %len9.i, align 4
  %add.i = add i32 %38, %11
  store i32 %add.i, ptr %len9.i, align 4
  %tobool24.not = icmp eq ptr %call9, null
  br i1 %tobool24.not, label %__skb_put.exit.if.end31_crit_edge, label %land.lhs.true

__skb_put.exit.if.end31_crit_edge:                ; preds = %__skb_put.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end31

land.lhs.true:                                    ; preds = %__skb_put.exit
  %ifindex = getelementptr inbounds %struct.__sk_buff, ptr %call9, i32 0, i32 10
  %39 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %ifindex, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %40)
  %cmp = icmp ugt i32 %40, 1
  br i1 %cmp, label %if.then25, label %land.lhs.true.if.end31_crit_edge

land.lhs.true.if.end31_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end31

if.then25:                                        ; preds = %land.lhs.true
  %call27 = tail call ptr @dev_get_by_index(ptr noundef %7, i32 noundef %40) #12
  %tobool28.not = icmp eq ptr %call27, null
  br i1 %tobool28.not, label %if.then25.if.end144_crit_edge, label %if.then25.if.end31_crit_edge

if.then25.if.end31_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end31

if.then25.if.end144_crit_edge:                    ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end144

if.end31:                                         ; preds = %if.then25.if.end31_crit_edge, %land.lhs.true.if.end31_crit_edge, %__skb_put.exit.if.end31_crit_edge
  %dev.0 = phi ptr [ %call27, %if.then25.if.end31_crit_edge ], [ %9, %land.lhs.true.if.end31_crit_edge ], [ %9, %__skb_put.exit.if.end31_crit_edge ]
  %call32 = tail call zeroext i16 @eth_type_trans(ptr noundef nonnull %call19, ptr noundef %dev.0) #12
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %call19, i32 0, i32 15, i32 0, i32 18
  %41 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %call32, ptr %protocol, align 8
  %42 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %data.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %call19, i32 0, i32 18
  %44 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %43 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %45 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %call19, i32 0, i32 15, i32 0, i32 20
  %46 = ptrtoint ptr %network_header.i to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %conv.i, ptr %network_header.i, align 4
  %47 = zext i16 %call32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %47, ptr @__sancov_gen_cov_switch_values.16)
  switch i16 %call32, label %if.end31.sw.epilog59_crit_edge [
    i16 2048, label %sw.bb34
    i16 -31011, label %sw.bb44
  ]

if.end31.sw.epilog59_crit_edge:                   ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog59

sw.bb34:                                          ; preds = %if.end31
  %skc_family = getelementptr inbounds %struct.sock_common, ptr %call15, i32 0, i32 3
  %48 = ptrtoint ptr %skc_family to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 2, ptr %skc_family, align 8
  %49 = ptrtoint ptr %len9.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %len9.i, align 4
  %51 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %data_len.i.i, align 8
  %sub.i = sub i32 %50, %52
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %sub.i)
  %cmp36 = icmp ugt i32 %sub.i, 19
  br i1 %cmp36, label %if.then38, label %sw.bb34.sw.epilog59_crit_edge

sw.bb34.sw.epilog59_crit_edge:                    ; preds = %sw.bb34
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog59

if.then38:                                        ; preds = %sw.bb34
  call void @__sanitizer_cov_trace_pc() #14
  %53 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %head.i, align 8
  %55 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %network_header.i, align 4
  %conv.i.i = zext i16 %56 to i32
  %add.ptr.i.i = getelementptr i8, ptr %54, i32 %conv.i.i
  %saddr = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 8
  %57 = ptrtoint ptr %saddr to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %saddr, align 4
  %skc_rcv_saddr = getelementptr inbounds %struct.anon.48, ptr %call15, i32 0, i32 1
  %59 = ptrtoint ptr %skc_rcv_saddr to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %skc_rcv_saddr, align 4
  %60 = load ptr, ptr %head.i, align 8
  %61 = load i16, ptr %network_header.i, align 4
  %conv.i.i248 = zext i16 %61 to i32
  %add.ptr.i.i249 = getelementptr i8, ptr %60, i32 %conv.i.i248
  %daddr = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i249, i32 0, i32 9
  %62 = ptrtoint ptr %daddr to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %daddr, align 4
  %64 = ptrtoint ptr %call15 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %call15, align 8
  br label %sw.epilog59

sw.bb44:                                          ; preds = %if.end31
  %skc_family46 = getelementptr inbounds %struct.sock_common, ptr %call15, i32 0, i32 3
  %65 = ptrtoint ptr %skc_family46 to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 10, ptr %skc_family46, align 8
  %66 = ptrtoint ptr %len9.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %len9.i, align 4
  %68 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %data_len.i.i, align 8
  %sub.i252 = sub i32 %67, %69
  call void @__sanitizer_cov_trace_const_cmp4(i32 39, i32 %sub.i252)
  %cmp48 = icmp ugt i32 %sub.i252, 39
  br i1 %cmp48, label %if.then50, label %sw.bb44.sw.epilog59_crit_edge

sw.bb44.sw.epilog59_crit_edge:                    ; preds = %sw.bb44
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog59

if.then50:                                        ; preds = %sw.bb44
  call void @__sanitizer_cov_trace_pc() #14
  %skc_v6_rcv_saddr = getelementptr inbounds %struct.sock_common, ptr %call15, i32 0, i32 11
  %70 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %head.i, align 8
  %72 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %network_header.i, align 4
  %conv.i.i255 = zext i16 %73 to i32
  %add.ptr.i.i256 = getelementptr i8, ptr %71, i32 %conv.i.i255
  %saddr53 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i256, i32 0, i32 5
  %74 = call ptr @memcpy(ptr %skc_v6_rcv_saddr, ptr %saddr53, i32 16)
  %skc_v6_daddr = getelementptr inbounds %struct.sock_common, ptr %call15, i32 0, i32 10
  %75 = load ptr, ptr %head.i, align 8
  %76 = load i16, ptr %network_header.i, align 4
  %conv.i.i259 = zext i16 %76 to i32
  %add.ptr.i.i260 = getelementptr i8, ptr %75, i32 %conv.i.i259
  %daddr56 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i260, i32 0, i32 6
  %77 = call ptr @memcpy(ptr %skc_v6_daddr, ptr %daddr56, i32 16)
  br label %sw.epilog59

sw.epilog59:                                      ; preds = %if.then50, %sw.bb44.sw.epilog59_crit_edge, %if.then38, %sw.bb34.sw.epilog59_crit_edge, %if.end31.sw.epilog59_crit_edge
  br i1 %is_l2.1.off0, label %if.then61, label %sw.epilog59.if.end63_crit_edge

sw.epilog59.if.end63_crit_edge:                   ; preds = %sw.epilog59
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end63

if.then61:                                        ; preds = %sw.epilog59
  call void @__sanitizer_cov_trace_pc() #14
  %78 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %data.i, align 4
  %add.ptr.i262 = getelementptr i8, ptr %79, i32 -14
  store ptr %add.ptr.i262, ptr %data.i, align 4
  %80 = ptrtoint ptr %len9.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %len9.i, align 4
  %add.i263 = add i32 %81, 14
  store i32 %add.i263, ptr %len9.i, align 4
  br label %if.end63

if.end63:                                         ; preds = %if.then61, %sw.epilog59.if.end63_crit_edge
  br i1 %is_direct_pkt_access.0.off0, label %if.then65, label %if.end63.if.end66_crit_edge

if.end63.if.end66_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end66

if.then65:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #14
  %82 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %data.i, align 4
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call19, i32 0, i32 17
  %84 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %end.i.i.i, align 4
  %meta_len.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %85, i32 0, i32 1
  %86 = ptrtoint ptr %meta_len.i.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %meta_len.i.i, align 1
  %conv.i265 = zext i8 %87 to i32
  %idx.neg.i = sub nsw i32 0, %conv.i265
  %add.ptr.i266 = getelementptr i8, ptr %83, i32 %idx.neg.i
  %data_meta.i = getelementptr inbounds %struct.sk_buff, ptr %call19, i32 0, i32 3, i32 28
  %88 = ptrtoint ptr %data_meta.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %add.ptr.i266, ptr %data_meta.i, align 4
  %89 = ptrtoint ptr %len9.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %len9.i, align 4
  %91 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i = sub i32 %90, %92
  %add.ptr4.i = getelementptr i8, ptr %83, i32 %sub.i.i
  %data_end.i = getelementptr inbounds %struct.sk_buff, ptr %call19, i32 0, i32 3, i32 32
  %93 = ptrtoint ptr %data_end.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %add.ptr4.i, ptr %data_end.i, align 4
  br label %if.end66

if.end66:                                         ; preds = %if.then65, %if.end63.if.end66_crit_edge
  %call67 = tail call fastcc i32 @convert___skb_to_skb(ptr noundef nonnull %call19, ptr noundef %call9)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %if.end70, label %if.end66.out_crit_edge

if.end66.out_crit_edge:                           ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end70:                                         ; preds = %if.end66
  %call71 = call fastcc i32 @bpf_test_run(ptr noundef %prog, ptr noundef nonnull %call19, i32 noundef %13, ptr noundef nonnull %retval2, ptr noundef nonnull %duration, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %if.end74, label %if.end70.out_crit_edge

if.end70.out_crit_edge:                           ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end74:                                         ; preds = %if.end70
  br i1 %is_l2.1.off0, label %if.end74.if.end88_crit_edge, label %if.then76

if.end74.if.end88_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end88

if.then76:                                        ; preds = %if.end74
  %94 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %data.i, align 4
  %96 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i270 = ptrtoint ptr %95 to i32
  %sub.ptr.rhs.cast.i271 = ptrtoint ptr %97 to i32
  %sub.ptr.sub.i272 = sub i32 %sub.ptr.lhs.cast.i270, %sub.ptr.rhs.cast.i271
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %sub.ptr.sub.i272)
  %cmp78 = icmp ult i32 %sub.ptr.sub.i272, 14
  br i1 %cmp78, label %if.then80, label %if.then76.if.end86_crit_edge

if.then76.if.end86_crit_edge:                     ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end86

if.then80:                                        ; preds = %if.then76
  %add = sub nuw nsw i32 29, %sub.ptr.sub.i272
  %and = and i32 %add, -16
  %call82 = tail call i32 @pskb_expand_head(ptr noundef nonnull %call19, i32 noundef %and, i32 noundef 0, i32 noundef 1051840) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82)
  %tobool83.not = icmp eq i32 %call82, 0
  br i1 %tobool83.not, label %if.then80.if.end86_crit_edge, label %if.then80.out_crit_edge

if.then80.out_crit_edge:                          ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.then80.if.end86_crit_edge:                     ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end86

if.end86:                                         ; preds = %if.then80.if.end86_crit_edge, %if.then76.if.end86_crit_edge
  %98 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %data.i, align 4
  %add.ptr.i279 = getelementptr i8, ptr %99, i32 -14
  store ptr %add.ptr.i279, ptr %data.i, align 4
  %100 = ptrtoint ptr %len9.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %len9.i, align 4
  %add.i281 = add i32 %101, 14
  store i32 %add.i281, ptr %len9.i, align 4
  %102 = call ptr @memset(ptr %add.ptr.i279, i32 0, i32 14)
  br label %if.end88

if.end88:                                         ; preds = %if.end86, %if.end74.if.end88_crit_edge
  tail call fastcc void @convert_skb_to___skb(ptr noundef nonnull %call19, ptr noundef %call9)
  %103 = ptrtoint ptr %len9.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %len9.i, align 4
  %105 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %106)
  %tobool.i.not = icmp eq i32 %106, 0
  br i1 %tobool.i.not, label %if.end88.if.end131_crit_edge, label %land.rhs

if.end88.if.end131_crit_edge:                     ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end131

land.rhs:                                         ; preds = %if.end88
  %.b239 = load i1, ptr @bpf_prog_test_run_skb.__already_done, align 1
  br i1 %.b239, label %land.rhs.if.then129_crit_edge, label %if.then98, !prof !66

land.rhs.if.then129_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then129

if.then98:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @bpf_prog_test_run_skb.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 684, i32 noundef 9, ptr noundef null) #12
  br label %if.then129

if.then129:                                       ; preds = %if.then98, %land.rhs.if.then129_crit_edge
  %107 = ptrtoint ptr %len9.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %len9.i, align 4
  %109 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %data_len.i.i, align 8
  %sub.i285 = sub i32 %108, %110
  br label %if.end131

if.end131:                                        ; preds = %if.then129, %if.end88.if.end131_crit_edge
  %size.0 = phi i32 [ %sub.i285, %if.then129 ], [ %104, %if.end88.if.end131_crit_edge ]
  %111 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %data.i, align 4
  %113 = ptrtoint ptr %retval2 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %retval2, align 4
  %115 = ptrtoint ptr %duration to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %duration, align 4
  %call133 = tail call fastcc i32 @bpf_test_finish(ptr noundef %kattr, ptr noundef %uattr, ptr noundef %112, i32 noundef %size.0, i32 noundef %114, i32 noundef %116)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call133)
  %tobool134.not = icmp eq i32 %call133, 0
  br i1 %tobool134.not, label %if.then135, label %if.end131.out_crit_edge

if.end131.out_crit_edge:                          ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.then135:                                       ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #14
  %call136 = tail call fastcc i32 @bpf_ctx_finish(ptr noundef %kattr, ptr noundef %uattr, ptr noundef %call9, i32 noundef 192)
  br label %out

out:                                              ; preds = %if.then135, %if.end131.out_crit_edge, %if.then80.out_crit_edge, %if.end70.out_crit_edge, %if.end66.out_crit_edge
  %ret.1 = phi i32 [ %call67, %if.end66.out_crit_edge ], [ %call71, %if.end70.out_crit_edge ], [ %call133, %if.end131.out_crit_edge ], [ %call136, %if.then135 ], [ -12, %if.then80.out_crit_edge ]
  %tobool138.not = icmp eq ptr %dev.0, null
  br i1 %tobool138.not, label %out.if.end144_crit_edge, label %land.lhs.true139

out.if.end144_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end144

land.lhs.true139:                                 ; preds = %out
  %117 = ptrtoint ptr %loopback_dev to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %loopback_dev, align 4
  %cmp141.not = icmp eq ptr %dev.0, %118
  br i1 %cmp141.not, label %land.lhs.true139.if.end144_crit_edge, label %if.then143

land.lhs.true139.if.end144_crit_edge:             ; preds = %land.lhs.true139
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end144

if.then143:                                       ; preds = %land.lhs.true139
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @dev_put(ptr noundef nonnull %dev.0)
  br label %if.end144

if.end144:                                        ; preds = %if.then143, %land.lhs.true139.if.end144_crit_edge, %out.if.end144_crit_edge, %if.then25.if.end144_crit_edge
  %ret.1289 = phi i32 [ %ret.1, %if.then143 ], [ %ret.1, %land.lhs.true139.if.end144_crit_edge ], [ %ret.1, %out.if.end144_crit_edge ], [ -19, %if.then25.if.end144_crit_edge ]
  tail call void @kfree_skb_reason(ptr noundef nonnull %call19, i32 noundef 0) #12
  tail call void @sk_free(ptr noundef nonnull %call15) #12
  tail call void @kfree(ptr noundef %call9) #12
  br label %cleanup145

cleanup145:                                       ; preds = %if.end144, %if.then21, %if.then17, %if.then11, %if.then6, %lor.lhs.false.cleanup145_crit_edge, %entry.cleanup145_crit_edge
  %retval.0 = phi i32 [ %20, %if.then6 ], [ %21, %if.then11 ], [ %ret.1289, %if.end144 ], [ -12, %if.then21 ], [ -12, %if.then17 ], [ -22, %lor.lhs.false.cleanup145_crit_edge ], [ -22, %entry.cleanup145_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %duration) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval2) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @bpf_test_init(ptr nocapture noundef readonly %kattr, i32 noundef %size, i32 noundef %headroom, i32 noundef %tailroom) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %data_in2 = getelementptr inbounds %struct.anon.100, ptr %kattr, i32 0, i32 4
  %0 = ptrtoint ptr %data_in2 to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %data_in2, align 8
  %conv3 = trunc i64 %1 to i32
  %2 = inttoptr i32 %conv3 to ptr
  %data_size_in = getelementptr inbounds %struct.anon.100, ptr %kattr, i32 0, i32 2
  %3 = ptrtoint ptr %data_size_in to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %data_size_in, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %size)
  %cmp4 = icmp ult i32 %size, 14
  br i1 %cmp4, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %5 = add i32 %headroom, %tailroom
  %sub6 = sub i32 4096, %5
  call void @__sanitizer_cov_trace_cmp4(i32 %sub6, i32 %size)
  %cmp7 = icmp ult i32 %sub6, %size
  br i1 %cmp7, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %size)
  %cmp9 = icmp ugt i32 %4, %size
  br i1 %cmp9, label %if.end.cleanup_crit_edge, label %if.end8.i.i41

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end8.i.i41:                                    ; preds = %if.end
  %add14 = add i32 %5, %size
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add14, i32 noundef 1052096) #16
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %if.end8.i.i41.cleanup_crit_edge, label %if.end18

if.end8.i.i41.cleanup_crit_edge:                  ; preds = %if.end8.i.i41
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end18:                                         ; preds = %if.end8.i.i41
  %add.ptr = getelementptr i8, ptr %call9.i.i, i32 %headroom
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp9.i.i = icmp slt i32 %4, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %if.end18
  %.b71.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i, label %land.rhs16.i.i.if.then21_crit_edge, label %if.then27.i.i, !prof !66

land.rhs16.i.i.if.then21_crit_edge:               ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then21

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 230, i32 noundef 9, ptr noundef null) #12
  br label %if.then21

if.then.i.i.i:                                    ; preds = %if.end18
  tail call void @__check_object_size(ptr noundef %add.ptr, i32 noundef %4, i1 noundef zeroext false) #12
  tail call void @__might_fault(ptr noundef nonnull @.str.6, i32 noundef 156) #12
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i, label %if.then.i.i.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.i.i.if.end.i.i_crit_edge:               ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i.i.i
  %6 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 %4, i32 -1226833920) #15, !srcloc !89
  %asmresult.i.i = extractvalue { i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !66

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr, i32 noundef %4) #12
  %7 = tail call i32 @llvm.read_register.i32(metadata !56) #12
  %and.i.i.i.i.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 4
  %9 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #9, !srcloc !90
  %and.i.i.i.i = and i32 %9, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #12, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !92
  %call1.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef %add.ptr, ptr noundef %2, i32 noundef %4) #12
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %9) #12, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !92
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.then.i.i.i.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %4, %if.then.i.i.i.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %4, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end.i.i.cleanup_crit_edge, label %if.then11.i.i, !prof !66

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i = sub i32 %4, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr, i32 %sub.i.i
  %10 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %if.then21

if.then21:                                        ; preds = %if.then11.i.i, %if.then27.i.i, %land.rhs16.i.i.if.then21_crit_edge
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then21, %if.end.i.i.cleanup_crit_edge, %if.end8.i.i41.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -14 to ptr), %if.then21 ], [ inttoptr (i32 -22 to ptr), %lor.lhs.false.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -90 to ptr), %if.end.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end8.i.i41.cleanup_crit_edge ], [ %call9.i.i, %if.end.i.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @bpf_ctx_init(ptr nocapture noundef readonly %kattr, i32 noundef %max_size) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx_in = getelementptr inbounds %struct.anon.100, ptr %kattr, i32 0, i32 10
  %0 = ptrtoint ptr %ctx_in to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %ctx_in, align 8
  %conv2 = trunc i64 %1 to i32
  %2 = inttoptr i32 %conv2 to ptr
  %ctx_size_in = getelementptr inbounds %struct.anon.100, ptr %kattr, i32 0, i32 8
  %3 = ptrtoint ptr %ctx_size_in to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ctx_size_in, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv2)
  %tobool.not = icmp eq i32 %conv2, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end8.i.i56_crit_edge

entry.if.end8.i.i56_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8.i.i56

land.lhs.true:                                    ; preds = %entry
  %ctx_out = getelementptr inbounds %struct.anon.100, ptr %kattr, i32 0, i32 11
  %5 = ptrtoint ptr %ctx_out to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %ctx_out, align 8
  %conv9 = trunc i64 %6 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv9)
  %tobool10.not = icmp eq i32 %conv9, 0
  br i1 %tobool10.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end8.i.i56_crit_edge

land.lhs.true.if.end8.i.i56_crit_edge:            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8.i.i56

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end8.i.i56:                                    ; preds = %land.lhs.true.if.end8.i.i56_crit_edge, %entry.if.end8.i.i56_crit_edge
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %max_size, i32 noundef 1052096) #16
  %tobool11.not = icmp eq ptr %call9.i.i, null
  %brmerge = select i1 %tobool11.not, i1 true, i1 %tobool.not
  %.mux = select i1 %tobool11.not, ptr inttoptr (i32 -12 to ptr), ptr %call9.i.i
  br i1 %brmerge, label %if.end8.i.i56.cleanup_crit_edge, label %if.then16

if.end8.i.i56.cleanup_crit_edge:                  ; preds = %if.end8.i.i56
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then16:                                        ; preds = %if.end8.i.i56
  %.fca.0.insert = insertvalue [2 x i32] poison, i32 %conv2, 0
  %.fca.1.insert = insertvalue [2 x i32] %.fca.0.insert, i32 0, 1
  %call17 = tail call i32 @bpf_check_uarg_tail_zero([2 x i32] %.fca.1.insert, i32 noundef %max_size, i32 noundef %4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end21, label %if.then19

if.then19:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #12
  %7 = inttoptr i32 %call17 to ptr
  br label %cleanup

if.end21:                                         ; preds = %if.then16
  %8 = tail call i32 @llvm.umin.i32(i32 %4, i32 %max_size)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp9.i.i = icmp slt i32 %8, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %if.end21
  %.b71.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i, label %land.rhs16.i.i.if.then27_crit_edge, label %if.then27.i.i, !prof !66

land.rhs16.i.i.if.then27_crit_edge:               ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then27

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 230, i32 noundef 9, ptr noundef null) #12
  br label %if.then27

if.then.i.i.i:                                    ; preds = %if.end21
  tail call void @__check_object_size(ptr noundef nonnull %call9.i.i, i32 noundef %8, i1 noundef zeroext false) #12
  tail call void @__might_fault(ptr noundef nonnull @.str.6, i32 noundef 156) #12
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i, label %if.then.i.i.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.i.i.if.end.i.i_crit_edge:               ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i.i.i
  %9 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %2, i32 %8, i32 -1226833920) #15, !srcloc !89
  %asmresult.i.i = extractvalue { i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !66

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call9.i.i, i32 noundef %8) #12
  %10 = tail call i32 @llvm.read_register.i32(metadata !56) #12
  %and.i.i.i.i.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 4
  %12 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #9, !srcloc !90
  %and.i.i.i.i = and i32 %12, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #12, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !92
  %call1.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef nonnull %call9.i.i, ptr noundef nonnull %2, i32 noundef %8) #12
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %12) #12, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !92
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.then.i.i.i.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %8, %if.then.i.i.i.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %8, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end.i.i.cleanup_crit_edge, label %if.then11.i.i, !prof !66

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i = sub i32 %8, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %call9.i.i, i32 %sub.i.i
  %13 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %if.then27

if.then27:                                        ; preds = %if.then11.i.i, %if.then27.i.i, %land.rhs16.i.i.if.then27_crit_edge
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then27, %if.end.i.i.cleanup_crit_edge, %if.then19, %if.end8.i.i56.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi ptr [ %7, %if.then19 ], [ inttoptr (i32 -14 to ptr), %if.then27 ], [ null, %land.lhs.true.cleanup_crit_edge ], [ %.mux, %if.end8.i.i56.cleanup_crit_edge ], [ %call9.i.i, %if.end.i.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sk_alloc(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_init_data(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @build_skb(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_by_index(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @convert___skb_to_skb(ptr nocapture noundef %skb, ptr noundef %__skb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %cb1 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %tobool.not = icmp eq ptr %__skb, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call ptr @memchr_inv(ptr noundef nonnull %__skb, i32 noundef 0, i32 noundef 8) #12
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %add.ptr.i = getelementptr i8, ptr %__skb, i32 12
  %call.i79 = tail call ptr @memchr_inv(ptr noundef %add.ptr.i, i32 noundef 0, i32 noundef 20) #12
  %tobool.not.i80 = icmp eq ptr %call.i79, null
  br i1 %tobool.not.i80, label %if.end6, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end6:                                          ; preds = %if.end3
  %add.ptr.i81 = getelementptr i8, ptr %__skb, i32 44
  %call.i82 = tail call ptr @memchr_inv(ptr noundef %add.ptr.i81, i32 noundef 0, i32 noundef 4) #12
  %tobool.not.i83 = icmp eq ptr %call.i82, null
  br i1 %tobool.not.i83, label %if.end9, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end9:                                          ; preds = %if.end6
  %add.ptr.i84 = getelementptr i8, ptr %__skb, i32 68
  %call.i85 = tail call ptr @memchr_inv(ptr noundef %add.ptr.i84, i32 noundef 0, i32 noundef 84) #12
  %tobool.not.i86 = icmp eq ptr %call.i85, null
  br i1 %tobool.not.i86, label %if.end12, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end12:                                         ; preds = %if.end9
  %add.ptr.i87 = getelementptr i8, ptr %__skb, i32 168
  %call.i88 = tail call ptr @memchr_inv(ptr noundef %add.ptr.i87, i32 noundef 0, i32 noundef 8) #12
  %tobool.not.i89 = icmp eq ptr %call.i88, null
  br i1 %tobool.not.i89, label %if.end15, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end15:                                         ; preds = %if.end12
  %add.ptr.i90 = getelementptr i8, ptr %__skb, i32 180
  %call.i91 = tail call ptr @memchr_inv(ptr noundef %add.ptr.i90, i32 noundef 0, i32 noundef 4) #12
  %tobool.not.i92 = icmp eq ptr %call.i91, null
  br i1 %tobool.not.i92, label %if.end18, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end18:                                         ; preds = %if.end15
  %add.ptr.i93 = getelementptr i8, ptr %__skb, i32 192
  %call.i94 = tail call ptr @memchr_inv(ptr noundef %add.ptr.i93, i32 noundef 0, i32 noundef 0) #12
  %tobool.not.i95 = icmp eq ptr %call.i94, null
  br i1 %tobool.not.i95, label %if.end21, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end21:                                         ; preds = %if.end18
  %mark = getelementptr inbounds %struct.__sk_buff, ptr %__skb, i32 0, i32 2
  %0 = ptrtoint ptr %mark to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mark, align 8
  %2 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 13
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %1, ptr %2, align 4
  %priority = getelementptr inbounds %struct.__sk_buff, ptr %__skb, i32 0, i32 8
  %4 = ptrtoint ptr %priority to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %priority, align 8
  %priority22 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 6
  %6 = ptrtoint ptr %priority22 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %priority22, align 4
  %ingress_ifindex = getelementptr inbounds %struct.__sk_buff, ptr %__skb, i32 0, i32 9
  %7 = ptrtoint ptr %ingress_ifindex to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ingress_ifindex, align 4
  %skb_iif = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 7
  %9 = ptrtoint ptr %skb_iif to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %skb_iif, align 8
  %tstamp = getelementptr inbounds %struct.__sk_buff, ptr %__skb, i32 0, i32 27
  %10 = ptrtoint ptr %tstamp to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %tstamp, align 8
  %12 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 2
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %11, ptr %12, align 8
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 8
  %cb23 = getelementptr inbounds %struct.__sk_buff, ptr %__skb, i32 0, i32 12
  %14 = call ptr @memcpy(ptr %data, ptr %cb23, i32 20)
  %wire_len = getelementptr inbounds %struct.__sk_buff, ptr %__skb, i32 0, i32 28
  %15 = ptrtoint ptr %wire_len to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %wire_len, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp = icmp eq i32 %16, 0
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %17 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %len, align 4
  br i1 %cmp, label %if.end21.if.end35_crit_edge, label %if.else

if.end21.if.end35_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35

if.else:                                          ; preds = %if.end21
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %18)
  %cmp28 = icmp ult i32 %16, %18
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %16)
  %cmp30 = icmp ugt i32 %16, 65536
  %or.cond = or i1 %cmp30, %cmp28
  br i1 %or.cond, label %if.else.cleanup_crit_edge, label %if.else.if.end35_crit_edge

if.else.if.end35_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end35:                                         ; preds = %if.else.if.end35_crit_edge, %if.end21.if.end35_crit_edge
  %storemerge = phi i32 [ %16, %if.else.if.end35_crit_edge ], [ %18, %if.end21.if.end35_crit_edge ]
  %19 = ptrtoint ptr %cb1 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %storemerge, ptr %cb1, align 4
  %gso_segs = getelementptr inbounds %struct.__sk_buff, ptr %__skb, i32 0, i32 29
  %20 = ptrtoint ptr %gso_segs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %gso_segs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %21)
  %cmp36 = icmp ugt i32 %21, 65535
  br i1 %cmp36, label %if.end35.cleanup_crit_edge, label %if.end38

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end38:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  %conv = trunc i32 %21 to i16
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %22 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %end.i, align 4
  %gso_segs41 = getelementptr inbounds %struct.skb_shared_info, ptr %23, i32 0, i32 5
  %24 = ptrtoint ptr %gso_segs41 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %conv, ptr %gso_segs41, align 2
  %gso_size = getelementptr inbounds %struct.__sk_buff, ptr %__skb, i32 0, i32 31
  %25 = ptrtoint ptr %gso_size to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %gso_size, align 8
  %conv42 = trunc i32 %26 to i16
  %27 = load ptr, ptr %end.i, align 4
  %gso_size44 = getelementptr inbounds %struct.skb_shared_info, ptr %27, i32 0, i32 4
  %28 = ptrtoint ptr %gso_size44 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %conv42, ptr %gso_size44, align 4
  %hwtstamp = getelementptr inbounds %struct.__sk_buff, ptr %__skb, i32 0, i32 33
  %29 = ptrtoint ptr %hwtstamp to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %hwtstamp, align 8
  %31 = load ptr, ptr %end.i, align 4
  %hwtstamps = getelementptr inbounds %struct.skb_shared_info, ptr %31, i32 0, i32 7
  %32 = ptrtoint ptr %hwtstamps to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %30, ptr %hwtstamps, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end38, %if.end35.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end38 ], [ 0, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end3.cleanup_crit_edge ], [ -22, %if.end6.cleanup_crit_edge ], [ -22, %if.end9.cleanup_crit_edge ], [ -22, %if.end12.cleanup_crit_edge ], [ -22, %if.end15.cleanup_crit_edge ], [ -22, %if.end18.cleanup_crit_edge ], [ -22, %if.else.cleanup_crit_edge ], [ -22, %if.end35.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bpf_test_run(ptr noundef %prog, ptr noundef %ctx, i32 noundef %repeat, ptr nocapture noundef writeonly %retval1, ptr nocapture noundef writeonly %time, i1 noundef zeroext %xdp) unnamed_addr #0 align 64 {
entry:
  %item = alloca %struct.bpf_prog_array_item, align 8
  %run_ctx = alloca %struct.bpf_cg_run_ctx, align 4
  %t = alloca %struct.bpf_test_timer, align 8
  %ret = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %item) #12
  %0 = ptrtoint ptr %item to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %item, align 8
  store ptr %prog, ptr %item, align 8
  %1 = getelementptr inbounds %struct.bpf_prog_array_item, ptr %item, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 0, ptr %1, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %run_ctx) #12
  %3 = getelementptr inbounds %struct.bpf_cg_run_ctx, ptr %run_ctx, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %t) #12
  %4 = call ptr @memcpy(ptr %t, ptr @__const.bpf_test_run.t, i32 24)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret) #12
  %5 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %ret, align 4, !annotation !68
  %call = tail call ptr @bpf_cgroup_storage_alloc(ptr noundef %prog, i32 noundef 0) #12
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call, ptr %1, align 8
  %cmp.i117 = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i117, label %entry.if.then_crit_edge, label %for.inc10

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.then:                                          ; preds = %for.inc10.if.then_crit_edge, %entry.if.then_crit_edge
  %stype.0122.lcssa = phi i32 [ 0, %entry.if.then_crit_edge ], [ 1, %for.inc10.if.then_crit_edge ]
  %arrayidx.le = getelementptr [2 x ptr], ptr %1, i32 0, i32 %stype.0122.lcssa
  %7 = ptrtoint ptr %arrayidx.le to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %arrayidx.le, align 4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  tail call void @bpf_cgroup_storage_free(ptr noundef %9) #12
  %arrayidx9.1 = getelementptr inbounds [2 x ptr], ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %arrayidx9.1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx9.1, align 4
  tail call void @bpf_cgroup_storage_free(ptr noundef %11) #12
  br label %cleanup

for.inc10:                                        ; preds = %entry
  %call.1 = tail call ptr @bpf_cgroup_storage_alloc(ptr noundef %prog, i32 noundef 1) #12
  %arrayidx.1 = getelementptr inbounds [2 x ptr], ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.1, ptr %arrayidx.1, align 4
  %cmp.i117.1 = icmp ugt ptr %call.1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i117.1, label %for.inc10.if.then_crit_edge, label %for.inc10.1

for.inc10.if.then_crit_edge:                      ; preds = %for.inc10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

for.inc10.1:                                      ; preds = %for.inc10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %repeat)
  %tobool.not = icmp eq i32 %repeat, 0
  %spec.store.select = select i1 %tobool.not, i32 1, i32 %repeat
  call fastcc void @bpf_test_timer_enter(ptr noundef nonnull %t)
  %13 = tail call i32 @llvm.read_register.i32(metadata !56) #12
  %and.i.i118 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i118 to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %task.i, align 8
  %bpf_ctx.i = getelementptr inbounds %struct.task_struct, ptr %16, i32 0, i32 217
  %17 = ptrtoint ptr %bpf_ctx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bpf_ctx.i, align 8
  store ptr %run_ctx, ptr %bpf_ctx.i, align 8
  %insnsi.i.i53 = getelementptr inbounds %struct.bpf_prog, ptr %prog, i32 1
  %bpf_func.i.i54 = getelementptr inbounds %struct.bpf_prog, ptr %prog, i32 0, i32 9
  %stats9.i.i55 = getelementptr inbounds %struct.bpf_prog, ptr %prog, i32 0, i32 7
  %rxq.i = getelementptr inbounds %struct.xdp_buff, ptr %ctx, i32 0, i32 4
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %for.inc10.1
  %19 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %item, ptr %3, align 4
  call void @__cant_migrate(ptr noundef nonnull @.str.13, i32 noundef 613) #12
  br i1 %xdp, label %if.then18, label %if.else

if.then18:                                        ; preds = %do.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @bpf_stats_enabled_key, ptr blockaddress(@bpf_test_run, %if.then.i.i)) #12
          to label %if.else.i.i [label %if.then.i.i], !srcloc !70

if.then.i.i:                                      ; preds = %if.then18
  %call3.i.i = call i64 @sched_clock() #12
  %20 = ptrtoint ptr %bpf_func.i.i54 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bpf_func.i.i54, align 4
  %call4.i.i = call i32 @bpf_dispatcher_xdp_func(ptr noundef %ctx, ptr noundef %insnsi.i.i53, ptr noundef %21) #12, !callees !93
  %22 = ptrtoint ptr %stats9.i.i55 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %stats9.i.i55, align 4
  %24 = ptrtoint ptr %23 to i32
  %25 = call i32 @llvm.read_register.i32(metadata !56) #12
  %and.i.i.i = and i32 %25, -16384
  %26 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %28
  %29 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %30, %24
  %31 = inttoptr i32 %add.i.i to ptr
  %syncp.i.i = getelementptr inbounds %struct.bpf_prog_stats, ptr %31, i32 0, i32 3
  %32 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !78
  %and.i.i.i.i = and i32 %32, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %if.then.i.i.do.body12.i.i.i_crit_edge

if.then.i.i.do.body12.i.i.i_crit_edge:            ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body12.i.i.i

if.then.i.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @trace_hardirqs_off() #12
  br label %do.body12.i.i.i

do.body12.i.i.i:                                  ; preds = %if.then.i.i.i, %if.then.i.i.do.body12.i.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %33 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool.not.i.i.i.i = icmp eq i32 %33, 0
  br i1 %tobool.not.i.i.i.i, label %do.body12.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, label %land.lhs.true.i.i.i.i

do.body12.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %do.body12.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %u64_stats_update_begin_irqsave.exit.i.i

land.lhs.true.i.i.i.i:                            ; preds = %do.body12.i.i.i
  %34 = call i32 @llvm.read_register.i32(metadata !56) #12
  %and.i.i.i.i.i.i.i = and i32 %34, -16384
  %35 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %37, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !79
  %38 = call i32 @llvm.read_register.i32(metadata !56) #12
  %and.i.i.i.i.i = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i.i.i.i to ptr
  %cpu.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 3
  %40 = ptrtoint ptr %cpu.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %cpu.i.i.i.i, align 4
  %arrayidx.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %41
  %42 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %43, ptrtoint (ptr @lockdep_recursion to i32)
  %44 = inttoptr i32 %add.i.i.i.i to ptr
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %44, align 4
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !80
  %47 = call i32 @llvm.read_register.i32(metadata !56) #12
  %and.i.i.i7.i.i.i.i = and i32 %47, -16384
  %48 = inttoptr i32 %and.i.i.i7.i.i.i.i to ptr
  %preempt_count.i.i8.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %preempt_count.i.i8.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %preempt_count.i.i8.i.i.i.i, align 4
  %sub.i.i.i.i.i = add i32 %50, -1
  store volatile i32 %sub.i.i.i.i.i, ptr %preempt_count.i.i8.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool20.not.i.i.i.i = icmp eq i32 %46, 0
  br i1 %tobool20.not.i.i.i.i, label %land.rhs.i.i.i.i, label %land.lhs.true.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge

land.lhs.true.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %u64_stats_update_begin_irqsave.exit.i.i

land.rhs.i.i.i.i:                                 ; preds = %land.lhs.true.i.i.i.i
  %51 = call i32 @llvm.read_register.i32(metadata !56) #12
  %and.i.i.i.i.i.i = and i32 %51, -16384
  %52 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp.i.i.i.i = icmp eq i32 %54, 0
  br i1 %cmp.i.i.i.i, label %land.rhs22.i.i.i.i, label %land.rhs.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge

land.rhs.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %u64_stats_update_begin_irqsave.exit.i.i

land.rhs22.i.i.i.i:                               ; preds = %land.rhs.i.i.i.i
  %55 = call i32 @llvm.read_register.i32(metadata !56) #12
  %and.i.i.i9.i.i.i.i = and i32 %55, -16384
  %56 = inttoptr i32 %and.i.i.i9.i.i.i.i to ptr
  %preempt_count.i.i10.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %preempt_count.i.i10.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile i32, ptr %preempt_count.i.i10.i.i.i.i, align 4
  %add.i11.i.i.i.i = add i32 %58, 1
  store volatile i32 %add.i11.i.i.i.i, ptr %preempt_count.i.i10.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !81
  %59 = ptrtoint ptr %cpu.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %cpu.i.i.i.i, align 4
  %arrayidx46.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %60
  %61 = ptrtoint ptr %arrayidx46.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx46.i.i.i.i, align 4
  %add47.i.i.i.i = add i32 %62, ptrtoint (ptr @hardirqs_enabled to i32)
  %63 = inttoptr i32 %add47.i.i.i.i to ptr
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load volatile i32, ptr %63, align 4
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !82
  %66 = call i32 @llvm.read_register.i32(metadata !56) #12
  %and.i.i.i12.i.i.i.i = and i32 %66, -16384
  %67 = inttoptr i32 %and.i.i.i12.i.i.i.i to ptr
  %preempt_count.i.i13.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %67, i32 0, i32 1
  %68 = ptrtoint ptr %preempt_count.i.i13.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile i32, ptr %preempt_count.i.i13.i.i.i.i, align 4
  %sub.i14.i.i.i.i = add i32 %69, -1
  store volatile i32 %sub.i14.i.i.i.i, ptr %preempt_count.i.i13.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool54.not.i.i.i.i = icmp eq i32 %65, 0
  br i1 %tobool54.not.i.i.i.i, label %land.rhs22.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, label %land.rhs58.i.i.i.i

land.rhs22.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %land.rhs22.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %u64_stats_update_begin_irqsave.exit.i.i

land.rhs58.i.i.i.i:                               ; preds = %land.rhs22.i.i.i.i
  %.b1.i.i.i.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i.i.i.i, label %land.rhs58.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, label %if.then.i.i.i.i, !prof !66

land.rhs58.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %land.rhs58.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %u64_stats_update_begin_irqsave.exit.i.i

if.then.i.i.i.i:                                  ; preds = %land.rhs58.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 271, i32 noundef 9, ptr noundef null) #12
  br label %u64_stats_update_begin_irqsave.exit.i.i

u64_stats_update_begin_irqsave.exit.i.i:          ; preds = %if.then.i.i.i.i, %land.rhs58.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, %land.rhs22.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, %land.rhs.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, %land.lhs.true.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, %do.body12.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge
  %70 = ptrtoint ptr %syncp.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %syncp.i.i, align 4
  %inc.i.i.i.i.i.i = add i32 %71, 1
  store i32 %inc.i.i.i.i.i.i, ptr %syncp.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !83
  %dep_map.i.i.i.i.i = getelementptr inbounds %struct.bpf_prog_stats, ptr %31, i32 0, i32 3, i32 0, i32 1
  %72 = call ptr @llvm.returnaddress(i32 0) #12
  %73 = ptrtoint ptr %72 to i32
  call void @lock_acquire(ptr noundef %dep_map.i.i.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %73) #12
  %74 = ptrtoint ptr %31 to i32
  call void @__asan_load8_noabort(i32 %74)
  %75 = load i64, ptr %31, align 8
  %inc.i.i.i = add i64 %75, 1
  store i64 %inc.i.i.i, ptr %31, align 8
  %nsecs.i.i = getelementptr inbounds %struct.bpf_prog_stats, ptr %31, i32 0, i32 1
  %call13.i.i = call i64 @sched_clock() #12
  %sub.i.i = sub i64 %call13.i.i, %call3.i.i
  %conv.i.i.i = and i64 %sub.i.i, 4294967295
  %76 = ptrtoint ptr %nsecs.i.i to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %nsecs.i.i, align 8
  %add.i.i.i = add i64 %conv.i.i.i, %77
  store i64 %add.i.i.i, ptr %nsecs.i.i, align 8
  call void @lock_release(ptr noundef %dep_map.i.i.i.i.i, i32 noundef %73) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !84
  %78 = ptrtoint ptr %syncp.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %syncp.i.i, align 4
  %inc.i.i.i.i.i = add i32 %79, 1
  store i32 %inc.i.i.i.i.i, ptr %syncp.i.i, align 4
  br i1 %tobool.not.i.i.i, label %if.then8.i.i.i, label %u64_stats_update_begin_irqsave.exit.i.i.do.body10.i.i.i_crit_edge

u64_stats_update_begin_irqsave.exit.i.i.do.body10.i.i.i_crit_edge: ; preds = %u64_stats_update_begin_irqsave.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body10.i.i.i

if.then8.i.i.i:                                   ; preds = %u64_stats_update_begin_irqsave.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @trace_hardirqs_on() #12
  br label %do.body10.i.i.i

do.body10.i.i.i:                                  ; preds = %if.then8.i.i.i, %u64_stats_update_begin_irqsave.exit.i.i.do.body10.i.i.i_crit_edge
  %80 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !85
  %and.i.i.i30.i.i = and i32 %80, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i30.i.i)
  %tobool18.not.i.i.i = icmp eq i32 %and.i.i.i30.i.i, 0
  br i1 %tobool18.not.i.i.i, label %if.then22.i.i.i, label %do.body10.i.i.i.u64_stats_update_end_irqrestore.exit.i.i_crit_edge, !prof !67

do.body10.i.i.i.u64_stats_update_end_irqrestore.exit.i.i_crit_edge: ; preds = %do.body10.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %u64_stats_update_end_irqrestore.exit.i.i

if.then22.i.i.i:                                  ; preds = %do.body10.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @warn_bogus_irq_restore() #12
  br label %u64_stats_update_end_irqrestore.exit.i.i

u64_stats_update_end_irqrestore.exit.i.i:         ; preds = %if.then22.i.i.i, %do.body10.i.i.i.u64_stats_update_end_irqrestore.exit.i.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %32) #12, !srcloc !86
  br label %__bpf_prog_run.exit.i

if.else.i.i:                                      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #14
  %81 = ptrtoint ptr %bpf_func.i.i54 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %bpf_func.i.i54, align 4
  %call18.i.i = call i32 @bpf_dispatcher_xdp_func(ptr noundef %ctx, ptr noundef %insnsi.i.i53, ptr noundef %82) #12, !callees !93
  br label %__bpf_prog_run.exit.i

__bpf_prog_run.exit.i:                            ; preds = %if.else.i.i, %u64_stats_update_end_irqrestore.exit.i.i
  %ret.0.i.i = phi i32 [ %call4.i.i, %u64_stats_update_end_irqrestore.exit.i.i ], [ %call18.i.i, %if.else.i.i ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @bpf_master_redirect_enabled_key, ptr blockaddress(@bpf_test_run, %l_yes.i.i)) #12
          to label %arch_static_branch.exit.i [label %l_yes.i.i], !srcloc !70

l_yes.i.i:                                        ; preds = %__bpf_prog_run.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %arch_static_branch.exit.i

arch_static_branch.exit.i:                        ; preds = %l_yes.i.i, %__bpf_prog_run.exit.i
  %retval.0.i.i = phi i1 [ true, %l_yes.i.i ], [ false, %__bpf_prog_run.exit.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %ret.0.i.i)
  %cmp.i = icmp eq i32 %ret.0.i.i, 3
  %or.cond.i = select i1 %retval.0.i.i, i1 %cmp.i, i1 false
  br i1 %or.cond.i, label %land.lhs.true.i, label %arch_static_branch.exit.i.do.cond_crit_edge

arch_static_branch.exit.i.do.cond_crit_edge:      ; preds = %arch_static_branch.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.cond

land.lhs.true.i:                                  ; preds = %arch_static_branch.exit.i
  %83 = ptrtoint ptr %rxq.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %rxq.i, align 4
  %85 = ptrtoint ptr %84 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %84, align 128
  %flags.i.i = getelementptr inbounds %struct.net_device, ptr %86, i32 0, i32 14
  %87 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %flags.i.i, align 8
  %and.i.i = and i32 %88, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.do.cond_crit_edge, label %netif_is_bond_slave.exit.i

land.lhs.true.i.do.cond_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.cond

netif_is_bond_slave.exit.i:                       ; preds = %land.lhs.true.i
  %priv_flags.i.i = getelementptr inbounds %struct.net_device, ptr %86, i32 0, i32 15
  %89 = ptrtoint ptr %priv_flags.i.i to i32
  call void @__asan_load8_noabort(i32 %89)
  %90 = load i64, ptr %priv_flags.i.i, align 16
  %and1.i.i = and i64 %90, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1.i.i)
  %tobool2.i.not.i = icmp eq i64 %and1.i.i, 0
  br i1 %tobool2.i.not.i, label %netif_is_bond_slave.exit.i.do.cond_crit_edge, label %if.then5.i

netif_is_bond_slave.exit.i.do.cond_crit_edge:     ; preds = %netif_is_bond_slave.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.cond

if.then5.i:                                       ; preds = %netif_is_bond_slave.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %call6.i = call i32 @xdp_master_redirect(ptr noundef %ctx) #12
  br label %do.cond

if.else:                                          ; preds = %do.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @bpf_stats_enabled_key, ptr blockaddress(@bpf_test_run, %if.then.i.i63)) #12
          to label %if.else.i.i114 [label %if.then.i.i63], !srcloc !70

if.then.i.i63:                                    ; preds = %if.else
  %call3.i.i52 = call i64 @sched_clock() #12
  %91 = ptrtoint ptr %bpf_func.i.i54 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %bpf_func.i.i54, align 4
  %call.i1.i = call i32 %92(ptr noundef %ctx, ptr noundef %insnsi.i.i53) #12
  %93 = ptrtoint ptr %stats9.i.i55 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %stats9.i.i55, align 4
  %95 = ptrtoint ptr %94 to i32
  %96 = call i32 @llvm.read_register.i32(metadata !56) #12
  %and.i.i.i56 = and i32 %96, -16384
  %97 = inttoptr i32 %and.i.i.i56 to ptr
  %cpu.i.i57 = getelementptr inbounds %struct.thread_info, ptr %97, i32 0, i32 3
  %98 = ptrtoint ptr %cpu.i.i57 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %cpu.i.i57, align 4
  %arrayidx.i.i58 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %99
  %100 = ptrtoint ptr %arrayidx.i.i58 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %arrayidx.i.i58, align 4
  %add.i.i59 = add i32 %101, %95
  %102 = inttoptr i32 %add.i.i59 to ptr
  %syncp.i.i60 = getelementptr inbounds %struct.bpf_prog_stats, ptr %102, i32 0, i32 3
  %103 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !78
  %and.i.i.i.i61 = and i32 %103, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i61)
  %tobool.not.i.i.i62 = icmp eq i32 %and.i.i.i.i61, 0
  br i1 %tobool.not.i.i.i62, label %if.then.i.i.i64, label %if.then.i.i63.do.body12.i.i.i66_crit_edge

if.then.i.i63.do.body12.i.i.i66_crit_edge:        ; preds = %if.then.i.i63
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body12.i.i.i66

if.then.i.i.i64:                                  ; preds = %if.then.i.i63
  call void @__sanitizer_cov_trace_pc() #14
  call void @trace_hardirqs_off() #12
  br label %do.body12.i.i.i66

do.body12.i.i.i66:                                ; preds = %if.then.i.i.i64, %if.then.i.i63.do.body12.i.i.i66_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %104 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %104)
  %tobool.not.i.i.i.i65 = icmp eq i32 %104, 0
  br i1 %tobool.not.i.i.i.i65, label %do.body12.i.i.i66.u64_stats_update_begin_irqsave.exit.i.i105_crit_edge, label %land.lhs.true.i.i.i.i78

do.body12.i.i.i66.u64_stats_update_begin_irqsave.exit.i.i105_crit_edge: ; preds = %do.body12.i.i.i66
  call void @__sanitizer_cov_trace_pc() #14
  br label %u64_stats_update_begin_irqsave.exit.i.i105

land.lhs.true.i.i.i.i78:                          ; preds = %do.body12.i.i.i66
  %105 = call i32 @llvm.read_register.i32(metadata !56) #12
  %and.i.i.i.i.i.i.i67 = and i32 %105, -16384
  %106 = inttoptr i32 %and.i.i.i.i.i.i.i67 to ptr
  %preempt_count.i.i.i.i.i.i68 = getelementptr inbounds %struct.thread_info, ptr %106, i32 0, i32 1
  %107 = ptrtoint ptr %preempt_count.i.i.i.i.i.i68 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i68, align 4
  %add.i.i.i.i.i69 = add i32 %108, 1
  store volatile i32 %add.i.i.i.i.i69, ptr %preempt_count.i.i.i.i.i.i68, align 4
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !79
  %109 = call i32 @llvm.read_register.i32(metadata !56) #12
  %and.i.i.i.i.i70 = and i32 %109, -16384
  %110 = inttoptr i32 %and.i.i.i.i.i70 to ptr
  %cpu.i.i.i.i71 = getelementptr inbounds %struct.thread_info, ptr %110, i32 0, i32 3
  %111 = ptrtoint ptr %cpu.i.i.i.i71 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %cpu.i.i.i.i71, align 4
  %arrayidx.i.i.i.i72 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %112
  %113 = ptrtoint ptr %arrayidx.i.i.i.i72 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %arrayidx.i.i.i.i72, align 4
  %add.i.i.i.i73 = add i32 %114, ptrtoint (ptr @lockdep_recursion to i32)
  %115 = inttoptr i32 %add.i.i.i.i73 to ptr
  %116 = ptrtoint ptr %115 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load volatile i32, ptr %115, align 4
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !80
  %118 = call i32 @llvm.read_register.i32(metadata !56) #12
  %and.i.i.i7.i.i.i.i74 = and i32 %118, -16384
  %119 = inttoptr i32 %and.i.i.i7.i.i.i.i74 to ptr
  %preempt_count.i.i8.i.i.i.i75 = getelementptr inbounds %struct.thread_info, ptr %119, i32 0, i32 1
  %120 = ptrtoint ptr %preempt_count.i.i8.i.i.i.i75 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load volatile i32, ptr %preempt_count.i.i8.i.i.i.i75, align 4
  %sub.i.i.i.i.i76 = add i32 %121, -1
  store volatile i32 %sub.i.i.i.i.i76, ptr %preempt_count.i.i8.i.i.i.i75, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %117)
  %tobool20.not.i.i.i.i77 = icmp eq i32 %117, 0
  br i1 %tobool20.not.i.i.i.i77, label %land.rhs.i.i.i.i82, label %land.lhs.true.i.i.i.i78.u64_stats_update_begin_irqsave.exit.i.i105_crit_edge

land.lhs.true.i.i.i.i78.u64_stats_update_begin_irqsave.exit.i.i105_crit_edge: ; preds = %land.lhs.true.i.i.i.i78
  call void @__sanitizer_cov_trace_pc() #14
  br label %u64_stats_update_begin_irqsave.exit.i.i105

land.rhs.i.i.i.i82:                               ; preds = %land.lhs.true.i.i.i.i78
  %122 = call i32 @llvm.read_register.i32(metadata !56) #12
  %and.i.i.i.i.i.i79 = and i32 %122, -16384
  %123 = inttoptr i32 %and.i.i.i.i.i.i79 to ptr
  %preempt_count.i.i.i.i.i80 = getelementptr inbounds %struct.thread_info, ptr %123, i32 0, i32 1
  %124 = ptrtoint ptr %preempt_count.i.i.i.i.i80 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load volatile i32, ptr %preempt_count.i.i.i.i.i80, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %125)
  %cmp.i.i.i.i81 = icmp eq i32 %125, 0
  br i1 %cmp.i.i.i.i81, label %land.rhs22.i.i.i.i92, label %land.rhs.i.i.i.i82.u64_stats_update_begin_irqsave.exit.i.i105_crit_edge

land.rhs.i.i.i.i82.u64_stats_update_begin_irqsave.exit.i.i105_crit_edge: ; preds = %land.rhs.i.i.i.i82
  call void @__sanitizer_cov_trace_pc() #14
  br label %u64_stats_update_begin_irqsave.exit.i.i105

land.rhs22.i.i.i.i92:                             ; preds = %land.rhs.i.i.i.i82
  %126 = call i32 @llvm.read_register.i32(metadata !56) #12
  %and.i.i.i9.i.i.i.i83 = and i32 %126, -16384
  %127 = inttoptr i32 %and.i.i.i9.i.i.i.i83 to ptr
  %preempt_count.i.i10.i.i.i.i84 = getelementptr inbounds %struct.thread_info, ptr %127, i32 0, i32 1
  %128 = ptrtoint ptr %preempt_count.i.i10.i.i.i.i84 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load volatile i32, ptr %preempt_count.i.i10.i.i.i.i84, align 4
  %add.i11.i.i.i.i85 = add i32 %129, 1
  store volatile i32 %add.i11.i.i.i.i85, ptr %preempt_count.i.i10.i.i.i.i84, align 4
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !81
  %130 = ptrtoint ptr %cpu.i.i.i.i71 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %cpu.i.i.i.i71, align 4
  %arrayidx46.i.i.i.i86 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %131
  %132 = ptrtoint ptr %arrayidx46.i.i.i.i86 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %arrayidx46.i.i.i.i86, align 4
  %add47.i.i.i.i87 = add i32 %133, ptrtoint (ptr @hardirqs_enabled to i32)
  %134 = inttoptr i32 %add47.i.i.i.i87 to ptr
  %135 = ptrtoint ptr %134 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load volatile i32, ptr %134, align 4
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !82
  %137 = call i32 @llvm.read_register.i32(metadata !56) #12
  %and.i.i.i12.i.i.i.i88 = and i32 %137, -16384
  %138 = inttoptr i32 %and.i.i.i12.i.i.i.i88 to ptr
  %preempt_count.i.i13.i.i.i.i89 = getelementptr inbounds %struct.thread_info, ptr %138, i32 0, i32 1
  %139 = ptrtoint ptr %preempt_count.i.i13.i.i.i.i89 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load volatile i32, ptr %preempt_count.i.i13.i.i.i.i89, align 4
  %sub.i14.i.i.i.i90 = add i32 %140, -1
  store volatile i32 %sub.i14.i.i.i.i90, ptr %preempt_count.i.i13.i.i.i.i89, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %136)
  %tobool54.not.i.i.i.i91 = icmp eq i32 %136, 0
  br i1 %tobool54.not.i.i.i.i91, label %land.rhs22.i.i.i.i92.u64_stats_update_begin_irqsave.exit.i.i105_crit_edge, label %land.rhs58.i.i.i.i94

land.rhs22.i.i.i.i92.u64_stats_update_begin_irqsave.exit.i.i105_crit_edge: ; preds = %land.rhs22.i.i.i.i92
  call void @__sanitizer_cov_trace_pc() #14
  br label %u64_stats_update_begin_irqsave.exit.i.i105

land.rhs58.i.i.i.i94:                             ; preds = %land.rhs22.i.i.i.i92
  %.b1.i.i.i.i93 = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i.i.i.i93, label %land.rhs58.i.i.i.i94.u64_stats_update_begin_irqsave.exit.i.i105_crit_edge, label %if.then.i.i.i.i95, !prof !66

land.rhs58.i.i.i.i94.u64_stats_update_begin_irqsave.exit.i.i105_crit_edge: ; preds = %land.rhs58.i.i.i.i94
  call void @__sanitizer_cov_trace_pc() #14
  br label %u64_stats_update_begin_irqsave.exit.i.i105

if.then.i.i.i.i95:                                ; preds = %land.rhs58.i.i.i.i94
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 271, i32 noundef 9, ptr noundef null) #12
  br label %u64_stats_update_begin_irqsave.exit.i.i105

u64_stats_update_begin_irqsave.exit.i.i105:       ; preds = %if.then.i.i.i.i95, %land.rhs58.i.i.i.i94.u64_stats_update_begin_irqsave.exit.i.i105_crit_edge, %land.rhs22.i.i.i.i92.u64_stats_update_begin_irqsave.exit.i.i105_crit_edge, %land.rhs.i.i.i.i82.u64_stats_update_begin_irqsave.exit.i.i105_crit_edge, %land.lhs.true.i.i.i.i78.u64_stats_update_begin_irqsave.exit.i.i105_crit_edge, %do.body12.i.i.i66.u64_stats_update_begin_irqsave.exit.i.i105_crit_edge
  %141 = ptrtoint ptr %syncp.i.i60 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %syncp.i.i60, align 4
  %inc.i.i.i.i.i.i96 = add i32 %142, 1
  store i32 %inc.i.i.i.i.i.i96, ptr %syncp.i.i60, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !83
  %dep_map.i.i.i.i.i97 = getelementptr inbounds %struct.bpf_prog_stats, ptr %102, i32 0, i32 3, i32 0, i32 1
  %143 = call ptr @llvm.returnaddress(i32 0) #12
  %144 = ptrtoint ptr %143 to i32
  call void @lock_acquire(ptr noundef %dep_map.i.i.i.i.i97, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %144) #12
  %145 = ptrtoint ptr %102 to i32
  call void @__asan_load8_noabort(i32 %145)
  %146 = load i64, ptr %102, align 8
  %inc.i.i.i98 = add i64 %146, 1
  store i64 %inc.i.i.i98, ptr %102, align 8
  %nsecs.i.i99 = getelementptr inbounds %struct.bpf_prog_stats, ptr %102, i32 0, i32 1
  %call13.i.i100 = call i64 @sched_clock() #12
  %sub.i.i101 = sub i64 %call13.i.i100, %call3.i.i52
  %conv.i.i.i102 = and i64 %sub.i.i101, 4294967295
  %147 = ptrtoint ptr %nsecs.i.i99 to i32
  call void @__asan_load8_noabort(i32 %147)
  %148 = load i64, ptr %nsecs.i.i99, align 8
  %add.i.i.i103 = add i64 %conv.i.i.i102, %148
  store i64 %add.i.i.i103, ptr %nsecs.i.i99, align 8
  call void @lock_release(ptr noundef %dep_map.i.i.i.i.i97, i32 noundef %144) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !84
  %149 = ptrtoint ptr %syncp.i.i60 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %syncp.i.i60, align 4
  %inc.i.i.i.i.i104 = add i32 %150, 1
  store i32 %inc.i.i.i.i.i104, ptr %syncp.i.i60, align 4
  br i1 %tobool.not.i.i.i62, label %if.then8.i.i.i106, label %u64_stats_update_begin_irqsave.exit.i.i105.do.body10.i.i.i109_crit_edge

u64_stats_update_begin_irqsave.exit.i.i105.do.body10.i.i.i109_crit_edge: ; preds = %u64_stats_update_begin_irqsave.exit.i.i105
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body10.i.i.i109

if.then8.i.i.i106:                                ; preds = %u64_stats_update_begin_irqsave.exit.i.i105
  call void @__sanitizer_cov_trace_pc() #14
  call void @trace_hardirqs_on() #12
  br label %do.body10.i.i.i109

do.body10.i.i.i109:                               ; preds = %if.then8.i.i.i106, %u64_stats_update_begin_irqsave.exit.i.i105.do.body10.i.i.i109_crit_edge
  %151 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !85
  %and.i.i.i30.i.i107 = and i32 %151, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i30.i.i107)
  %tobool18.not.i.i.i108 = icmp eq i32 %and.i.i.i30.i.i107, 0
  br i1 %tobool18.not.i.i.i108, label %if.then22.i.i.i110, label %do.body10.i.i.i109.u64_stats_update_end_irqrestore.exit.i.i111_crit_edge, !prof !67

do.body10.i.i.i109.u64_stats_update_end_irqrestore.exit.i.i111_crit_edge: ; preds = %do.body10.i.i.i109
  call void @__sanitizer_cov_trace_pc() #14
  br label %u64_stats_update_end_irqrestore.exit.i.i111

if.then22.i.i.i110:                               ; preds = %do.body10.i.i.i109
  call void @__sanitizer_cov_trace_pc() #14
  call void @warn_bogus_irq_restore() #12
  br label %u64_stats_update_end_irqrestore.exit.i.i111

u64_stats_update_end_irqrestore.exit.i.i111:      ; preds = %if.then22.i.i.i110, %do.body10.i.i.i109.u64_stats_update_end_irqrestore.exit.i.i111_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %103) #12, !srcloc !86
  br label %do.cond

if.else.i.i114:                                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %152 = ptrtoint ptr %bpf_func.i.i54 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %bpf_func.i.i54, align 4
  %call.i.i = call i32 %153(ptr noundef %ctx, ptr noundef %insnsi.i.i53) #12
  br label %do.cond

do.cond:                                          ; preds = %if.else.i.i114, %u64_stats_update_end_irqrestore.exit.i.i111, %if.then5.i, %netif_is_bond_slave.exit.i.do.cond_crit_edge, %land.lhs.true.i.do.cond_crit_edge, %arch_static_branch.exit.i.do.cond_crit_edge
  %storemerge = phi i32 [ %call6.i, %if.then5.i ], [ 3, %netif_is_bond_slave.exit.i.do.cond_crit_edge ], [ %ret.0.i.i, %arch_static_branch.exit.i.do.cond_crit_edge ], [ 3, %land.lhs.true.i.do.cond_crit_edge ], [ %call.i1.i, %u64_stats_update_end_irqrestore.exit.i.i111 ], [ %call.i.i, %if.else.i.i114 ]
  %154 = ptrtoint ptr %retval1 to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 %storemerge, ptr %retval1, align 4
  %call22 = call fastcc zeroext i1 @bpf_test_timer_continue(ptr noundef nonnull %t, i32 noundef %spec.store.select, ptr noundef nonnull %ret, ptr noundef %time)
  br i1 %call22, label %do.cond.do.body_crit_edge, label %do.end

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

do.end:                                           ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #14
  %155 = call i32 @llvm.read_register.i32(metadata !56) #12
  %and.i.i119 = and i32 %155, -16384
  %156 = inttoptr i32 %and.i.i119 to ptr
  %task.i120 = getelementptr inbounds %struct.thread_info, ptr %156, i32 0, i32 2
  %157 = ptrtoint ptr %task.i120 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %task.i120, align 8
  %bpf_ctx.i121 = getelementptr inbounds %struct.task_struct, ptr %158, i32 0, i32 217
  %159 = ptrtoint ptr %bpf_ctx.i121 to i32
  call void @__asan_store4_noabort(i32 %159)
  store ptr %18, ptr %bpf_ctx.i121, align 8
  call fastcc void @bpf_test_timer_leave(ptr noundef nonnull %t)
  %160 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %1, align 8
  call void @bpf_cgroup_storage_free(ptr noundef %161) #12
  %162 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %arrayidx.1, align 4
  call void @bpf_cgroup_storage_free(ptr noundef %163) #12
  %164 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %ret, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then
  %retval.0 = phi i32 [ %165, %do.end ], [ -12, %if.then ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %t) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %run_ctx) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %item) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_expand_head(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @convert_skb_to___skb(ptr nocapture noundef readonly %skb, ptr noundef writeonly %__skb) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %__skb, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %cb1 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 13
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 4
  %mark = getelementptr inbounds %struct.__sk_buff, ptr %__skb, i32 0, i32 2
  %3 = ptrtoint ptr %mark to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %mark, align 8
  %priority = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 6
  %4 = ptrtoint ptr %priority to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %priority, align 4
  %priority2 = getelementptr inbounds %struct.__sk_buff, ptr %__skb, i32 0, i32 8
  %6 = ptrtoint ptr %priority2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %priority2, align 8
  %skb_iif = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 7
  %7 = ptrtoint ptr %skb_iif to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %skb_iif, align 8
  %ingress_ifindex = getelementptr inbounds %struct.__sk_buff, ptr %__skb, i32 0, i32 9
  %9 = ptrtoint ptr %ingress_ifindex to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %ingress_ifindex, align 4
  %10 = getelementptr inbounds %struct.anon.58, ptr %skb, i32 0, i32 2
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 8
  %ifindex = getelementptr inbounds %struct.net_device, ptr %12, i32 0, i32 17
  %13 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ifindex, align 4
  %ifindex3 = getelementptr inbounds %struct.__sk_buff, ptr %__skb, i32 0, i32 10
  %15 = ptrtoint ptr %ifindex3 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %ifindex3, align 8
  %16 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 2
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %16, align 8
  %tstamp = getelementptr inbounds %struct.__sk_buff, ptr %__skb, i32 0, i32 27
  %19 = ptrtoint ptr %tstamp to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %18, ptr %tstamp, align 8
  %cb4 = getelementptr inbounds %struct.__sk_buff, ptr %__skb, i32 0, i32 12
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 8
  %20 = call ptr @memcpy(ptr %cb4, ptr %data, i32 20)
  %21 = ptrtoint ptr %cb1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cb1, align 4
  %wire_len = getelementptr inbounds %struct.__sk_buff, ptr %__skb, i32 0, i32 28
  %23 = ptrtoint ptr %wire_len to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %wire_len, align 8
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %24 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %end.i, align 4
  %gso_segs = getelementptr inbounds %struct.skb_shared_info, ptr %25, i32 0, i32 5
  %26 = ptrtoint ptr %gso_segs to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %gso_segs, align 2
  %conv = zext i16 %27 to i32
  %gso_segs6 = getelementptr inbounds %struct.__sk_buff, ptr %__skb, i32 0, i32 29
  %28 = ptrtoint ptr %gso_segs6 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %conv, ptr %gso_segs6, align 4
  %29 = load ptr, ptr %end.i, align 4
  %hwtstamps = getelementptr inbounds %struct.skb_shared_info, ptr %29, i32 0, i32 7
  %30 = ptrtoint ptr %hwtstamps to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %hwtstamps, align 8
  %hwtstamp8 = getelementptr inbounds %struct.__sk_buff, ptr %__skb, i32 0, i32 33
  %32 = ptrtoint ptr %hwtstamp8 to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %31, ptr %hwtstamp8, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bpf_test_finish(ptr nocapture noundef readonly %kattr, ptr noundef %uattr, ptr noundef %data, i32 noundef %size, i32 noundef %retval1, i32 noundef %duration) unnamed_addr #0 align 64 {
entry:
  %size.addr = alloca i32, align 4
  %retval.addr = alloca i32, align 4
  %duration.addr = alloca i32, align 4
  %err = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %size.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %size, ptr %size.addr, align 4
  %1 = ptrtoint ptr %retval.addr to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %retval1, ptr %retval.addr, align 4
  %2 = ptrtoint ptr %duration.addr to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %duration, ptr %duration.addr, align 4
  %data_out3 = getelementptr inbounds %struct.anon.100, ptr %kattr, i32 0, i32 5
  %3 = ptrtoint ptr %data_out3 to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %data_out3, align 8
  %conv4 = trunc i64 %4 to i32
  %5 = inttoptr i32 %conv4 to ptr
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err) #12
  %data_size_out = getelementptr inbounds %struct.anon.100, ptr %kattr, i32 0, i32 3
  %6 = ptrtoint ptr %data_size_out to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %data_size_out, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp ne i32 %7, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %size)
  %cmp6 = icmp ult i32 %7, %size
  %or.cond = and i1 %tobool.not, %cmp6
  %spec.store.select = select i1 %or.cond, i32 -28, i32 -14
  %8 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %spec.store.select, ptr %err, align 4
  %spec.select = select i1 %or.cond, i32 %7, i32 %size
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv4)
  %tobool9.not = icmp eq i32 %conv4, 0
  br i1 %tobool9.not, label %entry.if.end13_crit_edge, label %if.end8.i.i

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

if.end8.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %cmp9.i.i = icmp slt i32 %spec.select, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %if.end8.i.i
  %.b71.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i, label %land.rhs16.i.i.out_crit_edge, label %if.then27.i.i, !prof !66

land.rhs16.i.i.out_crit_edge:                     ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 230, i32 noundef 9, ptr noundef null) #12
  br label %out

if.then.i.i.i:                                    ; preds = %if.end8.i.i
  tail call void @__check_object_size(ptr noundef %data, i32 noundef %spec.select, i1 noundef zeroext true) #12
  tail call void @__might_fault(ptr noundef nonnull @.str.6, i32 noundef 174) #12
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i, label %if.then.i.i.i.copy_to_user.exit_crit_edge, label %if.end.i.i

if.then.i.i.i.copy_to_user.exit_crit_edge:        ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.then.i.i.i
  %9 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %5, i32 %spec.select, i32 -1226833920) #15, !srcloc !69
  %asmresult.i.i = extractvalue { i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %data, i32 noundef %spec.select) #12
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef nonnull %5, ptr noundef %data, i32 noundef %spec.select) #12
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.then.i.i.i.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %spec.select, %if.then.i.i.i.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %spec.select, %if.end.i.i.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool11.not = icmp eq i32 %n.addr.0.i, 0
  br i1 %tobool11.not, label %copy_to_user.exit.if.end13_crit_edge, label %copy_to_user.exit.out_crit_edge

copy_to_user.exit.out_crit_edge:                  ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

copy_to_user.exit.if.end13_crit_edge:             ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

if.end13:                                         ; preds = %copy_to_user.exit.if.end13_crit_edge, %entry.if.end13_crit_edge
  %data_size_out14 = getelementptr inbounds %struct.anon.100, ptr %uattr, i32 0, i32 3
  tail call void @__might_fault(ptr noundef nonnull @.str.6, i32 noundef 174) #12
  %call.i.i48 = tail call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i48, label %if.end13.out_crit_edge, label %if.end.i.i52

if.end13.out_crit_edge:                           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end.i.i52:                                     ; preds = %if.end13
  %10 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %data_size_out14, i32 4, i32 -1226833920) #15, !srcloc !69
  %asmresult.i.i50 = extractvalue { i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i50)
  %cmp.i6.i51 = icmp eq i32 %asmresult.i.i50, 0
  br i1 %cmp.i6.i51, label %copy_to_user.exit57, label %if.end.i.i52.out_crit_edge

if.end.i.i52.out_crit_edge:                       ; preds = %if.end.i.i52
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

copy_to_user.exit57:                              ; preds = %if.end.i.i52
  %call.i.i.i53 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %size.addr, i32 noundef 4) #12
  %call.i12.i.i54 = call i32 @arm_copy_to_user(ptr noundef %data_size_out14, ptr noundef nonnull %size.addr, i32 noundef 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i54)
  %tobool16.not = icmp eq i32 %call.i12.i.i54, 0
  br i1 %tobool16.not, label %if.end18, label %copy_to_user.exit57.out_crit_edge

copy_to_user.exit57.out_crit_edge:                ; preds = %copy_to_user.exit57
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end18:                                         ; preds = %copy_to_user.exit57
  %retval19 = getelementptr inbounds %struct.anon.100, ptr %uattr, i32 0, i32 1
  call void @__might_fault(ptr noundef nonnull @.str.6, i32 noundef 174) #12
  %call.i.i64 = call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i64, label %if.end18.out_crit_edge, label %if.end.i.i68

if.end18.out_crit_edge:                           ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end.i.i68:                                     ; preds = %if.end18
  %11 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %retval19, i32 4, i32 -1226833920) #15, !srcloc !69
  %asmresult.i.i66 = extractvalue { i32, i32 } %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i66)
  %cmp.i6.i67 = icmp eq i32 %asmresult.i.i66, 0
  br i1 %cmp.i6.i67, label %copy_to_user.exit73, label %if.end.i.i68.out_crit_edge

if.end.i.i68.out_crit_edge:                       ; preds = %if.end.i.i68
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

copy_to_user.exit73:                              ; preds = %if.end.i.i68
  %call.i.i.i69 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %retval.addr, i32 noundef 4) #12
  %call.i12.i.i70 = call i32 @arm_copy_to_user(ptr noundef %retval19, ptr noundef nonnull %retval.addr, i32 noundef 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i70)
  %tobool21.not = icmp eq i32 %call.i12.i.i70, 0
  br i1 %tobool21.not, label %if.end23, label %copy_to_user.exit73.out_crit_edge

copy_to_user.exit73.out_crit_edge:                ; preds = %copy_to_user.exit73
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end23:                                         ; preds = %copy_to_user.exit73
  %duration24 = getelementptr inbounds %struct.anon.100, ptr %uattr, i32 0, i32 7
  call void @__might_fault(ptr noundef nonnull @.str.6, i32 noundef 174) #12
  %call.i.i80 = call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i80, label %if.end23.out_crit_edge, label %if.end.i.i84

if.end23.out_crit_edge:                           ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end.i.i84:                                     ; preds = %if.end23
  %12 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %duration24, i32 4, i32 -1226833920) #15, !srcloc !69
  %asmresult.i.i82 = extractvalue { i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i82)
  %cmp.i6.i83 = icmp eq i32 %asmresult.i.i82, 0
  br i1 %cmp.i6.i83, label %copy_to_user.exit89, label %if.end.i.i84.out_crit_edge

if.end.i.i84.out_crit_edge:                       ; preds = %if.end.i.i84
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

copy_to_user.exit89:                              ; preds = %if.end.i.i84
  %call.i.i.i85 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %duration.addr, i32 noundef 4) #12
  %call.i12.i.i86 = call i32 @arm_copy_to_user(ptr noundef %duration24, ptr noundef nonnull %duration.addr, i32 noundef 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i86)
  %tobool26.not = icmp eq i32 %call.i12.i.i86, 0
  br i1 %tobool26.not, label %if.end28, label %copy_to_user.exit89.out_crit_edge

copy_to_user.exit89.out_crit_edge:                ; preds = %copy_to_user.exit89
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end28:                                         ; preds = %copy_to_user.exit89
  %13 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -28, i32 %14)
  %cmp29.not = icmp eq i32 %14, -28
  br i1 %cmp29.not, label %if.end28.out_crit_edge, label %if.then31

if.end28.out_crit_edge:                           ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.then31:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  %15 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %err, align 4
  br label %out

out:                                              ; preds = %if.then31, %if.end28.out_crit_edge, %copy_to_user.exit89.out_crit_edge, %if.end.i.i84.out_crit_edge, %if.end23.out_crit_edge, %copy_to_user.exit73.out_crit_edge, %if.end.i.i68.out_crit_edge, %if.end18.out_crit_edge, %copy_to_user.exit57.out_crit_edge, %if.end.i.i52.out_crit_edge, %if.end13.out_crit_edge, %copy_to_user.exit.out_crit_edge, %if.then27.i.i, %land.rhs16.i.i.out_crit_edge
  call fastcc void @trace_bpf_test_finish(ptr noundef nonnull %err)
  %16 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %err, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err) #12
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bpf_ctx_finish(ptr nocapture noundef readonly %kattr, ptr noundef %uattr, ptr noundef %data, i32 noundef %size) unnamed_addr #0 align 64 {
entry:
  %size.addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %size.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %size, ptr %size.addr, align 4
  %ctx_out = getelementptr inbounds %struct.anon.100, ptr %kattr, i32 0, i32 11
  %1 = ptrtoint ptr %ctx_out to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %ctx_out, align 8
  %conv2 = trunc i64 %2 to i32
  %3 = inttoptr i32 %conv2 to ptr
  %tobool.not = icmp eq ptr %data, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv2)
  %tobool3.not = icmp eq i32 %conv2, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool3.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %ctx_size_out = getelementptr inbounds %struct.anon.100, ptr %kattr, i32 0, i32 9
  %4 = ptrtoint ptr %ctx_size_out to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ctx_size_out, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %size)
  %cmp4 = icmp ult i32 %5, %size
  %spec.store.select = select i1 %cmp4, i32 -28, i32 0
  %err.0 = select i1 %cmp4, i32 -28, i32 -14
  %6 = tail call i32 @llvm.umin.i32(i32 %5, i32 %size)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp9.i.i = icmp slt i32 %6, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %if.end
  %.b71.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i, label %land.rhs16.i.i.cleanup_crit_edge, label %if.then27.i.i, !prof !66

land.rhs16.i.i.cleanup_crit_edge:                 ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 230, i32 noundef 9, ptr noundef null) #12
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.end
  tail call void @__check_object_size(ptr noundef nonnull %data, i32 noundef %6, i1 noundef zeroext true) #12
  tail call void @__might_fault(ptr noundef nonnull @.str.6, i32 noundef 174) #12
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i, label %if.then.i.i.i.copy_to_user.exit_crit_edge, label %if.end.i.i

if.then.i.i.i.copy_to_user.exit_crit_edge:        ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.then.i.i.i
  %7 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %3, i32 %6, i32 -1226833920) #15, !srcloc !69
  %asmresult.i.i = extractvalue { i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull %data, i32 noundef %6) #12
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef %3, ptr noundef nonnull %data, i32 noundef %6) #12
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.then.i.i.i.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %6, %if.then.i.i.i.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %6, %if.end.i.i.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool9.not = icmp eq i32 %n.addr.0.i, 0
  br i1 %tobool9.not, label %if.end11, label %copy_to_user.exit.cleanup_crit_edge

copy_to_user.exit.cleanup_crit_edge:              ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end11:                                         ; preds = %copy_to_user.exit
  %ctx_size_out12 = getelementptr inbounds %struct.anon.100, ptr %uattr, i32 0, i32 9
  tail call void @__might_fault(ptr noundef nonnull @.str.6, i32 noundef 174) #12
  %call.i.i37 = tail call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i37, label %if.end11.cleanup_crit_edge, label %if.end.i.i41

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i.i41:                                     ; preds = %if.end11
  %8 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %ctx_size_out12, i32 4, i32 -1226833920) #15, !srcloc !69
  %asmresult.i.i39 = extractvalue { i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i39)
  %cmp.i6.i40 = icmp eq i32 %asmresult.i.i39, 0
  br i1 %cmp.i6.i40, label %copy_to_user.exit46, label %if.end.i.i41.cleanup_crit_edge

if.end.i.i41.cleanup_crit_edge:                   ; preds = %if.end.i.i41
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

copy_to_user.exit46:                              ; preds = %if.end.i.i41
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i42 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %size.addr, i32 noundef 4) #12
  %call.i12.i.i43 = call i32 @arm_copy_to_user(ptr noundef %ctx_size_out12, ptr noundef nonnull %size.addr, i32 noundef 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i43)
  %tobool14.not = icmp eq i32 %call.i12.i.i43, 0
  %spec.select = select i1 %tobool14.not, i32 %spec.store.select, i32 %err.0
  br label %cleanup

cleanup:                                          ; preds = %copy_to_user.exit46, %if.end.i.i41.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %copy_to_user.exit.cleanup_crit_edge, %if.then27.i.i, %land.rhs16.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %err.0, %copy_to_user.exit.cleanup_crit_edge ], [ %err.0, %if.then27.i.i ], [ %err.0, %land.rhs16.i.i.cleanup_crit_edge ], [ %err.0, %if.end11.cleanup_crit_edge ], [ %err.0, %if.end.i.i41.cleanup_crit_edge ], [ %spec.select, %copy_to_user.exit46 ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dev_put(ptr noundef readonly %dev) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %tobool.not = icmp eq ptr %dev, null
  br i1 %tobool.not, label %entry.if.end37_crit_edge, label %do.body1

entry.if.end37_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end37

do.body1:                                         ; preds = %entry
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !78
  %pcpu_refcnt = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 118
  %1 = ptrtoint ptr %pcpu_refcnt to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pcpu_refcnt, align 4
  %3 = ptrtoint ptr %2 to i32
  %4 = tail call i32 @llvm.read_register.i32(metadata !56) #12
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
  %add = add i32 %9, %3
  %10 = inttoptr i32 %add to ptr
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %add13 = add i32 %12, -1
  store i32 %add13, ptr %10, align 4
  %13 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !85
  %and.i.i = and i32 %13, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool24.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool24.not, label %if.then28, label %do.body1.do.end30_crit_edge, !prof !67

do.body1.do.end30_crit_edge:                      ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end30

if.then28:                                        ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @warn_bogus_irq_restore() #12
  br label %do.end30

do.end30:                                         ; preds = %if.then28, %do.body1.do.end30_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #12, !srcloc !86
  br label %if.end37

if.end37:                                         ; preds = %do.end30, %entry.if.end37_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bpf_prog_test_run_xdp(ptr noundef %prog, ptr nocapture noundef readonly %kattr, ptr noundef %uattr) local_unnamed_addr #0 align 64 {
entry:
  %xdp = alloca %struct.xdp_buff, align 4
  %retval2 = alloca i32, align 4
  %duration = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %data_size_in = getelementptr inbounds %struct.anon.100, ptr %kattr, i32 0, i32 2
  %0 = ptrtoint ptr %data_size_in to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data_size_in, align 8
  %repeat1 = getelementptr inbounds %struct.anon.100, ptr %kattr, i32 0, i32 6
  %2 = ptrtoint ptr %repeat1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %repeat1, align 8
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %xdp) #12
  %4 = call ptr @memset(ptr %xdp, i32 0, i32 28)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval2) #12
  %5 = ptrtoint ptr %retval2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %retval2, align 4, !annotation !68
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %duration) #12
  %6 = ptrtoint ptr %duration to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %duration, align 4, !annotation !68
  %expected_attach_type = getelementptr inbounds %struct.bpf_prog, ptr %prog, i32 0, i32 3
  %7 = ptrtoint ptr %expected_attach_type to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %expected_attach_type, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %8, label %if.end [
    i32 33, label %entry.cleanup_crit_edge
    i32 35, label %entry.cleanup_crit_edge131
  ]

entry.cleanup_crit_edge131:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call fastcc ptr @bpf_ctx_init(ptr noundef %kattr, i32 noundef 24)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %10 = ptrtoint ptr %call to i32
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end8.if.end25_crit_edge, label %if.then9

if.end8.if.end25_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25

if.then9:                                         ; preds = %if.end8
  %data_meta = getelementptr inbounds %struct.xdp_md, ptr %call, i32 0, i32 2
  %11 = ptrtoint ptr %data_meta to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %data_meta, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool10.not = icmp eq i32 %12, 0
  br i1 %tobool10.not, label %lor.lhs.false11, label %if.then9.free_ctx_crit_edge

if.then9.free_ctx_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_ctx

lor.lhs.false11:                                  ; preds = %if.then9
  %data_end = getelementptr inbounds %struct.xdp_md, ptr %call, i32 0, i32 1
  %13 = ptrtoint ptr %data_end to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %data_end, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %1)
  %cmp12.not = icmp eq i32 %14, %1
  br i1 %cmp12.not, label %lor.lhs.false13, label %lor.lhs.false11.free_ctx_crit_edge

lor.lhs.false11.free_ctx_crit_edge:               ; preds = %lor.lhs.false11
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_ctx

lor.lhs.false13:                                  ; preds = %lor.lhs.false11
  %15 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %call, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %1)
  %cmp16 = icmp ugt i32 %16, %1
  br i1 %cmp16, label %lor.lhs.false13.free_ctx_crit_edge, label %lor.lhs.false17

lor.lhs.false13.free_ctx_crit_edge:               ; preds = %lor.lhs.false13
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_ctx

lor.lhs.false17:                                  ; preds = %lor.lhs.false13
  %and.i = and i32 %16, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp ne i32 %and.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %16)
  %cmp.i123 = icmp ugt i32 %16, 32
  %spec.select.i = or i1 %cmp.i123, %tobool.not.i
  br i1 %spec.select.i, label %lor.lhs.false17.free_ctx_crit_edge, label %if.end23, !prof !67

lor.lhs.false17.free_ctx_crit_edge:               ; preds = %lor.lhs.false17
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_ctx

if.end23:                                         ; preds = %lor.lhs.false17
  call void @__sanitizer_cov_trace_pc() #14
  %sub = sub nuw nsw i32 256, %16
  br label %if.end25

if.end25:                                         ; preds = %if.end23, %if.end8.if.end25_crit_edge
  %headroom.0 = phi i32 [ %sub, %if.end23 ], [ 256, %if.end8.if.end25_crit_edge ]
  %sub27 = sub nuw nsw i32 3840, %headroom.0
  %call28 = tail call fastcc ptr @bpf_test_init(ptr noundef %kattr, i32 noundef %sub27, i32 noundef %headroom.0, i32 noundef 256)
  %cmp.i124 = icmp ugt ptr %call28, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i124, label %if.then30, label %if.end32

if.then30:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  %17 = ptrtoint ptr %call28 to i32
  br label %free_ctx

if.end32:                                         ; preds = %if.end25
  %18 = tail call i32 @llvm.read_register.i32(metadata !56) #12
  %and.i125 = and i32 %18, -16384
  %19 = inttoptr i32 %and.i125 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %task, align 8
  %nsproxy = getelementptr inbounds %struct.task_struct, ptr %21, i32 0, i32 110
  %22 = ptrtoint ptr %nsproxy to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %nsproxy, align 4
  %net_ns = getelementptr inbounds %struct.nsproxy, ptr %23, i32 0, i32 5
  %24 = ptrtoint ptr %net_ns to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %net_ns, align 4
  %loopback_dev = getelementptr inbounds %struct.net, ptr %25, i32 0, i32 27
  %26 = ptrtoint ptr %loopback_dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %loopback_dev, align 4
  %_rx.i = getelementptr inbounds %struct.net_device, ptr %27, i32 0, i32 87
  %28 = ptrtoint ptr %_rx.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %_rx.i, align 4
  %frame_sz1.i = getelementptr inbounds %struct.xdp_buff, ptr %xdp, i32 0, i32 6
  %30 = ptrtoint ptr %frame_sz1.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 4096, ptr %frame_sz1.i, align 4
  %rxq2.i = getelementptr inbounds %struct.xdp_buff, ptr %xdp, i32 0, i32 4
  %31 = ptrtoint ptr %rxq2.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %29, ptr %rxq2.i, align 4
  %add.ptr.i = getelementptr i8, ptr %call28, i32 %headroom.0
  %data_hard_start.i = getelementptr inbounds %struct.xdp_buff, ptr %xdp, i32 0, i32 3
  %32 = ptrtoint ptr %data_hard_start.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call28, ptr %data_hard_start.i, align 4
  %33 = ptrtoint ptr %xdp to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %add.ptr.i, ptr %xdp, align 4
  %add.ptr2.i = getelementptr i8, ptr %add.ptr.i, i32 %1
  %data_end.i = getelementptr inbounds %struct.xdp_buff, ptr %xdp, i32 0, i32 1
  %34 = ptrtoint ptr %data_end.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %add.ptr2.i, ptr %data_end.i, align 4
  %data_meta.i = getelementptr inbounds %struct.xdp_buff, ptr %xdp, i32 0, i32 2
  %35 = ptrtoint ptr %data_meta.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %add.ptr.i, ptr %data_meta.i, align 4
  br i1 %tobool.not, label %if.end32.if.end39_crit_edge, label %if.end.i

if.end32.if.end39_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end39

if.end.i:                                         ; preds = %if.end32
  %egress_ifindex.i = getelementptr inbounds %struct.xdp_md, ptr %call, i32 0, i32 5
  %36 = ptrtoint ptr %egress_ifindex.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %egress_ifindex.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp.not.i = icmp eq i32 %37, 0
  br i1 %cmp.not.i, label %if.end2.i, label %if.end.i.free_data_crit_edge

if.end.i.free_data_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_data

if.end2.i:                                        ; preds = %if.end.i
  %ingress_ifindex3.i = getelementptr inbounds %struct.xdp_md, ptr %call, i32 0, i32 3
  %38 = ptrtoint ptr %ingress_ifindex3.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %ingress_ifindex3.i, align 4
  %rx_queue_index4.i = getelementptr inbounds %struct.xdp_md, ptr %call, i32 0, i32 4
  %40 = ptrtoint ptr %rx_queue_index4.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %rx_queue_index4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool5.not.i = icmp eq i32 %39, 0
  %tobool5.not.not.i = xor i1 %tobool5.not.i, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool6.not.i = icmp eq i32 %41, 0
  %or.cond.i = select i1 %tobool5.not.not.i, i1 true, i1 %tobool6.not.i
  br i1 %or.cond.i, label %if.end8.i, label %if.end2.i.free_data_crit_edge

if.end2.i.free_data_crit_edge:                    ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_data

if.end8.i:                                        ; preds = %if.end2.i
  br i1 %tobool5.not.i, label %if.end8.i.if.end23.i_crit_edge, label %if.then10.i

if.end8.i.if.end23.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23.i

if.then10.i:                                      ; preds = %if.end8.i
  %42 = tail call i32 @llvm.read_register.i32(metadata !56) #12
  %and.i.i = and i32 %42, -16384
  %43 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %task.i, align 8
  %nsproxy.i = getelementptr inbounds %struct.task_struct, ptr %45, i32 0, i32 110
  %46 = ptrtoint ptr %nsproxy.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %nsproxy.i, align 4
  %net_ns.i = getelementptr inbounds %struct.nsproxy, ptr %47, i32 0, i32 5
  %48 = ptrtoint ptr %net_ns.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %net_ns.i, align 4
  %call11.i = tail call ptr @dev_get_by_index(ptr noundef %49, i32 noundef %39) #12
  %tobool12.not.i = icmp eq ptr %call11.i, null
  br i1 %tobool12.not.i, label %if.then10.i.free_data_crit_edge, label %if.end14.i

if.then10.i.free_data_crit_edge:                  ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_data

if.end14.i:                                       ; preds = %if.then10.i
  %real_num_rx_queues.i = getelementptr inbounds %struct.net_device, ptr %call11.i, i32 0, i32 89
  %50 = ptrtoint ptr %real_num_rx_queues.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %real_num_rx_queues.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %51)
  %cmp15.not.i = icmp ult i32 %41, %51
  br i1 %cmp15.not.i, label %if.end17.i, label %if.end14.i.do.body1.i.i_crit_edge

if.end14.i.do.body1.i.i_crit_edge:                ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body1.i.i

if.end17.i:                                       ; preds = %if.end14.i
  %_rx.i.i = getelementptr inbounds %struct.net_device, ptr %call11.i, i32 0, i32 87
  %52 = ptrtoint ptr %_rx.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %_rx.i.i, align 4
  %add.ptr.i.i = getelementptr %struct.netdev_rx_queue, ptr %53, i32 %41
  %call19.i = tail call zeroext i1 @xdp_rxq_info_is_reg(ptr noundef %add.ptr.i.i) #12
  br i1 %call19.i, label %if.end21.i, label %if.end17.i.do.body1.i.i_crit_edge

if.end17.i.do.body1.i.i_crit_edge:                ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body1.i.i

if.end21.i:                                       ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #14
  %54 = ptrtoint ptr %rxq2.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %add.ptr.i.i, ptr %rxq2.i, align 4
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.end21.i, %if.end8.i.if.end23.i_crit_edge
  %55 = ptrtoint ptr %data_meta.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %data_meta.i, align 4
  %57 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %call, align 4
  %add.ptr.i128 = getelementptr i8, ptr %56, i32 %58
  %59 = ptrtoint ptr %xdp to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %add.ptr.i128, ptr %xdp, align 4
  br label %if.end39

do.body1.i.i:                                     ; preds = %if.end17.i.do.body1.i.i_crit_edge, %if.end14.i.do.body1.i.i_crit_edge
  %60 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !78
  %pcpu_refcnt.i.i = getelementptr inbounds %struct.net_device, ptr %call11.i, i32 0, i32 118
  %61 = ptrtoint ptr %pcpu_refcnt.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %pcpu_refcnt.i.i, align 4
  %63 = ptrtoint ptr %62 to i32
  %64 = tail call i32 @llvm.read_register.i32(metadata !56) #12
  %and.i.i.i = and i32 %64, -16384
  %65 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %65, i32 0, i32 3
  %66 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %67
  %68 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %69, %63
  %70 = inttoptr i32 %add.i.i to ptr
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %70, align 4
  %add13.i.i = add i32 %72, -1
  store i32 %add13.i.i, ptr %70, align 4
  %73 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !85
  %and.i.i.i.i = and i32 %73, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool24.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool24.not.i.i, label %if.then28.i.i, label %do.body1.i.i.dev_put.exit.i_crit_edge, !prof !67

do.body1.i.i.dev_put.exit.i_crit_edge:            ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_put.exit.i

if.then28.i.i:                                    ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @warn_bogus_irq_restore() #12
  br label %dev_put.exit.i

dev_put.exit.i:                                   ; preds = %if.then28.i.i, %do.body1.i.i.dev_put.exit.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %60) #12, !srcloc !86
  br label %free_data

if.end39:                                         ; preds = %if.end23.i, %if.end32.if.end39_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp40 = icmp ugt i32 %3, 1
  br i1 %cmp40, label %if.then41, label %if.end39.if.end42_crit_edge

if.end39.if.end42_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end42

if.then41:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @bpf_prog_change_xdp(ptr noundef null, ptr noundef %prog) #12
  br label %if.end42

if.end42:                                         ; preds = %if.then41, %if.end39.if.end42_crit_edge
  %call43 = call fastcc i32 @bpf_test_run(ptr noundef %prog, ptr noundef nonnull %xdp, i32 noundef %3, ptr noundef nonnull %retval2, ptr noundef nonnull %duration, i1 noundef zeroext true)
  call fastcc void @xdp_convert_buff_to_md(ptr noundef nonnull %xdp, ptr noundef %call)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.end46, label %if.end42.out_crit_edge

if.end42.out_crit_edge:                           ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end46:                                         ; preds = %if.end42
  %74 = ptrtoint ptr %data_meta.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %data_meta.i, align 4
  %cmp48.not = icmp eq ptr %75, %add.ptr.i
  br i1 %cmp48.not, label %lor.lhs.false49, label %if.end46.if.then54_crit_edge

if.end46.if.then54_crit_edge:                     ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then54

lor.lhs.false49:                                  ; preds = %if.end46
  %76 = ptrtoint ptr %data_end.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %data_end.i, align 4
  %cmp53.not = icmp eq ptr %77, %add.ptr2.i
  br i1 %cmp53.not, label %lor.lhs.false49.if.end57_crit_edge, label %lor.lhs.false49.if.then54_crit_edge

lor.lhs.false49.if.then54_crit_edge:              ; preds = %lor.lhs.false49
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then54

lor.lhs.false49.if.end57_crit_edge:               ; preds = %lor.lhs.false49
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end57

if.then54:                                        ; preds = %lor.lhs.false49.if.then54_crit_edge, %if.end46.if.then54_crit_edge
  %78 = ptrtoint ptr %data_end.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %data_end.i, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %79 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %75 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  br label %if.end57

if.end57:                                         ; preds = %if.then54, %lor.lhs.false49.if.end57_crit_edge
  %size.0 = phi i32 [ %sub.ptr.sub, %if.then54 ], [ %1, %lor.lhs.false49.if.end57_crit_edge ]
  %80 = ptrtoint ptr %retval2 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %retval2, align 4
  %82 = ptrtoint ptr %duration to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %duration, align 4
  %call59 = call fastcc i32 @bpf_test_finish(ptr noundef %kattr, ptr noundef %uattr, ptr noundef %75, i32 noundef %size.0, i32 noundef %81, i32 noundef %83)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %if.then61, label %if.end57.out_crit_edge

if.end57.out_crit_edge:                           ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.then61:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #14
  %call62 = call fastcc i32 @bpf_ctx_finish(ptr noundef %kattr, ptr noundef %uattr, ptr noundef %call, i32 noundef 24)
  br label %out

out:                                              ; preds = %if.then61, %if.end57.out_crit_edge, %if.end42.out_crit_edge
  %ret.0 = phi i32 [ %call43, %if.end42.out_crit_edge ], [ %call59, %if.end57.out_crit_edge ], [ %call62, %if.then61 ]
  br i1 %cmp40, label %if.then65, label %out.free_data_crit_edge

out.free_data_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_data

if.then65:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #14
  call void @bpf_prog_change_xdp(ptr noundef %prog, ptr noundef null) #12
  br label %free_data

free_data:                                        ; preds = %if.then65, %out.free_data_crit_edge, %dev_put.exit.i, %if.then10.i.free_data_crit_edge, %if.end2.i.free_data_crit_edge, %if.end.i.free_data_crit_edge
  %ret.1 = phi i32 [ %ret.0, %if.then65 ], [ %ret.0, %out.free_data_crit_edge ], [ -19, %if.then10.i.free_data_crit_edge ], [ -22, %if.end2.i.free_data_crit_edge ], [ -22, %if.end.i.free_data_crit_edge ], [ -22, %dev_put.exit.i ]
  call void @kfree(ptr noundef %call28) #12
  br label %free_ctx

free_ctx:                                         ; preds = %free_data, %if.then30, %lor.lhs.false17.free_ctx_crit_edge, %lor.lhs.false13.free_ctx_crit_edge, %lor.lhs.false11.free_ctx_crit_edge, %if.then9.free_ctx_crit_edge
  %ret.2 = phi i32 [ -22, %if.then9.free_ctx_crit_edge ], [ -22, %lor.lhs.false11.free_ctx_crit_edge ], [ -22, %lor.lhs.false13.free_ctx_crit_edge ], [ -22, %lor.lhs.false17.free_ctx_crit_edge ], [ %17, %if.then30 ], [ %ret.1, %free_data ]
  call void @kfree(ptr noundef %call) #12
  br label %cleanup

cleanup:                                          ; preds = %free_ctx, %if.then6, %entry.cleanup_crit_edge, %entry.cleanup_crit_edge131
  %retval.0 = phi i32 [ %10, %if.then6 ], [ %ret.2, %free_ctx ], [ -22, %entry.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge131 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %duration) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval2) #12
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %xdp) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_prog_change_xdp(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xdp_convert_buff_to_md(ptr nocapture noundef readonly %xdp, ptr noundef %xdp_md) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %xdp_md, null
  br i1 %tobool.not, label %entry.if.end9_crit_edge, label %if.end

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %xdp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %xdp, align 4
  %data_meta = getelementptr inbounds %struct.xdp_buff, ptr %xdp, i32 0, i32 2
  %2 = ptrtoint ptr %data_meta to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data_meta, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %1 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %3 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %4 = ptrtoint ptr %xdp_md to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %sub.ptr.sub, ptr %xdp_md, align 4
  %data_end = getelementptr inbounds %struct.xdp_buff, ptr %xdp, i32 0, i32 1
  %5 = ptrtoint ptr %data_end to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data_end, align 4
  %7 = load ptr, ptr %data_meta, align 4
  %sub.ptr.lhs.cast3 = ptrtoint ptr %6 to i32
  %sub.ptr.rhs.cast4 = ptrtoint ptr %7 to i32
  %sub.ptr.sub5 = sub i32 %sub.ptr.lhs.cast3, %sub.ptr.rhs.cast4
  %data_end6 = getelementptr inbounds %struct.xdp_md, ptr %xdp_md, i32 0, i32 1
  %8 = ptrtoint ptr %data_end6 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %sub.ptr.sub5, ptr %data_end6, align 4
  %ingress_ifindex = getelementptr inbounds %struct.xdp_md, ptr %xdp_md, i32 0, i32 3
  %9 = ptrtoint ptr %ingress_ifindex to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ingress_ifindex, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool7.not = icmp eq i32 %10, 0
  br i1 %tobool7.not, label %if.end.if.end9_crit_edge, label %if.then8

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

if.then8:                                         ; preds = %if.end
  %rxq = getelementptr inbounds %struct.xdp_buff, ptr %xdp, i32 0, i32 4
  %11 = ptrtoint ptr %rxq to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rxq, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 128
  %tobool.not.i = icmp eq ptr %14, null
  br i1 %tobool.not.i, label %if.then8.if.end9_crit_edge, label %do.body1.i

if.then8.if.end9_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

do.body1.i:                                       ; preds = %if.then8
  %15 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !78
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %14, i32 0, i32 118
  %16 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pcpu_refcnt.i, align 4
  %18 = ptrtoint ptr %17 to i32
  %19 = tail call i32 @llvm.read_register.i32(metadata !56) #12
  %and.i.i = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %22
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %24, %18
  %25 = inttoptr i32 %add.i to ptr
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 4
  %add13.i = add i32 %27, -1
  store i32 %add13.i, ptr %25, align 4
  %28 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !85
  %and.i.i.i = and i32 %28, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool24.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.do.end30.i_crit_edge, !prof !67

do.body1.i.do.end30.i_crit_edge:                  ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end30.i

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @warn_bogus_irq_restore() #12
  br label %do.end30.i

do.end30.i:                                       ; preds = %if.then28.i, %do.body1.i.do.end30.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %15) #12, !srcloc !86
  br label %if.end9

if.end9:                                          ; preds = %do.end30.i, %if.then8.if.end9_crit_edge, %if.end.if.end9_crit_edge, %entry.if.end9_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bpf_prog_test_run_flow_dissector(ptr noundef %prog, ptr nocapture noundef readonly %kattr, ptr noundef %uattr) local_unnamed_addr #0 align 64 {
entry:
  %t = alloca %struct.bpf_test_timer, align 8
  %ctx = alloca %struct.bpf_flow_dissector, align 4
  %flow_keys = alloca %struct.bpf_flow_keys, align 4
  %duration = alloca i32, align 4
  %ret = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %t) #12
  %0 = call ptr @memset(ptr %t, i32 0, i32 24)
  %data_size_in = getelementptr inbounds %struct.anon.100, ptr %kattr, i32 0, i32 2
  %1 = ptrtoint ptr %data_size_in to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %data_size_in, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ctx) #12
  %3 = call ptr @memset(ptr %ctx, i32 0, i32 16)
  %repeat1 = getelementptr inbounds %struct.anon.100, ptr %kattr, i32 0, i32 6
  %4 = ptrtoint ptr %repeat1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %repeat1, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %flow_keys) #12
  %6 = call ptr @memset(ptr %flow_keys, i32 255, i32 56)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %duration) #12
  %7 = ptrtoint ptr %duration to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %duration, align 4, !annotation !68
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret) #12
  %8 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %ret, align 4, !annotation !68
  %type = getelementptr inbounds %struct.bpf_prog, ptr %prog, i32 0, i32 2
  %9 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 22, i32 %10)
  %cmp.not = icmp eq i32 %10, 22
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags3 = getelementptr inbounds %struct.anon.100, ptr %kattr, i32 0, i32 12
  %11 = ptrtoint ptr %flags3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags3, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not = icmp eq i32 %12, 0
  br i1 %tobool.not, label %lor.lhs.false, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %cpu = getelementptr inbounds %struct.anon.100, ptr %kattr, i32 0, i32 13
  %13 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cpu, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool4.not = icmp ne i32 %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %2)
  %cmp7 = icmp ult i32 %2, 14
  %or.cond = select i1 %tobool4.not, i1 true, i1 %cmp7
  br i1 %or.cond, label %lor.lhs.false.cleanup_crit_edge, label %if.end9

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end9:                                          ; preds = %lor.lhs.false
  %call = tail call fastcc ptr @bpf_test_init(ptr noundef %kattr, i32 noundef %2, i32 noundef 0, i32 noundef 0)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  %15 = ptrtoint ptr %call to i32
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool14.not = icmp eq i32 %5, 0
  %spec.store.select = select i1 %tobool14.not, i32 1, i32 %5
  %call17 = tail call fastcc ptr @bpf_ctx_init(ptr noundef %kattr, i32 noundef 56)
  %cmp.i79 = icmp ugt ptr %call17, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i79, label %if.then19, label %if.end21

if.then19:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree(ptr noundef %call) #12
  %16 = ptrtoint ptr %call17 to i32
  br label %cleanup

if.end21:                                         ; preds = %if.end13
  %tobool22.not = icmp eq ptr %call17, null
  br i1 %tobool22.not, label %if.end21.if.end29_crit_edge, label %if.then23

if.end21.if.end29_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

if.then23:                                        ; preds = %if.end21
  %call24 = tail call fastcc i32 @verify_user_bpf_flow_keys(ptr noundef nonnull %call17)
  %17 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %call24, ptr %ret, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end27, label %if.then23.out_crit_edge

if.then23.out_crit_edge:                          ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end27:                                         ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #14
  %flags28 = getelementptr inbounds %struct.bpf_flow_keys, ptr %call17, i32 0, i32 11
  %18 = ptrtoint ptr %flags28 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flags28, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.end27, %if.end21.if.end29_crit_edge
  %flags.0 = phi i32 [ %19, %if.end27 ], [ 0, %if.end21.if.end29_crit_edge ]
  %20 = ptrtoint ptr %ctx to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %flow_keys, ptr %ctx, align 4
  %data31 = getelementptr inbounds %struct.bpf_flow_dissector, ptr %ctx, i32 0, i32 2
  %21 = ptrtoint ptr %data31 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call, ptr %data31, align 4
  %add.ptr = getelementptr i8, ptr %call, i32 %2
  %data_end = getelementptr inbounds %struct.bpf_flow_dissector, ptr %ctx, i32 0, i32 3
  %22 = ptrtoint ptr %data_end to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %add.ptr, ptr %data_end, align 4
  call fastcc void @bpf_test_timer_enter(ptr noundef nonnull %t)
  %h_proto = getelementptr inbounds %struct.ethhdr, ptr %call, i32 0, i32 2
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %if.end29
  %23 = ptrtoint ptr %h_proto to i32
  call void @__asan_loadN_noabort(i32 %23, i32 2)
  %24 = load i16, ptr %h_proto, align 1
  %call32 = call zeroext i1 @bpf_flow_dissect(ptr noundef %prog, ptr noundef nonnull %ctx, i16 noundef zeroext %24, i32 noundef 14, i32 noundef %2, i32 noundef %flags.0) #12
  %call33 = call fastcc zeroext i1 @bpf_test_timer_continue(ptr noundef nonnull %t, i32 noundef %spec.store.select, ptr noundef nonnull %ret, ptr noundef nonnull %duration)
  br i1 %call33, label %do.body.do.body_crit_edge, label %do.end

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

do.end:                                           ; preds = %do.body
  call fastcc void @bpf_test_timer_leave(ptr noundef nonnull %t)
  %25 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ret, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp34 = icmp slt i32 %26, 0
  br i1 %cmp34, label %do.end.out_crit_edge, label %if.end37

do.end.out_crit_edge:                             ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end37:                                         ; preds = %do.end
  %conv.le = zext i1 %call32 to i32
  %27 = ptrtoint ptr %duration to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %duration, align 4
  %call38 = call fastcc i32 @bpf_test_finish(ptr noundef %kattr, ptr noundef %uattr, ptr noundef nonnull %flow_keys, i32 noundef 56, i32 noundef %conv.le, i32 noundef %28)
  %29 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %call38, ptr %ret, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.then40, label %if.end37.out_crit_edge

if.end37.out_crit_edge:                           ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.then40:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #14
  %call41 = call fastcc i32 @bpf_ctx_finish(ptr noundef %kattr, ptr noundef %uattr, ptr noundef %call17, i32 noundef 56)
  %30 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %call41, ptr %ret, align 4
  br label %out

out:                                              ; preds = %if.then40, %if.end37.out_crit_edge, %do.end.out_crit_edge, %if.then23.out_crit_edge
  call void @kfree(ptr noundef %call17) #12
  call void @kfree(ptr noundef %call) #12
  %31 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %ret, align 4
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then19, %if.then11, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %15, %if.then11 ], [ %16, %if.then19 ], [ %32, %out ], [ -22, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %duration) #12
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %flow_keys) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ctx) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %t) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @verify_user_bpf_flow_keys(ptr noundef %ctx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @memchr_inv(ptr noundef %ctx, i32 noundef 0, i32 noundef 48) #12
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i = getelementptr i8, ptr %ctx, i32 52
  %call.i5 = tail call ptr @memchr_inv(ptr noundef %add.ptr.i, i32 noundef 0, i32 noundef 4) #12
  %tobool.not.i6 = icmp eq ptr %call.i5, null
  %. = select i1 %tobool.not.i6, i32 0, i32 -22
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %entry.return_crit_edge ], [ %., %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bpf_test_timer_enter(ptr nocapture noundef %t) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !56) #12
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !77
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 696, ptr noundef nonnull @.str.10) #12
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %4 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %t, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %do.body, label %if.else

do.body:                                          ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  %6 = tail call i32 @llvm.read_register.i32(metadata !56) #12
  %and.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %9, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !94
  br label %if.end

if.else:                                          ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @migrate_disable() #12
  br label %if.end

if.end:                                           ; preds = %if.else, %do.body
  %call.i2 = tail call i64 @ktime_get() #12
  %time_start = getelementptr inbounds %struct.bpf_test_timer, ptr %t, i32 0, i32 2
  %10 = ptrtoint ptr %time_start to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %call.i2, ptr %time_start, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @bpf_flow_dissect(ptr noundef, ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @bpf_test_timer_continue(ptr nocapture noundef %t, i32 noundef %repeat, ptr nocapture noundef writeonly %err, ptr nocapture noundef writeonly %duration) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %i = getelementptr inbounds %struct.bpf_test_timer, ptr %t, i32 0, i32 1
  %0 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i, align 4
  %inc = add i32 %1, 1
  store i32 %inc, ptr %i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %repeat)
  %cmp.not = icmp ult i32 %inc, %repeat
  br i1 %cmp.not, label %if.end207, label %if.then

if.then:                                          ; preds = %entry
  %call.i = tail call i64 @ktime_get() #12
  %time_start = getelementptr inbounds %struct.bpf_test_timer, ptr %t, i32 0, i32 2
  %2 = ptrtoint ptr %time_start to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %time_start, align 8
  %sub = sub i64 %call.i, %3
  %time_spent = getelementptr inbounds %struct.bpf_test_timer, ptr %t, i32 0, i32 3
  %4 = ptrtoint ptr %time_spent to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %time_spent, align 8
  %add = add i64 %5, %sub
  %6 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add)
  %cmp178 = icmp ult i64 %add, 4294967296
  br i1 %cmp178, label %if.then182, label %if.else191, !prof !66

if.then182:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %conv184 = trunc i64 %add to i32
  %div188 = udiv i32 %conv184, %7
  %conv189 = zext i32 %div188 to i64
  br label %if.end196

if.else191:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %8 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %7, i64 %add) #15, !srcloc !95
  %asmresult1.i = extractvalue { i64, i64 } %8, 1
  br label %if.end196

if.end196:                                        ; preds = %if.else191, %if.then182
  %div169.sink = phi i64 [ %asmresult1.i, %if.else191 ], [ %conv189, %if.then182 ]
  %9 = ptrtoint ptr %time_spent to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %div169.sink, ptr %time_spent, align 8
  %10 = tail call i64 @llvm.umin.i64(i64 %div169.sink, i64 4294967295)
  %11 = trunc i64 %10 to i32
  %12 = ptrtoint ptr %duration to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %duration, align 4
  br label %reset

if.end207:                                        ; preds = %entry
  %13 = tail call i32 @llvm.read_register.i32(metadata !56) #12
  %and.i329 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i329 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %stack.i.i, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %18, align 4
  %21 = and i32 %20, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i = icmp eq i32 %21, 0
  br i1 %tobool.not.i, label %signal_pending.exit, label %if.end207.reset_crit_edge, !prof !66

if.end207.reset_crit_edge:                        ; preds = %if.end207
  call void @__sanitizer_cov_trace_pc() #14
  br label %reset

signal_pending.exit:                              ; preds = %if.end207
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %18, align 4
  %and1.i.i.i.i.i = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool210.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool210.not, label %if.end212, label %signal_pending.exit.reset_crit_edge

signal_pending.exit.reset_crit_edge:              ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %reset

if.end212:                                        ; preds = %signal_pending.exit
  %24 = tail call i32 @llvm.read_register.i32(metadata !56) #12
  %and.i.i = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i to ptr
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %25, align 16384
  %28 = and i32 %27, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.i.not = icmp eq i32 %28, 0
  br i1 %tobool.i.not, label %if.end212.return_crit_edge, label %if.then214

if.end212.return_crit_edge:                       ; preds = %if.end212
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.then214:                                       ; preds = %if.end212
  call void @__sanitizer_cov_trace_pc() #14
  %call.i330 = tail call i64 @ktime_get() #12
  %time_start216 = getelementptr inbounds %struct.bpf_test_timer, ptr %t, i32 0, i32 2
  %29 = ptrtoint ptr %time_start216 to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %time_start216, align 8
  %sub217 = sub i64 %call.i330, %30
  %time_spent218 = getelementptr inbounds %struct.bpf_test_timer, ptr %t, i32 0, i32 3
  %31 = ptrtoint ptr %time_spent218 to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %time_spent218, align 8
  %add219 = add i64 %sub217, %32
  store i64 %add219, ptr %time_spent218, align 8
  tail call fastcc void @bpf_test_timer_leave(ptr noundef %t)
  tail call void @__might_resched(ptr noundef nonnull @.str, i32 noundef 78, i32 noundef 0) #12
  %call.i331 = tail call i32 @__cond_resched() #12
  tail call fastcc void @bpf_test_timer_enter(ptr noundef %t)
  br label %return

reset:                                            ; preds = %signal_pending.exit.reset_crit_edge, %if.end207.reset_crit_edge, %if.end196
  %storemerge = phi i32 [ 0, %if.end196 ], [ -4, %signal_pending.exit.reset_crit_edge ], [ -4, %if.end207.reset_crit_edge ]
  %33 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %storemerge, ptr %err, align 4
  %34 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %i, align 4
  br label %return

return:                                           ; preds = %reset, %if.then214, %if.end212.return_crit_edge
  %retval.0 = phi i1 [ false, %reset ], [ true, %if.then214 ], [ true, %if.end212.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bpf_test_timer_leave(ptr nocapture noundef %t) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %time_start = getelementptr inbounds %struct.bpf_test_timer, ptr %t, i32 0, i32 2
  %0 = ptrtoint ptr %time_start to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %time_start, align 8
  %1 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %t, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %do.body, label %if.else

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !96
  %3 = tail call i32 @llvm.read_register.i32(metadata !56) #12
  %and.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %preempt_count.i.i, align 4
  %sub.i = add i32 %6, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @migrate_enable() #12
  br label %if.end

if.end:                                           ; preds = %if.else, %do.body
  %call.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i, label %if.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_unlock.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_unlock.exit_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_unlock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_unlock.exit_crit_edge:  ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 724, ptr noundef nonnull @.str.11) #12
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i.rcu_read_unlock.exit_crit_edge, %if.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !87
  %7 = tail call i32 @llvm.read_register.i32(metadata !56) #12
  %and.i.i.i.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %sub.i.i.i = add i32 %10, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bpf_prog_test_run_sk_lookup(ptr noundef %prog, ptr nocapture noundef readonly %kattr, ptr noundef %uattr) local_unnamed_addr #0 align 64 {
entry:
  %t = alloca %struct.bpf_test_timer, align 8
  %ctx = alloca %struct.bpf_sk_lookup_kern, align 4
  %duration = alloca i32, align 4
  %ret = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %t) #12
  %0 = call ptr @memset(ptr %t, i32 0, i32 24)
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %ctx) #12
  %1 = call ptr @memset(ptr %ctx, i32 0, i32 36)
  %repeat1 = getelementptr inbounds %struct.anon.100, ptr %kattr, i32 0, i32 6
  %2 = ptrtoint ptr %repeat1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %repeat1, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %duration) #12
  %4 = ptrtoint ptr %duration to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %duration, align 4, !annotation !68
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret) #12
  %5 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -22, ptr %ret, align 4
  %type = getelementptr inbounds %struct.bpf_prog, ptr %prog, i32 0, i32 2
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %7)
  %cmp.not = icmp eq i32 %7, 30
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.anon.100, ptr %kattr, i32 0, i32 12
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %lor.lhs.false, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %cpu = getelementptr inbounds %struct.anon.100, ptr %kattr, i32 0, i32 13
  %10 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cpu, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool3.not = icmp eq i32 %11, 0
  br i1 %tobool3.not, label %if.end5, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end5:                                          ; preds = %lor.lhs.false
  %data_in = getelementptr inbounds %struct.anon.100, ptr %kattr, i32 0, i32 4
  %12 = ptrtoint ptr %data_in to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %data_in, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %13)
  %tobool6.not = icmp eq i64 %13, 0
  br i1 %tobool6.not, label %lor.lhs.false7, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false7:                                   ; preds = %if.end5
  %data_size_in = getelementptr inbounds %struct.anon.100, ptr %kattr, i32 0, i32 2
  %14 = ptrtoint ptr %data_size_in to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %data_size_in, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool8.not = icmp eq i32 %15, 0
  br i1 %tobool8.not, label %lor.lhs.false9, label %lor.lhs.false7.cleanup_crit_edge

lor.lhs.false7.cleanup_crit_edge:                 ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false9:                                   ; preds = %lor.lhs.false7
  %data_out = getelementptr inbounds %struct.anon.100, ptr %kattr, i32 0, i32 5
  %16 = ptrtoint ptr %data_out to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %data_out, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %17)
  %tobool10.not = icmp eq i64 %17, 0
  br i1 %tobool10.not, label %lor.lhs.false11, label %lor.lhs.false9.cleanup_crit_edge

lor.lhs.false9.cleanup_crit_edge:                 ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false11:                                  ; preds = %lor.lhs.false9
  %data_size_out = getelementptr inbounds %struct.anon.100, ptr %kattr, i32 0, i32 3
  %18 = ptrtoint ptr %data_size_out to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %data_size_out, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool12.not = icmp eq i32 %19, 0
  br i1 %tobool12.not, label %if.end14, label %lor.lhs.false11.cleanup_crit_edge

lor.lhs.false11.cleanup_crit_edge:                ; preds = %lor.lhs.false11
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end14:                                         ; preds = %lor.lhs.false11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool15.not = icmp eq i32 %3, 0
  %spec.store.select = select i1 %tobool15.not, i32 1, i32 %3
  %call = tail call fastcc ptr @bpf_ctx_init(ptr noundef %kattr, i32 noundef 72)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then19, label %if.end21

if.then19:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  %20 = ptrtoint ptr %call to i32
  br label %cleanup

if.end21:                                         ; preds = %if.end14
  %tobool22.not = icmp eq ptr %call, null
  br i1 %tobool22.not, label %if.end21.cleanup_crit_edge, label %if.end24

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end24:                                         ; preds = %if.end21
  %21 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %call, align 8
  %tobool25.not = icmp eq ptr %22, null
  br i1 %tobool25.not, label %if.end27, label %if.end24.out_crit_edge

if.end24.out_crit_edge:                           ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end27:                                         ; preds = %if.end24
  %add.ptr.i = getelementptr i8, ptr %call, i32 64
  %call.i = tail call ptr @memchr_inv(ptr noundef %add.ptr.i, i32 noundef 0, i32 noundef 8) #12
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end30, label %if.end27.out_crit_edge

if.end27.out_crit_edge:                           ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end30:                                         ; preds = %if.end27
  %local_port = getelementptr inbounds %struct.bpf_sk_lookup, ptr %call, i32 0, i32 8
  %23 = ptrtoint ptr %local_port to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %local_port, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %24)
  %cmp31 = icmp ugt i32 %24, 65535
  br i1 %cmp31, label %if.end30.if.then34_crit_edge, label %lor.lhs.false32

if.end30.if.then34_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then34

lor.lhs.false32:                                  ; preds = %if.end30
  %remote_port = getelementptr inbounds %struct.bpf_sk_lookup, ptr %call, i32 0, i32 5
  %25 = ptrtoint ptr %remote_port to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %remote_port, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %26)
  %cmp33 = icmp ugt i32 %26, 65535
  br i1 %cmp33, label %lor.lhs.false32.if.then34_crit_edge, label %if.end35

lor.lhs.false32.if.then34_crit_edge:              ; preds = %lor.lhs.false32
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then34

if.then34:                                        ; preds = %lor.lhs.false32.if.then34_crit_edge, %if.end30.if.then34_crit_edge
  %27 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -34, ptr %ret, align 4
  br label %out

if.end35:                                         ; preds = %lor.lhs.false32
  %family = getelementptr inbounds %struct.bpf_sk_lookup, ptr %call, i32 0, i32 1
  %28 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %family, align 8
  %conv = trunc i32 %29 to i16
  %30 = ptrtoint ptr %ctx to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %conv, ptr %ctx, align 4
  %protocol = getelementptr inbounds %struct.bpf_sk_lookup, ptr %call, i32 0, i32 2
  %31 = ptrtoint ptr %protocol to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %protocol, align 4
  %conv37 = trunc i32 %32 to i16
  %protocol38 = getelementptr inbounds %struct.bpf_sk_lookup_kern, ptr %ctx, i32 0, i32 1
  %33 = ptrtoint ptr %protocol38 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %conv37, ptr %protocol38, align 2
  %conv40 = trunc i32 %24 to i16
  %dport = getelementptr inbounds %struct.bpf_sk_lookup_kern, ptr %ctx, i32 0, i32 3
  %34 = ptrtoint ptr %dport to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %conv40, ptr %dport, align 2
  %conv42 = trunc i32 %26 to i16
  %sport = getelementptr inbounds %struct.bpf_sk_lookup_kern, ptr %ctx, i32 0, i32 2
  %35 = ptrtoint ptr %sport to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %conv42, ptr %sport, align 4
  %36 = zext i16 %conv to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.18)
  switch i16 %conv, label %sw.default [
    i16 2, label %sw.bb
    i16 10, label %sw.bb46
  ]

sw.bb:                                            ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  %local_ip4 = getelementptr inbounds %struct.bpf_sk_lookup, ptr %call, i32 0, i32 6
  %37 = ptrtoint ptr %local_ip4 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %local_ip4, align 8
  %v4 = getelementptr inbounds %struct.bpf_sk_lookup_kern, ptr %ctx, i32 0, i32 4
  %daddr = getelementptr inbounds %struct.bpf_sk_lookup_kern, ptr %ctx, i32 0, i32 4, i32 1
  %39 = ptrtoint ptr %daddr to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %daddr, align 4
  %remote_ip4 = getelementptr inbounds %struct.bpf_sk_lookup, ptr %call, i32 0, i32 3
  %40 = ptrtoint ptr %remote_ip4 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %remote_ip4, align 8
  %42 = ptrtoint ptr %v4 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %v4, align 4
  br label %sw.epilog

sw.bb46:                                          ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  %local_ip6 = getelementptr inbounds %struct.bpf_sk_lookup, ptr %call, i32 0, i32 7
  %v6 = getelementptr inbounds %struct.bpf_sk_lookup_kern, ptr %ctx, i32 0, i32 5
  %daddr47 = getelementptr inbounds %struct.bpf_sk_lookup_kern, ptr %ctx, i32 0, i32 5, i32 1
  %43 = ptrtoint ptr %daddr47 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %local_ip6, ptr %daddr47, align 4
  %remote_ip6 = getelementptr inbounds %struct.bpf_sk_lookup, ptr %call, i32 0, i32 4
  %44 = ptrtoint ptr %v6 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %remote_ip6, ptr %v6, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  %45 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 -97, ptr %ret, align 4
  br label %out

sw.epilog:                                        ; preds = %sw.bb46, %sw.bb
  %call51 = tail call ptr @bpf_prog_array_alloc(i32 noundef 1, i32 noundef 3264) #12
  %tobool52.not = icmp eq ptr %call51, null
  br i1 %tobool52.not, label %if.then53, label %if.end54

if.then53:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  %46 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 -12, ptr %ret, align 4
  br label %out

if.end54:                                         ; preds = %sw.epilog
  %items = getelementptr inbounds %struct.bpf_prog_array, ptr %call51, i32 0, i32 1
  %47 = ptrtoint ptr %items to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %prog, ptr %items, align 8
  call fastcc void @bpf_test_timer_enter(ptr noundef nonnull %t)
  %selected_sk = getelementptr inbounds %struct.bpf_sk_lookup_kern, ptr %ctx, i32 0, i32 6
  %no_reuseport = getelementptr inbounds %struct.bpf_sk_lookup_kern, ptr %ctx, i32 0, i32 8
  br label %do.body

do.body:                                          ; preds = %while.end.do.body_crit_edge, %if.end54
  %48 = ptrtoint ptr %selected_sk to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr null, ptr %selected_sk, align 4
  call void @migrate_disable() #12
  %49 = ptrtoint ptr %items to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile ptr, ptr %items, align 8
  %tobool60.not174 = icmp eq ptr %50, null
  br i1 %tobool60.not174, label %do.body.while.end_crit_edge, label %do.body.while.body_crit_edge

do.body.while.body_crit_edge:                     ; preds = %do.body
  br label %while.body

do.body.while.end_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body:                                       ; preds = %if.end80.while.body_crit_edge, %do.body.while.body_crit_edge
  %51 = phi ptr [ %124, %if.end80.while.body_crit_edge ], [ %50, %do.body.while.body_crit_edge ]
  %_all_pass.0178 = phi i8 [ %_all_pass.1, %if.end80.while.body_crit_edge ], [ 1, %do.body.while.body_crit_edge ]
  %_no_reuseport.0.off0177 = phi i1 [ %_no_reuseport.1.off0, %if.end80.while.body_crit_edge ], [ false, %do.body.while.body_crit_edge ]
  %_selected_sk.0176 = phi ptr [ %_selected_sk.1, %if.end80.while.body_crit_edge ], [ null, %do.body.while.body_crit_edge ]
  %_item.0175 = phi ptr [ %incdec.ptr, %if.end80.while.body_crit_edge ], [ %items, %do.body.while.body_crit_edge ]
  %52 = ptrtoint ptr %selected_sk to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %_selected_sk.0176, ptr %selected_sk, align 4
  %frombool = zext i1 %_no_reuseport.0.off0177 to i8
  %53 = ptrtoint ptr %no_reuseport to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %frombool, ptr %no_reuseport, align 4
  call void @__cant_migrate(ptr noundef nonnull @.str.13, i32 noundef 613) #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @bpf_stats_enabled_key, ptr blockaddress(@bpf_prog_test_run_sk_lookup, %if.then.i.i)) #12
          to label %if.else.i.i [label %if.then.i.i], !srcloc !70

if.then.i.i:                                      ; preds = %while.body
  %call3.i.i = call i64 @sched_clock() #12
  %insnsi.i.i = getelementptr inbounds %struct.bpf_prog, ptr %51, i32 1
  %bpf_func.i.i = getelementptr inbounds %struct.bpf_prog, ptr %51, i32 0, i32 9
  %54 = ptrtoint ptr %bpf_func.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %bpf_func.i.i, align 4
  %call.i1.i = call i32 %55(ptr noundef nonnull %ctx, ptr noundef %insnsi.i.i) #12
  %stats9.i.i = getelementptr inbounds %struct.bpf_prog, ptr %51, i32 0, i32 7
  %56 = ptrtoint ptr %stats9.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %stats9.i.i, align 4
  %58 = ptrtoint ptr %57 to i32
  %59 = call i32 @llvm.read_register.i32(metadata !56) #12
  %and.i.i.i = and i32 %59, -16384
  %60 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %60, i32 0, i32 3
  %61 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %62
  %63 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %64, %58
  %65 = inttoptr i32 %add.i.i to ptr
  %syncp.i.i = getelementptr inbounds %struct.bpf_prog_stats, ptr %65, i32 0, i32 3
  %66 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !78
  %and.i.i.i.i = and i32 %66, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %if.then.i.i.do.body12.i.i.i_crit_edge

if.then.i.i.do.body12.i.i.i_crit_edge:            ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body12.i.i.i

if.then.i.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @trace_hardirqs_off() #12
  br label %do.body12.i.i.i

do.body12.i.i.i:                                  ; preds = %if.then.i.i.i, %if.then.i.i.do.body12.i.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %67 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool.not.i.i.i.i = icmp eq i32 %67, 0
  br i1 %tobool.not.i.i.i.i, label %do.body12.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, label %land.lhs.true.i.i.i.i

do.body12.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %do.body12.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %u64_stats_update_begin_irqsave.exit.i.i

land.lhs.true.i.i.i.i:                            ; preds = %do.body12.i.i.i
  %68 = call i32 @llvm.read_register.i32(metadata !56) #12
  %and.i.i.i.i.i.i.i = and i32 %68, -16384
  %69 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %71, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !79
  %72 = call i32 @llvm.read_register.i32(metadata !56) #12
  %and.i.i.i.i.i = and i32 %72, -16384
  %73 = inttoptr i32 %and.i.i.i.i.i to ptr
  %cpu.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %73, i32 0, i32 3
  %74 = ptrtoint ptr %cpu.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %cpu.i.i.i.i, align 4
  %arrayidx.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %75
  %76 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %77, ptrtoint (ptr @lockdep_recursion to i32)
  %78 = inttoptr i32 %add.i.i.i.i to ptr
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load volatile i32, ptr %78, align 4
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !80
  %81 = call i32 @llvm.read_register.i32(metadata !56) #12
  %and.i.i.i7.i.i.i.i = and i32 %81, -16384
  %82 = inttoptr i32 %and.i.i.i7.i.i.i.i to ptr
  %preempt_count.i.i8.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %82, i32 0, i32 1
  %83 = ptrtoint ptr %preempt_count.i.i8.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load volatile i32, ptr %preempt_count.i.i8.i.i.i.i, align 4
  %sub.i.i.i.i.i = add i32 %84, -1
  store volatile i32 %sub.i.i.i.i.i, ptr %preempt_count.i.i8.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool20.not.i.i.i.i = icmp eq i32 %80, 0
  br i1 %tobool20.not.i.i.i.i, label %land.rhs.i.i.i.i, label %land.lhs.true.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge

land.lhs.true.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %u64_stats_update_begin_irqsave.exit.i.i

land.rhs.i.i.i.i:                                 ; preds = %land.lhs.true.i.i.i.i
  %85 = call i32 @llvm.read_register.i32(metadata !56) #12
  %and.i.i.i.i.i.i = and i32 %85, -16384
  %86 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %86, i32 0, i32 1
  %87 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %cmp.i.i.i.i = icmp eq i32 %88, 0
  br i1 %cmp.i.i.i.i, label %land.rhs22.i.i.i.i, label %land.rhs.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge

land.rhs.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %u64_stats_update_begin_irqsave.exit.i.i

land.rhs22.i.i.i.i:                               ; preds = %land.rhs.i.i.i.i
  %89 = call i32 @llvm.read_register.i32(metadata !56) #12
  %and.i.i.i9.i.i.i.i = and i32 %89, -16384
  %90 = inttoptr i32 %and.i.i.i9.i.i.i.i to ptr
  %preempt_count.i.i10.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %90, i32 0, i32 1
  %91 = ptrtoint ptr %preempt_count.i.i10.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load volatile i32, ptr %preempt_count.i.i10.i.i.i.i, align 4
  %add.i11.i.i.i.i = add i32 %92, 1
  store volatile i32 %add.i11.i.i.i.i, ptr %preempt_count.i.i10.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !81
  %93 = ptrtoint ptr %cpu.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %cpu.i.i.i.i, align 4
  %arrayidx46.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %94
  %95 = ptrtoint ptr %arrayidx46.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %arrayidx46.i.i.i.i, align 4
  %add47.i.i.i.i = add i32 %96, ptrtoint (ptr @hardirqs_enabled to i32)
  %97 = inttoptr i32 %add47.i.i.i.i to ptr
  %98 = ptrtoint ptr %97 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load volatile i32, ptr %97, align 4
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !82
  %100 = call i32 @llvm.read_register.i32(metadata !56) #12
  %and.i.i.i12.i.i.i.i = and i32 %100, -16384
  %101 = inttoptr i32 %and.i.i.i12.i.i.i.i to ptr
  %preempt_count.i.i13.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %101, i32 0, i32 1
  %102 = ptrtoint ptr %preempt_count.i.i13.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load volatile i32, ptr %preempt_count.i.i13.i.i.i.i, align 4
  %sub.i14.i.i.i.i = add i32 %103, -1
  store volatile i32 %sub.i14.i.i.i.i, ptr %preempt_count.i.i13.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %99)
  %tobool54.not.i.i.i.i = icmp eq i32 %99, 0
  br i1 %tobool54.not.i.i.i.i, label %land.rhs22.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, label %land.rhs58.i.i.i.i

land.rhs22.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %land.rhs22.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %u64_stats_update_begin_irqsave.exit.i.i

land.rhs58.i.i.i.i:                               ; preds = %land.rhs22.i.i.i.i
  %.b1.i.i.i.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i.i.i.i, label %land.rhs58.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, label %if.then.i.i.i.i, !prof !66

land.rhs58.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %land.rhs58.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %u64_stats_update_begin_irqsave.exit.i.i

if.then.i.i.i.i:                                  ; preds = %land.rhs58.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 271, i32 noundef 9, ptr noundef null) #12
  br label %u64_stats_update_begin_irqsave.exit.i.i

u64_stats_update_begin_irqsave.exit.i.i:          ; preds = %if.then.i.i.i.i, %land.rhs58.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, %land.rhs22.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, %land.rhs.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, %land.lhs.true.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, %do.body12.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge
  %104 = ptrtoint ptr %syncp.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %syncp.i.i, align 4
  %inc.i.i.i.i.i.i = add i32 %105, 1
  store i32 %inc.i.i.i.i.i.i, ptr %syncp.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !83
  %dep_map.i.i.i.i.i = getelementptr inbounds %struct.bpf_prog_stats, ptr %65, i32 0, i32 3, i32 0, i32 1
  %106 = call ptr @llvm.returnaddress(i32 0) #12
  %107 = ptrtoint ptr %106 to i32
  call void @lock_acquire(ptr noundef %dep_map.i.i.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %107) #12
  %108 = ptrtoint ptr %65 to i32
  call void @__asan_load8_noabort(i32 %108)
  %109 = load i64, ptr %65, align 8
  %inc.i.i.i = add i64 %109, 1
  store i64 %inc.i.i.i, ptr %65, align 8
  %nsecs.i.i = getelementptr inbounds %struct.bpf_prog_stats, ptr %65, i32 0, i32 1
  %call13.i.i = call i64 @sched_clock() #12
  %sub.i.i = sub i64 %call13.i.i, %call3.i.i
  %conv.i.i.i = and i64 %sub.i.i, 4294967295
  %110 = ptrtoint ptr %nsecs.i.i to i32
  call void @__asan_load8_noabort(i32 %110)
  %111 = load i64, ptr %nsecs.i.i, align 8
  %add.i.i.i = add i64 %conv.i.i.i, %111
  store i64 %add.i.i.i, ptr %nsecs.i.i, align 8
  call void @lock_release(ptr noundef %dep_map.i.i.i.i.i, i32 noundef %107) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !84
  %112 = ptrtoint ptr %syncp.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %syncp.i.i, align 4
  %inc.i.i.i.i.i = add i32 %113, 1
  store i32 %inc.i.i.i.i.i, ptr %syncp.i.i, align 4
  br i1 %tobool.not.i.i.i, label %if.then8.i.i.i, label %u64_stats_update_begin_irqsave.exit.i.i.do.body10.i.i.i_crit_edge

u64_stats_update_begin_irqsave.exit.i.i.do.body10.i.i.i_crit_edge: ; preds = %u64_stats_update_begin_irqsave.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body10.i.i.i

if.then8.i.i.i:                                   ; preds = %u64_stats_update_begin_irqsave.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @trace_hardirqs_on() #12
  br label %do.body10.i.i.i

do.body10.i.i.i:                                  ; preds = %if.then8.i.i.i, %u64_stats_update_begin_irqsave.exit.i.i.do.body10.i.i.i_crit_edge
  %114 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !85
  %and.i.i.i30.i.i = and i32 %114, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i30.i.i)
  %tobool18.not.i.i.i = icmp eq i32 %and.i.i.i30.i.i, 0
  br i1 %tobool18.not.i.i.i, label %if.then22.i.i.i, label %do.body10.i.i.i.u64_stats_update_end_irqrestore.exit.i.i_crit_edge, !prof !67

do.body10.i.i.i.u64_stats_update_end_irqrestore.exit.i.i_crit_edge: ; preds = %do.body10.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %u64_stats_update_end_irqrestore.exit.i.i

if.then22.i.i.i:                                  ; preds = %do.body10.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @warn_bogus_irq_restore() #12
  br label %u64_stats_update_end_irqrestore.exit.i.i

u64_stats_update_end_irqrestore.exit.i.i:         ; preds = %if.then22.i.i.i, %do.body10.i.i.i.u64_stats_update_end_irqrestore.exit.i.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %66) #12, !srcloc !86
  br label %bpf_prog_run.exit

if.else.i.i:                                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  %insnsi15.i.i = getelementptr inbounds %struct.bpf_prog, ptr %51, i32 1
  %bpf_func17.i.i = getelementptr inbounds %struct.bpf_prog, ptr %51, i32 0, i32 9
  %115 = ptrtoint ptr %bpf_func17.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %bpf_func17.i.i, align 4
  %call.i.i = call i32 %116(ptr noundef nonnull %ctx, ptr noundef %insnsi15.i.i) #12
  br label %bpf_prog_run.exit

bpf_prog_run.exit:                                ; preds = %if.else.i.i, %u64_stats_update_end_irqrestore.exit.i.i
  %ret.0.i.i = phi i32 [ %call.i1.i, %u64_stats_update_end_irqrestore.exit.i.i ], [ %call.i.i, %if.else.i.i ]
  %117 = zext i32 %ret.0.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %117, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %ret.0.i.i, label %bpf_prog_run.exit.if.end80_crit_edge [
    i32 1, label %land.lhs.true
    i32 0, label %land.lhs.true75
  ]

bpf_prog_run.exit.if.end80_crit_edge:             ; preds = %bpf_prog_run.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end80

land.lhs.true:                                    ; preds = %bpf_prog_run.exit
  %118 = ptrtoint ptr %selected_sk to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %selected_sk, align 4
  %tobool67.not = icmp eq ptr %119, null
  br i1 %tobool67.not, label %land.lhs.true.if.end80_crit_edge, label %if.then68

land.lhs.true.if.end80_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end80

if.then68:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %120 = ptrtoint ptr %no_reuseport to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %no_reuseport, align 4, !range !97
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %121)
  %tobool71 = icmp ne i8 %121, 0
  br label %if.end80

land.lhs.true75:                                  ; preds = %bpf_prog_run.exit
  call void @__sanitizer_cov_trace_pc() #14
  %122 = and i8 %_all_pass.0178, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %122)
  %tobool76.not = icmp eq i8 %122, 0
  %spec.store.select122 = select i1 %tobool76.not, i8 %_all_pass.0178, i8 0
  br label %if.end80

if.end80:                                         ; preds = %land.lhs.true75, %if.then68, %land.lhs.true.if.end80_crit_edge, %bpf_prog_run.exit.if.end80_crit_edge
  %_selected_sk.1 = phi ptr [ %119, %if.then68 ], [ %_selected_sk.0176, %land.lhs.true75 ], [ %_selected_sk.0176, %bpf_prog_run.exit.if.end80_crit_edge ], [ %_selected_sk.0176, %land.lhs.true.if.end80_crit_edge ]
  %_no_reuseport.1.off0 = phi i1 [ %tobool71, %if.then68 ], [ %_no_reuseport.0.off0177, %land.lhs.true75 ], [ %_no_reuseport.0.off0177, %bpf_prog_run.exit.if.end80_crit_edge ], [ %_no_reuseport.0.off0177, %land.lhs.true.if.end80_crit_edge ]
  %_all_pass.1 = phi i8 [ %_all_pass.0178, %if.then68 ], [ %spec.store.select122, %land.lhs.true75 ], [ %_all_pass.0178, %bpf_prog_run.exit.if.end80_crit_edge ], [ %_all_pass.0178, %land.lhs.true.if.end80_crit_edge ]
  %incdec.ptr = getelementptr %struct.bpf_prog_array_item, ptr %_item.0175, i32 1
  %123 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load volatile ptr, ptr %incdec.ptr, align 8
  %tobool60.not = icmp eq ptr %124, null
  br i1 %tobool60.not, label %if.end80.while.end_crit_edge, label %if.end80.while.body_crit_edge

if.end80.while.body_crit_edge:                    ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

if.end80.while.end_crit_edge:                     ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %if.end80.while.end_crit_edge, %do.body.while.end_crit_edge
  %_selected_sk.0.lcssa = phi ptr [ null, %do.body.while.end_crit_edge ], [ %_selected_sk.1, %if.end80.while.end_crit_edge ]
  %_no_reuseport.0.off0.lcssa = phi i1 [ false, %do.body.while.end_crit_edge ], [ %_no_reuseport.1.off0, %if.end80.while.end_crit_edge ]
  %_all_pass.0.lcssa = phi i8 [ 1, %do.body.while.end_crit_edge ], [ %_all_pass.1, %if.end80.while.end_crit_edge ]
  %125 = ptrtoint ptr %selected_sk to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr %_selected_sk.0.lcssa, ptr %selected_sk, align 4
  %frombool84 = zext i1 %_no_reuseport.0.off0.lcssa to i8
  %126 = ptrtoint ptr %no_reuseport to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 %frombool84, ptr %no_reuseport, align 4
  call void @migrate_enable() #12
  %call90 = call fastcc zeroext i1 @bpf_test_timer_continue(ptr noundef nonnull %t, i32 noundef %spec.store.select, ptr noundef nonnull %ret, ptr noundef nonnull %duration)
  br i1 %call90, label %while.end.do.body_crit_edge, label %do.end91

while.end.do.body_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

do.end91:                                         ; preds = %while.end
  %127 = and i8 %_all_pass.0.lcssa, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %127)
  %tobool86.not.le = icmp ne i8 %127, 0
  %tobool88.le = icmp ne ptr %_selected_sk.0.lcssa, null
  %spec.select.le = select i1 %tobool86.not.le, i1 true, i1 %tobool88.le
  %cond.le = zext i1 %spec.select.le to i32
  call fastcc void @bpf_test_timer_leave(ptr noundef nonnull %t)
  %128 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %ret, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %129)
  %cmp92 = icmp slt i32 %129, 0
  br i1 %cmp92, label %do.end91.out_crit_edge, label %if.end95

do.end91.out_crit_edge:                           ; preds = %do.end91
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end95:                                         ; preds = %do.end91
  %130 = ptrtoint ptr %call to i32
  call void @__asan_store8_noabort(i32 %130)
  store i64 0, ptr %call, align 8
  %131 = ptrtoint ptr %selected_sk to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %selected_sk, align 4
  %tobool97.not = icmp eq ptr %132, null
  br i1 %tobool97.not, label %if.end95.if.end109_crit_edge, label %if.then98

if.end95.if.end109_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end109

if.then98:                                        ; preds = %if.end95
  %skc_reuseport = getelementptr inbounds %struct.sock_common, ptr %132, i32 0, i32 5
  %133 = ptrtoint ptr %skc_reuseport to i32
  call void @__asan_load1_noabort(i32 %133)
  %bf.load = load i8, ptr %skc_reuseport, align 1
  %134 = and i8 %bf.load, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %134)
  %tobool101.not = icmp eq i8 %134, 0
  br i1 %tobool101.not, label %if.then98.if.end106_crit_edge, label %land.lhs.true102

if.then98.if.end106_crit_edge:                    ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end106

land.lhs.true102:                                 ; preds = %if.then98
  %135 = ptrtoint ptr %no_reuseport to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %no_reuseport, align 4, !range !97
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %136)
  %tobool104.not = icmp eq i8 %136, 0
  br i1 %tobool104.not, label %if.then105, label %land.lhs.true102.if.end106_crit_edge

land.lhs.true102.if.end106_crit_edge:             ; preds = %land.lhs.true102
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end106

if.then105:                                       ; preds = %land.lhs.true102
  call void @__sanitizer_cov_trace_pc() #14
  %137 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 -95, ptr %ret, align 4
  br label %out

if.end106:                                        ; preds = %land.lhs.true102.if.end106_crit_edge, %if.then98.if.end106_crit_edge
  %call108 = call fastcc i64 @sock_gen_cookie(ptr noundef nonnull %132)
  %138 = ptrtoint ptr %call to i32
  call void @__asan_store8_noabort(i32 %138)
  store i64 %call108, ptr %call, align 8
  br label %if.end109

if.end109:                                        ; preds = %if.end106, %if.end95.if.end109_crit_edge
  %139 = ptrtoint ptr %duration to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %duration, align 4
  %call110 = call fastcc i32 @bpf_test_finish(ptr noundef %kattr, ptr noundef %uattr, ptr noundef null, i32 noundef 0, i32 noundef %cond.le, i32 noundef %140)
  %141 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 %call110, ptr %ret, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110)
  %tobool111.not = icmp eq i32 %call110, 0
  br i1 %tobool111.not, label %if.then112, label %if.end109.out_crit_edge

if.end109.out_crit_edge:                          ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.then112:                                       ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #14
  %call113 = call fastcc i32 @bpf_ctx_finish(ptr noundef %kattr, ptr noundef %uattr, ptr noundef nonnull %call, i32 noundef 72)
  %142 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 %call113, ptr %ret, align 4
  br label %out

out:                                              ; preds = %if.then112, %if.end109.out_crit_edge, %if.then105, %do.end91.out_crit_edge, %if.then53, %sw.default, %if.then34, %if.end27.out_crit_edge, %if.end24.out_crit_edge
  %progs.0 = phi ptr [ null, %if.end24.out_crit_edge ], [ null, %if.then34 ], [ null, %sw.default ], [ %call51, %do.end91.out_crit_edge ], [ %call51, %if.end109.out_crit_edge ], [ %call51, %if.then112 ], [ %call51, %if.then105 ], [ null, %if.then53 ], [ null, %if.end27.out_crit_edge ]
  call void @bpf_prog_array_free(ptr noundef %progs.0) #12
  call void @kfree(ptr noundef nonnull %call) #12
  %143 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %ret, align 4
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end21.cleanup_crit_edge, %if.then19, %lor.lhs.false11.cleanup_crit_edge, %lor.lhs.false9.cleanup_crit_edge, %lor.lhs.false7.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %20, %if.then19 ], [ %144, %out ], [ -22, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %lor.lhs.false11.cleanup_crit_edge ], [ -22, %lor.lhs.false9.cleanup_crit_edge ], [ -22, %lor.lhs.false7.cleanup_crit_edge ], [ -22, %if.end5.cleanup_crit_edge ], [ -22, %if.end21.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %duration) #12
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %ctx) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %t) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bpf_prog_array_alloc(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @migrate_disable() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @migrate_enable() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @sock_gen_cookie(ptr noundef %sk) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %0 = tail call i32 @llvm.read_register.i32(metadata !56) #12
  %and.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %3, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !98
  %call = tail call i64 @__sock_gen_cookie(ptr noundef %sk) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !99
  %4 = tail call i32 @llvm.read_register.i32(metadata !56) #12
  %and.i.i.i4 = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i4 to ptr
  %preempt_count.i.i5 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i.i5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i.i5, align 4
  %sub.i = add i32 %7, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i5, align 4
  ret i64 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_prog_array_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bpf_prog_test_run_syscall(ptr noundef %prog, ptr nocapture noundef readonly %kattr, ptr noundef %uattr) local_unnamed_addr #0 align 64 {
entry:
  %retval5 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx_in2 = getelementptr inbounds %struct.anon.100, ptr %kattr, i32 0, i32 10
  %0 = ptrtoint ptr %ctx_in2 to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %ctx_in2, align 8
  %conv3 = trunc i64 %1 to i32
  %2 = inttoptr i32 %conv3 to ptr
  %ctx_size_in4 = getelementptr inbounds %struct.anon.100, ptr %kattr, i32 0, i32 8
  %3 = ptrtoint ptr %ctx_size_in4 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ctx_size_in4, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval5) #12
  %data_in = getelementptr inbounds %struct.anon.100, ptr %kattr, i32 0, i32 4
  %5 = ptrtoint ptr %data_in to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %data_in, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %6)
  %tobool.not = icmp eq i64 %6, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %data_out = getelementptr inbounds %struct.anon.100, ptr %kattr, i32 0, i32 5
  %7 = ptrtoint ptr %data_out to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %data_out, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %8)
  %tobool6.not = icmp eq i64 %8, 0
  br i1 %tobool6.not, label %lor.lhs.false7, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false7:                                   ; preds = %lor.lhs.false
  %ctx_out = getelementptr inbounds %struct.anon.100, ptr %kattr, i32 0, i32 11
  %9 = ptrtoint ptr %ctx_out to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %ctx_out, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %10)
  %tobool8.not = icmp eq i64 %10, 0
  br i1 %tobool8.not, label %lor.lhs.false9, label %lor.lhs.false7.cleanup_crit_edge

lor.lhs.false7.cleanup_crit_edge:                 ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false9:                                   ; preds = %lor.lhs.false7
  %duration = getelementptr inbounds %struct.anon.100, ptr %kattr, i32 0, i32 7
  %11 = ptrtoint ptr %duration to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %duration, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool10.not = icmp eq i32 %12, 0
  br i1 %tobool10.not, label %lor.lhs.false11, label %lor.lhs.false9.cleanup_crit_edge

lor.lhs.false9.cleanup_crit_edge:                 ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false11:                                  ; preds = %lor.lhs.false9
  %repeat = getelementptr inbounds %struct.anon.100, ptr %kattr, i32 0, i32 6
  %13 = ptrtoint ptr %repeat to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %repeat, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool12.not = icmp eq i32 %14, 0
  br i1 %tobool12.not, label %lor.lhs.false13, label %lor.lhs.false11.cleanup_crit_edge

lor.lhs.false11.cleanup_crit_edge:                ; preds = %lor.lhs.false11
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false13:                                  ; preds = %lor.lhs.false11
  %flags = getelementptr inbounds %struct.anon.100, ptr %kattr, i32 0, i32 12
  %15 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flags, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool14.not = icmp eq i32 %16, 0
  br i1 %tobool14.not, label %if.end, label %lor.lhs.false13.cleanup_crit_edge

lor.lhs.false13.cleanup_crit_edge:                ; preds = %lor.lhs.false13
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false13
  %aux = getelementptr inbounds %struct.bpf_prog, ptr %prog, i32 0, i32 10
  %17 = ptrtoint ptr %aux to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %aux, align 4
  %max_ctx_offset = getelementptr inbounds %struct.bpf_prog_aux, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %max_ctx_offset to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %max_ctx_offset, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %20)
  %cmp15 = icmp ult i32 %4, %20
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %4)
  %cmp18 = icmp ugt i32 %4, 65535
  %or.cond = or i1 %cmp18, %cmp15
  br i1 %or.cond, label %if.end.cleanup_crit_edge, label %if.end21

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end21:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool22.not = icmp eq i32 %4, 0
  br i1 %tobool22.not, label %if.end21.if.end28_crit_edge, label %if.then23

if.end21.if.end28_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28

if.then23:                                        ; preds = %if.end21
  %call = tail call ptr @memdup_user(ptr noundef %2, i32 noundef %4) #12
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then25, label %if.then23.if.end28_crit_edge

if.then23.if.end28_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28

if.then25:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #14
  %21 = ptrtoint ptr %call to i32
  br label %cleanup

if.end28:                                         ; preds = %if.then23.if.end28_crit_edge, %if.end21.if.end28_crit_edge
  %ctx.0 = phi ptr [ %call, %if.then23.if.end28_crit_edge ], [ null, %if.end21.if.end28_crit_edge ]
  tail call fastcc void @rcu_read_lock_trace()
  %call29 = tail call fastcc i32 @bpf_prog_run_pin_on_cpu(ptr noundef %prog, ptr noundef %ctx.0)
  %22 = ptrtoint ptr %retval5 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %call29, ptr %retval5, align 4
  tail call fastcc void @rcu_read_unlock_trace()
  %retval30 = getelementptr inbounds %struct.anon.100, ptr %uattr, i32 0, i32 1
  tail call void @__might_fault(ptr noundef nonnull @.str.6, i32 noundef 174) #12
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i, label %if.end28.out_crit_edge, label %if.end.i.i

if.end28.out_crit_edge:                           ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end.i.i:                                       ; preds = %if.end28
  %23 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %retval30, i32 4, i32 -1226833920) #15, !srcloc !69
  %asmresult.i.i = extractvalue { i32, i32 } %23, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %copy_to_user.exit, label %if.end.i.i.out_crit_edge

if.end.i.i.out_crit_edge:                         ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

copy_to_user.exit:                                ; preds = %if.end.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %retval5, i32 noundef 4) #12
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %retval30, ptr noundef nonnull %retval5, i32 noundef 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool32.not = icmp ne i32 %call.i12.i.i, 0
  %brmerge = select i1 %tobool32.not, i1 true, i1 %tobool22.not
  %.mux = select i1 %tobool32.not, i32 -14, i32 0
  br i1 %brmerge, label %copy_to_user.exit.out_crit_edge, label %if.then.i.i.i

copy_to_user.exit.out_crit_edge:                  ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.then.i.i.i:                                    ; preds = %copy_to_user.exit
  call void @__check_object_size(ptr noundef %ctx.0, i32 noundef %4, i1 noundef zeroext true) #12
  call void @__might_fault(ptr noundef nonnull @.str.6, i32 noundef 174) #12
  %call.i.i68 = call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i68, label %if.then.i.i.i.out_crit_edge, label %if.end.i.i71

if.then.i.i.i.out_crit_edge:                      ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end.i.i71:                                     ; preds = %if.then.i.i.i
  %24 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 %4, i32 -1226833920) #15, !srcloc !69
  %asmresult.i.i69 = extractvalue { i32, i32 } %24, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i69)
  %cmp.i6.i70 = icmp eq i32 %asmresult.i.i69, 0
  br i1 %cmp.i6.i70, label %copy_to_user.exit76, label %if.end.i.i71.out_crit_edge

if.end.i.i71.out_crit_edge:                       ; preds = %if.end.i.i71
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

copy_to_user.exit76:                              ; preds = %if.end.i.i71
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i72 = call zeroext i1 @__kasan_check_read(ptr noundef %ctx.0, i32 noundef %4) #12
  %call.i12.i.i73 = call i32 @arm_copy_to_user(ptr noundef %2, ptr noundef %ctx.0, i32 noundef %4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i73)
  %tobool38.not = icmp eq i32 %call.i12.i.i73, 0
  %spec.select = select i1 %tobool38.not, i32 0, i32 -14
  br label %out

out:                                              ; preds = %copy_to_user.exit76, %if.end.i.i71.out_crit_edge, %if.then.i.i.i.out_crit_edge, %copy_to_user.exit.out_crit_edge, %if.end.i.i.out_crit_edge, %if.end28.out_crit_edge
  %err.0 = phi i32 [ %.mux, %copy_to_user.exit.out_crit_edge ], [ -14, %if.end28.out_crit_edge ], [ -14, %if.end.i.i.out_crit_edge ], [ -14, %if.then.i.i.i.out_crit_edge ], [ -14, %if.end.i.i71.out_crit_edge ], [ %spec.select, %copy_to_user.exit76 ]
  call void @kfree(ptr noundef %ctx.0) #12
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then25, %if.end.cleanup_crit_edge, %lor.lhs.false13.cleanup_crit_edge, %lor.lhs.false11.cleanup_crit_edge, %lor.lhs.false9.cleanup_crit_edge, %lor.lhs.false7.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %21, %if.then25 ], [ %err.0, %out ], [ -22, %lor.lhs.false13.cleanup_crit_edge ], [ -22, %lor.lhs.false11.cleanup_crit_edge ], [ -22, %lor.lhs.false9.cleanup_crit_edge ], [ -22, %lor.lhs.false7.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval5) #12
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_read_lock_trace() unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %0 = tail call i32 @llvm.read_register.i32(metadata !56) #12
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %trc_reader_nesting = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 44
  %4 = ptrtoint ptr %trc_reader_nesting to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %trc_reader_nesting, align 4
  %add = add i32 %5, 1
  store volatile i32 %add, ptr %trc_reader_nesting, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !100
  %trc_reader_special = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 46
  %need_mb = getelementptr inbounds %struct.anon.28, ptr %trc_reader_special, i32 0, i32 3
  %6 = ptrtoint ptr %need_mb to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %need_mb, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end14

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end14:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !101
  br label %if.end

if.end:                                           ; preds = %do.end14, %entry.if.end_crit_edge
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_trace_lock_map)
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bpf_prog_run_pin_on_cpu(ptr noundef %prog, ptr noundef %ctx) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @migrate_disable() #12
  tail call void @__cant_migrate(ptr noundef nonnull @.str.13, i32 noundef 613) #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @bpf_stats_enabled_key, ptr blockaddress(@bpf_prog_run_pin_on_cpu, %if.then.i.i)) #12
          to label %if.else.i.i [label %if.then.i.i], !srcloc !70

if.then.i.i:                                      ; preds = %entry
  %call3.i.i = tail call i64 @sched_clock() #12
  %insnsi.i.i = getelementptr inbounds %struct.bpf_prog, ptr %prog, i32 1
  %bpf_func.i.i = getelementptr inbounds %struct.bpf_prog, ptr %prog, i32 0, i32 9
  %0 = ptrtoint ptr %bpf_func.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bpf_func.i.i, align 4
  %call.i1.i = tail call i32 %1(ptr noundef %ctx, ptr noundef %insnsi.i.i) #12
  %stats9.i.i = getelementptr inbounds %struct.bpf_prog, ptr %prog, i32 0, i32 7
  %2 = ptrtoint ptr %stats9.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats9.i.i, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !56) #12
  %and.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %10, %4
  %11 = inttoptr i32 %add.i.i to ptr
  %syncp.i.i = getelementptr inbounds %struct.bpf_prog_stats, ptr %11, i32 0, i32 3
  %12 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !78
  %and.i.i.i.i = and i32 %12, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %if.then.i.i.do.body12.i.i.i_crit_edge

if.then.i.i.do.body12.i.i.i_crit_edge:            ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body12.i.i.i

if.then.i.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @trace_hardirqs_off() #12
  br label %do.body12.i.i.i

do.body12.i.i.i:                                  ; preds = %if.then.i.i.i, %if.then.i.i.do.body12.i.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %13 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i.i.i.i = icmp eq i32 %13, 0
  br i1 %tobool.not.i.i.i.i, label %do.body12.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, label %land.lhs.true.i.i.i.i

do.body12.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %do.body12.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %u64_stats_update_begin_irqsave.exit.i.i

land.lhs.true.i.i.i.i:                            ; preds = %do.body12.i.i.i
  %14 = tail call i32 @llvm.read_register.i32(metadata !56) #12
  %and.i.i.i.i.i.i.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %17, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !79
  %18 = tail call i32 @llvm.read_register.i32(metadata !56) #12
  %and.i.i.i.i.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i.i.i to ptr
  %cpu.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %cpu.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cpu.i.i.i.i, align 4
  %arrayidx.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %21
  %22 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %23, ptrtoint (ptr @lockdep_recursion to i32)
  %24 = inttoptr i32 %add.i.i.i.i to ptr
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %24, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !80
  %27 = tail call i32 @llvm.read_register.i32(metadata !56) #12
  %and.i.i.i7.i.i.i.i = and i32 %27, -16384
  %28 = inttoptr i32 %and.i.i.i7.i.i.i.i to ptr
  %preempt_count.i.i8.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %preempt_count.i.i8.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %preempt_count.i.i8.i.i.i.i, align 4
  %sub.i.i.i.i.i = add i32 %30, -1
  store volatile i32 %sub.i.i.i.i.i, ptr %preempt_count.i.i8.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool20.not.i.i.i.i = icmp eq i32 %26, 0
  br i1 %tobool20.not.i.i.i.i, label %land.rhs.i.i.i.i, label %land.lhs.true.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge

land.lhs.true.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %u64_stats_update_begin_irqsave.exit.i.i

land.rhs.i.i.i.i:                                 ; preds = %land.lhs.true.i.i.i.i
  %31 = tail call i32 @llvm.read_register.i32(metadata !56) #12
  %and.i.i.i.i.i.i = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp.i.i.i.i = icmp eq i32 %34, 0
  br i1 %cmp.i.i.i.i, label %land.rhs22.i.i.i.i, label %land.rhs.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge

land.rhs.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %u64_stats_update_begin_irqsave.exit.i.i

land.rhs22.i.i.i.i:                               ; preds = %land.rhs.i.i.i.i
  %35 = tail call i32 @llvm.read_register.i32(metadata !56) #12
  %and.i.i.i9.i.i.i.i = and i32 %35, -16384
  %36 = inttoptr i32 %and.i.i.i9.i.i.i.i to ptr
  %preempt_count.i.i10.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %preempt_count.i.i10.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %preempt_count.i.i10.i.i.i.i, align 4
  %add.i11.i.i.i.i = add i32 %38, 1
  store volatile i32 %add.i11.i.i.i.i, ptr %preempt_count.i.i10.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !81
  %39 = ptrtoint ptr %cpu.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %cpu.i.i.i.i, align 4
  %arrayidx46.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %40
  %41 = ptrtoint ptr %arrayidx46.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx46.i.i.i.i, align 4
  %add47.i.i.i.i = add i32 %42, ptrtoint (ptr @hardirqs_enabled to i32)
  %43 = inttoptr i32 %add47.i.i.i.i to ptr
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %43, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !82
  %46 = tail call i32 @llvm.read_register.i32(metadata !56) #12
  %and.i.i.i12.i.i.i.i = and i32 %46, -16384
  %47 = inttoptr i32 %and.i.i.i12.i.i.i.i to ptr
  %preempt_count.i.i13.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %preempt_count.i.i13.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %preempt_count.i.i13.i.i.i.i, align 4
  %sub.i14.i.i.i.i = add i32 %49, -1
  store volatile i32 %sub.i14.i.i.i.i, ptr %preempt_count.i.i13.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool54.not.i.i.i.i = icmp eq i32 %45, 0
  br i1 %tobool54.not.i.i.i.i, label %land.rhs22.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, label %land.rhs58.i.i.i.i

land.rhs22.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %land.rhs22.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %u64_stats_update_begin_irqsave.exit.i.i

land.rhs58.i.i.i.i:                               ; preds = %land.rhs22.i.i.i.i
  %.b1.i.i.i.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i.i.i.i, label %land.rhs58.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, label %if.then.i.i.i.i, !prof !66

land.rhs58.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %land.rhs58.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %u64_stats_update_begin_irqsave.exit.i.i

if.then.i.i.i.i:                                  ; preds = %land.rhs58.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 271, i32 noundef 9, ptr noundef null) #12
  br label %u64_stats_update_begin_irqsave.exit.i.i

u64_stats_update_begin_irqsave.exit.i.i:          ; preds = %if.then.i.i.i.i, %land.rhs58.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, %land.rhs22.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, %land.rhs.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, %land.lhs.true.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, %do.body12.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge
  %50 = ptrtoint ptr %syncp.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %syncp.i.i, align 4
  %inc.i.i.i.i.i.i = add i32 %51, 1
  store i32 %inc.i.i.i.i.i.i, ptr %syncp.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !83
  %dep_map.i.i.i.i.i = getelementptr inbounds %struct.bpf_prog_stats, ptr %11, i32 0, i32 3, i32 0, i32 1
  %52 = tail call ptr @llvm.returnaddress(i32 0) #12
  %53 = ptrtoint ptr %52 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %53) #12
  %54 = ptrtoint ptr %11 to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %11, align 8
  %inc.i.i.i = add i64 %55, 1
  store i64 %inc.i.i.i, ptr %11, align 8
  %nsecs.i.i = getelementptr inbounds %struct.bpf_prog_stats, ptr %11, i32 0, i32 1
  %call13.i.i = tail call i64 @sched_clock() #12
  %sub.i.i = sub i64 %call13.i.i, %call3.i.i
  %conv.i.i.i = and i64 %sub.i.i, 4294967295
  %56 = ptrtoint ptr %nsecs.i.i to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %nsecs.i.i, align 8
  %add.i.i.i = add i64 %conv.i.i.i, %57
  store i64 %add.i.i.i, ptr %nsecs.i.i, align 8
  tail call void @lock_release(ptr noundef %dep_map.i.i.i.i.i, i32 noundef %53) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !84
  %58 = ptrtoint ptr %syncp.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %syncp.i.i, align 4
  %inc.i.i.i.i.i = add i32 %59, 1
  store i32 %inc.i.i.i.i.i, ptr %syncp.i.i, align 4
  br i1 %tobool.not.i.i.i, label %if.then8.i.i.i, label %u64_stats_update_begin_irqsave.exit.i.i.do.body10.i.i.i_crit_edge

u64_stats_update_begin_irqsave.exit.i.i.do.body10.i.i.i_crit_edge: ; preds = %u64_stats_update_begin_irqsave.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body10.i.i.i

if.then8.i.i.i:                                   ; preds = %u64_stats_update_begin_irqsave.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @trace_hardirqs_on() #12
  br label %do.body10.i.i.i

do.body10.i.i.i:                                  ; preds = %if.then8.i.i.i, %u64_stats_update_begin_irqsave.exit.i.i.do.body10.i.i.i_crit_edge
  %60 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !85
  %and.i.i.i30.i.i = and i32 %60, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i30.i.i)
  %tobool18.not.i.i.i = icmp eq i32 %and.i.i.i30.i.i, 0
  br i1 %tobool18.not.i.i.i, label %if.then22.i.i.i, label %do.body10.i.i.i.u64_stats_update_end_irqrestore.exit.i.i_crit_edge, !prof !67

do.body10.i.i.i.u64_stats_update_end_irqrestore.exit.i.i_crit_edge: ; preds = %do.body10.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %u64_stats_update_end_irqrestore.exit.i.i

if.then22.i.i.i:                                  ; preds = %do.body10.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @warn_bogus_irq_restore() #12
  br label %u64_stats_update_end_irqrestore.exit.i.i

u64_stats_update_end_irqrestore.exit.i.i:         ; preds = %if.then22.i.i.i, %do.body10.i.i.i.u64_stats_update_end_irqrestore.exit.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %12) #12, !srcloc !86
  br label %bpf_prog_run.exit

if.else.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %insnsi15.i.i = getelementptr inbounds %struct.bpf_prog, ptr %prog, i32 1
  %bpf_func17.i.i = getelementptr inbounds %struct.bpf_prog, ptr %prog, i32 0, i32 9
  %61 = ptrtoint ptr %bpf_func17.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %bpf_func17.i.i, align 4
  %call.i.i = tail call i32 %62(ptr noundef %ctx, ptr noundef %insnsi15.i.i) #12
  br label %bpf_prog_run.exit

bpf_prog_run.exit:                                ; preds = %if.else.i.i, %u64_stats_update_end_irqrestore.exit.i.i
  %ret.0.i.i = phi i32 [ %call.i1.i, %u64_stats_update_end_irqrestore.exit.i.i ], [ %call.i.i, %if.else.i.i ]
  tail call void @migrate_enable() #12
  ret i32 %ret.0.i.i
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_read_unlock_trace() unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %0 = tail call i32 @llvm.read_register.i32(metadata !56) #12
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_trace_lock_map)
  %trc_reader_nesting = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 44
  %4 = ptrtoint ptr %trc_reader_nesting to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %trc_reader_nesting, align 4
  %sub = add i32 %5, -1
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !102
  %6 = ptrtoint ptr %trc_reader_nesting to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile i32 -2147483648, ptr %trc_reader_nesting, align 4
  %trc_reader_special = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 46
  %7 = ptrtoint ptr %trc_reader_special to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %trc_reader_special, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %entry.do.body23_crit_edge, label %lor.lhs.false, !prof !66

entry.do.body23_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body23

lor.lhs.false:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %tobool18.not = icmp eq i32 %sub, 0
  br i1 %tobool18.not, label %if.end69, label %lor.lhs.false.do.body23_crit_edge

lor.lhs.false.do.body23_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body23

do.body23:                                        ; preds = %lor.lhs.false.do.body23_crit_edge, %entry.do.body23_crit_edge
  %9 = ptrtoint ptr %trc_reader_nesting to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile i32 %sub, ptr %trc_reader_nesting, align 4
  br label %cleanup

if.end69:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @rcu_read_unlock_trace_special(ptr noundef %3) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end69, %do.body23
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_event_buffer_reserve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_buffer_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_bpf_test_finish(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %err = getelementptr inbounds %struct.trace_event_raw_bpf_test_finish, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %err, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.3, i32 noundef %3) #12
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

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @perf_trace_buf_alloc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_trace_run_bpf_submit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.frameaddress.p0(i32 immarg) #8

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run1(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr noundef %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @lock_acquire(ptr noundef %map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr noundef %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @lock_release(ptr noundef %map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_check_uarg_tail_zero([2 x i32], i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bpf_cgroup_storage_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_cgroup_storage_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_dispatcher_xdp_func(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xdp_master_redirect(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__cant_migrate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @sched_clock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xdp_rxq_info_is_reg(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memchr_inv(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__sock_gen_cookie(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_trace_special(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #9 = { nounwind readonly }
attributes #10 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nounwind readnone }
attributes #16 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !8, !9, !11, !12, !14, !15, !17, !18, !19, !20, !21, !22, !23, !25, !27, !28, !30, !32, !33, !34, !35, !36, !38, !39, !40, !42, !43, !45, !46, !48, !50, !52, !53, !55}
!llvm.named.register.sp = !{!56}
!llvm.module.flags = !{!57, !58, !59, !60, !61, !62, !63, !64}
!llvm.ident = !{!65}

!0 = !{ptr @__tracepoint_bpf_test_finish, !1, !"__tracepoint_bpf_test_finish", i1 false, i1 false}
!1 = !{!"../include/trace/events/bpf_test_run.h", i32 38, i32 1}
!2 = !{ptr @__tracepoint_ptr_bpf_test_finish, !1, !"__tracepoint_ptr_bpf_test_finish", i1 false, i1 false}
!3 = !{ptr @__SCK__tp_func_bpf_test_finish, !1, !"__SCK__tp_func_bpf_test_finish", i1 false, i1 false}
!4 = !{ptr @event_class_bpf_test_finish, !5, !"event_class_bpf_test_finish", i1 false, i1 false}
!5 = !{!"../include/trace/events/bpf_test_run.h", i32 10, i32 1}
!6 = !{ptr @event_bpf_test_finish, !1, !"event_bpf_test_finish", i1 false, i1 false}
!7 = !{ptr @__event_bpf_test_finish, !1, !"__event_bpf_test_finish", i1 false, i1 false}
!8 = !{ptr @__bpf_trace_tp_map_bpf_test_finish, !1, !"__bpf_trace_tp_map_bpf_test_finish", i1 false, i1 false}
!9 = distinct !{null, !10, !"__already_done", i1 false, i1 false}
!10 = !{!"../net/bpf/test_run.c", i32 684, i32 6}
!11 = !{ptr @.str, !10, !"<string literal>", i1 false, i1 false}
!12 = distinct !{null, !13, !"prog_test_kfunc_list", i1 false, i1 false}
!13 = !{!"../include/linux/btf.h", i32 360, i32 33}
!14 = !{ptr @__tpstrtab_bpf_test_finish, !1, !"__tpstrtab_bpf_test_finish", i1 false, i1 false}
!15 = !{ptr @str__bpf_test_run__trace_system_name, !16, !"str__bpf_test_run__trace_system_name", i1 false, i1 false}
!16 = !{!"../include/trace/trace_events.h", i32 36, i32 1}
!17 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @trace_event_fields_bpf_test_finish, !5, !"trace_event_fields_bpf_test_finish", i1 false, i1 false}
!20 = !{ptr @trace_event_type_funcs_bpf_test_finish, !5, !"trace_event_type_funcs_bpf_test_finish", i1 false, i1 false}
!21 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @print_fmt_bpf_test_finish, !5, !"print_fmt_bpf_test_finish", i1 false, i1 false}
!23 = !{ptr @test_sk_kfunc_ids, !24, !"test_sk_kfunc_ids", i1 false, i1 false}
!24 = !{!"../net/bpf/test_run.c", i32 239, i32 1}
!25 = distinct !{null, !26, !"__already_done", i1 false, i1 false}
!26 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!27 = !{ptr @.str.4, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.5, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!30 = !{ptr @.str.6, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!32 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!33 = !{ptr @.str.7, !1, !"<string literal>", i1 false, i1 false}
!34 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!35 = !{ptr @.str.8, !1, !"<string literal>", i1 false, i1 false}
!36 = distinct !{null, !37, !"__warned", i1 false, i1 false}
!37 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!38 = !{ptr @.str.9, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.10, !37, !"<string literal>", i1 false, i1 false}
!40 = distinct !{null, !41, !"__warned", i1 false, i1 false}
!41 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!42 = !{ptr @.str.11, !41, !"<string literal>", i1 false, i1 false}
!43 = distinct !{null, !44, !"__already_done", i1 false, i1 false}
!44 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!45 = !{ptr @.str.12, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @bpf_dummy_proto, !47, !"bpf_dummy_proto", i1 false, i1 false}
!47 = !{!"../net/bpf/test_run.c", i32 559, i32 21}
!48 = !{ptr @.str.13, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../include/linux/filter.h", i32 613, i32 2}
!50 = distinct !{null, !51, !"__already_done", i1 false, i1 false}
!51 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!52 = !{ptr @.str.14, !51, !"<string literal>", i1 false, i1 false}
!53 = distinct !{null, !54, !"__already_done", i1 false, i1 false}
!54 = !{!"../include/linux/rcupdate_trace.h", i32 83, i32 2}
!55 = distinct !{null, !54, !"<string literal>", i1 false, i1 false}
!56 = !{!"sp"}
!57 = !{i32 1, !"wchar_size", i32 2}
!58 = !{i32 1, !"min_enum_size", i32 4}
!59 = !{i32 8, !"branch-target-enforcement", i32 0}
!60 = !{i32 8, !"sign-return-address", i32 0}
!61 = !{i32 8, !"sign-return-address-all", i32 0}
!62 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!63 = !{i32 7, !"uwtable", i32 1}
!64 = !{i32 7, !"frame-pointer", i32 2}
!65 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!66 = !{!"branch_weights", i32 2000, i32 1}
!67 = !{!"branch_weights", i32 1, i32 2000}
!68 = !{!"auto-init"}
!69 = !{i64 2153339379, i64 2153339404}
!70 = !{i64 2149269077, i64 2149269082, i64 2149269095, i64 2149269139, i64 2149269173, i64 2149269194}
!71 = !{i64 2158741391}
!72 = !{i64 2158741590}
!73 = !{i64 2149707631}
!74 = !{i64 2149708667}
!75 = !{i64 2159440406}
!76 = !{i64 2159440585}
!77 = !{i64 2149699072}
!78 = !{i64 1111451, i64 1111512}
!79 = !{i64 2150067249}
!80 = !{i64 2150072181}
!81 = !{i64 2150093893}
!82 = !{i64 2150098785}
!83 = !{i64 2150179303}
!84 = !{i64 2150179628}
!85 = !{i64 1114183}
!86 = !{i64 1114468}
!87 = !{i64 2149699338}
!88 = !{i64 2155188532, i64 2155189020, i64 2155188569, i64 2155188625, i64 2155188659, i64 2155188683, i64 2155188724, i64 2155188745, i64 2155188773, i64 2155188807}
!89 = !{i64 2153338698, i64 2153338723}
!90 = !{i64 5834253}
!91 = !{i64 5834450}
!92 = !{i64 2153319683}
!93 = distinct !{null, ptr @bpf_dispatcher_xdp_func}
!94 = !{i64 2159432771}
!95 = !{i64 2148554175, i64 2148554455, i64 2148554789, i64 2148555123}
!96 = !{i64 2159432868}
!97 = !{i8 0, i8 2}
!98 = !{i64 2158661854}
!99 = !{i64 2158661951}
!100 = !{i64 2157065924}
!101 = !{i64 2157066570}
!102 = !{i64 2157069932}
