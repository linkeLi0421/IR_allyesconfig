; ModuleID = '/llk/IR_all_yes/net/rxrpc/call_object.c_pt.bc'
source_filename = "../net/rxrpc/call_object.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.122 }
%struct.atomic_t = type { i32 }
%union.anon.122 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.114, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.32 }
%struct.llist_node = type { ptr }
%union.anon.32 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.34 }
%union.anon.34 = type { %struct.anon.35 }
%struct.anon.35 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.tlbflush_unmap_batch = type {}
%union.anon.114 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.rxrpc_sock = type { %struct.sock, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head, %struct.rwlock_t, ptr, ptr, %struct.rb_root, i32, %struct.rwlock_t, i32, i8, i16, %struct.anon.136, i16, %struct.sockaddr_rxrpc, %struct.sockaddr_rxrpc }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.80, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.81, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.82, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.sock_common = type { %union.anon.40, %union.anon.42, %union.anon.43, i16, i8, i8, i32, %union.anon.45, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.72, [0 x i32], %union.anon.73, i16, i16, %union.anon.74, %struct.refcount_struct, [0 x i32], %union.anon.75 }
%union.anon.40 = type { i64 }
%union.anon.42 = type { i32 }
%union.anon.43 = type { i32 }
%union.anon.45 = type { %struct.hlist_node }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.71 }
%union.anon.71 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.72 = type { i32 }
%union.anon.73 = type { %struct.hlist_node }
%union.anon.74 = type { i32 }
%union.anon.75 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.80 = type { %struct.atomic_t, i32, ptr, ptr }
%union.anon.81 = type { ptr }
%union.anon.82 = type { ptr }
%struct.sk_buff_head = type { %union.anon.78, i32, %struct.spinlock }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.136 = type { i16, i16 }
%struct.sockaddr_rxrpc = type { i16, i16, i16, i16, %union.anon.135 }
%union.anon.135 = type { %struct.sockaddr_in6 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.rxrpc_call = type { %struct.callback_head, ptr, ptr, ptr, ptr, ptr, %struct.mutex, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, %struct.timer_list, %struct.work_struct, ptr, %struct.list_head, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.rb_node, ptr, %struct.wait_queue_head, i64, [2 x i32], i32, i32, i32, %struct.spinlock, %struct.spinlock, %struct.rwlock_t, i32, i32, i32, i32, %struct.atomic_t, i16, i8, i32, i32, i32, i32, i16, i16, i8, ptr, ptr, i32, i32, i16, i8, i8, i8, i8, i8, i8, i64, i32, i32, i32, i32, i8, i8, i8, i8, %struct.spinlock, i8, i32, i32, i32, i32, i32, [4 x i32], [4 x i64], i32, i64, i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.17, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.17 = type { %struct.anon.18 }
%struct.anon.18 = type { ptr, i32, i32, i32 }
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
%struct.ping_group_range = type { %struct.seqlock_t, [2 x %struct.kgid_t] }
%struct.kgid_t = type { i32 }
%struct.siphash_key_t = type { [2 x i64] }
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.93, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.anon.93 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [8 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_mpls = type { i32, i32, i32, ptr, ptr }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.netns_xdp = type { %struct.mutex, %struct.hlist_head }
%struct.netns_mctp = type { %struct.list_head, %struct.mutex, %struct.hlist_head, %struct.spinlock, %struct.hlist_head, i32, %struct.mutex, %struct.list_head }
%struct.netns_smc = type { ptr, %struct.mutex, ptr }
%struct.rxrpc_net = type { ptr, i32, %struct.list_head, %struct.rwlock_t, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.rwlock_t, %struct.work_struct, %struct.timer_list, i8, i8, %struct.atomic_t, %struct.spinlock, %struct.spinlock, %struct.list_head, %struct.work_struct, %struct.timer_list, %struct.list_head, %struct.mutex, [1024 x %struct.hlist_head], %struct.spinlock, i8, i64, [32 x %struct.list_head], %struct.list_head, %struct.timer_list, %struct.work_struct }
%struct.rxrpc_call_params = type { i64, i32, %struct.anon.157, i8, i8, i32 }
%struct.anon.157 = type { i32, i32, i32 }
%struct.rxrpc_connection = type { %struct.rxrpc_conn_proto, %struct.rxrpc_conn_parameters, %struct.atomic_t, %struct.callback_head, %struct.list_head, i8, [4 x %struct.rxrpc_channel], %struct.timer_list, %struct.work_struct, ptr, %struct.rb_node, %struct.list_head, %struct.list_head, %struct.sk_buff_head, ptr, [4 x i8], %union.anon.139, i32, i32, i32, %struct.spinlock, i32, i32, i32, %struct.atomic_t, i32, i32, i8, i8, i8, i16 }
%struct.rxrpc_conn_proto = type { %union.anon }
%union.anon = type { i64 }
%struct.rxrpc_conn_parameters = type { ptr, ptr, ptr, i8, i8, i16, i32 }
%struct.rxrpc_channel = type { i32, ptr, i32, i32, i32, i32, i8, %union.anon.137 }
%union.anon.137 = type { i32 }
%union.anon.139 = type { %struct.anon.140 }
%struct.anon.140 = type { ptr, [4 x i8], %struct.rxrpc_crypt, i32, [4 x i8] }
%struct.rxrpc_crypt = type { %union.anon.141 }
%union.anon.141 = type { [2 x i32] }
%struct.rxrpc_security = type { ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sk_buff = type { %union.anon.50, %union.anon.53, %union.anon.54, [48 x i8], %union.anon.55, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.57, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type { ptr, ptr, %union.anon.52 }
%union.anon.52 = type { ptr }
%union.anon.53 = type { ptr }
%union.anon.54 = type { i64 }
%union.anon.55 = type { %struct.anon.56 }
%struct.anon.56 = type { i32, ptr }
%union.anon.57 = type { %struct.anon.58 }
%struct.anon.58 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.59, i32, i32, i32, i16, i16, %union.anon.61, i32, %union.anon.62, %union.anon.63, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.59 = type { i32 }
%union.anon.61 = type { i32 }
%union.anon.62 = type { i32 }
%union.anon.63 = type { i16 }
%struct.rxrpc_peer = type { %struct.callback_head, %struct.atomic_t, i32, %struct.hlist_node, ptr, %struct.hlist_head, %struct.rb_root, %struct.list_head, i64, %struct.seqlock_t, %struct.spinlock, i32, i32, i32, i16, i32, %struct.sockaddr_rxrpc, %struct.spinlock, i64, i32, i32, i32, i32, i32, i32, i8, i8 }
%struct.wait_bit_queue_entry = type { %struct.wait_bit_key, %struct.wait_queue_entry }
%struct.wait_bit_key = type { ptr, i32, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }

@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Uninit  \00", [23 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ClWtConn\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ClSndReq\00", [23 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ClAwtRpl\00", [23 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ClRcvRpl\00", [23 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"SvPrealc\00", [23 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"SvSecure\00", [23 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"SvRcvReq\00", [23 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"SvAckReq\00", [23 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"SvSndRpl\00", [23 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"SvAwtACK\00", [23 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Complete\00", [23 x i8] zeroinitializer }, align 32
@rxrpc_call_states = dso_local constant { [12 x ptr], [48 x i8] } { [12 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11], [48 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"RmtAbort\00", [23 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"LocAbort\00", [23 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"LocError\00", [23 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"NetError\00", [23 x i8] zeroinitializer }, align 32
@rxrpc_call_completions = dso_local constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15], [44 x i8] zeroinitializer }, align 32
@rxrpc_debug = external dso_local local_unnamed_addr global i32, align 4
@rxrpc_find_call_by_user_ID._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.18, i32 72, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"[%-6.6s] ==> %s(%p,%lx)\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"rxrpc_find_call_by_user_ID\00", [37 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"net/rxrpc/call_object.c\00", [40 x i8] zeroinitializer }, align 32
@rxrpc_find_call_by_user_ID._entry_ptr = internal global ptr @rxrpc_find_call_by_user_ID._entry, section ".printk_index", align 4
@rxrpc_find_call_by_user_ID._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.17, ptr @.str.18, i32 89, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"[%-6.6s] <== %s() = NULL\0A\00", [38 x i8] zeroinitializer }, align 32
@rxrpc_find_call_by_user_ID._entry_ptr.21 = internal global ptr @rxrpc_find_call_by_user_ID._entry.19, section ".printk_index", align 4
@rxrpc_find_call_by_user_ID._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.17, ptr @.str.18, i32 95, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"[%-6.6s] <== %s() = %p [%d]\0A\00", [35 x i8] zeroinitializer }, align 32
@rxrpc_find_call_by_user_ID._entry_ptr.24 = internal global ptr @rxrpc_find_call_by_user_ID._entry.22, section ".printk_index", align 4
@rxrpc_call_jar = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@rxrpc_alloc_call.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.25 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&call->user_mutex\00", [46 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"&rxrpc_call_user_mutex_lock_class_key\00", [58 x i8] zeroinitializer }, align 32
@rxrpc_call_user_mutex_lock_class_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@rxrpc_alloc_call.__key.27 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.28 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"(&call->timer)\00", [17 x i8] zeroinitializer }, align 32
@rxrpc_alloc_call.__key.29 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.30 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"(work_completion)(&call->processor)\00", [60 x i8] zeroinitializer }, align 32
@rxrpc_alloc_call.__key.31 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.32 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&call->waitq\00", [19 x i8] zeroinitializer }, align 32
@rxrpc_alloc_call.__key.33 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.34 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&call->lock\00", [20 x i8] zeroinitializer }, align 32
@rxrpc_alloc_call.__key.35 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.36 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&call->notify_lock\00", [45 x i8] zeroinitializer }, align 32
@rxrpc_alloc_call.__key.37 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.38 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&call->input_lock\00", [46 x i8] zeroinitializer }, align 32
@rxrpc_alloc_call.__key.39 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.40 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&call->state_lock\00", [46 x i8] zeroinitializer }, align 32
@rxrpc_rx_window_size = external dso_local local_unnamed_addr global i32, align 4
@rxrpc_new_client_call._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.41, ptr @.str.18, i32 265, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rxrpc_new_client_call\00", [42 x i8] zeroinitializer }, align 32
@rxrpc_new_client_call._entry_ptr = internal global ptr @rxrpc_new_client_call._entry, section ".printk_index", align 4
@rxrpc_new_client_call._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.41, ptr @.str.18, i32 275, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"[%-6.6s] <== %s() = %ld\0A\00", [39 x i8] zeroinitializer }, align 32
@rxrpc_new_client_call._entry_ptr.44 = internal global ptr @rxrpc_new_client_call._entry.42, section ".printk_index", align 4
@rxrpc_new_client_call._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.41, ptr @.str.18, i32 339, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"[%-6.6s] @@@ CALL new %d on CONN %d\0A\00", [59 x i8] zeroinitializer }, align 32
@rxrpc_new_client_call._entry_ptr.47 = internal global ptr @rxrpc_new_client_call._entry.45, section ".printk_index", align 4
@rxrpc_new_client_call._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.41, ptr @.str.18, i32 341, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"[%-6.6s] <== %s() = %p [new]\0A\00", [34 x i8] zeroinitializer }, align 32
@rxrpc_new_client_call._entry_ptr.50 = internal global ptr @rxrpc_new_client_call._entry.48, section ".printk_index", align 4
@rxrpc_new_client_call._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.41, ptr @.str.18, i32 359, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"[%-6.6s] <== %s() = -EEXIST\0A\00", [35 x i8] zeroinitializer }, align 32
@rxrpc_new_client_call._entry_ptr.53 = internal global ptr @rxrpc_new_client_call._entry.51, section ".printk_index", align 4
@rxrpc_new_client_call._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.41, ptr @.str.18, i32 373, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"[%-6.6s] <== %s() = c=%08x [err]\0A\00", [62 x i8] zeroinitializer }, align 32
@rxrpc_new_client_call._entry_ptr.56 = internal global ptr @rxrpc_new_client_call._entry.54, section ".printk_index", align 4
@rxrpc_incoming_call._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.18, i32 389, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"[%-6.6s] ==> %s(,%d)\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rxrpc_incoming_call\00", [44 x i8] zeroinitializer }, align 32
@rxrpc_incoming_call._entry_ptr = internal global ptr @rxrpc_incoming_call._entry, section ".printk_index", align 4
@rxrpc_incoming_call._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.58, ptr @.str.18, i32 413, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"[%-6.6s] @@@ CALL incoming %d on CONN %d\0A\00", [54 x i8] zeroinitializer }, align 32
@rxrpc_incoming_call._entry_ptr.61 = internal global ptr @rxrpc_incoming_call._entry.59, section ".printk_index", align 4
@rxrpc_incoming_call._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.58, ptr @.str.18, i32 416, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"[%-6.6s] <== %s()\0A\00", [45 x i8] zeroinitializer }, align 32
@rxrpc_incoming_call._entry_ptr.64 = internal global ptr @rxrpc_incoming_call._entry.62, section ".printk_index", align 4
@rxrpc_workqueue = external dso_local local_unnamed_addr global ptr, align 4
@__rxrpc_queue_call._entry = internal constant %struct.pi_entry { ptr @.str.65, ptr @.str.66, ptr @.str.18, i32 443, ptr null, ptr null }, align 1
@.str.65 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\013rxrpc: Assertion failed - %lu(0x%lx) %s %lu(0x%lx) is false\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"__rxrpc_queue_call\00", [45 x i8] zeroinitializer }, align 32
@__rxrpc_queue_call._entry_ptr = internal global ptr @__rxrpc_queue_call._entry, section ".printk_index", align 4
@.str.67 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c">=\00", [29 x i8] zeroinitializer }, align 32
@rxrpc_release_call._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.69, ptr @.str.18, i32 499, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"[%-6.6s] ==> %s({%d,%d})\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rxrpc_release_call\00", [45 x i8] zeroinitializer }, align 32
@rxrpc_release_call._entry_ptr = internal global ptr @rxrpc_release_call._entry, section ".printk_index", align 4
@rxrpc_release_call._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.69, ptr @.str.18, i32 505, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@rxrpc_release_call._entry_ptr.71 = internal global ptr @rxrpc_release_call._entry.70, section ".printk_index", align 4
@.str.72 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"==\00", [29 x i8] zeroinitializer }, align 32
@rxrpc_release_call._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.69, ptr @.str.18, i32 521, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"[%-6.6s]     unlinking once-pending call %p { e=%lx f=%lx }\0A\00", [35 x i8] zeroinitializer }, align 32
@rxrpc_release_call._entry_ptr.75 = internal global ptr @rxrpc_release_call._entry.73, section ".printk_index", align 4
@rxrpc_release_call._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.69, ptr @.str.18, i32 545, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"[%-6.6s]     RELEASE CALL %p (%d CONN %p)\0A\00", [53 x i8] zeroinitializer }, align 32
@rxrpc_release_call._entry_ptr.78 = internal global ptr @rxrpc_release_call._entry.76, section ".printk_index", align 4
@rxrpc_release_call._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.69, ptr @.str.18, i32 551, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@rxrpc_release_call._entry_ptr.80 = internal global ptr @rxrpc_release_call._entry.79, section ".printk_index", align 4
@rxrpc_release_calls_on_socket._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.82, ptr @.str.18, i32 561, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"[%-6.6s] ==> %s(%p)\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"rxrpc_release_calls_on_socket\00", [34 x i8] zeroinitializer }, align 32
@rxrpc_release_calls_on_socket._entry_ptr = internal global ptr @rxrpc_release_calls_on_socket._entry, section ".printk_index", align 4
@.str.83 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"SKR\00", [28 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"SKT\00", [28 x i8] zeroinitializer }, align 32
@rxrpc_release_calls_on_socket._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.82, ptr @.str.18, i32 581, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@rxrpc_release_calls_on_socket._entry_ptr.86 = internal global ptr @rxrpc_release_calls_on_socket._entry.85, section ".printk_index", align 4
@rxrpc_put_call._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.88, ptr @.str.18, i32 594, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013rxrpc: Assertion failed\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rxrpc_put_call\00", [17 x i8] zeroinitializer }, align 32
@rxrpc_put_call._entry_ptr = internal global ptr @rxrpc_put_call._entry, section ".printk_index", align 4
@rxrpc_put_call._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.88, ptr @.str.18, i32 598, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@rxrpc_put_call._entry_ptr.90 = internal global ptr @rxrpc_put_call._entry.89, section ".printk_index", align 4
@rxrpc_put_call._entry.91 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.88, ptr @.str.18, i32 600, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"[%-6.6s]     call %d dead\0A\00", [37 x i8] zeroinitializer }, align 32
@rxrpc_put_call._entry_ptr.93 = internal global ptr @rxrpc_put_call._entry.91, section ".printk_index", align 4
@rxrpc_put_call._entry.94 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.88, ptr @.str.18, i32 601, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@rxrpc_put_call._entry_ptr.95 = internal global ptr @rxrpc_put_call._entry.94, section ".printk_index", align 4
@rxrpc_cleanup_call._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.97, ptr @.str.18, i32 651, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"[%-6.6s] @@@ DESTROY CALL %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rxrpc_cleanup_call\00", [45 x i8] zeroinitializer }, align 32
@rxrpc_cleanup_call._entry_ptr = internal global ptr @rxrpc_cleanup_call._entry, section ".printk_index", align 4
@rxrpc_cleanup_call._entry.98 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.97, ptr @.str.18, i32 657, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@rxrpc_cleanup_call._entry_ptr.99 = internal global ptr @rxrpc_cleanup_call._entry.98, section ".printk_index", align 4
@rxrpc_cleanup_call._entry.100 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.97, ptr @.str.18, i32 658, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@rxrpc_cleanup_call._entry_ptr.101 = internal global ptr @rxrpc_cleanup_call._entry.100, section ".printk_index", align 4
@rxrpc_destroy_all_calls._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.103, ptr @.str.18, i32 675, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"[%-6.6s] ==> %s()\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rxrpc_destroy_all_calls\00", [40 x i8] zeroinitializer }, align 32
@rxrpc_destroy_all_calls._entry_ptr = internal global ptr @rxrpc_destroy_all_calls._entry, section ".printk_index", align 4
@rxrpc_destroy_all_calls._entry.104 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.103, ptr @.str.18, i32 683, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"[%-6.6s]     Zapping call %p\0A\00", [34 x i8] zeroinitializer }, align 32
@rxrpc_destroy_all_calls._entry_ptr.106 = internal global ptr @rxrpc_destroy_all_calls._entry.104, section ".printk_index", align 4
@rxrpc_destroy_all_calls._entry.107 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.103, ptr @.str.18, i32 691, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013rxrpc: Call %p still in use (%d,%s,%lx,%lx)!\0A\00", [48 x i8] zeroinitializer }, align 32
@rxrpc_destroy_all_calls._entry_ptr.109 = internal global ptr @rxrpc_destroy_all_calls._entry.107, section ".printk_index", align 4
@rxrpc_net_id = external dso_local local_unnamed_addr global i32, align 4
@net_generic.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.110 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/net/netns/generic.h\00", [36 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.112 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.114 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@rxrpc_call_timer_expired._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.116, ptr @.str.18, i32 52, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"[%-6.6s] ==> %s(%d)\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"rxrpc_call_timer_expired\00", [39 x i8] zeroinitializer }, align 32
@rxrpc_call_timer_expired._entry_ptr = internal global ptr @rxrpc_call_timer_expired._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@__tracepoint_rxrpc_timer = external dso_local global %struct.tracepoint, align 4
@.str.117 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"include/trace/events/rxrpc.h\00", [35 x i8] zeroinitializer }, align 32
@trace_rxrpc_timer.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.118 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@rxrpc_call_limiter = internal global { %struct.semaphore, [40 x i8] } { %struct.semaphore { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.119, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 1000, %struct.list_head { ptr getelementptr (i8, ptr @rxrpc_call_limiter, i64 48), ptr getelementptr (i8, ptr @rxrpc_call_limiter, i64 48) } }, [40 x i8] zeroinitializer }, align 32
@rxrpc_kernel_call_limiter = internal global { %struct.semaphore, [40 x i8] } { %struct.semaphore { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.120, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 1000, %struct.list_head { ptr getelementptr (i8, ptr @rxrpc_kernel_call_limiter, i64 48), ptr getelementptr (i8, ptr @rxrpc_kernel_call_limiter, i64 48) } }, [40 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"(rxrpc_call_limiter).lock\00", [38 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"(rxrpc_kernel_call_limiter).lock\00", [63 x i8] zeroinitializer }, align 32
@rxrpc_alloc_client_call._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.121, ptr @.str.18, i32 182, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rxrpc_alloc_client_call\00", [40 x i8] zeroinitializer }, align 32
@rxrpc_alloc_client_call._entry_ptr = internal global ptr @rxrpc_alloc_client_call._entry, section ".printk_index", align 4
@rxrpc_alloc_client_call._entry.122 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.123, ptr @.str.121, ptr @.str.18, i32 194, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"[%-6.6s] <== %s() = %p\0A\00", [40 x i8] zeroinitializer }, align 32
@rxrpc_alloc_client_call._entry_ptr.124 = internal global ptr @rxrpc_alloc_client_call._entry.122, section ".printk_index", align 4
@__tracepoint_rxrpc_call = external dso_local global %struct.tracepoint, align 4
@trace_rxrpc_call.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rxrpc_rcu_destroy_call.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 19, i32 32 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 20, i32 36 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 21, i32 37 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 22, i32 37 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 23, i32 36 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 24, i32 34 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 25, i32 34 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 26, i32 37 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 27, i32 37 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 28, i32 36 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 29, i32 35 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 30, i32 28 }
@___asan_gen_.161 = private unnamed_addr constant [18 x i8] c"rxrpc_call_states\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 18, i32 19 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 35, i32 35 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 36, i32 34 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 37, i32 30 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 38, i32 32 }
@___asan_gen_.176 = private unnamed_addr constant [23 x i8] c"rxrpc_call_completions\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 33, i32 19 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 72, i32 2 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 89, i32 2 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 95, i32 2 }
@___asan_gen_.203 = private unnamed_addr constant [15 x i8] c"rxrpc_call_jar\00", align 1
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 41, i32 20 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 122, i32 2 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 128, i32 3 }
@___asan_gen_.215 = private unnamed_addr constant [37 x i8] c"rxrpc_call_user_mutex_lock_class_key\00", align 1
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 60, i32 30 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 131, i32 2 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 132, i32 2 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 138, i32 2 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 139, i32 2 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 140, i32 2 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 141, i32 2 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 142, i32 2 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 265, i32 2 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 275, i32 3 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 339, i32 2 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 341, i32 2 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 359, i32 2 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 373, i32 2 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 389, i32 2 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 413, i32 2 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 416, i32 2 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 443, i32 2 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 499, i32 2 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 505, i32 2 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 520, i32 3 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 545, i32 2 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 551, i32 2 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 561, i32 2 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 567, i32 20 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 575, i32 20 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 581, i32 2 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 594, i32 2 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 598, i32 2 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 600, i32 3 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 601, i32 3 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 651, i32 2 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 657, i32 2 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 658, i32 2 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 675, i32 2 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 683, i32 4 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 688, i32 4 }
@___asan_gen_.435 = private unnamed_addr constant [31 x i8] c"../include/net/netns/generic.h\00", align 1
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 45, i32 7 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 695, i32 2 }
@___asan_gen_.444 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 723, i32 2 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 52, i32 2 }
@___asan_gen_.456 = private unnamed_addr constant [32 x i8] c"../include/trace/events/rxrpc.h\00", align 1
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.456, i32 1138, i32 1 }
@___asan_gen_.459 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 108, i32 2 }
@___asan_gen_.461 = private unnamed_addr constant [19 x i8] c"rxrpc_call_limiter\00", align 1
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 43, i32 25 }
@___asan_gen_.464 = private unnamed_addr constant [26 x i8] c"rxrpc_kernel_call_limiter\00", align 1
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 45, i32 25 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 44, i32 2 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 46, i32 2 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 182, i32 2 }
@___asan_gen_.479 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.482 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 194, i32 2 }
@___asan_gen_.485 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.486 = private constant [27 x i8] c"../net/rxrpc/call_object.c\00", align 1
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 638, i32 3 }
@llvm.compiler.used = appending global [155 x ptr] [ptr @__rxrpc_queue_call._entry, ptr @__rxrpc_queue_call._entry_ptr, ptr @rxrpc_alloc_client_call._entry, ptr @rxrpc_alloc_client_call._entry.122, ptr @rxrpc_alloc_client_call._entry_ptr, ptr @rxrpc_alloc_client_call._entry_ptr.124, ptr @rxrpc_call_timer_expired._entry, ptr @rxrpc_call_timer_expired._entry_ptr, ptr @rxrpc_cleanup_call._entry, ptr @rxrpc_cleanup_call._entry.100, ptr @rxrpc_cleanup_call._entry.98, ptr @rxrpc_cleanup_call._entry_ptr, ptr @rxrpc_cleanup_call._entry_ptr.101, ptr @rxrpc_cleanup_call._entry_ptr.99, ptr @rxrpc_destroy_all_calls._entry, ptr @rxrpc_destroy_all_calls._entry.104, ptr @rxrpc_destroy_all_calls._entry.107, ptr @rxrpc_destroy_all_calls._entry_ptr, ptr @rxrpc_destroy_all_calls._entry_ptr.106, ptr @rxrpc_destroy_all_calls._entry_ptr.109, ptr @rxrpc_find_call_by_user_ID._entry, ptr @rxrpc_find_call_by_user_ID._entry.19, ptr @rxrpc_find_call_by_user_ID._entry.22, ptr @rxrpc_find_call_by_user_ID._entry_ptr, ptr @rxrpc_find_call_by_user_ID._entry_ptr.21, ptr @rxrpc_find_call_by_user_ID._entry_ptr.24, ptr @rxrpc_incoming_call._entry, ptr @rxrpc_incoming_call._entry.59, ptr @rxrpc_incoming_call._entry.62, ptr @rxrpc_incoming_call._entry_ptr, ptr @rxrpc_incoming_call._entry_ptr.61, ptr @rxrpc_incoming_call._entry_ptr.64, ptr @rxrpc_new_client_call._entry, ptr @rxrpc_new_client_call._entry.42, ptr @rxrpc_new_client_call._entry.45, ptr @rxrpc_new_client_call._entry.48, ptr @rxrpc_new_client_call._entry.51, ptr @rxrpc_new_client_call._entry.54, ptr @rxrpc_new_client_call._entry_ptr, ptr @rxrpc_new_client_call._entry_ptr.44, ptr @rxrpc_new_client_call._entry_ptr.47, ptr @rxrpc_new_client_call._entry_ptr.50, ptr @rxrpc_new_client_call._entry_ptr.53, ptr @rxrpc_new_client_call._entry_ptr.56, ptr @rxrpc_put_call._entry, ptr @rxrpc_put_call._entry.89, ptr @rxrpc_put_call._entry.91, ptr @rxrpc_put_call._entry.94, ptr @rxrpc_put_call._entry_ptr, ptr @rxrpc_put_call._entry_ptr.90, ptr @rxrpc_put_call._entry_ptr.93, ptr @rxrpc_put_call._entry_ptr.95, ptr @rxrpc_release_call._entry, ptr @rxrpc_release_call._entry.70, ptr @rxrpc_release_call._entry.73, ptr @rxrpc_release_call._entry.76, ptr @rxrpc_release_call._entry.79, ptr @rxrpc_release_call._entry_ptr, ptr @rxrpc_release_call._entry_ptr.71, ptr @rxrpc_release_call._entry_ptr.75, ptr @rxrpc_release_call._entry_ptr.78, ptr @rxrpc_release_call._entry_ptr.80, ptr @rxrpc_release_calls_on_socket._entry, ptr @rxrpc_release_calls_on_socket._entry.85, ptr @rxrpc_release_calls_on_socket._entry_ptr, ptr @rxrpc_release_calls_on_socket._entry_ptr.86, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @rxrpc_call_states, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @rxrpc_call_completions, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.23, ptr @rxrpc_call_jar, ptr @rxrpc_alloc_call.__key, ptr @.str.25, ptr @.str.26, ptr @rxrpc_call_user_mutex_lock_class_key, ptr @rxrpc_alloc_call.__key.27, ptr @.str.28, ptr @rxrpc_alloc_call.__key.29, ptr @.str.30, ptr @rxrpc_alloc_call.__key.31, ptr @.str.32, ptr @rxrpc_alloc_call.__key.33, ptr @.str.34, ptr @rxrpc_alloc_call.__key.35, ptr @.str.36, ptr @rxrpc_alloc_call.__key.37, ptr @.str.38, ptr @rxrpc_alloc_call.__key.39, ptr @.str.40, ptr @.str.41, ptr @.str.43, ptr @.str.46, ptr @.str.49, ptr @.str.52, ptr @.str.55, ptr @.str.57, ptr @.str.58, ptr @.str.60, ptr @.str.63, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.72, ptr @.str.74, ptr @.str.77, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.87, ptr @.str.88, ptr @.str.92, ptr @.str.96, ptr @.str.97, ptr @.str.102, ptr @.str.103, ptr @.str.105, ptr @.str.108, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @rxrpc_call_limiter, ptr @rxrpc_kernel_call_limiter, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.123, ptr @rxrpc_rcu_destroy_call.__key], section "llvm.metadata"
@0 = internal global [121 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_call_states to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_call_completions to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_find_call_by_user_ID._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_find_call_by_user_ID._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_find_call_by_user_ID._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_call_jar to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_alloc_call.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_call_user_mutex_lock_class_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_alloc_call.__key.27 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_alloc_call.__key.29 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_alloc_call.__key.31 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_alloc_call.__key.33 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_alloc_call.__key.35 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_alloc_call.__key.37 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_alloc_call.__key.39 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_new_client_call._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_new_client_call._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_new_client_call._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_new_client_call._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_new_client_call._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_new_client_call._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_incoming_call._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_incoming_call._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_incoming_call._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_release_call._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_release_call._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_release_call._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_release_call._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_release_call._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_release_calls_on_socket._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_release_calls_on_socket._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_put_call._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_put_call._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_put_call._entry.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_put_call._entry.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_cleanup_call._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_cleanup_call._entry.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_cleanup_call._entry.100 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_destroy_all_calls._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_destroy_all_calls._entry.104 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_destroy_all_calls._entry.107 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_call_timer_expired._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_call_limiter to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_kernel_call_limiter to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_alloc_client_call._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_alloc_client_call._entry.122 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_rcu_destroy_call.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @rxrpc_find_call_by_user_ID(ptr noundef %rx, i32 noundef %user_call_ID) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %0 = load i32, ptr @rxrpc_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end7_crit_edge, label %do.end, !prof !248

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end7

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %1 = tail call i32 @llvm.read_register.i32(metadata !238) #9
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 101
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %comm, ptr noundef nonnull @.str.17, ptr noundef %rx, i32 noundef %user_call_ID) #12
  br label %do.end7

do.end7:                                          ; preds = %do.end, %entry.do.end7_crit_edge
  %call_lock = getelementptr inbounds %struct.rxrpc_sock, ptr %rx, i32 0, i32 14
  tail call void @_raw_read_lock(ptr noundef %call_lock) #9
  %calls = getelementptr inbounds %struct.rxrpc_sock, ptr %rx, i32 0, i32 12
  %5 = ptrtoint ptr %calls to i32
  call void @__asan_load4_noabort(i32 %5)
  %p.083 = load ptr, ptr %calls, align 4
  %tobool8.not84 = icmp eq ptr %p.083, null
  br i1 %tobool8.not84, label %do.end7.while.end_crit_edge, label %do.end7.while.body_crit_edge

do.end7.while.body_crit_edge:                     ; preds = %do.end7
  br label %while.body

do.end7.while.end_crit_edge:                      ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body:                                       ; preds = %if.end17.while.body_crit_edge, %do.end7.while.body_crit_edge
  %p.085 = phi ptr [ %p.0, %if.end17.while.body_crit_edge ], [ %p.083, %do.end7.while.body_crit_edge ]
  %user_call_ID10 = getelementptr i8, ptr %p.085, i32 84
  %6 = ptrtoint ptr %user_call_ID10 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %user_call_ID10, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %user_call_ID)
  %cmp = icmp ugt i32 %7, %user_call_ID
  br i1 %cmp, label %if.then11, label %if.else

if.then11:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %rb_left = getelementptr inbounds %struct.rb_node, ptr %p.085, i32 0, i32 2
  br label %if.end17

if.else:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %user_call_ID)
  %cmp13 = icmp ult i32 %7, %user_call_ID
  br i1 %cmp13, label %if.then14, label %found_extant_call

if.then14:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %rb_right = getelementptr inbounds %struct.rb_node, ptr %p.085, i32 0, i32 1
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %if.then11
  %p.1.in = phi ptr [ %rb_left, %if.then11 ], [ %rb_right, %if.then14 ]
  %8 = ptrtoint ptr %p.1.in to i32
  call void @__asan_load4_noabort(i32 %8)
  %p.0 = load ptr, ptr %p.1.in, align 4
  %tobool8.not = icmp eq ptr %p.0, null
  br i1 %tobool8.not, label %if.end17.while.end_crit_edge, label %if.end17.while.body_crit_edge

if.end17.while.body_crit_edge:                    ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

if.end17.while.end_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %if.end17.while.end_crit_edge, %do.end7.while.end_crit_edge
  tail call void @_raw_read_unlock(ptr noundef %call_lock) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %9 = load i32, ptr @rxrpc_debug, align 4
  %and20 = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %while.end.cleanup_crit_edge, label %do.end31, !prof !248

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end31:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  %10 = tail call i32 @llvm.read_register.i32(metadata !238) #9
  %and.i80 = and i32 %10, -16384
  %11 = inttoptr i32 %and.i80 to ptr
  %task34 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %task34 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %task34, align 8
  %comm35 = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 101
  %call37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef %comm35, ptr noundef nonnull @.str.17) #12
  br label %cleanup

found_extant_call:                                ; preds = %if.else
  %add.ptr.le = getelementptr i8, ptr %p.085, i32 -308
  %14 = tail call ptr @llvm.returnaddress(i32 0) #9
  %usage.i = getelementptr i8, ptr %p.085, i32 244
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !249
  tail call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #9
  %15 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #9, !srcloc !250
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %15, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !251
  %debug_id.i = getelementptr i8, ptr %p.085, i32 264
  %16 = ptrtoint ptr %debug_id.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %debug_id.i, align 4
  tail call fastcc void @trace_rxrpc_call(i32 noundef %17, i32 noundef 2, i32 noundef %asmresult.i.i.i.i.i, ptr noundef %14, ptr noundef null) #9
  tail call void @_raw_read_unlock(ptr noundef %call_lock) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %18 = load i32, ptr @rxrpc_debug, align 4
  %and43 = and i32 %18, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  br i1 %tobool44.not, label %found_extant_call.cleanup_crit_edge, label %do.end54, !prof !248

found_extant_call.cleanup_crit_edge:              ; preds = %found_extant_call
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end54:                                         ; preds = %found_extant_call
  call void @__sanitizer_cov_trace_pc() #11
  %19 = tail call i32 @llvm.read_register.i32(metadata !238) #9
  %and.i81 = and i32 %19, -16384
  %20 = inttoptr i32 %and.i81 to ptr
  %task57 = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %task57 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %task57, align 8
  %comm58 = getelementptr inbounds %struct.task_struct, ptr %22, i32 0, i32 101
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %usage.i, i32 noundef 4) #9
  %23 = ptrtoint ptr %usage.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %usage.i, align 4
  %call61 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %comm58, ptr noundef nonnull @.str.17, ptr noundef %add.ptr.le, i32 noundef %24) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end54, %found_extant_call.cleanup_crit_edge, %do.end31, %while.end.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %do.end31 ], [ null, %while.end.cleanup_crit_edge ], [ %add.ptr.le, %do.end54 ], [ %add.ptr.le, %found_extant_call.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rxrpc_get_call(ptr noundef %call, i32 noundef %op) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call ptr @llvm.returnaddress(i32 0)
  %usage = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 42
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !249
  tail call void @llvm.prefetch.p0(ptr %usage, i32 1, i32 3, i32 1) #9
  %1 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage, ptr %usage, i32 1, ptr elementtype(i32) %usage) #9, !srcloc !250
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %1, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !251
  %debug_id = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 48
  %2 = ptrtoint ptr %debug_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %debug_id, align 4
  tail call fastcc void @trace_rxrpc_call(i32 noundef %3, i32 noundef %op, i32 noundef %asmresult.i.i.i.i, ptr noundef %0, ptr noundef null)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @rxrpc_alloc_call(ptr nocapture noundef readonly %rx, i32 noundef %gfp, i32 noundef %debug_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %rx, i32 0, i32 9
  %0 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skc_net.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_net_id to i32))
  %2 = load i32, ptr @rxrpc_net_id, align 4
  %3 = tail call i32 @llvm.read_register.i32(metadata !238) #9
  %and.i.i.i.i.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %6, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !252
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i.i.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i.i.i, label %entry.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true.i.i.i

entry.rcu_read_lock.exit.i.i_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %entry
  %call1.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true2.i.i.i

land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i.i

land.lhs.true2.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b4.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i, label %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.112, i32 noundef 696, ptr noundef nonnull @.str.113) #9
  br label %rcu_read_lock.exit.i.i

rcu_read_lock.exit.i.i:                           ; preds = %if.then.i.i.i, %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %entry.rcu_read_lock.exit.i.i_crit_edge
  %gen.i.i = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 43
  %7 = ptrtoint ptr %gen.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %gen.i.i, align 128
  %call.i.i101 = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i101)
  %tobool.not.i.i = icmp eq i32 %call.i.i101, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %rcu_read_lock.exit.i.i.do.end7.i.i_crit_edge

rcu_read_lock.exit.i.i.do.end7.i.i_crit_edge:     ; preds = %rcu_read_lock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end7.i.i

land.lhs.true.i.i:                                ; preds = %rcu_read_lock.exit.i.i
  %call2.i.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %land.lhs.true.i.i.do.end7.i.i_crit_edge, label %land.lhs.true4.i.i

land.lhs.true.i.i.do.end7.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end7.i.i

land.lhs.true4.i.i:                               ; preds = %land.lhs.true.i.i
  %.b9.i.i = load i1, ptr @net_generic.__warned, align 1
  br i1 %.b9.i.i, label %land.lhs.true4.i.i.do.end7.i.i_crit_edge, label %if.then.i.i

land.lhs.true4.i.i.do.end7.i.i_crit_edge:         ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end7.i.i

if.then.i.i:                                      ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @net_generic.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.110, i32 noundef 45, ptr noundef nonnull @.str.111) #9
  br label %do.end7.i.i

do.end7.i.i:                                      ; preds = %if.then.i.i, %land.lhs.true4.i.i.do.end7.i.i_crit_edge, %land.lhs.true.i.i.do.end7.i.i_crit_edge, %rcu_read_lock.exit.i.i.do.end7.i.i_crit_edge
  %arrayidx.i.i = getelementptr [0 x ptr], ptr %8, i32 0, i32 %2
  %9 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.i.i, align 4
  %call.i10.i.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i10.i.i, label %do.end7.i.i.rxrpc_net.exit_crit_edge, label %land.lhs.true.i13.i.i

do.end7.i.i.rxrpc_net.exit_crit_edge:             ; preds = %do.end7.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rxrpc_net.exit

land.lhs.true.i13.i.i:                            ; preds = %do.end7.i.i
  %call1.i11.i.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i11.i.i)
  %tobool.not.i12.i.i = icmp eq i32 %call1.i11.i.i, 0
  br i1 %tobool.not.i12.i.i, label %land.lhs.true.i13.i.i.rxrpc_net.exit_crit_edge, label %land.lhs.true2.i15.i.i

land.lhs.true.i13.i.i.rxrpc_net.exit_crit_edge:   ; preds = %land.lhs.true.i13.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rxrpc_net.exit

land.lhs.true2.i15.i.i:                           ; preds = %land.lhs.true.i13.i.i
  %.b4.i14.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i14.i.i, label %land.lhs.true2.i15.i.i.rxrpc_net.exit_crit_edge, label %if.then.i16.i.i

land.lhs.true2.i15.i.i.rxrpc_net.exit_crit_edge:  ; preds = %land.lhs.true2.i15.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rxrpc_net.exit

if.then.i16.i.i:                                  ; preds = %land.lhs.true2.i15.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.112, i32 noundef 724, ptr noundef nonnull @.str.114) #9
  br label %rxrpc_net.exit

rxrpc_net.exit:                                   ; preds = %if.then.i16.i.i, %land.lhs.true2.i15.i.i.rxrpc_net.exit_crit_edge, %land.lhs.true.i13.i.i.rxrpc_net.exit_crit_edge, %do.end7.i.i.rxrpc_net.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !253
  %11 = tail call i32 @llvm.read_register.i32(metadata !238) #9
  %and.i.i.i.i.i17.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i.i.i17.i.i to ptr
  %preempt_count.i.i.i.i18.i.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %preempt_count.i.i.i.i18.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %preempt_count.i.i.i.i18.i.i, align 4
  %sub.i.i.i.i.i = add i32 %14, -1
  store volatile i32 %sub.i.i.i.i.i, ptr %preempt_count.i.i.i.i18.i.i, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  %15 = load ptr, ptr @rxrpc_call_jar, align 4
  %or.i = or i32 %gfp, 256
  %call.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %15, i32 noundef %or.i) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %rxrpc_net.exit.cleanup_crit_edge, label %if.end

rxrpc_net.exit.cleanup_crit_edge:                 ; preds = %rxrpc_net.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %rxrpc_net.exit
  %and.i.i.i.i = and i32 %gfp, 4194321
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %cmp.i19.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %cmp.i19.i.i.i, label %if.end.kcalloc.exit_crit_edge, label %if.end.i20.i.i.i, !prof !248

if.end.kcalloc.exit_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %kcalloc.exit

if.end.i20.i.i.i:                                 ; preds = %if.end
  %and2.i.i.i.i = and i32 %gfp, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i.i)
  %tobool3.not.i.i.i.i = icmp eq i32 %and2.i.i.i.i, 0
  br i1 %tobool3.not.i.i.i.i, label %if.end5.i.i.i.i, label %if.end.i20.i.i.i.kcalloc.exit_crit_edge

if.end.i20.i.i.i.kcalloc.exit_crit_edge:          ; preds = %if.end.i20.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %kcalloc.exit

if.end5.i.i.i.i:                                  ; preds = %if.end.i20.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %and6.i.i.i.i = and i32 %gfp, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i.i.i)
  %tobool7.not.i.i.i.i = icmp eq i32 %and6.i.i.i.i, 0
  %..i.i.i.i = select i1 %tobool7.not.i.i.i.i, i32 1, i32 2
  br label %kcalloc.exit

kcalloc.exit:                                     ; preds = %if.end5.i.i.i.i, %if.end.i20.i.i.i.kcalloc.exit_crit_edge, %if.end.kcalloc.exit_crit_edge
  %retval.0.i21.i.i.i = phi i32 [ 0, %if.end.kcalloc.exit_crit_edge ], [ 3, %if.end.i20.i.i.i.kcalloc.exit_crit_edge ], [ %..i.i.i.i, %if.end5.i.i.i.i ]
  %arrayidx6.i.i.i = getelementptr [4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %retval.0.i21.i.i.i, i32 8
  %16 = ptrtoint ptr %arrayidx6.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx6.i.i.i, align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %17, i32 noundef %or.i, i32 noundef 256) #13
  %rxtx_buffer = getelementptr inbounds %struct.rxrpc_call, ptr %call.i, i32 0, i32 52
  %18 = ptrtoint ptr %rxtx_buffer to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call7.i.i.i, ptr %rxtx_buffer, align 8
  %tobool6.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool6.not, label %kcalloc.exit.nomem_crit_edge, label %if.end8

kcalloc.exit.nomem_crit_edge:                     ; preds = %kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %nomem

if.end8:                                          ; preds = %kcalloc.exit
  br i1 %cmp.i19.i.i.i, label %if.end8.kcalloc.exit120_crit_edge, label %if.end.i20.i.i.i112, !prof !248

if.end8.kcalloc.exit120_crit_edge:                ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %kcalloc.exit120

if.end.i20.i.i.i112:                              ; preds = %if.end8
  %and2.i.i.i.i110 = and i32 %gfp, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i.i110)
  %tobool3.not.i.i.i.i111 = icmp eq i32 %and2.i.i.i.i110, 0
  br i1 %tobool3.not.i.i.i.i111, label %if.end5.i.i.i.i116, label %if.end.i20.i.i.i112.kcalloc.exit120_crit_edge

if.end.i20.i.i.i112.kcalloc.exit120_crit_edge:    ; preds = %if.end.i20.i.i.i112
  call void @__sanitizer_cov_trace_pc() #11
  br label %kcalloc.exit120

if.end5.i.i.i.i116:                               ; preds = %if.end.i20.i.i.i112
  call void @__sanitizer_cov_trace_pc() #11
  %and6.i.i.i.i113 = and i32 %gfp, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i.i.i113)
  %tobool7.not.i.i.i.i114 = icmp eq i32 %and6.i.i.i.i113, 0
  %..i.i.i.i115 = select i1 %tobool7.not.i.i.i.i114, i32 1, i32 2
  br label %kcalloc.exit120

kcalloc.exit120:                                  ; preds = %if.end5.i.i.i.i116, %if.end.i20.i.i.i112.kcalloc.exit120_crit_edge, %if.end8.kcalloc.exit120_crit_edge
  %retval.0.i21.i.i.i117 = phi i32 [ 0, %if.end8.kcalloc.exit120_crit_edge ], [ 3, %if.end.i20.i.i.i112.kcalloc.exit120_crit_edge ], [ %..i.i.i.i115, %if.end5.i.i.i.i116 ]
  %arrayidx6.i.i.i118 = getelementptr [4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %retval.0.i21.i.i.i117, i32 7
  %19 = ptrtoint ptr %arrayidx6.i.i.i118 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx6.i.i.i118, align 4
  %call7.i.i.i119 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %20, i32 noundef %or.i, i32 noundef 64) #13
  %rxtx_annotations = getelementptr inbounds %struct.rxrpc_call, ptr %call.i, i32 0, i32 53
  %21 = ptrtoint ptr %rxtx_annotations to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call7.i.i.i119, ptr %rxtx_annotations, align 4
  %tobool11.not = icmp eq ptr %call7.i.i.i119, null
  br i1 %tobool11.not, label %nomem_2, label %do.body

do.body:                                          ; preds = %kcalloc.exit120
  %user_mutex = getelementptr inbounds %struct.rxrpc_call, ptr %call.i, i32 0, i32 6
  tail call void @__mutex_init(ptr noundef %user_mutex, ptr noundef nonnull @.str.25, ptr noundef nonnull @rxrpc_alloc_call.__key) #9
  %sk_kern_sock = getelementptr inbounds %struct.sock, ptr %rx, i32 0, i32 43
  %22 = ptrtoint ptr %sk_kern_sock to i32
  call void @__asan_load1_noabort(i32 %22)
  %bf.load = load i8, ptr %sk_kern_sock, align 8
  %23 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool15.not = icmp eq i8 %23, 0
  br i1 %tobool15.not, label %do.body.do.body23_crit_edge, label %if.then16

do.body.do.body23_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body23

if.then16:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %dep_map = getelementptr inbounds %struct.rxrpc_call, ptr %call.i, i32 0, i32 6, i32 5
  %wait_type_inner = getelementptr inbounds %struct.rxrpc_call, ptr %call.i, i32 0, i32 6, i32 5, i32 4
  %24 = ptrtoint ptr %wait_type_inner to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %wait_type_inner, align 1
  tail call void @lockdep_init_map_type(ptr noundef %dep_map, ptr noundef nonnull @.str.26, ptr noundef nonnull @rxrpc_call_user_mutex_lock_class_key, i32 noundef 0, i8 noundef zeroext %25, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  br label %do.body23

do.body23:                                        ; preds = %if.then16, %do.body.do.body23_crit_edge
  %timer = getelementptr inbounds %struct.rxrpc_call, ptr %call.i, i32 0, i32 18
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @rxrpc_call_timer_expired, i32 noundef 0, ptr noundef nonnull @.str.28, ptr noundef nonnull @rxrpc_alloc_call.__key.27) #9
  %processor = getelementptr inbounds %struct.rxrpc_call, ptr %call.i, i32 0, i32 19
  tail call void @__init_work(ptr noundef %processor, i32 noundef 0) #9
  %26 = ptrtoint ptr %processor to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -64, ptr %processor, align 4
  %lockdep_map = getelementptr inbounds %struct.rxrpc_call, ptr %call.i, i32 0, i32 19, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.30, ptr noundef nonnull @rxrpc_alloc_call.__key.29, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %entry30 = getelementptr inbounds %struct.rxrpc_call, ptr %call.i, i32 0, i32 19, i32 1
  %27 = ptrtoint ptr %entry30 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %entry30, ptr %entry30, align 8
  %prev.i = getelementptr inbounds %struct.rxrpc_call, ptr %call.i, i32 0, i32 19, i32 1, i32 1
  %28 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %entry30, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.rxrpc_call, ptr %call.i, i32 0, i32 19, i32 2
  %29 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @rxrpc_process_call, ptr %func, align 8
  %link = getelementptr inbounds %struct.rxrpc_call, ptr %call.i, i32 0, i32 21
  %30 = ptrtoint ptr %link to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %link, ptr %link, align 4
  %prev.i121 = getelementptr inbounds %struct.rxrpc_call, ptr %call.i, i32 0, i32 21, i32 1
  %31 = ptrtoint ptr %prev.i121 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %link, ptr %prev.i121, align 8
  %chan_wait_link = getelementptr inbounds %struct.rxrpc_call, ptr %call.i, i32 0, i32 22
  %32 = ptrtoint ptr %chan_wait_link to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %chan_wait_link, ptr %chan_wait_link, align 4
  %prev.i122 = getelementptr inbounds %struct.rxrpc_call, ptr %call.i, i32 0, i32 22, i32 1
  %33 = ptrtoint ptr %prev.i122 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %chan_wait_link, ptr %prev.i122, align 8
  %accept_link = getelementptr inbounds %struct.rxrpc_call, ptr %call.i, i32 0, i32 24
  %34 = ptrtoint ptr %accept_link to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %accept_link, ptr %accept_link, align 4
  %prev.i123 = getelementptr inbounds %struct.rxrpc_call, ptr %call.i, i32 0, i32 24, i32 1
  %35 = ptrtoint ptr %prev.i123 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %accept_link, ptr %prev.i123, align 8
  %recvmsg_link = getelementptr inbounds %struct.rxrpc_call, ptr %call.i, i32 0, i32 25
  %36 = ptrtoint ptr %recvmsg_link to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %recvmsg_link, ptr %recvmsg_link, align 4
  %prev.i124 = getelementptr inbounds %struct.rxrpc_call, ptr %call.i, i32 0, i32 25, i32 1
  %37 = ptrtoint ptr %prev.i124 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %recvmsg_link, ptr %prev.i124, align 8
  %sock_link = getelementptr inbounds %struct.rxrpc_call, ptr %call.i, i32 0, i32 26
  %38 = ptrtoint ptr %sock_link to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %sock_link, ptr %sock_link, align 4
  %prev.i125 = getelementptr inbounds %struct.rxrpc_call, ptr %call.i, i32 0, i32 26, i32 1
  %39 = ptrtoint ptr %prev.i125 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %sock_link, ptr %prev.i125, align 8
  %waitq = getelementptr inbounds %struct.rxrpc_call, ptr %call.i, i32 0, i32 29
  tail call void @__init_waitqueue_head(ptr noundef %waitq, ptr noundef nonnull @.str.32, ptr noundef nonnull @rxrpc_alloc_call.__key.31) #9
  %lock = getelementptr inbounds %struct.rxrpc_call, ptr %call.i, i32 0, i32 35
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.34, ptr noundef nonnull @rxrpc_alloc_call.__key.33, i16 noundef signext 3) #9
  %notify_lock = getelementptr inbounds %struct.rxrpc_call, ptr %call.i, i32 0, i32 36
  tail call void @__raw_spin_lock_init(ptr noundef %notify_lock, ptr noundef nonnull @.str.36, ptr noundef nonnull @rxrpc_alloc_call.__key.35, i16 noundef signext 3) #9
  %input_lock = getelementptr inbounds %struct.rxrpc_call, ptr %call.i, i32 0, i32 72
  tail call void @__raw_spin_lock_init(ptr noundef %input_lock, ptr noundef nonnull @.str.38, ptr noundef nonnull @rxrpc_alloc_call.__key.37, i16 noundef signext 3) #9
  %state_lock = getelementptr inbounds %struct.rxrpc_call, ptr %call.i, i32 0, i32 37
  tail call void @__rwlock_init(ptr noundef %state_lock, ptr noundef nonnull @.str.40, ptr noundef nonnull @rxrpc_alloc_call.__key.39) #9
  %usage = getelementptr inbounds %struct.rxrpc_call, ptr %call.i, i32 0, i32 42
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage, i32 noundef 4) #9
  %40 = ptrtoint ptr %usage to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile i32 1, ptr %usage, align 8
  %debug_id52 = getelementptr inbounds %struct.rxrpc_call, ptr %call.i, i32 0, i32 48
  %41 = ptrtoint ptr %debug_id52 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %debug_id, ptr %debug_id52, align 4
  %tx_total_len = getelementptr inbounds %struct.rxrpc_call, ptr %call.i, i32 0, i32 30
  %42 = ptrtoint ptr %tx_total_len to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 -1, ptr %tx_total_len, align 8
  %next_rx_timo = getelementptr inbounds %struct.rxrpc_call, ptr %call.i, i32 0, i32 15
  %43 = ptrtoint ptr %next_rx_timo to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 2000, ptr %next_rx_timo, align 8
  %next_req_timo = getelementptr inbounds %struct.rxrpc_call, ptr %call.i, i32 0, i32 16
  %44 = ptrtoint ptr %next_req_timo to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 100, ptr %next_req_timo, align 4
  %sock_node = getelementptr inbounds %struct.rxrpc_call, ptr %call.i, i32 0, i32 27
  %45 = call ptr @memset(ptr %sock_node, i32 237, i32 12)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_rx_window_size to i32))
  %46 = load i32, ptr @rxrpc_rx_window_size, align 4
  %conv = trunc i32 %46 to i8
  %rx_winsize = getelementptr inbounds %struct.rxrpc_call, ptr %call.i, i32 0, i32 68
  %47 = ptrtoint ptr %rx_winsize to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %conv, ptr %rx_winsize, align 8
  %tx_winsize = getelementptr inbounds %struct.rxrpc_call, ptr %call.i, i32 0, i32 69
  %48 = ptrtoint ptr %tx_winsize to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 16, ptr %tx_winsize, align 1
  %rx_expect_next = getelementptr inbounds %struct.rxrpc_call, ptr %call.i, i32 0, i32 66
  %49 = ptrtoint ptr %rx_expect_next to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 1, ptr %rx_expect_next, align 8
  %cong_cwnd = getelementptr inbounds %struct.rxrpc_call, ptr %call.i, i32 0, i32 57
  %50 = ptrtoint ptr %cong_cwnd to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 2, ptr %cong_cwnd, align 2
  %cong_ssthresh = getelementptr inbounds %struct.rxrpc_call, ptr %call.i, i32 0, i32 59
  %51 = ptrtoint ptr %cong_ssthresh to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 63, ptr %cong_ssthresh, align 4
  %rxnet53 = getelementptr inbounds %struct.rxrpc_call, ptr %call.i, i32 0, i32 4
  %52 = ptrtoint ptr %rxnet53 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %10, ptr %rxnet53, align 4
  %rtt_avail = getelementptr inbounds %struct.rxrpc_call, ptr %call.i, i32 0, i32 81
  %53 = ptrtoint ptr %rtt_avail to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 15, ptr %rtt_avail, align 8
  %nr_calls = getelementptr inbounds %struct.rxrpc_net, ptr %10, i32 0, i32 4
  %call.i.i100 = tail call zeroext i1 @__kasan_check_write(ptr noundef %nr_calls, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %nr_calls, i32 1, i32 3, i32 1) #9
  %54 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nr_calls, ptr %nr_calls, i32 1, ptr elementtype(i32) %nr_calls) #9, !srcloc !254
  br label %cleanup

nomem_2:                                          ; preds = %kcalloc.exit120
  call void @__sanitizer_cov_trace_pc() #11
  %55 = ptrtoint ptr %rxtx_buffer to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %rxtx_buffer, align 8
  tail call void @kfree(ptr noundef %56) #9
  br label %nomem

nomem:                                            ; preds = %nomem_2, %kcalloc.exit.nomem_crit_edge
  %57 = load ptr, ptr @rxrpc_call_jar, align 4
  tail call void @kmem_cache_free(ptr noundef %57, ptr noundef nonnull %call.i) #9
  br label %cleanup

cleanup:                                          ; preds = %nomem, %do.body23, %rxrpc_net.exit.cleanup_crit_edge
  %retval.0 = phi ptr [ %call.i, %do.body23 ], [ null, %nomem ], [ null, %rxrpc_net.exit.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rxrpc_call_timer_expired(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -164
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %0 = load i32, ptr @rxrpc_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end8_crit_edge, label %do.end, !prof !248

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end8

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %1 = tail call i32 @llvm.read_register.i32(metadata !238) #9
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 101
  %debug_id = getelementptr i8, ptr %t, i32 408
  %5 = ptrtoint ptr %debug_id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %debug_id, align 4
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.115, ptr noundef %comm, ptr noundef nonnull @.str.116, i32 noundef %6) #12
  br label %do.end8

do.end8:                                          ; preds = %do.end, %entry.do.end8_crit_edge
  %state = getelementptr i8, ptr %t, i32 380
  %7 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %8)
  %cmp = icmp ult i32 %8, 11
  br i1 %cmp, label %if.then9, label %do.end8.if.end11_crit_edge

do.end8.if.end11_crit_edge:                       ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.then9:                                         ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %9 = load volatile i32, ptr @jiffies, align 128
  tail call fastcc void @trace_rxrpc_timer(ptr noundef %add.ptr, i32 noundef %9)
  %call10 = tail call zeroext i1 @rxrpc_queue_call(ptr noundef %add.ptr)
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %do.end8.if.end11_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rxrpc_process_call(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__rwlock_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @rxrpc_new_client_call(ptr noundef %rx, ptr noundef %cp, ptr noundef %srx, ptr nocapture noundef readonly %p, i32 noundef %gfp, i32 noundef %debug_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call ptr @llvm.returnaddress(i32 0)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %1 = load i32, ptr @rxrpc_debug, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end7_crit_edge, label %do.end, !prof !248

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end7

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = tail call i32 @llvm.read_register.i32(metadata !238) #9
  %and.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 101
  %user_call_ID = getelementptr inbounds %struct.rxrpc_call_params, ptr %p, i32 0, i32 1
  %6 = ptrtoint ptr %user_call_ID to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %user_call_ID, align 8
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %comm, ptr noundef nonnull @.str.41, ptr noundef %rx, i32 noundef %7) #12
  br label %do.end7

do.end7:                                          ; preds = %do.end, %entry.do.end7_crit_edge
  %kernel.i = getelementptr inbounds %struct.rxrpc_call_params, ptr %p, i32 0, i32 4
  %8 = ptrtoint ptr %kernel.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %kernel.i, align 1, !range !255
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i = icmp eq i8 %9, 0
  %spec.store.select.i = select i1 %tobool.not.i, ptr @rxrpc_call_limiter, ptr @rxrpc_kernel_call_limiter
  %interruptibility.i = getelementptr inbounds %struct.rxrpc_call_params, ptr %p, i32 0, i32 5
  %10 = ptrtoint ptr %interruptibility.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %interruptibility.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %cmp.i = icmp eq i32 %11, 2
  br i1 %cmp.i, label %if.then1.i, label %if.end2.i

if.then1.i:                                       ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @down(ptr noundef nonnull %spec.store.select.i) #9
  br label %if.end12

if.end2.i:                                        ; preds = %do.end7
  %call.i = tail call i32 @down_interruptible(ptr noundef nonnull %spec.store.select.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp3.i = icmp slt i32 %call.i, 0
  br i1 %cmp3.i, label %if.end2.i.cleanup_crit_edge, label %if.end2.i.if.end12_crit_edge

if.end2.i.if.end12_crit_edge:                     ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.end2.i.cleanup_crit_edge:                      ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end12:                                         ; preds = %if.end2.i.if.end12_crit_edge, %if.then1.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %12 = load i32, ptr @rxrpc_debug, align 4
  %and.i310 = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i310)
  %tobool.not.i311 = icmp eq i32 %and.i310, 0
  br i1 %tobool.not.i311, label %if.end12.do.end7.i_crit_edge, label %do.end.i, !prof !248

if.end12.do.end7.i_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end7.i

do.end.i:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  %13 = tail call i32 @llvm.read_register.i32(metadata !238) #9
  %and.i.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %task.i, align 8
  %comm.i = getelementptr inbounds %struct.task_struct, ptr %16, i32 0, i32 101
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.102, ptr noundef %comm.i, ptr noundef nonnull @.str.121) #12
  br label %do.end7.i

do.end7.i:                                        ; preds = %do.end.i, %if.end12.do.end7.i_crit_edge
  %call8.i = tail call ptr @rxrpc_alloc_call(ptr noundef %rx, i32 noundef %gfp, i32 noundef %debug_id) #9
  %tobool9.not.i = icmp eq ptr %call8.i, null
  br i1 %tobool9.not.i, label %do.end7.i.if.then15_crit_edge, label %if.end12.i

do.end7.i.if.then15_crit_edge:                    ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then15

if.end12.i:                                       ; preds = %do.end7.i
  %state.i = getelementptr inbounds %struct.rxrpc_call, ptr %call8.i, i32 0, i32 40
  %17 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %state.i, align 8
  %srx_service.i = getelementptr inbounds %struct.sockaddr_rxrpc, ptr %srx, i32 0, i32 1
  %18 = ptrtoint ptr %srx_service.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %srx_service.i, align 2
  %service_id.i = getelementptr inbounds %struct.rxrpc_call, ptr %call8.i, i32 0, i32 43
  %20 = ptrtoint ptr %service_id.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %19, ptr %service_id.i, align 4
  %tx_phase.i = getelementptr inbounds %struct.rxrpc_call, ptr %call8.i, i32 0, i32 70
  %21 = ptrtoint ptr %tx_phase.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %tx_phase.i, align 2
  %call.i.i312 = tail call i64 @ktime_get_with_offset(i32 noundef 0) #9
  %acks_latest_ts.i = getelementptr inbounds %struct.rxrpc_call, ptr %call8.i, i32 0, i32 82
  %22 = ptrtoint ptr %acks_latest_ts.i to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %call.i.i312, ptr %acks_latest_ts.i, align 8
  %cong_tstamp.i = getelementptr inbounds %struct.rxrpc_call, ptr %call8.i, i32 0, i32 63
  %23 = ptrtoint ptr %cong_tstamp.i to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %call.i.i312, ptr %cong_tstamp.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %24 = load i32, ptr @rxrpc_debug, align 4
  %and15.i = and i32 %24, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i)
  %tobool16.not.i = icmp eq i32 %and15.i, 0
  br i1 %tobool16.not.i, label %if.end12.i.rxrpc_alloc_client_call.exit_crit_edge, label %do.end26.i, !prof !248

if.end12.i.rxrpc_alloc_client_call.exit_crit_edge: ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rxrpc_alloc_client_call.exit

do.end26.i:                                       ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #11
  %25 = tail call i32 @llvm.read_register.i32(metadata !238) #9
  %and.i45.i = and i32 %25, -16384
  %26 = inttoptr i32 %and.i45.i to ptr
  %task29.i = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %task29.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %task29.i, align 8
  %comm30.i = getelementptr inbounds %struct.task_struct, ptr %28, i32 0, i32 101
  %call32.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.123, ptr noundef %comm30.i, ptr noundef nonnull @.str.121, ptr noundef nonnull %call8.i) #12
  br label %rxrpc_alloc_client_call.exit

rxrpc_alloc_client_call.exit:                     ; preds = %do.end26.i, %if.end12.i.rxrpc_alloc_client_call.exit_crit_edge
  %cmp.i314 = icmp ugt ptr %call8.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i314, label %rxrpc_alloc_client_call.exit.if.then15_crit_edge, label %if.end39

rxrpc_alloc_client_call.exit.if.then15_crit_edge: ; preds = %rxrpc_alloc_client_call.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then15

if.then15:                                        ; preds = %rxrpc_alloc_client_call.exit.if.then15_crit_edge, %do.end7.i.if.then15_crit_edge
  %retval.0.i313329 = phi ptr [ %call8.i, %rxrpc_alloc_client_call.exit.if.then15_crit_edge ], [ inttoptr (i32 -12 to ptr), %do.end7.i.if.then15_crit_edge ]
  tail call void @release_sock(ptr noundef %rx) #9
  tail call void @up(ptr noundef nonnull %spec.store.select.i) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %29 = load i32, ptr @rxrpc_debug, align 4
  %and17 = and i32 %29, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %if.then15.cleanup_crit_edge, label %do.end28, !prof !248

if.then15.cleanup_crit_edge:                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end28:                                         ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #11
  %30 = tail call i32 @llvm.read_register.i32(metadata !238) #9
  %and.i315 = and i32 %30, -16384
  %31 = inttoptr i32 %and.i315 to ptr
  %task31 = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %task31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %task31, align 8
  %comm32 = getelementptr inbounds %struct.task_struct, ptr %33, i32 0, i32 101
  %34 = ptrtoint ptr %retval.0.i313329 to i32
  %call35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef %comm32, ptr noundef nonnull @.str.41, i32 noundef %34) #12
  br label %cleanup

if.end39:                                         ; preds = %rxrpc_alloc_client_call.exit
  %35 = ptrtoint ptr %interruptibility.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %interruptibility.i, align 4
  %interruptibility40 = getelementptr inbounds %struct.rxrpc_call, ptr %call8.i, i32 0, i32 45
  %37 = ptrtoint ptr %interruptibility40 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %interruptibility40, align 8
  %38 = ptrtoint ptr %p to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %p, align 8
  %tx_total_len41 = getelementptr inbounds %struct.rxrpc_call, ptr %call8.i, i32 0, i32 30
  %40 = ptrtoint ptr %tx_total_len41 to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %39, ptr %tx_total_len41, align 8
  %debug_id42 = getelementptr inbounds %struct.rxrpc_call, ptr %call8.i, i32 0, i32 48
  %41 = ptrtoint ptr %debug_id42 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %debug_id42, align 4
  %usage = getelementptr inbounds %struct.rxrpc_call, ptr %call8.i, i32 0, i32 42
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %usage, i32 noundef 4) #9
  %43 = ptrtoint ptr %usage to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %usage, align 4
  %user_call_ID44 = getelementptr inbounds %struct.rxrpc_call_params, ptr %p, i32 0, i32 1
  %45 = ptrtoint ptr %user_call_ID44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %user_call_ID44, align 8
  %47 = inttoptr i32 %46 to ptr
  tail call fastcc void @trace_rxrpc_call(i32 noundef %42, i32 noundef 5, i32 noundef %44, ptr noundef %0, ptr noundef %47)
  %48 = ptrtoint ptr %kernel.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %kernel.i, align 1, !range !255
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool45.not = icmp eq i8 %49, 0
  br i1 %tobool45.not, label %if.end39.if.end47_crit_edge, label %if.then46

if.end39.if.end47_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end47

if.then46:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  %flags = getelementptr inbounds %struct.rxrpc_call, ptr %call8.i, i32 0, i32 33
  %50 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %flags, align 4
  %or.i = or i32 %51, 4096
  store i32 %or.i, ptr %flags, align 4
  br label %if.end47

if.end47:                                         ; preds = %if.then46, %if.end39.if.end47_crit_edge
  %user_mutex = getelementptr inbounds %struct.rxrpc_call, ptr %call8.i, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %user_mutex, i32 noundef 0) #9
  %call_lock = getelementptr inbounds %struct.rxrpc_sock, ptr %rx, i32 0, i32 14
  tail call void @_raw_write_lock(ptr noundef %call_lock) #9
  %calls = getelementptr inbounds %struct.rxrpc_sock, ptr %rx, i32 0, i32 12
  %52 = ptrtoint ptr %calls to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %calls, align 4
  %tobool48.not332 = icmp eq ptr %53, null
  br i1 %tobool48.not332, label %if.end47.do.body60_crit_edge, label %while.body.lr.ph

if.end47.do.body60_crit_edge:                     ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body60

while.body.lr.ph:                                 ; preds = %if.end47
  %54 = ptrtoint ptr %user_call_ID44 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %user_call_ID44, align 8
  br label %while.body

while.body:                                       ; preds = %if.end59.while.body_crit_edge, %while.body.lr.ph
  %56 = phi ptr [ %53, %while.body.lr.ph ], [ %60, %if.end59.while.body_crit_edge ]
  %user_call_ID51 = getelementptr i8, ptr %56, i32 84
  %57 = ptrtoint ptr %user_call_ID51 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %user_call_ID51, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %55, i32 %58)
  %cmp = icmp ult i32 %55, %58
  br i1 %cmp, label %if.then52, label %if.else

if.then52:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %rb_left = getelementptr inbounds %struct.rb_node, ptr %56, i32 0, i32 2
  br label %if.end59

if.else:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_cmp4(i32 %55, i32 %58)
  %cmp55 = icmp ugt i32 %55, %58
  br i1 %cmp55, label %if.then56, label %error_dup_user_ID

if.then56:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %rb_right = getelementptr inbounds %struct.rb_node, ptr %56, i32 0, i32 1
  br label %if.end59

if.end59:                                         ; preds = %if.then56, %if.then52
  %pp.1 = phi ptr [ %rb_left, %if.then52 ], [ %rb_right, %if.then56 ]
  %59 = ptrtoint ptr %pp.1 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %pp.1, align 4
  %tobool48.not = icmp eq ptr %60, null
  br i1 %tobool48.not, label %while.cond.do.body60_crit_edge, label %if.end59.while.body_crit_edge

if.end59.while.body_crit_edge:                    ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.cond.do.body60_crit_edge:                   ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #11
  %phi.cast.le = ptrtoint ptr %56 to i32
  br label %do.body60

do.body60:                                        ; preds = %while.cond.do.body60_crit_edge, %if.end47.do.body60_crit_edge
  %pp.0.lcssa = phi ptr [ %pp.1, %while.cond.do.body60_crit_edge ], [ %calls, %if.end47.do.body60_crit_edge ]
  %parent.0.lcssa = phi i32 [ %phi.cast.le, %while.cond.do.body60_crit_edge ], [ 0, %if.end47.do.body60_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !256
  %socket86 = getelementptr inbounds %struct.rxrpc_call, ptr %call8.i, i32 0, i32 3
  %61 = ptrtoint ptr %socket86 to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile ptr %rx, ptr %socket86, align 8
  %62 = ptrtoint ptr %user_call_ID44 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %user_call_ID44, align 8
  %user_call_ID99 = getelementptr inbounds %struct.rxrpc_call, ptr %call8.i, i32 0, i32 32
  %64 = ptrtoint ptr %user_call_ID99 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %user_call_ID99, align 8
  %flags100 = getelementptr inbounds %struct.rxrpc_call, ptr %call8.i, i32 0, i32 33
  %65 = ptrtoint ptr %flags100 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %flags100, align 4
  %or.i306 = or i32 %66, 2
  store i32 %or.i306, ptr %flags100, align 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !249
  tail call void @llvm.prefetch.p0(ptr %usage, i32 1, i32 3, i32 1) #9
  %67 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage, ptr %usage, i32 1, ptr elementtype(i32) %usage) #9, !srcloc !250
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %67, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !251
  %68 = ptrtoint ptr %debug_id42 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %debug_id42, align 4
  tail call fastcc void @trace_rxrpc_call(i32 noundef %69, i32 noundef 4, i32 noundef %asmresult.i.i.i.i.i, ptr noundef %0, ptr noundef null) #9
  %sock_node = getelementptr inbounds %struct.rxrpc_call, ptr %call8.i, i32 0, i32 27
  %70 = ptrtoint ptr %sock_node to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %parent.0.lcssa, ptr %sock_node, align 4
  %rb_right.i = getelementptr inbounds %struct.rxrpc_call, ptr %call8.i, i32 0, i32 27, i32 1
  %71 = ptrtoint ptr %rb_right.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr null, ptr %rb_right.i, align 4
  %rb_left.i = getelementptr inbounds %struct.rxrpc_call, ptr %call8.i, i32 0, i32 27, i32 2
  %72 = ptrtoint ptr %rb_left.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr null, ptr %rb_left.i, align 4
  %73 = ptrtoint ptr %pp.0.lcssa to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %sock_node, ptr %pp.0.lcssa, align 4
  tail call void @rb_insert_color(ptr noundef %sock_node, ptr noundef %calls) #9
  %sock_link = getelementptr inbounds %struct.rxrpc_call, ptr %call8.i, i32 0, i32 26
  %sock_calls = getelementptr inbounds %struct.rxrpc_sock, ptr %rx, i32 0, i32 6
  %74 = ptrtoint ptr %sock_calls to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %sock_calls, align 4
  %call.i.i316 = tail call zeroext i1 @__list_add_valid(ptr noundef %sock_link, ptr noundef %sock_calls, ptr noundef %75) #9
  br i1 %call.i.i316, label %if.end.i.i, label %do.body60.list_add.exit_crit_edge

do.body60.list_add.exit_crit_edge:                ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add.exit

if.end.i.i:                                       ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #11
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %75, i32 0, i32 1
  %76 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %sock_link, ptr %prev1.i.i, align 4
  %77 = ptrtoint ptr %sock_link to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %75, ptr %sock_link, align 4
  %prev3.i.i = getelementptr inbounds %struct.rxrpc_call, ptr %call8.i, i32 0, i32 26, i32 1
  %78 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %sock_calls, ptr %prev3.i.i, align 4
  %79 = ptrtoint ptr %sock_calls to i32
  call void @__asan_store4_noabort(i32 %79)
  store volatile ptr %sock_link, ptr %sock_calls, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %do.body60.list_add.exit_crit_edge
  tail call void @_raw_write_unlock(ptr noundef %call_lock) #9
  %rxnet104 = getelementptr inbounds %struct.rxrpc_call, ptr %call8.i, i32 0, i32 4
  %80 = ptrtoint ptr %rxnet104 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %rxnet104, align 4
  %call_lock105 = getelementptr inbounds %struct.rxrpc_net, ptr %81, i32 0, i32 3
  tail call void @_raw_write_lock(ptr noundef %call_lock105) #9
  %link = getelementptr inbounds %struct.rxrpc_call, ptr %call8.i, i32 0, i32 21
  %calls106 = getelementptr inbounds %struct.rxrpc_net, ptr %81, i32 0, i32 2
  %prev.i = getelementptr inbounds %struct.rxrpc_net, ptr %81, i32 0, i32 2, i32 1
  %82 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %prev.i, align 4
  %call.i.i317 = tail call zeroext i1 @__list_add_valid(ptr noundef %link, ptr noundef %83, ptr noundef %calls106) #9
  br i1 %call.i.i317, label %if.end.i.i319, label %list_add.exit.list_add_tail.exit_crit_edge

list_add.exit.list_add_tail.exit_crit_edge:       ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit

if.end.i.i319:                                    ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #11
  %84 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %link, ptr %prev.i, align 4
  %85 = ptrtoint ptr %link to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %calls106, ptr %link, align 4
  %prev3.i.i318 = getelementptr inbounds %struct.rxrpc_call, ptr %call8.i, i32 0, i32 21, i32 1
  %86 = ptrtoint ptr %prev3.i.i318 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %83, ptr %prev3.i.i318, align 4
  %87 = ptrtoint ptr %83 to i32
  call void @__asan_store4_noabort(i32 %87)
  store volatile ptr %link, ptr %83, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i319, %list_add.exit.list_add_tail.exit_crit_edge
  tail call void @_raw_write_unlock(ptr noundef %call_lock105) #9
  tail call void @release_sock(ptr noundef %rx) #9
  %call109 = tail call i32 @rxrpc_connect_call(ptr noundef %rx, ptr noundef %call8.i, ptr noundef %cp, ptr noundef %srx, i32 noundef %gfp) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call109)
  %cmp110 = icmp slt i32 %call109, 0
  %88 = ptrtoint ptr %debug_id42 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %debug_id42, align 4
  %call.i.i309 = tail call zeroext i1 @__kasan_check_read(ptr noundef %usage, i32 noundef 4) #9
  %90 = ptrtoint ptr %usage to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load volatile i32, ptr %usage, align 4
  br i1 %cmp110, label %error_attached_to_socket, label %if.end112

if.end112:                                        ; preds = %list_add_tail.exit
  tail call fastcc void @trace_rxrpc_call(i32 noundef %89, i32 noundef 0, i32 noundef %91, ptr noundef %0, ptr noundef null)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %92 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %92, 1073741822
  %ack_at.i = getelementptr inbounds %struct.rxrpc_call, ptr %call8.i, i32 0, i32 7
  %93 = ptrtoint ptr %ack_at.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %add.i, ptr %ack_at.i, align 8
  %ack_lost_at.i = getelementptr inbounds %struct.rxrpc_call, ptr %call8.i, i32 0, i32 8
  %94 = ptrtoint ptr %ack_lost_at.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %add.i, ptr %ack_lost_at.i, align 4
  %resend_at.i = getelementptr inbounds %struct.rxrpc_call, ptr %call8.i, i32 0, i32 9
  %95 = ptrtoint ptr %resend_at.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %add.i, ptr %resend_at.i, align 8
  %ping_at.i = getelementptr inbounds %struct.rxrpc_call, ptr %call8.i, i32 0, i32 10
  %96 = ptrtoint ptr %ping_at.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %add.i, ptr %ping_at.i, align 4
  %expect_rx_by.i = getelementptr inbounds %struct.rxrpc_call, ptr %call8.i, i32 0, i32 12
  %97 = ptrtoint ptr %expect_rx_by.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %add.i, ptr %expect_rx_by.i, align 4
  %expect_req_by.i = getelementptr inbounds %struct.rxrpc_call, ptr %call8.i, i32 0, i32 13
  %98 = ptrtoint ptr %expect_req_by.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %add.i, ptr %expect_req_by.i, align 8
  %expect_term_by.i = getelementptr inbounds %struct.rxrpc_call, ptr %call8.i, i32 0, i32 14
  %99 = ptrtoint ptr %expect_term_by.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %add.i, ptr %expect_term_by.i, align 4
  %expires.i = getelementptr inbounds %struct.rxrpc_call, ptr %call8.i, i32 0, i32 18, i32 1
  %100 = ptrtoint ptr %expires.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %92, ptr %expires.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %101 = load i32, ptr @rxrpc_debug, align 4
  %and117 = and i32 %101, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and117)
  %tobool118.not = icmp eq i32 %and117, 0
  br i1 %tobool118.not, label %if.end112.do.body140_crit_edge, label %do.end128, !prof !248

if.end112.do.body140_crit_edge:                   ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body140

do.end128:                                        ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #11
  %102 = tail call i32 @llvm.read_register.i32(metadata !238) #9
  %and.i320 = and i32 %102, -16384
  %103 = inttoptr i32 %and.i320 to ptr
  %task131 = getelementptr inbounds %struct.thread_info, ptr %103, i32 0, i32 2
  %104 = ptrtoint ptr %task131 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %task131, align 8
  %comm132 = getelementptr inbounds %struct.task_struct, ptr %105, i32 0, i32 101
  %106 = ptrtoint ptr %debug_id42 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %debug_id42, align 4
  %conn = getelementptr inbounds %struct.rxrpc_call, ptr %call8.i, i32 0, i32 1
  %108 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %conn, align 8
  %debug_id135 = getelementptr inbounds %struct.rxrpc_connection, ptr %109, i32 0, i32 23
  %110 = ptrtoint ptr %debug_id135 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %debug_id135, align 8
  %call136 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef %comm132, i32 noundef %107, i32 noundef %111) #12
  br label %do.body140

do.body140:                                       ; preds = %do.end128, %if.end112.do.body140_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %112 = load i32, ptr @rxrpc_debug, align 4
  %and141 = and i32 %112, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and141)
  %tobool142.not = icmp eq i32 %and141, 0
  br i1 %tobool142.not, label %do.body140.cleanup_crit_edge, label %do.end152, !prof !248

do.body140.cleanup_crit_edge:                     ; preds = %do.body140
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end152:                                        ; preds = %do.body140
  call void @__sanitizer_cov_trace_pc() #11
  %113 = tail call i32 @llvm.read_register.i32(metadata !238) #9
  %and.i321 = and i32 %113, -16384
  %114 = inttoptr i32 %and.i321 to ptr
  %task155 = getelementptr inbounds %struct.thread_info, ptr %114, i32 0, i32 2
  %115 = ptrtoint ptr %task155 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %task155, align 8
  %comm156 = getelementptr inbounds %struct.task_struct, ptr %116, i32 0, i32 101
  %call158 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef %comm156, ptr noundef nonnull @.str.41, ptr noundef %call8.i) #12
  br label %cleanup

error_dup_user_ID:                                ; preds = %if.else
  tail call void @_raw_write_unlock(ptr noundef %call_lock) #9
  tail call void @release_sock(ptr noundef %rx) #9
  %call164 = tail call zeroext i1 @__rxrpc_set_call_completion(ptr noundef %call8.i, i32 noundef 3, i32 noundef -1, i32 noundef -17) #9
  %117 = ptrtoint ptr %debug_id42 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %debug_id42, align 4
  %call.i.i308 = tail call zeroext i1 @__kasan_check_read(ptr noundef %usage, i32 noundef 4) #9
  %119 = ptrtoint ptr %usage to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load volatile i32, ptr %usage, align 4
  tail call fastcc void @trace_rxrpc_call(i32 noundef %118, i32 noundef 1, i32 noundef %120, ptr noundef %0, ptr noundef nonnull inttoptr (i32 -17 to ptr))
  tail call void @rxrpc_release_call(ptr noundef %rx, ptr noundef %call8.i)
  tail call void @mutex_unlock(ptr noundef %user_mutex) #9
  tail call void @rxrpc_put_call(ptr noundef %call8.i, i32 noundef 7)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %121 = load i32, ptr @rxrpc_debug, align 4
  %and171 = and i32 %121, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and171)
  %tobool172.not = icmp eq i32 %and171, 0
  br i1 %tobool172.not, label %error_dup_user_ID.cleanup_crit_edge, label %do.end182, !prof !248

error_dup_user_ID.cleanup_crit_edge:              ; preds = %error_dup_user_ID
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end182:                                        ; preds = %error_dup_user_ID
  call void @__sanitizer_cov_trace_pc() #11
  %122 = tail call i32 @llvm.read_register.i32(metadata !238) #9
  %and.i322 = and i32 %122, -16384
  %123 = inttoptr i32 %and.i322 to ptr
  %task185 = getelementptr inbounds %struct.thread_info, ptr %123, i32 0, i32 2
  %124 = ptrtoint ptr %task185 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %task185, align 8
  %comm186 = getelementptr inbounds %struct.task_struct, ptr %125, i32 0, i32 101
  %call188 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef %comm186, ptr noundef nonnull @.str.41) #12
  br label %cleanup

error_attached_to_socket:                         ; preds = %list_add_tail.exit
  %126 = inttoptr i32 %call109 to ptr
  tail call fastcc void @trace_rxrpc_call(i32 noundef %89, i32 noundef 1, i32 noundef %91, ptr noundef %0, ptr noundef nonnull %126)
  tail call void @_set_bit(i32 noundef 11, ptr noundef %flags100) #9
  %call198 = tail call zeroext i1 @__rxrpc_set_call_completion(ptr noundef %call8.i, i32 noundef 3, i32 noundef -1, i32 noundef %call109) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %127 = load i32, ptr @rxrpc_debug, align 4
  %and200 = and i32 %127, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and200)
  %tobool201.not = icmp eq i32 %and200, 0
  br i1 %tobool201.not, label %error_attached_to_socket.cleanup_crit_edge, label %do.end211, !prof !248

error_attached_to_socket.cleanup_crit_edge:       ; preds = %error_attached_to_socket
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end211:                                        ; preds = %error_attached_to_socket
  call void @__sanitizer_cov_trace_pc() #11
  %128 = tail call i32 @llvm.read_register.i32(metadata !238) #9
  %and.i323 = and i32 %128, -16384
  %129 = inttoptr i32 %and.i323 to ptr
  %task214 = getelementptr inbounds %struct.thread_info, ptr %129, i32 0, i32 2
  %130 = ptrtoint ptr %task214 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %task214, align 8
  %comm215 = getelementptr inbounds %struct.task_struct, ptr %131, i32 0, i32 101
  %132 = ptrtoint ptr %debug_id42 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %debug_id42, align 4
  %call218 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, ptr noundef %comm215, ptr noundef nonnull @.str.41, i32 noundef %133) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end211, %error_attached_to_socket.cleanup_crit_edge, %do.end182, %error_dup_user_ID.cleanup_crit_edge, %do.end152, %do.body140.cleanup_crit_edge, %do.end28, %if.then15.cleanup_crit_edge, %if.end2.i.cleanup_crit_edge
  %retval.0 = phi ptr [ %retval.0.i313329, %do.end28 ], [ %retval.0.i313329, %if.then15.cleanup_crit_edge ], [ %call8.i, %do.end152 ], [ %call8.i, %do.body140.cleanup_crit_edge ], [ %call8.i, %do.end211 ], [ %call8.i, %error_attached_to_socket.cleanup_crit_edge ], [ inttoptr (i32 -512 to ptr), %if.end2.i.cleanup_crit_edge ], [ inttoptr (i32 -17 to ptr), %do.end182 ], [ inttoptr (i32 -17 to ptr), %error_dup_user_ID.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_sock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @up(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_rxrpc_call(i32 noundef %call_debug_id, i32 noundef %op, i32 noundef %usage, ptr noundef %where, ptr noundef %aux) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rxrpc_call, i32 0, i32 1), ptr blockaddress(@trace_rxrpc_call, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !257

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !238) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !248

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.118, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !238) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !258
  %call42 = tail call i32 @__traceiter_rxrpc_call(ptr noundef null, i32 noundef %call_debug_id, i32 noundef %op, i32 noundef %usage, ptr noundef %where, ptr noundef %aux) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !259
  %13 = tail call i32 @llvm.read_register.i32(metadata !238) #9
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !238) #9
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !248

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.118, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !238) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !260
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rxrpc_call, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rxrpc_call, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_rxrpc_call.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_rxrpc_call.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.117, i32 noundef 621, ptr noundef nonnull @.str.111) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !261
  %31 = tail call i32 @llvm.read_register.i32(metadata !238) #9
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_insert_color(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rxrpc_connect_call(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__rxrpc_set_call_completion(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rxrpc_release_call(ptr noundef %rx, ptr noundef %call) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call ptr @llvm.returnaddress(i32 0)
  %conn1 = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 1
  %1 = ptrtoint ptr %conn1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %conn1, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %3 = load i32, ptr @rxrpc_debug, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end9_crit_edge, label %do.end, !prof !248

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end9

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %4 = tail call i32 @llvm.read_register.i32(metadata !238) #9
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 101
  %debug_id = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 48
  %8 = ptrtoint ptr %debug_id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %debug_id, align 4
  %usage = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 42
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %usage, i32 noundef 4) #9
  %10 = ptrtoint ptr %usage to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %usage, align 4
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, ptr noundef %comm, ptr noundef nonnull @.str.69, i32 noundef %9, i32 noundef %11) #12
  br label %do.end9

do.end9:                                          ; preds = %do.end, %entry.do.end9_crit_edge
  %debug_id10 = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 48
  %12 = ptrtoint ptr %debug_id10 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %debug_id10, align 4
  %usage11 = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 42
  %call.i.i187 = tail call zeroext i1 @__kasan_check_read(ptr noundef %usage11, i32 noundef 4) #9
  %14 = ptrtoint ptr %usage11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %usage11, align 4
  %flags = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 33
  %16 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags, align 4
  %18 = inttoptr i32 %17 to ptr
  tail call fastcc void @trace_rxrpc_call(i32 noundef %13, i32 noundef 13, i32 noundef %15, ptr noundef %0, ptr noundef %18)
  %state = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 40
  %19 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %20)
  %cmp.not = icmp eq i32 %20, 11
  br i1 %cmp.not, label %if.end34, label %do.end25, !prof !248

do.end25:                                         ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #11
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, i32 noundef %20, i32 noundef %20, ptr noundef nonnull @.str.72, i32 noundef 11, i32 noundef 11) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/rxrpc/call_object.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 505, 0\0A.popsection", ""() #9, !srcloc !262
  unreachable

if.end34:                                         ; preds = %do.end9
  %lock = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 35
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #9
  %call38 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %flags) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end47, label %do.body41

do.body41:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/rxrpc/call_object.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 509, 0\0A.popsection", ""() #9, !srcloc !263
  unreachable

if.end47:                                         ; preds = %if.end34
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #9
  %21 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %flags, align 4
  %23 = and i32 %22, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.i = icmp eq i32 %23, 0
  %spec.select.i = select i1 %tobool.not.i, ptr @rxrpc_call_limiter, ptr @rxrpc_kernel_call_limiter
  tail call void @up(ptr noundef nonnull %spec.select.i) #9
  %timer = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 18
  %call49 = tail call i32 @del_timer_sync(ptr noundef %timer) #9
  %recvmsg_lock = getelementptr inbounds %struct.rxrpc_sock, ptr %rx, i32 0, i32 9
  tail call void @_raw_write_lock_bh(ptr noundef %recvmsg_lock) #9
  %recvmsg_link = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 25
  %24 = ptrtoint ptr %recvmsg_link to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile ptr, ptr %recvmsg_link, align 4
  %cmp.i.not = icmp eq ptr %25, %recvmsg_link
  br i1 %cmp.i.not, label %if.end83.critedge, label %do.body53

do.body53:                                        ; preds = %if.end47
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %26 = load i32, ptr @rxrpc_debug, align 4
  %and54 = and i32 %26, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %tobool55.not = icmp eq i32 %and54, 0
  br i1 %tobool55.not, label %do.body53.do.end75_crit_edge, label %do.end65, !prof !248

do.body53.do.end75_crit_edge:                     ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end75

do.end65:                                         ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #11
  %27 = tail call i32 @llvm.read_register.i32(metadata !238) #9
  %and.i188 = and i32 %27, -16384
  %28 = inttoptr i32 %and.i188 to ptr
  %task68 = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %task68 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %task68, align 8
  %comm69 = getelementptr inbounds %struct.task_struct, ptr %30, i32 0, i32 101
  %events = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 34
  %31 = ptrtoint ptr %events to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %events, align 8
  %33 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %flags, align 4
  %call72 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, ptr noundef %comm69, ptr noundef %call, i32 noundef %32, i32 noundef %34) #12
  br label %do.end75

do.end75:                                         ; preds = %do.end65, %do.body53.do.end75_crit_edge
  %call.i.i189 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %recvmsg_link) #9
  br i1 %call.i.i189, label %if.end.i.i, label %do.end75.list_del.exit_crit_edge

do.end75.list_del.exit_crit_edge:                 ; preds = %do.end75
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %do.end75
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 25, i32 1
  %35 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %prev.i.i, align 4
  %37 = ptrtoint ptr %recvmsg_link to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %recvmsg_link, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %36, ptr %prev1.i.i.i, align 4
  %40 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %38, ptr %36, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %do.end75.list_del.exit_crit_edge
  %prev.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 25, i32 1
  %41 = ptrtoint ptr %recvmsg_link to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %recvmsg_link, align 4
  %42 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr null, ptr %prev.i, align 4
  tail call void @_raw_write_unlock_bh(ptr noundef %recvmsg_lock) #9
  tail call void @rxrpc_put_call(ptr noundef %call, i32 noundef 7)
  br label %if.end83

if.end83.critedge:                                ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  %43 = ptrtoint ptr %recvmsg_link to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %recvmsg_link, align 4
  %prev.c186 = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 25, i32 1
  %44 = ptrtoint ptr %prev.c186 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %prev.c186, align 4
  tail call void @_raw_write_unlock_bh(ptr noundef %recvmsg_lock) #9
  br label %if.end83

if.end83:                                         ; preds = %if.end83.critedge, %list_del.exit
  %call_lock = getelementptr inbounds %struct.rxrpc_sock, ptr %rx, i32 0, i32 14
  tail call void @_raw_write_lock(ptr noundef %call_lock) #9
  %call85 = tail call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %flags) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %if.end83.if.end89_crit_edge, label %if.then87

if.end83.if.end89_crit_edge:                      ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end89

if.then87:                                        ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #11
  %sock_node = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 27
  %calls = getelementptr inbounds %struct.rxrpc_sock, ptr %rx, i32 0, i32 12
  tail call void @rb_erase(ptr noundef %sock_node, ptr noundef %calls) #9
  %45 = call ptr @memset(ptr %sock_node, i32 221, i32 12)
  tail call void @rxrpc_put_call(ptr noundef %call, i32 noundef 10)
  br label %if.end89

if.end89:                                         ; preds = %if.then87, %if.end83.if.end89_crit_edge
  %sock_link = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 26
  %call.i.i190 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %sock_link) #9
  br i1 %call.i.i190, label %if.end.i.i193, label %if.end89.list_del.exit195_crit_edge

if.end89.list_del.exit195_crit_edge:              ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit195

if.end.i.i193:                                    ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i191 = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 26, i32 1
  %46 = ptrtoint ptr %prev.i.i191 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %prev.i.i191, align 4
  %48 = ptrtoint ptr %sock_link to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %sock_link, align 4
  %prev1.i.i.i192 = getelementptr inbounds %struct.list_head, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %prev1.i.i.i192 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %47, ptr %prev1.i.i.i192, align 4
  %51 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile ptr %49, ptr %47, align 4
  br label %list_del.exit195

list_del.exit195:                                 ; preds = %if.end.i.i193, %if.end89.list_del.exit195_crit_edge
  %52 = ptrtoint ptr %sock_link to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr inttoptr (i32 256 to ptr), ptr %sock_link, align 4
  %prev.i194 = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 26, i32 1
  %53 = ptrtoint ptr %prev.i194 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i194, align 4
  tail call void @_raw_write_unlock(ptr noundef %call_lock) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %54 = load i32, ptr @rxrpc_debug, align 4
  %and92 = and i32 %54, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and92)
  %tobool93.not = icmp eq i32 %and92, 0
  br i1 %tobool93.not, label %list_del.exit195.do.end113_crit_edge, label %do.end103, !prof !248

list_del.exit195.do.end113_crit_edge:             ; preds = %list_del.exit195
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end113

do.end103:                                        ; preds = %list_del.exit195
  call void @__sanitizer_cov_trace_pc() #11
  %55 = tail call i32 @llvm.read_register.i32(metadata !238) #9
  %and.i196 = and i32 %55, -16384
  %56 = inttoptr i32 %and.i196 to ptr
  %task106 = getelementptr inbounds %struct.thread_info, ptr %56, i32 0, i32 2
  %57 = ptrtoint ptr %task106 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %task106, align 8
  %comm107 = getelementptr inbounds %struct.task_struct, ptr %58, i32 0, i32 101
  %59 = ptrtoint ptr %debug_id10 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %debug_id10, align 4
  %call110 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77, ptr noundef %comm107, ptr noundef %call, i32 noundef %60, ptr noundef %2) #12
  br label %do.end113

do.end113:                                        ; preds = %do.end103, %list_del.exit195.do.end113_crit_edge
  %tobool114.not = icmp eq ptr %2, null
  br i1 %tobool114.not, label %do.end113.if.end119_crit_edge, label %land.lhs.true

do.end113.if.end119_crit_edge:                    ; preds = %do.end113
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end119

land.lhs.true:                                    ; preds = %do.end113
  %61 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile i32, ptr %flags, align 4
  %63 = and i32 %62, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool117.not = icmp eq i32 %63, 0
  br i1 %tobool117.not, label %if.then118, label %land.lhs.true.if.end119_crit_edge

land.lhs.true.if.end119_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end119

if.then118:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @rxrpc_disconnect_call(ptr noundef %call) #9
  br label %if.end119

if.end119:                                        ; preds = %if.then118, %land.lhs.true.if.end119_crit_edge, %do.end113.if.end119_crit_edge
  %security = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 5
  %64 = ptrtoint ptr %security to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %security, align 8
  %tobool120.not = icmp eq ptr %65, null
  br i1 %tobool120.not, label %if.end119.do.body124_crit_edge, label %if.then121

if.end119.do.body124_crit_edge:                   ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body124

if.then121:                                       ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #11
  %free_call_crypto = getelementptr inbounds %struct.rxrpc_security, ptr %65, i32 0, i32 13
  %66 = ptrtoint ptr %free_call_crypto to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %free_call_crypto, align 4
  tail call void %67(ptr noundef %call) #9
  br label %do.body124

do.body124:                                       ; preds = %if.then121, %if.end119.do.body124_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %68 = load i32, ptr @rxrpc_debug, align 4
  %and125 = and i32 %68, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and125)
  %tobool126.not = icmp eq i32 %and125, 0
  br i1 %tobool126.not, label %do.body124.do.end145_crit_edge, label %do.end136, !prof !248

do.body124.do.end145_crit_edge:                   ; preds = %do.body124
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end145

do.end136:                                        ; preds = %do.body124
  call void @__sanitizer_cov_trace_pc() #11
  %69 = tail call i32 @llvm.read_register.i32(metadata !238) #9
  %and.i197 = and i32 %69, -16384
  %70 = inttoptr i32 %and.i197 to ptr
  %task139 = getelementptr inbounds %struct.thread_info, ptr %70, i32 0, i32 2
  %71 = ptrtoint ptr %task139 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %task139, align 8
  %comm140 = getelementptr inbounds %struct.task_struct, ptr %72, i32 0, i32 101
  %call142 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, ptr noundef %comm140, ptr noundef nonnull @.str.69) #12
  br label %do.end145

do.end145:                                        ; preds = %do.end136, %do.body124.do.end145_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rxrpc_put_call(ptr noundef %call, i32 noundef %op) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %rxnet1 = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %rxnet1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rxnet1, align 4
  %debug_id2 = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 48
  %cmp.not = icmp eq ptr %call, null
  br i1 %cmp.not, label %do.end, label %do.end14, !prof !264

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.87) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/rxrpc/call_object.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 594, 0\0A.popsection", ""() #9, !srcloc !265
  unreachable

do.end14:                                         ; preds = %entry
  %2 = ptrtoint ptr %debug_id2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %debug_id2, align 4
  %4 = tail call ptr @llvm.returnaddress(i32 0)
  %usage = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 42
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !266
  tail call void @llvm.prefetch.p0(ptr %usage, i32 1, i32 3, i32 1) #9
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage, ptr %usage, i32 1, ptr elementtype(i32) %usage) #9, !srcloc !267
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %5, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !268
  tail call fastcc void @trace_rxrpc_call(i32 noundef %3, i32 noundef %op, i32 noundef %asmresult.i.i.i.i, ptr noundef %4, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp17 = icmp slt i32 %asmresult.i.i.i.i, 0
  br i1 %cmp17, label %do.end29, label %if.end38, !prof !264

do.end29:                                         ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #11
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, i32 noundef %asmresult.i.i.i.i, i32 noundef %asmresult.i.i.i.i, ptr noundef nonnull @.str.67, i32 noundef 0, i32 noundef 0) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/rxrpc/call_object.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 598, 0\0A.popsection", ""() #9, !srcloc !269
  unreachable

if.end38:                                         ; preds = %do.end14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp41 = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp41, label %do.body43, label %if.end38.if.end95_crit_edge

if.end38.if.end95_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end95

do.body43:                                        ; preds = %if.end38
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %6 = load i32, ptr @rxrpc_debug, align 4
  %and = and i32 %6, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool44.not = icmp eq i32 %and, 0
  br i1 %tobool44.not, label %do.body43.do.body62_crit_edge, label %do.end54, !prof !248

do.body43.do.body62_crit_edge:                    ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body62

do.end54:                                         ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #11
  %7 = tail call i32 @llvm.read_register.i32(metadata !238) #9
  %and.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 101
  %11 = ptrtoint ptr %debug_id2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %debug_id2, align 4
  %call58 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.92, ptr noundef %comm, i32 noundef %12) #12
  br label %do.body62

do.body62:                                        ; preds = %do.end54, %do.body43.do.body62_crit_edge
  %state = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 40
  %13 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %14)
  %cmp65.not = icmp eq i32 %14, 11
  br i1 %cmp65.not, label %if.end86, label %do.end77, !prof !248

do.end77:                                         ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #11
  %call79 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, i32 noundef %14, i32 noundef %14, ptr noundef nonnull @.str.72, i32 noundef 11, i32 noundef 11) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/rxrpc/call_object.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 601, 0\0A.popsection", ""() #9, !srcloc !270
  unreachable

if.end86:                                         ; preds = %do.body62
  %link = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 21
  %15 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %link, align 4
  %cmp.i.not = icmp eq ptr %16, %link
  br i1 %cmp.i.not, label %if.end86.if.end94_crit_edge, label %if.then91

if.end86.if.end94_crit_edge:                      ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end94

if.then91:                                        ; preds = %if.end86
  %call_lock = getelementptr inbounds %struct.rxrpc_net, ptr %1, i32 0, i32 3
  tail call void @_raw_write_lock(ptr noundef %call_lock) #9
  %call.i.i115 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %link) #9
  br i1 %call.i.i115, label %if.end.i.i, label %if.then91.list_del_init.exit_crit_edge

if.then91.list_del_init.exit_crit_edge:           ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 21, i32 1
  %17 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev.i.i, align 4
  %19 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %link, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev1.i.i.i, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %20, ptr %18, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then91.list_del_init.exit_crit_edge
  %23 = ptrtoint ptr %link to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %link, ptr %link, align 4
  %prev.i3.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 21, i32 1
  %24 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %link, ptr %prev.i3.i, align 4
  tail call void @_raw_write_unlock(ptr noundef %call_lock) #9
  br label %if.end94

if.end94:                                         ; preds = %list_del_init.exit, %if.end86.if.end94_crit_edge
  tail call void @rxrpc_cleanup_call(ptr noundef nonnull %call)
  br label %if.end95

if.end95:                                         ; preds = %if.end94, %if.end38.if.end95_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rxrpc_incoming_call(ptr noundef %rx, ptr noundef %call, ptr nocapture noundef readonly %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %conn1 = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %conn1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %conn1, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %2 = load i32, ptr @rxrpc_debug, align 4
  %and = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.body10_crit_edge, label %do.end, !prof !248

entry.do.body10_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body10

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = tail call i32 @llvm.read_register.i32(metadata !238) #9
  %and.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 101
  %debug_id = getelementptr inbounds %struct.rxrpc_connection, ptr %1, i32 0, i32 23
  %7 = ptrtoint ptr %debug_id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %debug_id, align 8
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef %comm, ptr noundef nonnull @.str.58, i32 noundef %8) #12
  br label %do.body10

do.body10:                                        ; preds = %do.end, %entry.do.body10_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !271
  %socket34 = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 3
  %9 = ptrtoint ptr %socket34 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %rx, ptr %socket34, align 8
  %callNumber = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 24
  %10 = ptrtoint ptr %callNumber to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %callNumber, align 4
  %call_id = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 46
  %12 = ptrtoint ptr %call_id to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %call_id, align 4
  %serviceId = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 42
  %13 = ptrtoint ptr %serviceId to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %serviceId, align 2
  %service_id = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 43
  %15 = ptrtoint ptr %service_id to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %service_id, align 4
  %cid = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 20
  %16 = ptrtoint ptr %cid to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cid, align 4
  %cid48 = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 47
  %18 = ptrtoint ptr %cid48 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %cid48, align 8
  %state = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 40
  %19 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 6, ptr %state, align 8
  %20 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 2
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %20, align 8
  %cong_tstamp = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 63
  %23 = ptrtoint ptr %cong_tstamp to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %22, ptr %cong_tstamp, align 8
  %24 = load i32, ptr %cid, align 4
  %and51 = and i32 %24, 3
  %call_counter = getelementptr %struct.rxrpc_connection, ptr %1, i32 0, i32 6, i32 %and51, i32 4
  %25 = ptrtoint ptr %call_counter to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %11, ptr %call_counter, align 4
  %26 = load i32, ptr %call_id, align 4
  %call_id56 = getelementptr %struct.rxrpc_connection, ptr %1, i32 0, i32 6, i32 %and51, i32 3
  %27 = ptrtoint ptr %call_id56 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %call_id56, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !272
  %call90 = getelementptr %struct.rxrpc_connection, ptr %1, i32 0, i32 6, i32 %and51, i32 1
  %28 = ptrtoint ptr %call90 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %call, ptr %call90, align 4
  %peer = getelementptr inbounds %struct.rxrpc_connection, ptr %1, i32 0, i32 1, i32 1
  %29 = ptrtoint ptr %peer to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %peer, align 4
  %lock = getelementptr inbounds %struct.rxrpc_peer, ptr %30, i32 0, i32 10
  tail call void @_raw_spin_lock(ptr noundef %lock) #9
  %error_link = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 23
  %31 = ptrtoint ptr %peer to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %peer, align 4
  %error_targets = getelementptr inbounds %struct.rxrpc_peer, ptr %32, i32 0, i32 5
  %33 = ptrtoint ptr %error_targets to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %error_targets, align 4
  %35 = ptrtoint ptr %error_link to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %34, ptr %error_link, align 4
  %pprev.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 23, i32 1
  %36 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %error_targets, ptr %pprev.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !273
  %37 = ptrtoint ptr %error_targets to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %error_link, ptr %error_targets, align 4
  %tobool.not.i = icmp eq ptr %34, null
  br i1 %tobool.not.i, label %do.body10.hlist_add_head_rcu.exit_crit_edge, label %do.body49.i

do.body10.hlist_add_head_rcu.exit_crit_edge:      ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #11
  br label %hlist_add_head_rcu.exit

do.body49.i:                                      ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #11
  %pprev51.i = getelementptr inbounds %struct.hlist_node, ptr %34, i32 0, i32 1
  %38 = ptrtoint ptr %pprev51.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %error_link, ptr %pprev51.i, align 4
  br label %hlist_add_head_rcu.exit

hlist_add_head_rcu.exit:                          ; preds = %do.body49.i, %do.body10.hlist_add_head_rcu.exit_crit_edge
  %39 = ptrtoint ptr %peer to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %peer, align 4
  %lock106 = getelementptr inbounds %struct.rxrpc_peer, ptr %40, i32 0, i32 10
  tail call void @_raw_spin_unlock(ptr noundef %lock106) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %41 = load i32, ptr @rxrpc_debug, align 4
  %and108 = and i32 %41, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and108)
  %tobool109.not = icmp eq i32 %and108, 0
  br i1 %tobool109.not, label %hlist_add_head_rcu.exit.do.end131_crit_edge, label %do.end119, !prof !248

hlist_add_head_rcu.exit.do.end131_crit_edge:      ; preds = %hlist_add_head_rcu.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end131

do.end119:                                        ; preds = %hlist_add_head_rcu.exit
  call void @__sanitizer_cov_trace_pc() #11
  %42 = tail call i32 @llvm.read_register.i32(metadata !238) #9
  %and.i179 = and i32 %42, -16384
  %43 = inttoptr i32 %and.i179 to ptr
  %task122 = getelementptr inbounds %struct.thread_info, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %task122 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %task122, align 8
  %comm123 = getelementptr inbounds %struct.task_struct, ptr %45, i32 0, i32 101
  %debug_id125 = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 48
  %46 = ptrtoint ptr %debug_id125 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %debug_id125, align 4
  %48 = ptrtoint ptr %conn1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %conn1, align 8
  %debug_id127 = getelementptr inbounds %struct.rxrpc_connection, ptr %49, i32 0, i32 23
  %50 = ptrtoint ptr %debug_id127 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %debug_id127, align 8
  %call128 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef %comm123, i32 noundef %47, i32 noundef %51) #12
  br label %do.end131

do.end131:                                        ; preds = %do.end119, %hlist_add_head_rcu.exit.do.end131_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %52 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %52, 1073741822
  %ack_at.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 7
  %53 = ptrtoint ptr %ack_at.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %add.i, ptr %ack_at.i, align 8
  %ack_lost_at.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 8
  %54 = ptrtoint ptr %ack_lost_at.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %add.i, ptr %ack_lost_at.i, align 4
  %resend_at.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 9
  %55 = ptrtoint ptr %resend_at.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %add.i, ptr %resend_at.i, align 8
  %ping_at.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 10
  %56 = ptrtoint ptr %ping_at.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %add.i, ptr %ping_at.i, align 4
  %expect_rx_by.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 12
  %57 = ptrtoint ptr %expect_rx_by.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %add.i, ptr %expect_rx_by.i, align 4
  %expect_req_by.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 13
  %58 = ptrtoint ptr %expect_req_by.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %add.i, ptr %expect_req_by.i, align 8
  %expect_term_by.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 14
  %59 = ptrtoint ptr %expect_term_by.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %add.i, ptr %expect_term_by.i, align 4
  %expires.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 18, i32 1
  %60 = ptrtoint ptr %expires.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %52, ptr %expires.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %61 = load i32, ptr @rxrpc_debug, align 4
  %and133 = and i32 %61, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and133)
  %tobool134.not = icmp eq i32 %and133, 0
  br i1 %tobool134.not, label %do.end131.do.end153_crit_edge, label %do.end144, !prof !248

do.end131.do.end153_crit_edge:                    ; preds = %do.end131
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end153

do.end144:                                        ; preds = %do.end131
  call void @__sanitizer_cov_trace_pc() #11
  %62 = tail call i32 @llvm.read_register.i32(metadata !238) #9
  %and.i180 = and i32 %62, -16384
  %63 = inttoptr i32 %and.i180 to ptr
  %task147 = getelementptr inbounds %struct.thread_info, ptr %63, i32 0, i32 2
  %64 = ptrtoint ptr %task147 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %task147, align 8
  %comm148 = getelementptr inbounds %struct.task_struct, ptr %65, i32 0, i32 101
  %call150 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, ptr noundef %comm148, ptr noundef nonnull @.str.58) #12
  br label %do.end153

do.end153:                                        ; preds = %do.end144, %do.end131.do.end153_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @rxrpc_queue_call(ptr noundef %call) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call ptr @llvm.returnaddress(i32 0)
  %usage = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 42
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !274
  tail call void @llvm.prefetch.p0(ptr %usage, i32 1, i32 3, i32 1) #9
  %1 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage, ptr %usage, i32 0, i32 1, ptr elementtype(i32) %usage) #9, !srcloc !275
  %asmresult.i.i = extractvalue { i32, i32, i32 } %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.not.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.not.i.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !276
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_workqueue to i32))
  %2 = load ptr, ptr @rxrpc_workqueue, align 4
  %processor = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 19
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %2, ptr noundef %processor) #9
  br i1 %call.i, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %debug_id = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 48
  %3 = ptrtoint ptr %debug_id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %debug_id, align 4
  %add = add i32 %asmresult.i.i, 1
  tail call fastcc void @trace_rxrpc_call(i32 noundef %4, i32 noundef 11, i32 noundef %add, ptr noundef %0, ptr noundef null)
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @rxrpc_put_call(ptr noundef %call, i32 noundef 9)
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then3, %entry.cleanup_crit_edge
  %5 = xor i1 %cmp.not.i.i, true
  ret i1 %5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @__rxrpc_queue_call(ptr noundef %call) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call ptr @llvm.returnaddress(i32 0)
  %usage = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 42
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %usage, i32 noundef 4) #9
  %1 = ptrtoint ptr %usage to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %usage, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp = icmp slt i32 %2, 1
  br i1 %cmp, label %do.end, label %if.end, !prof !264

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, i32 noundef %2, i32 noundef %2, ptr noundef nonnull @.str.67, i32 noundef 1, i32 noundef 1) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/rxrpc/call_object.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 443, 0\0A.popsection", ""() #9, !srcloc !277
  unreachable

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_workqueue to i32))
  %3 = load ptr, ptr @rxrpc_workqueue, align 4
  %processor = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 19
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %3, ptr noundef %processor) #9
  br i1 %call.i, label %if.then15, label %if.else

if.then15:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %debug_id = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 48
  %4 = ptrtoint ptr %debug_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %debug_id, align 4
  tail call fastcc void @trace_rxrpc_call(i32 noundef %5, i32 noundef 12, i32 noundef %2, ptr noundef %0, ptr noundef null)
  br label %if.end16

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @rxrpc_put_call(ptr noundef %call, i32 noundef 9)
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.then15
  ret i1 true
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rxrpc_see_call(ptr noundef %call) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %0 = tail call ptr @llvm.returnaddress(i32 0)
  %usage = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 42
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %usage, i32 noundef 4) #9
  %1 = ptrtoint ptr %usage to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %usage, align 4
  %debug_id = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 48
  %3 = ptrtoint ptr %debug_id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %debug_id, align 4
  tail call fastcc void @trace_rxrpc_call(i32 noundef %4, i32 noundef 14, i32 noundef %2, ptr noundef %0, ptr noundef null)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_erase(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rxrpc_disconnect_call(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rxrpc_release_calls_on_socket(ptr noundef %rx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %0 = load i32, ptr @rxrpc_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end7_crit_edge, label %do.end, !prof !248

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end7

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %1 = tail call i32 @llvm.read_register.i32(metadata !238) #9
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 101
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81, ptr noundef %comm, ptr noundef nonnull @.str.82, ptr noundef %rx) #12
  br label %do.end7

do.end7:                                          ; preds = %do.end, %entry.do.end7_crit_edge
  %to_be_accepted = getelementptr inbounds %struct.rxrpc_sock, ptr %rx, i32 0, i32 7
  %5 = ptrtoint ptr %to_be_accepted to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %to_be_accepted, align 4
  %cmp.i.not66 = icmp eq ptr %6, %to_be_accepted
  br i1 %cmp.i.not66, label %do.end7.while.cond15.preheader_crit_edge, label %do.end7.while.body_crit_edge

do.end7.while.body_crit_edge:                     ; preds = %do.end7
  br label %while.body

do.end7.while.cond15.preheader_crit_edge:         ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond15.preheader

while.cond15.preheader:                           ; preds = %list_del.exit.while.cond15.preheader_crit_edge, %do.end7.while.cond15.preheader_crit_edge
  %sock_calls = getelementptr inbounds %struct.rxrpc_sock, ptr %rx, i32 0, i32 6
  %7 = ptrtoint ptr %sock_calls to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %sock_calls, align 4
  %cmp.i63.not67 = icmp eq ptr %8, %sock_calls
  br i1 %cmp.i63.not67, label %while.cond15.preheader.do.body29_crit_edge, label %while.body20.lr.ph

while.cond15.preheader.do.body29_crit_edge:       ; preds = %while.cond15.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body29

while.body20.lr.ph:                               ; preds = %while.cond15.preheader
  %9 = tail call ptr @llvm.returnaddress(i32 0) #9
  br label %while.body20

while.body:                                       ; preds = %list_del.exit.while.body_crit_edge, %do.end7.while.body_crit_edge
  %10 = phi ptr [ %20, %list_del.exit.while.body_crit_edge ], [ %6, %do.end7.while.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %10, i32 -284
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %10) #9
  br i1 %call.i.i, label %if.end.i.i, label %while.body.list_del.exit_crit_edge

while.body.list_del.exit_crit_edge:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev.i.i, align 4
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %10, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev1.i.i.i, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %14, ptr %12, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %while.body.list_del.exit_crit_edge
  %17 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 256 to ptr), ptr %10, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %18 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %call14 = tail call zeroext i1 @rxrpc_abort_call(ptr noundef nonnull @.str.83, ptr noundef %add.ptr, i32 noundef 0, i32 noundef -1, i32 noundef -104) #9
  tail call void @rxrpc_put_call(ptr noundef %add.ptr, i32 noundef 7)
  %19 = ptrtoint ptr %to_be_accepted to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %to_be_accepted, align 4
  %cmp.i.not = icmp eq ptr %20, %to_be_accepted
  br i1 %cmp.i.not, label %list_del.exit.while.cond15.preheader_crit_edge, label %list_del.exit.while.body_crit_edge

list_del.exit.while.body_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

list_del.exit.while.cond15.preheader_crit_edge:   ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond15.preheader

while.body20:                                     ; preds = %while.body20.while.body20_crit_edge, %while.body20.lr.ph
  %21 = phi ptr [ %8, %while.body20.lr.ph ], [ %26, %while.body20.while.body20_crit_edge ]
  %add.ptr25 = getelementptr i8, ptr %21, i32 -300
  %usage.i = getelementptr i8, ptr %21, i32 252
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !249
  tail call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #9
  %22 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #9, !srcloc !250
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %22, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !251
  %debug_id.i = getelementptr i8, ptr %21, i32 272
  %23 = ptrtoint ptr %debug_id.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %debug_id.i, align 4
  tail call fastcc void @trace_rxrpc_call(i32 noundef %24, i32 noundef 2, i32 noundef %asmresult.i.i.i.i.i, ptr noundef %9, ptr noundef null) #9
  %call26 = tail call zeroext i1 @rxrpc_abort_call(ptr noundef nonnull @.str.84, ptr noundef %add.ptr25, i32 noundef 0, i32 noundef -1, i32 noundef -104) #9
  %call27 = tail call i32 @rxrpc_send_abort_packet(ptr noundef %add.ptr25) #9
  tail call void @rxrpc_release_call(ptr noundef %rx, ptr noundef %add.ptr25)
  tail call void @rxrpc_put_call(ptr noundef %add.ptr25, i32 noundef 7)
  %25 = ptrtoint ptr %sock_calls to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile ptr, ptr %sock_calls, align 4
  %cmp.i63.not = icmp eq ptr %26, %sock_calls
  br i1 %cmp.i63.not, label %while.body20.do.body29_crit_edge, label %while.body20.while.body20_crit_edge

while.body20.while.body20_crit_edge:              ; preds = %while.body20
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body20

while.body20.do.body29_crit_edge:                 ; preds = %while.body20
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body29

do.body29:                                        ; preds = %while.body20.do.body29_crit_edge, %while.cond15.preheader.do.body29_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %27 = load i32, ptr @rxrpc_debug, align 4
  %and30 = and i32 %27, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %do.body29.do.end50_crit_edge, label %do.end41, !prof !248

do.body29.do.end50_crit_edge:                     ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end50

do.end41:                                         ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #11
  %28 = tail call i32 @llvm.read_register.i32(metadata !238) #9
  %and.i65 = and i32 %28, -16384
  %29 = inttoptr i32 %and.i65 to ptr
  %task44 = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %task44 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %task44, align 8
  %comm45 = getelementptr inbounds %struct.task_struct, ptr %31, i32 0, i32 101
  %call47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, ptr noundef %comm45, ptr noundef nonnull @.str.82) #12
  br label %do.end50

do.end50:                                         ; preds = %do.end41, %do.body29.do.end50_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rxrpc_abort_call(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rxrpc_send_abort_packet(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rxrpc_cleanup_call(ptr noundef %call) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %0 = load i32, ptr @rxrpc_debug, align 4
  %and = and i32 %0, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end6_crit_edge, label %do.end, !prof !248

entry.do.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %1 = tail call i32 @llvm.read_register.i32(metadata !238) #9
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 101
  %debug_id = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 48
  %5 = ptrtoint ptr %debug_id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %debug_id, align 4
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, ptr noundef %comm, i32 noundef %6) #12
  br label %do.end6

do.end6:                                          ; preds = %do.end, %entry.do.end6_crit_edge
  %sock_node = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 27
  %7 = call ptr @memset(ptr %sock_node, i32 205, i32 12)
  %timer = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 18
  %call7 = tail call i32 @del_timer_sync(ptr noundef %timer) #9
  %state = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 40
  %8 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %9)
  %cmp.not = icmp eq i32 %9, 11
  br i1 %cmp.not, label %if.end28, label %do.end19, !prof !248

do.end19:                                         ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #11
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, i32 noundef %9, i32 noundef %9, ptr noundef nonnull @.str.72, i32 noundef 11, i32 noundef 11) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/rxrpc/call_object.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 657, 0\0A.popsection", ""() #9, !srcloc !278
  unreachable

if.end28:                                         ; preds = %do.end6
  %flags = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 33
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool33.not = icmp eq i32 %and1.i, 0
  br i1 %tobool33.not, label %do.end45, label %do.end56, !prof !264

do.end45:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  %call47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.87) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/rxrpc/call_object.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 658, 0\0A.popsection", ""() #9, !srcloc !279
  unreachable

do.end56:                                         ; preds = %if.end28
  %rxtx_buffer.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 52
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %do.end56
  %i.07.i = phi i32 [ 0, %do.end56 ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %12 = ptrtoint ptr %rxtx_buffer.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rxtx_buffer.i, align 8
  %arrayidx.i = getelementptr ptr, ptr %13, i32 %i.07.i
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i, align 4
  tail call void @rxrpc_free_skb(ptr noundef %15, i32 noundef 0) #9
  %16 = ptrtoint ptr %rxtx_buffer.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rxtx_buffer.i, align 8
  %arrayidx2.i = getelementptr ptr, ptr %17, i32 %i.07.i
  %18 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %arrayidx2.i, align 4
  %inc.i = add nuw nsw i32 %i.07.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 64
  br i1 %exitcond.not.i, label %rxrpc_cleanup_ring.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

rxrpc_cleanup_ring.exit:                          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %tx_pending = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 28
  %19 = ptrtoint ptr %tx_pending to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %tx_pending, align 8
  tail call void @rxrpc_free_skb(ptr noundef %20, i32 noundef 0) #9
  tail call void @call_rcu(ptr noundef %call, ptr noundef nonnull @rxrpc_rcu_destroy_call) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rxrpc_free_skb(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rxrpc_rcu_destroy_call(ptr noundef %rcu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !238) #9
  %and.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i to ptr
  %preempt_count.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i, align 4
  %and = and i32 %3, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %processor16 = getelementptr inbounds %struct.rxrpc_call, ptr %rcu, i32 0, i32 19
  br i1 %tobool.not, label %if.else, label %do.body

do.body:                                          ; preds = %entry
  tail call void @__init_work(ptr noundef %processor16, i32 noundef 0) #9
  %4 = ptrtoint ptr %processor16 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -64, ptr %processor16, align 4
  %lockdep_map = getelementptr inbounds %struct.rxrpc_call, ptr %rcu, i32 0, i32 19, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.30, ptr noundef nonnull @rxrpc_rcu_destroy_call.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %entry5 = getelementptr inbounds %struct.rxrpc_call, ptr %rcu, i32 0, i32 19, i32 1
  %5 = ptrtoint ptr %entry5 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %entry5, ptr %entry5, align 4
  %prev.i = getelementptr inbounds %struct.rxrpc_call, ptr %rcu, i32 0, i32 19, i32 1, i32 1
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %entry5, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.rxrpc_call, ptr %rcu, i32 0, i32 19, i32 2
  %7 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @rxrpc_destroy_call, ptr %func, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_workqueue to i32))
  %8 = load ptr, ptr @rxrpc_workqueue, align 4
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %8, ptr noundef %processor16) #9
  br i1 %call.i, label %do.body.if.end17_crit_edge, label %do.body10

do.body.if.end17_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

do.body10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/rxrpc/call_object.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 640, 0\0A.popsection", ""() #9, !srcloc !280
  unreachable

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @rxrpc_destroy_call(ptr noundef %processor16)
  br label %if.end17

if.end17:                                         ; preds = %if.else, %do.body.if.end17_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rxrpc_destroy_all_calls(ptr noundef %rxnet) local_unnamed_addr #0 align 64 {
entry:
  %__wbq_entry = alloca %struct.wait_bit_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %0 = load i32, ptr @rxrpc_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end7_crit_edge, label %do.end, !prof !248

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end7

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %1 = tail call i32 @llvm.read_register.i32(metadata !238) #9
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 101
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.102, ptr noundef %comm, ptr noundef nonnull @.str.103) #12
  br label %do.end7

do.end7:                                          ; preds = %do.end, %entry.do.end7_crit_edge
  %calls = getelementptr inbounds %struct.rxrpc_net, ptr %rxnet, i32 0, i32 2
  %5 = ptrtoint ptr %calls to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %calls, align 4
  %cmp.i.not = icmp eq ptr %6, %calls
  br i1 %cmp.i.not, label %do.end7.if.end51_crit_edge, label %if.then10

do.end7.if.end51_crit_edge:                       ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end51

if.then10:                                        ; preds = %do.end7
  %call_lock = getelementptr inbounds %struct.rxrpc_net, ptr %rxnet, i32 0, i32 3
  tail call void @_raw_write_lock(ptr noundef %call_lock) #9
  %7 = ptrtoint ptr %calls to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %calls, align 4
  %cmp.i99.not105 = icmp eq ptr %8, %calls
  br i1 %cmp.i99.not105, label %if.then10.while.end_crit_edge, label %if.then10.while.body_crit_edge

if.then10.while.body_crit_edge:                   ; preds = %if.then10
  br label %while.body

if.then10.while.end_crit_edge:                    ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body:                                       ; preds = %list_del_init.exit.while.body_crit_edge, %if.then10.while.body_crit_edge
  %9 = phi ptr [ %39, %list_del_init.exit.while.body_crit_edge ], [ %8, %if.then10.while.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %9, i32 -260
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %10 = load i32, ptr @rxrpc_debug, align 4
  %and19 = and i32 %10, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %while.body.do.end39_crit_edge, label %do.end30, !prof !248

while.body.do.end39_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end39

do.end30:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %11 = tail call i32 @llvm.read_register.i32(metadata !238) #9
  %and.i101 = and i32 %11, -16384
  %12 = inttoptr i32 %and.i101 to ptr
  %task33 = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %task33 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %task33, align 8
  %comm34 = getelementptr inbounds %struct.task_struct, ptr %14, i32 0, i32 101
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.105, ptr noundef %comm34, ptr noundef %add.ptr) #12
  br label %do.end39

do.end39:                                         ; preds = %do.end30, %while.body.do.end39_crit_edge
  %tobool.not.i = icmp eq ptr %add.ptr, null
  br i1 %tobool.not.i, label %do.end39.rxrpc_see_call.exit_crit_edge, label %if.then.i

do.end39.rxrpc_see_call.exit_crit_edge:           ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %rxrpc_see_call.exit

if.then.i:                                        ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #11
  %15 = tail call ptr @llvm.returnaddress(i32 0) #9
  %usage.i = getelementptr i8, ptr %9, i32 292
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %usage.i, i32 noundef 4) #9
  %16 = ptrtoint ptr %usage.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %usage.i, align 4
  %debug_id.i = getelementptr i8, ptr %9, i32 312
  %18 = ptrtoint ptr %debug_id.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %debug_id.i, align 4
  tail call fastcc void @trace_rxrpc_call(i32 noundef %19, i32 noundef 14, i32 noundef %17, ptr noundef %15, ptr noundef null) #9
  br label %rxrpc_see_call.exit

rxrpc_see_call.exit:                              ; preds = %if.then.i, %do.end39.rxrpc_see_call.exit_crit_edge
  %call.i.i102 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %9) #9
  br i1 %call.i.i102, label %if.end.i.i, label %rxrpc_see_call.exit.list_del_init.exit_crit_edge

rxrpc_see_call.exit.list_del_init.exit_crit_edge: ; preds = %rxrpc_see_call.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %rxrpc_see_call.exit
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %20 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev.i.i, align 4
  %22 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %9, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %21, ptr %prev1.i.i.i, align 4
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %23, ptr %21, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %rxrpc_see_call.exit.list_del_init.exit_crit_edge
  %26 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %9, ptr %9, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %27 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %9, ptr %prev.i3.i, align 4
  %usage = getelementptr i8, ptr %9, i32 292
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %usage, i32 noundef 4) #9
  %28 = ptrtoint ptr %usage to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %usage, align 4
  %state = getelementptr i8, ptr %9, i32 284
  %30 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %state, align 8
  %arrayidx = getelementptr [12 x ptr], ptr @rxrpc_call_states, i32 0, i32 %31
  %32 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx, align 4
  %flags = getelementptr i8, ptr %9, i32 136
  %34 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %flags, align 4
  %events = getelementptr i8, ptr %9, i32 140
  %36 = ptrtoint ptr %events to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %events, align 8
  %call45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.108, ptr noundef %add.ptr, i32 noundef %29, ptr noundef %33, i32 noundef %35, i32 noundef %37) #12
  tail call void @_raw_write_unlock(ptr noundef %call_lock) #9
  tail call void @__might_resched(ptr noundef nonnull @.str.18, i32 noundef 694, i32 noundef 0) #9
  %call.i = tail call i32 @__cond_resched() #9
  tail call void @_raw_write_lock(ptr noundef %call_lock) #9
  %38 = ptrtoint ptr %calls to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile ptr, ptr %calls, align 4
  %cmp.i99.not = icmp eq ptr %39, %calls
  br i1 %cmp.i99.not, label %list_del_init.exit.while.end_crit_edge, label %list_del_init.exit.while.body_crit_edge

list_del_init.exit.while.body_crit_edge:          ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

list_del_init.exit.while.end_crit_edge:           ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %list_del_init.exit.while.end_crit_edge, %if.then10.while.end_crit_edge
  tail call void @_raw_write_unlock(ptr noundef %call_lock) #9
  br label %if.end51

if.end51:                                         ; preds = %while.end, %do.end7.if.end51_crit_edge
  %nr_calls = getelementptr inbounds %struct.rxrpc_net, ptr %rxnet, i32 0, i32 4
  %call.i.i96 = tail call zeroext i1 @__kasan_check_write(ptr noundef %nr_calls, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %nr_calls, i32 1, i32 3, i32 1) #9
  %40 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nr_calls, ptr %nr_calls, i32 1, ptr elementtype(i32) %nr_calls) #9, !srcloc !281
  tail call void @__might_sleep(ptr noundef nonnull @.str.18, i32 noundef 702) #9
  %call.i.i97 = tail call zeroext i1 @__kasan_check_read(ptr noundef %nr_calls, i32 noundef 4) #9
  %41 = ptrtoint ptr %nr_calls to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %nr_calls, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool61.not = icmp eq i32 %42, 0
  br i1 %tobool61.not, label %if.end51.do.end76_crit_edge, label %if.end63

if.end51.do.end76_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end76

if.end63:                                         ; preds = %if.end51
  %call65 = tail call ptr @__var_waitqueue(ptr noundef %nr_calls) #9
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %__wbq_entry) #9
  %43 = getelementptr inbounds %struct.wait_bit_queue_entry, ptr %__wbq_entry, i32 0, i32 1
  %44 = call ptr @memset(ptr %__wbq_entry, i32 255, i32 32)
  call void @init_wait_var_entry(ptr noundef nonnull %__wbq_entry, ptr noundef %nr_calls, i32 noundef 0) #9
  %call67106 = call i32 @prepare_to_wait_event(ptr noundef %call65, ptr noundef %43, i32 noundef 2) #9
  %call.i.i98107 = call zeroext i1 @__kasan_check_read(ptr noundef %nr_calls, i32 noundef 4) #9
  %45 = ptrtoint ptr %nr_calls to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %nr_calls, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool70.not108 = icmp eq i32 %46, 0
  br i1 %tobool70.not108, label %if.end63.for.end_crit_edge, label %if.end63.cleanup_crit_edge

if.end63.cleanup_crit_edge:                       ; preds = %if.end63
  br label %cleanup

if.end63.for.end_crit_edge:                       ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.end63.cleanup_crit_edge
  call void @schedule() #9
  %call67 = call i32 @prepare_to_wait_event(ptr noundef %call65, ptr noundef %43, i32 noundef 2) #9
  %call.i.i98 = call zeroext i1 @__kasan_check_read(ptr noundef %nr_calls, i32 noundef 4) #9
  %47 = ptrtoint ptr %nr_calls to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %nr_calls, align 4
  %tobool70.not = icmp eq i32 %48, 0
  br i1 %tobool70.not, label %cleanup.for.end_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end63.for.end_crit_edge
  call void @finish_wait(ptr noundef %call65, ptr noundef %43) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %__wbq_entry) #9
  br label %do.end76

do.end76:                                         ; preds = %for.end, %if.end51.do.end76_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__var_waitqueue(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_var_entry(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_rxrpc_timer(ptr noundef %call, i32 noundef %now) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rxrpc_timer, i32 0, i32 1), ptr blockaddress(@trace_rxrpc_timer, %do.body)) #9
          to label %if.end49 [label %do.body], !srcloc !257

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !238) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !248

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.118, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  br i1 %tobool.i.not, label %cpu_online.exit.if.end70_crit_edge, label %cleanup.thread

cpu_online.exit.if.end70_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end70

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !238) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !282
  %call43 = tail call i32 @__traceiter_rxrpc_timer(ptr noundef null, ptr noundef %call, i32 noundef 9, i32 noundef %now) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !283
  %13 = tail call i32 @llvm.read_register.i32(metadata !238) #9
  %and.i.i.i2 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i2 to ptr
  %preempt_count.i.i3 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i3, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i3, align 4
  br label %if.end49

if.end49:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !238) #9
  %and.i5 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i5 to ptr
  %cpu51 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu51 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu51, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i6 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i6, label %if.end49.cpu_online.exit14_crit_edge, label %land.rhs.i.i.i.i8

if.end49.cpu_online.exit14_crit_edge:             ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit14

land.rhs.i.i.i.i8:                                ; preds = %if.end49
  %.b37.i.i.i.i7 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i7, label %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, label %if.then.i.i.i.i9, !prof !248

land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge:    ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit14

if.then.i.i.i.i9:                                 ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.118, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit14

cpu_online.exit14:                                ; preds = %if.then.i.i.i.i9, %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, %if.end49.cpu_online.exit14_crit_edge
  %div3.i.i.i10 = lshr i32 %20, 5
  %arrayidx.i.i.i11 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i10
  %22 = ptrtoint ptr %arrayidx.i.i.i11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i11, align 4
  %and.i.i.i12 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i12
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i13.not = icmp eq i32 %25, 0
  br i1 %tobool.i13.not, label %cpu_online.exit14.if.end70_crit_edge, label %if.then53

cpu_online.exit14.if.end70_crit_edge:             ; preds = %cpu_online.exit14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end70

if.then53:                                        ; preds = %cpu_online.exit14
  %26 = tail call i32 @llvm.read_register.i32(metadata !238) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !260
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rxrpc_timer, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rxrpc_timer, i32 0, i32 7), align 4
  %call59 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %land.lhs.true, label %if.then53.do.end68_crit_edge

if.then53.do.end68_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end68

land.lhs.true:                                    ; preds = %if.then53
  %call61 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %land.lhs.true.do.end68_crit_edge, label %land.lhs.true63

land.lhs.true.do.end68_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end68

land.lhs.true63:                                  ; preds = %land.lhs.true
  %.b1 = load i1, ptr @trace_rxrpc_timer.__warned, align 1
  br i1 %.b1, label %land.lhs.true63.do.end68_crit_edge, label %if.then65

land.lhs.true63.do.end68_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end68

if.then65:                                        ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_rxrpc_timer.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.117, i32 noundef 1181, ptr noundef nonnull @.str.111) #9
  br label %do.end68

do.end68:                                         ; preds = %if.then65, %land.lhs.true63.do.end68_crit_edge, %land.lhs.true.do.end68_crit_edge, %if.then53.do.end68_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !261
  %31 = tail call i32 @llvm.read_register.i32(metadata !238) #9
  %and.i.i.i.i15 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i15 to ptr
  %preempt_count.i.i.i16 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i16 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i16, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i16, align 4
  br label %if.end70

if.end70:                                         ; preds = %do.end68, %cpu_online.exit14.if.end70_crit_edge, %cpu_online.exit.if.end70_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rxrpc_timer(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @down(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_interruptible(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_with_offset(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rxrpc_call(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rxrpc_destroy_call(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -212
  %rxnet1 = getelementptr i8, ptr %work, i32 -192
  %0 = ptrtoint ptr %rxnet1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rxnet1, align 4
  %conn = getelementptr i8, ptr %work, i32 -204
  %2 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %conn, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.rxrpc_put_connection.exit_crit_edge, label %if.end.i

entry.rxrpc_put_connection.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %rxrpc_put_connection.exit

if.end.i:                                         ; preds = %entry
  %out_clientflag.i.i = getelementptr inbounds %struct.rxrpc_connection, ptr %3, i32 0, i32 28
  %4 = ptrtoint ptr %out_clientflag.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %out_clientflag.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.i.not.i = icmp eq i8 %5, 0
  br i1 %tobool.i.not.i, label %if.else.i, label %if.then1.i

if.then1.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @rxrpc_put_client_conn(ptr noundef nonnull %3) #9
  br label %rxrpc_put_connection.exit

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @rxrpc_put_service_conn(ptr noundef nonnull %3) #9
  br label %rxrpc_put_connection.exit

rxrpc_put_connection.exit:                        ; preds = %if.else.i, %if.then1.i, %entry.rxrpc_put_connection.exit_crit_edge
  %peer = getelementptr i8, ptr %work, i32 -200
  %6 = ptrtoint ptr %peer to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %peer, align 4
  tail call void @rxrpc_put_peer(ptr noundef %7) #9
  %rxtx_buffer = getelementptr i8, ptr %work, i32 372
  %8 = ptrtoint ptr %rxtx_buffer to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rxtx_buffer, align 8
  tail call void @kfree(ptr noundef %9) #9
  %rxtx_annotations = getelementptr i8, ptr %work, i32 376
  %10 = ptrtoint ptr %rxtx_annotations to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rxtx_annotations, align 4
  tail call void @kfree(ptr noundef %11) #9
  %12 = load ptr, ptr @rxrpc_call_jar, align 4
  tail call void @kmem_cache_free(ptr noundef %12, ptr noundef %add.ptr) #9
  %nr_calls = getelementptr inbounds %struct.rxrpc_net, ptr %1, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %nr_calls, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !266
  tail call void @llvm.prefetch.p0(ptr %nr_calls, i32 1, i32 3, i32 1) #9
  %13 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nr_calls, ptr %nr_calls, i32 1, ptr elementtype(i32) %nr_calls) #9, !srcloc !267
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %13, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !268
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then, label %rxrpc_put_connection.exit.if.end_crit_edge

rxrpc_put_connection.exit.if.end_crit_edge:       ; preds = %rxrpc_put_connection.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %rxrpc_put_connection.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @wake_up_var(ptr noundef %nr_calls) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %rxrpc_put_connection.exit.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rxrpc_put_peer(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @wake_up_var(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rxrpc_put_client_conn(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rxrpc_put_service_conn(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 121)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 121)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !39, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !53, !55, !57, !58, !60, !61, !63, !64, !66, !67, !69, !70, !72, !73, !75, !76, !78, !79, !80, !82, !83, !84, !86, !87, !88, !90, !91, !92, !94, !95, !96, !98, !99, !100, !102, !103, !104, !105, !107, !108, !109, !111, !112, !113, !115, !116, !117, !118, !119, !121, !122, !123, !124, !126, !127, !128, !130, !131, !132, !134, !135, !136, !138, !139, !141, !142, !143, !144, !146, !148, !150, !151, !153, !154, !155, !156, !158, !159, !161, !162, !163, !165, !166, !168, !169, !170, !171, !173, !174, !176, !177, !179, !180, !181, !182, !184, !185, !186, !188, !189, !190, !192, !194, !196, !197, !198, !200, !201, !202, !204, !205, !207, !208, !209, !210, !212, !213, !214, !216, !217, !219, !221, !223, !225, !227, !228, !229, !231, !232, !233, !235, !236}
!llvm.named.register.sp = !{!238}
!llvm.module.flags = !{!239, !240, !241, !242, !243, !244, !245, !246}
!llvm.ident = !{!247}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/rxrpc/call_object.c", i32 19, i32 32}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../net/rxrpc/call_object.c", i32 20, i32 36}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../net/rxrpc/call_object.c", i32 21, i32 37}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../net/rxrpc/call_object.c", i32 22, i32 37}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../net/rxrpc/call_object.c", i32 23, i32 36}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../net/rxrpc/call_object.c", i32 24, i32 34}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../net/rxrpc/call_object.c", i32 25, i32 34}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../net/rxrpc/call_object.c", i32 26, i32 37}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../net/rxrpc/call_object.c", i32 27, i32 37}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../net/rxrpc/call_object.c", i32 28, i32 36}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../net/rxrpc/call_object.c", i32 29, i32 35}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../net/rxrpc/call_object.c", i32 30, i32 28}
!24 = !{ptr @rxrpc_call_states, !25, !"rxrpc_call_states", i1 false, i1 false}
!25 = !{!"../net/rxrpc/call_object.c", i32 18, i32 19}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../net/rxrpc/call_object.c", i32 35, i32 35}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../net/rxrpc/call_object.c", i32 36, i32 34}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../net/rxrpc/call_object.c", i32 37, i32 30}
!32 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../net/rxrpc/call_object.c", i32 38, i32 32}
!34 = !{ptr @rxrpc_call_completions, !35, !"rxrpc_call_completions", i1 false, i1 false}
!35 = !{!"../net/rxrpc/call_object.c", i32 33, i32 19}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../net/rxrpc/call_object.c", i32 72, i32 2}
!38 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @rxrpc_find_call_by_user_ID._entry, !37, !"_entry", i1 false, i1 false}
!41 = !{ptr @rxrpc_find_call_by_user_ID._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../net/rxrpc/call_object.c", i32 89, i32 2}
!44 = !{ptr @rxrpc_find_call_by_user_ID._entry.19, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @rxrpc_find_call_by_user_ID._entry_ptr.21, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../net/rxrpc/call_object.c", i32 95, i32 2}
!48 = !{ptr @rxrpc_find_call_by_user_ID._entry.22, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @rxrpc_find_call_by_user_ID._entry_ptr.24, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @rxrpc_alloc_call.__key, !51, !"__key", i1 false, i1 false}
!51 = !{!"../net/rxrpc/call_object.c", i32 122, i32 2}
!52 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.26, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../net/rxrpc/call_object.c", i32 128, i32 3}
!55 = !{ptr @rxrpc_alloc_call.__key.27, !56, !"__key", i1 false, i1 false}
!56 = !{!"../net/rxrpc/call_object.c", i32 131, i32 2}
!57 = !{ptr @.str.28, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @rxrpc_alloc_call.__key.29, !59, !"__key", i1 false, i1 false}
!59 = !{!"../net/rxrpc/call_object.c", i32 132, i32 2}
!60 = !{ptr @.str.30, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @rxrpc_alloc_call.__key.31, !62, !"__key", i1 false, i1 false}
!62 = !{!"../net/rxrpc/call_object.c", i32 138, i32 2}
!63 = !{ptr @.str.32, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @rxrpc_alloc_call.__key.33, !65, !"__key", i1 false, i1 false}
!65 = !{!"../net/rxrpc/call_object.c", i32 139, i32 2}
!66 = !{ptr @.str.34, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @rxrpc_alloc_call.__key.35, !68, !"__key", i1 false, i1 false}
!68 = !{!"../net/rxrpc/call_object.c", i32 140, i32 2}
!69 = !{ptr @.str.36, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @rxrpc_alloc_call.__key.37, !71, !"__key", i1 false, i1 false}
!71 = !{!"../net/rxrpc/call_object.c", i32 141, i32 2}
!72 = !{ptr @.str.38, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @rxrpc_alloc_call.__key.39, !74, !"__key", i1 false, i1 false}
!74 = !{!"../net/rxrpc/call_object.c", i32 142, i32 2}
!75 = !{ptr @.str.40, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @.str.41, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../net/rxrpc/call_object.c", i32 265, i32 2}
!78 = !{ptr @rxrpc_new_client_call._entry, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @rxrpc_new_client_call._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.43, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../net/rxrpc/call_object.c", i32 275, i32 3}
!82 = !{ptr @rxrpc_new_client_call._entry.42, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @rxrpc_new_client_call._entry_ptr.44, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.46, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../net/rxrpc/call_object.c", i32 339, i32 2}
!86 = !{ptr @rxrpc_new_client_call._entry.45, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @rxrpc_new_client_call._entry_ptr.47, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.49, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../net/rxrpc/call_object.c", i32 341, i32 2}
!90 = !{ptr @rxrpc_new_client_call._entry.48, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @rxrpc_new_client_call._entry_ptr.50, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.52, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../net/rxrpc/call_object.c", i32 359, i32 2}
!94 = !{ptr @rxrpc_new_client_call._entry.51, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @rxrpc_new_client_call._entry_ptr.53, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.55, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../net/rxrpc/call_object.c", i32 373, i32 2}
!98 = !{ptr @rxrpc_new_client_call._entry.54, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @rxrpc_new_client_call._entry_ptr.56, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.57, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../net/rxrpc/call_object.c", i32 389, i32 2}
!102 = !{ptr @.str.58, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @rxrpc_incoming_call._entry, !101, !"_entry", i1 false, i1 false}
!104 = !{ptr @rxrpc_incoming_call._entry_ptr, !101, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.60, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../net/rxrpc/call_object.c", i32 413, i32 2}
!107 = !{ptr @rxrpc_incoming_call._entry.59, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @rxrpc_incoming_call._entry_ptr.61, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.63, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../net/rxrpc/call_object.c", i32 416, i32 2}
!111 = !{ptr @rxrpc_incoming_call._entry.62, !110, !"_entry", i1 false, i1 false}
!112 = !{ptr @rxrpc_incoming_call._entry_ptr.64, !110, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.65, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../net/rxrpc/call_object.c", i32 443, i32 2}
!115 = !{ptr @.str.66, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @__rxrpc_queue_call._entry, !114, !"_entry", i1 false, i1 false}
!117 = !{ptr @__rxrpc_queue_call._entry_ptr, !114, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.67, !114, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @.str.68, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../net/rxrpc/call_object.c", i32 499, i32 2}
!121 = !{ptr @.str.69, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @rxrpc_release_call._entry, !120, !"_entry", i1 false, i1 false}
!123 = !{ptr @rxrpc_release_call._entry_ptr, !120, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @rxrpc_release_call._entry.70, !125, !"_entry", i1 false, i1 false}
!125 = !{!"../net/rxrpc/call_object.c", i32 505, i32 2}
!126 = !{ptr @rxrpc_release_call._entry_ptr.71, !125, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.72, !125, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @.str.74, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../net/rxrpc/call_object.c", i32 520, i32 3}
!130 = !{ptr @rxrpc_release_call._entry.73, !129, !"_entry", i1 false, i1 false}
!131 = !{ptr @rxrpc_release_call._entry_ptr.75, !129, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.77, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../net/rxrpc/call_object.c", i32 545, i32 2}
!134 = !{ptr @rxrpc_release_call._entry.76, !133, !"_entry", i1 false, i1 false}
!135 = !{ptr @rxrpc_release_call._entry_ptr.78, !133, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @rxrpc_release_call._entry.79, !137, !"_entry", i1 false, i1 false}
!137 = !{!"../net/rxrpc/call_object.c", i32 551, i32 2}
!138 = !{ptr @rxrpc_release_call._entry_ptr.80, !137, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.81, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../net/rxrpc/call_object.c", i32 561, i32 2}
!141 = !{ptr @.str.82, !140, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @rxrpc_release_calls_on_socket._entry, !140, !"_entry", i1 false, i1 false}
!143 = !{ptr @rxrpc_release_calls_on_socket._entry_ptr, !140, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.83, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../net/rxrpc/call_object.c", i32 567, i32 20}
!146 = !{ptr @.str.84, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../net/rxrpc/call_object.c", i32 575, i32 20}
!148 = !{ptr @rxrpc_release_calls_on_socket._entry.85, !149, !"_entry", i1 false, i1 false}
!149 = !{!"../net/rxrpc/call_object.c", i32 581, i32 2}
!150 = !{ptr @rxrpc_release_calls_on_socket._entry_ptr.86, !149, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @.str.87, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../net/rxrpc/call_object.c", i32 594, i32 2}
!153 = !{ptr @.str.88, !152, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @rxrpc_put_call._entry, !152, !"_entry", i1 false, i1 false}
!155 = !{ptr @rxrpc_put_call._entry_ptr, !152, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @rxrpc_put_call._entry.89, !157, !"_entry", i1 false, i1 false}
!157 = !{!"../net/rxrpc/call_object.c", i32 598, i32 2}
!158 = !{ptr @rxrpc_put_call._entry_ptr.90, !157, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @.str.92, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../net/rxrpc/call_object.c", i32 600, i32 3}
!161 = !{ptr @rxrpc_put_call._entry.91, !160, !"_entry", i1 false, i1 false}
!162 = !{ptr @rxrpc_put_call._entry_ptr.93, !160, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @rxrpc_put_call._entry.94, !164, !"_entry", i1 false, i1 false}
!164 = !{!"../net/rxrpc/call_object.c", i32 601, i32 3}
!165 = !{ptr @rxrpc_put_call._entry_ptr.95, !164, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @.str.96, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../net/rxrpc/call_object.c", i32 651, i32 2}
!168 = !{ptr @.str.97, !167, !"<string literal>", i1 false, i1 false}
!169 = !{ptr @rxrpc_cleanup_call._entry, !167, !"_entry", i1 false, i1 false}
!170 = !{ptr @rxrpc_cleanup_call._entry_ptr, !167, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @rxrpc_cleanup_call._entry.98, !172, !"_entry", i1 false, i1 false}
!172 = !{!"../net/rxrpc/call_object.c", i32 657, i32 2}
!173 = !{ptr @rxrpc_cleanup_call._entry_ptr.99, !172, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @rxrpc_cleanup_call._entry.100, !175, !"_entry", i1 false, i1 false}
!175 = !{!"../net/rxrpc/call_object.c", i32 658, i32 2}
!176 = !{ptr @rxrpc_cleanup_call._entry_ptr.101, !175, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @.str.102, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../net/rxrpc/call_object.c", i32 675, i32 2}
!179 = !{ptr @.str.103, !178, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @rxrpc_destroy_all_calls._entry, !178, !"_entry", i1 false, i1 false}
!181 = !{ptr @rxrpc_destroy_all_calls._entry_ptr, !178, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @.str.105, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../net/rxrpc/call_object.c", i32 683, i32 4}
!184 = !{ptr @rxrpc_destroy_all_calls._entry.104, !183, !"_entry", i1 false, i1 false}
!185 = !{ptr @rxrpc_destroy_all_calls._entry_ptr.106, !183, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @.str.108, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../net/rxrpc/call_object.c", i32 688, i32 4}
!188 = !{ptr @rxrpc_destroy_all_calls._entry.107, !187, !"_entry", i1 false, i1 false}
!189 = !{ptr @rxrpc_destroy_all_calls._entry_ptr.109, !187, !"_entry_ptr", i1 false, i1 false}
!190 = !{ptr @rxrpc_call_jar, !191, !"rxrpc_call_jar", i1 false, i1 false}
!191 = !{!"../net/rxrpc/call_object.c", i32 41, i32 20}
!192 = !{ptr @rxrpc_call_user_mutex_lock_class_key, !193, !"rxrpc_call_user_mutex_lock_class_key", i1 false, i1 false}
!193 = !{!"../net/rxrpc/call_object.c", i32 60, i32 30}
!194 = distinct !{null, !195, !"__warned", i1 false, i1 false}
!195 = !{!"../include/net/netns/generic.h", i32 45, i32 7}
!196 = !{ptr @.str.110, !195, !"<string literal>", i1 false, i1 false}
!197 = !{ptr @.str.111, !195, !"<string literal>", i1 false, i1 false}
!198 = distinct !{null, !199, !"__warned", i1 false, i1 false}
!199 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!200 = !{ptr @.str.112, !199, !"<string literal>", i1 false, i1 false}
!201 = !{ptr @.str.113, !199, !"<string literal>", i1 false, i1 false}
!202 = distinct !{null, !203, !"__warned", i1 false, i1 false}
!203 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!204 = !{ptr @.str.114, !203, !"<string literal>", i1 false, i1 false}
!205 = !{ptr @.str.115, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../net/rxrpc/call_object.c", i32 52, i32 2}
!207 = !{ptr @.str.116, !206, !"<string literal>", i1 false, i1 false}
!208 = !{ptr @rxrpc_call_timer_expired._entry, !206, !"_entry", i1 false, i1 false}
!209 = !{ptr @rxrpc_call_timer_expired._entry_ptr, !206, !"_entry_ptr", i1 false, i1 false}
!210 = distinct !{null, !211, !"__already_done", i1 false, i1 false}
!211 = !{!"../include/trace/events/rxrpc.h", i32 1138, i32 1}
!212 = !{ptr @.str.117, !211, !"<string literal>", i1 false, i1 false}
!213 = distinct !{null, !211, !"__warned", i1 false, i1 false}
!214 = distinct !{null, !215, !"__already_done", i1 false, i1 false}
!215 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!216 = !{ptr @.str.118, !215, !"<string literal>", i1 false, i1 false}
!217 = !{ptr @.str.119, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../net/rxrpc/call_object.c", i32 44, i32 2}
!219 = !{ptr @rxrpc_call_limiter, !220, !"rxrpc_call_limiter", i1 false, i1 false}
!220 = !{!"../net/rxrpc/call_object.c", i32 43, i32 25}
!221 = !{ptr @.str.120, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../net/rxrpc/call_object.c", i32 46, i32 2}
!223 = !{ptr @rxrpc_kernel_call_limiter, !224, !"rxrpc_kernel_call_limiter", i1 false, i1 false}
!224 = !{!"../net/rxrpc/call_object.c", i32 45, i32 25}
!225 = !{ptr @.str.121, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../net/rxrpc/call_object.c", i32 182, i32 2}
!227 = !{ptr @rxrpc_alloc_client_call._entry, !226, !"_entry", i1 false, i1 false}
!228 = !{ptr @rxrpc_alloc_client_call._entry_ptr, !226, !"_entry_ptr", i1 false, i1 false}
!229 = !{ptr @.str.123, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../net/rxrpc/call_object.c", i32 194, i32 2}
!231 = !{ptr @rxrpc_alloc_client_call._entry.122, !230, !"_entry", i1 false, i1 false}
!232 = !{ptr @rxrpc_alloc_client_call._entry_ptr.124, !230, !"_entry_ptr", i1 false, i1 false}
!233 = distinct !{null, !234, !"__already_done", i1 false, i1 false}
!234 = !{!"../include/trace/events/rxrpc.h", i32 593, i32 1}
!235 = distinct !{null, !234, !"__warned", i1 false, i1 false}
!236 = !{ptr @rxrpc_rcu_destroy_call.__key, !237, !"__key", i1 false, i1 false}
!237 = !{!"../net/rxrpc/call_object.c", i32 638, i32 3}
!238 = !{!"sp"}
!239 = !{i32 1, !"wchar_size", i32 2}
!240 = !{i32 1, !"min_enum_size", i32 4}
!241 = !{i32 8, !"branch-target-enforcement", i32 0}
!242 = !{i32 8, !"sign-return-address", i32 0}
!243 = !{i32 8, !"sign-return-address-all", i32 0}
!244 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!245 = !{i32 7, !"uwtable", i32 1}
!246 = !{i32 7, !"frame-pointer", i32 2}
!247 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!248 = !{!"branch_weights", i32 2000, i32 1}
!249 = !{i64 2148682814}
!250 = !{i64 2148598099, i64 2148598131, i64 2148598160, i64 2148598194, i64 2148598225, i64 2148598248}
!251 = !{i64 2148683043}
!252 = !{i64 2149934250}
!253 = !{i64 2149934516}
!254 = !{i64 2148597379, i64 2148597405, i64 2148597434, i64 2148597468, i64 2148597499, i64 2148597522}
!255 = !{i8 0, i8 2}
!256 = !{i64 2158146133}
!257 = !{i64 2148218105, i64 2148218110, i64 2148218123, i64 2148218167, i64 2148218201, i64 2148218222}
!258 = !{i64 2157514005}
!259 = !{i64 2157514260}
!260 = !{i64 2149942809}
!261 = !{i64 2149943845}
!262 = !{i64 2158187591, i64 2158188079, i64 2158187628, i64 2158187684, i64 2158187718, i64 2158187742, i64 2158187783, i64 2158187804, i64 2158187832, i64 2158187866}
!263 = !{i64 2158189232, i64 2158189720, i64 2158189269, i64 2158189325, i64 2158189359, i64 2158189383, i64 2158189424, i64 2158189445, i64 2158189473, i64 2158189507}
!264 = !{!"branch_weights", i32 1, i32 2000}
!265 = !{i64 2158209495, i64 2158209983, i64 2158209532, i64 2158209588, i64 2158209622, i64 2158209646, i64 2158209687, i64 2158209708, i64 2158209736, i64 2158209770}
!266 = !{i64 2148685855}
!267 = !{i64 2148600564, i64 2148600596, i64 2148600625, i64 2148600659, i64 2148600690, i64 2148600713}
!268 = !{i64 2148686084}
!269 = !{i64 2158213534, i64 2158214022, i64 2158213571, i64 2158213627, i64 2158213661, i64 2158213685, i64 2158213726, i64 2158213747, i64 2158213775, i64 2158213809}
!270 = !{i64 2158219478, i64 2158219966, i64 2158219515, i64 2158219571, i64 2158219605, i64 2158219629, i64 2158219670, i64 2158219691, i64 2158219719, i64 2158219753}
!271 = !{i64 2158163645}
!272 = !{i64 2158171900}
!273 = !{i64 2151517162}
!274 = !{i64 2148596798}
!275 = !{i64 1083398, i64 1083423, i64 1083445, i64 1083461, i64 1083473, i64 1083493, i64 1083517, i64 1083533, i64 1083545}
!276 = !{i64 2148596986}
!277 = !{i64 2158181358, i64 2158181846, i64 2158181395, i64 2158181451, i64 2158181485, i64 2158181509, i64 2158181550, i64 2158181571, i64 2158181599, i64 2158181633}
!278 = !{i64 2158230261, i64 2158230749, i64 2158230298, i64 2158230354, i64 2158230388, i64 2158230412, i64 2158230453, i64 2158230474, i64 2158230502, i64 2158230536}
!279 = !{i64 2158233585, i64 2158234073, i64 2158233622, i64 2158233678, i64 2158233712, i64 2158233736, i64 2158233777, i64 2158233798, i64 2158233826, i64 2158233860}
!280 = !{i64 2158224294, i64 2158224782, i64 2158224331, i64 2158224387, i64 2158224421, i64 2158224445, i64 2158224486, i64 2158224507, i64 2158224535, i64 2158224569}
!281 = !{i64 2148599844, i64 2148599870, i64 2148599899, i64 2148599933, i64 2148599964, i64 2148599987}
!282 = !{i64 2157843532}
!283 = !{i64 2157843745}
