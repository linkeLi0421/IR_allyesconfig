; ModuleID = '/llk/IR_all_yes/net/l2tp/l2tp_ppp.c_pt.bc'
source_filename = "../net/l2tp/l2tp_ppp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.proto = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i8, ptr, i32, i32, i32, i32, ptr, ptr, ptr, %union.anon.148, ptr, [32 x i8], %struct.list_head, ptr }
%union.anon.148 = type { ptr }
%struct.list_head = type { ptr, ptr }
%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon.6 }
%union.anon.6 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pppox_proto = type { ptr, ptr, ptr }
%struct.l2tp_nl_cmd_ops = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.proto_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ppp_channel_ops = type { ptr, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.5 }
%union.anon.5 = type { i32 }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.4 }
%union.anon.4 = type { %struct.raw_spinlock }
%struct.atomic_t = type { i32 }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.18, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.18 = type { %struct.anon.19 }
%struct.anon.19 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.raw_notifier_head = type { ptr }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.119, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.119 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.114, i32, %struct.spinlock }
%union.anon.114 = type { %struct.anon.115 }
%struct.anon.115 = type { ptr, ptr }
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
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.pppol2tp_seq_data = type { %struct.seq_net_private, i32, i32, ptr, ptr }
%struct.seq_net_private = type { ptr, ptr }
%struct.l2tp_tunnel = type { i32, i32, %struct.callback_head, %struct.spinlock, i8, [16 x %struct.hlist_head], i32, i32, i32, [20 x i8], i32, %struct.l2tp_stats, %struct.list_head, ptr, %struct.refcount_struct, ptr, ptr, i32, %struct.work_struct }
%struct.callback_head = type { ptr, ptr }
%struct.l2tp_stats = type { %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.126, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.127, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.128, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.sock_common = type { %union.anon, %union.anon.0, %union.anon.1, i16, i8, i8, i32, %union.anon.3, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.122, [0 x i32], %union.anon.123, i16, i16, %union.anon.124, %struct.refcount_struct, [0 x i32], %union.anon.125 }
%union.anon = type { i64 }
%union.anon.0 = type { i32 }
%union.anon.1 = type { i32 }
%union.anon.3 = type { %struct.hlist_node }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.26 }
%union.anon.26 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.122 = type { i32 }
%union.anon.123 = type { %struct.hlist_node }
%union.anon.124 = type { i32 }
%union.anon.125 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.126 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.127 = type { ptr }
%union.anon.128 = type { ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kuid_t = type { i32 }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.l2tp_session = type { i32, i32, ptr, i32, i32, [8 x i8], i32, [8 x i8], i32, i16, i16, i32, i32, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.hlist_node, %struct.refcount_struct, [32 x i8], [16 x i8], i8, i32, i32, i32, %struct.l2tp_stats, %struct.hlist_node, ptr, ptr, ptr, [0 x i8] }
%struct.inet_sock = type { %struct.sock, ptr, i32, i16, i16, ptr, i16, i16, i8, i8, i8, i8, i16, i8, i8, i32, i32, i32, ptr, %struct.inet_cork_full }
%struct.inet_cork_full = type { %struct.inet_cork, %struct.flowi }
%struct.inet_cork = type { i32, i32, ptr, i32, i32, ptr, i8, i8, i16, i8, i16, i64, i32 }
%struct.flowi = type { %union.anon.21 }
%union.anon.21 = type { %struct.flowi6 }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.pppox_sock = type { %struct.sock, %struct.ppp_channel, ptr, %union.anon.156, i16 }
%struct.ppp_channel = type { ptr, ptr, i32, i32, ptr, i32, i32 }
%union.anon.156 = type { %struct.pppoe_opt }
%struct.pppoe_opt = type { ptr, i32, %struct.pppoe_addr, %struct.sockaddr_pppox, %struct.work_struct }
%struct.pppoe_addr = type { i16, [6 x i8], [16 x i8] }
%struct.sockaddr_pppox = type <{ i16, i32, %union.anon.157 }>
%union.anon.157 = type { %struct.pptp_addr, [16 x i8] }
%struct.pptp_addr = type { i16, %struct.in_addr }
%struct.in_addr = type { i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.socket = type { i32, i16, i32, ptr, ptr, ptr, [104 x i8], %struct.socket_wq }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [60 x i8] }
%struct.pppol2tp_ioc_stats = type { i16, i16, i8, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.l2tp_session_cfg = type { i32, i8, i16, [8 x i8], i32, [8 x i8], i32, i32, ptr }
%struct.l2tp_tunnel_cfg = type { i32, %struct.in_addr, %struct.in_addr, ptr, ptr, i16, i16, i8 }
%struct.sockaddr_pppol2tp = type <{ i16, i32, %struct.pppol2tp_addr }>
%struct.pppol2tp_addr = type { i32, i32, %struct.sockaddr_in, i16, i16, i16, i16 }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.sockaddr_pppol2tpv3 = type <{ i16, i32, %struct.pppol2tpv3_addr }>
%struct.pppol2tpv3_addr = type { i32, i32, %struct.sockaddr_in, i32, i32, i32, i32 }
%struct.sockaddr_pppol2tpin6 = type <{ i16, i32, %struct.pppol2tpin6_addr }>
%struct.pppol2tpin6_addr = type { i32, i32, i16, i16, i16, i16, %struct.sockaddr_in6 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.sockaddr_pppol2tpv3in6 = type <{ i16, i32, %struct.pppol2tpv3in6_addr }>
%struct.pppol2tpv3in6_addr = type { i32, i32, i32, i32, i32, i32, %struct.sockaddr_in6 }
%struct.sk_buff = type { %union.anon.27, %union.anon.30, %union.anon.31, [48 x i8], %union.anon.32, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.34, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.27 = type { %struct.anon.28 }
%struct.anon.28 = type { ptr, ptr, %union.anon.29 }
%union.anon.29 = type { ptr }
%union.anon.30 = type { ptr }
%union.anon.31 = type { i64 }
%union.anon.32 = type { %struct.anon.33 }
%struct.anon.33 = type { i32, ptr }
%union.anon.34 = type { %struct.anon.35 }
%struct.anon.35 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.36, i32, i32, i32, i16, i16, %union.anon.38, i32, %union.anon.39, %union.anon.40, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.36 = type { i32 }
%union.anon.38 = type { i32 }
%union.anon.39 = type { i32 }
%union.anon.40 = type { i16 }
%struct.msghdr = type { ptr, i32, %struct.iov_iter, %union.anon.129, i8, i32, i32, ptr }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.103, %union.anon.104 }
%union.anon.103 = type { ptr }
%union.anon.104 = type { i64 }
%union.anon.129 = type { ptr }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.92, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.67 }
%union.anon.67 = type { i32 }
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
%struct.cpumask = type { [1 x i32] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.69 }
%union.anon.69 = type { %struct.anon.70 }
%struct.anon.70 = type { ptr, i32, i32, i32, i64, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigset_t = type { [2 x i32] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.tlbflush_unmap_batch = type {}
%union.anon.92 = type { %struct.callback_head }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, ptr }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }

@pppol2tp_sk_proto = internal global { %struct.proto, [36 x i8] } { %struct.proto { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 0, ptr null, i32 1104, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %union.anon.148 zeroinitializer, ptr null, [32 x i8] c"PPPOL2TP\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.list_head zeroinitializer, ptr null }, [36 x i8] zeroinitializer }, align 32
@pppol2tp_net_ops = internal global { %struct.pernet_operations, [32 x i8] } { %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @pppol2tp_init_net, ptr null, ptr @pppol2tp_exit_net, ptr null, ptr @pppol2tp_net_id, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__initcall__kmod_l2tp_ppp__535_1727_pppol2tp_init6 = internal global ptr @pppol2tp_init, section ".initcall6.init", align 4
@__exitcall_pppol2tp_exit = internal global ptr @pppol2tp_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author536 = internal constant [53 x i8] c"l2tp_ppp.author=James Chapman <jchapman@katalix.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description537 = internal constant [44 x i8] c"l2tp_ppp.description=PPP over L2TP over UDP\00", section ".modinfo", align 1
@__UNIQUE_ID_file538 = internal constant [32 x i8] c"l2tp_ppp.file=net/l2tp/l2tp_ppp\00", section ".modinfo", align 1
@__UNIQUE_ID_license539 = internal constant [21 x i8] c"l2tp_ppp.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_version540 = internal constant [22 x i8] c"l2tp_ppp.version=V2.0\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"l2tp_ppp\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"V2.0\00", [27 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__UNIQUE_ID_alias541 = internal constant [33 x i8] c"l2tp_ppp.alias=net-pf-24-proto-1\00", section ".modinfo", align 1
@__UNIQUE_ID_alias542 = internal constant [31 x i8] c"l2tp_ppp.alias=net-l2tp-type-7\00", section ".modinfo", align 1
@pppol2tp_net_id = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pppol2tp\00", [23 x i8] zeroinitializer }, align 32
@pppol2tp_seq_ops = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @pppol2tp_seq_start, ptr @pppol2tp_seq_stop, ptr @pppol2tp_seq_next, ptr @pppol2tp_seq_show }, [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"net/l2tp/l2tp_ppp.c\00", [44 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"PPPoL2TP driver info, V2.0\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"TUNNEL name, user-data-ok session-count\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c" debug tx-pkts/bytes/errs rx-pkts/bytes/errs\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"  SESSION name, addr/port src-tid/sid dest-tid/sid state user-data-ok\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"   mtu/mru/rcvseq/sendseq/lns debug reorderto\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"   nr/ns tx-pkts/bytes/errs rx-pkts/bytes/errs\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\0ATUNNEL '%s', %c %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c" %08x %ld/%ld/%ld %ld/%ld/%ld\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"  SESSION '%s' %08X/%d %04X/%04X -> %04X/%04X %d %c\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"   0/0/%c/%c/%s %08x %u\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"LNS\00", [28 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"LAC\00", [28 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"   %hu/%hu %ld/%ld/%ld %ld/%ld/%ld\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"   interface %s\0A\00", [47 x i8] zeroinitializer }, align 32
@pppol2tp_session_get_sock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.19 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.20 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.22 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@pppol2tp_proto = internal constant { %struct.pppox_proto, [20 x i8] } { %struct.pppox_proto { ptr @pppol2tp_create, ptr @pppol2tp_ioctl, ptr null }, [20 x i8] zeroinitializer }, align 32
@pppol2tp_nl_cmd_ops = internal constant { %struct.l2tp_nl_cmd_ops, [24 x i8] } { %struct.l2tp_nl_cmd_ops { ptr @pppol2tp_session_create, ptr @l2tp_session_delete }, [24 x i8] zeroinitializer }, align 32
@pppol2tp_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.4, i32 1701, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016l2tp_ppp: PPPoL2TP kernel driver, %s\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pppol2tp_init\00", [18 x i8] zeroinitializer }, align 32
@pppol2tp_init._entry_ptr = internal global ptr @pppol2tp_init._entry, section ".printk_index", align 4
@pppol2tp_ops = internal constant { %struct.proto_ops, [52 x i8] } { %struct.proto_ops { i32 24, ptr null, ptr @pppol2tp_release, ptr @sock_no_bind, ptr @pppol2tp_connect, ptr @sock_no_socketpair, ptr @sock_no_accept, ptr @pppol2tp_getname, ptr @datagram_poll, ptr @pppox_ioctl, ptr null, ptr @sock_no_listen, ptr @sock_no_shutdown, ptr @pppol2tp_setsockopt, ptr @pppol2tp_getsockopt, ptr null, ptr @pppol2tp_sendmsg, ptr @pppol2tp_recvmsg, ptr @sock_no_mmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@pppol2tp_release.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.25 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@pppol2tp_connect.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@pppol2tp_chan_ops = internal constant { %struct.ppp_channel_ops, [20 x i8] } { %struct.ppp_channel_ops { ptr @pppol2tp_xmit, ptr null, ptr null }, [20 x i8] zeroinitializer }, align 32
@pppol2tp_session_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.26 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&ps->sk_lock\00", [19 x i8] zeroinitializer }, align 32
@pppol2tp_recv.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@pppol2tp_recv._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.27, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.pppol2tp_recv = private unnamed_addr constant [14 x i8] c"pppol2tp_recv\00", align 1
@pppol2tp_recv._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @__func__.pppol2tp_recv, ptr @.str.4, i32 254, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\014l2tp_ppp: %s: no socket in recv\0A\00", [61 x i8] zeroinitializer }, align 32
@pppol2tp_recv._entry_ptr = internal global ptr @pppol2tp_recv._entry, section ".printk_index", align 4
@sk_dst_get.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.29 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"include/net/sock.h\00", [45 x i8] zeroinitializer }, align 32
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.30 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 1074033746, i64 1074033753, i64 2147775571, i64 2147775578, i64 2152231990]
@__sancov_gen_cov_switch_values.33 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 2, i64 3, i64 5]
@__sancov_gen_cov_switch_values.34 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.35 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.36 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.37 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.38 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.39 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5]
@___asan_gen_.40 = private unnamed_addr constant [18 x i8] c"pppol2tp_sk_proto\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 481, i32 21 }
@___asan_gen_.43 = private unnamed_addr constant [17 x i8] c"pppol2tp_net_ops\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 1631, i32 33 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 1733, i32 1 }
@___asan_gen_.55 = private unnamed_addr constant [16 x i8] c"pppol2tp_net_id\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 1399, i32 21 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 1615, i32 8 }
@___asan_gen_.61 = private unnamed_addr constant [17 x i8] c"pppol2tp_seq_ops\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 1598, i32 36 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 1453, i32 6 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 1580, i32 15 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 1581, i32 15 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 1582, i32 15 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 1583, i32 15 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 1584, i32 15 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 1585, i32 15 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 1504, i32 16 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 1508, i32 16 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 1544, i32 16 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 1551, i32 16 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 1554, i32 26 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 1554, i32 34 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 1557, i32 16 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 1569, i32 17 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 143, i32 7 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 695, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 723, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant [15 x i8] c"pppol2tp_proto\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 1664, i32 33 }
@___asan_gen_.124 = private unnamed_addr constant [20 x i8] c"pppol2tp_nl_cmd_ops\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 1672, i32 37 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 1701, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant [13 x i8] c"pppol2tp_ops\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 1641, i32 31 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 454, i32 14 }
@___asan_gen_.142 = private unnamed_addr constant [18 x i8] c"pppol2tp_chan_ops\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 127, i32 37 }
@___asan_gen_.145 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 550, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.157 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.161 = private constant [23 x i8] c"../net/l2tp/l2tp_ppp.c\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 254, i32 2 }
@___asan_gen_.164 = private unnamed_addr constant [22 x i8] c"../include/net/sock.h\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 2077, i32 8 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 230, i32 6 }
@___asan_gen_.170 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 214, i32 2 }
@___asan_gen_.172 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.173 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 156, i32 2 }
@llvm.compiler.used = appending global [58 x ptr] [ptr @__UNIQUE_ID_alias541, ptr @__UNIQUE_ID_alias542, ptr @__UNIQUE_ID_author536, ptr @__UNIQUE_ID_description537, ptr @__UNIQUE_ID_file538, ptr @__UNIQUE_ID_license539, ptr @__UNIQUE_ID_version540, ptr @__exitcall_pppol2tp_exit, ptr @__initcall__kmod_l2tp_ppp__535_1727_pppol2tp_init6, ptr @__modver_attr, ptr @pppol2tp_exit, ptr @pppol2tp_init._entry, ptr @pppol2tp_init._entry_ptr, ptr @pppol2tp_recv._entry, ptr @pppol2tp_recv._entry_ptr, ptr @pppol2tp_sk_proto, ptr @pppol2tp_net_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @pppol2tp_net_id, ptr @.str.3, ptr @pppol2tp_seq_ops, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @pppol2tp_proto, ptr @pppol2tp_nl_cmd_ops, ptr @.str.23, ptr @.str.24, ptr @pppol2tp_ops, ptr @.str.25, ptr @pppol2tp_chan_ops, ptr @pppol2tp_session_init.__key, ptr @.str.26, ptr @pppol2tp_recv._rs, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32], section "llvm.metadata"
@0 = internal global [45 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pppol2tp_sk_proto to i32), i32 252, i32 288, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pppol2tp_net_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pppol2tp_net_id to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pppol2tp_seq_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pppol2tp_proto to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pppol2tp_nl_cmd_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pppol2tp_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pppol2tp_ops to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pppol2tp_chan_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pppol2tp_session_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pppol2tp_recv._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pppol2tp_recv._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pppol2tp_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @l2tp_nl_unregister_ops(i32 noundef 7) #10
  tail call void @unregister_pppox_proto(i32 noundef 1) #10
  tail call void @proto_unregister(ptr noundef nonnull @pppol2tp_sk_proto) #10
  tail call void @unregister_pernet_device(ptr noundef nonnull @pppol2tp_net_ops) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @l2tp_nl_unregister_ops(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_pppox_proto(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @proto_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_pernet_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pppol2tp_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @register_pernet_device(ptr noundef nonnull @pppol2tp_net_ops) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @proto_register(ptr noundef nonnull @pppol2tp_sk_proto, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.out_unregister_pppol2tp_pernet_crit_edge

if.end.out_unregister_pppol2tp_pernet_crit_edge:  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unregister_pppol2tp_pernet

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @register_pppox_proto(i32 noundef 1, ptr noundef nonnull @pppol2tp_proto) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.out_unregister_pppol2tp_proto_crit_edge

if.end4.out_unregister_pppol2tp_proto_crit_edge:  ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unregister_pppol2tp_proto

if.end8:                                          ; preds = %if.end4
  %call9 = tail call i32 @l2tp_nl_register_ops(i32 noundef 7, ptr noundef nonnull @pppol2tp_nl_cmd_ops) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %do.end, label %out_unregister_pppox

do.end:                                           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.2) #13
  br label %out

out:                                              ; preds = %out_unregister_pppol2tp_pernet, %do.end, %entry.out_crit_edge
  %err.0 = phi i32 [ %call, %entry.out_crit_edge ], [ %err.2, %out_unregister_pppol2tp_pernet ], [ 0, %do.end ]
  ret i32 %err.0

out_unregister_pppox:                             ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @unregister_pppox_proto(i32 noundef 1) #10
  br label %out_unregister_pppol2tp_proto

out_unregister_pppol2tp_proto:                    ; preds = %out_unregister_pppox, %if.end4.out_unregister_pppol2tp_proto_crit_edge
  %err.1 = phi i32 [ %call5, %if.end4.out_unregister_pppol2tp_proto_crit_edge ], [ %call9, %out_unregister_pppox ]
  tail call void @proto_unregister(ptr noundef nonnull @pppol2tp_sk_proto) #10
  br label %out_unregister_pppol2tp_pernet

out_unregister_pppol2tp_pernet:                   ; preds = %out_unregister_pppol2tp_proto, %if.end.out_unregister_pppol2tp_pernet_crit_edge
  %err.2 = phi i32 [ %call1, %if.end.out_unregister_pppol2tp_pernet_crit_edge ], [ %err.1, %out_unregister_pppol2tp_proto ]
  tail call void @unregister_pernet_device(ptr noundef nonnull @pppol2tp_net_ops) #10
  br label %out
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pppol2tp_init_net(ptr nocapture noundef readonly %net) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %proc_net = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 17
  %0 = ptrtoint ptr %proc_net to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %proc_net, align 4
  %call = tail call ptr @proc_create_net_data(ptr noundef nonnull @.str.3, i16 noundef zeroext 292, ptr noundef %1, ptr noundef nonnull @pppol2tp_seq_ops, i32 noundef 24, ptr noundef null) #10
  %tobool.not = icmp eq ptr %call, null
  %spec.select = select i1 %tobool.not, i32 -12, i32 0
  ret i32 %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pppol2tp_exit_net(ptr nocapture noundef readonly %net) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %proc_net = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 17
  %0 = ptrtoint ptr %proc_net to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %proc_net, align 4
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.3, ptr noundef %1) #10
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create_net_data(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @pppol2tp_seq_start(ptr nocapture noundef readonly %m, ptr nocapture noundef readonly %offs) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %offs to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %offs, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %tobool.not = icmp eq i64 %1, 0
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end:                                           ; preds = %entry
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 8
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %do.end, label %if.end26, !prof !121

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1453, i32 noundef 9, ptr noundef null) #10
  br label %out

if.end26:                                         ; preds = %if.end
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %tunnel = getelementptr inbounds %struct.pppol2tp_seq_data, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %tunnel to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tunnel, align 4
  %tobool28.not = icmp eq ptr %7, null
  br i1 %tobool28.not, label %if.end.i, label %if.else

if.end.i:                                         ; preds = %if.end26
  %tunnel_idx.i = getelementptr inbounds %struct.pppol2tp_seq_data, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %tunnel_idx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tunnel_idx.i, align 4
  %call18.i = tail call ptr @l2tp_tunnel_get_nth(ptr noundef %5, i32 noundef %9) #10
  %10 = ptrtoint ptr %tunnel to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call18.i, ptr %tunnel, align 4
  %11 = ptrtoint ptr %tunnel_idx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tunnel_idx.i, align 4
  %inc19.i = add i32 %12, 1
  store i32 %inc19.i, ptr %tunnel_idx.i, align 4
  %tobool5.not20.i = icmp eq ptr %call18.i, null
  br i1 %tobool5.not20.i, label %if.end.i.land.lhs.true_crit_edge, label %if.end.i.lor.lhs.false.i_crit_edge

if.end.i.lor.lhs.false.i_crit_edge:               ; preds = %if.end.i
  br label %lor.lhs.false.i

if.end.i.land.lhs.true_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true

lor.lhs.false.i:                                  ; preds = %if.end8.i.lor.lhs.false.i_crit_edge, %if.end.i.lor.lhs.false.i_crit_edge
  %call21.i = phi ptr [ %call.i, %if.end8.i.lor.lhs.false.i_crit_edge ], [ %call18.i, %if.end.i.lor.lhs.false.i_crit_edge ]
  %version.i = getelementptr inbounds %struct.l2tp_tunnel, ptr %call21.i, i32 0, i32 8
  %13 = ptrtoint ptr %version.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %version.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %14)
  %cmp.i = icmp eq i32 %14, 2
  br i1 %cmp.i, label %lor.lhs.false.i.if.end30_crit_edge, label %if.end8.i

lor.lhs.false.i.if.end30_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

if.end8.i:                                        ; preds = %lor.lhs.false.i
  tail call void @l2tp_tunnel_dec_refcount(ptr noundef nonnull %call21.i) #10
  %15 = ptrtoint ptr %tunnel_idx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tunnel_idx.i, align 4
  %call.i = tail call ptr @l2tp_tunnel_get_nth(ptr noundef %5, i32 noundef %16) #10
  %17 = ptrtoint ptr %tunnel to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call.i, ptr %tunnel, align 4
  %18 = ptrtoint ptr %tunnel_idx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tunnel_idx.i, align 4
  %inc.i = add i32 %19, 1
  store i32 %inc.i, ptr %tunnel_idx.i, align 4
  %tobool5.not.i = icmp eq ptr %call.i, null
  br i1 %tobool5.not.i, label %if.end8.i.land.lhs.true_crit_edge, label %if.end8.i.lor.lhs.false.i_crit_edge

if.end8.i.lor.lhs.false.i_crit_edge:              ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false.i

if.end8.i.land.lhs.true_crit_edge:                ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true

if.else:                                          ; preds = %if.end26
  %session.i = getelementptr inbounds %struct.pppol2tp_seq_data, ptr %3, i32 0, i32 4
  %20 = ptrtoint ptr %session.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %session.i, align 4
  %tobool.not.i45 = icmp eq ptr %21, null
  br i1 %tobool.not.i45, label %if.else.if.end.i51_crit_edge, label %if.then.i46

if.else.if.end.i51_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i51

if.then.i46:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @l2tp_session_dec_refcount(ptr noundef nonnull %21) #10
  br label %if.end.i51

if.end.i51:                                       ; preds = %if.then.i46, %if.else.if.end.i51_crit_edge
  %22 = ptrtoint ptr %tunnel to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %tunnel, align 4
  %session_idx.i = getelementptr inbounds %struct.pppol2tp_seq_data, ptr %3, i32 0, i32 2
  %24 = ptrtoint ptr %session_idx.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %session_idx.i, align 4
  %call.i48 = tail call ptr @l2tp_session_get_nth(ptr noundef %23, i32 noundef %25) #10
  %26 = ptrtoint ptr %session.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call.i48, ptr %session.i, align 4
  %27 = ptrtoint ptr %session_idx.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %session_idx.i, align 4
  %inc.i49 = add i32 %28, 1
  store i32 %inc.i49, ptr %session_idx.i, align 4
  %tobool5.not.i50 = icmp eq ptr %call.i48, null
  br i1 %tobool5.not.i50, label %if.then6.i, label %if.end.i51.if.end30_crit_edge

if.end.i51.if.end30_crit_edge:                    ; preds = %if.end.i51
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

if.then6.i:                                       ; preds = %if.end.i51
  %29 = ptrtoint ptr %session_idx.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %session_idx.i, align 4
  %30 = ptrtoint ptr %tunnel to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %tunnel, align 4
  %tobool.not.i.i = icmp eq ptr %31, null
  br i1 %tobool.not.i.i, label %if.then6.i.if.end.i.i_crit_edge, label %if.then.i.i

if.then6.i.if.end.i.i_crit_edge:                  ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @l2tp_tunnel_dec_refcount(ptr noundef nonnull %31) #10
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %if.then6.i.if.end.i.i_crit_edge
  %tunnel_idx.i.i = getelementptr inbounds %struct.pppol2tp_seq_data, ptr %3, i32 0, i32 1
  %32 = ptrtoint ptr %tunnel_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %tunnel_idx.i.i, align 4
  %call18.i.i = tail call ptr @l2tp_tunnel_get_nth(ptr noundef %5, i32 noundef %33) #10
  %34 = ptrtoint ptr %tunnel to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call18.i.i, ptr %tunnel, align 4
  %35 = ptrtoint ptr %tunnel_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %tunnel_idx.i.i, align 4
  %inc19.i.i = add i32 %36, 1
  store i32 %inc19.i.i, ptr %tunnel_idx.i.i, align 4
  %tobool5.not20.i.i = icmp eq ptr %call18.i.i, null
  br i1 %tobool5.not20.i.i, label %if.end.i.i.land.lhs.true_crit_edge, label %if.end.i.i.lor.lhs.false.i.i_crit_edge

if.end.i.i.lor.lhs.false.i.i_crit_edge:           ; preds = %if.end.i.i
  br label %lor.lhs.false.i.i

if.end.i.i.land.lhs.true_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true

lor.lhs.false.i.i:                                ; preds = %if.end8.i.i.lor.lhs.false.i.i_crit_edge, %if.end.i.i.lor.lhs.false.i.i_crit_edge
  %call21.i.i = phi ptr [ %call.i.i, %if.end8.i.i.lor.lhs.false.i.i_crit_edge ], [ %call18.i.i, %if.end.i.i.lor.lhs.false.i.i_crit_edge ]
  %version.i.i = getelementptr inbounds %struct.l2tp_tunnel, ptr %call21.i.i, i32 0, i32 8
  %37 = ptrtoint ptr %version.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %version.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %38)
  %cmp.i.i = icmp eq i32 %38, 2
  br i1 %cmp.i.i, label %lor.lhs.false.i.i.if.end30_crit_edge, label %if.end8.i.i

lor.lhs.false.i.i.if.end30_crit_edge:             ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

if.end8.i.i:                                      ; preds = %lor.lhs.false.i.i
  tail call void @l2tp_tunnel_dec_refcount(ptr noundef nonnull %call21.i.i) #10
  %39 = ptrtoint ptr %tunnel_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %tunnel_idx.i.i, align 4
  %call.i.i = tail call ptr @l2tp_tunnel_get_nth(ptr noundef %5, i32 noundef %40) #10
  %41 = ptrtoint ptr %tunnel to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call.i.i, ptr %tunnel, align 4
  %42 = ptrtoint ptr %tunnel_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %tunnel_idx.i.i, align 4
  %inc.i.i = add i32 %43, 1
  store i32 %inc.i.i, ptr %tunnel_idx.i.i, align 4
  %tobool5.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool5.not.i.i, label %if.end8.i.i.land.lhs.true_crit_edge, label %if.end8.i.i.lor.lhs.false.i.i_crit_edge

if.end8.i.i.lor.lhs.false.i.i_crit_edge:          ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false.i.i

if.end8.i.i.land.lhs.true_crit_edge:              ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true

if.end30:                                         ; preds = %lor.lhs.false.i.i.if.end30_crit_edge, %if.end.i51.if.end30_crit_edge, %lor.lhs.false.i.if.end30_crit_edge
  %44 = ptrtoint ptr %tunnel to i32
  call void @__asan_load4_noabort(i32 %44)
  %.pr = load ptr, ptr %tunnel, align 4
  %tobool32.not = icmp eq ptr %.pr, null
  br i1 %tobool32.not, label %if.end30.land.lhs.true_crit_edge, label %if.end30.out_crit_edge

if.end30.out_crit_edge:                           ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end30.land.lhs.true_crit_edge:                 ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end30.land.lhs.true_crit_edge, %if.end8.i.i.land.lhs.true_crit_edge, %if.end.i.i.land.lhs.true_crit_edge, %if.end8.i.land.lhs.true_crit_edge, %if.end.i.land.lhs.true_crit_edge
  %session = getelementptr inbounds %struct.pppol2tp_seq_data, ptr %3, i32 0, i32 4
  %45 = ptrtoint ptr %session to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %session, align 4
  %tobool33.not = icmp eq ptr %46, null
  %spec.store.select = select i1 %tobool33.not, ptr null, ptr %3
  br label %out

out:                                              ; preds = %land.lhs.true, %if.end30.out_crit_edge, %do.end, %entry.out_crit_edge
  %pd.0 = phi ptr [ null, %do.end ], [ %3, %if.end30.out_crit_edge ], [ %spec.store.select, %land.lhs.true ], [ inttoptr (i32 1 to ptr), %entry.out_crit_edge ]
  ret ptr %pd.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pppol2tp_seq_stop(ptr nocapture noundef readnone %p, ptr noundef %v) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %switch = icmp ult ptr %v, inttoptr (i32 2 to ptr)
  br i1 %switch, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %session = getelementptr inbounds %struct.pppol2tp_seq_data, ptr %v, i32 0, i32 4
  %0 = ptrtoint ptr %session to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %session, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %if.end.if.end5_crit_edge, label %if.then2

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @l2tp_session_dec_refcount(ptr noundef nonnull %1) #10
  %2 = ptrtoint ptr %session to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %session, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then2, %if.end.if.end5_crit_edge
  %tunnel = getelementptr inbounds %struct.pppol2tp_seq_data, ptr %v, i32 0, i32 3
  %3 = ptrtoint ptr %tunnel to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %tunnel, align 4
  %tobool6.not = icmp eq ptr %4, null
  br i1 %tobool6.not, label %if.end5.cleanup_crit_edge, label %if.then7

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @l2tp_tunnel_dec_refcount(ptr noundef nonnull %4) #10
  %5 = ptrtoint ptr %tunnel to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %tunnel, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %if.end5.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal noalias ptr @pppol2tp_seq_next(ptr nocapture noundef readnone %m, ptr nocapture noundef readnone %v, ptr nocapture noundef %pos) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %pos, align 8
  %inc = add i64 %1, 1
  store i64 %inc, ptr %pos, align 8
  ret ptr null
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pppol2tp_seq_show(ptr noundef %m, ptr noundef readonly %v) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %v, inttoptr (i32 1 to ptr)
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.5) #10
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.6) #10
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.7) #10
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.8) #10
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.9) #10
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.10) #10
  br label %out

if.end:                                           ; preds = %entry
  %session = getelementptr inbounds %struct.pppol2tp_seq_data, ptr %v, i32 0, i32 4
  %0 = ptrtoint ptr %session to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %session, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then1, label %if.else

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %tunnel = getelementptr inbounds %struct.pppol2tp_seq_data, ptr %v, i32 0, i32 3
  %2 = ptrtoint ptr %tunnel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tunnel, align 4
  %name.i = getelementptr inbounds %struct.l2tp_tunnel, ptr %3, i32 0, i32 9
  %sock.i = getelementptr inbounds %struct.l2tp_tunnel, ptr %3, i32 0, i32 16
  %4 = ptrtoint ptr %sock.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sock.i, align 4
  %sk_user_data.i = getelementptr inbounds %struct.sock, ptr %5, i32 0, i32 72
  %6 = ptrtoint ptr %sk_user_data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sk_user_data.i, align 4
  %cmp.i = icmp eq ptr %7, %3
  %cond.i = select i1 %cmp.i, i32 89, i32 78
  %ref_count.i = getelementptr inbounds %struct.l2tp_tunnel, ptr %3, i32 0, i32 14
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %ref_count.i, i32 noundef 4) #10
  %8 = ptrtoint ptr %ref_count.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %ref_count.i, align 4
  %sub.i = add i32 %9, -1
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.11, ptr noundef %name.i, i32 noundef %cond.i, i32 noundef %sub.i) #10
  %stats.i = getelementptr inbounds %struct.l2tp_tunnel, ptr %3, i32 0, i32 11
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %stats.i, i32 noundef 4) #10
  %10 = ptrtoint ptr %stats.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %stats.i, align 4
  %tx_bytes.i = getelementptr inbounds %struct.l2tp_tunnel, ptr %3, i32 0, i32 11, i32 1
  %call.i.i22.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %tx_bytes.i, i32 noundef 4) #10
  %12 = ptrtoint ptr %tx_bytes.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %tx_bytes.i, align 4
  %tx_errors.i = getelementptr inbounds %struct.l2tp_tunnel, ptr %3, i32 0, i32 11, i32 2
  %call.i.i23.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %tx_errors.i, i32 noundef 4) #10
  %14 = ptrtoint ptr %tx_errors.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %tx_errors.i, align 4
  %rx_packets.i = getelementptr inbounds %struct.l2tp_tunnel, ptr %3, i32 0, i32 11, i32 3
  %call.i.i24.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %rx_packets.i, i32 noundef 4) #10
  %16 = ptrtoint ptr %rx_packets.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %rx_packets.i, align 4
  %rx_bytes.i = getelementptr inbounds %struct.l2tp_tunnel, ptr %3, i32 0, i32 11, i32 4
  %call.i.i25.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %rx_bytes.i, i32 noundef 4) #10
  %18 = ptrtoint ptr %rx_bytes.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %rx_bytes.i, align 4
  %rx_errors.i = getelementptr inbounds %struct.l2tp_tunnel, ptr %3, i32 0, i32 11, i32 7
  %call.i.i26.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %rx_errors.i, i32 noundef 4) #10
  %20 = ptrtoint ptr %rx_errors.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %rx_errors.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.12, i32 noundef 0, i32 noundef %11, i32 noundef %13, i32 noundef %15, i32 noundef %17, i32 noundef %19, i32 noundef %21) #10
  br label %out

if.else:                                          ; preds = %if.end
  %tunnel1.i = getelementptr inbounds %struct.l2tp_session, ptr %1, i32 0, i32 2
  %22 = ptrtoint ptr %tunnel1.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %tunnel1.i, align 4
  %sock.i14 = getelementptr inbounds %struct.l2tp_tunnel, ptr %23, i32 0, i32 16
  %24 = ptrtoint ptr %sock.i14 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sock.i14, align 4
  %tobool.not.i = icmp eq ptr %25, null
  br i1 %tobool.not.i, label %if.else.if.end.i_crit_edge, label %if.then.i

if.else.if.end.i_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %inet_saddr.i = getelementptr inbounds %struct.inet_sock, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %inet_saddr.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %inet_saddr.i, align 4
  %inet_sport.i = getelementptr inbounds %struct.inet_sock, ptr %25, i32 0, i32 6
  %28 = ptrtoint ptr %inet_sport.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %inet_sport.i, align 8
  %phi.cast.i = zext i16 %29 to i32
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.else.if.end.i_crit_edge
  %ip.0.i = phi i32 [ %27, %if.then.i ], [ 0, %if.else.if.end.i_crit_edge ]
  %port.0.i = phi i32 [ %phi.cast.i, %if.then.i ], [ 0, %if.else.if.end.i_crit_edge ]
  %call3.i = tail call fastcc ptr @pppol2tp_session_get_sock(ptr noundef nonnull %1) #10
  %tobool4.not.i = icmp eq ptr %call3.i, null
  br i1 %tobool4.not.i, label %if.end.i.if.end6.i_crit_edge, label %if.then5.i

if.end.i.if.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %skc_state.i = getelementptr inbounds %struct.sock_common, ptr %call3.i, i32 0, i32 4
  %30 = ptrtoint ptr %skc_state.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load volatile i8, ptr %skc_state.i, align 2
  %sk_user_data.i15 = getelementptr inbounds %struct.sock, ptr %call3.i, i32 0, i32 72
  %32 = ptrtoint ptr %sk_user_data.i15 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %sk_user_data.i15, align 4
  %cmp.i16 = icmp eq ptr %33, %1
  %cond.i17 = select i1 %cmp.i16, i32 89, i32 78
  %phi.cast69.i = zext i8 %31 to i32
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then5.i, %if.end.i.if.end6.i_crit_edge
  %state.0.i = phi i32 [ %phi.cast69.i, %if.then5.i ], [ 0, %if.end.i.if.end6.i_crit_edge ]
  %user_data_ok.0.i = phi i32 [ %cond.i17, %if.then5.i ], [ 78, %if.end.i.if.end6.i_crit_edge ]
  %name.i18 = getelementptr inbounds %struct.l2tp_session, ptr %1, i32 0, i32 21
  %tunnel_id.i = getelementptr inbounds %struct.l2tp_tunnel, ptr %23, i32 0, i32 6
  %34 = ptrtoint ptr %tunnel_id.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %tunnel_id.i, align 4
  %session_id.i = getelementptr inbounds %struct.l2tp_session, ptr %1, i32 0, i32 3
  %36 = ptrtoint ptr %session_id.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %session_id.i, align 4
  %peer_tunnel_id.i = getelementptr inbounds %struct.l2tp_tunnel, ptr %23, i32 0, i32 7
  %38 = ptrtoint ptr %peer_tunnel_id.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %peer_tunnel_id.i, align 4
  %peer_session_id.i = getelementptr inbounds %struct.l2tp_session, ptr %1, i32 0, i32 4
  %40 = ptrtoint ptr %peer_session_id.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %peer_session_id.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.13, ptr noundef %name.i18, i32 noundef %ip.0.i, i32 noundef %port.0.i, i32 noundef %35, i32 noundef %37, i32 noundef %39, i32 noundef %41, i32 noundef %state.0.i, i32 noundef %user_data_ok.0.i) #10
  %recv_seq.i = getelementptr inbounds %struct.l2tp_session, ptr %1, i32 0, i32 23
  %42 = ptrtoint ptr %recv_seq.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %bf.load.i = load i8, ptr %recv_seq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool10.not.i = icmp sgt i8 %bf.load.i, -1
  %cond11.i = select i1 %tobool10.not.i, i32 45, i32 82
  %43 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool15.not.i = icmp eq i8 %43, 0
  %cond16.i = select i1 %tobool15.not.i, i32 45, i32 83
  %44 = and i8 %bf.load.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool21.not.i = icmp eq i8 %44, 0
  %cond22.i = select i1 %tobool21.not.i, ptr @.str.16, ptr @.str.15
  %reorder_timeout.i = getelementptr inbounds %struct.l2tp_session, ptr %1, i32 0, i32 24
  %45 = ptrtoint ptr %reorder_timeout.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %reorder_timeout.i, align 4
  %call23.i = tail call i32 @jiffies_to_msecs(i32 noundef %46) #10
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.14, i32 noundef %cond11.i, i32 noundef %cond16.i, ptr noundef nonnull %cond22.i, i32 noundef 0, i32 noundef %call23.i) #10
  %nr.i = getelementptr inbounds %struct.l2tp_session, ptr %1, i32 0, i32 11
  %47 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %nr.i, align 4
  %ns.i = getelementptr inbounds %struct.l2tp_session, ptr %1, i32 0, i32 12
  %49 = ptrtoint ptr %ns.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %ns.i, align 4
  %stats.i19 = getelementptr inbounds %struct.l2tp_session, ptr %1, i32 0, i32 27
  %call.i.i.i20 = tail call zeroext i1 @__kasan_check_read(ptr noundef %stats.i19, i32 noundef 4) #10
  %51 = ptrtoint ptr %stats.i19 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %stats.i19, align 4
  %tx_bytes.i21 = getelementptr inbounds %struct.l2tp_session, ptr %1, i32 0, i32 27, i32 1
  %call.i.i71.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %tx_bytes.i21, i32 noundef 4) #10
  %53 = ptrtoint ptr %tx_bytes.i21 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %tx_bytes.i21, align 4
  %tx_errors.i22 = getelementptr inbounds %struct.l2tp_session, ptr %1, i32 0, i32 27, i32 2
  %call.i.i72.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %tx_errors.i22, i32 noundef 4) #10
  %55 = ptrtoint ptr %tx_errors.i22 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile i32, ptr %tx_errors.i22, align 4
  %rx_packets.i23 = getelementptr inbounds %struct.l2tp_session, ptr %1, i32 0, i32 27, i32 3
  %call.i.i73.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %rx_packets.i23, i32 noundef 4) #10
  %57 = ptrtoint ptr %rx_packets.i23 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile i32, ptr %rx_packets.i23, align 4
  %rx_bytes.i24 = getelementptr inbounds %struct.l2tp_session, ptr %1, i32 0, i32 27, i32 4
  %call.i.i74.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %rx_bytes.i24, i32 noundef 4) #10
  %59 = ptrtoint ptr %rx_bytes.i24 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %rx_bytes.i24, align 4
  %rx_errors.i25 = getelementptr inbounds %struct.l2tp_session, ptr %1, i32 0, i32 27, i32 7
  %call.i.i75.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %rx_errors.i25, i32 noundef 4) #10
  %61 = ptrtoint ptr %rx_errors.i25 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile i32, ptr %rx_errors.i25, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.17, i32 noundef %48, i32 noundef %50, i32 noundef %52, i32 noundef %54, i32 noundef %56, i32 noundef %58, i32 noundef %60, i32 noundef %62) #10
  br i1 %tobool4.not.i, label %if.end6.i.out_crit_edge, label %if.then36.i

if.end6.i.out_crit_edge:                          ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then36.i:                                      ; preds = %if.end6.i
  %chan.i = getelementptr inbounds %struct.pppox_sock, ptr %call3.i, i32 0, i32 1
  %call38.i = tail call ptr @ppp_dev_name(ptr noundef %chan.i) #10
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.18, ptr noundef %call38.i) #10
  %skc_refcnt.i.i = getelementptr inbounds %struct.sock_common, ptr %call3.i, i32 0, i32 19
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !122
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i.i, i32 1, i32 3, i32 1) #10
  %63 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i.i, ptr %skc_refcnt.i.i, i32 1, ptr elementtype(i32) %skc_refcnt.i.i) #10, !srcloc !123
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %63, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.out_crit_edge, label %if.then10.i.i.i.i.i, !prof !124

if.end5.i.i.i.i.i.out_crit_edge:                  ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i.i, i32 noundef 3) #10
  br label %out

if.then.i.i:                                      ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !125
  tail call void @sk_free(ptr noundef nonnull %call3.i) #10
  br label %out

out:                                              ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.out_crit_edge, %if.end6.i.out_crit_edge, %if.then1, %if.then
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @l2tp_tunnel_dec_refcount(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @l2tp_tunnel_get_nth(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @l2tp_session_dec_refcount(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @l2tp_session_get_nth(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @pppol2tp_session_get_sock(ptr noundef %session) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !111) #10
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !126
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.20, i32 noundef 696, ptr noundef nonnull @.str.21) #10
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %sk1 = getelementptr inbounds %struct.l2tp_session, ptr %session, i32 1, i32 13, i32 2, i32 0, i32 0, i32 4, i32 2
  %4 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %sk1, align 4
  %call3 = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end9_crit_edge

rcu_read_lock.exit.do.end9_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call4 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true.do.end9_crit_edge, label %land.lhs.true6

land.lhs.true.do.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9

land.lhs.true6:                                   ; preds = %land.lhs.true
  %.b16 = load i1, ptr @pppol2tp_session_get_sock.__warned, align 1
  br i1 %.b16, label %land.lhs.true6.do.end9_crit_edge, label %if.then

land.lhs.true6.do.end9_crit_edge:                 ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9

if.then:                                          ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @pppol2tp_session_get_sock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 143, ptr noundef nonnull @.str.19) #10
  br label %do.end9

do.end9:                                          ; preds = %if.then, %land.lhs.true6.do.end9_crit_edge, %land.lhs.true.do.end9_crit_edge, %rcu_read_lock.exit.do.end9_crit_edge
  %tobool11.not = icmp eq ptr %5, null
  br i1 %tobool11.not, label %do.end9.if.end13_crit_edge, label %if.then12

do.end9.if.end13_crit_edge:                       ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.then12:                                        ; preds = %do.end9
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %5, i32 0, i32 19
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #10
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #10, !srcloc !127
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then12.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !121

if.then12.if.end15.sink.split.i.i.i.i_crit_edge:  ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then12
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %7 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %.not.i.i.i.i = icmp sgt i32 %7, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.if.end13_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !124

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.if.end13_crit_edge:               ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then12.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then12.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef %.sink.i.i.i.i) #10
  br label %if.end13

if.end13:                                         ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.if.end13_crit_edge, %do.end9.if.end13_crit_edge
  %call.i17 = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i17, label %if.end13.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i20

if.end13.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i20:                                ; preds = %if.end13
  %call1.i18 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i18)
  %tobool.not.i19 = icmp eq i32 %call1.i18, 0
  br i1 %tobool.not.i19, label %land.lhs.true.i20.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i22

land.lhs.true.i20.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i20
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true2.i22:                               ; preds = %land.lhs.true.i20
  %.b4.i21 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i21, label %land.lhs.true2.i22.rcu_read_unlock.exit_crit_edge, label %if.then.i23

land.lhs.true2.i22.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i22
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

if.then.i23:                                      ; preds = %land.lhs.true2.i22
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.20, i32 noundef 724, ptr noundef nonnull @.str.22) #10
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i23, %land.lhs.true2.i22.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i20.rcu_read_unlock.exit_crit_edge, %if.end13.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !128
  %8 = tail call i32 @llvm.read_register.i32(metadata !111) #10
  %and.i.i.i.i.i24 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i24 to ptr
  %preempt_count.i.i.i.i25 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i25 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i25, align 4
  %sub.i.i.i = add i32 %11, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i25, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  ret ptr %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ppp_dev_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sock_put(ptr noundef %sk) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %skc_refcnt = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 19
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !122
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt, i32 1, i32 3, i32 1) #10
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt, ptr %skc_refcnt, i32 1, ptr elementtype(i32) %skc_refcnt) #10, !srcloc !123
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.then, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.if.end_crit_edge, label %if.then10.i.i.i, !prof !124

if.end5.i.i.i.if.end_crit_edge:                   ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt, i32 noundef 3) #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !125
  tail call void @sk_free(ptr noundef %sk) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %if.then10.i.i.i, %if.end5.i.i.i.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

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
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

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
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_proc_entry(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pernet_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proto_register(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pppox_proto(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @l2tp_nl_register_ops(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pppol2tp_create(ptr noundef %net, ptr noundef %sock, i32 noundef %kern) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @sk_alloc(ptr noundef %net, i32 noundef 24, i32 noundef 3264, ptr noundef nonnull @pppol2tp_sk_proto, i32 noundef %kern) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @sock_init_data(ptr noundef %sock, ptr noundef nonnull %call) #10
  %0 = ptrtoint ptr %sock to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %sock, align 128
  %ops = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 5
  %1 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @pppol2tp_ops, ptr %ops, align 4
  %sk_backlog_rcv = getelementptr inbounds %struct.sock, ptr %call, i32 0, i32 80
  %2 = ptrtoint ptr %sk_backlog_rcv to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @pppol2tp_backlog_recv, ptr %sk_backlog_rcv, align 4
  %sk_protocol = getelementptr inbounds %struct.sock, ptr %call, i32 0, i32 46
  %3 = ptrtoint ptr %sk_protocol to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 1, ptr %sk_protocol, align 4
  %skc_family = getelementptr inbounds %struct.sock_common, ptr %call, i32 0, i32 3
  %4 = ptrtoint ptr %skc_family to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 24, ptr %skc_family, align 8
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %call, i32 0, i32 4
  %5 = ptrtoint ptr %skc_state to i32
  call void @__asan_store1_noabort(i32 %5)
  store volatile i8 0, ptr %skc_state, align 2
  %sk_type = getelementptr inbounds %struct.sock, ptr %call, i32 0, i32 45
  %6 = ptrtoint ptr %sk_type to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 1, ptr %sk_type, align 2
  %sk_destruct = getelementptr inbounds %struct.sock, ptr %call, i32 0, i32 82
  %7 = ptrtoint ptr %sk_destruct to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @pppol2tp_session_destruct, ptr %sk_destruct, align 4
  br label %out

out:                                              ; preds = %if.end, %entry.out_crit_edge
  %error.0 = phi i32 [ 0, %if.end ], [ -12, %entry.out_crit_edge ]
  ret i32 %error.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pppol2tp_ioctl(ptr nocapture noundef readonly %sock, i32 noundef %cmd, i32 noundef %arg) #2 align 64 {
entry:
  %stats = alloca %struct.pppol2tp_ioc_stats, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %stats) #10
  %0 = call ptr @memset(ptr %stats, i32 255, i32 72)
  %1 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %entry.cleanup166_crit_edge [
    i32 -2147191725, label %entry.sw.bb_crit_edge
    i32 -2147191718, label %entry.sw.bb_crit_edge223
    i32 1074033746, label %entry.sw.bb37_crit_edge
    i32 1074033753, label %entry.sw.bb37_crit_edge224
    i32 -2142735306, label %sw.bb90
  ]

entry.sw.bb37_crit_edge224:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb37

entry.sw.bb37_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb37

entry.sw.bb_crit_edge223:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.cleanup166_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup166

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge223
  %sk = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %2 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sk, align 16
  %sk_user_data = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 72
  %4 = ptrtoint ptr %sk_user_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sk_user_data, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %sw.bb.cleanup166_crit_edge, label %if.end

sw.bb.cleanup166_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup166

if.end:                                           ; preds = %sw.bb
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 201649021, i32 %7)
  %cmp.not = icmp eq i32 %7, 201649021
  br i1 %cmp.not, label %if.end24, label %do.end, !prof !124

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1068, i32 noundef 9, ptr noundef null) #10
  br label %cleanup166

if.end24:                                         ; preds = %if.end
  %session_id = getelementptr inbounds %struct.l2tp_session, ptr %5, i32 0, i32 3
  %8 = ptrtoint ptr %session_id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %session_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool25.not = icmp eq i32 %9, 0
  br i1 %tobool25.not, label %land.lhs.true, label %if.end24.if.end28_crit_edge

if.end24.if.end28_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

land.lhs.true:                                    ; preds = %if.end24
  %peer_session_id = getelementptr inbounds %struct.l2tp_session, ptr %5, i32 0, i32 4
  %10 = ptrtoint ptr %peer_session_id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %peer_session_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool26.not = icmp eq i32 %11, 0
  br i1 %tobool26.not, label %land.lhs.true.cleanup166_crit_edge, label %land.lhs.true.if.end28_crit_edge

land.lhs.true.if.end28_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

land.lhs.true.cleanup166_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup166

if.end28:                                         ; preds = %land.lhs.true.if.end28_crit_edge, %if.end24.if.end28_crit_edge
  %12 = inttoptr i32 %arg to ptr
  tail call void @__might_fault(ptr noundef nonnull @.str.4, i32 noundef 1075) #10
  %13 = tail call i32 @llvm.read_register.i32(metadata !111) #10
  %and.i.i.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 4
  %15 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #6, !srcloc !129
  %and.i = and i32 %15, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #10, !srcloc !130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !131
  %16 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %12, i32 0, i32 -1226833921) #10, !srcloc !132
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %15) #10, !srcloc !130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !131
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool34.not = icmp eq i32 %16, 0
  br i1 %tobool34.not, label %if.end28.sw.epilog_crit_edge, label %if.end28.cleanup166_crit_edge

if.end28.cleanup166_crit_edge:                    ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup166

if.end28.sw.epilog_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb37:                                          ; preds = %entry.sw.bb37_crit_edge, %entry.sw.bb37_crit_edge224
  %sk38 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %17 = ptrtoint ptr %sk38 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sk38, align 16
  %sk_user_data39 = getelementptr inbounds %struct.sock, ptr %18, i32 0, i32 72
  %19 = ptrtoint ptr %sk_user_data39 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sk_user_data39, align 4
  %tobool40.not = icmp eq ptr %20, null
  br i1 %tobool40.not, label %sw.bb37.cleanup166_crit_edge, label %if.end42

sw.bb37.cleanup166_crit_edge:                     ; preds = %sw.bb37
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup166

if.end42:                                         ; preds = %sw.bb37
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 201649021, i32 %22)
  %cmp45.not = icmp eq i32 %22, 201649021
  br i1 %cmp45.not, label %if.end77, label %do.end61, !prof !124

do.end61:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1085, i32 noundef 9, ptr noundef null) #10
  br label %cleanup166

if.end77:                                         ; preds = %if.end42
  %session_id78 = getelementptr inbounds %struct.l2tp_session, ptr %20, i32 0, i32 3
  %23 = ptrtoint ptr %session_id78 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %session_id78, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool79.not = icmp eq i32 %24, 0
  br i1 %tobool79.not, label %land.lhs.true80, label %if.end77.if.end84_crit_edge

if.end77.if.end84_crit_edge:                      ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end84

land.lhs.true80:                                  ; preds = %if.end77
  %peer_session_id81 = getelementptr inbounds %struct.l2tp_session, ptr %20, i32 0, i32 4
  %25 = ptrtoint ptr %peer_session_id81 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %peer_session_id81, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool82.not = icmp eq i32 %26, 0
  br i1 %tobool82.not, label %land.lhs.true80.cleanup166_crit_edge, label %land.lhs.true80.if.end84_crit_edge

land.lhs.true80.if.end84_crit_edge:               ; preds = %land.lhs.true80
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end84

land.lhs.true80.cleanup166_crit_edge:             ; preds = %land.lhs.true80
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup166

if.end84:                                         ; preds = %land.lhs.true80.if.end84_crit_edge, %if.end77.if.end84_crit_edge
  %27 = inttoptr i32 %arg to ptr
  %28 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %27, i32 4, i32 -1226833920) #14, !srcloc !133
  %asmresult = extractvalue { i32, i32 } %28, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %cmp87 = icmp eq i32 %asmresult, 0
  br i1 %cmp87, label %if.end84.sw.epilog_crit_edge, label %if.end84.cleanup166_crit_edge

if.end84.cleanup166_crit_edge:                    ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup166

if.end84.sw.epilog_crit_edge:                     ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb90:                                          ; preds = %entry
  %sk91 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %29 = ptrtoint ptr %sk91 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %sk91, align 16
  %sk_user_data92 = getelementptr inbounds %struct.sock, ptr %30, i32 0, i32 72
  %31 = ptrtoint ptr %sk_user_data92 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %sk_user_data92, align 4
  %tobool93.not = icmp eq ptr %32, null
  br i1 %tobool93.not, label %sw.bb90.cleanup166_crit_edge, label %if.end95

sw.bb90.cleanup166_crit_edge:                     ; preds = %sw.bb90
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup166

if.end95:                                         ; preds = %sw.bb90
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %32, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 201649021, i32 %34)
  %cmp98.not = icmp eq i32 %34, 201649021
  br i1 %cmp98.not, label %if.end130, label %do.end114, !prof !124

do.end114:                                        ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1101, i32 noundef 9, ptr noundef null) #10
  br label %cleanup166

if.end130:                                        ; preds = %if.end95
  %session_id131 = getelementptr inbounds %struct.l2tp_session, ptr %32, i32 0, i32 3
  %35 = ptrtoint ptr %session_id131 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %session_id131, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool132.not = icmp eq i32 %36, 0
  br i1 %tobool132.not, label %land.lhs.true133, label %if.end130.if.else_crit_edge

if.end130.if.else_crit_edge:                      ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

land.lhs.true133:                                 ; preds = %if.end130
  %peer_session_id134 = getelementptr inbounds %struct.l2tp_session, ptr %32, i32 0, i32 4
  %37 = ptrtoint ptr %peer_session_id134 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %peer_session_id134, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool135.not = icmp eq i32 %38, 0
  br i1 %tobool135.not, label %if.then136, label %land.lhs.true133.if.else_crit_edge

land.lhs.true133.if.else_crit_edge:               ; preds = %land.lhs.true133
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.then136:                                       ; preds = %land.lhs.true133
  %39 = inttoptr i32 %arg to ptr
  tail call void @__might_fault(ptr noundef nonnull @.str.32, i32 noundef 156) #10
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i, label %if.then136.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.then136.if.then11.i.i_crit_edge:               ; preds = %if.then136
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.then136
  %40 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %39, i32 72, i32 -1226833920) #14, !srcloc !134
  %asmresult.i.i = extractvalue { i32, i32 } %40, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !124

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %stats, i32 noundef 72) #10
  %41 = call i32 @llvm.read_register.i32(metadata !111) #10
  %and.i.i.i.i.i.i = and i32 %41, -16384
  %42 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 4
  %43 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #6, !srcloc !129
  %and.i.i.i.i = and i32 %43, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #10, !srcloc !130
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !131
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %stats, ptr noundef %39, i32 noundef 72) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %43) #10, !srcloc !130
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !131
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end141, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !124

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.then136.if.then11.i.i_crit_edge
  %res.0.i.i207 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 72, %if.then136.if.then11.i.i_crit_edge ], [ 72, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 72, %res.0.i.i207
  %add.ptr.i.i = getelementptr i8, ptr %stats, i32 %sub.i.i
  %44 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i207)
  br label %cleanup166

if.end141:                                        ; preds = %if.end.i.i
  %session_id142 = getelementptr inbounds %struct.pppol2tp_ioc_stats, ptr %stats, i32 0, i32 1
  %45 = ptrtoint ptr %session_id142 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %session_id142, align 2
  %tunnel = getelementptr inbounds %struct.l2tp_session, ptr %32, i32 0, i32 2
  %47 = ptrtoint ptr %tunnel to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %tunnel, align 4
  %call143 = call fastcc i32 @pppol2tp_tunnel_copy_stats(ptr noundef nonnull %stats, ptr noundef %48)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call143)
  %cmp144 = icmp slt i32 %call143, 0
  br i1 %cmp144, label %if.end141.cleanup166_crit_edge, label %cleanup

if.end141.cleanup166_crit_edge:                   ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup166

cleanup:                                          ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #12
  %49 = ptrtoint ptr %session_id142 to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %46, ptr %session_id142, align 2
  br label %if.end155

if.else:                                          ; preds = %land.lhs.true133.if.else_crit_edge, %if.end130.if.else_crit_edge
  %stats151 = getelementptr inbounds %struct.l2tp_session, ptr %32, i32 0, i32 27
  call fastcc void @pppol2tp_copy_stats(ptr noundef nonnull %stats, ptr noundef %stats151)
  %50 = ptrtoint ptr %session_id131 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %session_id131, align 4
  %conv153 = trunc i32 %51 to i16
  %session_id154 = getelementptr inbounds %struct.pppol2tp_ioc_stats, ptr %stats, i32 0, i32 1
  %52 = ptrtoint ptr %session_id154 to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %conv153, ptr %session_id154, align 2
  br label %if.end155

if.end155:                                        ; preds = %if.else, %cleanup
  %tunnel156 = getelementptr inbounds %struct.l2tp_session, ptr %32, i32 0, i32 2
  %53 = ptrtoint ptr %tunnel156 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %tunnel156, align 4
  %tunnel_id = getelementptr inbounds %struct.l2tp_tunnel, ptr %54, i32 0, i32 6
  %55 = ptrtoint ptr %tunnel_id to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %tunnel_id, align 4
  %conv157 = trunc i32 %56 to i16
  %57 = ptrtoint ptr %stats to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %conv157, ptr %stats, align 8
  %sock.i = getelementptr inbounds %struct.l2tp_tunnel, ptr %54, i32 0, i32 16
  %58 = ptrtoint ptr %sock.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %sock.i, align 4
  %tobool.not.i = icmp eq ptr %59, null
  br i1 %tobool.not.i, label %l2tp_tunnel_uses_xfrm.exit.thread218, label %land.rhs.i

l2tp_tunnel_uses_xfrm.exit.thread218:             ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #12
  %using_ipsec219 = getelementptr inbounds %struct.pppol2tp_ioc_stats, ptr %stats, i32 0, i32 2
  %60 = ptrtoint ptr %using_ipsec219 to i32
  call void @__asan_load1_noabort(i32 %60)
  %bf.load220 = load i8, ptr %using_ipsec219, align 4
  br label %if.end8.i.i198

land.rhs.i:                                       ; preds = %if.end155
  %sk_policy.i = getelementptr inbounds %struct.sock, ptr %59, i32 0, i32 18
  %61 = ptrtoint ptr %sk_policy.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile ptr, ptr %sk_policy.i, align 4
  %tobool2.not.i = icmp eq ptr %62, null
  br i1 %tobool2.not.i, label %l2tp_tunnel_uses_xfrm.exit, label %l2tp_tunnel_uses_xfrm.exit.thread

l2tp_tunnel_uses_xfrm.exit.thread:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  %using_ipsec212 = getelementptr inbounds %struct.pppol2tp_ioc_stats, ptr %stats, i32 0, i32 2
  %63 = ptrtoint ptr %using_ipsec212 to i32
  call void @__asan_load1_noabort(i32 %63)
  %bf.load213 = load i8, ptr %using_ipsec212, align 4
  br label %67

l2tp_tunnel_uses_xfrm.exit:                       ; preds = %land.rhs.i
  %arrayidx8.i = getelementptr %struct.sock, ptr %59, i32 0, i32 18, i32 1
  %64 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load volatile ptr, ptr %arrayidx8.i, align 4
  %tobool10.i.not = icmp eq ptr %65, null
  %using_ipsec = getelementptr inbounds %struct.pppol2tp_ioc_stats, ptr %stats, i32 0, i32 2
  %66 = ptrtoint ptr %using_ipsec to i32
  call void @__asan_load1_noabort(i32 %66)
  %bf.load = load i8, ptr %using_ipsec, align 4
  br i1 %tobool10.i.not, label %l2tp_tunnel_uses_xfrm.exit.if.end8.i.i198_crit_edge, label %l2tp_tunnel_uses_xfrm.exit._crit_edge

l2tp_tunnel_uses_xfrm.exit._crit_edge:            ; preds = %l2tp_tunnel_uses_xfrm.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %67

l2tp_tunnel_uses_xfrm.exit.if.end8.i.i198_crit_edge: ; preds = %l2tp_tunnel_uses_xfrm.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i.i198

67:                                               ; preds = %l2tp_tunnel_uses_xfrm.exit._crit_edge, %l2tp_tunnel_uses_xfrm.exit.thread
  %bf.load217 = phi i8 [ %bf.load213, %l2tp_tunnel_uses_xfrm.exit.thread ], [ %bf.load, %l2tp_tunnel_uses_xfrm.exit._crit_edge ]
  %using_ipsec215 = phi ptr [ %using_ipsec212, %l2tp_tunnel_uses_xfrm.exit.thread ], [ %using_ipsec, %l2tp_tunnel_uses_xfrm.exit._crit_edge ]
  br label %if.end8.i.i198

if.end8.i.i198:                                   ; preds = %67, %l2tp_tunnel_uses_xfrm.exit.if.end8.i.i198_crit_edge, %l2tp_tunnel_uses_xfrm.exit.thread218
  %bf.load216 = phi i8 [ %bf.load217, %67 ], [ %bf.load, %l2tp_tunnel_uses_xfrm.exit.if.end8.i.i198_crit_edge ], [ %bf.load220, %l2tp_tunnel_uses_xfrm.exit.thread218 ]
  %using_ipsec214 = phi ptr [ %using_ipsec215, %67 ], [ %using_ipsec, %l2tp_tunnel_uses_xfrm.exit.if.end8.i.i198_crit_edge ], [ %using_ipsec219, %l2tp_tunnel_uses_xfrm.exit.thread218 ]
  %68 = phi i8 [ -128, %67 ], [ 0, %l2tp_tunnel_uses_xfrm.exit.if.end8.i.i198_crit_edge ], [ 0, %l2tp_tunnel_uses_xfrm.exit.thread218 ]
  %bf.clear = and i8 %bf.load216, 127
  %bf.set = or i8 %68, %bf.clear
  %69 = ptrtoint ptr %using_ipsec214 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %bf.set, ptr %using_ipsec214, align 4
  %70 = inttoptr i32 %arg to ptr
  call void @__might_fault(ptr noundef nonnull @.str.32, i32 noundef 174) #10
  %call.i.i199 = call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i199, label %if.end8.i.i198.cleanup166_crit_edge, label %if.end.i.i202

if.end8.i.i198.cleanup166_crit_edge:              ; preds = %if.end8.i.i198
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup166

if.end.i.i202:                                    ; preds = %if.end8.i.i198
  %71 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %70, i32 72, i32 -1226833920) #14, !srcloc !135
  %asmresult.i.i200 = extractvalue { i32, i32 } %71, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i200)
  %cmp.i6.i201 = icmp eq i32 %asmresult.i.i200, 0
  br i1 %cmp.i6.i201, label %copy_to_user.exit, label %if.end.i.i202.cleanup166_crit_edge

if.end.i.i202.cleanup166_crit_edge:               ; preds = %if.end.i.i202
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup166

copy_to_user.exit:                                ; preds = %if.end.i.i202
  %call.i.i.i203 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %stats, i32 noundef 72) #10
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %70, ptr noundef nonnull %stats, i32 noundef 72) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool163.not = icmp eq i32 %call.i12.i.i, 0
  br i1 %tobool163.not, label %copy_to_user.exit.sw.epilog_crit_edge, label %copy_to_user.exit.cleanup166_crit_edge

copy_to_user.exit.cleanup166_crit_edge:           ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup166

copy_to_user.exit.sw.epilog_crit_edge:            ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %copy_to_user.exit.sw.epilog_crit_edge, %if.end84.sw.epilog_crit_edge, %if.end28.sw.epilog_crit_edge
  br label %cleanup166

cleanup166:                                       ; preds = %sw.epilog, %copy_to_user.exit.cleanup166_crit_edge, %if.end.i.i202.cleanup166_crit_edge, %if.end8.i.i198.cleanup166_crit_edge, %if.end141.cleanup166_crit_edge, %if.then11.i.i, %do.end114, %sw.bb90.cleanup166_crit_edge, %if.end84.cleanup166_crit_edge, %land.lhs.true80.cleanup166_crit_edge, %do.end61, %sw.bb37.cleanup166_crit_edge, %if.end28.cleanup166_crit_edge, %land.lhs.true.cleanup166_crit_edge, %do.end, %sw.bb.cleanup166_crit_edge, %entry.cleanup166_crit_edge
  %retval.1 = phi i32 [ -9, %do.end114 ], [ 0, %sw.epilog ], [ -9, %do.end61 ], [ -9, %do.end ], [ -107, %sw.bb.cleanup166_crit_edge ], [ -38, %land.lhs.true.cleanup166_crit_edge ], [ -14, %if.end28.cleanup166_crit_edge ], [ -107, %sw.bb37.cleanup166_crit_edge ], [ -38, %land.lhs.true80.cleanup166_crit_edge ], [ -14, %if.end84.cleanup166_crit_edge ], [ -107, %sw.bb90.cleanup166_crit_edge ], [ -14, %copy_to_user.exit.cleanup166_crit_edge ], [ -515, %entry.cleanup166_crit_edge ], [ %call143, %if.end141.cleanup166_crit_edge ], [ -14, %if.then11.i.i ], [ -14, %if.end8.i.i198.cleanup166_crit_edge ], [ -14, %if.end.i.i202.cleanup166_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %stats) #10
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sk_alloc(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_init_data(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pppol2tp_backlog_recv(ptr noundef %sk, ptr noundef %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @l2tp_udp_encap_recv(ptr noundef %sk, ptr noundef %skb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pppol2tp_session_destruct(ptr noundef %sk) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sk_user_data = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 72
  %0 = ptrtoint ptr %sk_user_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk_user_data, align 4
  %sk_receive_queue = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 8
  tail call void @skb_queue_purge(ptr noundef %sk_receive_queue) #10
  %sk_write_queue = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 26
  tail call void @skb_queue_purge(ptr noundef %sk_write_queue) #10
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %sk_user_data to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %sk_user_data, align 4
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 201649021, i32 %4)
  %cmp.not = icmp eq i32 %4, 201649021
  br i1 %cmp.not, label %if.end24, label %do.end, !prof !124

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 417, i32 noundef 9, ptr noundef null) #10
  br label %cleanup

if.end24:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @l2tp_session_dec_refcount(ptr noundef nonnull %1) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %do.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pppol2tp_release(ptr nocapture noundef %sock) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @lock_sock_nested(ptr noundef nonnull %1, i32 noundef 0) #10
  %2 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 13
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %2, align 4
  %and1.i.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end4, label %error35

if.end4:                                          ; preds = %if.end
  tail call void @pppox_unbind_sock(ptr noundef nonnull %1) #10
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %skc_state to i32
  call void @__asan_store1_noabort(i32 %5)
  store volatile i8 16, ptr %skc_state, align 2
  %sk_callback_lock.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 50
  tail call void @_raw_write_lock_bh(ptr noundef %sk_callback_lock.i) #10
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %2, align 4
  %or.i.i.i = or i32 %7, 1
  store i32 %or.i.i.i, ptr %2, align 4
  %sk_socket.i.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 71
  %8 = ptrtoint ptr %sk_socket.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %sk_socket.i.i, align 8
  %9 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 17
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %9, align 8
  tail call void @_raw_write_unlock_bh(ptr noundef %sk_callback_lock.i) #10
  %11 = ptrtoint ptr %sk1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %sk1, align 16
  %call6 = tail call fastcc ptr @pppol2tp_sock_to_session(ptr noundef nonnull %1)
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %if.end4.if.end34_crit_edge, label %if.then8

if.end4.if.end34_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34

if.then8:                                         ; preds = %if.end4
  tail call void @l2tp_session_delete(ptr noundef nonnull %call6) #10
  %sk_lock = getelementptr inbounds %struct.l2tp_session, ptr %call6, i32 1, i32 1
  tail call void @mutex_lock_nested(ptr noundef %sk_lock, i32 noundef 0) #10
  %dep_map = getelementptr inbounds %struct.l2tp_session, ptr %call6, i32 1, i32 13, i32 2
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool12.not = icmp eq i32 %call.i, 0
  br i1 %tobool12.not, label %land.lhs.true, label %if.then8.do.end_crit_edge

if.then8.do.end_crit_edge:                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true:                                    ; preds = %if.then8
  %call13 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true15

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true15:                                  ; preds = %land.lhs.true
  %.b56 = load i1, ptr @pppol2tp_release.__warned, align 1
  br i1 %.b56, label %land.lhs.true15.do.end_crit_edge, label %if.then17

land.lhs.true15.do.end_crit_edge:                 ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then17:                                        ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @pppol2tp_release.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 455, ptr noundef nonnull @.str.25) #10
  br label %do.end

do.end:                                           ; preds = %if.then17, %land.lhs.true15.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %if.then8.do.end_crit_edge
  %sk19 = getelementptr inbounds %struct.l2tp_session, ptr %call6, i32 1, i32 13, i32 2, i32 0, i32 0, i32 4, i32 2
  %12 = ptrtoint ptr %sk19 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sk19, align 4
  %__sk = getelementptr inbounds %struct.l2tp_session, ptr %call6, i32 1, i32 13, i32 2, i32 0, i32 0, i32 4, i32 3
  %14 = ptrtoint ptr %__sk to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %__sk, align 4
  store volatile ptr null, ptr %sk19, align 4
  tail call void @mutex_unlock(ptr noundef %sk_lock) #10
  %rcu = getelementptr inbounds %struct.l2tp_session, ptr %call6, i32 1, i32 13, i32 2, i32 0, i32 0, i32 4, i32 6
  tail call void @call_rcu(ptr noundef %rcu, ptr noundef nonnull @pppol2tp_put_sk) #10
  br label %if.end34

if.end34:                                         ; preds = %do.end, %if.end4.if.end34_crit_edge
  tail call void @release_sock(ptr noundef nonnull %1) #10
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 19
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !122
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #10
  %15 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #10, !srcloc !123
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !124

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 3) #10
  br label %cleanup

if.then.i:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !125
  tail call void @sk_free(ptr noundef nonnull %1) #10
  br label %cleanup

error35:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @release_sock(ptr noundef nonnull %1) #10
  br label %cleanup

cleanup:                                          ; preds = %error35, %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -9, %error35 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end5.i.i.i.i.cleanup_crit_edge ], [ 0, %if.then10.i.i.i.i ], [ 0, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_bind(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pppol2tp_connect(ptr nocapture noundef readonly %sock, ptr noundef readonly %uservaddr, i32 noundef %sockaddr_len, i32 noundef %flags) #2 align 64 {
entry:
  %tunnel = alloca ptr, align 4
  %cfg = alloca %struct.l2tp_session_cfg, align 4
  %tcfg = alloca %struct.l2tp_tunnel_cfg, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tunnel) #10
  %2 = ptrtoint ptr %tunnel to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %tunnel, align 4, !annotation !136
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %cfg) #10
  %3 = call ptr @memset(ptr %cfg, i32 0, i32 40)
  %4 = add i32 %sockaddr_len, -38
  %5 = tail call i32 @llvm.fshl.i32(i32 %4, i32 %4, i32 30) #10
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %5, label %entry.cleanup178_crit_edge [
    i32 0, label %sw.bb.i
    i32 2, label %sw.bb9.i
    i32 3, label %sw.bb33.i
    i32 5, label %sw.bb61.i
  ]

entry.cleanup178_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup178

sw.bb.i:                                          ; preds = %entry
  %sa_protocol.i = getelementptr inbounds %struct.sockaddr_pppol2tp, ptr %uservaddr, i32 0, i32 1
  %7 = ptrtoint ptr %sa_protocol.i to i32
  call void @__asan_loadN_noabort(i32 %7, i32 4)
  %8 = load i32, ptr %sa_protocol.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp.not.i = icmp eq i32 %8, 1
  br i1 %cmp.not.i, label %cleanup.i, label %sw.bb.i.cleanup178_crit_edge

sw.bb.i.cleanup178_crit_edge:                     ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup178

cleanup.i:                                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #12
  %fd.i = getelementptr inbounds %struct.sockaddr_pppol2tp, ptr %uservaddr, i32 0, i32 2, i32 1
  %s_tunnel.i = getelementptr inbounds %struct.sockaddr_pppol2tp, ptr %uservaddr, i32 0, i32 2, i32 3
  %9 = ptrtoint ptr %s_tunnel.i to i32
  call void @__asan_loadN_noabort(i32 %9, i32 2)
  %10 = load i16, ptr %s_tunnel.i, align 1
  %conv.i = zext i16 %10 to i32
  %d_tunnel.i = getelementptr inbounds %struct.sockaddr_pppol2tp, ptr %uservaddr, i32 0, i32 2, i32 5
  %11 = ptrtoint ptr %d_tunnel.i to i32
  call void @__asan_loadN_noabort(i32 %11, i32 2)
  %12 = load i16, ptr %d_tunnel.i, align 1
  %conv4.i = zext i16 %12 to i32
  %s_session.i = getelementptr inbounds %struct.sockaddr_pppol2tp, ptr %uservaddr, i32 0, i32 2, i32 4
  %13 = ptrtoint ptr %s_session.i to i32
  call void @__asan_loadN_noabort(i32 %13, i32 2)
  %14 = load i16, ptr %s_session.i, align 1
  %conv6.i = zext i16 %14 to i32
  %d_session.i = getelementptr inbounds %struct.sockaddr_pppol2tp, ptr %uservaddr, i32 0, i32 2, i32 6
  %15 = ptrtoint ptr %d_session.i to i32
  call void @__asan_loadN_noabort(i32 %15, i32 2)
  %16 = load i16, ptr %d_session.i, align 1
  %conv8.i = zext i16 %16 to i32
  br label %if.end

sw.bb9.i:                                         ; preds = %entry
  %sa_protocol10.i = getelementptr inbounds %struct.sockaddr_pppol2tpv3, ptr %uservaddr, i32 0, i32 1
  %17 = ptrtoint ptr %sa_protocol10.i to i32
  call void @__asan_loadN_noabort(i32 %17, i32 4)
  %18 = load i32, ptr %sa_protocol10.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %18)
  %cmp11.not.i = icmp eq i32 %18, 1
  br i1 %cmp11.not.i, label %cleanup31.i, label %sw.bb9.i.cleanup178_crit_edge

sw.bb9.i.cleanup178_crit_edge:                    ; preds = %sw.bb9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup178

cleanup31.i:                                      ; preds = %sw.bb9.i
  call void @__sanitizer_cov_trace_pc() #12
  %fd17.i = getelementptr inbounds %struct.sockaddr_pppol2tpv3, ptr %uservaddr, i32 0, i32 2, i32 1
  %s_tunnel20.i = getelementptr inbounds %struct.sockaddr_pppol2tpv3, ptr %uservaddr, i32 0, i32 2, i32 3
  %19 = ptrtoint ptr %s_tunnel20.i to i32
  call void @__asan_loadN_noabort(i32 %19, i32 4)
  %20 = load i32, ptr %s_tunnel20.i, align 1
  %d_tunnel23.i = getelementptr inbounds %struct.sockaddr_pppol2tpv3, ptr %uservaddr, i32 0, i32 2, i32 5
  %21 = ptrtoint ptr %d_tunnel23.i to i32
  call void @__asan_loadN_noabort(i32 %21, i32 4)
  %22 = load i32, ptr %d_tunnel23.i, align 1
  %s_session26.i = getelementptr inbounds %struct.sockaddr_pppol2tpv3, ptr %uservaddr, i32 0, i32 2, i32 4
  %23 = ptrtoint ptr %s_session26.i to i32
  call void @__asan_loadN_noabort(i32 %23, i32 4)
  %24 = load i32, ptr %s_session26.i, align 1
  %d_session29.i = getelementptr inbounds %struct.sockaddr_pppol2tpv3, ptr %uservaddr, i32 0, i32 2, i32 6
  %25 = ptrtoint ptr %d_session29.i to i32
  call void @__asan_loadN_noabort(i32 %25, i32 4)
  %26 = load i32, ptr %d_session29.i, align 1
  br label %if.end

sw.bb33.i:                                        ; preds = %entry
  %sa_protocol34.i = getelementptr inbounds %struct.sockaddr_pppol2tpin6, ptr %uservaddr, i32 0, i32 1
  %27 = ptrtoint ptr %sa_protocol34.i to i32
  call void @__asan_loadN_noabort(i32 %27, i32 4)
  %28 = load i32, ptr %sa_protocol34.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %28)
  %cmp35.not.i = icmp eq i32 %28, 1
  br i1 %cmp35.not.i, label %cleanup59.i, label %sw.bb33.i.cleanup178_crit_edge

sw.bb33.i.cleanup178_crit_edge:                   ; preds = %sw.bb33.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup178

cleanup59.i:                                      ; preds = %sw.bb33.i
  call void @__sanitizer_cov_trace_pc() #12
  %fd41.i = getelementptr inbounds %struct.sockaddr_pppol2tpin6, ptr %uservaddr, i32 0, i32 2, i32 1
  %s_tunnel44.i = getelementptr inbounds %struct.sockaddr_pppol2tpin6, ptr %uservaddr, i32 0, i32 2, i32 2
  %29 = ptrtoint ptr %s_tunnel44.i to i32
  call void @__asan_loadN_noabort(i32 %29, i32 2)
  %30 = load i16, ptr %s_tunnel44.i, align 1
  %conv45.i = zext i16 %30 to i32
  %d_tunnel48.i = getelementptr inbounds %struct.sockaddr_pppol2tpin6, ptr %uservaddr, i32 0, i32 2, i32 4
  %31 = ptrtoint ptr %d_tunnel48.i to i32
  call void @__asan_loadN_noabort(i32 %31, i32 2)
  %32 = load i16, ptr %d_tunnel48.i, align 1
  %conv49.i = zext i16 %32 to i32
  %s_session52.i = getelementptr inbounds %struct.sockaddr_pppol2tpin6, ptr %uservaddr, i32 0, i32 2, i32 3
  %33 = ptrtoint ptr %s_session52.i to i32
  call void @__asan_loadN_noabort(i32 %33, i32 2)
  %34 = load i16, ptr %s_session52.i, align 1
  %conv53.i = zext i16 %34 to i32
  %d_session56.i = getelementptr inbounds %struct.sockaddr_pppol2tpin6, ptr %uservaddr, i32 0, i32 2, i32 5
  %35 = ptrtoint ptr %d_session56.i to i32
  call void @__asan_loadN_noabort(i32 %35, i32 2)
  %36 = load i16, ptr %d_session56.i, align 1
  %conv57.i = zext i16 %36 to i32
  br label %if.end

sw.bb61.i:                                        ; preds = %entry
  %sa_protocol62.i = getelementptr inbounds %struct.sockaddr_pppol2tpv3in6, ptr %uservaddr, i32 0, i32 1
  %37 = ptrtoint ptr %sa_protocol62.i to i32
  call void @__asan_loadN_noabort(i32 %37, i32 4)
  %38 = load i32, ptr %sa_protocol62.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %38)
  %cmp63.not.i = icmp eq i32 %38, 1
  br i1 %cmp63.not.i, label %cleanup83.i, label %sw.bb61.i.cleanup178_crit_edge

sw.bb61.i.cleanup178_crit_edge:                   ; preds = %sw.bb61.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup178

cleanup83.i:                                      ; preds = %sw.bb61.i
  call void @__sanitizer_cov_trace_pc() #12
  %fd69.i = getelementptr inbounds %struct.sockaddr_pppol2tpv3in6, ptr %uservaddr, i32 0, i32 2, i32 1
  %s_tunnel72.i = getelementptr inbounds %struct.sockaddr_pppol2tpv3in6, ptr %uservaddr, i32 0, i32 2, i32 2
  %39 = ptrtoint ptr %s_tunnel72.i to i32
  call void @__asan_loadN_noabort(i32 %39, i32 4)
  %40 = load i32, ptr %s_tunnel72.i, align 1
  %d_tunnel75.i = getelementptr inbounds %struct.sockaddr_pppol2tpv3in6, ptr %uservaddr, i32 0, i32 2, i32 4
  %41 = ptrtoint ptr %d_tunnel75.i to i32
  call void @__asan_loadN_noabort(i32 %41, i32 4)
  %42 = load i32, ptr %d_tunnel75.i, align 1
  %s_session78.i = getelementptr inbounds %struct.sockaddr_pppol2tpv3in6, ptr %uservaddr, i32 0, i32 2, i32 3
  %43 = ptrtoint ptr %s_session78.i to i32
  call void @__asan_loadN_noabort(i32 %43, i32 4)
  %44 = load i32, ptr %s_session78.i, align 1
  %d_session81.i = getelementptr inbounds %struct.sockaddr_pppol2tpv3in6, ptr %uservaddr, i32 0, i32 2, i32 5
  %45 = ptrtoint ptr %d_session81.i to i32
  call void @__asan_loadN_noabort(i32 %45, i32 4)
  %46 = load i32, ptr %d_session81.i, align 1
  br label %if.end

if.end:                                           ; preds = %cleanup83.i, %cleanup59.i, %cleanup31.i, %cleanup.i
  %info.sroa.33.0 = phi i32 [ %conv8.i, %cleanup.i ], [ %26, %cleanup31.i ], [ %conv57.i, %cleanup59.i ], [ %46, %cleanup83.i ]
  %info.sroa.26.1 = phi i32 [ %conv6.i, %cleanup.i ], [ %24, %cleanup31.i ], [ %conv53.i, %cleanup59.i ], [ %44, %cleanup83.i ]
  %info.sroa.20.1 = phi i32 [ %conv4.i, %cleanup.i ], [ %22, %cleanup31.i ], [ %conv49.i, %cleanup59.i ], [ %42, %cleanup83.i ]
  %info.sroa.13.1 = phi i32 [ %conv.i, %cleanup.i ], [ %20, %cleanup31.i ], [ %conv45.i, %cleanup59.i ], [ %40, %cleanup83.i ]
  %info.sroa.8258.1.in = phi ptr [ %fd.i, %cleanup.i ], [ %fd17.i, %cleanup31.i ], [ %fd41.i, %cleanup59.i ], [ %fd69.i, %cleanup83.i ]
  %info.sroa.0.1 = phi i32 [ 2, %cleanup.i ], [ 3, %cleanup31.i ], [ 2, %cleanup59.i ], [ 3, %cleanup83.i ]
  %47 = ptrtoint ptr %info.sroa.8258.1.in to i32
  call void @__asan_loadN_noabort(i32 %47, i32 4)
  %info.sroa.8258.1 = load i32, ptr %info.sroa.8258.1.in, align 1
  tail call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #10
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %48 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load volatile i8, ptr %skc_state, align 2
  %50 = and i8 %49, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool.not = icmp eq i8 %50, 0
  br i1 %tobool.not, label %if.end4, label %if.end.if.end177_crit_edge

if.end.if.end177_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end177

if.end4:                                          ; preds = %if.end
  %sk_user_data = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 72
  %51 = ptrtoint ptr %sk_user_data to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %sk_user_data, align 4
  %tobool5.not = icmp eq ptr %52, null
  br i1 %tobool5.not, label %if.end7, label %if.end4.if.end177_crit_edge

if.end4.if.end177_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end177

if.end7:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %info.sroa.13.1)
  %tobool8.not = icmp eq i32 %info.sroa.13.1, 0
  br i1 %tobool8.not, label %if.end7.if.end177_crit_edge, label %if.end10

if.end7.if.end177_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end177

if.end10:                                         ; preds = %if.end7
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 9
  %53 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %skc_net.i, align 4
  %call13 = tail call ptr @l2tp_tunnel_get(ptr noundef %54, i32 noundef %info.sroa.13.1) #10
  %55 = ptrtoint ptr %tunnel to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %call13, ptr %tunnel, align 4
  %tobool14.not = icmp eq ptr %call13, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %info.sroa.26.1)
  %tobool17.not = icmp eq i32 %info.sroa.26.1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %info.sroa.33.0)
  %tobool18.not = icmp eq i32 %info.sroa.33.0, 0
  %or.cond = select i1 %tobool17.not, i1 %tobool18.not, i1 false
  br i1 %or.cond, label %if.then19, label %if.else

if.then19:                                        ; preds = %if.end10
  br i1 %tobool14.not, label %if.then21, label %if.then19.if.end48_crit_edge

if.then19.if.end48_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end48

if.then21:                                        ; preds = %if.then19
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %tcfg) #10
  %56 = call ptr @memset(ptr %tcfg, i32 0, i32 28)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %info.sroa.8258.1)
  %cmp22 = icmp slt i32 %info.sroa.8258.1, 0
  br i1 %cmp22, label %if.then21.cleanup.thread_crit_edge, label %if.end25

if.then21.cleanup.thread_crit_edge:               ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread

if.end25:                                         ; preds = %if.then21
  %call29 = call i32 @l2tp_tunnel_create(i32 noundef %info.sroa.8258.1, i32 noundef %info.sroa.0.1, i32 noundef %info.sroa.13.1, i32 noundef %info.sroa.20.1, ptr noundef nonnull %tcfg, ptr noundef nonnull %tunnel) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp30 = icmp slt i32 %call29, 0
  br i1 %cmp30, label %if.end25.cleanup.thread_crit_edge, label %if.end33

if.end25.cleanup.thread_crit_edge:                ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread

if.end33:                                         ; preds = %if.end25
  %57 = ptrtoint ptr %tunnel to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %tunnel, align 4
  call void @l2tp_tunnel_inc_refcount(ptr noundef %58) #10
  %59 = ptrtoint ptr %tunnel to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %tunnel, align 4
  %61 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %skc_net.i, align 4
  %call35 = call i32 @l2tp_tunnel_register(ptr noundef %60, ptr noundef %62, ptr noundef nonnull %tcfg) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %cmp36 = icmp slt i32 %call35, 0
  br i1 %cmp36, label %if.then38, label %cleanup

if.then38:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  %63 = ptrtoint ptr %tunnel to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %tunnel, align 4
  call void @kfree(ptr noundef %64) #10
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then38, %if.end25.cleanup.thread_crit_edge, %if.then21.cleanup.thread_crit_edge
  %error.0.ph = phi i32 [ %call29, %if.end25.cleanup.thread_crit_edge ], [ -9, %if.then21.cleanup.thread_crit_edge ], [ %call35, %if.then38 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %tcfg) #10
  br label %if.end177

cleanup:                                          ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %tcfg) #10
  br label %if.end48

if.else:                                          ; preds = %if.end10
  br i1 %tobool14.not, label %if.else.if.end177_crit_edge, label %if.end43

if.else.if.end177_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end177

if.end43:                                         ; preds = %if.else
  %sock44 = getelementptr inbounds %struct.l2tp_tunnel, ptr %call13, i32 0, i32 16
  %65 = ptrtoint ptr %sock44 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %sock44, align 4
  %tobool45.not = icmp eq ptr %66, null
  br i1 %tobool45.not, label %if.end43.if.then176_crit_edge, label %if.end43.if.end48_crit_edge

if.end43.if.end48_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end48

if.end43.if.then176_crit_edge:                    ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then176

if.end48:                                         ; preds = %if.end43.if.end48_crit_edge, %cleanup, %if.then19.if.end48_crit_edge
  %info.sroa.33.0273 = phi i32 [ %info.sroa.33.0, %if.end43.if.end48_crit_edge ], [ 0, %if.then19.if.end48_crit_edge ], [ 0, %cleanup ]
  %extract.t246.not = phi i1 [ true, %if.end43.if.end48_crit_edge ], [ true, %if.then19.if.end48_crit_edge ], [ false, %cleanup ]
  %67 = ptrtoint ptr %tunnel to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %tunnel, align 4
  %peer_tunnel_id49 = getelementptr inbounds %struct.l2tp_tunnel, ptr %68, i32 0, i32 7
  %69 = ptrtoint ptr %peer_tunnel_id49 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %peer_tunnel_id49, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %cmp50 = icmp eq i32 %70, 0
  br i1 %cmp50, label %if.then52, label %if.end48.if.end55_crit_edge

if.end48.if.end55_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end55

if.then52:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  %71 = ptrtoint ptr %peer_tunnel_id49 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %info.sroa.20.1, ptr %peer_tunnel_id49, align 4
  br label %if.end55

if.end55:                                         ; preds = %if.then52, %if.end48.if.end55_crit_edge
  %call57 = call ptr @l2tp_tunnel_get_session(ptr noundef %68, i32 noundef %info.sroa.26.1) #10
  %tobool58.not = icmp eq ptr %call57, null
  br i1 %tobool58.not, label %if.else81, label %if.then59

if.then59:                                        ; preds = %if.end55
  %pwtype = getelementptr inbounds %struct.l2tp_session, ptr %call57, i32 0, i32 26
  %72 = ptrtoint ptr %pwtype to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %pwtype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %73)
  %cmp60.not = icmp eq i32 %73, 7
  br i1 %cmp60.not, label %if.end63, label %if.then62

if.then62:                                        ; preds = %if.then59
  br i1 %extract.t246.not, label %if.then62.if.end171.thread360_crit_edge, label %if.then62.if.then169.thread_crit_edge

if.then62.if.then169.thread_crit_edge:            ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then169.thread

if.then62.if.end171.thread360_crit_edge:          ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end171.thread360

if.end63:                                         ; preds = %if.then59
  %sk_lock = getelementptr inbounds %struct.l2tp_session, ptr %call57, i32 1, i32 1
  call void @mutex_lock_nested(ptr noundef %sk_lock, i32 noundef 0) #10
  %dep_map = getelementptr inbounds %struct.l2tp_session, ptr %call57, i32 1, i32 13, i32 2
  %call.i = call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool67.not = icmp eq i32 %call.i, 0
  br i1 %tobool67.not, label %land.lhs.true68, label %if.end63.do.end_crit_edge

if.end63.do.end_crit_edge:                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true68:                                  ; preds = %if.end63
  %call69 = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %land.lhs.true68.do.end_crit_edge, label %land.lhs.true71

land.lhs.true68.do.end_crit_edge:                 ; preds = %land.lhs.true68
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true71:                                  ; preds = %land.lhs.true68
  %.b253 = load i1, ptr @pppol2tp_connect.__warned, align 1
  br i1 %.b253, label %land.lhs.true71.do.end_crit_edge, label %if.then73

land.lhs.true71.do.end_crit_edge:                 ; preds = %land.lhs.true71
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then73:                                        ; preds = %land.lhs.true71
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @pppol2tp_connect.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 763, ptr noundef nonnull @.str.25) #10
  br label %do.end

do.end:                                           ; preds = %if.then73, %land.lhs.true71.do.end_crit_edge, %land.lhs.true68.do.end_crit_edge, %if.end63.do.end_crit_edge
  %sk75 = getelementptr inbounds %struct.l2tp_session, ptr %call57, i32 1, i32 13, i32 2, i32 0, i32 0, i32 4, i32 2
  %74 = ptrtoint ptr %sk75 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %sk75, align 4
  %tobool76.not = icmp eq ptr %75, null
  br i1 %tobool76.not, label %lor.lhs.false, label %do.end.if.then78_crit_edge

do.end.if.then78_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then78

lor.lhs.false:                                    ; preds = %do.end
  %__sk = getelementptr inbounds %struct.l2tp_session, ptr %call57, i32 1, i32 13, i32 2, i32 0, i32 0, i32 4, i32 3
  %76 = ptrtoint ptr %__sk to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %__sk, align 4
  %tobool77.not = icmp eq ptr %77, null
  br i1 %tobool77.not, label %lor.lhs.false.if.end97_crit_edge, label %lor.lhs.false.if.then78_crit_edge

lor.lhs.false.if.then78_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then78

lor.lhs.false.if.end97_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end97

if.then78:                                        ; preds = %lor.lhs.false.if.then78_crit_edge, %do.end.if.then78_crit_edge
  call void @mutex_unlock(ptr noundef %sk_lock) #10
  br i1 %extract.t246.not, label %if.then78.if.end171.thread360_crit_edge, label %if.then78.if.then169.thread_crit_edge

if.then78.if.then169.thread_crit_edge:            ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then169.thread

if.then78.if.end171.thread360_crit_edge:          ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end171.thread360

if.else81:                                        ; preds = %if.end55
  %78 = ptrtoint ptr %cfg to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 7, ptr %cfg, align 4
  %79 = ptrtoint ptr %tunnel to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %tunnel, align 4
  %call84 = call ptr @l2tp_session_create(i32 noundef 112, ptr noundef %80, i32 noundef %info.sroa.26.1, i32 noundef %info.sroa.33.0273, ptr noundef nonnull %cfg) #10
  %cmp.i = icmp ugt ptr %call84, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %end, label %if.end88

if.end88:                                         ; preds = %if.else81
  call fastcc void @pppol2tp_session_init(ptr noundef %call84)
  call void @l2tp_session_inc_refcount(ptr noundef %call84) #10
  %sk_lock90 = getelementptr inbounds %struct.l2tp_session, ptr %call84, i32 1, i32 1
  call void @mutex_lock_nested(ptr noundef %sk_lock90, i32 noundef 0) #10
  %81 = ptrtoint ptr %tunnel to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %tunnel, align 4
  %call91 = call i32 @l2tp_session_register(ptr noundef %call84, ptr noundef %82) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %cmp92 = icmp slt i32 %call91, 0
  br i1 %cmp92, label %if.then164.thread318, label %if.end88.if.end97_crit_edge

if.end88.if.end97_crit_edge:                      ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end97

if.end97:                                         ; preds = %if.end88.if.end97_crit_edge, %lor.lhs.false.if.end97_crit_edge
  %session.0 = phi ptr [ %call57, %lor.lhs.false.if.end97_crit_edge ], [ %call84, %if.end88.if.end97_crit_edge ]
  %session_id98 = getelementptr inbounds %struct.l2tp_session, ptr %session.0, i32 0, i32 3
  %83 = ptrtoint ptr %session_id98 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %session_id98, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %cmp99 = icmp eq i32 %84, 0
  br i1 %cmp99, label %land.lhs.true101, label %if.end97.if.end106_crit_edge

if.end97.if.end106_crit_edge:                     ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end106

land.lhs.true101:                                 ; preds = %if.end97
  %peer_session_id102 = getelementptr inbounds %struct.l2tp_session, ptr %session.0, i32 0, i32 4
  %85 = ptrtoint ptr %peer_session_id102 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %peer_session_id102, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %cmp103 = icmp eq i32 %86, 0
  br i1 %cmp103, label %land.lhs.true101.end.thread300_crit_edge, label %land.lhs.true101.if.end106_crit_edge

land.lhs.true101.if.end106_crit_edge:             ; preds = %land.lhs.true101
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end106

land.lhs.true101.end.thread300_crit_edge:         ; preds = %land.lhs.true101
  call void @__sanitizer_cov_trace_pc() #12
  br label %end.thread300

if.end106:                                        ; preds = %land.lhs.true101.if.end106_crit_edge, %if.end97.if.end106_crit_edge
  %chan = getelementptr inbounds %struct.pppox_sock, ptr %1, i32 0, i32 1
  %hdrlen = getelementptr inbounds %struct.pppox_sock, ptr %1, i32 0, i32 1, i32 3
  %87 = ptrtoint ptr %hdrlen to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 6, ptr %hdrlen, align 4
  %88 = ptrtoint ptr %chan to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %1, ptr %chan, align 8
  %ops = getelementptr inbounds %struct.pppox_sock, ptr %1, i32 0, i32 1, i32 1
  %89 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr @pppol2tp_chan_ops, ptr %ops, align 4
  %90 = ptrtoint ptr %tunnel to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %tunnel, align 4
  %call109 = call fastcc i32 @pppol2tp_tunnel_mtu(ptr noundef %91)
  %mtu = getelementptr inbounds %struct.pppox_sock, ptr %1, i32 0, i32 1, i32 2
  %92 = ptrtoint ptr %mtu to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %call109, ptr %mtu, align 8
  %93 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %skc_net.i, align 4
  %call113 = call i32 @ppp_register_net_channel(ptr noundef %94, ptr noundef %chan) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call113)
  %tobool114.not = icmp eq i32 %call113, 0
  br i1 %tobool114.not, label %if.end106.end.thread300_crit_edge, label %if.then164

if.end106.end.thread300_crit_edge:                ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #12
  br label %end.thread300

end.thread300:                                    ; preds = %if.end106.end.thread300_crit_edge, %land.lhs.true101.end.thread300_crit_edge
  %95 = ptrtoint ptr %sk_user_data to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %session.0, ptr %sk_user_data, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !137
  %sk148 = getelementptr inbounds %struct.l2tp_session, ptr %session.0, i32 1, i32 13, i32 2, i32 0, i32 0, i32 4, i32 2
  %96 = ptrtoint ptr %sk148 to i32
  call void @__asan_store4_noabort(i32 %96)
  store volatile ptr %1, ptr %sk148, align 4
  %sk_lock160 = getelementptr inbounds %struct.l2tp_session, ptr %session.0, i32 1, i32 1
  call void @mutex_unlock(ptr noundef %sk_lock160) #10
  %97 = ptrtoint ptr %skc_state to i32
  call void @__asan_store1_noabort(i32 %97)
  store volatile i8 1, ptr %skc_state, align 2
  br label %if.then176

end:                                              ; preds = %if.else81
  %98 = ptrtoint ptr %call84 to i32
  br i1 %extract.t246.not, label %end.if.then176_crit_edge, label %end.if.then169_crit_edge

end.if.then169_crit_edge:                         ; preds = %end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then169

end.if.then176_crit_edge:                         ; preds = %end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then176

if.then164.thread318:                             ; preds = %if.end88
  call void @mutex_unlock(ptr noundef %sk_lock90) #10
  call void @kfree(ptr noundef %call84) #10
  br i1 %extract.t246.not, label %if.then164.thread318.if.then176_crit_edge, label %if.then164.thread318.if.then169_crit_edge

if.then164.thread318.if.then169_crit_edge:        ; preds = %if.then164.thread318
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then169

if.then164.thread318.if.then176_crit_edge:        ; preds = %if.then164.thread318
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then176

if.then164:                                       ; preds = %if.end106
  %sk_lock116 = getelementptr inbounds %struct.l2tp_session, ptr %session.0, i32 1, i32 1
  call void @mutex_unlock(ptr noundef %sk_lock116) #10
  br i1 %tobool58.not, label %if.then166, label %if.end167

if.then166:                                       ; preds = %if.then164
  call void @l2tp_session_delete(ptr noundef %session.0) #10
  br i1 %extract.t246.not, label %if.then166.if.then173_crit_edge, label %if.then166.if.then169.thread_crit_edge

if.then166.if.then169.thread_crit_edge:           ; preds = %if.then166
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then169.thread

if.then166.if.then173_crit_edge:                  ; preds = %if.then166
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then173

if.end167:                                        ; preds = %if.then164
  br i1 %extract.t246.not, label %if.end167.if.then173_crit_edge, label %if.end167.if.then169.thread_crit_edge

if.end167.if.then169.thread_crit_edge:            ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then169.thread

if.end167.if.then173_crit_edge:                   ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then173

if.then169.thread:                                ; preds = %if.end167.if.then169.thread_crit_edge, %if.then166.if.then169.thread_crit_edge, %if.then78.if.then169.thread_crit_edge, %if.then62.if.then169.thread_crit_edge
  %session.1291328.ph = phi ptr [ %call57, %if.then78.if.then169.thread_crit_edge ], [ %call57, %if.then62.if.then169.thread_crit_edge ], [ %session.0, %if.end167.if.then169.thread_crit_edge ], [ %session.0, %if.then166.if.then169.thread_crit_edge ]
  %error.2298314327.ph = phi i32 [ -17, %if.then78.if.then169.thread_crit_edge ], [ -91, %if.then62.if.then169.thread_crit_edge ], [ %call113, %if.end167.if.then169.thread_crit_edge ], [ %call113, %if.then166.if.then169.thread_crit_edge ]
  %99 = ptrtoint ptr %tunnel to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %tunnel, align 4
  call void @l2tp_tunnel_delete(ptr noundef %100) #10
  call void @l2tp_session_dec_refcount(ptr noundef %session.1291328.ph) #10
  br label %if.then176

if.then169:                                       ; preds = %if.then164.thread318.if.then169_crit_edge, %end.if.then169_crit_edge
  %error.2298314327 = phi i32 [ %call91, %if.then164.thread318.if.then169_crit_edge ], [ %98, %end.if.then169_crit_edge ]
  %101 = ptrtoint ptr %tunnel to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %tunnel, align 4
  call void @l2tp_tunnel_delete(ptr noundef %102) #10
  br label %if.then176

if.end171.thread360:                              ; preds = %if.then78.if.end171.thread360_crit_edge, %if.then62.if.end171.thread360_crit_edge
  %error.2299.ph358 = phi i32 [ -17, %if.then78.if.end171.thread360_crit_edge ], [ -91, %if.then62.if.end171.thread360_crit_edge ]
  call void @l2tp_session_dec_refcount(ptr noundef nonnull %call57) #10
  br label %if.then176

if.then173:                                       ; preds = %if.end167.if.then173_crit_edge, %if.then166.if.then173_crit_edge
  call void @l2tp_session_dec_refcount(ptr noundef %session.0) #10
  br label %if.then176

if.then176:                                       ; preds = %if.then173, %if.end171.thread360, %if.then169, %if.then169.thread, %if.then164.thread318.if.then176_crit_edge, %end.if.then176_crit_edge, %end.thread300, %if.end43.if.then176_crit_edge
  %error.2299333347 = phi i32 [ %call113, %if.then173 ], [ 0, %end.thread300 ], [ %error.2298314327.ph, %if.then169.thread ], [ %error.2299.ph358, %if.end171.thread360 ], [ %error.2298314327, %if.then169 ], [ -2, %if.end43.if.then176_crit_edge ], [ %98, %end.if.then176_crit_edge ], [ %call91, %if.then164.thread318.if.then176_crit_edge ]
  %103 = ptrtoint ptr %tunnel to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %tunnel, align 4
  call void @l2tp_tunnel_dec_refcount(ptr noundef %104) #10
  br label %if.end177

if.end177:                                        ; preds = %if.then176, %if.else.if.end177_crit_edge, %cleanup.thread, %if.end7.if.end177_crit_edge, %if.end4.if.end177_crit_edge, %if.end.if.end177_crit_edge
  %error.2299333346 = phi i32 [ %error.2299333347, %if.then176 ], [ %error.0.ph, %cleanup.thread ], [ -16, %if.end.if.end177_crit_edge ], [ -114, %if.end4.if.end177_crit_edge ], [ -22, %if.end7.if.end177_crit_edge ], [ -2, %if.else.if.end177_crit_edge ]
  call void @release_sock(ptr noundef %1) #10
  br label %cleanup178

cleanup178:                                       ; preds = %if.end177, %sw.bb61.i.cleanup178_crit_edge, %sw.bb33.i.cleanup178_crit_edge, %sw.bb9.i.cleanup178_crit_edge, %sw.bb.i.cleanup178_crit_edge, %entry.cleanup178_crit_edge
  %retval.0 = phi i32 [ %error.2299333346, %if.end177 ], [ -22, %entry.cleanup178_crit_edge ], [ -22, %sw.bb.i.cleanup178_crit_edge ], [ -22, %sw.bb9.i.cleanup178_crit_edge ], [ -22, %sw.bb33.i.cleanup178_crit_edge ], [ -22, %sw.bb61.i.cleanup178_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %cfg) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tunnel) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_socketpair(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_accept(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pppol2tp_getname(ptr nocapture noundef readonly %sock, ptr nocapture noundef writeonly %uaddr, i32 noundef %peer) #2 align 64 {
entry:
  %sp49.sroa.15 = alloca { i32, %struct.in6_addr }, align 4
  %sp97.sroa.15 = alloca { i32, %struct.in6_addr }, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.end_crit_edge, label %if.end

entry.end_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %end

if.end:                                           ; preds = %entry
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load volatile i8, ptr %skc_state, align 2
  %4 = and i8 %3, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool2.not = icmp eq i8 %4, 0
  br i1 %tobool2.not, label %if.end.end_crit_edge, label %if.end4

if.end.end_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %end

if.end4:                                          ; preds = %if.end
  %call = tail call fastcc ptr @pppol2tp_sock_to_session(ptr noundef nonnull %1)
  %tobool5.not = icmp eq ptr %call, null
  br i1 %tobool5.not, label %if.end4.end_crit_edge, label %if.end7

if.end4.end_crit_edge:                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %end

if.end7:                                          ; preds = %if.end4
  %priv.i = getelementptr inbounds %struct.l2tp_session, ptr %call, i32 0, i32 32
  %tunnel9 = getelementptr inbounds %struct.l2tp_session, ptr %call, i32 0, i32 2
  %5 = ptrtoint ptr %tunnel9 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tunnel9, align 4
  %sock10 = getelementptr inbounds %struct.l2tp_tunnel, ptr %6, i32 0, i32 16
  %7 = ptrtoint ptr %sock10 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sock10, align 4
  %version = getelementptr inbounds %struct.l2tp_tunnel, ptr %6, i32 0, i32 8
  %9 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %version, align 4
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %10, label %if.end7.if.end178_crit_edge [
    i32 2, label %land.lhs.true
    i32 3, label %land.lhs.true89
  ]

if.end7.if.end178_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end178

land.lhs.true:                                    ; preds = %if.end7
  %skc_family = getelementptr inbounds %struct.sock_common, ptr %8, i32 0, i32 3
  %12 = ptrtoint ptr %skc_family to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %skc_family, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %13)
  %cmp16 = icmp eq i16 %13, 2
  br i1 %cmp16, label %if.then18, label %land.lhs.true41

if.then18:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %fd = getelementptr inbounds %struct.l2tp_tunnel, ptr %6, i32 0, i32 17
  %14 = ptrtoint ptr %fd to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %fd, align 4
  %16 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %priv.i, align 4
  %tunnel_id = getelementptr inbounds %struct.l2tp_tunnel, ptr %6, i32 0, i32 6
  %18 = ptrtoint ptr %tunnel_id to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tunnel_id, align 4
  %conv21 = trunc i32 %19 to i16
  %peer_tunnel_id = getelementptr inbounds %struct.l2tp_tunnel, ptr %6, i32 0, i32 7
  %20 = ptrtoint ptr %peer_tunnel_id to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %peer_tunnel_id, align 4
  %conv23 = trunc i32 %21 to i16
  %session_id = getelementptr inbounds %struct.l2tp_session, ptr %call, i32 0, i32 3
  %22 = ptrtoint ptr %session_id to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %session_id, align 4
  %conv25 = trunc i32 %23 to i16
  %peer_session_id = getelementptr inbounds %struct.l2tp_session, ptr %call, i32 0, i32 4
  %24 = ptrtoint ptr %peer_session_id to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %peer_session_id, align 4
  %conv27 = trunc i32 %25 to i16
  %26 = getelementptr inbounds %struct.sock_common, ptr %8, i32 0, i32 2
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %26, align 4
  %29 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %8, align 8
  %31 = ptrtoint ptr %uaddr to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 24, ptr %uaddr, align 2
  %sp.sroa.6.0.uaddr.sroa_idx = getelementptr inbounds i8, ptr %uaddr, i32 2
  %32 = ptrtoint ptr %sp.sroa.6.0.uaddr.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %32, i32 4)
  store i32 1, ptr %sp.sroa.6.0.uaddr.sroa_idx, align 2
  %sp.sroa.7.0.uaddr.sroa_idx = getelementptr inbounds i8, ptr %uaddr, i32 6
  %33 = ptrtoint ptr %sp.sroa.7.0.uaddr.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %33, i32 4)
  store i32 %17, ptr %sp.sroa.7.0.uaddr.sroa_idx, align 2
  %sp.sroa.8.0.uaddr.sroa_idx = getelementptr inbounds i8, ptr %uaddr, i32 10
  %34 = ptrtoint ptr %sp.sroa.8.0.uaddr.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %34, i32 4)
  store i32 %15, ptr %sp.sroa.8.0.uaddr.sroa_idx, align 2
  %sp.sroa.9.0.uaddr.sroa_idx = getelementptr inbounds i8, ptr %uaddr, i32 14
  %35 = ptrtoint ptr %sp.sroa.9.0.uaddr.sroa_idx to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 2, ptr %sp.sroa.9.0.uaddr.sroa_idx, align 2
  %sp.sroa.10.0.uaddr.sroa_idx = getelementptr inbounds i8, ptr %uaddr, i32 16
  %36 = ptrtoint ptr %sp.sroa.10.0.uaddr.sroa_idx to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %28, ptr %sp.sroa.10.0.uaddr.sroa_idx, align 2
  %sp.sroa.11.0.uaddr.sroa_idx = getelementptr inbounds i8, ptr %uaddr, i32 18
  %37 = ptrtoint ptr %sp.sroa.11.0.uaddr.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %37, i32 4)
  store i32 %30, ptr %sp.sroa.11.0.uaddr.sroa_idx, align 2
  %sp.sroa.12.0.uaddr.sroa_idx = getelementptr inbounds i8, ptr %uaddr, i32 22
  %38 = ptrtoint ptr %sp.sroa.12.0.uaddr.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %38, i32 8)
  store i64 0, ptr %sp.sroa.12.0.uaddr.sroa_idx, align 2
  %sp.sroa.12266.0.uaddr.sroa_idx = getelementptr inbounds i8, ptr %uaddr, i32 30
  %39 = ptrtoint ptr %sp.sroa.12266.0.uaddr.sroa_idx to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %conv21, ptr %sp.sroa.12266.0.uaddr.sroa_idx, align 2
  %sp.sroa.13.0.uaddr.sroa_idx = getelementptr inbounds i8, ptr %uaddr, i32 32
  %40 = ptrtoint ptr %sp.sroa.13.0.uaddr.sroa_idx to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %conv25, ptr %sp.sroa.13.0.uaddr.sroa_idx, align 2
  %sp.sroa.14.0.uaddr.sroa_idx = getelementptr inbounds i8, ptr %uaddr, i32 34
  %41 = ptrtoint ptr %sp.sroa.14.0.uaddr.sroa_idx to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %conv23, ptr %sp.sroa.14.0.uaddr.sroa_idx, align 2
  %sp.sroa.15.0.uaddr.sroa_idx = getelementptr inbounds i8, ptr %uaddr, i32 36
  %42 = ptrtoint ptr %sp.sroa.15.0.uaddr.sroa_idx to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %conv27, ptr %sp.sroa.15.0.uaddr.sroa_idx, align 2
  br label %if.end178

land.lhs.true41:                                  ; preds = %land.lhs.true
  %43 = ptrtoint ptr %skc_family to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %skc_family, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %44)
  %cmp46 = icmp eq i16 %44, 10
  br i1 %cmp46, label %if.then48, label %land.lhs.true41.if.end178_crit_edge

land.lhs.true41.if.end178_crit_edge:              ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end178

if.then48:                                        ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sp49.sroa.15)
  %45 = ptrtoint ptr %sp49.sroa.15 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %sp49.sroa.15, align 4
  %fd52 = getelementptr inbounds %struct.l2tp_tunnel, ptr %6, i32 0, i32 17
  %46 = ptrtoint ptr %fd52 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %fd52, align 4
  %48 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %priv.i, align 4
  %tunnel_id58 = getelementptr inbounds %struct.l2tp_tunnel, ptr %6, i32 0, i32 6
  %50 = ptrtoint ptr %tunnel_id58 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %tunnel_id58, align 4
  %conv59 = trunc i32 %51 to i16
  %peer_tunnel_id62 = getelementptr inbounds %struct.l2tp_tunnel, ptr %6, i32 0, i32 7
  %52 = ptrtoint ptr %peer_tunnel_id62 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %peer_tunnel_id62, align 4
  %conv63 = trunc i32 %53 to i16
  %session_id66 = getelementptr inbounds %struct.l2tp_session, ptr %call, i32 0, i32 3
  %54 = ptrtoint ptr %session_id66 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %session_id66, align 4
  %conv67 = trunc i32 %55 to i16
  %peer_session_id70 = getelementptr inbounds %struct.l2tp_session, ptr %call, i32 0, i32 4
  %56 = ptrtoint ptr %peer_session_id70 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %peer_session_id70, align 4
  %conv71 = trunc i32 %57 to i16
  %58 = getelementptr inbounds %struct.sock_common, ptr %8, i32 0, i32 2
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %58, align 4
  %skc_v6_daddr = getelementptr inbounds %struct.sock_common, ptr %8, i32 0, i32 10
  %sp49.sroa.15.30.sin6_addr.sroa_idx = getelementptr inbounds i8, ptr %sp49.sroa.15, i32 4
  %61 = call ptr @memcpy(ptr %sp49.sroa.15.30.sin6_addr.sroa_idx, ptr %skc_v6_daddr, i32 16)
  %62 = ptrtoint ptr %uaddr to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 24, ptr %uaddr, align 2
  %sp49.sroa.6.0.uaddr.sroa_idx = getelementptr inbounds i8, ptr %uaddr, i32 2
  %63 = ptrtoint ptr %sp49.sroa.6.0.uaddr.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %63, i32 4)
  store i32 1, ptr %sp49.sroa.6.0.uaddr.sroa_idx, align 2
  %sp49.sroa.7.0.uaddr.sroa_idx = getelementptr inbounds i8, ptr %uaddr, i32 6
  %64 = ptrtoint ptr %sp49.sroa.7.0.uaddr.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %64, i32 4)
  store i32 %49, ptr %sp49.sroa.7.0.uaddr.sroa_idx, align 2
  %sp49.sroa.8.0.uaddr.sroa_idx = getelementptr inbounds i8, ptr %uaddr, i32 10
  %65 = ptrtoint ptr %sp49.sroa.8.0.uaddr.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %65, i32 4)
  store i32 %47, ptr %sp49.sroa.8.0.uaddr.sroa_idx, align 2
  %sp49.sroa.9.0.uaddr.sroa_idx = getelementptr inbounds i8, ptr %uaddr, i32 14
  %66 = ptrtoint ptr %sp49.sroa.9.0.uaddr.sroa_idx to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 %conv59, ptr %sp49.sroa.9.0.uaddr.sroa_idx, align 2
  %sp49.sroa.10.0.uaddr.sroa_idx = getelementptr inbounds i8, ptr %uaddr, i32 16
  %67 = ptrtoint ptr %sp49.sroa.10.0.uaddr.sroa_idx to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 %conv67, ptr %sp49.sroa.10.0.uaddr.sroa_idx, align 2
  %sp49.sroa.11.0.uaddr.sroa_idx = getelementptr inbounds i8, ptr %uaddr, i32 18
  %68 = ptrtoint ptr %sp49.sroa.11.0.uaddr.sroa_idx to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 %conv63, ptr %sp49.sroa.11.0.uaddr.sroa_idx, align 2
  %sp49.sroa.12.0.uaddr.sroa_idx = getelementptr inbounds i8, ptr %uaddr, i32 20
  %69 = ptrtoint ptr %sp49.sroa.12.0.uaddr.sroa_idx to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 %conv71, ptr %sp49.sroa.12.0.uaddr.sroa_idx, align 2
  %sp49.sroa.13.0.uaddr.sroa_idx = getelementptr inbounds i8, ptr %uaddr, i32 22
  %70 = ptrtoint ptr %sp49.sroa.13.0.uaddr.sroa_idx to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 10, ptr %sp49.sroa.13.0.uaddr.sroa_idx, align 2
  %sp49.sroa.14.0.uaddr.sroa_idx = getelementptr inbounds i8, ptr %uaddr, i32 24
  %71 = ptrtoint ptr %sp49.sroa.14.0.uaddr.sroa_idx to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 %60, ptr %sp49.sroa.14.0.uaddr.sroa_idx, align 2
  %sp49.sroa.15.0.uaddr.sroa_idx = getelementptr inbounds i8, ptr %uaddr, i32 26
  %72 = call ptr @memcpy(ptr %sp49.sroa.15.0.uaddr.sroa_idx, ptr %sp49.sroa.15, i32 20)
  %sp49.sroa.16.0.uaddr.sroa_idx = getelementptr inbounds i8, ptr %uaddr, i32 46
  %73 = ptrtoint ptr %sp49.sroa.16.0.uaddr.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %73, i32 4)
  store i32 0, ptr %sp49.sroa.16.0.uaddr.sroa_idx, align 2
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sp49.sroa.15)
  br label %if.end178

land.lhs.true89:                                  ; preds = %if.end7
  %skc_family92 = getelementptr inbounds %struct.sock_common, ptr %8, i32 0, i32 3
  %74 = ptrtoint ptr %skc_family92 to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %skc_family92, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %75)
  %cmp94 = icmp eq i16 %75, 10
  br i1 %cmp94, label %if.then96, label %if.then137

if.then96:                                        ; preds = %land.lhs.true89
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sp97.sroa.15)
  %76 = ptrtoint ptr %sp97.sroa.15 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 0, ptr %sp97.sroa.15, align 4
  %fd100 = getelementptr inbounds %struct.l2tp_tunnel, ptr %6, i32 0, i32 17
  %77 = ptrtoint ptr %fd100 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %fd100, align 4
  %79 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %priv.i, align 4
  %tunnel_id106 = getelementptr inbounds %struct.l2tp_tunnel, ptr %6, i32 0, i32 6
  %81 = ptrtoint ptr %tunnel_id106 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %tunnel_id106, align 4
  %peer_tunnel_id109 = getelementptr inbounds %struct.l2tp_tunnel, ptr %6, i32 0, i32 7
  %83 = ptrtoint ptr %peer_tunnel_id109 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %peer_tunnel_id109, align 4
  %session_id112 = getelementptr inbounds %struct.l2tp_session, ptr %call, i32 0, i32 3
  %85 = ptrtoint ptr %session_id112 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %session_id112, align 4
  %peer_session_id115 = getelementptr inbounds %struct.l2tp_session, ptr %call, i32 0, i32 4
  %87 = ptrtoint ptr %peer_session_id115 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %peer_session_id115, align 4
  %89 = getelementptr inbounds %struct.sock_common, ptr %8, i32 0, i32 2
  %90 = ptrtoint ptr %89 to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %89, align 4
  %skc_v6_daddr132 = getelementptr inbounds %struct.sock_common, ptr %8, i32 0, i32 10
  %sp97.sroa.15.38.sin6_addr129.sroa_idx = getelementptr inbounds i8, ptr %sp97.sroa.15, i32 4
  %92 = call ptr @memcpy(ptr %sp97.sroa.15.38.sin6_addr129.sroa_idx, ptr %skc_v6_daddr132, i32 16)
  %93 = ptrtoint ptr %uaddr to i32
  call void @__asan_store2_noabort(i32 %93)
  store i16 24, ptr %uaddr, align 2
  %sp97.sroa.6.0.uaddr.sroa_idx = getelementptr inbounds i8, ptr %uaddr, i32 2
  %94 = ptrtoint ptr %sp97.sroa.6.0.uaddr.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %94, i32 4)
  store i32 1, ptr %sp97.sroa.6.0.uaddr.sroa_idx, align 2
  %sp97.sroa.7.0.uaddr.sroa_idx = getelementptr inbounds i8, ptr %uaddr, i32 6
  %95 = ptrtoint ptr %sp97.sroa.7.0.uaddr.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %95, i32 4)
  store i32 %80, ptr %sp97.sroa.7.0.uaddr.sroa_idx, align 2
  %sp97.sroa.8.0.uaddr.sroa_idx = getelementptr inbounds i8, ptr %uaddr, i32 10
  %96 = ptrtoint ptr %sp97.sroa.8.0.uaddr.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %96, i32 4)
  store i32 %78, ptr %sp97.sroa.8.0.uaddr.sroa_idx, align 2
  %sp97.sroa.9.0.uaddr.sroa_idx = getelementptr inbounds i8, ptr %uaddr, i32 14
  %97 = ptrtoint ptr %sp97.sroa.9.0.uaddr.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %97, i32 4)
  store i32 %82, ptr %sp97.sroa.9.0.uaddr.sroa_idx, align 2
  %sp97.sroa.10.0.uaddr.sroa_idx = getelementptr inbounds i8, ptr %uaddr, i32 18
  %98 = ptrtoint ptr %sp97.sroa.10.0.uaddr.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %98, i32 4)
  store i32 %86, ptr %sp97.sroa.10.0.uaddr.sroa_idx, align 2
  %sp97.sroa.11.0.uaddr.sroa_idx = getelementptr inbounds i8, ptr %uaddr, i32 22
  %99 = ptrtoint ptr %sp97.sroa.11.0.uaddr.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %99, i32 4)
  store i32 %84, ptr %sp97.sroa.11.0.uaddr.sroa_idx, align 2
  %sp97.sroa.12.0.uaddr.sroa_idx = getelementptr inbounds i8, ptr %uaddr, i32 26
  %100 = ptrtoint ptr %sp97.sroa.12.0.uaddr.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %100, i32 4)
  store i32 %88, ptr %sp97.sroa.12.0.uaddr.sroa_idx, align 2
  %sp97.sroa.13.0.uaddr.sroa_idx = getelementptr inbounds i8, ptr %uaddr, i32 30
  %101 = ptrtoint ptr %sp97.sroa.13.0.uaddr.sroa_idx to i32
  call void @__asan_store2_noabort(i32 %101)
  store i16 10, ptr %sp97.sroa.13.0.uaddr.sroa_idx, align 2
  %sp97.sroa.14.0.uaddr.sroa_idx = getelementptr inbounds i8, ptr %uaddr, i32 32
  %102 = ptrtoint ptr %sp97.sroa.14.0.uaddr.sroa_idx to i32
  call void @__asan_store2_noabort(i32 %102)
  store i16 %91, ptr %sp97.sroa.14.0.uaddr.sroa_idx, align 2
  %sp97.sroa.15.0.uaddr.sroa_idx = getelementptr inbounds i8, ptr %uaddr, i32 34
  %103 = call ptr @memcpy(ptr %sp97.sroa.15.0.uaddr.sroa_idx, ptr %sp97.sroa.15, i32 20)
  %sp97.sroa.16.0.uaddr.sroa_idx = getelementptr inbounds i8, ptr %uaddr, i32 54
  %104 = ptrtoint ptr %sp97.sroa.16.0.uaddr.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %104, i32 4)
  store i32 0, ptr %sp97.sroa.16.0.uaddr.sroa_idx, align 2
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sp97.sroa.15)
  br label %if.end178

if.then137:                                       ; preds = %land.lhs.true89
  call void @__sanitizer_cov_trace_pc() #12
  %fd141 = getelementptr inbounds %struct.l2tp_tunnel, ptr %6, i32 0, i32 17
  %105 = ptrtoint ptr %fd141 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %fd141, align 4
  %107 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %priv.i, align 4
  %tunnel_id147 = getelementptr inbounds %struct.l2tp_tunnel, ptr %6, i32 0, i32 6
  %109 = ptrtoint ptr %tunnel_id147 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %tunnel_id147, align 4
  %peer_tunnel_id150 = getelementptr inbounds %struct.l2tp_tunnel, ptr %6, i32 0, i32 7
  %111 = ptrtoint ptr %peer_tunnel_id150 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %peer_tunnel_id150, align 4
  %session_id153 = getelementptr inbounds %struct.l2tp_session, ptr %call, i32 0, i32 3
  %113 = ptrtoint ptr %session_id153 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %session_id153, align 4
  %peer_session_id156 = getelementptr inbounds %struct.l2tp_session, ptr %call, i32 0, i32 4
  %115 = ptrtoint ptr %peer_session_id156 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %peer_session_id156, align 4
  %117 = getelementptr inbounds %struct.sock_common, ptr %8, i32 0, i32 2
  %118 = ptrtoint ptr %117 to i32
  call void @__asan_load2_noabort(i32 %118)
  %119 = load i16, ptr %117, align 4
  %120 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %8, align 8
  %122 = ptrtoint ptr %uaddr to i32
  call void @__asan_store2_noabort(i32 %122)
  store i16 24, ptr %uaddr, align 2
  %sp138.sroa.6.0.uaddr.sroa_idx = getelementptr inbounds i8, ptr %uaddr, i32 2
  %123 = ptrtoint ptr %sp138.sroa.6.0.uaddr.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %123, i32 4)
  store i32 1, ptr %sp138.sroa.6.0.uaddr.sroa_idx, align 2
  %sp138.sroa.7.0.uaddr.sroa_idx = getelementptr inbounds i8, ptr %uaddr, i32 6
  %124 = ptrtoint ptr %sp138.sroa.7.0.uaddr.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %124, i32 4)
  store i32 %108, ptr %sp138.sroa.7.0.uaddr.sroa_idx, align 2
  %sp138.sroa.8.0.uaddr.sroa_idx = getelementptr inbounds i8, ptr %uaddr, i32 10
  %125 = ptrtoint ptr %sp138.sroa.8.0.uaddr.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %125, i32 4)
  store i32 %106, ptr %sp138.sroa.8.0.uaddr.sroa_idx, align 2
  %sp138.sroa.9.0.uaddr.sroa_idx = getelementptr inbounds i8, ptr %uaddr, i32 14
  %126 = ptrtoint ptr %sp138.sroa.9.0.uaddr.sroa_idx to i32
  call void @__asan_store2_noabort(i32 %126)
  store i16 2, ptr %sp138.sroa.9.0.uaddr.sroa_idx, align 2
  %sp138.sroa.10.0.uaddr.sroa_idx = getelementptr inbounds i8, ptr %uaddr, i32 16
  %127 = ptrtoint ptr %sp138.sroa.10.0.uaddr.sroa_idx to i32
  call void @__asan_store2_noabort(i32 %127)
  store i16 %119, ptr %sp138.sroa.10.0.uaddr.sroa_idx, align 2
  %sp138.sroa.11.0.uaddr.sroa_idx = getelementptr inbounds i8, ptr %uaddr, i32 18
  %128 = ptrtoint ptr %sp138.sroa.11.0.uaddr.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %128, i32 4)
  store i32 %121, ptr %sp138.sroa.11.0.uaddr.sroa_idx, align 2
  %sp138.sroa.12.0.uaddr.sroa_idx = getelementptr inbounds i8, ptr %uaddr, i32 22
  %129 = ptrtoint ptr %sp138.sroa.12.0.uaddr.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %129, i32 8)
  store i64 0, ptr %sp138.sroa.12.0.uaddr.sroa_idx, align 2
  %sp138.sroa.12232.0.uaddr.sroa_idx = getelementptr inbounds i8, ptr %uaddr, i32 30
  %130 = ptrtoint ptr %sp138.sroa.12232.0.uaddr.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %130, i32 4)
  store i32 %110, ptr %sp138.sroa.12232.0.uaddr.sroa_idx, align 2
  %sp138.sroa.13.0.uaddr.sroa_idx = getelementptr inbounds i8, ptr %uaddr, i32 34
  %131 = ptrtoint ptr %sp138.sroa.13.0.uaddr.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %131, i32 4)
  store i32 %114, ptr %sp138.sroa.13.0.uaddr.sroa_idx, align 2
  %sp138.sroa.14.0.uaddr.sroa_idx = getelementptr inbounds i8, ptr %uaddr, i32 38
  %132 = ptrtoint ptr %sp138.sroa.14.0.uaddr.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %132, i32 4)
  store i32 %112, ptr %sp138.sroa.14.0.uaddr.sroa_idx, align 2
  %sp138.sroa.15.0.uaddr.sroa_idx = getelementptr inbounds i8, ptr %uaddr, i32 42
  %133 = ptrtoint ptr %sp138.sroa.15.0.uaddr.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %133, i32 4)
  store i32 %116, ptr %sp138.sroa.15.0.uaddr.sroa_idx, align 2
  br label %if.end178

if.end178:                                        ; preds = %if.then137, %if.then96, %if.then48, %land.lhs.true41.if.end178_crit_edge, %if.then18, %if.end7.if.end178_crit_edge
  %len.0 = phi i32 [ 38, %if.then18 ], [ 50, %if.then48 ], [ 58, %if.then96 ], [ 46, %if.then137 ], [ 0, %land.lhs.true41.if.end178_crit_edge ], [ 0, %if.end7.if.end178_crit_edge ]
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 19
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !122
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #10
  %134 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #10, !srcloc !123
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %134, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end178
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.end_crit_edge, label %if.then10.i.i.i.i, !prof !124

if.end5.i.i.i.i.end_crit_edge:                    ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %end

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 3) #10
  br label %end

if.then.i:                                        ; preds = %if.end178
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !125
  tail call void @sk_free(ptr noundef nonnull %1) #10
  br label %end

end:                                              ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.end_crit_edge, %if.end4.end_crit_edge, %if.end.end_crit_edge, %entry.end_crit_edge
  %error.0 = phi i32 [ -9, %if.end4.end_crit_edge ], [ -107, %if.end.end_crit_edge ], [ -107, %entry.end_crit_edge ], [ %len.0, %if.end5.i.i.i.i.end_crit_edge ], [ %len.0, %if.then10.i.i.i.i ], [ %len.0, %if.then.i ]
  ret i32 %error.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @datagram_poll(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pppox_ioctl(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_listen(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_shutdown(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pppol2tp_setsockopt(ptr nocapture noundef readonly %sock, i32 noundef %level, i32 noundef %optname, [2 x i32] %optval.coerce, i32 noundef %optlen) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #10
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !136
  call void @__sanitizer_cov_trace_const_cmp4(i32 273, i32 %level)
  %cmp.not = icmp ne i32 %level, 273
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %optlen)
  %cmp2 = icmp ult i32 %optlen, 4
  %or.cond = or i1 %cmp.not, %cmp2
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end4

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %entry
  %src.coerce.fca.0.extract.i.i = extractvalue [2 x i32] %optval.coerce, 0
  %3 = inttoptr i32 %src.coerce.fca.0.extract.i.i to ptr
  %sockptr.coerce.fca.1.extract.i.i.i = extractvalue [2 x i32] %optval.coerce, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sockptr.coerce.fca.1.extract.i.i.i)
  %bf.cast.i.i.i = icmp slt i32 %sockptr.coerce.fca.1.extract.i.i.i, 0
  br i1 %bf.cast.i.i.i, label %if.end.i.i, label %if.end8.i.i.i.i

if.end8.i.i.i.i:                                  ; preds = %if.end4
  tail call void @__might_fault(ptr noundef nonnull @.str.32, i32 noundef 156) #10
  %call.i.i.i.i = tail call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i.i.i, label %if.end8.i.i.i.i.if.then11.i.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i

if.end8.i.i.i.i.if.then11.i.i.i.i_crit_edge:      ; preds = %if.end8.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.end8.i.i.i.i
  %4 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %3, i32 4, i32 -1226833920) #14, !srcloc !134
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.i6.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.i6.i.i.i, label %if.end.i.i.i.i, label %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge, !prof !124

land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i.i.i

if.end.i.i.i.i:                                   ; preds = %land.lhs.true.i.i.i.i
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %val, i32 noundef 4) #10
  %5 = call i32 @llvm.read_register.i32(metadata !111) #10
  %and.i.i.i.i.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 4
  %7 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i.i) #6, !srcloc !129
  %and.i.i.i.i.i.i = and i32 %7, -13
  %or.i.i.i.i.i.i = or i32 %and.i.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i.i) #10, !srcloc !130
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !131
  %call1.i.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %val, ptr noundef %3, i32 noundef 4) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %7) #10, !srcloc !130
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !131
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i.i)
  %tobool4.not.i.i.i.i = icmp eq i32 %call1.i.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i.i, label %if.end.i.i.i.i.if.end6_crit_edge, label %if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge, !prof !124

if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge:       ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i.i.i

if.end.i.i.i.i.if.end6_crit_edge:                 ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then11.i.i.i.i:                                ; preds = %if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge, %if.end8.i.i.i.i.if.then11.i.i.i.i_crit_edge
  %res.0.i.i3.i.i = phi i32 [ %call1.i.i.i.i.i, %if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge ], [ 4, %if.end8.i.i.i.i.if.then11.i.i.i.i_crit_edge ], [ 4, %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge ]
  %sub.i.i.i.i = sub i32 4, %res.0.i.i3.i.i
  %add.ptr.i.i.i.i = getelementptr i8, ptr %val, i32 %sub.i.i.i.i
  %8 = call ptr @memset(ptr %add.ptr.i.i.i.i, i32 0, i32 %res.0.i.i3.i.i)
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %10 = load i32, ptr %3, align 1
  %11 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %val, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.end.i.i, %if.end.i.i.i.i.if.end6_crit_edge
  %sk_user_data = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 72
  %12 = ptrtoint ptr %sk_user_data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sk_user_data, align 4
  %tobool7.not = icmp eq ptr %13, null
  br i1 %tobool7.not, label %if.end6.cleanup_crit_edge, label %if.end9

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end9:                                          ; preds = %if.end6
  %call10 = call fastcc ptr @pppol2tp_sock_to_session(ptr noundef %1)
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %if.end9.cleanup_crit_edge, label %if.end13

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  %session_id = getelementptr inbounds %struct.l2tp_session, ptr %call10, i32 0, i32 3
  %14 = ptrtoint ptr %session_id to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %session_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp14 = icmp eq i32 %15, 0
  br i1 %cmp14, label %land.lhs.true, label %if.end13.if.else_crit_edge

if.end13.if.else_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

land.lhs.true:                                    ; preds = %if.end13
  %peer_session_id = getelementptr inbounds %struct.l2tp_session, ptr %call10, i32 0, i32 4
  %16 = ptrtoint ptr %peer_session_id to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %peer_session_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp15 = icmp eq i32 %17, 0
  br i1 %cmp15, label %if.then16, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.then16:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %optname)
  %cond.i = icmp eq i32 %optname, 1
  %spec.store.select.i = select i1 %cond.i, i32 0, i32 -92
  br label %if.end20

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end13.if.else_crit_edge
  %18 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %val, align 4
  %20 = zext i32 %optname to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %optname, label %sw.default.i [
    i32 2, label %sw.bb.i
    i32 3, label %sw.bb3.i
    i32 4, label %sw.bb21.i
    i32 1, label %if.else.if.end20_crit_edge
    i32 5, label %if.else.i.i
  ]

if.else.if.end20_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

sw.bb.i:                                          ; preds = %if.else
  %21 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %19, label %sw.bb.i.if.end20_crit_edge [
    i32 0, label %sw.bb.i.if.end.i_crit_edge
    i32 1, label %if.end.fold.split.i
  ]

sw.bb.i.if.end.i_crit_edge:                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

sw.bb.i.if.end20_crit_edge:                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.end.fold.split.i:                              ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.end.i:                                         ; preds = %if.end.fold.split.i, %sw.bb.i.if.end.i_crit_edge
  %bf.shl.i = phi i8 [ 0, %sw.bb.i.if.end.i_crit_edge ], [ -128, %if.end.fold.split.i ]
  %recv_seq.i = getelementptr inbounds %struct.l2tp_session, ptr %call10, i32 0, i32 23
  %22 = ptrtoint ptr %recv_seq.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %bf.load.i = load i8, ptr %recv_seq.i, align 4
  %bf.clear.i = and i8 %bf.load.i, 127
  %bf.set.i = or i8 %bf.clear.i, %bf.shl.i
  store i8 %bf.set.i, ptr %recv_seq.i, align 4
  br label %if.end20

sw.bb3.i:                                         ; preds = %if.else
  %23 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %19, label %sw.bb3.i.if.end20_crit_edge [
    i32 0, label %sw.bb3.i.if.end8.i_crit_edge
    i32 1, label %if.end8.fold.split.i
  ]

sw.bb3.i.if.end8.i_crit_edge:                     ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i

sw.bb3.i.if.end20_crit_edge:                      ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.end8.fold.split.i:                             ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.end8.fold.split.i, %sw.bb3.i.if.end8.i_crit_edge
  %cond.i34 = phi i32 [ 6, %sw.bb3.i.if.end8.i_crit_edge ], [ 10, %if.end8.fold.split.i ]
  %bf.shl16.i = phi i8 [ 0, %sw.bb3.i.if.end8.i_crit_edge ], [ 64, %if.end8.fold.split.i ]
  %send_seq.i = getelementptr inbounds %struct.l2tp_session, ptr %call10, i32 0, i32 23
  %24 = ptrtoint ptr %send_seq.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %bf.load14.i = load i8, ptr %send_seq.i, align 4
  %bf.clear17.i = and i8 %bf.load14.i, -65
  %bf.set18.i = or i8 %bf.clear17.i, %bf.shl16.i
  store i8 %bf.set18.i, ptr %send_seq.i, align 4
  %hdrlen.i = getelementptr inbounds %struct.pppox_sock, ptr %1, i32 0, i32 1, i32 3
  %25 = ptrtoint ptr %hdrlen.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %cond.i34, ptr %hdrlen.i, align 4
  %tunnel.i = getelementptr inbounds %struct.l2tp_session, ptr %call10, i32 0, i32 2
  %26 = ptrtoint ptr %tunnel.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %tunnel.i, align 4
  %version.i = getelementptr inbounds %struct.l2tp_tunnel, ptr %27, i32 0, i32 8
  %28 = ptrtoint ptr %version.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %version.i, align 4
  call void @l2tp_session_set_header_len(ptr noundef nonnull %call10, i32 noundef %29) #10
  br label %if.end20

sw.bb21.i:                                        ; preds = %if.else
  %30 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %19, label %sw.bb21.i.if.end20_crit_edge [
    i32 0, label %sw.bb21.i.if.end26.i_crit_edge
    i32 1, label %if.end26.fold.split.i
  ]

sw.bb21.i.if.end26.i_crit_edge:                   ; preds = %sw.bb21.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26.i

sw.bb21.i.if.end20_crit_edge:                     ; preds = %sw.bb21.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.end26.fold.split.i:                            ; preds = %sw.bb21.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.end26.fold.split.i, %sw.bb21.i.if.end26.i_crit_edge
  %bf.shl34.i = phi i8 [ 0, %sw.bb21.i.if.end26.i_crit_edge ], [ 32, %if.end26.fold.split.i ]
  %lns_mode.i = getelementptr inbounds %struct.l2tp_session, ptr %call10, i32 0, i32 23
  %31 = ptrtoint ptr %lns_mode.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %bf.load32.i = load i8, ptr %lns_mode.i, align 4
  %bf.clear35.i = and i8 %bf.load32.i, -33
  %bf.set36.i = or i8 %bf.clear35.i, %bf.shl34.i
  store i8 %bf.set36.i, ptr %lns_mode.i, align 4
  br label %if.end20

if.else.i.i:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %call2.i.i = call i32 @__msecs_to_jiffies(i32 noundef %19) #10
  %reorder_timeout.i = getelementptr inbounds %struct.l2tp_session, ptr %call10, i32 0, i32 24
  %32 = ptrtoint ptr %reorder_timeout.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %call2.i.i, ptr %reorder_timeout.i, align 4
  br label %if.end20

sw.default.i:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.end20:                                         ; preds = %sw.default.i, %if.else.i.i, %if.end26.i, %sw.bb21.i.if.end20_crit_edge, %if.end8.i, %sw.bb3.i.if.end20_crit_edge, %if.end.i, %sw.bb.i.if.end20_crit_edge, %if.else.if.end20_crit_edge, %if.then16
  %err.0 = phi i32 [ %spec.store.select.i, %if.then16 ], [ -92, %sw.default.i ], [ 0, %if.else.i.i ], [ 0, %if.else.if.end20_crit_edge ], [ 0, %if.end26.i ], [ 0, %if.end8.i ], [ 0, %if.end.i ], [ -22, %sw.bb.i.if.end20_crit_edge ], [ -22, %sw.bb3.i.if.end20_crit_edge ], [ -22, %sw.bb21.i.if.end20_crit_edge ]
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 19
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !122
  call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #10
  %33 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #10, !srcloc !123
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %33, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !124

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 3) #10
  br label %cleanup

if.then.i:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !125
  call void @sk_free(ptr noundef %1) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.then11.i.i.i.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -9, %if.end9.cleanup_crit_edge ], [ -107, %if.end6.cleanup_crit_edge ], [ -14, %if.then11.i.i.i.i ], [ %err.0, %if.end5.i.i.i.i.cleanup_crit_edge ], [ %err.0, %if.then10.i.i.i.i ], [ %err.0, %if.then.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pppol2tp_getsockopt(ptr nocapture noundef readonly %sock, i32 noundef %level, i32 noundef %optname, ptr noundef %optval, ptr noundef %optlen) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #10
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !136
  call void @__sanitizer_cov_trace_const_cmp4(i32 273, i32 %level)
  %cmp.not = icmp eq i32 %level, 273
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.4, i32 noundef 1348) #10
  %3 = tail call i32 @llvm.read_register.i32(metadata !111) #10
  %and.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 4
  %5 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #6, !srcloc !129
  %and.i = and i32 %5, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #10, !srcloc !130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !131
  %6 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %optlen, i32 -1226833921) #10, !srcloc !138
  %asmresult = extractvalue { i32, i32 } %6, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %5) #10, !srcloc !130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !131
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %tobool.not = icmp eq i32 %asmresult, 0
  br i1 %tobool.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %asmresult2 = extractvalue { i32, i32 } %6, 1
  %7 = tail call i32 @llvm.umin.i32(i32 %asmresult2, i32 4)
  %sk_user_data = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 72
  %8 = ptrtoint ptr %sk_user_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sk_user_data, align 4
  %tobool11.not = icmp eq ptr %9, null
  br i1 %tobool11.not, label %if.end5.cleanup_crit_edge, label %if.end13

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end13:                                         ; preds = %if.end5
  %call14 = tail call fastcc ptr @pppol2tp_sock_to_session(ptr noundef %1)
  %tobool15.not = icmp eq ptr %call14, null
  br i1 %tobool15.not, label %if.end13.cleanup_crit_edge, label %if.end17

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end17:                                         ; preds = %if.end13
  %session_id = getelementptr inbounds %struct.l2tp_session, ptr %call14, i32 0, i32 3
  %10 = ptrtoint ptr %session_id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %session_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp18 = icmp eq i32 %11, 0
  br i1 %cmp18, label %land.lhs.true, label %if.end17.if.else_crit_edge

if.end17.if.else_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

land.lhs.true:                                    ; preds = %if.end17
  %peer_session_id = getelementptr inbounds %struct.l2tp_session, ptr %call14, i32 0, i32 4
  %12 = ptrtoint ptr %peer_session_id to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %peer_session_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp19 = icmp eq i32 %13, 0
  br i1 %cmp19, label %if.then20, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.then20:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %optname)
  %cond.i = icmp eq i32 %optname, 1
  br i1 %cond.i, label %if.then20.if.end30_crit_edge, label %if.then20.end_put_sess_crit_edge

if.then20.end_put_sess_crit_edge:                 ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #12
  br label %end_put_sess

if.then20.if.end30_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end17.if.else_crit_edge
  %14 = zext i32 %optname to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %optname, label %if.else.end_put_sess_crit_edge [
    i32 2, label %sw.bb.i73
    i32 3, label %sw.bb1.i
    i32 4, label %sw.bb5.i
    i32 1, label %if.else.if.end30_crit_edge
    i32 5, label %sw.bb11.i
  ]

if.else.if.end30_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

if.else.end_put_sess_crit_edge:                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %end_put_sess

sw.bb.i73:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %recv_seq.i = getelementptr inbounds %struct.l2tp_session, ptr %call14, i32 0, i32 23
  %15 = ptrtoint ptr %recv_seq.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load.i = load i8, ptr %recv_seq.i, align 4
  %bf.lshr.i = lshr i8 %bf.load.i, 7
  %bf.cast.i = zext i8 %bf.lshr.i to i32
  br label %if.end30

sw.bb1.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %send_seq.i = getelementptr inbounds %struct.l2tp_session, ptr %call14, i32 0, i32 23
  %16 = ptrtoint ptr %send_seq.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load2.i = load i8, ptr %send_seq.i, align 4
  %bf.lshr3.i = lshr i8 %bf.load2.i, 6
  %bf.clear.i = and i8 %bf.lshr3.i, 1
  %bf.cast4.i = zext i8 %bf.clear.i to i32
  br label %if.end30

sw.bb5.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %lns_mode.i = getelementptr inbounds %struct.l2tp_session, ptr %call14, i32 0, i32 23
  %17 = ptrtoint ptr %lns_mode.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load6.i = load i8, ptr %lns_mode.i, align 4
  %bf.lshr7.i = lshr i8 %bf.load6.i, 5
  %bf.clear8.i = and i8 %bf.lshr7.i, 1
  %bf.cast9.i = zext i8 %bf.clear8.i to i32
  br label %if.end30

sw.bb11.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %reorder_timeout.i = getelementptr inbounds %struct.l2tp_session, ptr %call14, i32 0, i32 24
  %18 = ptrtoint ptr %reorder_timeout.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %reorder_timeout.i, align 4
  %call.i = tail call i32 @jiffies_to_msecs(i32 noundef %19) #10
  br label %if.end30

if.end30:                                         ; preds = %sw.bb11.i, %sw.bb5.i, %sw.bb1.i, %sw.bb.i73, %if.else.if.end30_crit_edge, %if.then20.if.end30_crit_edge
  %storemerge = phi i32 [ 0, %if.then20.if.end30_crit_edge ], [ %call.i, %sw.bb11.i ], [ %bf.cast9.i, %sw.bb5.i ], [ %bf.cast4.i, %sw.bb1.i ], [ %bf.cast.i, %sw.bb.i73 ], [ 0, %if.else.if.end30_crit_edge ]
  %20 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %storemerge, ptr %val, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.4, i32 noundef 1379) #10
  %21 = tail call i32 @llvm.read_register.i32(metadata !111) #10
  %and.i.i.i69 = and i32 %21, -16384
  %22 = inttoptr i32 %and.i.i.i69 to ptr
  %cpu_domain.i.i70 = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 4
  %23 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i70) #6, !srcloc !129
  %and.i71 = and i32 %23, -13
  %or.i72 = or i32 %and.i71, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i72) #10, !srcloc !130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !131
  %24 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %optlen, i32 %7, i32 -1226833921) #10, !srcloc !139
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %23) #10, !srcloc !130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !131
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool40.not = icmp eq i32 %24, 0
  br i1 %tobool40.not, label %if.then.i.i.i, label %if.end30.end_put_sess_crit_edge

if.end30.end_put_sess_crit_edge:                  ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %end_put_sess

if.then.i.i.i:                                    ; preds = %if.end30
  call void @__check_object_size(ptr noundef nonnull %val, i32 noundef %7, i1 noundef zeroext true) #10
  call void @__might_fault(ptr noundef nonnull @.str.32, i32 noundef 174) #10
  %call.i.i = call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i, label %if.then.i.i.i.copy_to_user.exit_crit_edge, label %if.end.i.i

if.then.i.i.i.copy_to_user.exit_crit_edge:        ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.then.i.i.i
  %25 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %optval, i32 %7, i32 -1226833920) #14, !srcloc !135
  %asmresult.i.i = extractvalue { i32, i32 } %25, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %val, i32 noundef %7) #10
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %optval, ptr noundef nonnull %val, i32 noundef %7) #10
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.then.i.i.i.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %7, %if.then.i.i.i.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %7, %if.end.i.i.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool44.not = icmp eq i32 %n.addr.0.i, 0
  %spec.select = select i1 %tobool44.not, i32 0, i32 -14
  br label %end_put_sess

end_put_sess:                                     ; preds = %copy_to_user.exit, %if.end30.end_put_sess_crit_edge, %if.else.end_put_sess_crit_edge, %if.then20.end_put_sess_crit_edge
  %err.0 = phi i32 [ -14, %if.end30.end_put_sess_crit_edge ], [ %spec.select, %copy_to_user.exit ], [ -92, %if.then20.end_put_sess_crit_edge ], [ -92, %if.else.end_put_sess_crit_edge ]
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 19
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !122
  call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #10
  %26 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #10, !srcloc !123
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %26, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i75, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %end_put_sess
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !124

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 3) #10
  br label %cleanup

if.then.i75:                                      ; preds = %end_put_sess
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !125
  call void @sk_free(ptr noundef %1) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then.i75, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -14, %if.end.cleanup_crit_edge ], [ -9, %if.end13.cleanup_crit_edge ], [ -107, %if.end5.cleanup_crit_edge ], [ %err.0, %if.end5.i.i.i.i.cleanup_crit_edge ], [ %err.0, %if.then10.i.i.i.i ], [ %err.0, %if.then.i75 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pppol2tp_sendmsg(ptr nocapture noundef readonly %sock, ptr noundef %m, i32 noundef %total_len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  %2 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 13
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %2, align 4
  %and1.i.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load volatile i8, ptr %skc_state, align 2
  %7 = and i8 %6, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call2 = tail call fastcc ptr @pppol2tp_sock_to_session(ptr noundef %1)
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %tunnel6 = getelementptr inbounds %struct.l2tp_session, ptr %call2, i32 0, i32 2
  %8 = ptrtoint ptr %tunnel6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tunnel6, align 4
  %encap = getelementptr inbounds %struct.l2tp_tunnel, ptr %9, i32 0, i32 10
  %10 = ptrtoint ptr %encap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %encap, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp = icmp eq i32 %11, 0
  %cond = select i1 %cmp, i32 8, i32 0
  %hdr_len = getelementptr inbounds %struct.l2tp_session, ptr %call2, i32 0, i32 10
  %12 = ptrtoint ptr %hdr_len to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %hdr_len, align 2
  %conv8 = zext i16 %13 to i32
  %add9 = add i32 %total_len, 150
  %add10 = add i32 %add9, %cond
  %add11 = add i32 %add10, %conv8
  %call12 = tail call ptr @sock_wmalloc(ptr noundef %1, i32 noundef %add11, i32 noundef 0, i32 noundef 3264) #10
  %tobool13.not = icmp eq ptr %call12, null
  br i1 %tobool13.not, label %if.end5.error_put_sess_crit_edge, label %if.end15

if.end5.error_put_sess_crit_edge:                 ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %error_put_sess

if.end15:                                         ; preds = %if.end5
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call12, i32 0, i32 19
  %14 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %15, i32 128
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call12, i32 0, i32 16
  %16 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tail.i, align 8
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %call12, i32 0, i32 18
  %18 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %19 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %call12, i32 0, i32 15, i32 0, i32 20
  %20 = ptrtoint ptr %network_header.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %conv.i, ptr %network_header.i, align 4
  %add.ptr.i58 = getelementptr i8, ptr %15, i32 148
  %add.ptr1.i60 = getelementptr i8, ptr %17, i32 148
  %sub.ptr.lhs.cast.i63 = ptrtoint ptr %add.ptr.i58 to i32
  %sub.ptr.sub.i65 = sub i32 %sub.ptr.lhs.cast.i63, %sub.ptr.rhs.cast.i
  %conv.i66 = trunc i32 %sub.ptr.sub.i65 to i16
  %transport_header.i = getelementptr inbounds %struct.sk_buff, ptr %call12, i32 0, i32 15, i32 0, i32 19
  %21 = ptrtoint ptr %transport_header.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %conv.i66, ptr %transport_header.i, align 2
  %add.ptr.i68 = getelementptr i8, ptr %add.ptr.i58, i32 %cond
  store ptr %add.ptr.i68, ptr %data.i, align 4
  %add.ptr1.i70 = getelementptr i8, ptr %add.ptr1.i60, i32 %cond
  store ptr %add.ptr1.i70, ptr %tail.i, align 8
  %22 = ptrtoint ptr %add.ptr.i68 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 -1, ptr %add.ptr.i68, align 1
  %23 = load ptr, ptr %data.i, align 4
  %arrayidx17 = getelementptr i8, ptr %23, i32 1
  %24 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 3, ptr %arrayidx17, align 1
  %call18 = tail call ptr @skb_put(ptr noundef nonnull %call12, i32 noundef 2) #10
  %call19 = tail call ptr @skb_put(ptr noundef nonnull %call12, i32 noundef %total_len) #10
  %msg_iter.i = getelementptr inbounds %struct.msghdr, ptr %m, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %total_len)
  %cmp9.i.i.i.i = icmp slt i32 %total_len, 0
  br i1 %cmp9.i.i.i.i, label %land.rhs16.i.i.i.i, label %if.then.i.i.i.i.i

land.rhs16.i.i.i.i:                               ; preds = %if.end15
  %.b71.i.i.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i.i.i, label %land.rhs16.i.i.i.i.copy_from_iter.exit.i.i_crit_edge, label %if.then27.i.i.i.i, !prof !124

land.rhs16.i.i.i.i.copy_from_iter.exit.i.i_crit_edge: ; preds = %land.rhs16.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %copy_from_iter.exit.i.i

if.then27.i.i.i.i:                                ; preds = %land.rhs16.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.30, i32 noundef 230, i32 noundef 9, ptr noundef null) #10
  br label %copy_from_iter.exit.i.i

if.then.i.i.i.i.i:                                ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__check_object_size(ptr noundef %call19, i32 noundef %total_len, i1 noundef zeroext false) #10
  %call3.i.i.i = tail call i32 @_copy_from_iter(ptr noundef %call19, i32 noundef %total_len, ptr noundef %msg_iter.i) #10
  br label %copy_from_iter.exit.i.i

copy_from_iter.exit.i.i:                          ; preds = %if.then.i.i.i.i.i, %if.then27.i.i.i.i, %land.rhs16.i.i.i.i.copy_from_iter.exit.i.i_crit_edge
  %retval.0.i.i.i = phi i32 [ %call3.i.i.i, %if.then.i.i.i.i.i ], [ 0, %if.then27.i.i.i.i ], [ 0, %land.rhs16.i.i.i.i.copy_from_iter.exit.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i.i, i32 %total_len)
  %cmp.i.i = icmp eq i32 %retval.0.i.i.i, %total_len
  br i1 %cmp.i.i, label %if.end24, label %if.then23, !prof !124

if.then23:                                        ; preds = %copy_from_iter.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @iov_iter_revert(ptr noundef %msg_iter.i, i32 noundef %retval.0.i.i.i) #10
  tail call void @kfree_skb_reason(ptr noundef nonnull %call12, i32 noundef 0) #10
  br label %error_put_sess

if.end24:                                         ; preds = %copy_from_iter.exit.i.i
  tail call fastcc void @local_bh_disable()
  %call25 = tail call i32 @l2tp_xmit_skb(ptr noundef nonnull %call2, ptr noundef nonnull %call12) #10
  tail call fastcc void @local_bh_enable()
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 19
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !122
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #10
  %25 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #10, !srcloc !123
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %25, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i71 = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i71, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !124

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 3) #10
  br label %cleanup

if.then.i:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !125
  tail call void @sk_free(ptr noundef %1) #10
  br label %cleanup

error_put_sess:                                   ; preds = %if.then23, %if.end5.error_put_sess_crit_edge
  %error.0 = phi i32 [ -14, %if.then23 ], [ -12, %if.end5.error_put_sess_crit_edge ]
  %skc_refcnt.i72 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 19
  %call.i.i.i.i.i.i73 = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i72, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !122
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i72, i32 1, i32 3, i32 1) #10
  %26 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i72, ptr %skc_refcnt.i72, i32 1, ptr elementtype(i32) %skc_refcnt.i72) #10, !srcloc !123
  %asmresult.i.i.i.i.i.i.i74 = extractvalue { i32, i32, i32 } %26, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i74)
  %cmp.i.i.i.i75 = icmp eq i32 %asmresult.i.i.i.i.i.i.i74, 1
  br i1 %cmp.i.i.i.i75, label %if.then.i79, label %if.end5.i.i.i.i77

if.end5.i.i.i.i77:                                ; preds = %error_put_sess
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i74)
  %.not.i.i.i.i76 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i74, 0
  br i1 %.not.i.i.i.i76, label %if.end5.i.i.i.i77.cleanup_crit_edge, label %if.then10.i.i.i.i78, !prof !124

if.end5.i.i.i.i77.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i77
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then10.i.i.i.i78:                              ; preds = %if.end5.i.i.i.i77
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i72, i32 noundef 3) #10
  br label %cleanup

if.then.i79:                                      ; preds = %error_put_sess
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !125
  tail call void @sk_free(ptr noundef %1) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then.i79, %if.then10.i.i.i.i78, %if.end5.i.i.i.i77.cleanup_crit_edge, %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -107, %entry.cleanup_crit_edge ], [ -9, %if.end.cleanup_crit_edge ], [ -107, %lor.lhs.false.cleanup_crit_edge ], [ %total_len, %if.end5.i.i.i.i.cleanup_crit_edge ], [ %total_len, %if.then10.i.i.i.i ], [ %total_len, %if.then.i ], [ %error.0, %if.end5.i.i.i.i77.cleanup_crit_edge ], [ %error.0, %if.then10.i.i.i.i78 ], [ %error.0, %if.then.i79 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pppol2tp_recvmsg(ptr nocapture noundef readonly %sock, ptr noundef %msg, i32 noundef %len, i32 noundef %flags) #2 align 64 {
entry:
  %err = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err) #10
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  %2 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -5, ptr %err, align 4
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %3 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load volatile i8, ptr %skc_state, align 2
  %5 = and i8 %4, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.end, label %entry.end_crit_edge

entry.end_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %end

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %err, align 4
  %and2 = and i32 %flags, -65
  %and3 = and i32 %flags, 64
  %call = call ptr @skb_recv_datagram(ptr noundef %1, i32 noundef %and2, i32 noundef %and3, ptr noundef nonnull %err) #10
  %tobool4.not = icmp eq ptr %call, null
  br i1 %tobool4.not, label %if.end.end_crit_edge, label %if.end6

if.end.end_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %end

if.end6:                                          ; preds = %if.end
  %len7 = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 6
  %7 = ptrtoint ptr %len7 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %len7, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %len)
  %cmp = icmp ult i32 %8, %len
  br i1 %cmp, label %if.end6.if.end16_crit_edge, label %if.else

if.end6.if.end16_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

if.else:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %len)
  %cmp12 = icmp ugt i32 %8, %len
  br i1 %cmp12, label %if.then14, label %if.else.if.end16_crit_edge

if.else.if.end16_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

if.then14:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %msg_flags = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 6
  %9 = ptrtoint ptr %msg_flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %msg_flags, align 4
  %or = or i32 %10, 32
  store i32 %or, ptr %msg_flags, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.else.if.end16_crit_edge, %if.end6.if.end16_crit_edge
  %len.addr.0 = phi i32 [ %len, %if.then14 ], [ %len, %if.else.if.end16_crit_edge ], [ %8, %if.end6.if.end16_crit_edge ]
  %msg_iter.i = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 2
  %call.i = call i32 @skb_copy_datagram_iter(ptr noundef nonnull %call, i32 noundef 0, ptr noundef %msg_iter.i, i32 noundef %len.addr.0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp18 = icmp eq i32 %call.i, 0
  %spec.select = select i1 %cmp18, i32 %len.addr.0, i32 %call.i, !prof !124
  %11 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %spec.select, ptr %err, align 4
  call void @kfree_skb_reason(ptr noundef nonnull %call, i32 noundef 0) #10
  br label %end

end:                                              ; preds = %if.end16, %if.end.end_crit_edge, %entry.end_crit_edge
  %12 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %err, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err) #10
  ret i32 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_mmap(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pppox_unbind_sock(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @pppol2tp_sock_to_session(ptr noundef %sk) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %tobool.not = icmp eq ptr %sk, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 19
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #10
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #10, !srcloc !127
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !121

if.end.if.end15.sink.split.i.i.i.i_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %1 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.sock_hold.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !124

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.sock_hold.exit_crit_edge:         ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sock_hold.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef %.sink.i.i.i.i) #10
  br label %sock_hold.exit

sock_hold.exit:                                   ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.sock_hold.exit_crit_edge
  %sk_user_data = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 72
  %2 = ptrtoint ptr %sk_user_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sk_user_data, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.then2, label %if.end3

if.then2:                                         ; preds = %sock_hold.exit
  %call.i.i.i.i.i.i36 = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !122
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #10
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #10, !srcloc !123
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i37 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i37, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !124

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 3) #10
  br label %cleanup

if.then.i:                                        ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !125
  tail call void @sk_free(ptr noundef nonnull %sk) #10
  br label %cleanup

if.end3:                                          ; preds = %sock_hold.exit
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 201649021, i32 %6)
  %cmp.not = icmp eq i32 %6, 201649021
  br i1 %cmp.not, label %if.end3.cleanup_crit_edge, label %do.end, !prof !124

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 166, i32 noundef 9, ptr noundef null) #10
  tail call fastcc void @sock_put(ptr noundef nonnull %sk)
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end3.cleanup_crit_edge, %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ null, %do.end ], [ %3, %if.end3.cleanup_crit_edge ], [ null, %if.end5.i.i.i.i.cleanup_crit_edge ], [ null, %if.then10.i.i.i.i ], [ null, %if.then.i ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @l2tp_session_delete(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pppol2tp_put_sk(ptr nocapture noundef readonly %head) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %__sk = getelementptr i8, ptr %head, i32 -4
  %0 = ptrtoint ptr %__sk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__sk, align 4
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 19
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !122
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #10
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #10, !srcloc !123
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.sock_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !124

if.end5.i.i.i.i.sock_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sock_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 3) #10
  br label %sock_put.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !125
  tail call void @sk_free(ptr noundef %1) #10
  br label %sock_put.exit

sock_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.sock_put.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_sock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_sock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @l2tp_tunnel_get(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @l2tp_tunnel_create(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @l2tp_tunnel_inc_refcount(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @l2tp_tunnel_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @l2tp_tunnel_get_session(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @l2tp_session_create(i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pppol2tp_session_init(ptr noundef %session) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %recv_skb = getelementptr inbounds %struct.l2tp_session, ptr %session, i32 0, i32 29
  %0 = ptrtoint ptr %recv_skb to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @pppol2tp_recv, ptr %recv_skb, align 4
  %show = getelementptr inbounds %struct.l2tp_session, ptr %session, i32 0, i32 31
  %1 = ptrtoint ptr %show to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @pppol2tp_show, ptr %show, align 4
  %priv.i = getelementptr inbounds %struct.l2tp_session, ptr %session, i32 0, i32 32
  %sk_lock = getelementptr inbounds %struct.l2tp_session, ptr %session, i32 1, i32 1
  tail call void @__mutex_init(ptr noundef %sk_lock, ptr noundef nonnull @.str.26, ptr noundef nonnull @pppol2tp_session_init.__key) #10
  %2 = tail call i32 @llvm.read_register.i32(metadata !111) #10
  %and.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 68
  %6 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pid, align 8
  %8 = ptrtoint ptr %priv.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %priv.i, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @l2tp_session_inc_refcount(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @l2tp_session_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pppol2tp_tunnel_mtu(ptr nocapture noundef readonly %tunnel) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sock.i = getelementptr inbounds %struct.l2tp_tunnel, ptr %tunnel, i32 0, i32 16
  %0 = ptrtoint ptr %sock.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sock.i, align 4
  %2 = tail call i32 @llvm.read_register.i32(metadata !111) #10
  %and.i.i.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %5, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !126
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.20, i32 noundef 696, ptr noundef nonnull @.str.21) #10
  br label %rcu_read_lock.exit.i.i

rcu_read_lock.exit.i.i:                           ; preds = %if.then.i.i.i, %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %entry.rcu_read_lock.exit.i.i_crit_edge
  %sk_dst_cache.i.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 19
  %6 = ptrtoint ptr %sk_dst_cache.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %sk_dst_cache.i.i, align 4
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
  %.b16.i.i = load i1, ptr @sk_dst_get.__warned, align 1
  br i1 %.b16.i.i, label %land.lhs.true4.i.i.do.end7.i.i_crit_edge, label %if.then.i.i

land.lhs.true4.i.i.do.end7.i.i_crit_edge:         ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7.i.i

if.then.i.i:                                      ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @sk_dst_get.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.29, i32 noundef 2077, ptr noundef nonnull @.str.19) #10
  br label %do.end7.i.i

do.end7.i.i:                                      ; preds = %if.then.i.i, %land.lhs.true4.i.i.do.end7.i.i_crit_edge, %land.lhs.true.i.i.do.end7.i.i_crit_edge, %rcu_read_lock.exit.i.i.do.end7.i.i_crit_edge
  %tobool9.not.i.i = icmp eq ptr %7, null
  br i1 %tobool9.not.i.i, label %do.end7.i.i.if.end13.i.i_crit_edge, label %land.lhs.true10.i.i

do.end7.i.i.if.end13.i.i_crit_edge:               ; preds = %do.end7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13.i.i

land.lhs.true10.i.i:                              ; preds = %do.end7.i.i
  %__refcnt.i.i = getelementptr inbounds %struct.dst_entry, ptr %7, i32 0, i32 18
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %__refcnt.i.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !140
  tail call void @llvm.prefetch.p0(ptr %__refcnt.i.i, i32 1, i32 3, i32 1) #10
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %__refcnt.i.i, ptr %__refcnt.i.i, i32 0, i32 1, ptr elementtype(i32) %__refcnt.i.i) #10, !srcloc !141
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i.i, label %land.lhs.true10.i.i.if.end13.i.i_crit_edge, label %do.end11.i.i.i.i.i.i

land.lhs.true10.i.i.if.end13.i.i_crit_edge:       ; preds = %land.lhs.true10.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13.i.i

do.end11.i.i.i.i.i.i:                             ; preds = %land.lhs.true10.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !142
  br label %if.end13.i.i

if.end13.i.i:                                     ; preds = %do.end11.i.i.i.i.i.i, %land.lhs.true10.i.i.if.end13.i.i_crit_edge, %do.end7.i.i.if.end13.i.i_crit_edge
  %dst.0.i.i = phi ptr [ null, %do.end7.i.i.if.end13.i.i_crit_edge ], [ null, %land.lhs.true10.i.i.if.end13.i.i_crit_edge ], [ %7, %do.end11.i.i.i.i.i.i ]
  %call.i17.i.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i17.i.i, label %if.end13.i.i.sk_dst_get.exit.i_crit_edge, label %land.lhs.true.i20.i.i

if.end13.i.i.sk_dst_get.exit.i_crit_edge:         ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sk_dst_get.exit.i

land.lhs.true.i20.i.i:                            ; preds = %if.end13.i.i
  %call1.i18.i.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i18.i.i)
  %tobool.not.i19.i.i = icmp eq i32 %call1.i18.i.i, 0
  br i1 %tobool.not.i19.i.i, label %land.lhs.true.i20.i.i.sk_dst_get.exit.i_crit_edge, label %land.lhs.true2.i22.i.i

land.lhs.true.i20.i.i.sk_dst_get.exit.i_crit_edge: ; preds = %land.lhs.true.i20.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sk_dst_get.exit.i

land.lhs.true2.i22.i.i:                           ; preds = %land.lhs.true.i20.i.i
  %.b4.i21.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i21.i.i, label %land.lhs.true2.i22.i.i.sk_dst_get.exit.i_crit_edge, label %if.then.i23.i.i

land.lhs.true2.i22.i.i.sk_dst_get.exit.i_crit_edge: ; preds = %land.lhs.true2.i22.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sk_dst_get.exit.i

if.then.i23.i.i:                                  ; preds = %land.lhs.true2.i22.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.20, i32 noundef 724, ptr noundef nonnull @.str.22) #10
  br label %sk_dst_get.exit.i

sk_dst_get.exit.i:                                ; preds = %if.then.i23.i.i, %land.lhs.true2.i22.i.i.sk_dst_get.exit.i_crit_edge, %land.lhs.true.i20.i.i.sk_dst_get.exit.i_crit_edge, %if.end13.i.i.sk_dst_get.exit.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !128
  %9 = tail call i32 @llvm.read_register.i32(metadata !111) #10
  %and.i.i.i.i.i24.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i24.i.i to ptr
  %preempt_count.i.i.i.i25.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i.i.i25.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i.i.i25.i.i, align 4
  %sub.i.i.i.i.i = add i32 %12, -1
  store volatile i32 %sub.i.i.i.i.i, ptr %preempt_count.i.i.i.i25.i.i, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  %tobool.not.i = icmp eq ptr %dst.0.i.i, null
  br i1 %tobool.not.i, label %sk_dst_get.exit.i.l2tp_tunnel_dst_mtu.exit.thread_crit_edge, label %l2tp_tunnel_dst_mtu.exit

sk_dst_get.exit.i.l2tp_tunnel_dst_mtu.exit.thread_crit_edge: ; preds = %sk_dst_get.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %l2tp_tunnel_dst_mtu.exit.thread

l2tp_tunnel_dst_mtu.exit:                         ; preds = %sk_dst_get.exit.i
  %ops.i.i = getelementptr inbounds %struct.dst_entry, ptr %dst.0.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ops.i.i, align 4
  %mtu.i.i = getelementptr inbounds %struct.dst_ops, ptr %14, i32 0, i32 5
  %15 = ptrtoint ptr %mtu.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mtu.i.i, align 4
  %call.i5.i = tail call i32 %16(ptr noundef nonnull %dst.0.i.i) #10
  tail call void @dst_release(ptr noundef nonnull %dst.0.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 41, i32 %call.i5.i)
  %cmp = icmp slt i32 %call.i5.i, 41
  %sub = add i32 %call.i5.i, -40
  br i1 %cmp, label %l2tp_tunnel_dst_mtu.exit.l2tp_tunnel_dst_mtu.exit.thread_crit_edge, label %l2tp_tunnel_dst_mtu.exit._crit_edge

l2tp_tunnel_dst_mtu.exit._crit_edge:              ; preds = %l2tp_tunnel_dst_mtu.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %17

l2tp_tunnel_dst_mtu.exit.l2tp_tunnel_dst_mtu.exit.thread_crit_edge: ; preds = %l2tp_tunnel_dst_mtu.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %l2tp_tunnel_dst_mtu.exit.thread

l2tp_tunnel_dst_mtu.exit.thread:                  ; preds = %l2tp_tunnel_dst_mtu.exit.l2tp_tunnel_dst_mtu.exit.thread_crit_edge, %sk_dst_get.exit.i.l2tp_tunnel_dst_mtu.exit.thread_crit_edge
  br label %17

17:                                               ; preds = %l2tp_tunnel_dst_mtu.exit.thread, %l2tp_tunnel_dst_mtu.exit._crit_edge
  %18 = phi i32 [ 1460, %l2tp_tunnel_dst_mtu.exit.thread ], [ %sub, %l2tp_tunnel_dst_mtu.exit._crit_edge ]
  ret i32 %18
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ppp_register_net_channel(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @l2tp_tunnel_delete(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pppol2tp_recv(ptr noundef %session, ptr noundef %skb, i32 noundef %data_len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !111) #10
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !126
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.20, i32 noundef 696, ptr noundef nonnull @.str.21) #10
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %sk1 = getelementptr inbounds %struct.l2tp_session, ptr %session, i32 1, i32 13, i32 2, i32 0, i32 0, i32 4, i32 2
  %4 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %sk1, align 4
  %call3 = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end9_crit_edge

rcu_read_lock.exit.do.end9_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call4 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true.do.end9_crit_edge, label %land.lhs.true6

land.lhs.true.do.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9

land.lhs.true6:                                   ; preds = %land.lhs.true
  %.b58 = load i1, ptr @pppol2tp_recv.__warned, align 1
  br i1 %.b58, label %land.lhs.true6.do.end9_crit_edge, label %if.then

land.lhs.true6.do.end9_crit_edge:                 ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9

if.then:                                          ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @pppol2tp_recv.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 222, ptr noundef nonnull @.str.19) #10
  br label %do.end9

do.end9:                                          ; preds = %if.then, %land.lhs.true6.do.end9_crit_edge, %land.lhs.true.do.end9_crit_edge, %rcu_read_lock.exit.do.end9_crit_edge
  %tobool11.not = icmp eq ptr %5, null
  br i1 %tobool11.not, label %no_sock, label %if.end13

if.end13:                                         ; preds = %do.end9
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %6 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %8 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i = sub i32 %7, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i.i)
  %cmp.i = icmp ugt i32 %sub.i.i, 1
  br i1 %cmp.i, label %if.end13.land.lhs.true15_crit_edge, label %if.end.i, !prof !124

if.end13.land.lhs.true15_crit_edge:               ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true15

if.end.i:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp3.i = icmp ult i32 %7, 2
  br i1 %cmp3.i, label %if.end.i.if.end25_crit_edge, label %pskb_may_pull.exit, !prof !121

if.end.i.if.end25_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

pskb_may_pull.exit:                               ; preds = %if.end.i
  %sub.i = sub nuw nsw i32 2, %sub.i.i
  %call13.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i) #10
  %cmp14.i.not = icmp eq ptr %call13.i, null
  br i1 %cmp14.i.not, label %pskb_may_pull.exit.if.end25_crit_edge, label %pskb_may_pull.exit.land.lhs.true15_crit_edge

pskb_may_pull.exit.land.lhs.true15_crit_edge:     ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true15

pskb_may_pull.exit.if.end25_crit_edge:            ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

land.lhs.true15:                                  ; preds = %pskb_may_pull.exit.land.lhs.true15_crit_edge, %if.end13.land.lhs.true15_crit_edge
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %11, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %13)
  %cmp = icmp eq i8 %13, -1
  br i1 %cmp, label %land.lhs.true17, label %land.lhs.true15.if.end25_crit_edge

land.lhs.true15.if.end25_crit_edge:               ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

land.lhs.true17:                                  ; preds = %land.lhs.true15
  %arrayidx19 = getelementptr i8, ptr %11, i32 1
  %14 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx19, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %15)
  %cmp21 = icmp eq i8 %15, 3
  br i1 %cmp21, label %if.then23, label %land.lhs.true17.if.end25_crit_edge

land.lhs.true17.if.end25_crit_edge:               ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

if.then23:                                        ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #12
  %call24 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 2) #10
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %land.lhs.true17.if.end25_crit_edge, %land.lhs.true15.if.end25_crit_edge, %pskb_may_pull.exit.if.end25_crit_edge, %if.end.i.if.end25_crit_edge
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %5, i32 0, i32 4
  %16 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load volatile i8, ptr %skc_state, align 2
  %18 = and i8 %17, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool27.not = icmp eq i8 %18, 0
  br i1 %tobool27.not, label %if.else, label %if.then28

if.then28:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  %chan = getelementptr inbounds %struct.pppox_sock, ptr %5, i32 0, i32 1
  tail call void @ppp_input(ptr noundef %chan, ptr noundef %skb) #10
  br label %if.end35

if.else:                                          ; preds = %if.end25
  %call30 = tail call i32 @sock_queue_rcv_skb(ptr noundef nonnull %5, ptr noundef %skb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %cmp31 = icmp slt i32 %call30, 0
  br i1 %cmp31, label %if.then33, label %if.else.if.end35_crit_edge

if.else.if.end35_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35

if.then33:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %rx_errors = getelementptr inbounds %struct.l2tp_session, ptr %session, i32 0, i32 27, i32 7
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %rx_errors, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %rx_errors, i32 1, i32 3, i32 1) #10
  %19 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rx_errors, ptr %rx_errors, i32 1, ptr elementtype(i32) %rx_errors) #10, !srcloc !143
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #10
  br label %if.end35

if.end35:                                         ; preds = %if.then33, %if.else.if.end35_crit_edge, %if.then28
  %call.i59 = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i59, label %if.end35.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i62

if.end35.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i62:                                ; preds = %if.end35
  %call1.i60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i60)
  %tobool.not.i61 = icmp eq i32 %call1.i60, 0
  br i1 %tobool.not.i61, label %land.lhs.true.i62.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i64

land.lhs.true.i62.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i62
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true2.i64:                               ; preds = %land.lhs.true.i62
  %.b4.i63 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i63, label %land.lhs.true2.i64.rcu_read_unlock.exit_crit_edge, label %if.then.i65

land.lhs.true2.i64.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i64
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

if.then.i65:                                      ; preds = %land.lhs.true2.i64
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.20, i32 noundef 724, ptr noundef nonnull @.str.22) #10
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i65, %land.lhs.true2.i64.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i62.rcu_read_unlock.exit_crit_edge, %if.end35.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !128
  %20 = tail call i32 @llvm.read_register.i32(metadata !111) #10
  %and.i.i.i.i.i66 = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i.i.i66 to ptr
  %preempt_count.i.i.i.i67 = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i.i.i67 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i.i.i67, align 4
  %sub.i.i.i = add i32 %23, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i67, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  br label %cleanup

no_sock:                                          ; preds = %do.end9
  %call.i68 = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i68, label %no_sock.rcu_read_unlock.exit78_crit_edge, label %land.lhs.true.i71

no_sock.rcu_read_unlock.exit78_crit_edge:         ; preds = %no_sock
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit78

land.lhs.true.i71:                                ; preds = %no_sock
  %call1.i69 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i69)
  %tobool.not.i70 = icmp eq i32 %call1.i69, 0
  br i1 %tobool.not.i70, label %land.lhs.true.i71.rcu_read_unlock.exit78_crit_edge, label %land.lhs.true2.i73

land.lhs.true.i71.rcu_read_unlock.exit78_crit_edge: ; preds = %land.lhs.true.i71
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit78

land.lhs.true2.i73:                               ; preds = %land.lhs.true.i71
  %.b4.i72 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i72, label %land.lhs.true2.i73.rcu_read_unlock.exit78_crit_edge, label %if.then.i74

land.lhs.true2.i73.rcu_read_unlock.exit78_crit_edge: ; preds = %land.lhs.true2.i73
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit78

if.then.i74:                                      ; preds = %land.lhs.true2.i73
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.20, i32 noundef 724, ptr noundef nonnull @.str.22) #10
  br label %rcu_read_unlock.exit78

rcu_read_unlock.exit78:                           ; preds = %if.then.i74, %land.lhs.true2.i73.rcu_read_unlock.exit78_crit_edge, %land.lhs.true.i71.rcu_read_unlock.exit78_crit_edge, %no_sock.rcu_read_unlock.exit78_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !128
  %24 = tail call i32 @llvm.read_register.i32(metadata !111) #10
  %and.i.i.i.i.i75 = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i.i.i.i75 to ptr
  %preempt_count.i.i.i.i76 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %preempt_count.i.i.i.i76 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %preempt_count.i.i.i.i76, align 4
  %sub.i.i.i77 = add i32 %27, -1
  store volatile i32 %sub.i.i.i77, ptr %preempt_count.i.i.i.i76, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  %call36 = tail call i32 @___ratelimit(ptr noundef nonnull @pppol2tp_recv._rs, ptr noundef nonnull @__func__.pppol2tp_recv) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %rcu_read_unlock.exit78.if.end44_crit_edge, label %do.end41

rcu_read_unlock.exit78.if.end44_crit_edge:        ; preds = %rcu_read_unlock.exit78
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end44

do.end41:                                         ; preds = %rcu_read_unlock.exit78
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.l2tp_session, ptr %session, i32 0, i32 21
  %call43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %name) #13
  br label %if.end44

if.end44:                                         ; preds = %do.end41, %rcu_read_unlock.exit78.if.end44_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end44, %rcu_read_unlock.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pppol2tp_show(ptr noundef %m, ptr noundef %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @pppol2tp_session_get_sock(ptr noundef %arg)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  %chan = getelementptr inbounds %struct.pppox_sock, ptr %call, i32 0, i32 1
  %call2 = tail call ptr @ppp_dev_name(ptr noundef %chan) #10
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.18, ptr noundef %call2) #10
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %call, i32 0, i32 19
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !122
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #10
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #10, !srcloc !123
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.if.end_crit_edge, label %if.then10.i.i.i.i, !prof !124

if.end5.i.i.i.i.if.end_crit_edge:                 ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 3) #10
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !125
  tail call void @sk_free(ptr noundef nonnull %call) #10
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ppp_input(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_queue_rcv_skb(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pppol2tp_xmit(ptr nocapture noundef readonly %chan, ptr noundef %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  %2 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 13
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %2, align 4
  %and1.i.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %lor.lhs.false, label %entry.abort_crit_edge

entry.abort_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %abort

lor.lhs.false:                                    ; preds = %entry
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load volatile i8, ptr %skc_state, align 2
  %7 = and i8 %6, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %lor.lhs.false.abort_crit_edge, label %if.end

lor.lhs.false.abort_crit_edge:                    ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %abort

if.end:                                           ; preds = %lor.lhs.false
  %call1 = tail call fastcc ptr @pppol2tp_sock_to_session(ptr noundef %1)
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end.abort_crit_edge, label %if.end4

if.end.abort_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %abort

if.end4:                                          ; preds = %if.end
  %tunnel5 = getelementptr inbounds %struct.l2tp_session, ptr %call1, i32 0, i32 2
  %8 = ptrtoint ptr %tunnel5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tunnel5, align 4
  %encap = getelementptr inbounds %struct.l2tp_tunnel, ptr %9, i32 0, i32 10
  %10 = ptrtoint ptr %encap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %encap, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp = icmp eq i32 %11, 0
  %add = select i1 %cmp, i32 156, i32 148
  %hdr_len = getelementptr inbounds %struct.l2tp_session, ptr %call1, i32 0, i32 10
  %12 = ptrtoint ptr %hdr_len to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %hdr_len, align 2
  %conv7 = zext i16 %13 to i32
  %add8 = add nuw nsw i32 %conv7, 2
  %add9 = add nuw nsw i32 %add8, %add
  %cloned.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %14 = ptrtoint ptr %cloned.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load.i.i = load i8, ptr %cloned.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool.not.i.i = icmp sgt i8 %bf.load.i.i, -1
  br i1 %tobool.not.i.i, label %if.end4.skb_header_cloned.exit.i_crit_edge, label %if.end.i.i

if.end4.skb_header_cloned.exit.i_crit_edge:       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_header_cloned.exit.i

if.end.i.i:                                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %15 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %end.i.i.i, align 4
  %dataref1.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %16, i32 0, i32 10
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dataref1.i.i, i32 noundef 4) #10
  %17 = ptrtoint ptr %dataref1.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %dataref1.i.i, align 4
  %and.i.i = and i32 %18, 65535
  %shr.i.i = ashr i32 %18, 16
  %sub.i.i = sub nsw i32 %and.i.i, %shr.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i.i)
  %cmp.i.not.i = icmp eq i32 %sub.i.i, 1
  br label %skb_header_cloned.exit.i

skb_header_cloned.exit.i:                         ; preds = %if.end.i.i, %if.end4.skb_header_cloned.exit.i_crit_edge
  %retval.0.i.i = phi i1 [ %cmp.i.not.i, %if.end.i.i ], [ true, %if.end4.skb_header_cloned.exit.i_crit_edge ]
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %19 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data.i.i.i, align 4
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %21 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %head.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %20 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %22 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i.i.i, i32 %add9)
  %tobool.not.i3.i = icmp uge i32 %sub.ptr.sub.i.i.i, %add9
  %or.cond.i.i = and i1 %retval.0.i.i, %tobool.not.i3.i
  br i1 %or.cond.i.i, label %skb_header_cloned.exit.i.if.end13_crit_edge, label %skb_cow_head.exit

skb_header_cloned.exit.i.if.end13_crit_edge:      ; preds = %skb_header_cloned.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

skb_cow_head.exit:                                ; preds = %skb_header_cloned.exit.i
  %23 = tail call i32 @llvm.usub.sat.i32(i32 %add9, i32 %sub.ptr.sub.i.i.i) #10
  %add.i.i = add nuw nsw i32 %23, 127
  %and.i4.i = and i32 %add.i.i, 524160
  %call4.i.i = tail call i32 @pskb_expand_head(ptr noundef %skb, i32 noundef %and.i4.i, i32 noundef 0, i32 noundef 2592) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool11.not = icmp eq i32 %call4.i.i, 0
  br i1 %tobool11.not, label %skb_cow_head.exit.if.end13_crit_edge, label %abort_put_sess

skb_cow_head.exit.if.end13_crit_edge:             ; preds = %skb_cow_head.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.end13:                                         ; preds = %skb_cow_head.exit.if.end13_crit_edge, %skb_header_cloned.exit.i.if.end13_crit_edge
  %24 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %25, i32 -2
  store ptr %add.ptr.i, ptr %data.i.i.i, align 4
  %len1.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %26 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %len1.i, align 4
  %add.i = add i32 %27, 2
  store i32 %add.i, ptr %len1.i, align 4
  %28 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 -1, ptr %add.ptr.i, align 1
  %29 = load ptr, ptr %data.i.i.i, align 4
  %arrayidx16 = getelementptr i8, ptr %29, i32 1
  %30 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 3, ptr %arrayidx16, align 1
  tail call fastcc void @local_bh_disable()
  %call17 = tail call i32 @l2tp_xmit_skb(ptr noundef nonnull %call1, ptr noundef %skb) #10
  tail call fastcc void @local_bh_enable()
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 19
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !122
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #10
  %31 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #10, !srcloc !123
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %31, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !124

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 3) #10
  br label %cleanup

if.then.i:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !125
  tail call void @sk_free(ptr noundef %1) #10
  br label %cleanup

abort_put_sess:                                   ; preds = %skb_cow_head.exit
  %skc_refcnt.i34 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 19
  %call.i.i.i.i.i.i35 = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i34, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !122
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i34, i32 1, i32 3, i32 1) #10
  %32 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i34, ptr %skc_refcnt.i34, i32 1, ptr elementtype(i32) %skc_refcnt.i34) #10, !srcloc !123
  %asmresult.i.i.i.i.i.i.i36 = extractvalue { i32, i32, i32 } %32, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i36)
  %cmp.i.i.i.i37 = icmp eq i32 %asmresult.i.i.i.i.i.i.i36, 1
  br i1 %cmp.i.i.i.i37, label %if.then.i41, label %if.end5.i.i.i.i39

if.end5.i.i.i.i39:                                ; preds = %abort_put_sess
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i36)
  %.not.i.i.i.i38 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i36, 0
  br i1 %.not.i.i.i.i38, label %if.end5.i.i.i.i39.abort_crit_edge, label %if.then10.i.i.i.i40, !prof !124

if.end5.i.i.i.i39.abort_crit_edge:                ; preds = %if.end5.i.i.i.i39
  call void @__sanitizer_cov_trace_pc() #12
  br label %abort

if.then10.i.i.i.i40:                              ; preds = %if.end5.i.i.i.i39
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i34, i32 noundef 3) #10
  br label %abort

if.then.i41:                                      ; preds = %abort_put_sess
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !125
  tail call void @sk_free(ptr noundef %1) #10
  br label %abort

abort:                                            ; preds = %if.then.i41, %if.then10.i.i.i.i40, %if.end5.i.i.i.i39.abort_crit_edge, %if.end.abort_crit_edge, %lor.lhs.false.abort_crit_edge, %entry.abort_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #10
  br label %cleanup

cleanup:                                          ; preds = %abort, %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge
  ret i32 1
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @l2tp_xmit_skb(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_expand_head(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @l2tp_session_set_header_len(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sock_wmalloc(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_revert(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_copy_from_iter(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_recv_datagram(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_datagram_iter(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @l2tp_udp_encap_recv(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_purge(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pppol2tp_tunnel_copy_stats(ptr nocapture noundef %stats, ptr noundef %tunnel) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %session_id = getelementptr inbounds %struct.pppol2tp_ioc_stats, ptr %stats, i32 0, i32 1
  %0 = ptrtoint ptr %session_id to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %session_id, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %stats1 = getelementptr inbounds %struct.l2tp_tunnel, ptr %tunnel, i32 0, i32 11
  tail call fastcc void @pppol2tp_copy_stats(ptr noundef %stats, ptr noundef %stats1)
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = zext i16 %1 to i32
  %call = tail call ptr @l2tp_tunnel_get_session(ptr noundef %tunnel, i32 noundef %conv) #10
  %tobool3.not = icmp eq ptr %call, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %pwtype = getelementptr inbounds %struct.l2tp_session, ptr %call, i32 0, i32 26
  %2 = ptrtoint ptr %pwtype to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pwtype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %3)
  %cmp.not = icmp eq i32 %3, 7
  br i1 %cmp.not, label %if.end8, label %if.then7

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @l2tp_session_dec_refcount(ptr noundef nonnull %call) #10
  br label %cleanup

if.end8:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  %stats9 = getelementptr inbounds %struct.l2tp_session, ptr %call, i32 0, i32 27
  tail call fastcc void @pppol2tp_copy_stats(ptr noundef %stats, ptr noundef %stats9)
  tail call void @l2tp_session_dec_refcount(ptr noundef nonnull %call) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.then7, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ -53, %if.then7 ], [ 0, %if.end8 ], [ 0, %if.then ], [ -53, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pppol2tp_copy_stats(ptr nocapture noundef writeonly %dest, ptr noundef %stats) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %dest, i32 0, i32 72)
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %stats, i32 noundef 4) #10
  %1 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %stats, align 4
  %conv = sext i32 %2 to i64
  %tx_packets1 = getelementptr inbounds %struct.pppol2tp_ioc_stats, ptr %dest, i32 0, i32 3
  %3 = ptrtoint ptr %tx_packets1 to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %conv, ptr %tx_packets1, align 8
  %tx_bytes = getelementptr inbounds %struct.l2tp_stats, ptr %stats, i32 0, i32 1
  %call.i.i38 = tail call zeroext i1 @__kasan_check_read(ptr noundef %tx_bytes, i32 noundef 4) #10
  %4 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %tx_bytes, align 4
  %conv3 = sext i32 %5 to i64
  %tx_bytes4 = getelementptr inbounds %struct.pppol2tp_ioc_stats, ptr %dest, i32 0, i32 4
  %6 = ptrtoint ptr %tx_bytes4 to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %conv3, ptr %tx_bytes4, align 8
  %tx_errors = getelementptr inbounds %struct.l2tp_stats, ptr %stats, i32 0, i32 2
  %call.i.i39 = tail call zeroext i1 @__kasan_check_read(ptr noundef %tx_errors, i32 noundef 4) #10
  %7 = ptrtoint ptr %tx_errors to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %tx_errors, align 4
  %conv6 = sext i32 %8 to i64
  %tx_errors7 = getelementptr inbounds %struct.pppol2tp_ioc_stats, ptr %dest, i32 0, i32 5
  %9 = ptrtoint ptr %tx_errors7 to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %conv6, ptr %tx_errors7, align 8
  %rx_packets = getelementptr inbounds %struct.l2tp_stats, ptr %stats, i32 0, i32 3
  %call.i.i40 = tail call zeroext i1 @__kasan_check_read(ptr noundef %rx_packets, i32 noundef 4) #10
  %10 = ptrtoint ptr %rx_packets to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %rx_packets, align 4
  %conv9 = sext i32 %11 to i64
  %rx_packets10 = getelementptr inbounds %struct.pppol2tp_ioc_stats, ptr %dest, i32 0, i32 6
  %12 = ptrtoint ptr %rx_packets10 to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %conv9, ptr %rx_packets10, align 8
  %rx_bytes = getelementptr inbounds %struct.l2tp_stats, ptr %stats, i32 0, i32 4
  %call.i.i41 = tail call zeroext i1 @__kasan_check_read(ptr noundef %rx_bytes, i32 noundef 4) #10
  %13 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %rx_bytes, align 4
  %conv12 = sext i32 %14 to i64
  %rx_bytes13 = getelementptr inbounds %struct.pppol2tp_ioc_stats, ptr %dest, i32 0, i32 7
  %15 = ptrtoint ptr %rx_bytes13 to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %conv12, ptr %rx_bytes13, align 8
  %rx_seq_discards = getelementptr inbounds %struct.l2tp_stats, ptr %stats, i32 0, i32 5
  %call.i.i42 = tail call zeroext i1 @__kasan_check_read(ptr noundef %rx_seq_discards, i32 noundef 4) #10
  %16 = ptrtoint ptr %rx_seq_discards to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %rx_seq_discards, align 4
  %conv15 = sext i32 %17 to i64
  %rx_seq_discards16 = getelementptr inbounds %struct.pppol2tp_ioc_stats, ptr %dest, i32 0, i32 8
  %18 = ptrtoint ptr %rx_seq_discards16 to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %conv15, ptr %rx_seq_discards16, align 8
  %rx_oos_packets = getelementptr inbounds %struct.l2tp_stats, ptr %stats, i32 0, i32 6
  %call.i.i43 = tail call zeroext i1 @__kasan_check_read(ptr noundef %rx_oos_packets, i32 noundef 4) #10
  %19 = ptrtoint ptr %rx_oos_packets to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %rx_oos_packets, align 4
  %conv18 = sext i32 %20 to i64
  %rx_oos_packets19 = getelementptr inbounds %struct.pppol2tp_ioc_stats, ptr %dest, i32 0, i32 9
  %21 = ptrtoint ptr %rx_oos_packets19 to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %conv18, ptr %rx_oos_packets19, align 8
  %rx_errors = getelementptr inbounds %struct.l2tp_stats, ptr %stats, i32 0, i32 7
  %call.i.i44 = tail call zeroext i1 @__kasan_check_read(ptr noundef %rx_errors, i32 noundef 4) #10
  %22 = ptrtoint ptr %rx_errors to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %rx_errors, align 4
  %conv21 = sext i32 %23 to i64
  %rx_errors22 = getelementptr inbounds %struct.pppol2tp_ioc_stats, ptr %dest, i32 0, i32 10
  %24 = ptrtoint ptr %rx_errors22 to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %conv21, ptr %rx_errors22, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pppol2tp_session_create(ptr nocapture noundef readnone %net, ptr noundef %tunnel, i32 noundef %session_id, i32 noundef %peer_session_id, ptr noundef %cfg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sock = getelementptr inbounds %struct.l2tp_tunnel, ptr %tunnel, i32 0, i32 16
  %0 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sock, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call ptr @l2tp_session_create(i32 noundef 112, ptr noundef %tunnel, i32 noundef %session_id, i32 noundef %peer_session_id, ptr noundef %cfg) #10
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %call to i32
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %recv_skb.i = getelementptr inbounds %struct.l2tp_session, ptr %call, i32 0, i32 29
  %3 = ptrtoint ptr %recv_skb.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @pppol2tp_recv, ptr %recv_skb.i, align 4
  %show.i = getelementptr inbounds %struct.l2tp_session, ptr %call, i32 0, i32 31
  %4 = ptrtoint ptr %show.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @pppol2tp_show, ptr %show.i, align 4
  %priv.i.i = getelementptr inbounds %struct.l2tp_session, ptr %call, i32 0, i32 32
  %sk_lock.i = getelementptr inbounds %struct.l2tp_session, ptr %call, i32 1, i32 1
  tail call void @__mutex_init(ptr noundef %sk_lock.i, ptr noundef nonnull @.str.26, ptr noundef nonnull @pppol2tp_session_init.__key) #10
  %5 = tail call i32 @llvm.read_register.i32(metadata !111) #10
  %and.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task.i, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 68
  %9 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pid.i, align 8
  %11 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %priv.i.i, align 4
  %call5 = tail call i32 @l2tp_session_register(ptr noundef %call, ptr noundef %tunnel) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp = icmp slt i32 %call5, 0
  br i1 %cmp, label %err_sess, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

err_sess:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef %call) #10
  br label %cleanup

cleanup:                                          ; preds = %err_sess, %if.end4.cleanup_crit_edge, %if.then2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4.cleanup_crit_edge ], [ %2, %if.then2 ], [ %call5, %err_sess ], [ -2, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

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

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !14, !15, !16, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !62, !64, !65, !66, !68, !69, !71, !73, !74, !75, !76, !78, !80, !82, !83, !85, !87, !88, !90, !92, !93, !94, !95, !96, !97, !99, !101, !102, !104, !105, !107, !109}
!llvm.named.register.sp = !{!111}
!llvm.module.flags = !{!112, !113, !114, !115, !116, !117, !118, !119}
!llvm.ident = !{!120}

!0 = !{ptr @__initcall__kmod_l2tp_ppp__535_1727_pppol2tp_init6, !1, !"__initcall__kmod_l2tp_ppp__535_1727_pppol2tp_init6", i1 false, i1 false}
!1 = !{!"../net/l2tp/l2tp_ppp.c", i32 1727, i32 1}
!2 = !{ptr @__exitcall_pppol2tp_exit, !3, !"__exitcall_pppol2tp_exit", i1 false, i1 false}
!3 = !{!"../net/l2tp/l2tp_ppp.c", i32 1728, i32 1}
!4 = !{ptr @__UNIQUE_ID_author536, !5, !"__UNIQUE_ID_author536", i1 false, i1 false}
!5 = !{!"../net/l2tp/l2tp_ppp.c", i32 1730, i32 1}
!6 = !{ptr @__UNIQUE_ID_description537, !7, !"__UNIQUE_ID_description537", i1 false, i1 false}
!7 = !{!"../net/l2tp/l2tp_ppp.c", i32 1731, i32 1}
!8 = !{ptr @__UNIQUE_ID_file538, !9, !"__UNIQUE_ID_file538", i1 false, i1 false}
!9 = !{!"../net/l2tp/l2tp_ppp.c", i32 1732, i32 1}
!10 = !{ptr @__UNIQUE_ID_license539, !9, !"__UNIQUE_ID_license539", i1 false, i1 false}
!11 = !{ptr @__UNIQUE_ID_version540, !12, !"__UNIQUE_ID_version540", i1 false, i1 false}
!12 = !{!"../net/l2tp/l2tp_ppp.c", i32 1733, i32 1}
!13 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.2, !12, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @__modver_attr, !12, !"__modver_attr", i1 false, i1 false}
!17 = !{ptr @__UNIQUE_ID_alias541, !18, !"__UNIQUE_ID_alias541", i1 false, i1 false}
!18 = !{!"../net/l2tp/l2tp_ppp.c", i32 1734, i32 1}
!19 = !{ptr @__UNIQUE_ID_alias542, !20, !"__UNIQUE_ID_alias542", i1 false, i1 false}
!20 = !{!"../net/l2tp/l2tp_ppp.c", i32 1735, i32 1}
!21 = !{ptr @pppol2tp_sk_proto, !22, !"pppol2tp_sk_proto", i1 false, i1 false}
!22 = !{!"../net/l2tp/l2tp_ppp.c", i32 481, i32 21}
!23 = !{ptr @pppol2tp_net_ops, !24, !"pppol2tp_net_ops", i1 false, i1 false}
!24 = !{!"../net/l2tp/l2tp_ppp.c", i32 1631, i32 33}
!25 = !{ptr @.str.3, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../net/l2tp/l2tp_ppp.c", i32 1615, i32 8}
!27 = !{ptr @pppol2tp_seq_ops, !28, !"pppol2tp_seq_ops", i1 false, i1 false}
!28 = !{!"../net/l2tp/l2tp_ppp.c", i32 1598, i32 36}
!29 = !{ptr @.str.4, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../net/l2tp/l2tp_ppp.c", i32 1453, i32 6}
!31 = !{ptr @.str.5, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../net/l2tp/l2tp_ppp.c", i32 1580, i32 15}
!33 = !{ptr @.str.6, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../net/l2tp/l2tp_ppp.c", i32 1581, i32 15}
!35 = !{ptr @.str.7, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../net/l2tp/l2tp_ppp.c", i32 1582, i32 15}
!37 = !{ptr @.str.8, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../net/l2tp/l2tp_ppp.c", i32 1583, i32 15}
!39 = !{ptr @.str.9, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../net/l2tp/l2tp_ppp.c", i32 1584, i32 15}
!41 = !{ptr @.str.10, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../net/l2tp/l2tp_ppp.c", i32 1585, i32 15}
!43 = !{ptr @.str.11, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../net/l2tp/l2tp_ppp.c", i32 1504, i32 16}
!45 = !{ptr @.str.12, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../net/l2tp/l2tp_ppp.c", i32 1508, i32 16}
!47 = !{ptr @.str.13, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../net/l2tp/l2tp_ppp.c", i32 1544, i32 16}
!49 = !{ptr @.str.14, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../net/l2tp/l2tp_ppp.c", i32 1551, i32 16}
!51 = !{ptr @.str.15, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../net/l2tp/l2tp_ppp.c", i32 1554, i32 26}
!53 = !{ptr @.str.16, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../net/l2tp/l2tp_ppp.c", i32 1554, i32 34}
!55 = !{ptr @.str.17, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../net/l2tp/l2tp_ppp.c", i32 1557, i32 16}
!57 = !{ptr @.str.18, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../net/l2tp/l2tp_ppp.c", i32 1569, i32 17}
!59 = distinct !{null, !60, !"__warned", i1 false, i1 false}
!60 = !{!"../net/l2tp/l2tp_ppp.c", i32 143, i32 7}
!61 = !{ptr @.str.19, !60, !"<string literal>", i1 false, i1 false}
!62 = distinct !{null, !63, !"__warned", i1 false, i1 false}
!63 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!64 = !{ptr @.str.20, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.21, !63, !"<string literal>", i1 false, i1 false}
!66 = distinct !{null, !67, !"__warned", i1 false, i1 false}
!67 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!68 = !{ptr @.str.22, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @pppol2tp_net_id, !70, !"pppol2tp_net_id", i1 false, i1 false}
!70 = !{!"../net/l2tp/l2tp_ppp.c", i32 1399, i32 21}
!71 = !{ptr @.str.23, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../net/l2tp/l2tp_ppp.c", i32 1701, i32 2}
!73 = !{ptr @.str.24, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @pppol2tp_init._entry, !72, !"_entry", i1 false, i1 false}
!75 = !{ptr @pppol2tp_init._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @pppol2tp_proto, !77, !"pppol2tp_proto", i1 false, i1 false}
!77 = !{!"../net/l2tp/l2tp_ppp.c", i32 1664, i32 33}
!78 = !{ptr @pppol2tp_ops, !79, !"pppol2tp_ops", i1 false, i1 false}
!79 = !{!"../net/l2tp/l2tp_ppp.c", i32 1641, i32 31}
!80 = distinct !{null, !81, !"__warned", i1 false, i1 false}
!81 = !{!"../net/l2tp/l2tp_ppp.c", i32 454, i32 14}
!82 = !{ptr @.str.25, !81, !"<string literal>", i1 false, i1 false}
!83 = distinct !{null, !84, !"__warned", i1 false, i1 false}
!84 = !{!"../net/l2tp/l2tp_ppp.c", i32 762, i32 7}
!85 = !{ptr @pppol2tp_session_init.__key, !86, !"__key", i1 false, i1 false}
!86 = !{!"../net/l2tp/l2tp_ppp.c", i32 550, i32 2}
!87 = !{ptr @.str.26, !86, !"<string literal>", i1 false, i1 false}
!88 = distinct !{null, !89, !"__warned", i1 false, i1 false}
!89 = !{!"../net/l2tp/l2tp_ppp.c", i32 222, i32 7}
!90 = !{ptr @.str.27, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../net/l2tp/l2tp_ppp.c", i32 254, i32 2}
!92 = !{ptr @pppol2tp_recv._rs, !91, !"_rs", i1 false, i1 false}
!93 = !{ptr @__func__.pppol2tp_recv, !91, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @.str.28, !91, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @pppol2tp_recv._entry, !91, !"_entry", i1 false, i1 false}
!96 = !{ptr @pppol2tp_recv._entry_ptr, !91, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @pppol2tp_chan_ops, !98, !"pppol2tp_chan_ops", i1 false, i1 false}
!98 = !{!"../net/l2tp/l2tp_ppp.c", i32 127, i32 37}
!99 = distinct !{null, !100, !"__warned", i1 false, i1 false}
!100 = !{!"../include/net/sock.h", i32 2077, i32 8}
!101 = !{ptr @.str.29, !100, !"<string literal>", i1 false, i1 false}
!102 = distinct !{null, !103, !"__already_done", i1 false, i1 false}
!103 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!104 = !{ptr @.str.30, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @.str.31, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!107 = !{ptr @.str.32, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!109 = !{ptr @pppol2tp_nl_cmd_ops, !110, !"pppol2tp_nl_cmd_ops", i1 false, i1 false}
!110 = !{!"../net/l2tp/l2tp_ppp.c", i32 1672, i32 37}
!111 = !{!"sp"}
!112 = !{i32 1, !"wchar_size", i32 2}
!113 = !{i32 1, !"min_enum_size", i32 4}
!114 = !{i32 8, !"branch-target-enforcement", i32 0}
!115 = !{i32 8, !"sign-return-address", i32 0}
!116 = !{i32 8, !"sign-return-address-all", i32 0}
!117 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!118 = !{i32 7, !"uwtable", i32 1}
!119 = !{i32 7, !"frame-pointer", i32 2}
!120 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!121 = !{!"branch_weights", i32 1, i32 2000}
!122 = !{i64 2148471045}
!123 = !{i64 2148385485, i64 2148385517, i64 2148385546, i64 2148385580, i64 2148385611, i64 2148385634}
!124 = !{!"branch_weights", i32 2000, i32 1}
!125 = !{i64 2149347159}
!126 = !{i64 2149397649}
!127 = !{i64 2148383020, i64 2148383052, i64 2148383081, i64 2148383115, i64 2148383146, i64 2148383169}
!128 = !{i64 2149397915}
!129 = !{i64 4594750}
!130 = !{i64 4594947}
!131 = !{i64 2152080180}
!132 = !{i64 2158008688, i64 2158008968, i64 2158009302, i64 2158009636}
!133 = !{i64 2158013709, i64 2158013734}
!134 = !{i64 2152099195, i64 2152099220}
!135 = !{i64 2152099876, i64 2152099901}
!136 = !{!"auto-init"}
!137 = !{i64 2157997664}
!138 = !{i64 2158024384, i64 2158024664, i64 2158024998, i64 2158025332}
!139 = !{i64 2158035745, i64 2158036025, i64 2158036359, i64 2158036693}
!140 = !{i64 2148380909}
!141 = !{i64 866529, i64 866554, i64 866576, i64 866592, i64 866604, i64 866624, i64 866648, i64 866664, i64 866676}
!142 = !{i64 2148381097}
!143 = !{i64 2148381490, i64 2148381516, i64 2148381545, i64 2148381579, i64 2148381610, i64 2148381633}
