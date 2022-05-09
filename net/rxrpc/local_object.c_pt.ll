; ModuleID = '/llk/IR_all_yes/net/rxrpc/local_object.c_pt.bc'
source_filename = "../net/rxrpc/local_object.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.128 }
%union.anon.128 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.udp_tunnel_sock_cfg = type { ptr, i8, ptr, ptr, ptr, ptr, ptr }
%struct.udp_port_cfg = type { i8, %union.anon.165, %union.anon.166, i16, i16, i32, i8 }
%union.anon.165 = type { %struct.in6_addr }
%struct.in6_addr = type { %union.anon.69 }
%union.anon.69 = type { [4 x i32] }
%union.anon.166 = type { %struct.in6_addr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.15, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.15 = type { %struct.anon.16 }
%struct.anon.16 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.raw_notifier_head = type { ptr }
%struct.list_head = type { ptr, ptr }
%struct.netns_core = type { ptr, i32, ptr }
%struct.netns_mib = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.netns_packet = type { %struct.mutex, %struct.hlist_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.netns_unix = type { i32, ptr }
%struct.netns_nexthop = type { %struct.rb_root, ptr, i32, i32, %struct.blocking_notifier_head }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.netns_ipv4 = type { %struct.inet_timewait_death_row, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, ptr, ptr, ptr, i32, i8, i8, i8, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i32, i32, i32, i32, %struct.local_ports, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, [3 x i32], [3 x i32], i32, i32, i32, i32, ptr, ptr, i32, %struct.atomic_t, i32, i32, i32, i8, i8, i8, i32, i32, i32, %struct.ping_group_range, %struct.atomic_t, ptr, i32, %struct.list_head, ptr, i32, i8, i8, ptr, i32, ptr, i32, %struct.atomic_t, %struct.siphash_key_t, [96 x i8] }
%struct.inet_timewait_death_row = type { %struct.atomic_t, [124 x i8], ptr, i32 }
%struct.local_ports = type { %struct.seqlock_t, [2 x i32], i8 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.ping_group_range = type { %struct.seqlock_t, [2 x %struct.kgid_t] }
%struct.kgid_t = type { i32 }
%struct.siphash_key_t = type { [2 x i64] }
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.99, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.99 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.76, i32, %struct.spinlock }
%union.anon.76 = type { %struct.anon.77 }
%struct.anon.77 = type { ptr, ptr }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [8 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_mpls = type { i32, i32, i32, ptr, ptr }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.netns_xdp = type { %struct.mutex, %struct.hlist_head }
%struct.netns_mctp = type { %struct.list_head, %struct.mutex, %struct.hlist_head, %struct.spinlock, %struct.hlist_head, i32, %struct.mutex, %struct.list_head }
%struct.netns_smc = type { ptr, %struct.mutex, ptr }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.120, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.30 }
%union.anon.30 = type { i32 }
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
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.tlbflush_unmap_batch = type {}
%union.anon.120 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.sockaddr_rxrpc = type { i16, i16, i16, i16, %union.anon.143 }
%union.anon.143 = type { %struct.sockaddr_in6 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.rxrpc_net = type { ptr, i32, %struct.list_head, %struct.rwlock_t, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.rwlock_t, %struct.work_struct, %struct.timer_list, i8, i8, %struct.atomic_t, %struct.spinlock, %struct.spinlock, %struct.list_head, %struct.work_struct, %struct.timer_list, %struct.list_head, %struct.mutex, [1024 x %struct.hlist_head], %struct.spinlock, i8, i64, [32 x %struct.list_head], %struct.list_head, %struct.timer_list, %struct.work_struct }
%struct.rxrpc_local = type { %struct.callback_head, %struct.atomic_t, %struct.atomic_t, ptr, %struct.list_head, ptr, %struct.work_struct, ptr, %struct.rw_semaphore, %struct.sk_buff_head, %struct.sk_buff_head, %struct.rb_root, %struct.spinlock, %struct.spinlock, %struct.rwlock_t, i32, i8, i8, %struct.sockaddr_rxrpc }
%struct.socket = type { i32, i16, i32, ptr, ptr, ptr, [104 x i8], %struct.socket_wq }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [60 x i8] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.78, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.79, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.80, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.sock_common = type { %union.anon.38, %union.anon.40, %union.anon.41, i16, i8, i8, i32, %union.anon.43, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.70, [0 x i32], %union.anon.71, i16, i16, %union.anon.72, %struct.refcount_struct, [0 x i32], %union.anon.73 }
%union.anon.38 = type { i64 }
%union.anon.40 = type { i32 }
%union.anon.41 = type { i32 }
%union.anon.43 = type { %struct.hlist_node }
%struct.possible_net_t = type { ptr }
%struct.atomic64_t = type { i64 }
%union.anon.70 = type { i32 }
%union.anon.71 = type { %struct.hlist_node }
%union.anon.72 = type { i32 }
%union.anon.73 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.anon.78 = type { %struct.atomic_t, i32, ptr, ptr }
%union.anon.79 = type { ptr }
%union.anon.80 = type { ptr }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.inet_sock = type { %struct.sock, ptr, i32, i16, i16, ptr, i16, i16, i8, i8, i8, i8, i16, i8, i8, i32, i32, i32, ptr, %struct.inet_cork_full }
%struct.inet_cork_full = type { %struct.inet_cork, %struct.flowi }
%struct.inet_cork = type { i32, i32, ptr, i32, i32, ptr, i8, i8, i16, i8, i16, i64, i32 }
%struct.flowi = type { %union.anon.85 }
%union.anon.85 = type { %struct.flowi6 }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.ipv6_pinfo = type { %struct.in6_addr, %struct.in6_pktinfo, ptr, ptr, i32, i32, i32, i32, i32, %union.anon.167, i16, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.inet6_cork }
%struct.in6_pktinfo = type { %struct.in6_addr, i32 }
%union.anon.167 = type { %struct.anon.168 }
%struct.anon.168 = type { i16 }
%struct.inet6_cork = type { ptr, i8, i8 }

@rxrpc_debug = external dso_local local_unnamed_addr global i32, align 4
@rxrpc_lookup_local._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 186, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"[%-6.6s] ==> %s({%d,%d,%pISp})\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rxrpc_lookup_local\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"net/rxrpc/local_object.c\00", [39 x i8] zeroinitializer }, align 32
@rxrpc_lookup_local._entry_ptr = internal global ptr @rxrpc_lookup_local._entry, section ".printk_index", align 4
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"old\00", [28 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"new\00", [28 x i8] zeroinitializer }, align 32
@rxrpc_lookup_local._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 240, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"[%-6.6s] @@@ LOCAL %s %d {%pISp}\0A\00", [62 x i8] zeroinitializer }, align 32
@rxrpc_lookup_local._entry_ptr.7 = internal global ptr @rxrpc_lookup_local._entry.5, section ".printk_index", align 4
@rxrpc_lookup_local._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 242, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"[%-6.6s] <== %s() = %p\0A\00", [40 x i8] zeroinitializer }, align 32
@rxrpc_lookup_local._entry_ptr.10 = internal global ptr @rxrpc_lookup_local._entry.8, section ".printk_index", align 4
@rxrpc_lookup_local._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.1, ptr @.str.2, i32 251, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"[%-6.6s] <== %s() = %d\0A\00", [40 x i8] zeroinitializer }, align 32
@rxrpc_lookup_local._entry_ptr.13 = internal global ptr @rxrpc_lookup_local._entry.11, section ".printk_index", align 4
@rxrpc_lookup_local._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.1, ptr @.str.2, i32 256, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"[%-6.6s] <== %s() = -EADDRINUSE\0A\00", [63 x i8] zeroinitializer }, align 32
@rxrpc_lookup_local._entry_ptr.16 = internal global ptr @rxrpc_lookup_local._entry.14, section ".printk_index", align 4
@rxrpc_workqueue = external dso_local local_unnamed_addr global ptr, align 4
@rxrpc_destroy_all_locals._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 454, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"[%-6.6s] ==> %s()\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"rxrpc_destroy_all_locals\00", [39 x i8] zeroinitializer }, align 32
@rxrpc_destroy_all_locals._entry_ptr = internal global ptr @rxrpc_destroy_all_locals._entry, section ".printk_index", align 4
@rxrpc_destroy_all_locals._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.18, ptr @.str.2, i32 462, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013rxrpc: AF_RXRPC: Leaked local %p {%d}\0A\00", [55 x i8] zeroinitializer }, align 32
@rxrpc_destroy_all_locals._entry_ptr.21 = internal global ptr @rxrpc_destroy_all_locals._entry.19, section ".printk_index", align 4
@rxrpc_net_id = external dso_local local_unnamed_addr global i32, align 4
@net_generic.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.22 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/net/netns/generic.h\00", [36 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.24 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.26 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@rxrpc_alloc_local.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.27 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"(work_completion)(&local->processor)\00", [59 x i8] zeroinitializer }, align 32
@rxrpc_alloc_local.__key.28 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.29 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&local->defrag_sem\00", [45 x i8] zeroinitializer }, align 32
@rxrpc_alloc_local.__key.30 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.31 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"&local->client_bundles_lock\00", [36 x i8] zeroinitializer }, align 32
@rxrpc_alloc_local.__key.32 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.33 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&local->lock\00", [19 x i8] zeroinitializer }, align 32
@rxrpc_alloc_local.__key.34 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.35 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&local->services_lock\00", [42 x i8] zeroinitializer }, align 32
@rxrpc_debug_id = external dso_local global %struct.atomic_t, align 4
@rxrpc_alloc_local._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.36, ptr @.str.2, i32 100, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rxrpc_alloc_local\00", [46 x i8] zeroinitializer }, align 32
@rxrpc_alloc_local._entry_ptr = internal global ptr @rxrpc_alloc_local._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@rxrpc_local_destroyer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.2, i32 369, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"[%-6.6s] ==> %s(%d)\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rxrpc_local_destroyer\00", [42 x i8] zeroinitializer }, align 32
@rxrpc_local_destroyer._entry_ptr = internal global ptr @rxrpc_local_destroyer._entry, section ".printk_index", align 4
@rxrpc_local_destroyer._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.38, ptr @.str.2, i32 379, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013rxrpc: Assertion failed\0A\00", [37 x i8] zeroinitializer }, align 32
@rxrpc_local_destroyer._entry_ptr.41 = internal global ptr @rxrpc_local_destroyer._entry.39, section ".printk_index", align 4
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.42 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@rxrpc_open_socket._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.2, i32 117, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"[%-6.6s] ==> %s(%p{%d,%d})\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rxrpc_open_socket\00", [46 x i8] zeroinitializer }, align 32
@rxrpc_open_socket._entry_ptr = internal global ptr @rxrpc_open_socket._entry, section ".printk_index", align 4
@rxrpc_open_socket._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.44, ptr @.str.2, i32 131, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"[%-6.6s] <== %s() = %d [socket]\0A\00", [63 x i8] zeroinitializer }, align 32
@rxrpc_open_socket._entry_ptr.47 = internal global ptr @rxrpc_open_socket._entry.45, section ".printk_index", align 4
@rxrpc_open_socket._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.44, ptr @.str.2, i32 168, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"[%-6.6s] <== %s() = 0\0A\00", [41 x i8] zeroinitializer }, align 32
@rxrpc_open_socket._entry_ptr.50 = internal global ptr @rxrpc_open_socket._entry.48, section ".printk_index", align 4
@__tracepoint_rxrpc_local = external dso_local global %struct.tracepoint, align 4
@.str.51 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"include/trace/events/rxrpc.h\00", [35 x i8] zeroinitializer }, align 32
@trace_rxrpc_local.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.52 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@rxrpc_local_rcu._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.53, ptr @.str.2, i32 438, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rxrpc_local_rcu\00", [16 x i8] zeroinitializer }, align 32
@rxrpc_local_rcu._entry_ptr = internal global ptr @rxrpc_local_rcu._entry, section ".printk_index", align 4
@rxrpc_local_rcu._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.53, ptr @.str.2, i32 440, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@rxrpc_local_rcu._entry_ptr.55 = internal global ptr @rxrpc_local_rcu._entry.54, section ".printk_index", align 4
@rxrpc_local_rcu._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.53, ptr @.str.2, i32 442, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"[%-6.6s] @@@ DESTROY LOCAL %d\0A\00", [33 x i8] zeroinitializer }, align 32
@rxrpc_local_rcu._entry_ptr.58 = internal global ptr @rxrpc_local_rcu._entry.56, section ".printk_index", align 4
@rxrpc_local_rcu._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.53, ptr @.str.2, i32 444, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"[%-6.6s] <== %s()\0A\00", [45 x i8] zeroinitializer }, align 32
@rxrpc_local_rcu._entry_ptr.61 = internal global ptr @rxrpc_local_rcu._entry.59, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.62 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 10]
@__sancov_gen_cov_switch_values.63 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 185, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 218, i32 9 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 234, i32 8 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 239, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 242, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 251, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 256, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 454, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 461, i32 4 }
@___asan_gen_.125 = private unnamed_addr constant [31 x i8] c"../include/net/netns/generic.h\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 45, i32 7 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 695, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 723, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 86, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 87, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 91, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 92, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 93, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 100, i32 2 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 369, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 379, i32 2 }
@___asan_gen_.187 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.191 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 1984, i32 2 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 116, i32 2 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 131, i32 3 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 168, i32 2 }
@___asan_gen_.215 = private unnamed_addr constant [32 x i8] c"../include/trace/events/rxrpc.h\00", align 1
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 482, i32 1 }
@___asan_gen_.218 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 108, i32 2 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 438, i32 2 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 440, i32 2 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 442, i32 2 }
@___asan_gen_.235 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.238 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.239 = private constant [28 x i8] c"../net/rxrpc/local_object.c\00", align 1
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 444, i32 2 }
@llvm.compiler.used = appending global [76 x ptr] [ptr @rxrpc_alloc_local._entry, ptr @rxrpc_alloc_local._entry_ptr, ptr @rxrpc_destroy_all_locals._entry, ptr @rxrpc_destroy_all_locals._entry.19, ptr @rxrpc_destroy_all_locals._entry_ptr, ptr @rxrpc_destroy_all_locals._entry_ptr.21, ptr @rxrpc_local_destroyer._entry, ptr @rxrpc_local_destroyer._entry.39, ptr @rxrpc_local_destroyer._entry_ptr, ptr @rxrpc_local_destroyer._entry_ptr.41, ptr @rxrpc_local_rcu._entry, ptr @rxrpc_local_rcu._entry.54, ptr @rxrpc_local_rcu._entry.56, ptr @rxrpc_local_rcu._entry.59, ptr @rxrpc_local_rcu._entry_ptr, ptr @rxrpc_local_rcu._entry_ptr.55, ptr @rxrpc_local_rcu._entry_ptr.58, ptr @rxrpc_local_rcu._entry_ptr.61, ptr @rxrpc_lookup_local._entry, ptr @rxrpc_lookup_local._entry.11, ptr @rxrpc_lookup_local._entry.14, ptr @rxrpc_lookup_local._entry.5, ptr @rxrpc_lookup_local._entry.8, ptr @rxrpc_lookup_local._entry_ptr, ptr @rxrpc_lookup_local._entry_ptr.10, ptr @rxrpc_lookup_local._entry_ptr.13, ptr @rxrpc_lookup_local._entry_ptr.16, ptr @rxrpc_lookup_local._entry_ptr.7, ptr @rxrpc_open_socket._entry, ptr @rxrpc_open_socket._entry.45, ptr @rxrpc_open_socket._entry.48, ptr @rxrpc_open_socket._entry_ptr, ptr @rxrpc_open_socket._entry_ptr.47, ptr @rxrpc_open_socket._entry_ptr.50, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @rxrpc_alloc_local.__key, ptr @.str.27, ptr @rxrpc_alloc_local.__key.28, ptr @.str.29, ptr @rxrpc_alloc_local.__key.30, ptr @.str.31, ptr @rxrpc_alloc_local.__key.32, ptr @.str.33, ptr @rxrpc_alloc_local.__key.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.40, ptr @skb_queue_head_init.__key, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.46, ptr @.str.49, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.57, ptr @.str.60], section "llvm.metadata"
@0 = internal global [59 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_lookup_local._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_lookup_local._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_lookup_local._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_lookup_local._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_lookup_local._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_destroy_all_locals._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_destroy_all_locals._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_alloc_local.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_alloc_local.__key.28 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_alloc_local.__key.30 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_alloc_local.__key.32 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_alloc_local.__key.34 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_alloc_local._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_local_destroyer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_local_destroyer._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_open_socket._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_open_socket._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_open_socket._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_local_rcu._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_local_rcu._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_local_rcu._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_local_rcu._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @rxrpc_lookup_local(ptr noundef %net, ptr noundef %srx) local_unnamed_addr #0 align 64 {
entry:
  %tuncfg.i = alloca %struct.udp_tunnel_sock_cfg, align 4
  %udp_conf.i = alloca %struct.udp_port_cfg, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_net_id to i32))
  %0 = load i32, ptr @rxrpc_net_id, align 4
  %1 = tail call i32 @llvm.read_register.i32(metadata !112) #10
  %and.i.i.i.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %4, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !122
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i.i.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i.i.i, label %entry.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true.i.i.i

entry.rcu_read_lock.exit.i.i_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %entry
  %call1.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true2.i.i.i

land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i.i

land.lhs.true2.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b4.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i, label %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.24, i32 noundef 696, ptr noundef nonnull @.str.25) #10
  br label %rcu_read_lock.exit.i.i

rcu_read_lock.exit.i.i:                           ; preds = %if.then.i.i.i, %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %entry.rcu_read_lock.exit.i.i_crit_edge
  %gen.i.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 43
  %5 = ptrtoint ptr %gen.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %gen.i.i, align 128
  %call.i.i = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %rcu_read_lock.exit.i.i.do.end7.i.i_crit_edge

rcu_read_lock.exit.i.i.do.end7.i.i_crit_edge:     ; preds = %rcu_read_lock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7.i.i

land.lhs.true.i.i:                                ; preds = %rcu_read_lock.exit.i.i
  %call2.i.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %land.lhs.true.i.i.do.end7.i.i_crit_edge, label %land.lhs.true4.i.i

land.lhs.true.i.i.do.end7.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7.i.i

land.lhs.true4.i.i:                               ; preds = %land.lhs.true.i.i
  %.b9.i.i = load i1, ptr @net_generic.__warned, align 1
  br i1 %.b9.i.i, label %land.lhs.true4.i.i.do.end7.i.i_crit_edge, label %if.then.i.i

land.lhs.true4.i.i.do.end7.i.i_crit_edge:         ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7.i.i

if.then.i.i:                                      ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @net_generic.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 45, ptr noundef nonnull @.str.23) #10
  br label %do.end7.i.i

do.end7.i.i:                                      ; preds = %if.then.i.i, %land.lhs.true4.i.i.do.end7.i.i_crit_edge, %land.lhs.true.i.i.do.end7.i.i_crit_edge, %rcu_read_lock.exit.i.i.do.end7.i.i_crit_edge
  %arrayidx.i.i = getelementptr [0 x ptr], ptr %6, i32 0, i32 %0
  %7 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i.i, align 4
  %call.i10.i.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i10.i.i, label %do.end7.i.i.rxrpc_net.exit_crit_edge, label %land.lhs.true.i13.i.i

do.end7.i.i.rxrpc_net.exit_crit_edge:             ; preds = %do.end7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rxrpc_net.exit

land.lhs.true.i13.i.i:                            ; preds = %do.end7.i.i
  %call1.i11.i.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i11.i.i)
  %tobool.not.i12.i.i = icmp eq i32 %call1.i11.i.i, 0
  br i1 %tobool.not.i12.i.i, label %land.lhs.true.i13.i.i.rxrpc_net.exit_crit_edge, label %land.lhs.true2.i15.i.i

land.lhs.true.i13.i.i.rxrpc_net.exit_crit_edge:   ; preds = %land.lhs.true.i13.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rxrpc_net.exit

land.lhs.true2.i15.i.i:                           ; preds = %land.lhs.true.i13.i.i
  %.b4.i14.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i14.i.i, label %land.lhs.true2.i15.i.i.rxrpc_net.exit_crit_edge, label %if.then.i16.i.i

land.lhs.true2.i15.i.i.rxrpc_net.exit_crit_edge:  ; preds = %land.lhs.true2.i15.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rxrpc_net.exit

if.then.i16.i.i:                                  ; preds = %land.lhs.true2.i15.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.24, i32 noundef 724, ptr noundef nonnull @.str.26) #10
  br label %rxrpc_net.exit

rxrpc_net.exit:                                   ; preds = %if.then.i16.i.i, %land.lhs.true2.i15.i.i.rxrpc_net.exit_crit_edge, %land.lhs.true.i13.i.i.rxrpc_net.exit_crit_edge, %do.end7.i.i.rxrpc_net.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !123
  %9 = tail call i32 @llvm.read_register.i32(metadata !112) #10
  %and.i.i.i.i.i17.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i17.i.i to ptr
  %preempt_count.i.i.i.i18.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i.i.i18.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i.i.i18.i.i, align 4
  %sub.i.i.i.i.i = add i32 %12, -1
  store volatile i32 %sub.i.i.i.i.i, ptr %preempt_count.i.i.i.i18.i.i, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %13 = load i32, ptr @rxrpc_debug, align 4
  %and = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %rxrpc_net.exit.do.end9_crit_edge, label %do.end, !prof !124

rxrpc_net.exit.do.end9_crit_edge:                 ; preds = %rxrpc_net.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9

do.end:                                           ; preds = %rxrpc_net.exit
  call void @__sanitizer_cov_trace_pc() #12
  %14 = tail call i32 @llvm.read_register.i32(metadata !112) #10
  %and.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %17, i32 0, i32 101
  %transport_type = getelementptr inbounds %struct.sockaddr_rxrpc, ptr %srx, i32 0, i32 2
  %18 = ptrtoint ptr %transport_type to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %transport_type, align 4
  %conv = zext i16 %19 to i32
  %transport = getelementptr inbounds %struct.sockaddr_rxrpc, ptr %srx, i32 0, i32 4
  %20 = ptrtoint ptr %transport to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %transport, align 4
  %conv5 = zext i16 %21 to i32
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %comm, ptr noundef nonnull @.str.1, i32 noundef %conv, i32 noundef %conv5, ptr noundef %transport) #13
  br label %do.end9

do.end9:                                          ; preds = %do.end, %rxrpc_net.exit.do.end9_crit_edge
  %local_mutex = getelementptr inbounds %struct.rxrpc_net, ptr %8, i32 0, i32 20
  tail call void @mutex_lock_nested(ptr noundef %local_mutex, i32 noundef 0) #10
  %local_endpoints = getelementptr inbounds %struct.rxrpc_net, ptr %8, i32 0, i32 19
  %transport_type2.i = getelementptr inbounds %struct.sockaddr_rxrpc, ptr %srx, i32 0, i32 2
  %transport_len6.i = getelementptr inbounds %struct.sockaddr_rxrpc, ptr %srx, i32 0, i32 3
  %transport14.i = getelementptr inbounds %struct.sockaddr_rxrpc, ptr %srx, i32 0, i32 4
  %sin6_port43.i = getelementptr inbounds %struct.sockaddr_rxrpc, ptr %srx, i32 0, i32 4, i32 0, i32 1
  %sin6_addr52.i = getelementptr inbounds %struct.sockaddr_rxrpc, ptr %srx, i32 0, i32 4, i32 0, i32 3
  %sin_addr35.i = getelementptr inbounds %struct.sockaddr_rxrpc, ptr %srx, i32 0, i32 4, i32 0, i32 2
  br label %for.cond

for.cond:                                         ; preds = %rxrpc_local_cmp_key.exit.for.cond_crit_edge, %do.end9
  %cursor.0.in = phi ptr [ %local_endpoints, %do.end9 ], [ %cursor.0, %rxrpc_local_cmp_key.exit.for.cond_crit_edge ]
  %22 = ptrtoint ptr %cursor.0.in to i32
  call void @__asan_load4_noabort(i32 %22)
  %cursor.0 = load ptr, ptr %cursor.0.in, align 4
  %cmp.not = icmp eq ptr %cursor.0, %local_endpoints
  br i1 %cmp.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.cond
  %transport_type.i = getelementptr i8, ptr %cursor.0, i32 416
  %23 = ptrtoint ptr %transport_type.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %transport_type.i, align 4
  %conv.i = zext i16 %24 to i32
  %25 = ptrtoint ptr %transport_type2.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %transport_type2.i, align 4
  %conv3.i = zext i16 %26 to i32
  %sub.i = sub nsw i32 %conv.i, %conv3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %tobool.not.i = icmp eq i32 %sub.i, 0
  br i1 %tobool.not.i, label %cond.false.i, label %for.body.cond.end17.i_crit_edge

for.body.cond.end17.i_crit_edge:                  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end17.i

cond.false.i:                                     ; preds = %for.body
  %transport_len.i = getelementptr i8, ptr %cursor.0, i32 418
  %27 = ptrtoint ptr %transport_len.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %transport_len.i, align 2
  %conv5.i = zext i16 %28 to i32
  %29 = ptrtoint ptr %transport_len6.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %transport_len6.i, align 2
  %conv7.i = zext i16 %30 to i32
  %sub8.i = sub nsw i32 %conv5.i, %conv7.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub8.i)
  %tobool9.not.i = icmp eq i32 %sub8.i, 0
  br i1 %tobool9.not.i, label %cond.false11.i, label %cond.false.i.cond.end17.i_crit_edge

cond.false.i.cond.end17.i_crit_edge:              ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end17.i

cond.false11.i:                                   ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #12
  %transport.i = getelementptr i8, ptr %cursor.0, i32 420
  %31 = ptrtoint ptr %transport.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %transport.i, align 4
  %conv13.i = zext i16 %32 to i32
  %33 = ptrtoint ptr %transport14.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %transport14.i, align 4
  %conv15.i = zext i16 %34 to i32
  %sub16.i = sub nsw i32 %conv13.i, %conv15.i
  br label %cond.end17.i

cond.end17.i:                                     ; preds = %cond.false11.i, %cond.false.i.cond.end17.i_crit_edge, %for.body.cond.end17.i_crit_edge
  %cond18.i = phi i32 [ %sub.i, %for.body.cond.end17.i_crit_edge ], [ %sub16.i, %cond.false11.i ], [ %sub8.i, %cond.false.i.cond.end17.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond18.i)
  %cmp.not.i = icmp eq i32 %cond18.i, 0
  br i1 %cmp.not.i, label %if.end.i, label %cond.end17.i.rxrpc_local_cmp_key.exit_crit_edge

cond.end17.i.rxrpc_local_cmp_key.exit_crit_edge:  ; preds = %cond.end17.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rxrpc_local_cmp_key.exit

if.end.i:                                         ; preds = %cond.end17.i
  %35 = ptrtoint ptr %transport14.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %transport14.i, align 4
  %37 = zext i16 %36 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values)
  switch i16 %36, label %do.body.i [
    i16 2, label %sw.bb.i
    i16 10, label %sw.bb38.i
  ]

sw.bb.i:                                          ; preds = %if.end.i
  %sin_port.i = getelementptr i8, ptr %cursor.0, i32 422
  %38 = ptrtoint ptr %sin_port.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %sin_port.i, align 2
  %conv24.i = zext i16 %39 to i32
  %40 = ptrtoint ptr %sin6_port43.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %sin6_port43.i, align 2
  %conv27.i = zext i16 %41 to i32
  %sub28.i = sub nsw i32 %conv24.i, %conv27.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub28.i)
  %tobool29.not.i = icmp eq i32 %sub28.i, 0
  br i1 %tobool29.not.i, label %cond.false31.i, label %sw.bb.i.rxrpc_local_cmp_key.exit_crit_edge

sw.bb.i.rxrpc_local_cmp_key.exit_crit_edge:       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rxrpc_local_cmp_key.exit

cond.false31.i:                                   ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #12
  %sin_addr.i = getelementptr i8, ptr %cursor.0, i32 424
  %call.i = tail call i32 @memcmp(ptr noundef dereferenceable(4) %sin_addr.i, ptr noundef dereferenceable(4) %sin_addr35.i, i32 noundef 4) #14
  br label %rxrpc_local_cmp_key.exit

sw.bb38.i:                                        ; preds = %if.end.i
  %sin6_port.i = getelementptr i8, ptr %cursor.0, i32 422
  %42 = ptrtoint ptr %sin6_port.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %sin6_port.i, align 2
  %conv41.i = zext i16 %43 to i32
  %44 = ptrtoint ptr %sin6_port43.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %sin6_port43.i, align 2
  %conv44.i = zext i16 %45 to i32
  %sub45.i = sub nsw i32 %conv41.i, %conv44.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub45.i)
  %tobool46.not.i = icmp eq i32 %sub45.i, 0
  br i1 %tobool46.not.i, label %cond.false48.i, label %sw.bb38.i.rxrpc_local_cmp_key.exit_crit_edge

sw.bb38.i.rxrpc_local_cmp_key.exit_crit_edge:     ; preds = %sw.bb38.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rxrpc_local_cmp_key.exit

cond.false48.i:                                   ; preds = %sw.bb38.i
  call void @__sanitizer_cov_trace_pc() #12
  %sin6_addr.i = getelementptr i8, ptr %cursor.0, i32 428
  %call53.i = tail call i32 @memcmp(ptr noundef dereferenceable(16) %sin6_addr.i, ptr noundef dereferenceable(16) %sin6_addr52.i, i32 noundef 16) #14
  br label %rxrpc_local_cmp_key.exit

do.body.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/rxrpc/local_object.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 68, 0\0A.popsection", ""() #10, !srcloc !125
  unreachable

rxrpc_local_cmp_key.exit:                         ; preds = %cond.false48.i, %sw.bb38.i.rxrpc_local_cmp_key.exit_crit_edge, %cond.false31.i, %sw.bb.i.rxrpc_local_cmp_key.exit_crit_edge, %cond.end17.i.rxrpc_local_cmp_key.exit_crit_edge
  %retval.0.i = phi i32 [ %cond18.i, %cond.end17.i.rxrpc_local_cmp_key.exit_crit_edge ], [ %call.i, %cond.false31.i ], [ %sub28.i, %sw.bb.i.rxrpc_local_cmp_key.exit_crit_edge ], [ %call53.i, %cond.false48.i ], [ %sub45.i, %sw.bb38.i.rxrpc_local_cmp_key.exit_crit_edge ]
  %cmp14 = icmp slt i32 %retval.0.i, 0
  br i1 %cmp14, label %rxrpc_local_cmp_key.exit.for.cond_crit_edge, label %if.end17

rxrpc_local_cmp_key.exit.for.cond_crit_edge:      ; preds = %rxrpc_local_cmp_key.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond

if.end17:                                         ; preds = %rxrpc_local_cmp_key.exit
  %add.ptr.le = getelementptr i8, ptr %cursor.0, i32 -20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp18.not = icmp eq i32 %retval.0.i, 0
  br i1 %cmp18.not, label %if.end21, label %if.end17.for.end_crit_edge

if.end17.for.end_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end21:                                         ; preds = %if.end17
  %srx_service = getelementptr inbounds %struct.sockaddr_rxrpc, ptr %srx, i32 0, i32 1
  %46 = ptrtoint ptr %srx_service to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %srx_service, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %47)
  %tobool22.not = icmp eq i16 %47, 0
  br i1 %tobool22.not, label %if.end24, label %if.then23

if.then23:                                        ; preds = %if.end21
  tail call void @mutex_unlock(ptr noundef %local_mutex) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %48 = load i32, ptr @rxrpc_debug, align 4
  %and121 = and i32 %48, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and121)
  %tobool122.not = icmp eq i32 %and121, 0
  br i1 %tobool122.not, label %if.then23.cleanup_crit_edge, label %do.end132, !prof !124

if.then23.cleanup_crit_edge:                      ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end24:                                         ; preds = %if.end21
  %call25 = tail call ptr @rxrpc_use_local(ptr noundef %add.ptr.le)
  %tobool26.not = icmp eq ptr %call25, null
  br i1 %tobool26.not, label %if.end24.for.end_crit_edge, label %if.end24.found_crit_edge

if.end24.found_crit_edge:                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %found

if.end24.for.end_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %if.end24.for.end_crit_edge, %if.end17.for.end_crit_edge, %for.cond.for.end_crit_edge
  %cursor.0225 = phi ptr [ %cursor.0, %if.end24.for.end_crit_edge ], [ %cursor.0, %if.end17.for.end_crit_edge ], [ %local_endpoints, %for.cond.for.end_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %49 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %49, i32 noundef 3520, i32 noundef 468) #15
  %tobool.not.i180 = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i180, label %for.end.do.body26.i_crit_edge, label %if.then.i

for.end.do.body26.i_crit_edge:                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body26.i

if.then.i:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %usage.i = getelementptr inbounds %struct.rxrpc_local, ptr %call7.i.i.i, i32 0, i32 2
  %call.i.i.i181 = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #10
  %50 = ptrtoint ptr %usage.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile i32 1, ptr %usage.i, align 4
  %active_users.i = getelementptr inbounds %struct.rxrpc_local, ptr %call7.i.i.i, i32 0, i32 1
  %call.i.i61.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %active_users.i, i32 noundef 4) #10
  %51 = ptrtoint ptr %active_users.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile i32 1, ptr %active_users.i, align 8
  %rxnet1.i = getelementptr inbounds %struct.rxrpc_local, ptr %call7.i.i.i, i32 0, i32 3
  %52 = ptrtoint ptr %rxnet1.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %8, ptr %rxnet1.i, align 8
  %link.i = getelementptr inbounds %struct.rxrpc_local, ptr %call7.i.i.i, i32 0, i32 4
  %53 = ptrtoint ptr %link.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile ptr %link.i, ptr %link.i, align 4
  %prev.i.i = getelementptr inbounds %struct.rxrpc_local, ptr %call7.i.i.i, i32 0, i32 4, i32 1
  %54 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %link.i, ptr %prev.i.i, align 8
  %processor.i = getelementptr inbounds %struct.rxrpc_local, ptr %call7.i.i.i, i32 0, i32 6
  tail call void @__init_work(ptr noundef %processor.i, i32 noundef 0) #10
  %55 = ptrtoint ptr %processor.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 -64, ptr %processor.i, align 8
  %lockdep_map.i = getelementptr inbounds %struct.rxrpc_local, ptr %call7.i.i.i, i32 0, i32 6, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.27, ptr noundef nonnull @rxrpc_alloc_local.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry5.i = getelementptr inbounds %struct.rxrpc_local, ptr %call7.i.i.i, i32 0, i32 6, i32 1
  %56 = ptrtoint ptr %entry5.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile ptr %entry5.i, ptr %entry5.i, align 4
  %prev.i63.i = getelementptr inbounds %struct.rxrpc_local, ptr %call7.i.i.i, i32 0, i32 6, i32 1, i32 1
  %57 = ptrtoint ptr %prev.i63.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %entry5.i, ptr %prev.i63.i, align 8
  %func.i = getelementptr inbounds %struct.rxrpc_local, ptr %call7.i.i.i, i32 0, i32 6, i32 2
  %58 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @rxrpc_local_processor, ptr %func.i, align 4
  %defrag_sem.i = getelementptr inbounds %struct.rxrpc_local, ptr %call7.i.i.i, i32 0, i32 8
  tail call void @__init_rwsem(ptr noundef %defrag_sem.i, ptr noundef nonnull @.str.29, ptr noundef nonnull @rxrpc_alloc_local.__key.28) #10
  %reject_queue.i = getelementptr inbounds %struct.rxrpc_local, ptr %call7.i.i.i, i32 0, i32 9
  %lock.i.i = getelementptr inbounds %struct.rxrpc_local, ptr %call7.i.i.i, i32 0, i32 9, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i.i, ptr noundef nonnull @.str.42, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #10
  %59 = ptrtoint ptr %reject_queue.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %reject_queue.i, ptr %reject_queue.i, align 8
  %prev.i.i.i = getelementptr inbounds %struct.rxrpc_local, ptr %call7.i.i.i, i32 0, i32 9, i32 0, i32 0, i32 1
  %60 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %reject_queue.i, ptr %prev.i.i.i, align 4
  %qlen.i.i.i = getelementptr inbounds %struct.rxrpc_local, ptr %call7.i.i.i, i32 0, i32 9, i32 1
  %61 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 0, ptr %qlen.i.i.i, align 8
  %event_queue.i = getelementptr inbounds %struct.rxrpc_local, ptr %call7.i.i.i, i32 0, i32 10
  %lock.i64.i = getelementptr inbounds %struct.rxrpc_local, ptr %call7.i.i.i, i32 0, i32 10, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i64.i, ptr noundef nonnull @.str.42, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #10
  %62 = ptrtoint ptr %event_queue.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %event_queue.i, ptr %event_queue.i, align 8
  %prev.i.i65.i = getelementptr inbounds %struct.rxrpc_local, ptr %call7.i.i.i, i32 0, i32 10, i32 0, i32 0, i32 1
  %63 = ptrtoint ptr %prev.i.i65.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %event_queue.i, ptr %prev.i.i65.i, align 4
  %qlen.i.i66.i = getelementptr inbounds %struct.rxrpc_local, ptr %call7.i.i.i, i32 0, i32 10, i32 1
  %64 = ptrtoint ptr %qlen.i.i66.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 0, ptr %qlen.i.i66.i, align 8
  %client_bundles.i = getelementptr inbounds %struct.rxrpc_local, ptr %call7.i.i.i, i32 0, i32 11
  %65 = ptrtoint ptr %client_bundles.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr null, ptr %client_bundles.i, align 8
  %client_bundles_lock.i = getelementptr inbounds %struct.rxrpc_local, ptr %call7.i.i.i, i32 0, i32 12
  tail call void @__raw_spin_lock_init(ptr noundef %client_bundles_lock.i, ptr noundef nonnull @.str.31, ptr noundef nonnull @rxrpc_alloc_local.__key.30, i16 noundef signext 3) #10
  %lock.i = getelementptr inbounds %struct.rxrpc_local, ptr %call7.i.i.i, i32 0, i32 13
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.33, ptr noundef nonnull @rxrpc_alloc_local.__key.32, i16 noundef signext 3) #10
  %services_lock.i = getelementptr inbounds %struct.rxrpc_local, ptr %call7.i.i.i, i32 0, i32 14
  tail call void @__rwlock_init(ptr noundef %services_lock.i, ptr noundef nonnull @.str.35, ptr noundef nonnull @rxrpc_alloc_local.__key.34) #10
  %call.i.i62.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @rxrpc_debug_id, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !126
  tail call void @llvm.prefetch.p0(ptr nonnull @rxrpc_debug_id, i32 1, i32 3, i32 1) #10
  %66 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @rxrpc_debug_id, ptr nonnull @rxrpc_debug_id, i32 1, ptr nonnull elementtype(i32) @rxrpc_debug_id) #10, !srcloc !127
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %66, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !128
  %debug_id.i = getelementptr inbounds %struct.rxrpc_local, ptr %call7.i.i.i, i32 0, i32 15
  %67 = ptrtoint ptr %debug_id.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %asmresult.i.i.i.i.i, ptr %debug_id.i, align 8
  %srx23.i = getelementptr inbounds %struct.rxrpc_local, ptr %call7.i.i.i, i32 0, i32 18
  %68 = call ptr @memcpy(ptr %srx23.i, ptr %srx, i32 36)
  %srx_service.i = getelementptr inbounds %struct.rxrpc_local, ptr %call7.i.i.i, i32 0, i32 18, i32 1
  %69 = ptrtoint ptr %srx_service.i to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 0, ptr %srx_service.i, align 2
  tail call fastcc void @trace_rxrpc_local(i32 noundef %asmresult.i.i.i.i.i, i32 noundef 1, i32 noundef 1, ptr noundef null) #10
  br label %do.body26.i

do.body26.i:                                      ; preds = %if.then.i, %for.end.do.body26.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %70 = load i32, ptr @rxrpc_debug, align 4
  %and.i182 = and i32 %70, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i182)
  %tobool27.not.i = icmp eq i32 %and.i182, 0
  br i1 %tobool27.not.i, label %do.body26.i.rxrpc_alloc_local.exit_crit_edge, label %do.end33.i, !prof !124

do.body26.i.rxrpc_alloc_local.exit_crit_edge:     ; preds = %do.body26.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rxrpc_alloc_local.exit

do.end33.i:                                       ; preds = %do.body26.i
  call void @__sanitizer_cov_trace_pc() #12
  %71 = tail call i32 @llvm.read_register.i32(metadata !112) #10
  %and.i.i = and i32 %71, -16384
  %72 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %72, i32 0, i32 2
  %73 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %task.i, align 8
  %comm.i = getelementptr inbounds %struct.task_struct, ptr %74, i32 0, i32 101
  %call35.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %comm.i, ptr noundef nonnull @.str.36, ptr noundef %call7.i.i.i) #13
  br label %rxrpc_alloc_local.exit

rxrpc_alloc_local.exit:                           ; preds = %do.end33.i, %do.body26.i.rxrpc_alloc_local.exit_crit_edge
  br i1 %tobool.not.i180, label %sock_error.thread, label %if.end33

sock_error.thread:                                ; preds = %rxrpc_alloc_local.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mutex_unlock(ptr noundef %local_mutex) #10
  br label %do.body96

if.end33:                                         ; preds = %rxrpc_alloc_local.exit
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %tuncfg.i) #10
  %75 = getelementptr inbounds i8, ptr %tuncfg.i, i32 4
  %76 = call ptr @memset(ptr %75, i32 0, i32 24)
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %udp_conf.i) #10
  %77 = call ptr @memset(ptr %udp_conf.i, i32 0, i32 48)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %78 = load i32, ptr @rxrpc_debug, align 4
  %and.i183 = and i32 %78, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i183)
  %tobool.not.i184 = icmp eq i32 %and.i183, 0
  br i1 %tobool.not.i184, label %if.end33.do.end8.i_crit_edge, label %do.end.i, !prof !124

if.end33.do.end8.i_crit_edge:                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end8.i

do.end.i:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  %79 = tail call i32 @llvm.read_register.i32(metadata !112) #10
  %and.i.i185 = and i32 %79, -16384
  %80 = inttoptr i32 %and.i.i185 to ptr
  %task.i186 = getelementptr inbounds %struct.thread_info, ptr %80, i32 0, i32 2
  %81 = ptrtoint ptr %task.i186 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %task.i186, align 8
  %comm.i187 = getelementptr inbounds %struct.task_struct, ptr %82, i32 0, i32 101
  %transport_type.i188 = getelementptr inbounds %struct.rxrpc_local, ptr %call7.i.i.i, i32 0, i32 18, i32 2
  %83 = ptrtoint ptr %transport_type.i188 to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %transport_type.i188, align 4
  %conv.i189 = zext i16 %84 to i32
  %transport.i190 = getelementptr inbounds %struct.rxrpc_local, ptr %call7.i.i.i, i32 0, i32 18, i32 4
  %85 = ptrtoint ptr %transport.i190 to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %transport.i190, align 8
  %conv5.i191 = zext i16 %86 to i32
  %call6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef %comm.i187, ptr noundef nonnull @.str.44, ptr noundef nonnull %call7.i.i.i, i32 noundef %conv.i189, i32 noundef %conv5.i191) #13
  br label %do.end8.i

do.end8.i:                                        ; preds = %do.end.i, %if.end33.do.end8.i_crit_edge
  %transport9.i = getelementptr inbounds %struct.rxrpc_local, ptr %call7.i.i.i, i32 0, i32 18, i32 4
  %87 = ptrtoint ptr %transport9.i to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %transport9.i, align 8
  %conv10.i = trunc i16 %88 to i8
  %89 = ptrtoint ptr %udp_conf.i to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %conv10.i, ptr %udp_conf.i, align 4
  %conv10.mask.i = and i16 %88, 255
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %conv10.mask.i)
  %cmp.i = icmp eq i16 %conv10.mask.i, 2
  %90 = getelementptr inbounds %struct.udp_port_cfg, ptr %udp_conf.i, i32 0, i32 1
  br i1 %cmp.i, label %if.then14.i, label %if.else.i

if.then14.i:                                      ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  %sin_addr.i192 = getelementptr inbounds %struct.rxrpc_local, ptr %call7.i.i.i, i32 0, i32 18, i32 4, i32 0, i32 2
  %91 = ptrtoint ptr %sin_addr.i192 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %sin_addr.i192, align 4
  %93 = ptrtoint ptr %90 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %92, ptr %90, align 4
  br label %if.end20.i

if.else.i:                                        ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  %sin6_addr.i193 = getelementptr inbounds %struct.rxrpc_local, ptr %call7.i.i.i, i32 0, i32 18, i32 4, i32 0, i32 3
  %94 = call ptr @memcpy(ptr %90, ptr %sin6_addr.i193, i32 16)
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.else.i, %if.then14.i
  %.sink.in.i = getelementptr inbounds %struct.rxrpc_local, ptr %call7.i.i.i, i32 0, i32 18, i32 4, i32 0, i32 1
  %95 = ptrtoint ptr %.sink.in.i to i32
  call void @__asan_load2_noabort(i32 %95)
  %.sink.i = load i16, ptr %.sink.in.i, align 2
  %96 = getelementptr inbounds %struct.udp_port_cfg, ptr %udp_conf.i, i32 0, i32 3
  %97 = ptrtoint ptr %96 to i32
  call void @__asan_store2_noabort(i32 %97)
  store i16 %.sink.i, ptr %96, align 4
  %socket.i = getelementptr inbounds %struct.rxrpc_local, ptr %call7.i.i.i, i32 0, i32 5
  %98 = zext i8 %conv10.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %98, ptr @__sancov_gen_cov_switch_values.62)
  switch i8 %conv10.i, label %if.end20.i.do.body25.i_crit_edge [
    i8 2, label %if.then.i.i195
    i8 10, label %if.then6.i.i
  ]

if.end20.i.do.body25.i_crit_edge:                 ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body25.i

if.then.i.i195:                                   ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i194 = call i32 @udp_sock_create4(ptr noundef %net, ptr noundef nonnull %udp_conf.i, ptr noundef %socket.i) #10
  br label %udp_sock_create.exit.i

if.then6.i.i:                                     ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #12
  %call7.i.i = call i32 @udp_sock_create6(ptr noundef %net, ptr noundef nonnull %udp_conf.i, ptr noundef %socket.i) #10
  br label %udp_sock_create.exit.i

udp_sock_create.exit.i:                           ; preds = %if.then6.i.i, %if.then.i.i195
  %retval.0.i.i = phi i32 [ %call.i.i194, %if.then.i.i195 ], [ %call7.i.i, %if.then6.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %cmp22.i = icmp slt i32 %retval.0.i.i, 0
  br i1 %cmp22.i, label %udp_sock_create.exit.i.do.body25.i_crit_edge, label %if.end47.i

udp_sock_create.exit.i.do.body25.i_crit_edge:     ; preds = %udp_sock_create.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body25.i

do.body25.i:                                      ; preds = %udp_sock_create.exit.i.do.body25.i_crit_edge, %if.end20.i.do.body25.i_crit_edge
  %retval.0.i109.i = phi i32 [ %retval.0.i.i, %udp_sock_create.exit.i.do.body25.i_crit_edge ], [ -96, %if.end20.i.do.body25.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %99 = load i32, ptr @rxrpc_debug, align 4
  %and26.i = and i32 %99, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.i)
  %tobool27.not.i196 = icmp eq i32 %and26.i, 0
  br i1 %tobool27.not.i196, label %do.body25.i.if.then94_crit_edge, label %do.end37.i, !prof !124

do.body25.i.if.then94_crit_edge:                  ; preds = %do.body25.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then94

do.end37.i:                                       ; preds = %do.body25.i
  call void @__sanitizer_cov_trace_pc() #12
  %100 = call i32 @llvm.read_register.i32(metadata !112) #10
  %and.i105.i = and i32 %100, -16384
  %101 = inttoptr i32 %and.i105.i to ptr
  %task40.i = getelementptr inbounds %struct.thread_info, ptr %101, i32 0, i32 2
  %102 = ptrtoint ptr %task40.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %task40.i, align 8
  %comm41.i = getelementptr inbounds %struct.task_struct, ptr %103, i32 0, i32 101
  %call43.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef %comm41.i, ptr noundef nonnull @.str.44, i32 noundef %retval.0.i109.i) #13
  br label %if.then94

if.end47.i:                                       ; preds = %udp_sock_create.exit.i
  %104 = ptrtoint ptr %75 to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 6, ptr %75, align 4
  %encap_rcv.i = getelementptr inbounds %struct.udp_tunnel_sock_cfg, ptr %tuncfg.i, i32 0, i32 2
  %105 = ptrtoint ptr %encap_rcv.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr @rxrpc_input_packet, ptr %encap_rcv.i, align 4
  %106 = ptrtoint ptr %tuncfg.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %call7.i.i.i, ptr %tuncfg.i, align 4
  %107 = ptrtoint ptr %socket.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %socket.i, align 4
  call void @setup_udp_tunnel_sock(ptr noundef %net, ptr noundef %108, ptr noundef nonnull %tuncfg.i) #10
  %109 = ptrtoint ptr %socket.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %socket.i, align 4
  %sk.i = getelementptr inbounds %struct.socket, ptr %110, i32 0, i32 4
  %111 = ptrtoint ptr %sk.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %sk.i, align 16
  %sk_error_report.i = getelementptr inbounds %struct.sock, ptr %112, i32 0, i32 79
  %113 = ptrtoint ptr %sk_error_report.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr @rxrpc_error_report, ptr %sk_error_report.i, align 8
  %114 = ptrtoint ptr %transport9.i to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %transport9.i, align 8
  %116 = zext i16 %115 to i64
  call void @__sanitizer_cov_trace_switch(i64 %116, ptr @__sancov_gen_cov_switch_values.63)
  switch i16 %115, label %do.body54.i [
    i16 10, label %sw.bb.i197
    i16 2, label %if.end47.i.sw.bb52.i_crit_edge
  ]

if.end47.i.sw.bb52.i_crit_edge:                   ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb52.i

sw.bb.i197:                                       ; preds = %if.end47.i
  call void @lock_sock_nested(ptr noundef %112, i32 noundef 0) #10
  %skc_state.i.i.i.i = getelementptr inbounds %struct.sock_common, ptr %112, i32 0, i32 4
  %117 = ptrtoint ptr %skc_state.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load volatile i8, ptr %skc_state.i.i.i.i, align 2
  %conv.i.i.i.i = zext i8 %118 to i32
  %shl.i.i.i.i = shl nuw i32 1, %conv.i.i.i.i
  %and.i.i.i.i = and i32 %shl.i.i.i.i, -4161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.i.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i, label %sw.bb.i197.ip6_sock_set_recverr.exit.i_crit_edge, label %cond.true.i.i.i

sw.bb.i197.ip6_sock_set_recverr.exit.i_crit_edge: ; preds = %sw.bb.i197
  call void @__sanitizer_cov_trace_pc() #12
  br label %ip6_sock_set_recverr.exit.i

cond.true.i.i.i:                                  ; preds = %sw.bb.i197
  call void @__sanitizer_cov_trace_pc() #12
  %pinet6.i.i.i = getelementptr inbounds %struct.inet_sock, ptr %112, i32 0, i32 1
  %119 = ptrtoint ptr %pinet6.i.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %pinet6.i.i.i, align 8
  br label %ip6_sock_set_recverr.exit.i

ip6_sock_set_recverr.exit.i:                      ; preds = %cond.true.i.i.i, %sw.bb.i197.ip6_sock_set_recverr.exit.i_crit_edge
  %cond.i.i.i = phi ptr [ %120, %cond.true.i.i.i ], [ null, %sw.bb.i197.ip6_sock_set_recverr.exit.i_crit_edge ]
  %recverr.i.i = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i.i.i, i32 0, i32 10
  %121 = ptrtoint ptr %recverr.i.i to i32
  call void @__asan_load2_noabort(i32 %121)
  %bf.load.i.i = load i16, ptr %recverr.i.i, align 2
  %bf.set.i.i = or i16 %bf.load.i.i, -32768
  store i16 %bf.set.i.i, ptr %recverr.i.i, align 2
  call void @release_sock(ptr noundef %112) #10
  br label %sw.bb52.i

sw.bb52.i:                                        ; preds = %ip6_sock_set_recverr.exit.i, %if.end47.i.sw.bb52.i_crit_edge
  call void @ip_sock_set_recverr(ptr noundef %112) #10
  %call53.i198 = call i32 @ip_sock_set_mtu_discover(ptr noundef %112, i32 noundef 2) #10
  call void @sock_enable_timestamps(ptr noundef %112) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %122 = load i32, ptr @rxrpc_debug, align 4
  %and61.i = and i32 %122, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61.i)
  %tobool62.not.i = icmp eq i32 %and61.i, 0
  br i1 %tobool62.not.i, label %sw.bb52.i.if.end38_crit_edge, label %do.end72.i, !prof !124

sw.bb52.i.if.end38_crit_edge:                     ; preds = %sw.bb52.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38

do.body54.i:                                      ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/rxrpc/local_object.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 165, 0\0A.popsection", ""() #10, !srcloc !129
  unreachable

do.end72.i:                                       ; preds = %sw.bb52.i
  call void @__sanitizer_cov_trace_pc() #12
  %123 = call i32 @llvm.read_register.i32(metadata !112) #10
  %and.i106.i = and i32 %123, -16384
  %124 = inttoptr i32 %and.i106.i to ptr
  %task75.i = getelementptr inbounds %struct.thread_info, ptr %124, i32 0, i32 2
  %125 = ptrtoint ptr %task75.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %task75.i, align 8
  %comm76.i = getelementptr inbounds %struct.task_struct, ptr %126, i32 0, i32 101
  %call78.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef %comm76.i, ptr noundef nonnull @.str.44) #13
  br label %if.end38

if.end38:                                         ; preds = %do.end72.i, %sw.bb52.i.if.end38_crit_edge
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %udp_conf.i) #10
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %tuncfg.i) #10
  %link43 = getelementptr inbounds %struct.rxrpc_local, ptr %call7.i.i.i, i32 0, i32 4
  br i1 %cmp.not, label %if.else, label %if.then42

if.then42:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  %127 = ptrtoint ptr %cursor.0225 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %cursor.0225, align 4
  %129 = ptrtoint ptr %link43 to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr %128, ptr %link43, align 4
  %prev.i.i200 = getelementptr inbounds %struct.list_head, ptr %128, i32 0, i32 1
  %130 = ptrtoint ptr %prev.i.i200 to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr %link43, ptr %prev.i.i200, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %cursor.0225, i32 0, i32 1
  %131 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %prev3.i.i, align 4
  %prev4.i.i = getelementptr inbounds %struct.rxrpc_local, ptr %call7.i.i.i, i32 0, i32 4, i32 1
  %133 = ptrtoint ptr %prev4.i.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr %132, ptr %prev4.i.i, align 8
  %134 = ptrtoint ptr %132 to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr %link43, ptr %132, align 4
  store volatile ptr %cursor.0225, ptr %cursor.0225, align 4
  store ptr %cursor.0225, ptr %prev3.i.i, align 4
  br label %found

if.else:                                          ; preds = %if.end38
  %prev.i = getelementptr inbounds %struct.list_head, ptr %cursor.0225, i32 0, i32 1
  %135 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %prev.i, align 4
  %call.i.i201 = call zeroext i1 @__list_add_valid(ptr noundef %link43, ptr noundef %136, ptr noundef %cursor.0225) #10
  br i1 %call.i.i201, label %if.end.i.i, label %if.else.found_crit_edge

if.else.found_crit_edge:                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %found

if.end.i.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %137 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr %link43, ptr %prev.i, align 4
  %138 = ptrtoint ptr %link43 to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr %cursor.0225, ptr %link43, align 4
  %prev3.i.i202 = getelementptr inbounds %struct.rxrpc_local, ptr %call7.i.i.i, i32 0, i32 4, i32 1
  %139 = ptrtoint ptr %prev3.i.i202 to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr %136, ptr %prev3.i.i202, align 8
  %140 = ptrtoint ptr %136 to i32
  call void @__asan_store4_noabort(i32 %140)
  store volatile ptr %link43, ptr %136, align 4
  br label %found

found:                                            ; preds = %if.end.i.i, %if.else.found_crit_edge, %if.then42, %if.end24.found_crit_edge
  %age.0 = phi ptr [ @.str.3, %if.end24.found_crit_edge ], [ @.str.4, %if.then42 ], [ @.str.4, %if.else.found_crit_edge ], [ @.str.4, %if.end.i.i ]
  %local.0 = phi ptr [ %add.ptr.le, %if.end24.found_crit_edge ], [ %call7.i.i.i, %if.then42 ], [ %call7.i.i.i, %if.else.found_crit_edge ], [ %call7.i.i.i, %if.end.i.i ]
  call void @mutex_unlock(ptr noundef %local_mutex) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %141 = load i32, ptr @rxrpc_debug, align 4
  %and47 = and i32 %141, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47)
  %tobool48.not = icmp eq i32 %and47, 0
  br i1 %tobool48.not, label %found.do.body70_crit_edge, label %do.end58, !prof !124

found.do.body70_crit_edge:                        ; preds = %found
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body70

do.end58:                                         ; preds = %found
  call void @__sanitizer_cov_trace_pc() #12
  %142 = call i32 @llvm.read_register.i32(metadata !112) #10
  %and.i203 = and i32 %142, -16384
  %143 = inttoptr i32 %and.i203 to ptr
  %task61 = getelementptr inbounds %struct.thread_info, ptr %143, i32 0, i32 2
  %144 = ptrtoint ptr %task61 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %task61, align 8
  %comm62 = getelementptr inbounds %struct.task_struct, ptr %145, i32 0, i32 101
  %debug_id = getelementptr inbounds %struct.rxrpc_local, ptr %local.0, i32 0, i32 15
  %146 = ptrtoint ptr %debug_id to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %debug_id, align 4
  %transport65 = getelementptr inbounds %struct.rxrpc_local, ptr %local.0, i32 0, i32 18, i32 4
  %call66 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %comm62, ptr noundef nonnull %age.0, i32 noundef %147, ptr noundef %transport65) #13
  br label %do.body70

do.body70:                                        ; preds = %do.end58, %found.do.body70_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %148 = load i32, ptr @rxrpc_debug, align 4
  %and71 = and i32 %148, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71)
  %tobool72.not = icmp eq i32 %and71, 0
  br i1 %tobool72.not, label %do.body70.cleanup_crit_edge, label %do.end82, !prof !124

do.body70.cleanup_crit_edge:                      ; preds = %do.body70
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end82:                                         ; preds = %do.body70
  call void @__sanitizer_cov_trace_pc() #12
  %149 = call i32 @llvm.read_register.i32(metadata !112) #10
  %and.i204 = and i32 %149, -16384
  %150 = inttoptr i32 %and.i204 to ptr
  %task85 = getelementptr inbounds %struct.thread_info, ptr %150, i32 0, i32 2
  %151 = ptrtoint ptr %task85 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %task85, align 8
  %comm86 = getelementptr inbounds %struct.task_struct, ptr %152, i32 0, i32 101
  %call88 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %comm86, ptr noundef nonnull @.str.1, ptr noundef %local.0) #13
  br label %cleanup

if.then94:                                        ; preds = %do.end37.i, %do.body25.i.if.then94_crit_edge
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %udp_conf.i) #10
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %tuncfg.i) #10
  call void @mutex_unlock(ptr noundef %local_mutex) #10
  call void @call_rcu(ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull @rxrpc_local_rcu) #10
  br label %do.body96

do.body96:                                        ; preds = %if.then94, %sock_error.thread
  %ret.0210 = phi i32 [ -12, %sock_error.thread ], [ %retval.0.i109.i, %if.then94 ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %153 = load i32, ptr @rxrpc_debug, align 4
  %and97 = and i32 %153, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and97)
  %tobool98.not = icmp eq i32 %and97, 0
  br i1 %tobool98.not, label %do.body96.do.end117_crit_edge, label %do.end108, !prof !124

do.body96.do.end117_crit_edge:                    ; preds = %do.body96
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end117

do.end108:                                        ; preds = %do.body96
  call void @__sanitizer_cov_trace_pc() #12
  %154 = call i32 @llvm.read_register.i32(metadata !112) #10
  %and.i205 = and i32 %154, -16384
  %155 = inttoptr i32 %and.i205 to ptr
  %task111 = getelementptr inbounds %struct.thread_info, ptr %155, i32 0, i32 2
  %156 = ptrtoint ptr %task111 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %task111, align 8
  %comm112 = getelementptr inbounds %struct.task_struct, ptr %157, i32 0, i32 101
  %call114 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %comm112, ptr noundef nonnull @.str.1, i32 noundef %ret.0210) #13
  br label %do.end117

do.end117:                                        ; preds = %do.end108, %do.body96.do.end117_crit_edge
  %158 = inttoptr i32 %ret.0210 to ptr
  br label %cleanup

do.end132:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #12
  %159 = tail call i32 @llvm.read_register.i32(metadata !112) #10
  %and.i206 = and i32 %159, -16384
  %160 = inttoptr i32 %and.i206 to ptr
  %task135 = getelementptr inbounds %struct.thread_info, ptr %160, i32 0, i32 2
  %161 = ptrtoint ptr %task135 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %task135, align 8
  %comm136 = getelementptr inbounds %struct.task_struct, ptr %162, i32 0, i32 101
  %call138 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %comm136, ptr noundef nonnull @.str.1) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end132, %do.end117, %do.end82, %do.body70.cleanup_crit_edge, %if.then23.cleanup_crit_edge
  %retval.0 = phi ptr [ %158, %do.end117 ], [ %local.0, %do.end82 ], [ %local.0, %do.body70.cleanup_crit_edge ], [ inttoptr (i32 -98 to ptr), %do.end132 ], [ inttoptr (i32 -98 to ptr), %if.then23.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @rxrpc_use_local(ptr noundef %local) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call ptr @llvm.returnaddress(i32 0) #10
  %tobool.not.i = icmp eq ptr %local, null
  br i1 %tobool.not.i, label %entry.return_crit_edge, label %if.then.i

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.then.i:                                        ; preds = %entry
  %usage.i = getelementptr inbounds %struct.rxrpc_local, ptr %local, i32 0, i32 2
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !130
  tail call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #10
  %1 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 0, i32 1, ptr elementtype(i32) %usage.i) #10, !srcloc !131
  %asmresult.i.i.i = extractvalue { i32, i32, i32 } %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.not.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %if.then.i.return_crit_edge, label %atomic_fetch_add_unless.exit.i

if.then.i.return_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

atomic_fetch_add_unless.exit.i:                   ; preds = %if.then.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !132
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i = icmp sgt i32 %asmresult.i.i.i, 0
  br i1 %cmp.i, label %if.end, label %atomic_fetch_add_unless.exit.i.return_crit_edge

atomic_fetch_add_unless.exit.i.return_crit_edge:  ; preds = %atomic_fetch_add_unless.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %atomic_fetch_add_unless.exit.i
  %debug_id.i = getelementptr inbounds %struct.rxrpc_local, ptr %local, i32 0, i32 15
  %2 = ptrtoint ptr %debug_id.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %debug_id.i, align 4
  %add.i = add nuw i32 %asmresult.i.i.i, 1
  tail call fastcc void @trace_rxrpc_local(i32 noundef %3, i32 noundef 0, i32 noundef %add.i, ptr noundef %0) #10
  %active_users.i = getelementptr inbounds %struct.rxrpc_local, ptr %local, i32 0, i32 1
  %call.i.i.i8 = tail call zeroext i1 @__kasan_check_write(ptr noundef %active_users.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !130
  tail call void @llvm.prefetch.p0(ptr %active_users.i, i32 1, i32 3, i32 1) #10
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %active_users.i, ptr %active_users.i, i32 0, i32 1, ptr elementtype(i32) %active_users.i) #10, !srcloc !131
  %asmresult.i.i.i9 = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i9)
  %cmp.not.i.i.i10 = icmp eq i32 %asmresult.i.i.i9, 0
  br i1 %cmp.not.i.i.i10, label %if.then.i17, label %__rxrpc_use_local.exit.thread

__rxrpc_use_local.exit.thread:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !132
  br label %return

if.then.i17:                                      ; preds = %if.end
  %5 = ptrtoint ptr %debug_id.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %debug_id.i, align 4
  %call.i.i.i15 = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !133
  tail call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #10
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #10, !srcloc !134
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %7, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !135
  tail call fastcc void @trace_rxrpc_local(i32 noundef %6, i32 noundef 3, i32 noundef %asmresult.i.i.i.i.i, ptr noundef %0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i16 = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i16, label %if.then2.i, label %if.then.i17.return_crit_edge

if.then.i17.return_crit_edge:                     ; preds = %if.then.i17
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.then2.i:                                       ; preds = %if.then.i17
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @call_rcu(ptr noundef nonnull %local, ptr noundef nonnull @rxrpc_local_rcu) #10
  br label %return

return:                                           ; preds = %if.then2.i, %if.then.i17.return_crit_edge, %__rxrpc_use_local.exit.thread, %atomic_fetch_add_unless.exit.i.return_crit_edge, %if.then.i.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi ptr [ %local, %__rxrpc_use_local.exit.thread ], [ null, %if.then.i17.return_crit_edge ], [ null, %if.then2.i ], [ null, %entry.return_crit_edge ], [ null, %atomic_fetch_add_unless.exit.i.return_crit_edge ], [ null, %if.then.i.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rxrpc_local_rcu(ptr noundef %rcu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %0 = load i32, ptr @rxrpc_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.body8_crit_edge, label %do.end, !prof !124

entry.do.body8_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body8

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %1 = tail call i32 @llvm.read_register.i32(metadata !112) #10
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 101
  %debug_id = getelementptr inbounds %struct.rxrpc_local, ptr %rcu, i32 0, i32 15
  %5 = ptrtoint ptr %debug_id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %debug_id, align 4
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef %comm, ptr noundef nonnull @.str.53, i32 noundef %6) #13
  br label %do.body8

do.body8:                                         ; preds = %do.end, %entry.do.body8_crit_edge
  %processor = getelementptr inbounds %struct.rxrpc_local, ptr %rcu, i32 0, i32 6
  %7 = ptrtoint ptr %processor to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %processor, align 4
  %and1.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool10.not = icmp eq i32 %and1.i, 0
  br i1 %tobool10.not, label %do.body36, label %do.end24, !prof !124

do.end24:                                         ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #12
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40) #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/rxrpc/local_object.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 440, 0\0A.popsection", ""() #10, !srcloc !136
  unreachable

do.body36:                                        ; preds = %do.body8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %9 = load i32, ptr @rxrpc_debug, align 4
  %and37 = and i32 %9, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %do.body36.do.end58_crit_edge, label %do.end48, !prof !124

do.body36.do.end58_crit_edge:                     ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end58

do.end48:                                         ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #12
  %10 = tail call i32 @llvm.read_register.i32(metadata !112) #10
  %and.i84 = and i32 %10, -16384
  %11 = inttoptr i32 %and.i84 to ptr
  %task51 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %task51 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %task51, align 8
  %comm52 = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 101
  %debug_id54 = getelementptr inbounds %struct.rxrpc_local, ptr %rcu, i32 0, i32 15
  %14 = ptrtoint ptr %debug_id54 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %debug_id54, align 4
  %call55 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef %comm52, i32 noundef %15) #13
  br label %do.end58

do.end58:                                         ; preds = %do.end48, %do.body36.do.end58_crit_edge
  tail call void @kfree(ptr noundef %rcu) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %16 = load i32, ptr @rxrpc_debug, align 4
  %and60 = and i32 %16, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60)
  %tobool61.not = icmp eq i32 %and60, 0
  br i1 %tobool61.not, label %do.end58.do.end80_crit_edge, label %do.end71, !prof !124

do.end58.do.end80_crit_edge:                      ; preds = %do.end58
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end80

do.end71:                                         ; preds = %do.end58
  call void @__sanitizer_cov_trace_pc() #12
  %17 = tail call i32 @llvm.read_register.i32(metadata !112) #10
  %and.i85 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i85 to ptr
  %task74 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %task74 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %task74, align 8
  %comm75 = getelementptr inbounds %struct.task_struct, ptr %20, i32 0, i32 101
  %call77 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef %comm75, ptr noundef nonnull @.str.53) #13
  br label %do.end80

do.end80:                                         ; preds = %do.end71, %do.end58.do.end80_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @rxrpc_get_local(ptr noundef returned %local) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call ptr @llvm.returnaddress(i32 0)
  %usage = getelementptr inbounds %struct.rxrpc_local, ptr %local, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !126
  tail call void @llvm.prefetch.p0(ptr %usage, i32 1, i32 3, i32 1) #10
  %1 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage, ptr %usage, i32 1, ptr elementtype(i32) %usage) #10, !srcloc !127
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %1, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !128
  %debug_id = getelementptr inbounds %struct.rxrpc_local, ptr %local, i32 0, i32 15
  %2 = ptrtoint ptr %debug_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %debug_id, align 4
  tail call fastcc void @trace_rxrpc_local(i32 noundef %3, i32 noundef 0, i32 noundef %asmresult.i.i.i.i, ptr noundef %0)
  ret ptr %local
}

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_rxrpc_local(i32 noundef %local_debug_id, i32 noundef %op, i32 noundef %usage, ptr noundef %where) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rxrpc_local, i32 0, i32 1), ptr blockaddress(@trace_rxrpc_local, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !137

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !112) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !124

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.52, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !112) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !138
  %call42 = tail call i32 @__traceiter_rxrpc_local(ptr noundef null, i32 noundef %local_debug_id, i32 noundef %op, i32 noundef %usage, ptr noundef %where) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !139
  %13 = tail call i32 @llvm.read_register.i32(metadata !112) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !112) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !124

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.52, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !112) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !140
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rxrpc_local, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rxrpc_local, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_rxrpc_local.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_rxrpc_local.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.51, i32 noundef 507, ptr noundef nonnull @.str.23) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !141
  %31 = tail call i32 @llvm.read_register.i32(metadata !112) #10
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @rxrpc_get_local_maybe(ptr noundef %local) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call ptr @llvm.returnaddress(i32 0)
  %tobool.not = icmp eq ptr %local, null
  br i1 %tobool.not, label %entry.if.end2_crit_edge, label %if.then

entry.if.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end2

if.then:                                          ; preds = %entry
  %usage = getelementptr inbounds %struct.rxrpc_local, ptr %local, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !130
  tail call void @llvm.prefetch.p0(ptr %usage, i32 1, i32 3, i32 1) #10
  %1 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage, ptr %usage, i32 0, i32 1, ptr elementtype(i32) %usage) #10, !srcloc !131
  %asmresult.i.i = extractvalue { i32, i32, i32 } %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.not.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.not.i.i, label %if.then.if.end2_crit_edge, label %atomic_fetch_add_unless.exit

if.then.if.end2_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end2

atomic_fetch_add_unless.exit:                     ; preds = %if.then
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !132
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp = icmp sgt i32 %asmresult.i.i, 0
  br i1 %cmp, label %if.then1, label %atomic_fetch_add_unless.exit.if.end2_crit_edge

atomic_fetch_add_unless.exit.if.end2_crit_edge:   ; preds = %atomic_fetch_add_unless.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end2

if.then1:                                         ; preds = %atomic_fetch_add_unless.exit
  call void @__sanitizer_cov_trace_pc() #12
  %debug_id = getelementptr inbounds %struct.rxrpc_local, ptr %local, i32 0, i32 15
  %2 = ptrtoint ptr %debug_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %debug_id, align 4
  %add = add nuw i32 %asmresult.i.i, 1
  tail call fastcc void @trace_rxrpc_local(i32 noundef %3, i32 noundef 0, i32 noundef %add, ptr noundef %0)
  br label %if.end2

if.end2:                                          ; preds = %if.then1, %atomic_fetch_add_unless.exit.if.end2_crit_edge, %if.then.if.end2_crit_edge, %entry.if.end2_crit_edge
  %local.addr.1 = phi ptr [ null, %entry.if.end2_crit_edge ], [ %local, %if.then1 ], [ null, %atomic_fetch_add_unless.exit.if.end2_crit_edge ], [ null, %if.then.if.end2_crit_edge ]
  ret ptr %local.addr.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rxrpc_queue_local(ptr noundef %local) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %debug_id1 = getelementptr inbounds %struct.rxrpc_local, ptr %local, i32 0, i32 15
  %0 = ptrtoint ptr %debug_id1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %debug_id1, align 4
  %usage = getelementptr inbounds %struct.rxrpc_local, ptr %local, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %usage, i32 noundef 4) #10
  %2 = ptrtoint ptr %usage to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %usage, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_workqueue to i32))
  %4 = load ptr, ptr @rxrpc_workqueue, align 4
  %processor = getelementptr inbounds %struct.rxrpc_local, ptr %local, i32 0, i32 6
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %4, ptr noundef %processor) #10
  br i1 %call.i, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %5 = tail call ptr @llvm.returnaddress(i32 0)
  tail call fastcc void @trace_rxrpc_local(i32 noundef %1, i32 noundef 4, i32 noundef %3, ptr noundef %5)
  br label %if.end

if.else:                                          ; preds = %entry
  %tobool.not.i = icmp eq ptr %local, null
  br i1 %tobool.not.i, label %if.else.if.end_crit_edge, label %if.then.i

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then.i:                                        ; preds = %if.else
  %6 = tail call ptr @llvm.returnaddress(i32 0) #10
  %7 = ptrtoint ptr %debug_id1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %debug_id1, align 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !133
  tail call void @llvm.prefetch.p0(ptr %usage, i32 1, i32 3, i32 1) #10
  %9 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage, ptr %usage, i32 1, ptr elementtype(i32) %usage) #10, !srcloc !134
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %9, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !135
  tail call fastcc void @trace_rxrpc_local(i32 noundef %8, i32 noundef 3, i32 noundef %asmresult.i.i.i.i.i, ptr noundef %6) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i, label %if.then2.i, label %if.then.i.if.end_crit_edge

if.then.i.if.end_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then2.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @call_rcu(ptr noundef nonnull %local, ptr noundef nonnull @rxrpc_local_rcu) #10
  br label %if.end

if.end:                                           ; preds = %if.then2.i, %if.then.i.if.end_crit_edge, %if.else.if.end_crit_edge, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rxrpc_put_local(ptr noundef %local) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %local, null
  br i1 %tobool.not, label %entry.if.end3_crit_edge, label %if.then

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3

if.then:                                          ; preds = %entry
  %0 = tail call ptr @llvm.returnaddress(i32 0)
  %debug_id1 = getelementptr inbounds %struct.rxrpc_local, ptr %local, i32 0, i32 15
  %1 = ptrtoint ptr %debug_id1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %debug_id1, align 4
  %usage = getelementptr inbounds %struct.rxrpc_local, ptr %local, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !133
  tail call void @llvm.prefetch.p0(ptr %usage, i32 1, i32 3, i32 1) #10
  %3 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage, ptr %usage, i32 1, ptr elementtype(i32) %usage) #10, !srcloc !134
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %3, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !135
  tail call fastcc void @trace_rxrpc_local(i32 noundef %2, i32 noundef 3, i32 noundef %asmresult.i.i.i.i, ptr noundef %0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp, label %if.then2, label %if.then.if.end3_crit_edge

if.then.if.end3_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @call_rcu(ptr noundef nonnull %local, ptr noundef nonnull @rxrpc_local_rcu) #10
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.then.if.end3_crit_edge, %entry.if.end3_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rxrpc_unuse_local(ptr noundef %local) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %local, null
  br i1 %tobool.not, label %entry.if.end3_crit_edge, label %if.then

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3

if.then:                                          ; preds = %entry
  %active_users.i = getelementptr inbounds %struct.rxrpc_local, ptr %local, i32 0, i32 1
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %active_users.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !133
  tail call void @llvm.prefetch.p0(ptr %active_users.i, i32 1, i32 3, i32 1) #10
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %active_users.i, ptr %active_users.i, i32 1, ptr elementtype(i32) %active_users.i) #10, !srcloc !134
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %0, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !135
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i, label %if.then1, label %if.then.if.end3_crit_edge

if.then.if.end3_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3

if.then1:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %1 = tail call ptr @llvm.returnaddress(i32 0) #10
  %usage.i = getelementptr inbounds %struct.rxrpc_local, ptr %local, i32 0, i32 2
  %call.i.i.i7 = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !126
  tail call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #10
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #10, !srcloc !127
  %asmresult.i.i.i.i.i8 = extractvalue { i32, i32 } %2, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !128
  %debug_id.i = getelementptr inbounds %struct.rxrpc_local, ptr %local, i32 0, i32 15
  %3 = ptrtoint ptr %debug_id.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %debug_id.i, align 4
  tail call fastcc void @trace_rxrpc_local(i32 noundef %4, i32 noundef 0, i32 noundef %asmresult.i.i.i.i.i8, ptr noundef %1) #10
  tail call void @rxrpc_queue_local(ptr noundef nonnull %local)
  br label %if.end3

if.end3:                                          ; preds = %if.then1, %if.then.if.end3_crit_edge, %entry.if.end3_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rxrpc_destroy_all_locals(ptr noundef %rxnet) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %0 = load i32, ptr @rxrpc_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end6_crit_edge, label %do.end, !prof !124

entry.do.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %1 = tail call i32 @llvm.read_register.i32(metadata !112) #10
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 101
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %comm, ptr noundef nonnull @.str.18) #13
  br label %do.end6

do.end6:                                          ; preds = %do.end, %entry.do.end6_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_workqueue to i32))
  %5 = load ptr, ptr @rxrpc_workqueue, align 4
  tail call void @flush_workqueue(ptr noundef %5) #10
  %local_endpoints = getelementptr inbounds %struct.rxrpc_net, ptr %rxnet, i32 0, i32 19
  %6 = ptrtoint ptr %local_endpoints to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %local_endpoints, align 4
  %cmp.i.not = icmp eq ptr %7, %local_endpoints
  br i1 %cmp.i.not, label %if.end33, label %if.then9

if.then9:                                         ; preds = %do.end6
  %local_mutex = getelementptr inbounds %struct.rxrpc_net, ptr %rxnet, i32 0, i32 20
  tail call void @mutex_lock_nested(ptr noundef %local_mutex, i32 noundef 0) #10
  %8 = ptrtoint ptr %local_endpoints to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn41 = load ptr, ptr %local_endpoints, align 4
  %cmp.not42 = icmp eq ptr %.pn41, %local_endpoints
  br i1 %cmp.not42, label %if.then9.for.end_crit_edge, label %if.then9.do.end17_crit_edge

if.then9.do.end17_crit_edge:                      ; preds = %if.then9
  br label %do.end17

if.then9.for.end_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

do.end17:                                         ; preds = %do.end17.do.end17_crit_edge, %if.then9.do.end17_crit_edge
  %.pn43 = phi ptr [ %.pn, %do.end17.do.end17_crit_edge ], [ %.pn41, %if.then9.do.end17_crit_edge ]
  %local.0 = getelementptr i8, ptr %.pn43, i32 -20
  %usage = getelementptr i8, ptr %.pn43, i32 -8
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %usage, i32 noundef 4) #10
  %9 = ptrtoint ptr %usage to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %usage, align 4
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef %local.0, i32 noundef %10) #13
  %11 = ptrtoint ptr %.pn43 to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn = load ptr, ptr %.pn43, align 4
  %cmp.not = icmp eq ptr %.pn, %local_endpoints
  br i1 %cmp.not, label %do.end17.for.end_crit_edge, label %do.end17.do.end17_crit_edge

do.end17.do.end17_crit_edge:                      ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end17

do.end17.for.end_crit_edge:                       ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %do.end17.for.end_crit_edge, %if.then9.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %local_mutex) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/rxrpc/local_object.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 465, 0\0A.popsection", ""() #10, !srcloc !142
  unreachable

if.end33:                                         ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_workqueue(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @memcmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rxrpc_local_processor(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -32
  %debug_id = getelementptr i8, ptr %work, i32 392
  %0 = ptrtoint ptr %debug_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %debug_id, align 4
  %usage = getelementptr i8, ptr %work, i32 -20
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %usage, i32 noundef 4) #10
  %2 = ptrtoint ptr %usage to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %usage, align 4
  tail call fastcc void @trace_rxrpc_local(i32 noundef %1, i32 noundef 2, i32 noundef %3, ptr noundef null)
  %active_users.i = getelementptr i8, ptr %work, i32 -24
  %call.i.i.i36 = tail call zeroext i1 @__kasan_check_write(ptr noundef %active_users.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !130
  tail call void @llvm.prefetch.p0(ptr %active_users.i, i32 1, i32 3, i32 1) #10
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %active_users.i, ptr %active_users.i, i32 0, i32 1, ptr elementtype(i32) %active_users.i) #10, !srcloc !131
  %asmresult.i.i.i37 = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i37)
  %cmp.not.i.i.i38 = icmp eq i32 %asmresult.i.i.i37, 0
  br i1 %cmp.not.i.i.i38, label %entry.if.then_crit_edge, label %if.end.lr.ph

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.end.lr.ph:                                     ; preds = %entry
  %reject_queue = getelementptr i8, ptr %work, i32 144
  %event_queue = getelementptr i8, ptr %work, i32 200
  br label %if.end

if.then:                                          ; preds = %do.body.backedge.if.then_crit_edge, %entry.if.then_crit_edge
  %socket1.i = getelementptr i8, ptr %work, i32 -4
  %5 = ptrtoint ptr %socket1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %socket1.i, align 4
  %rxnet2.i = getelementptr i8, ptr %work, i32 -16
  %7 = ptrtoint ptr %rxnet2.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rxnet2.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %9 = load i32, ptr @rxrpc_debug, align 4
  %and.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.do.end8.i_crit_edge, label %do.end.i, !prof !124

if.then.do.end8.i_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end8.i

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %10 = tail call i32 @llvm.read_register.i32(metadata !112) #10
  %and.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %task.i, align 8
  %comm.i = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 101
  %14 = ptrtoint ptr %debug_id to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %debug_id, align 4
  %call6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef %comm.i, ptr noundef nonnull @.str.38, i32 noundef %15) #13
  br label %do.end8.i

do.end8.i:                                        ; preds = %do.end.i, %if.then.do.end8.i_crit_edge
  %dead.i = getelementptr i8, ptr %work, i32 396
  %16 = ptrtoint ptr %dead.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %dead.i, align 4
  %local_mutex.i = getelementptr inbounds %struct.rxrpc_net, ptr %8, i32 0, i32 20
  tail call void @mutex_lock_nested(ptr noundef %local_mutex.i, i32 noundef 0) #10
  %link.i = getelementptr i8, ptr %work, i32 -12
  %call.i.i.i20 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %link.i) #10
  br i1 %call.i.i.i20, label %if.end.i.i.i, label %do.end8.i.list_del_init.exit.i_crit_edge

do.end8.i.list_del_init.exit.i_crit_edge:         ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i = getelementptr i8, ptr %work, i32 -8
  %17 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev.i.i.i, align 4
  %19 = ptrtoint ptr %link.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %link.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev1.i.i.i.i, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %20, ptr %18, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %do.end8.i.list_del_init.exit.i_crit_edge
  %23 = ptrtoint ptr %link.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %link.i, ptr %link.i, align 4
  %prev.i3.i.i = getelementptr i8, ptr %work, i32 -8
  %24 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %link.i, ptr %prev.i3.i.i, align 4
  tail call void @mutex_unlock(ptr noundef %local_mutex.i) #10
  tail call void @rxrpc_clean_up_local_conns(ptr noundef %add.ptr) #10
  %service_conn_reaper.i = getelementptr inbounds %struct.rxrpc_net, ptr %8, i32 0, i32 9
  tail call void @rxrpc_service_connection_reaper(ptr noundef %service_conn_reaper.i) #10
  %service.i = getelementptr i8, ptr %work, i32 44
  %25 = ptrtoint ptr %service.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %service.i, align 4
  %tobool11.not.i = icmp eq ptr %26, null
  br i1 %tobool11.not.i, label %do.end36.i, label %do.end25.i, !prof !124

do.end25.i:                                       ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %call27.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40) #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/rxrpc/local_object.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 379, 0\0A.popsection", ""() #10, !srcloc !143
  unreachable

do.end36.i:                                       ; preds = %list_del_init.exit.i
  %tobool37.not.i = icmp eq ptr %6, null
  br i1 %tobool37.not.i, label %do.end36.i.rxrpc_local_destroyer.exit_crit_edge, label %if.then38.i

do.end36.i.rxrpc_local_destroyer.exit_crit_edge:  ; preds = %do.end36.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rxrpc_local_destroyer.exit

if.then38.i:                                      ; preds = %do.end36.i
  call void @__sanitizer_cov_trace_pc() #12
  %27 = ptrtoint ptr %socket1.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %socket1.i, align 4
  %call40.i = tail call i32 @kernel_sock_shutdown(ptr noundef nonnull %6, i32 noundef 2) #10
  %sk.i = getelementptr inbounds %struct.socket, ptr %6, i32 0, i32 4
  %28 = ptrtoint ptr %sk.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %sk.i, align 16
  %sk_user_data.i = getelementptr inbounds %struct.sock, ptr %29, i32 0, i32 72
  %30 = ptrtoint ptr %sk_user_data.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %sk_user_data.i, align 4
  tail call void @sock_release(ptr noundef nonnull %6) #10
  br label %rxrpc_local_destroyer.exit

rxrpc_local_destroyer.exit:                       ; preds = %if.then38.i, %do.end36.i.rxrpc_local_destroyer.exit_crit_edge
  %reject_queue.i = getelementptr i8, ptr %work, i32 144
  tail call void @rxrpc_purge_queue(ptr noundef %reject_queue.i) #10
  %event_queue.i = getelementptr i8, ptr %work, i32 200
  tail call void @rxrpc_purge_queue(ptr noundef %event_queue.i) #10
  br label %do.end

if.end:                                           ; preds = %do.body.backedge.if.end_crit_edge, %if.end.lr.ph
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !132
  %31 = ptrtoint ptr %reject_queue to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %reject_queue, align 4
  %cmp.i21.not = icmp eq ptr %32, %reject_queue
  br i1 %cmp.i21.not, label %if.end.if.end4_crit_edge, label %if.then3

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @rxrpc_reject_packets(ptr noundef %add.ptr) #10
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  %33 = ptrtoint ptr %event_queue to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %event_queue, align 4
  %cmp.i22.not = icmp eq ptr %34, %event_queue
  br i1 %cmp.i22.not, label %if.end8, label %if.then7

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @rxrpc_process_local_events(ptr noundef %add.ptr) #10
  %call.i.i.i25 = tail call zeroext i1 @__kasan_check_write(ptr noundef %active_users.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !133
  tail call void @llvm.prefetch.p0(ptr %active_users.i, i32 1, i32 3, i32 1) #10
  %35 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %active_users.i, ptr %active_users.i, i32 1, ptr elementtype(i32) %active_users.i) #10, !srcloc !134
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !135
  br label %do.body.backedge

if.end8:                                          ; preds = %if.end4
  %call.i.i.i28 = tail call zeroext i1 @__kasan_check_write(ptr noundef %active_users.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !133
  tail call void @llvm.prefetch.p0(ptr %active_users.i, i32 1, i32 3, i32 1) #10
  %36 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %active_users.i, ptr %active_users.i, i32 1, ptr elementtype(i32) %active_users.i) #10, !srcloc !134
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !135
  br i1 %cmp.i21.not, label %if.end8.do.end_crit_edge, label %if.end8.do.body.backedge_crit_edge

if.end8.do.body.backedge_crit_edge:               ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.backedge

if.end8.do.end_crit_edge:                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.body.backedge:                                 ; preds = %if.end8.do.body.backedge_crit_edge, %if.then7
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %active_users.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !130
  tail call void @llvm.prefetch.p0(ptr %active_users.i, i32 1, i32 3, i32 1) #10
  %37 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %active_users.i, ptr %active_users.i, i32 0, i32 1, ptr elementtype(i32) %active_users.i) #10, !srcloc !131
  %asmresult.i.i.i = extractvalue { i32, i32, i32 } %37, 0
  %cmp.not.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %do.body.backedge.if.then_crit_edge, label %do.body.backedge.if.end_crit_edge

do.body.backedge.if.end_crit_edge:                ; preds = %do.body.backedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.body.backedge.if.then_crit_edge:               ; preds = %do.body.backedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

do.end:                                           ; preds = %if.end8.do.end_crit_edge, %rxrpc_local_destroyer.exit
  %tobool.not.i31 = icmp eq ptr %add.ptr, null
  br i1 %tobool.not.i31, label %do.end.rxrpc_put_local.exit_crit_edge, label %if.then.i

do.end.rxrpc_put_local.exit_crit_edge:            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %rxrpc_put_local.exit

if.then.i:                                        ; preds = %do.end
  %38 = tail call ptr @llvm.returnaddress(i32 0) #10
  %39 = ptrtoint ptr %debug_id to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %debug_id, align 4
  %call.i.i.i32 = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !133
  tail call void @llvm.prefetch.p0(ptr %usage, i32 1, i32 3, i32 1) #10
  %41 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage, ptr %usage, i32 1, ptr elementtype(i32) %usage) #10, !srcloc !134
  %asmresult.i.i.i.i.i33 = extractvalue { i32, i32 } %41, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !135
  tail call fastcc void @trace_rxrpc_local(i32 noundef %40, i32 noundef 3, i32 noundef %asmresult.i.i.i.i.i33, ptr noundef %38) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i33)
  %cmp.i34 = icmp eq i32 %asmresult.i.i.i.i.i33, 0
  br i1 %cmp.i34, label %if.then2.i, label %if.then.i.rxrpc_put_local.exit_crit_edge

if.then.i.rxrpc_put_local.exit_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rxrpc_put_local.exit

if.then2.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @call_rcu(ptr noundef nonnull %add.ptr, ptr noundef nonnull @rxrpc_local_rcu) #10
  br label %rxrpc_put_local.exit

rxrpc_put_local.exit:                             ; preds = %if.then2.i, %if.then.i.rxrpc_put_local.exit_crit_edge, %do.end.rxrpc_put_local.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_rwsem(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__rwlock_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rxrpc_reject_packets(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rxrpc_process_local_events(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rxrpc_clean_up_local_conns(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rxrpc_service_connection_reaper(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_sock_shutdown(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_release(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rxrpc_purge_queue(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rxrpc_input_packet(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @setup_udp_tunnel_sock(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rxrpc_error_report(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip_sock_set_recverr(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_sock_set_mtu_discover(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_enable_timestamps(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @udp_sock_create4(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @udp_sock_create6(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_sock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_sock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rxrpc_local(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 59)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 59)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nobuiltin nounwind }
attributes #15 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !12, !13, !14, !16, !17, !18, !20, !21, !22, !24, !25, !26, !28, !29, !30, !31, !33, !34, !35, !37, !38, !39, !41, !42, !43, !45, !46, !48, !49, !51, !52, !54, !55, !57, !58, !60, !61, !63, !64, !65, !67, !68, !69, !70, !72, !73, !74, !76, !77, !79, !80, !81, !82, !84, !85, !86, !88, !89, !90, !92, !93, !94, !96, !97, !99, !100, !101, !103, !104, !106, !107, !108, !110, !111}
!llvm.named.register.sp = !{!112}
!llvm.module.flags = !{!113, !114, !115, !116, !117, !118, !119, !120}
!llvm.ident = !{!121}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/rxrpc/local_object.c", i32 185, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @rxrpc_lookup_local._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @rxrpc_lookup_local._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../net/rxrpc/local_object.c", i32 218, i32 9}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../net/rxrpc/local_object.c", i32 234, i32 8}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../net/rxrpc/local_object.c", i32 239, i32 2}
!12 = !{ptr @rxrpc_lookup_local._entry.5, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @rxrpc_lookup_local._entry_ptr.7, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../net/rxrpc/local_object.c", i32 242, i32 2}
!16 = !{ptr @rxrpc_lookup_local._entry.8, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @rxrpc_lookup_local._entry_ptr.10, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.12, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../net/rxrpc/local_object.c", i32 251, i32 2}
!20 = !{ptr @rxrpc_lookup_local._entry.11, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @rxrpc_lookup_local._entry_ptr.13, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.15, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../net/rxrpc/local_object.c", i32 256, i32 2}
!24 = !{ptr @rxrpc_lookup_local._entry.14, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @rxrpc_lookup_local._entry_ptr.16, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.17, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../net/rxrpc/local_object.c", i32 454, i32 2}
!28 = !{ptr @.str.18, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @rxrpc_destroy_all_locals._entry, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @rxrpc_destroy_all_locals._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.20, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../net/rxrpc/local_object.c", i32 461, i32 4}
!33 = !{ptr @rxrpc_destroy_all_locals._entry.19, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @rxrpc_destroy_all_locals._entry_ptr.21, !32, !"_entry_ptr", i1 false, i1 false}
!35 = distinct !{null, !36, !"__warned", i1 false, i1 false}
!36 = !{!"../include/net/netns/generic.h", i32 45, i32 7}
!37 = !{ptr @.str.22, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.23, !36, !"<string literal>", i1 false, i1 false}
!39 = distinct !{null, !40, !"__warned", i1 false, i1 false}
!40 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!41 = !{ptr @.str.24, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.25, !40, !"<string literal>", i1 false, i1 false}
!43 = distinct !{null, !44, !"__warned", i1 false, i1 false}
!44 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!45 = !{ptr @.str.26, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @rxrpc_alloc_local.__key, !47, !"__key", i1 false, i1 false}
!47 = !{!"../net/rxrpc/local_object.c", i32 86, i32 3}
!48 = !{ptr @.str.27, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @rxrpc_alloc_local.__key.28, !50, !"__key", i1 false, i1 false}
!50 = !{!"../net/rxrpc/local_object.c", i32 87, i32 3}
!51 = !{ptr @.str.29, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @rxrpc_alloc_local.__key.30, !53, !"__key", i1 false, i1 false}
!53 = !{!"../net/rxrpc/local_object.c", i32 91, i32 3}
!54 = !{ptr @.str.31, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @rxrpc_alloc_local.__key.32, !56, !"__key", i1 false, i1 false}
!56 = !{!"../net/rxrpc/local_object.c", i32 92, i32 3}
!57 = !{ptr @.str.33, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @rxrpc_alloc_local.__key.34, !59, !"__key", i1 false, i1 false}
!59 = !{!"../net/rxrpc/local_object.c", i32 93, i32 3}
!60 = !{ptr @.str.35, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.36, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../net/rxrpc/local_object.c", i32 100, i32 2}
!63 = !{ptr @rxrpc_alloc_local._entry, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @rxrpc_alloc_local._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.37, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../net/rxrpc/local_object.c", i32 369, i32 2}
!67 = !{ptr @.str.38, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @rxrpc_local_destroyer._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @rxrpc_local_destroyer._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.40, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../net/rxrpc/local_object.c", i32 379, i32 2}
!72 = !{ptr @rxrpc_local_destroyer._entry.39, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @rxrpc_local_destroyer._entry_ptr.41, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @skb_queue_head_init.__key, !75, !"__key", i1 false, i1 false}
!75 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!76 = !{ptr @.str.42, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @.str.43, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../net/rxrpc/local_object.c", i32 116, i32 2}
!79 = !{ptr @.str.44, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @rxrpc_open_socket._entry, !78, !"_entry", i1 false, i1 false}
!81 = !{ptr @rxrpc_open_socket._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.46, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../net/rxrpc/local_object.c", i32 131, i32 3}
!84 = !{ptr @rxrpc_open_socket._entry.45, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @rxrpc_open_socket._entry_ptr.47, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.49, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../net/rxrpc/local_object.c", i32 168, i32 2}
!88 = !{ptr @rxrpc_open_socket._entry.48, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @rxrpc_open_socket._entry_ptr.50, !87, !"_entry_ptr", i1 false, i1 false}
!90 = distinct !{null, !91, !"__already_done", i1 false, i1 false}
!91 = !{!"../include/trace/events/rxrpc.h", i32 482, i32 1}
!92 = !{ptr @.str.51, !91, !"<string literal>", i1 false, i1 false}
!93 = distinct !{null, !91, !"__warned", i1 false, i1 false}
!94 = distinct !{null, !95, !"__already_done", i1 false, i1 false}
!95 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!96 = !{ptr @.str.52, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @.str.53, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../net/rxrpc/local_object.c", i32 438, i32 2}
!99 = !{ptr @rxrpc_local_rcu._entry, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @rxrpc_local_rcu._entry_ptr, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @rxrpc_local_rcu._entry.54, !102, !"_entry", i1 false, i1 false}
!102 = !{!"../net/rxrpc/local_object.c", i32 440, i32 2}
!103 = !{ptr @rxrpc_local_rcu._entry_ptr.55, !102, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.57, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../net/rxrpc/local_object.c", i32 442, i32 2}
!106 = !{ptr @rxrpc_local_rcu._entry.56, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @rxrpc_local_rcu._entry_ptr.58, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.60, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../net/rxrpc/local_object.c", i32 444, i32 2}
!110 = !{ptr @rxrpc_local_rcu._entry.59, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @rxrpc_local_rcu._entry_ptr.61, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{!"sp"}
!113 = !{i32 1, !"wchar_size", i32 2}
!114 = !{i32 1, !"min_enum_size", i32 4}
!115 = !{i32 8, !"branch-target-enforcement", i32 0}
!116 = !{i32 8, !"sign-return-address", i32 0}
!117 = !{i32 8, !"sign-return-address-all", i32 0}
!118 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!119 = !{i32 7, !"uwtable", i32 1}
!120 = !{i32 7, !"frame-pointer", i32 2}
!121 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!122 = !{i64 2149365650}
!123 = !{i64 2149365916}
!124 = !{!"branch_weights", i32 2000, i32 1}
!125 = !{i64 2158841206, i64 2158841694, i64 2158841243, i64 2158841299, i64 2158841333, i64 2158841357, i64 2158841398, i64 2158841419, i64 2158841447, i64 2158841481}
!126 = !{i64 2148434926}
!127 = !{i64 2148350211, i64 2148350243, i64 2148350272, i64 2148350306, i64 2148350337, i64 2148350360}
!128 = !{i64 2148435155}
!129 = !{i64 2158850831, i64 2158851320, i64 2158850868, i64 2158850924, i64 2158850958, i64 2158850982, i64 2158851023, i64 2158851044, i64 2158851072, i64 2158851106}
!130 = !{i64 2148348910}
!131 = !{i64 834530, i64 834555, i64 834577, i64 834593, i64 834605, i64 834625, i64 834649, i64 834665, i64 834677}
!132 = !{i64 2148349098}
!133 = !{i64 2148437967}
!134 = !{i64 2148352676, i64 2148352708, i64 2148352737, i64 2148352771, i64 2148352802, i64 2148352825}
!135 = !{i64 2148438196}
!136 = !{i64 2158876795, i64 2158877284, i64 2158876832, i64 2158876888, i64 2158876922, i64 2158876946, i64 2158876987, i64 2158877008, i64 2158877036, i64 2158877070}
!137 = !{i64 2148962868, i64 2148962873, i64 2148962886, i64 2148962930, i64 2148962964, i64 2148962985}
!138 = !{i64 2158164235}
!139 = !{i64 2158164484}
!140 = !{i64 2149374209}
!141 = !{i64 2149375245}
!142 = !{i64 2158888974, i64 2158889463, i64 2158889011, i64 2158889067, i64 2158889101, i64 2158889125, i64 2158889166, i64 2158889187, i64 2158889215, i64 2158889249}
!143 = !{i64 2158868985, i64 2158869474, i64 2158869022, i64 2158869078, i64 2158869112, i64 2158869136, i64 2158869177, i64 2158869198, i64 2158869226, i64 2158869260}
