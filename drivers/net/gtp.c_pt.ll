; ModuleID = '/llk/IR_all_yes/drivers/net/gtp.c_pt.bc'
source_filename = "../drivers/net/gtp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.genl_family = type { i32, i32, [16 x i8], i32, i32, i32, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rtnl_link_ops = type { %struct.list_head, ptr, i32, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nla_policy = type { i8, i8, i16, %union.anon }
%union.anon = type { i32 }
%struct.genl_small_ops = type { ptr, ptr, i8, i8, i8, i8 }
%struct.genl_multicast_group = type { [16 x i8], i8 }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.lock_class_key = type { %union.anon.9 }
%union.anon.9 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.device_type = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.genl_info = type { i32, i32, ptr, ptr, ptr, ptr, %struct.possible_net_t, [2 x ptr], ptr }
%struct.possible_net_t = type { ptr }
%struct.sk_buff = type { %union.anon.0, %union.anon.137, %union.anon.138, [48 x i8], %union.anon.139, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.141, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { ptr, ptr, %union.anon.2 }
%union.anon.2 = type { ptr }
%union.anon.137 = type { ptr }
%union.anon.138 = type { i64 }
%union.anon.139 = type { %struct.anon.140 }
%struct.anon.140 = type { i32, ptr }
%union.anon.141 = type { %struct.anon.142 }
%struct.anon.142 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.143, i32, i32, i32, i16, i16, %union.anon.145, i32, %union.anon.146, %union.anon.147, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.143 = type { i32 }
%union.anon.145 = type { i32 }
%union.anon.146 = type { i32 }
%union.anon.147 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.sock_common = type { %union.anon.108, %union.anon.110, %union.anon.111, i16, i8, i8, i32, %union.anon.113, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.116, [0 x i32], %union.anon.117, i16, i16, %union.anon.118, %struct.refcount_struct, [0 x i32], %union.anon.119 }
%union.anon.108 = type { i64 }
%union.anon.110 = type { i32 }
%union.anon.111 = type { i32 }
%union.anon.113 = type { %struct.hlist_node }
%struct.in6_addr = type { %union.anon.29 }
%union.anon.29 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.116 = type { i32 }
%union.anon.117 = type { %struct.hlist_node }
%union.anon.118 = type { i32 }
%union.anon.119 = type { i32 }
%struct.gtp_dev = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.pdp_ctx = type { %struct.hlist_node, %struct.hlist_node, %union.anon.158, i8, i16, %struct.in_addr, %struct.in_addr, ptr, ptr, %struct.atomic_t, %struct.callback_head }
%union.anon.158 = type { %struct.anon.159 }
%struct.anon.159 = type { i64, i16 }
%struct.in_addr = type { i32 }
%struct.callback_head = type { ptr, ptr }
%struct.anon.160 = type { i32, i32 }
%struct.nlmsghdr = type { i32, i16, i16, i32, i32 }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.spinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.8 }
%union.anon.8 = type { i32 }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.21, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.21 = type { %struct.anon.22 }
%struct.anon.22 = type { ptr, i32, i32, i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.105, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.105 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.95, i32, %struct.spinlock }
%union.anon.95 = type { %struct.anon.96 }
%struct.anon.96 = type { ptr, ptr }
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
%struct.netlink_callback = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, i8, %union.anon.124 }
%union.anon.124 = type { [6 x i32], [24 x i8] }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.3, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.136, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.3 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%union.anon.136 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.pcpu_sw_netstats = type { i64, i64, i64, i64, %struct.u64_stats_sync }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.gtp_pktinfo = type { ptr, ptr, %struct.flowi4, ptr, ptr, ptr, i16 }
%struct.flowi4 = type { %struct.flowi_common, i32, i32, %union.flowi_uli }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.kuid_t = type { i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, ptr }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.120, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.121, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.122, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.anon.120 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.121 = type { ptr }
%union.anon.122 = type { ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.udp_sock = type { %struct.inet_sock, i32, i32, i8, i8, i16, i16, i16, i16, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, [92 x i8], %struct.sk_buff_head, i32, [68 x i8] }
%struct.inet_sock = type { %struct.sock, ptr, i32, i16, i16, ptr, i16, i16, i8, i8, i8, i8, i16, i8, i8, i32, i32, i32, ptr, %struct.inet_cork_full }
%struct.inet_cork_full = type { %struct.inet_cork, %struct.flowi }
%struct.inet_cork = type { i32, i32, ptr, i32, i32, ptr, i8, i8, i16, i8, i16, i64, i32 }
%struct.flowi = type { %union.anon.24 }
%union.anon.24 = type { %struct.flowi6 }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.gtp0_header = type <{ i8, i8, i16, i16, i16, i8, [3 x i8], i64 }>
%struct.gtp1_header = type { i8, i8, i16, i32 }
%struct.udp_tunnel_sock_cfg = type { ptr, i8, ptr, ptr, ptr, ptr, ptr }
%struct.socket = type { i32, i16, i32, ptr, ptr, ptr, [104 x i8], %struct.socket_wq }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [60 x i8] }

@__initcall__kmod_gtp__629_1446_gtp_init7 = internal global ptr @gtp_init, section ".initcall7.init", align 4
@gtp_genl_family = internal global %struct.genl_family { i32 0, i32 0, [16 x i8] c"gtp\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 12, i32 0, i8 -128, i8 0, i8 3, i8 1, ptr @gtp_genl_policy, ptr null, ptr null, ptr null, ptr @gtp_genl_ops, ptr @gtp_genl_mcgrps, ptr null }, section ".data..ro_after_init", align 4
@gtp_link_ops = internal global %struct.rtnl_link_ops { %struct.list_head zeroinitializer, ptr @.str.9, i32 36, ptr null, ptr @gtp_link_setup, i8 0, i32 4, ptr @gtp_policy, ptr @gtp_validate, ptr @gtp_newlink, ptr null, ptr @gtp_dellink, ptr @gtp_get_size, ptr @gtp_fill_info, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, section ".data..read_mostly", align 4
@gtp_net_ops = internal global { %struct.pernet_operations, [32 x i8] } { %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @gtp_net_init, ptr null, ptr @gtp_net_exit, ptr null, ptr @gtp_net_id, i32 8 }, [32 x i8] zeroinitializer }, align 32
@gtp_fini._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1454, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\016gtp: GTP module unloaded\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"gtp_fini\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"drivers/net/gtp.c\00", [46 x i8] zeroinitializer }, align 32
@gtp_fini._entry_ptr = internal global ptr @gtp_fini._entry, section ".printk_index", align 4
@__exitcall_gtp_fini = internal global ptr @gtp_fini, section ".exitcall.exit", align 4
@__UNIQUE_ID_file630 = internal constant [25 x i8] c"gtp.file=drivers/net/gtp\00", section ".modinfo", align 1
@__UNIQUE_ID_license631 = internal constant [16 x i8] c"gtp.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author632 = internal constant [45 x i8] c"gtp.author=Harald Welte <hwelte@sysmocom.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description633 = internal constant [62 x i8] c"gtp.description=Interface driver for GTP encapsulated traffic\00", section ".modinfo", align 1
@__UNIQUE_ID_alias634 = internal constant [24 x i8] c"gtp.alias=rtnl-link-gtp\00", section ".modinfo", align 1
@__UNIQUE_ID_alias635 = internal constant [40 x i8] c"gtp.alias=net-pf-16-proto-16-family-gtp\00", section ".modinfo", align 1
@gtp_h_initval = internal global { i32, [28 x i8] } zeroinitializer, align 32
@gtp_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 1435, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\016gtp: GTP module loaded (pdp ctx size %zd bytes)\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"gtp_init\00", [23 x i8] zeroinitializer }, align 32
@gtp_init._entry_ptr = internal global ptr @gtp_init._entry, section ".printk_index", align 4
@gtp_init._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.4, ptr @.str.2, i32 1443, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013gtp: error loading GTP module loaded\0A\00", [56 x i8] zeroinitializer }, align 32
@gtp_init._entry_ptr.7 = internal global ptr @gtp_init._entry.5, section ".printk_index", align 4
@gtp_genl_policy = internal constant { [13 x %struct.nla_policy], [56 x i8] } { [13 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 4, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer], [56 x i8] zeroinitializer }, align 32
@gtp_genl_ops = internal constant { [3 x %struct.genl_small_ops], [60 x i8] } { [3 x %struct.genl_small_ops] [%struct.genl_small_ops { ptr @gtp_genl_new_pdp, ptr null, i8 0, i8 0, i8 1, i8 3 }, %struct.genl_small_ops { ptr @gtp_genl_del_pdp, ptr null, i8 1, i8 0, i8 1, i8 3 }, %struct.genl_small_ops { ptr @gtp_genl_get_pdp, ptr @gtp_genl_dump_pdp, i8 2, i8 0, i8 1, i8 3 }], [60 x i8] zeroinitializer }, align 32
@gtp_genl_mcgrps = internal constant { [1 x %struct.genl_multicast_group], [47 x i8] } { [1 x %struct.genl_multicast_group] [%struct.genl_multicast_group { [16 x i8] c"gtp\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0 }], [47 x i8] zeroinitializer }, align 32
@gtp_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr @gtp_dev_init, ptr @gtp_dev_uninit, ptr null, ptr null, ptr @gtp_dev_xmit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dev_get_tstats64, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@gtp_dev_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&(&stat->syncp)->seq\00", [43 x i8] zeroinitializer }, align 32
@gtp_dev_xmit.__UNIQUE_ID_ddebug607 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.10, ptr @.str.2, ptr @.str.11, i8 0, i8 -108, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"gtp\00", [28 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"gtp_dev_xmit\00", [19 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"gtp -> IP src: %pI4 dst: %pI4\0A\00", [33 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@gtp_build_skb_ip4.__UNIQUE_ID_ddebug602 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.14, ptr @.str.2, ptr @.str.15, i8 0, i8 126, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"gtp_build_skb_ip4\00", [46 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"no PDP ctx found for %pI4, skip\0A\00", [63 x i8] zeroinitializer }, align 32
@gtp_build_skb_ip4.__UNIQUE_ID_ddebug603 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.14, ptr @.str.2, ptr @.str.16, i8 0, i8 127, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"found PDP context %p\0A\00", [42 x i8] zeroinitializer }, align 32
@gtp_build_skb_ip4.__UNIQUE_ID_ddebug604 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.14, ptr @.str.2, ptr @.str.17, i8 0, i8 -128, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"no route to SSGN %pI4\0A\00", [41 x i8] zeroinitializer }, align 32
@gtp_build_skb_ip4.__UNIQUE_ID_ddebug605 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.14, ptr @.str.2, ptr @.str.18, i8 0, i8 -126, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"circular route to SSGN %pI4\0A\00", [35 x i8] zeroinitializer }, align 32
@gtp_build_skb_ip4.__UNIQUE_ID_ddebug606 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.14, ptr @.str.2, ptr @.str.19, i8 0, i8 -120, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"packet too big, fragmentation needed\0A\00", [58 x i8] zeroinitializer }, align 32
@ipv4_pdp_find.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.20 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/skbuff.h\00", [41 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.22 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@gtp_pdp_add.__UNIQUE_ID_ddebug617 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.23, ptr @.str.2, ptr @.str.24, i8 0, i8 -11, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"gtp_pdp_add\00", [20 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"GTPv0-U: update tunnel id = %llx (pdp %p)\0A\00", [53 x i8] zeroinitializer }, align 32
@gtp_pdp_add.__UNIQUE_ID_ddebug618 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.23, ptr @.str.2, ptr @.str.25, i8 0, i8 -10, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"GTPv1-U: update tunnel id = %x/%x (pdp %p)\0A\00", [52 x i8] zeroinitializer }, align 32
@gtp_pdp_add.__UNIQUE_ID_ddebug619 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.23, ptr @.str.2, ptr @.str.26, i8 0, i8 -1, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"GTPv0-U: new PDP ctx id=%llx ssgn=%pI4 ms=%pI4 (pdp=%p)\0A\00", [39 x i8] zeroinitializer }, align 32
@gtp_pdp_add.__UNIQUE_ID_ddebug620 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.23, ptr @.str.2, ptr @.str.27, i8 1, i8 0, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"GTPv1-U: new PDP ctx id=%x/%x ssgn=%pI4 ms=%pI4 (pdp=%p)\0A\00", [38 x i8] zeroinitializer }, align 32
@gtp0_pdp_find.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@gtp1_pdp_find.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.28 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/netlink.h\00", [42 x i8] zeroinitializer }, align 32
@genlmsg_multicast_netns.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.29 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/net/genetlink.h\00", [40 x i8] zeroinitializer }, align 32
@gtp_genl_del_pdp.__UNIQUE_ID_ddebug621 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.30, ptr @.str.2, ptr @.str.31, i8 1, i8 37, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"gtp_genl_del_pdp\00", [47 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"GTPv0-U: deleting tunnel id = %llx (pdp %p)\0A\00", [51 x i8] zeroinitializer }, align 32
@gtp_genl_del_pdp.__UNIQUE_ID_ddebug622 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.30, ptr @.str.2, ptr @.str.32, i8 1, i8 38, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"GTPv1-U: deleting tunnel id = %x/%x (pdp %p)\0A\00", [50 x i8] zeroinitializer }, align 32
@gtp_net_id = internal global i32 0, section ".data..read_mostly", align 4
@gtp_genl_dump_pdp.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@gtp_genl_dump_pdp.__warned.33 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@net_generic.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.34 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/net/netns/generic.h\00", [36 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@gtp_policy = internal constant { [5 x %struct.nla_policy], [56 x i8] } { [5 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon zeroinitializer }], [56 x i8] zeroinitializer }, align 32
@gtp_type = internal constant { %struct.device_type, [40 x i8] } { %struct.device_type { ptr @.str.9, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@gtp_newlink.__UNIQUE_ID_ddebug608 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.36, ptr @.str.2, ptr @.str.37, i8 0, i8 -84, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"gtp_newlink\00", [20 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to register new netdev %d\0A\00", [62 x i8] zeroinitializer }, align 32
@gtp_newlink.__UNIQUE_ID_ddebug609 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.36, ptr @.str.2, ptr @.str.38, i8 0, i8 -82, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"registered new GTP interface\0A\00", [34 x i8] zeroinitializer }, align 32
@gtp_encap_enable_socket.__UNIQUE_ID_ddebug614 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.39, ptr @.str.2, ptr @.str.40, i8 0, i8 -54, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"gtp_encap_enable_socket\00", [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"enable gtp on %d, %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"gtp: enable gtp on %d, %d\0A\00", [37 x i8] zeroinitializer }, align 32
@gtp_encap_enable_socket.__UNIQUE_ID_ddebug615 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.39, ptr @.str.2, ptr @.str.42, i8 0, i8 -53, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"gtp socket fd=%d not found\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"gtp: gtp socket fd=%d not found\0A\00", [63 x i8] zeroinitializer }, align 32
@gtp_encap_enable_socket.__UNIQUE_ID_ddebug616 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.39, ptr @.str.2, ptr @.str.44, i8 0, i8 -51, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"socket fd=%d not UDP\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"gtp: socket fd=%d not UDP\0A\00", [37 x i8] zeroinitializer }, align 32
@gtp_encap_recv.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@gtp_encap_recv.__UNIQUE_ID_ddebug597 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.46, ptr @.str.2, ptr @.str.47, i8 0, i8 84, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"gtp_encap_recv\00", [17 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"encap_recv sk=%p\0A\00", [46 x i8] zeroinitializer }, align 32
@gtp_encap_recv.__UNIQUE_ID_ddebug598 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.46, ptr @.str.2, ptr @.str.48, i8 0, i8 85, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"received GTP0 packet\0A\00", [42 x i8] zeroinitializer }, align 32
@gtp_encap_recv.__UNIQUE_ID_ddebug599 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.46, ptr @.str.2, ptr @.str.49, i8 0, i8 86, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"received GTP1U packet\0A\00", [41 x i8] zeroinitializer }, align 32
@gtp_encap_recv.__UNIQUE_ID_ddebug600 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.46, ptr @.str.2, ptr @.str.50, i8 0, i8 89, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"pass up to the process\0A\00", [40 x i8] zeroinitializer }, align 32
@gtp_encap_recv.__UNIQUE_ID_ddebug601 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.46, ptr @.str.2, ptr @.str.51, i8 0, i8 90, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"GTP packet has been dropped\0A\00", [35 x i8] zeroinitializer }, align 32
@gtp0_udp_encap_recv.__UNIQUE_ID_ddebug590 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.52, ptr @.str.2, ptr @.str.53, i8 0, i8 59, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"gtp0_udp_encap_recv\00", [44 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"No PDP ctx to decap skb=%p\0A\00", [36 x i8] zeroinitializer }, align 32
@gtp_rx.__UNIQUE_ID_ddebug588 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.54, ptr @.str.2, ptr @.str.55, i8 0, i8 46, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gtp_rx\00", [25 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"No PDP ctx for this MS\0A\00", [40 x i8] zeroinitializer }, align 32
@gtp_rx.__UNIQUE_ID_ddebug589 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.54, ptr @.str.2, ptr @.str.56, i8 0, i8 49, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"forwarding packet from GGSN to uplink\0A\00", [57 x i8] zeroinitializer }, align 32
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.57 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@gtp1u_udp_encap_recv.__UNIQUE_ID_ddebug591 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.58, ptr @.str.2, ptr @.str.53, i8 0, i8 70, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"gtp1u_udp_encap_recv\00", [43 x i8] zeroinitializer }, align 32
@gtp_dellink.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.59 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.60 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.61 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.62 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.63 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.64 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.65 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.66 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.67 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.68 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.69 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.70 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.71 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.72 = internal global [4 x i64] [i64 2, i64 8, i64 4, i64 5]
@__sancov_gen_cov_switch_values.73 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4294967295]
@___asan_gen_.74 = private unnamed_addr constant [12 x i8] c"gtp_net_ops\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 1409, i32 33 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 1454, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant [14 x i8] c"gtp_h_initval\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 84, i32 12 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 1434, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 1443, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant [16 x i8] c"gtp_genl_policy\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 1339, i32 32 }
@___asan_gen_.110 = private unnamed_addr constant [13 x i8] c"gtp_genl_ops\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 1351, i32 36 }
@___asan_gen_.113 = private unnamed_addr constant [16 x i8] c"gtp_genl_mcgrps\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 1192, i32 42 }
@___asan_gen_.116 = private unnamed_addr constant [15 x i8] c"gtp_netdev_ops\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 612, i32 36 }
@___asan_gen_.119 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 376, i32 16 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 591, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 695, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 504, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 508, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 512, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 519, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 546, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 144, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 1011, i32 2 }
@___asan_gen_.165 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 723, i32 2 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 980, i32 4 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 983, i32 4 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 1019, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 1024, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant [25 x i8] c"../include/net/netlink.h\00", align 1
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 991, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant [27 x i8] c"../include/net/genetlink.h\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 308, i32 6 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 1172, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 1175, i32 3 }
@___asan_gen_.201 = private unnamed_addr constant [31 x i8] c"../include/net/netns/generic.h\00", align 1
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 45, i32 7 }
@___asan_gen_.203 = private unnamed_addr constant [11 x i8] c"gtp_policy\00", align 1
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 724, i32 32 }
@___asan_gen_.206 = private unnamed_addr constant [9 x i8] c"gtp_type\00", align 1
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 619, i32 33 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 690, i32 3 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 698, i32 2 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 808, i32 2 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 812, i32 3 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 820, i32 3 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 339, i32 2 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 343, i32 3 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 347, i32 3 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 356, i32 3 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 361, i32 3 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 239, i32 3 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 186, i32 3 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 197, i32 2 }
@___asan_gen_.273 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 271, i32 2 }
@___asan_gen_.275 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.276 = private constant [21 x i8] c"../drivers/net/gtp.c\00", align 1
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 281, i32 3 }
@llvm.compiler.used = appending global [80 x ptr] [ptr @__UNIQUE_ID_alias634, ptr @__UNIQUE_ID_alias635, ptr @__UNIQUE_ID_author632, ptr @__UNIQUE_ID_description633, ptr @__UNIQUE_ID_file630, ptr @__UNIQUE_ID_license631, ptr @__exitcall_gtp_fini, ptr @__initcall__kmod_gtp__629_1446_gtp_init7, ptr @gtp_fini, ptr @gtp_fini._entry, ptr @gtp_fini._entry_ptr, ptr @gtp_init._entry, ptr @gtp_init._entry.5, ptr @gtp_init._entry_ptr, ptr @gtp_init._entry_ptr.7, ptr @gtp_net_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @gtp_h_initval, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @gtp_genl_policy, ptr @gtp_genl_ops, ptr @gtp_genl_mcgrps, ptr @gtp_netdev_ops, ptr @gtp_dev_init.__key, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.34, ptr @.str.35, ptr @gtp_policy, ptr @gtp_type, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58], section "llvm.metadata"
@0 = internal global [68 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gtp_net_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gtp_fini._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gtp_h_initval to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gtp_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gtp_init._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gtp_genl_policy to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gtp_genl_ops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gtp_genl_mcgrps to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gtp_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gtp_dev_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gtp_policy to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gtp_type to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @gtp_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @get_random_bytes(ptr noundef nonnull @gtp_h_initval, i32 noundef 4) #15
  %call = tail call i32 @rtnl_link_register(ptr noundef nonnull @gtp_link_ops) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.do.end13_crit_edge, label %if.end

entry.do.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end13

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @genl_register_family(ptr noundef nonnull @gtp_genl_family) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.end.unreg_rtnl_link_crit_edge, label %if.end4

if.end.unreg_rtnl_link_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %unreg_rtnl_link

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @register_pernet_subsys(ptr noundef nonnull @gtp_net_ops) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %unreg_genl_family, label %do.end

do.end:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef 64) #18
  br label %cleanup

unreg_genl_family:                                ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  %call10 = tail call i32 @genl_unregister_family(ptr noundef nonnull @gtp_genl_family) #15
  br label %unreg_rtnl_link

unreg_rtnl_link:                                  ; preds = %unreg_genl_family, %if.end.unreg_rtnl_link_crit_edge
  %err.0 = phi i32 [ %call1, %if.end.unreg_rtnl_link_crit_edge ], [ %call5, %unreg_genl_family ]
  tail call void @rtnl_link_unregister(ptr noundef nonnull @gtp_link_ops) #15
  br label %do.end13

do.end13:                                         ; preds = %unreg_rtnl_link, %entry.do.end13_crit_edge
  %err.1 = phi i32 [ %call, %entry.do.end13_crit_edge ], [ %err.0, %unreg_rtnl_link ]
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #18
  br label %cleanup

cleanup:                                          ; preds = %do.end13, %do.end
  %retval.0 = phi i32 [ %err.1, %do.end13 ], [ 0, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @gtp_fini() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  %call = tail call i32 @genl_unregister_family(ptr noundef nonnull @gtp_genl_family) #15
  tail call void @rtnl_link_unregister(ptr noundef nonnull @gtp_link_ops) #15
  tail call void @unregister_pernet_subsys(ptr noundef nonnull @gtp_net_ops) #15
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genl_unregister_family(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_link_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_pernet_subsys(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_link_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genl_register_family(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pernet_subsys(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gtp_genl_new_pdp(ptr nocapture noundef readonly %skb, ptr nocapture noundef readonly %info) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %attrs = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %0 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %attrs, align 4
  %arrayidx = getelementptr ptr, ptr %1, i32 2
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %arrayidx2 = getelementptr ptr, ptr %1, i32 1
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx2, align 4
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false4

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %arrayidx6 = getelementptr ptr, ptr %1, i32 4
  %6 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx6, align 4
  %tobool7.not = icmp eq ptr %7, null
  br i1 %tobool7.not, label %lor.lhs.false4.cleanup_crit_edge, label %lor.lhs.false8

lor.lhs.false4.cleanup_crit_edge:                 ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

lor.lhs.false8:                                   ; preds = %lor.lhs.false4
  %arrayidx10 = getelementptr ptr, ptr %1, i32 5
  %8 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx10, align 4
  %tobool11.not = icmp eq ptr %9, null
  br i1 %tobool11.not, label %lor.lhs.false8.cleanup_crit_edge, label %if.end

lor.lhs.false8.cleanup_crit_edge:                 ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false8
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 4
  %10 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %add.ptr.i.i, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i32 %11, label %if.end.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb23
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %arrayidx15 = getelementptr ptr, ptr %1, i32 3
  %13 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx15, align 4
  %tobool16.not = icmp eq ptr %14, null
  br i1 %tobool16.not, label %sw.bb.cleanup_crit_edge, label %lor.lhs.false17

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

lor.lhs.false17:                                  ; preds = %sw.bb
  %arrayidx19 = getelementptr ptr, ptr %1, i32 6
  %15 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx19, align 4
  %tobool20.not = icmp eq ptr %16, null
  br i1 %tobool20.not, label %lor.lhs.false17.cleanup_crit_edge, label %lor.lhs.false17.sw.epilog_crit_edge

lor.lhs.false17.sw.epilog_crit_edge:              ; preds = %lor.lhs.false17
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

lor.lhs.false17.cleanup_crit_edge:                ; preds = %lor.lhs.false17
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

sw.bb23:                                          ; preds = %if.end
  %arrayidx25 = getelementptr ptr, ptr %1, i32 8
  %17 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx25, align 4
  %tobool26.not = icmp eq ptr %18, null
  br i1 %tobool26.not, label %sw.bb23.cleanup_crit_edge, label %lor.lhs.false27

sw.bb23.cleanup_crit_edge:                        ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

lor.lhs.false27:                                  ; preds = %sw.bb23
  %arrayidx29 = getelementptr ptr, ptr %1, i32 9
  %19 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx29, align 4
  %tobool30.not = icmp eq ptr %20, null
  br i1 %tobool30.not, label %lor.lhs.false27.cleanup_crit_edge, label %lor.lhs.false27.sw.epilog_crit_edge

lor.lhs.false27.sw.epilog_crit_edge:              ; preds = %lor.lhs.false27
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

lor.lhs.false27.cleanup_crit_edge:                ; preds = %lor.lhs.false27
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

sw.epilog:                                        ; preds = %lor.lhs.false27.sw.epilog_crit_edge, %lor.lhs.false17.sw.epilog_crit_edge
  tail call void @rtnl_lock() #15
  %21 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %23, i32 0, i32 9
  %24 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %skc_net.i, align 4
  %26 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %attrs, align 4
  %call35 = tail call fastcc ptr @gtp_find_dev(ptr noundef %25, ptr noundef %27)
  %tobool36.not = icmp eq ptr %call35, null
  br i1 %tobool36.not, label %sw.epilog.out_unlock_crit_edge, label %if.end38

sw.epilog.out_unlock_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_unlock

if.end38:                                         ; preds = %sw.epilog
  %28 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.59)
  switch i32 %11, label %if.end38.out_unlock_crit_edge [
    i32 0, label %if.then39
    i32 1, label %if.then41
  ]

if.end38.out_unlock_crit_edge:                    ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_unlock

if.then39:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #17
  %sk0 = getelementptr inbounds %struct.gtp_dev, ptr %call35, i32 0, i32 1
  br label %if.end44

if.then41:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #17
  %sk1u = getelementptr inbounds %struct.gtp_dev, ptr %call35, i32 0, i32 2
  br label %if.end44

if.end44:                                         ; preds = %if.then41, %if.then39
  %sk.0.in = phi ptr [ %sk0, %if.then39 ], [ %sk1u, %if.then41 ]
  %29 = ptrtoint ptr %sk.0.in to i32
  call void @__asan_load4_noabort(i32 %29)
  %sk.0 = load ptr, ptr %sk.0.in, align 4
  %tobool45.not = icmp eq ptr %sk.0, null
  br i1 %tobool45.not, label %if.end44.out_unlock_crit_edge, label %if.end47

if.end44.out_unlock_crit_edge:                    ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_unlock

if.end47:                                         ; preds = %if.end44
  %call48 = tail call fastcc ptr @gtp_pdp_add(ptr noundef nonnull %call35, ptr noundef nonnull %sk.0, ptr noundef %info)
  %cmp.i = icmp ugt ptr %call48, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then50, label %if.else52

if.then50:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #17
  %30 = ptrtoint ptr %call48 to i32
  br label %out_unlock

if.else52:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @gtp_tunnel_notify(ptr noundef %call48, i8 noundef zeroext 0, i32 noundef 3264)
  br label %out_unlock

out_unlock:                                       ; preds = %if.else52, %if.then50, %if.end44.out_unlock_crit_edge, %if.end38.out_unlock_crit_edge, %sw.epilog.out_unlock_crit_edge
  %err.0 = phi i32 [ %30, %if.then50 ], [ 0, %if.else52 ], [ -19, %sw.epilog.out_unlock_crit_edge ], [ -19, %if.end44.out_unlock_crit_edge ], [ -19, %if.end38.out_unlock_crit_edge ]
  tail call void @rtnl_unlock() #15
  br label %cleanup

cleanup:                                          ; preds = %out_unlock, %lor.lhs.false27.cleanup_crit_edge, %sw.bb23.cleanup_crit_edge, %lor.lhs.false17.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false8.cleanup_crit_edge, %lor.lhs.false4.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %out_unlock ], [ -22, %lor.lhs.false8.cleanup_crit_edge ], [ -22, %lor.lhs.false4.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false17.cleanup_crit_edge ], [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %lor.lhs.false27.cleanup_crit_edge ], [ -22, %sw.bb23.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gtp_genl_del_pdp(ptr nocapture noundef readonly %skb, ptr nocapture noundef readonly %info) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %attrs = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %0 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %attrs, align 4
  %arrayidx = getelementptr ptr, ptr %1, i32 2
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = tail call i32 @llvm.read_register.i32(metadata !184) #15
  %and.i.i.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %7, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !194
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #15
  %call.i = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 696, ptr noundef nonnull @.str.13) #15
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %8 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %10, i32 0, i32 9
  %11 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %skc_net.i, align 4
  %13 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %attrs, align 4
  %call2 = tail call fastcc ptr @gtp_find_pdp(ptr noundef %12, ptr noundef %14)
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end6

if.then4:                                         ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #17
  %15 = ptrtoint ptr %call2 to i32
  br label %out_unlock

if.end6:                                          ; preds = %rcu_read_lock.exit
  %gtp_version = getelementptr inbounds %struct.pdp_ctx, ptr %call2, i32 0, i32 3
  %16 = ptrtoint ptr %gtp_version to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %gtp_version, align 8
  %18 = zext i8 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.60)
  switch i8 %17, label %if.end6.if.end46_crit_edge [
    i8 0, label %do.body9
    i8 1, label %do.body24
  ]

if.end6.if.end46_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end46

do.body9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gtp_genl_del_pdp.__UNIQUE_ID_ddebug621, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gtp_genl_del_pdp, %if.then14)) #15
          to label %if.end46 [label %if.then14], !srcloc !195

if.then14:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #17
  %dev = getelementptr inbounds %struct.pdp_ctx, ptr %call2, i32 0, i32 8
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev, align 8
  %u = getelementptr inbounds %struct.pdp_ctx, ptr %call2, i32 0, i32 2
  %21 = ptrtoint ptr %u to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %u, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @gtp_genl_del_pdp.__UNIQUE_ID_ddebug621, ptr noundef %20, ptr noundef nonnull @.str.31, i64 noundef %22, ptr noundef %call2) #15
  br label %if.end46

do.body24:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gtp_genl_del_pdp.__UNIQUE_ID_ddebug622, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gtp_genl_del_pdp, %if.then36)) #15
          to label %if.end46 [label %if.then36], !srcloc !195

if.then36:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #17
  %dev37 = getelementptr inbounds %struct.pdp_ctx, ptr %call2, i32 0, i32 8
  %23 = ptrtoint ptr %dev37 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev37, align 8
  %u38 = getelementptr inbounds %struct.pdp_ctx, ptr %call2, i32 0, i32 2
  %25 = ptrtoint ptr %u38 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %u38, align 8
  %o_tei = getelementptr inbounds %struct.anon.160, ptr %u38, i32 0, i32 1
  %27 = ptrtoint ptr %o_tei to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %o_tei, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @gtp_genl_del_pdp.__UNIQUE_ID_ddebug622, ptr noundef %24, ptr noundef nonnull @.str.32, i32 noundef %26, i32 noundef %28, ptr noundef %call2) #15
  br label %if.end46

if.end46:                                         ; preds = %if.then36, %do.body24, %if.then14, %do.body9, %if.end6.if.end46_crit_edge
  tail call fastcc void @gtp_tunnel_notify(ptr noundef %call2, i8 noundef zeroext 1, i32 noundef 2592)
  %29 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %call2, align 4
  %pprev2.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %call2, i32 0, i32 1
  %31 = ptrtoint ptr %pprev2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pprev2.i.i.i, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %30, ptr %32, align 4
  %tobool.not.i.i.i = icmp eq ptr %30, null
  br i1 %tobool.not.i.i.i, label %if.end46.hlist_del_rcu.exit.i_crit_edge, label %do.body13.i.i.i

if.end46.hlist_del_rcu.exit.i_crit_edge:          ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #17
  br label %hlist_del_rcu.exit.i

do.body13.i.i.i:                                  ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #17
  %pprev14.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %30, i32 0, i32 1
  %34 = ptrtoint ptr %pprev14.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %32, ptr %pprev14.i.i.i, align 4
  br label %hlist_del_rcu.exit.i

hlist_del_rcu.exit.i:                             ; preds = %do.body13.i.i.i, %if.end46.hlist_del_rcu.exit.i_crit_edge
  %35 = ptrtoint ptr %pprev2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i.i, align 4
  %hlist_addr.i = getelementptr inbounds %struct.pdp_ctx, ptr %call2, i32 0, i32 1
  %36 = ptrtoint ptr %hlist_addr.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %hlist_addr.i, align 4
  %pprev2.i.i3.i = getelementptr inbounds %struct.pdp_ctx, ptr %call2, i32 0, i32 1, i32 1
  %38 = ptrtoint ptr %pprev2.i.i3.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pprev2.i.i3.i, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %37, ptr %39, align 4
  %tobool.not.i.i4.i = icmp eq ptr %37, null
  br i1 %tobool.not.i.i4.i, label %hlist_del_rcu.exit.i.pdp_context_delete.exit_crit_edge, label %do.body13.i.i6.i

hlist_del_rcu.exit.i.pdp_context_delete.exit_crit_edge: ; preds = %hlist_del_rcu.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %pdp_context_delete.exit

do.body13.i.i6.i:                                 ; preds = %hlist_del_rcu.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  %pprev14.i.i5.i = getelementptr inbounds %struct.hlist_node, ptr %37, i32 0, i32 1
  %41 = ptrtoint ptr %pprev14.i.i5.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %39, ptr %pprev14.i.i5.i, align 4
  br label %pdp_context_delete.exit

pdp_context_delete.exit:                          ; preds = %do.body13.i.i6.i, %hlist_del_rcu.exit.i.pdp_context_delete.exit_crit_edge
  %42 = ptrtoint ptr %pprev2.i.i3.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i3.i, align 4
  %callback_head.i = getelementptr inbounds %struct.pdp_ctx, ptr %call2, i32 0, i32 10
  tail call void @call_rcu(ptr noundef %callback_head.i, ptr noundef nonnull @pdp_context_free) #15
  br label %out_unlock

out_unlock:                                       ; preds = %pdp_context_delete.exit, %if.then4
  %err.0 = phi i32 [ %15, %if.then4 ], [ 0, %pdp_context_delete.exit ]
  %call.i65 = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i65, label %out_unlock.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i68

out_unlock.rcu_read_unlock.exit_crit_edge:        ; preds = %out_unlock
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

land.lhs.true.i68:                                ; preds = %out_unlock
  %call1.i66 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i66)
  %tobool.not.i67 = icmp eq i32 %call1.i66, 0
  br i1 %tobool.not.i67, label %land.lhs.true.i68.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i70

land.lhs.true.i68.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i68
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

land.lhs.true2.i70:                               ; preds = %land.lhs.true.i68
  %.b4.i69 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i69, label %land.lhs.true2.i70.rcu_read_unlock.exit_crit_edge, label %if.then.i71

land.lhs.true2.i70.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i70
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

if.then.i71:                                      ; preds = %land.lhs.true2.i70
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 724, ptr noundef nonnull @.str.22) #15
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i71, %land.lhs.true2.i70.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i68.rcu_read_unlock.exit_crit_edge, %out_unlock.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !196
  %43 = tail call i32 @llvm.read_register.i32(metadata !184) #15
  %and.i.i.i.i.i72 = and i32 %43, -16384
  %44 = inttoptr i32 %and.i.i.i.i.i72 to ptr
  %preempt_count.i.i.i.i73 = getelementptr inbounds %struct.thread_info, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %preempt_count.i.i.i.i73 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %preempt_count.i.i.i.i73, align 4
  %sub.i.i.i = add i32 %46, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i73, align 4
  tail call void @rcu_read_unlock_strict() #15
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #15
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %rcu_read_unlock.exit ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gtp_genl_get_pdp(ptr nocapture noundef readonly %skb, ptr nocapture noundef readonly %info) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %attrs = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %0 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %attrs, align 4
  %arrayidx = getelementptr ptr, ptr %1, i32 2
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = tail call i32 @llvm.read_register.i32(metadata !184) #15
  %and.i.i.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %7, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !194
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #15
  %call.i = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 696, ptr noundef nonnull @.str.13) #15
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %8 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %10, i32 0, i32 9
  %11 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %skc_net.i, align 4
  %13 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %attrs, align 4
  %call2 = tail call fastcc ptr @gtp_find_pdp(ptr noundef %12, ptr noundef %14)
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end6

if.then4:                                         ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #17
  %15 = ptrtoint ptr %call2 to i32
  br label %err_unlock

if.end6:                                          ; preds = %rcu_read_lock.exit
  %call.i.i.i = tail call ptr @__alloc_skb(i32 noundef 3860, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #15
  %cmp = icmp eq ptr %call.i.i.i, null
  br i1 %cmp, label %if.end6.err_unlock_crit_edge, label %if.end9

if.end6.err_unlock_crit_edge:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  br label %err_unlock

if.end9:                                          ; preds = %if.end6
  %portid = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 12
  %16 = ptrtoint ptr %portid to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %portid, align 4
  %18 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %info, align 4
  %nlhdr = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 2
  %20 = ptrtoint ptr %nlhdr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %nlhdr, align 4
  %nlmsg_type = getelementptr inbounds %struct.nlmsghdr, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %nlmsg_type to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %nlmsg_type, align 4
  %conv = zext i16 %23 to i32
  %call10 = tail call fastcc i32 @gtp_genl_fill_info(ptr noundef nonnull %call.i.i.i, i32 noundef %17, i32 noundef %19, i32 noundef 0, i32 noundef %conv, ptr noundef %call2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %err_unlock_free, label %if.end14

if.end14:                                         ; preds = %if.end9
  %call.i31 = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i31, label %if.end14.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i34

if.end14.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

land.lhs.true.i34:                                ; preds = %if.end14
  %call1.i32 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i32)
  %tobool.not.i33 = icmp eq i32 %call1.i32, 0
  br i1 %tobool.not.i33, label %land.lhs.true.i34.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i36

land.lhs.true.i34.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i34
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

land.lhs.true2.i36:                               ; preds = %land.lhs.true.i34
  %.b4.i35 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i35, label %land.lhs.true2.i36.rcu_read_unlock.exit_crit_edge, label %if.then.i37

land.lhs.true2.i36.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i36
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

if.then.i37:                                      ; preds = %land.lhs.true2.i36
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 724, ptr noundef nonnull @.str.22) #15
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i37, %land.lhs.true2.i36.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i34.rcu_read_unlock.exit_crit_edge, %if.end14.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !196
  %24 = tail call i32 @llvm.read_register.i32(metadata !184) #15
  %and.i.i.i.i.i38 = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i.i.i.i38 to ptr
  %preempt_count.i.i.i.i39 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %preempt_count.i.i.i.i39 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %preempt_count.i.i.i.i39, align 4
  %sub.i.i.i = add i32 %27, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i39, align 4
  tail call void @rcu_read_unlock_strict() #15
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #15
  %_net.i = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 6
  %28 = ptrtoint ptr %_net.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %_net.i, align 4
  %snd_portid = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 1
  %30 = ptrtoint ptr %snd_portid to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %snd_portid, align 4
  %genl_sock.i = getelementptr inbounds %struct.net, ptr %29, i32 0, i32 21
  %32 = ptrtoint ptr %genl_sock.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %genl_sock.i, align 4
  %call.i.i = tail call i32 @netlink_unicast(ptr noundef %33, ptr noundef nonnull %call.i.i.i, i32 noundef %31, i32 noundef 64) #15
  %34 = tail call i32 @llvm.smin.i32(i32 %call.i.i, i32 0) #15
  br label %cleanup

err_unlock_free:                                  ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i.i.i, i32 noundef 0) #15
  br label %err_unlock

err_unlock:                                       ; preds = %err_unlock_free, %if.end6.err_unlock_crit_edge, %if.then4
  %err.0 = phi i32 [ %15, %if.then4 ], [ %call10, %err_unlock_free ], [ -12, %if.end6.err_unlock_crit_edge ]
  %call.i40 = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i40, label %err_unlock.rcu_read_unlock.exit50_crit_edge, label %land.lhs.true.i43

err_unlock.rcu_read_unlock.exit50_crit_edge:      ; preds = %err_unlock
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit50

land.lhs.true.i43:                                ; preds = %err_unlock
  %call1.i41 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i41)
  %tobool.not.i42 = icmp eq i32 %call1.i41, 0
  br i1 %tobool.not.i42, label %land.lhs.true.i43.rcu_read_unlock.exit50_crit_edge, label %land.lhs.true2.i45

land.lhs.true.i43.rcu_read_unlock.exit50_crit_edge: ; preds = %land.lhs.true.i43
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit50

land.lhs.true2.i45:                               ; preds = %land.lhs.true.i43
  %.b4.i44 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i44, label %land.lhs.true2.i45.rcu_read_unlock.exit50_crit_edge, label %if.then.i46

land.lhs.true2.i45.rcu_read_unlock.exit50_crit_edge: ; preds = %land.lhs.true2.i45
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit50

if.then.i46:                                      ; preds = %land.lhs.true2.i45
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 724, ptr noundef nonnull @.str.22) #15
  br label %rcu_read_unlock.exit50

rcu_read_unlock.exit50:                           ; preds = %if.then.i46, %land.lhs.true2.i45.rcu_read_unlock.exit50_crit_edge, %land.lhs.true.i43.rcu_read_unlock.exit50_crit_edge, %err_unlock.rcu_read_unlock.exit50_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !196
  %35 = tail call i32 @llvm.read_register.i32(metadata !184) #15
  %and.i.i.i.i.i47 = and i32 %35, -16384
  %36 = inttoptr i32 %and.i.i.i.i.i47 to ptr
  %preempt_count.i.i.i.i48 = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %preempt_count.i.i.i.i48 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %preempt_count.i.i.i.i48, align 4
  %sub.i.i.i49 = add i32 %38, -1
  store volatile i32 %sub.i.i.i49, ptr %preempt_count.i.i.i.i48, align 4
  tail call void @rcu_read_unlock_strict() #15
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #15
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit50, %rcu_read_unlock.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %rcu_read_unlock.exit50 ], [ %34, %rcu_read_unlock.exit ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gtp_genl_dump_pdp(ptr noundef %skb, ptr nocapture noundef %cb) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 13
  %arrayidx = getelementptr %struct.netlink_callback, ptr %cb, i32 0, i32 13, i32 0, i32 2
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx, align 4
  %3 = inttoptr i32 %2 to ptr
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %0, align 4
  %arrayidx2 = getelementptr %struct.netlink_callback, ptr %cb, i32 0, i32 13, i32 0, i32 1
  %6 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx2, align 4
  %8 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %10, i32 0, i32 9
  %11 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %skc_net.i, align 4
  %13 = load i32, ptr @gtp_net_id, align 4
  %call3 = tail call fastcc ptr @net_generic(ptr noundef %12, i32 noundef %13)
  %arrayidx4 = getelementptr %struct.netlink_callback, ptr %cb, i32 0, i32 13, i32 0, i32 4
  %14 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not = icmp eq i32 %15, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %16 = tail call i32 @llvm.read_register.i32(metadata !184) #15
  %and.i.i.i.i.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %19, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !194
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #15
  %call.i = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 696, ptr noundef nonnull @.str.13) #15
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %call5 = tail call i32 @rcu_read_lock_any_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call7 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true9

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

land.lhs.true9:                                   ; preds = %land.lhs.true
  %.b134 = load i1, ptr @gtp_genl_dump_pdp.__warned, align 1
  br i1 %.b134, label %land.lhs.true9.do.end_crit_edge, label %if.then11

land.lhs.true9.do.end_crit_edge:                  ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

if.then11:                                        ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @gtp_genl_dump_pdp.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 1306, ptr noundef nonnull @.str.20) #15
  br label %do.end

do.end:                                           ; preds = %if.then11, %land.lhs.true9.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  %20 = ptrtoint ptr %call3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %gtp.0158 = load volatile ptr, ptr %call3, align 4
  %cmp.not159 = icmp eq ptr %gtp.0158, %call3
  br i1 %cmp.not159, label %do.end.for.end93_crit_edge, label %for.body.lr.ph

do.end.for.end93_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end93

for.body.lr.ph:                                   ; preds = %do.end
  %nlh = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc83.for.body_crit_edge, %for.body.lr.ph
  %gtp.0163 = phi ptr [ %gtp.0158, %for.body.lr.ph ], [ %gtp.0, %for.inc83.for.body_crit_edge ]
  %last_gtp.0162 = phi ptr [ %3, %for.body.lr.ph ], [ %last_gtp.1, %for.inc83.for.body_crit_edge ]
  %bucket.0161 = phi i32 [ %5, %for.body.lr.ph ], [ %bucket.1, %for.inc83.for.body_crit_edge ]
  %skip.0160 = phi i32 [ %7, %for.body.lr.ph ], [ %skip.2, %for.inc83.for.body_crit_edge ]
  %tobool18.not = icmp eq ptr %last_gtp.0162, null
  %cmp20.not = icmp eq ptr %last_gtp.0162, %gtp.0163
  %or.cond = select i1 %tobool18.not, i1 true, i1 %cmp20.not
  br i1 %or.cond, label %for.cond23.preheader, label %for.body.for.inc83_crit_edge

for.body.for.inc83_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc83

for.cond23.preheader:                             ; preds = %for.body
  %hash_size = getelementptr inbounds %struct.gtp_dev, ptr %gtp.0163, i32 0, i32 5
  %21 = ptrtoint ptr %hash_size to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %hash_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %bucket.0161, i32 %22)
  %cmp24154 = icmp ult i32 %bucket.0161, %22
  br i1 %cmp24154, label %for.body25.lr.ph, label %for.cond23.preheader.for.inc83_crit_edge

for.cond23.preheader.for.inc83_crit_edge:         ; preds = %for.cond23.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc83

for.body25.lr.ph:                                 ; preds = %for.cond23.preheader
  %tid_hash = getelementptr inbounds %struct.gtp_dev, ptr %gtp.0163, i32 0, i32 6
  br label %for.body25

for.body25:                                       ; preds = %for.end.for.body25_crit_edge, %for.body25.lr.ph
  %i.0156 = phi i32 [ %bucket.0161, %for.body25.lr.ph ], [ %inc81, %for.end.for.body25_crit_edge ]
  %skip.1155 = phi i32 [ %skip.0160, %for.body25.lr.ph ], [ 0, %for.end.for.body25_crit_edge ]
  %call27 = tail call i32 @rcu_read_lock_any_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %land.lhs.true29, label %for.body25.do.end37_crit_edge

for.body25.do.end37_crit_edge:                    ; preds = %for.body25
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end37

land.lhs.true29:                                  ; preds = %for.body25
  %call30 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %land.lhs.true29.do.end37_crit_edge, label %land.lhs.true32

land.lhs.true29.do.end37_crit_edge:               ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end37

land.lhs.true32:                                  ; preds = %land.lhs.true29
  %.b132133 = load i1, ptr @gtp_genl_dump_pdp.__warned.33, align 1
  br i1 %.b132133, label %land.lhs.true32.do.end37_crit_edge, label %if.then34

land.lhs.true32.do.end37_crit_edge:               ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end37

if.then34:                                        ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @gtp_genl_dump_pdp.__warned.33, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 1315, ptr noundef nonnull @.str.20) #15
  br label %do.end37

do.end37:                                         ; preds = %if.then34, %land.lhs.true32.do.end37_crit_edge, %land.lhs.true29.do.end37_crit_edge, %for.body25.do.end37_crit_edge
  %23 = ptrtoint ptr %tid_hash to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %tid_hash, align 4
  %arrayidx42 = getelementptr %struct.hlist_head, ptr %24, i32 %i.0156
  %25 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %25)
  %pctx.0149 = load volatile ptr, ptr %arrayidx42, align 4
  %tobool50.not150 = icmp eq ptr %pctx.0149, null
  br i1 %tobool50.not150, label %do.end37.for.end_crit_edge, label %do.end37.for.body51_crit_edge

do.end37.for.body51_crit_edge:                    ; preds = %do.end37
  br label %for.body51

do.end37.for.end_crit_edge:                       ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body51:                                       ; preds = %if.end63.for.body51_crit_edge, %do.end37.for.body51_crit_edge
  %pctx.0153 = phi ptr [ %pctx.0, %if.end63.for.body51_crit_edge ], [ %pctx.0149, %do.end37.for.body51_crit_edge ]
  %j.0151 = phi i32 [ %inc, %if.end63.for.body51_crit_edge ], [ 0, %do.end37.for.body51_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %j.0151, i32 %skip.1155)
  %cmp52.not = icmp slt i32 %j.0151, %skip.1155
  br i1 %cmp52.not, label %for.body51.if.end63_crit_edge, label %land.lhs.true53

for.body51.if.end63_crit_edge:                    ; preds = %for.body51
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end63

land.lhs.true53:                                  ; preds = %for.body51
  %26 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cb, align 4
  %portid = getelementptr inbounds %struct.sk_buff, ptr %27, i32 0, i32 3, i32 12
  %28 = ptrtoint ptr %portid to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %portid, align 4
  %30 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %nlh, align 4
  %nlmsg_seq = getelementptr inbounds %struct.nlmsghdr, ptr %31, i32 0, i32 3
  %32 = ptrtoint ptr %nlmsg_seq to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %nlmsg_seq, align 4
  %nlmsg_type = getelementptr inbounds %struct.nlmsghdr, ptr %31, i32 0, i32 1
  %34 = ptrtoint ptr %nlmsg_type to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %nlmsg_type, align 4
  %conv = zext i16 %35 to i32
  %call57 = tail call fastcc i32 @gtp_genl_fill_info(ptr noundef %skb, i32 noundef %29, i32 noundef %33, i32 noundef 2, i32 noundef %conv, ptr noundef nonnull %pctx.0153)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %land.lhs.true53.if.end63_crit_edge, label %if.then59

land.lhs.true53.if.end63_crit_edge:               ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end63

if.then59:                                        ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #17
  %36 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %i.0156, ptr %0, align 4
  %37 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %j.0151, ptr %arrayidx2, align 4
  %38 = ptrtoint ptr %gtp.0163 to i32
  %39 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %arrayidx, align 4
  br label %out

if.end63:                                         ; preds = %land.lhs.true53.if.end63_crit_edge, %for.body51.if.end63_crit_edge
  %inc = add i32 %j.0151, 1
  %40 = ptrtoint ptr %pctx.0153 to i32
  call void @__asan_load4_noabort(i32 %40)
  %pctx.0 = load volatile ptr, ptr %pctx.0153, align 4
  %tobool50.not = icmp eq ptr %pctx.0, null
  br i1 %tobool50.not, label %if.end63.for.end_crit_edge, label %if.end63.for.body51_crit_edge

if.end63.for.body51_crit_edge:                    ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body51

if.end63.for.end_crit_edge:                       ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.end:                                          ; preds = %if.end63.for.end_crit_edge, %do.end37.for.end_crit_edge
  %inc81 = add nuw i32 %i.0156, 1
  %41 = ptrtoint ptr %hash_size to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %hash_size, align 4
  %cmp24 = icmp ult i32 %inc81, %42
  br i1 %cmp24, label %for.end.for.body25_crit_edge, label %for.end.for.inc83_crit_edge

for.end.for.inc83_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc83

for.end.for.body25_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body25

for.inc83:                                        ; preds = %for.end.for.inc83_crit_edge, %for.cond23.preheader.for.inc83_crit_edge, %for.body.for.inc83_crit_edge
  %skip.2 = phi i32 [ %skip.0160, %for.body.for.inc83_crit_edge ], [ %skip.0160, %for.cond23.preheader.for.inc83_crit_edge ], [ 0, %for.end.for.inc83_crit_edge ]
  %bucket.1 = phi i32 [ %bucket.0161, %for.body.for.inc83_crit_edge ], [ 0, %for.cond23.preheader.for.inc83_crit_edge ], [ 0, %for.end.for.inc83_crit_edge ]
  %last_gtp.1 = phi ptr [ %last_gtp.0162, %for.body.for.inc83_crit_edge ], [ null, %for.cond23.preheader.for.inc83_crit_edge ], [ null, %for.end.for.inc83_crit_edge ]
  %43 = ptrtoint ptr %gtp.0163 to i32
  call void @__asan_load4_noabort(i32 %43)
  %gtp.0 = load volatile ptr, ptr %gtp.0163, align 4
  %cmp.not = icmp eq ptr %gtp.0, %call3
  br i1 %cmp.not, label %for.inc83.for.end93_crit_edge, label %for.inc83.for.body_crit_edge

for.inc83.for.body_crit_edge:                     ; preds = %for.inc83
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.inc83.for.end93_crit_edge:                    ; preds = %for.inc83
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end93

for.end93:                                        ; preds = %for.inc83.for.end93_crit_edge, %do.end.for.end93_crit_edge
  %44 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 1, ptr %arrayidx4, align 4
  br label %out

out:                                              ; preds = %for.end93, %if.then59
  %call.i136 = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i136, label %out.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i139

out.rcu_read_unlock.exit_crit_edge:               ; preds = %out
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

land.lhs.true.i139:                               ; preds = %out
  %call1.i137 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i137)
  %tobool.not.i138 = icmp eq i32 %call1.i137, 0
  br i1 %tobool.not.i138, label %land.lhs.true.i139.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i141

land.lhs.true.i139.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i139
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

land.lhs.true2.i141:                              ; preds = %land.lhs.true.i139
  %.b4.i140 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i140, label %land.lhs.true2.i141.rcu_read_unlock.exit_crit_edge, label %if.then.i142

land.lhs.true2.i141.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i141
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

if.then.i142:                                     ; preds = %land.lhs.true2.i141
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 724, ptr noundef nonnull @.str.22) #15
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i142, %land.lhs.true2.i141.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i139.rcu_read_unlock.exit_crit_edge, %out.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !196
  %45 = tail call i32 @llvm.read_register.i32(metadata !184) #15
  %and.i.i.i.i.i143 = and i32 %45, -16384
  %46 = inttoptr i32 %and.i.i.i.i.i143 to ptr
  %preempt_count.i.i.i.i144 = getelementptr inbounds %struct.thread_info, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %preempt_count.i.i.i.i144 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %preempt_count.i.i.i.i144, align 4
  %sub.i.i.i = add i32 %48, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i144, align 4
  tail call void @rcu_read_unlock_strict() #15
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #15
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %49 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %len, align 4
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %50, %rcu_read_unlock.exit ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @gtp_find_dev(ptr noundef %src_net, ptr nocapture noundef readonly %nla) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr ptr, ptr %nla, i32 7
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 4
  %2 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr.i.i, align 4
  %call2 = tail call ptr @get_net_ns_by_fd(i32 noundef %3) #15
  br label %if.end

if.else:                                          ; preds = %entry
  %count.i = getelementptr inbounds %struct.net, ptr %src_net, i32 0, i32 14, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %count.i, i32 1, i32 3, i32 1) #15
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i, ptr %count.i, i32 1, ptr elementtype(i32) %count.i) #15, !srcloc !197
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.else.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !198

if.else.if.end15.sink.split.i.i.i.i_crit_edge:    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.else
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %5 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %.not.i.i.i.i = icmp sgt i32 %5, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.if.end_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !199

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.if.end_crit_edge:                 ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.else.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.else.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %count.i, i32 noundef %.sink.i.i.i.i) #15
  br label %if.end

if.end:                                           ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.if.end_crit_edge, %if.then
  %net.0 = phi ptr [ %call2, %if.then ], [ %src_net, %if.else.i.i.i.i.if.end_crit_edge ], [ %src_net, %if.end15.sink.split.i.i.i.i ]
  %cmp.i = icmp ugt ptr %net.0, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %arrayidx7 = getelementptr ptr, ptr %nla, i32 1
  %6 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx7, align 4
  %add.ptr.i.i22 = getelementptr i8, ptr %7, i32 4
  %8 = ptrtoint ptr %add.ptr.i.i22 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr.i.i22, align 4
  %call9 = tail call ptr @dev_get_by_index_rcu(ptr noundef %net.0, i32 noundef %9) #15
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %if.end6.if.end13_crit_edge, label %land.lhs.true

if.end6.if.end13_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end13

land.lhs.true:                                    ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %call9, i32 0, i32 16
  %10 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %netdev_ops, align 8
  %cmp = icmp eq ptr %11, @gtp_netdev_ops
  %add.ptr.i = getelementptr i8, ptr %call9, i32 2304
  %spec.select = select i1 %cmp, ptr %add.ptr.i, ptr null
  br label %if.end13

if.end13:                                         ; preds = %land.lhs.true, %if.end6.if.end13_crit_edge
  %gtp.0 = phi ptr [ null, %if.end6.if.end13_crit_edge ], [ %spec.select, %land.lhs.true ]
  %count.i23 = getelementptr inbounds %struct.net, ptr %net.0, i32 0, i32 14, i32 3
  %call.i.i.i.i.i.i24 = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i23, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !200
  tail call void @llvm.prefetch.p0(ptr %count.i23, i32 1, i32 3, i32 1) #15
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i23, ptr %count.i23, i32 1, ptr elementtype(i32) %count.i23) #15, !srcloc !201
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i25 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i25, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !199

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef %count.i23, i32 noundef 3) #15
  br label %cleanup

if.then.i:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !202
  tail call void @__put_net(ptr noundef %net.0) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.end.cleanup_crit_edge ], [ %gtp.0, %if.end5.i.i.i.i.cleanup_crit_edge ], [ %gtp.0, %if.then10.i.i.i.i ], [ %gtp.0, %if.then.i ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @gtp_pdp_add(ptr nocapture noundef readonly %gtp, ptr noundef %sk, ptr nocapture noundef readonly %info) unnamed_addr #4 align 64 {
entry:
  %tmp.i.i239 = alloca i64, align 8
  %tmp.i.i = alloca i64, align 8
  %tmp.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.gtp_dev, ptr %gtp, i32 0, i32 3
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %attrs = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %2 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %attrs, align 4
  %arrayidx = getelementptr ptr, ptr %3, i32 5
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 4
  %6 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr.i.i, align 4
  %8 = load i32, ptr @gtp_h_initval, align 4
  %add1.i.i = add i32 %8, -559038733
  %add.i.i.i = add i32 %add1.i.i, %7
  %or.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %add1.i.i, i32 %add1.i.i, i32 14) #15
  %sub.i.i.i = sub i32 0, %or.i.i.i.i
  %xor3.i.i.i = xor i32 %add.i.i.i, %sub.i.i.i
  %or.i1.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub.i.i.i, i32 %sub.i.i.i, i32 11) #15
  %sub5.i.i.i = sub i32 %xor3.i.i.i, %or.i1.i.i.i
  %xor6.i.i.i = xor i32 %sub5.i.i.i, %add1.i.i
  %or.i2.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub5.i.i.i, i32 %sub5.i.i.i, i32 25) #15
  %sub8.i.i.i = sub i32 %xor6.i.i.i, %or.i2.i.i.i
  %xor9.i.i.i = xor i32 %sub8.i.i.i, %sub.i.i.i
  %or.i3.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub8.i.i.i, i32 %sub8.i.i.i, i32 16) #15
  %sub11.i.i.i = sub i32 %xor9.i.i.i, %or.i3.i.i.i
  %xor12.i.i.i = xor i32 %sub11.i.i.i, %sub5.i.i.i
  %or.i4.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub11.i.i.i, i32 %sub11.i.i.i, i32 4) #15
  %sub14.i.i.i = sub i32 %xor12.i.i.i, %or.i4.i.i.i
  %xor15.i.i.i = xor i32 %sub14.i.i.i, %sub8.i.i.i
  %or.i5.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub14.i.i.i, i32 %sub14.i.i.i, i32 14) #15
  %sub17.i.i.i = sub i32 %xor15.i.i.i, %or.i5.i.i.i
  %xor18.i.i.i = xor i32 %sub17.i.i.i, %sub11.i.i.i
  %or.i6.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub17.i.i.i, i32 %sub17.i.i.i, i32 24) #15
  %sub20.i.i.i = sub i32 %xor18.i.i.i, %or.i6.i.i.i
  %hash_size = getelementptr inbounds %struct.gtp_dev, ptr %gtp, i32 0, i32 5
  %9 = ptrtoint ptr %hash_size to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %hash_size, align 4
  %rem = urem i32 %sub20.i.i.i, %10
  %arrayidx4 = getelementptr ptr, ptr %3, i32 2
  %11 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx4, align 4
  %add.ptr.i.i236 = getelementptr i8, ptr %12, i32 4
  %13 = ptrtoint ptr %add.ptr.i.i236 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %add.ptr.i.i236, align 4
  %call6 = tail call fastcc ptr @ipv4_pdp_find(ptr noundef %gtp, i32 noundef %7)
  %tobool.not = icmp eq ptr %call6, null
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.61)
  switch i32 %14, label %entry.if.end19_crit_edge [
    i32 0, label %if.then7
    i32 1, label %if.then13
  ]

entry.if.end19_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end19

if.then7:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %16 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %attrs, align 4
  %arrayidx9 = getelementptr ptr, ptr %17, i32 3
  %18 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx9, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i) #15
  %20 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 -1, ptr %tmp.i, align 8, !annotation !203
  %call.i = call i32 @nla_memcpy(ptr noundef nonnull %tmp.i, ptr noundef %19, i32 noundef 8) #15
  %21 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %tmp.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i) #15
  %call11 = call fastcc ptr @gtp0_pdp_find(ptr noundef %gtp, i64 noundef %22)
  br label %if.end19

if.then13:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %23 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %attrs, align 4
  %arrayidx15 = getelementptr ptr, ptr %24, i32 8
  %25 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx15, align 4
  %add.ptr.i.i237 = getelementptr i8, ptr %26, i32 4
  %27 = ptrtoint ptr %add.ptr.i.i237 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %add.ptr.i.i237, align 4
  %call17 = tail call fastcc ptr @gtp1_pdp_find(ptr noundef %gtp, i32 noundef %28)
  br label %if.end19

if.end19:                                         ; preds = %if.then13, %if.then7, %entry.if.end19_crit_edge
  %pctx_tid.0 = phi ptr [ %call11, %if.then7 ], [ %call17, %if.then13 ], [ null, %entry.if.end19_crit_edge ]
  %tobool20.not = icmp eq ptr %pctx_tid.0, null
  %29 = select i1 %tobool20.not, i1 %tobool.not, i1 false
  br i1 %29, label %if.end87, label %if.then24

if.then24:                                        ; preds = %if.end19
  %nlhdr = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 2
  %30 = ptrtoint ptr %nlhdr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %nlhdr, align 4
  %nlmsg_flags = getelementptr inbounds %struct.nlmsghdr, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %nlmsg_flags to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %nlmsg_flags, align 2
  %conv = zext i16 %33 to i32
  %and = and i32 %conv, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool25.not = icmp eq i32 %and, 0
  br i1 %tobool25.not, label %if.end28, label %if.then24.cleanup_crit_edge

if.then24.cleanup_crit_edge:                      ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end28:                                         ; preds = %if.then24
  %and32 = and i32 %conv, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %if.end36, label %if.end28.cleanup_crit_edge

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end36:                                         ; preds = %if.end28
  %brmerge = select i1 %tobool.not, i1 true, i1 %tobool20.not
  br i1 %brmerge, label %if.end41, label %if.end36.cleanup_crit_edge

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end41:                                         ; preds = %if.end36
  %spec.select226 = select i1 %tobool.not, ptr %pctx_tid.0, ptr %call6
  %34 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %attrs, align 4
  %arrayidx.i = getelementptr ptr, ptr %35, i32 2
  %36 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %37, i32 4
  %38 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %add.ptr.i.i.i, align 4
  %conv.i = trunc i32 %39 to i8
  %gtp_version.i = getelementptr inbounds %struct.pdp_ctx, ptr %spec.select226, i32 0, i32 3
  %40 = ptrtoint ptr %gtp_version.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %conv.i, ptr %gtp_version.i, align 8
  %af.i = getelementptr inbounds %struct.pdp_ctx, ptr %spec.select226, i32 0, i32 4
  %41 = ptrtoint ptr %af.i to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 2, ptr %af.i, align 2
  %42 = load ptr, ptr %attrs, align 4
  %arrayidx2.i = getelementptr ptr, ptr %42, i32 4
  %43 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx2.i, align 4
  %add.ptr.i.i40.i = getelementptr i8, ptr %44, i32 4
  %45 = ptrtoint ptr %add.ptr.i.i40.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %add.ptr.i.i40.i, align 4
  %peer_addr_ip4.i = getelementptr inbounds %struct.pdp_ctx, ptr %spec.select226, i32 0, i32 6
  %47 = ptrtoint ptr %peer_addr_ip4.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %peer_addr_ip4.i, align 8
  %48 = load ptr, ptr %attrs, align 4
  %arrayidx5.i = getelementptr ptr, ptr %48, i32 5
  %49 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx5.i, align 4
  %add.ptr.i.i41.i = getelementptr i8, ptr %50, i32 4
  %51 = ptrtoint ptr %add.ptr.i.i41.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %add.ptr.i.i41.i, align 4
  %ms_addr_ip4.i = getelementptr inbounds %struct.pdp_ctx, ptr %spec.select226, i32 0, i32 5
  %53 = ptrtoint ptr %ms_addr_ip4.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %ms_addr_ip4.i, align 4
  %54 = zext i8 %conv.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %54, ptr @__sancov_gen_cov_switch_values.62)
  switch i8 %conv.i, label %if.end41.ipv4_pdp_fill.exit_crit_edge [
    i8 0, label %sw.bb.i
    i8 1, label %sw.bb17.i
  ]

if.end41.ipv4_pdp_fill.exit_crit_edge:            ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #17
  br label %ipv4_pdp_fill.exit

sw.bb.i:                                          ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #17
  %55 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %attrs, align 4
  %arrayidx11.i = getelementptr ptr, ptr %56, i32 3
  %57 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %arrayidx11.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i.i) #15
  %59 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store8_noabort(i32 %59)
  store i64 -1, ptr %tmp.i.i, align 8, !annotation !203
  %call.i.i238 = call i32 @nla_memcpy(ptr noundef nonnull %tmp.i.i, ptr noundef %58, i32 noundef 8) #15
  %60 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %tmp.i.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i.i) #15
  %u.i = getelementptr inbounds %struct.pdp_ctx, ptr %spec.select226, i32 0, i32 2
  %62 = ptrtoint ptr %u.i to i32
  call void @__asan_store8_noabort(i32 %62)
  store i64 %61, ptr %u.i, align 8
  %63 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %attrs, align 4
  %arrayidx14.i = getelementptr ptr, ptr %64, i32 6
  %65 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %arrayidx14.i, align 4
  %add.ptr.i.i42.i = getelementptr i8, ptr %66, i32 4
  %67 = ptrtoint ptr %add.ptr.i.i42.i to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %add.ptr.i.i42.i, align 2
  %flow.i = getelementptr inbounds %struct.pdp_ctx, ptr %spec.select226, i32 0, i32 2, i32 0, i32 1
  %69 = ptrtoint ptr %flow.i to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 %68, ptr %flow.i, align 8
  br label %ipv4_pdp_fill.exit

sw.bb17.i:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #17
  %70 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %attrs, align 4
  %arrayidx19.i = getelementptr ptr, ptr %71, i32 8
  %72 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %arrayidx19.i, align 4
  %add.ptr.i.i43.i = getelementptr i8, ptr %73, i32 4
  %74 = ptrtoint ptr %add.ptr.i.i43.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %add.ptr.i.i43.i, align 4
  %u21.i = getelementptr inbounds %struct.pdp_ctx, ptr %spec.select226, i32 0, i32 2
  %76 = ptrtoint ptr %u21.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %75, ptr %u21.i, align 8
  %77 = load ptr, ptr %attrs, align 4
  %arrayidx23.i = getelementptr ptr, ptr %77, i32 9
  %78 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %arrayidx23.i, align 4
  %add.ptr.i.i44.i = getelementptr i8, ptr %79, i32 4
  %80 = ptrtoint ptr %add.ptr.i.i44.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %add.ptr.i.i44.i, align 4
  %o_tei.i = getelementptr inbounds %struct.anon.160, ptr %u21.i, i32 0, i32 1
  %82 = ptrtoint ptr %o_tei.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %81, ptr %o_tei.i, align 4
  br label %ipv4_pdp_fill.exit

ipv4_pdp_fill.exit:                               ; preds = %sw.bb17.i, %sw.bb.i, %if.end41.ipv4_pdp_fill.exit_crit_edge
  %83 = ptrtoint ptr %gtp_version.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %gtp_version.i, align 8
  %85 = zext i8 %84 to i64
  call void @__sanitizer_cov_trace_switch(i64 %85, ptr @__sancov_gen_cov_switch_values.63)
  switch i8 %84, label %ipv4_pdp_fill.exit.cleanup_crit_edge [
    i8 0, label %do.body49
    i8 1, label %do.body65
  ]

ipv4_pdp_fill.exit.cleanup_crit_edge:             ; preds = %ipv4_pdp_fill.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.body49:                                        ; preds = %ipv4_pdp_fill.exit
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gtp_pdp_add.__UNIQUE_ID_ddebug617, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gtp_pdp_add, %if.then54)) #15
          to label %cleanup [label %if.then54], !srcloc !195

if.then54:                                        ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #17
  %u = getelementptr inbounds %struct.pdp_ctx, ptr %spec.select226, i32 0, i32 2
  %86 = ptrtoint ptr %u to i32
  call void @__asan_load8_noabort(i32 %86)
  %87 = load i64, ptr %u, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @gtp_pdp_add.__UNIQUE_ID_ddebug617, ptr noundef %1, ptr noundef nonnull @.str.24, i64 noundef %87, ptr noundef %spec.select226) #15
  br label %cleanup

do.body65:                                        ; preds = %ipv4_pdp_fill.exit
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gtp_pdp_add.__UNIQUE_ID_ddebug618, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gtp_pdp_add, %if.then77)) #15
          to label %cleanup [label %if.then77], !srcloc !195

if.then77:                                        ; preds = %do.body65
  call void @__sanitizer_cov_trace_pc() #17
  %u78 = getelementptr inbounds %struct.pdp_ctx, ptr %spec.select226, i32 0, i32 2
  %88 = ptrtoint ptr %u78 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %u78, align 8
  %o_tei = getelementptr inbounds %struct.anon.160, ptr %u78, i32 0, i32 1
  %90 = ptrtoint ptr %o_tei to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %o_tei, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @gtp_pdp_add.__UNIQUE_ID_ddebug618, ptr noundef %1, ptr noundef nonnull @.str.25, i32 noundef %89, i32 noundef %91, ptr noundef %spec.select226) #15
  br label %cleanup

if.end87:                                         ; preds = %if.end19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %92 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %92, i32 noundef 2592, i32 noundef 64) #19
  %cmp89 = icmp eq ptr %call7.i, null
  br i1 %cmp89, label %if.end87.cleanup_crit_edge, label %if.end93

if.end87.cleanup_crit_edge:                       ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end93:                                         ; preds = %if.end87
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 19
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #15
  call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #15
  %93 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #15, !srcloc !197
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %93, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end93.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !198

if.end93.if.end15.sink.split.i.i.i.i_crit_edge:   ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end93
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %94 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %94)
  %.not.i.i.i.i = icmp sgt i32 %94, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.sock_hold.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !199

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.sock_hold.exit_crit_edge:         ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sock_hold.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end93.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end93.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef %.sink.i.i.i.i) #15
  br label %sock_hold.exit

sock_hold.exit:                                   ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.sock_hold.exit_crit_edge
  %sk94 = getelementptr inbounds %struct.pdp_ctx, ptr %call7.i, i32 0, i32 7
  %95 = ptrtoint ptr %sk94 to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %sk, ptr %sk94, align 4
  %96 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %dev1, align 4
  %dev96 = getelementptr inbounds %struct.pdp_ctx, ptr %call7.i, i32 0, i32 8
  %98 = ptrtoint ptr %dev96 to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %97, ptr %dev96, align 8
  %99 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %attrs, align 4
  %arrayidx.i241 = getelementptr ptr, ptr %100, i32 2
  %101 = ptrtoint ptr %arrayidx.i241 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %arrayidx.i241, align 4
  %add.ptr.i.i.i242 = getelementptr i8, ptr %102, i32 4
  %103 = ptrtoint ptr %add.ptr.i.i.i242 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %add.ptr.i.i.i242, align 4
  %conv.i243 = trunc i32 %104 to i8
  %gtp_version.i244 = getelementptr inbounds %struct.pdp_ctx, ptr %call7.i, i32 0, i32 3
  %105 = ptrtoint ptr %gtp_version.i244 to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 %conv.i243, ptr %gtp_version.i244, align 8
  %af.i245 = getelementptr inbounds %struct.pdp_ctx, ptr %call7.i, i32 0, i32 4
  %106 = ptrtoint ptr %af.i245 to i32
  call void @__asan_store2_noabort(i32 %106)
  store i16 2, ptr %af.i245, align 2
  %arrayidx2.i246 = getelementptr ptr, ptr %100, i32 4
  %107 = ptrtoint ptr %arrayidx2.i246 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %arrayidx2.i246, align 4
  %add.ptr.i.i40.i247 = getelementptr i8, ptr %108, i32 4
  %109 = ptrtoint ptr %add.ptr.i.i40.i247 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %add.ptr.i.i40.i247, align 4
  %peer_addr_ip4.i248 = getelementptr inbounds %struct.pdp_ctx, ptr %call7.i, i32 0, i32 6
  %111 = ptrtoint ptr %peer_addr_ip4.i248 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %110, ptr %peer_addr_ip4.i248, align 8
  %arrayidx5.i249 = getelementptr ptr, ptr %100, i32 5
  %112 = ptrtoint ptr %arrayidx5.i249 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %arrayidx5.i249, align 4
  %add.ptr.i.i41.i250 = getelementptr i8, ptr %113, i32 4
  %114 = ptrtoint ptr %add.ptr.i.i41.i250 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %add.ptr.i.i41.i250, align 4
  %ms_addr_ip4.i251 = getelementptr inbounds %struct.pdp_ctx, ptr %call7.i, i32 0, i32 5
  %116 = ptrtoint ptr %ms_addr_ip4.i251 to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %115, ptr %ms_addr_ip4.i251, align 4
  %117 = zext i8 %conv.i243 to i64
  call void @__sanitizer_cov_trace_switch(i64 %117, ptr @__sancov_gen_cov_switch_values.64)
  switch i8 %conv.i243, label %sock_hold.exit.ipv4_pdp_fill.exit266_crit_edge [
    i8 0, label %sw.bb.i258
    i8 1, label %sw.bb17.i265
  ]

sock_hold.exit.ipv4_pdp_fill.exit266_crit_edge:   ; preds = %sock_hold.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %ipv4_pdp_fill.exit266

sw.bb.i258:                                       ; preds = %sock_hold.exit
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx11.i252 = getelementptr ptr, ptr %100, i32 3
  %118 = ptrtoint ptr %arrayidx11.i252 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %arrayidx11.i252, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i.i239) #15
  %120 = ptrtoint ptr %tmp.i.i239 to i32
  call void @__asan_store8_noabort(i32 %120)
  store i64 -1, ptr %tmp.i.i239, align 8, !annotation !203
  %call.i.i253 = call i32 @nla_memcpy(ptr noundef nonnull %tmp.i.i239, ptr noundef %119, i32 noundef 8) #15
  %121 = ptrtoint ptr %tmp.i.i239 to i32
  call void @__asan_load8_noabort(i32 %121)
  %122 = load i64, ptr %tmp.i.i239, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i.i239) #15
  %u.i254 = getelementptr inbounds %struct.pdp_ctx, ptr %call7.i, i32 0, i32 2
  %123 = ptrtoint ptr %u.i254 to i32
  call void @__asan_store8_noabort(i32 %123)
  store i64 %122, ptr %u.i254, align 8
  %124 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %attrs, align 4
  %arrayidx14.i255 = getelementptr ptr, ptr %125, i32 6
  %126 = ptrtoint ptr %arrayidx14.i255 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %arrayidx14.i255, align 4
  %add.ptr.i.i42.i256 = getelementptr i8, ptr %127, i32 4
  %128 = ptrtoint ptr %add.ptr.i.i42.i256 to i32
  call void @__asan_load2_noabort(i32 %128)
  %129 = load i16, ptr %add.ptr.i.i42.i256, align 2
  %flow.i257 = getelementptr inbounds %struct.pdp_ctx, ptr %call7.i, i32 0, i32 2, i32 0, i32 1
  %130 = ptrtoint ptr %flow.i257 to i32
  call void @__asan_store2_noabort(i32 %130)
  store i16 %129, ptr %flow.i257, align 8
  br label %ipv4_pdp_fill.exit266

sw.bb17.i265:                                     ; preds = %sock_hold.exit
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx19.i259 = getelementptr ptr, ptr %100, i32 8
  %131 = ptrtoint ptr %arrayidx19.i259 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %arrayidx19.i259, align 4
  %add.ptr.i.i43.i260 = getelementptr i8, ptr %132, i32 4
  %133 = ptrtoint ptr %add.ptr.i.i43.i260 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %add.ptr.i.i43.i260, align 4
  %u21.i261 = getelementptr inbounds %struct.pdp_ctx, ptr %call7.i, i32 0, i32 2
  %135 = ptrtoint ptr %u21.i261 to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %134, ptr %u21.i261, align 8
  %arrayidx23.i262 = getelementptr ptr, ptr %100, i32 9
  %136 = ptrtoint ptr %arrayidx23.i262 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %arrayidx23.i262, align 4
  %add.ptr.i.i44.i263 = getelementptr i8, ptr %137, i32 4
  %138 = ptrtoint ptr %add.ptr.i.i44.i263 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %add.ptr.i.i44.i263, align 4
  %o_tei.i264 = getelementptr inbounds %struct.anon.160, ptr %u21.i261, i32 0, i32 1
  %140 = ptrtoint ptr %o_tei.i264 to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 %139, ptr %o_tei.i264, align 4
  br label %ipv4_pdp_fill.exit266

ipv4_pdp_fill.exit266:                            ; preds = %sw.bb17.i265, %sw.bb.i258, %sock_hold.exit.ipv4_pdp_fill.exit266_crit_edge
  %tx_seq = getelementptr inbounds %struct.pdp_ctx, ptr %call7.i, i32 0, i32 9
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %tx_seq, i32 noundef 4) #15
  %141 = ptrtoint ptr %tx_seq to i32
  call void @__asan_store4_noabort(i32 %141)
  store volatile i32 0, ptr %tx_seq, align 4
  %142 = ptrtoint ptr %gtp_version.i244 to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %gtp_version.i244, align 8
  %144 = zext i8 %143 to i64
  call void @__sanitizer_cov_trace_switch(i64 %144, ptr @__sancov_gen_cov_switch_values.65)
  switch i8 %143, label %ipv4_pdp_fill.exit266.sw.epilog_crit_edge [
    i8 0, label %sw.bb
    i8 1, label %sw.bb104
  ]

ipv4_pdp_fill.exit266.sw.epilog_crit_edge:        ; preds = %ipv4_pdp_fill.exit266
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

sw.bb:                                            ; preds = %ipv4_pdp_fill.exit266
  call void @__sanitizer_cov_trace_pc() #17
  %u99 = getelementptr inbounds %struct.pdp_ctx, ptr %call7.i, i32 0, i32 2
  %145 = ptrtoint ptr %u99 to i32
  call void @__asan_load8_noabort(i32 %145)
  %146 = load i64, ptr %u99, align 8
  %tid.addr.sroa.0.0.extract.shift.i = lshr i64 %146, 32
  %tid.addr.sroa.0.0.extract.trunc.i = trunc i64 %tid.addr.sroa.0.0.extract.shift.i to i32
  %tid.addr.sroa.2.0.extract.trunc.i = trunc i64 %146 to i32
  %147 = load i32, ptr @gtp_h_initval, align 4
  %add1.i.i267 = add i32 %147, -559038729
  %add.i.i.i268 = add i32 %add1.i.i267, %tid.addr.sroa.0.0.extract.trunc.i
  %add1.i.i.i = add i32 %add1.i.i267, %tid.addr.sroa.2.0.extract.trunc.i
  %xor.i.i.i = xor i32 %add1.i.i.i, %add1.i.i267
  %or.i.i.i.i269 = call i32 @llvm.fshl.i32(i32 %add1.i.i.i, i32 %add1.i.i.i, i32 14) #15
  %sub.i.i.i270 = sub i32 %xor.i.i.i, %or.i.i.i.i269
  %xor3.i.i.i271 = xor i32 %sub.i.i.i270, %add.i.i.i268
  %or.i1.i.i.i272 = call i32 @llvm.fshl.i32(i32 %sub.i.i.i270, i32 %sub.i.i.i270, i32 11) #15
  %sub5.i.i.i273 = sub i32 %xor3.i.i.i271, %or.i1.i.i.i272
  %xor6.i.i.i274 = xor i32 %sub5.i.i.i273, %add1.i.i.i
  %or.i2.i.i.i275 = call i32 @llvm.fshl.i32(i32 %sub5.i.i.i273, i32 %sub5.i.i.i273, i32 25) #15
  %sub8.i.i.i276 = sub i32 %xor6.i.i.i274, %or.i2.i.i.i275
  %xor9.i.i.i277 = xor i32 %sub8.i.i.i276, %sub.i.i.i270
  %or.i3.i.i.i278 = call i32 @llvm.fshl.i32(i32 %sub8.i.i.i276, i32 %sub8.i.i.i276, i32 16) #15
  %sub11.i.i.i279 = sub i32 %xor9.i.i.i277, %or.i3.i.i.i278
  %xor12.i.i.i280 = xor i32 %sub11.i.i.i279, %sub5.i.i.i273
  %or.i4.i.i.i281 = call i32 @llvm.fshl.i32(i32 %sub11.i.i.i279, i32 %sub11.i.i.i279, i32 4) #15
  %sub14.i.i.i282 = sub i32 %xor12.i.i.i280, %or.i4.i.i.i281
  %xor15.i.i.i283 = xor i32 %sub14.i.i.i282, %sub8.i.i.i276
  %or.i5.i.i.i284 = call i32 @llvm.fshl.i32(i32 %sub14.i.i.i282, i32 %sub14.i.i.i282, i32 14) #15
  %sub17.i.i.i285 = sub i32 %xor15.i.i.i283, %or.i5.i.i.i284
  %xor18.i.i.i286 = xor i32 %sub17.i.i.i285, %sub11.i.i.i279
  %or.i6.i.i.i287 = call i32 @llvm.fshl.i32(i32 %sub17.i.i.i285, i32 %sub17.i.i.i285, i32 24) #15
  %sub20.i.i.i288 = sub i32 %xor18.i.i.i286, %or.i6.i.i.i287
  br label %sw.epilog.sink.split

sw.bb104:                                         ; preds = %ipv4_pdp_fill.exit266
  call void @__sanitizer_cov_trace_pc() #17
  %u105 = getelementptr inbounds %struct.pdp_ctx, ptr %call7.i, i32 0, i32 2
  %148 = ptrtoint ptr %u105 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %u105, align 8
  %150 = load i32, ptr @gtp_h_initval, align 4
  %add1.i.i289 = add i32 %150, -559038733
  %add.i.i.i290 = add i32 %add1.i.i289, %149
  %or.i.i.i.i291 = call i32 @llvm.fshl.i32(i32 %add1.i.i289, i32 %add1.i.i289, i32 14) #15
  %sub.i.i.i292 = sub i32 0, %or.i.i.i.i291
  %xor3.i.i.i293 = xor i32 %add.i.i.i290, %sub.i.i.i292
  %or.i1.i.i.i294 = call i32 @llvm.fshl.i32(i32 %sub.i.i.i292, i32 %sub.i.i.i292, i32 11) #15
  %sub5.i.i.i295 = sub i32 %xor3.i.i.i293, %or.i1.i.i.i294
  %xor6.i.i.i296 = xor i32 %sub5.i.i.i295, %add1.i.i289
  %or.i2.i.i.i297 = call i32 @llvm.fshl.i32(i32 %sub5.i.i.i295, i32 %sub5.i.i.i295, i32 25) #15
  %sub8.i.i.i298 = sub i32 %xor6.i.i.i296, %or.i2.i.i.i297
  %xor9.i.i.i299 = xor i32 %sub8.i.i.i298, %sub.i.i.i292
  %or.i3.i.i.i300 = call i32 @llvm.fshl.i32(i32 %sub8.i.i.i298, i32 %sub8.i.i.i298, i32 16) #15
  %sub11.i.i.i301 = sub i32 %xor9.i.i.i299, %or.i3.i.i.i300
  %xor12.i.i.i302 = xor i32 %sub11.i.i.i301, %sub5.i.i.i295
  %or.i4.i.i.i303 = call i32 @llvm.fshl.i32(i32 %sub11.i.i.i301, i32 %sub11.i.i.i301, i32 4) #15
  %sub14.i.i.i304 = sub i32 %xor12.i.i.i302, %or.i4.i.i.i303
  %xor15.i.i.i305 = xor i32 %sub14.i.i.i304, %sub8.i.i.i298
  %or.i5.i.i.i306 = call i32 @llvm.fshl.i32(i32 %sub14.i.i.i304, i32 %sub14.i.i.i304, i32 14) #15
  %sub17.i.i.i307 = sub i32 %xor15.i.i.i305, %or.i5.i.i.i306
  %xor18.i.i.i308 = xor i32 %sub17.i.i.i307, %sub11.i.i.i301
  %or.i6.i.i.i309 = call i32 @llvm.fshl.i32(i32 %sub17.i.i.i307, i32 %sub17.i.i.i307, i32 24) #15
  %sub20.i.i.i310 = sub i32 %xor18.i.i.i308, %or.i6.i.i.i309
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb104, %sw.bb
  %sub20.i.i.i310.sink = phi i32 [ %sub20.i.i.i310, %sw.bb104 ], [ %sub20.i.i.i288, %sw.bb ]
  %151 = ptrtoint ptr %hash_size to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %hash_size, align 4
  %rem109 = urem i32 %sub20.i.i.i310.sink, %152
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %ipv4_pdp_fill.exit266.sw.epilog_crit_edge
  %hash_tid.0 = phi i32 [ 0, %ipv4_pdp_fill.exit266.sw.epilog_crit_edge ], [ %rem109, %sw.epilog.sink.split ]
  %hlist_addr = getelementptr inbounds %struct.pdp_ctx, ptr %call7.i, i32 0, i32 1
  %addr_hash = getelementptr inbounds %struct.gtp_dev, ptr %gtp, i32 0, i32 7
  %153 = ptrtoint ptr %addr_hash to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %addr_hash, align 4
  %arrayidx110 = getelementptr %struct.hlist_head, ptr %154, i32 %rem
  %155 = ptrtoint ptr %arrayidx110 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %arrayidx110, align 4
  %157 = ptrtoint ptr %hlist_addr to i32
  call void @__asan_store4_noabort(i32 %157)
  store ptr %156, ptr %hlist_addr, align 8
  %pprev.i = getelementptr inbounds %struct.pdp_ctx, ptr %call7.i, i32 0, i32 1, i32 1
  %158 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store volatile ptr %arrayidx110, ptr %pprev.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !204
  %159 = ptrtoint ptr %arrayidx110 to i32
  call void @__asan_store4_noabort(i32 %159)
  store volatile ptr %hlist_addr, ptr %arrayidx110, align 4
  %tobool.not.i = icmp eq ptr %156, null
  br i1 %tobool.not.i, label %sw.epilog.hlist_add_head_rcu.exit_crit_edge, label %do.body49.i

sw.epilog.hlist_add_head_rcu.exit_crit_edge:      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #17
  br label %hlist_add_head_rcu.exit

do.body49.i:                                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #17
  %pprev51.i = getelementptr inbounds %struct.hlist_node, ptr %156, i32 0, i32 1
  %160 = ptrtoint ptr %pprev51.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store volatile ptr %hlist_addr, ptr %pprev51.i, align 4
  br label %hlist_add_head_rcu.exit

hlist_add_head_rcu.exit:                          ; preds = %do.body49.i, %sw.epilog.hlist_add_head_rcu.exit_crit_edge
  %tid_hash = getelementptr inbounds %struct.gtp_dev, ptr %gtp, i32 0, i32 6
  %161 = ptrtoint ptr %tid_hash to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %tid_hash, align 4
  %arrayidx111 = getelementptr %struct.hlist_head, ptr %162, i32 %hash_tid.0
  %163 = ptrtoint ptr %arrayidx111 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %arrayidx111, align 4
  %165 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %165)
  store ptr %164, ptr %call7.i, align 8
  %pprev.i311 = getelementptr inbounds %struct.hlist_node, ptr %call7.i, i32 0, i32 1
  %166 = ptrtoint ptr %pprev.i311 to i32
  call void @__asan_store4_noabort(i32 %166)
  store volatile ptr %arrayidx111, ptr %pprev.i311, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !204
  %167 = ptrtoint ptr %arrayidx111 to i32
  call void @__asan_store4_noabort(i32 %167)
  store volatile ptr %call7.i, ptr %arrayidx111, align 4
  %tobool.not.i312 = icmp eq ptr %164, null
  br i1 %tobool.not.i312, label %hlist_add_head_rcu.exit.hlist_add_head_rcu.exit315_crit_edge, label %do.body49.i314

hlist_add_head_rcu.exit.hlist_add_head_rcu.exit315_crit_edge: ; preds = %hlist_add_head_rcu.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %hlist_add_head_rcu.exit315

do.body49.i314:                                   ; preds = %hlist_add_head_rcu.exit
  call void @__sanitizer_cov_trace_pc() #17
  %pprev51.i313 = getelementptr inbounds %struct.hlist_node, ptr %164, i32 0, i32 1
  %168 = ptrtoint ptr %pprev51.i313 to i32
  call void @__asan_store4_noabort(i32 %168)
  store volatile ptr %call7.i, ptr %pprev51.i313, align 4
  br label %hlist_add_head_rcu.exit315

hlist_add_head_rcu.exit315:                       ; preds = %do.body49.i314, %hlist_add_head_rcu.exit.hlist_add_head_rcu.exit315_crit_edge
  %169 = ptrtoint ptr %gtp_version.i244 to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %gtp_version.i244, align 8
  %171 = zext i8 %170 to i64
  call void @__sanitizer_cov_trace_switch(i64 %171, ptr @__sancov_gen_cov_switch_values.66)
  switch i8 %170, label %hlist_add_head_rcu.exit315.cleanup_crit_edge [
    i8 0, label %do.body116
    i8 1, label %do.body138
  ]

hlist_add_head_rcu.exit315.cleanup_crit_edge:     ; preds = %hlist_add_head_rcu.exit315
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.body116:                                       ; preds = %hlist_add_head_rcu.exit315
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gtp_pdp_add.__UNIQUE_ID_ddebug619, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gtp_pdp_add, %if.then128)) #15
          to label %cleanup [label %if.then128], !srcloc !195

if.then128:                                       ; preds = %do.body116
  call void @__sanitizer_cov_trace_pc() #17
  %u129 = getelementptr inbounds %struct.pdp_ctx, ptr %call7.i, i32 0, i32 2
  %172 = ptrtoint ptr %u129 to i32
  call void @__asan_load8_noabort(i32 %172)
  %173 = load i64, ptr %u129, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @gtp_pdp_add.__UNIQUE_ID_ddebug619, ptr noundef %1, ptr noundef nonnull @.str.26, i64 noundef %173, ptr noundef %peer_addr_ip4.i248, ptr noundef %ms_addr_ip4.i251, ptr noundef nonnull %call7.i) #15
  br label %cleanup

do.body138:                                       ; preds = %hlist_add_head_rcu.exit315
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gtp_pdp_add.__UNIQUE_ID_ddebug620, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gtp_pdp_add, %if.then150)) #15
          to label %cleanup [label %if.then150], !srcloc !195

if.then150:                                       ; preds = %do.body138
  call void @__sanitizer_cov_trace_pc() #17
  %u151 = getelementptr inbounds %struct.pdp_ctx, ptr %call7.i, i32 0, i32 2
  %174 = ptrtoint ptr %u151 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %u151, align 8
  %o_tei154 = getelementptr inbounds %struct.anon.160, ptr %u151, i32 0, i32 1
  %176 = ptrtoint ptr %o_tei154 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %o_tei154, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @gtp_pdp_add.__UNIQUE_ID_ddebug620, ptr noundef %1, ptr noundef nonnull @.str.27, i32 noundef %175, i32 noundef %177, ptr noundef %peer_addr_ip4.i248, ptr noundef %ms_addr_ip4.i251, ptr noundef nonnull %call7.i) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then150, %do.body138, %if.then128, %do.body116, %hlist_add_head_rcu.exit315.cleanup_crit_edge, %if.end87.cleanup_crit_edge, %if.then77, %do.body65, %if.then54, %do.body49, %ipv4_pdp_fill.exit.cleanup_crit_edge, %if.end36.cleanup_crit_edge, %if.end28.cleanup_crit_edge, %if.then24.cleanup_crit_edge
  %retval.0 = phi ptr [ %spec.select226, %ipv4_pdp_fill.exit.cleanup_crit_edge ], [ %spec.select226, %if.then77 ], [ %spec.select226, %if.then54 ], [ %call7.i, %if.then150 ], [ %call7.i, %if.then128 ], [ %call7.i, %hlist_add_head_rcu.exit315.cleanup_crit_edge ], [ inttoptr (i32 -17 to ptr), %if.then24.cleanup_crit_edge ], [ inttoptr (i32 -95 to ptr), %if.end28.cleanup_crit_edge ], [ inttoptr (i32 -17 to ptr), %if.end36.cleanup_crit_edge ], [ %spec.select226, %do.body49 ], [ %spec.select226, %do.body65 ], [ inttoptr (i32 -12 to ptr), %if.end87.cleanup_crit_edge ], [ %call7.i, %do.body116 ], [ %call7.i, %do.body138 ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gtp_tunnel_notify(ptr nocapture noundef readonly %pctx, i8 noundef zeroext %cmd, i32 noundef %allocation) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef 3840, i32 noundef %allocation, i32 noundef 0, i32 noundef -1) #15
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = zext i8 %cmd to i32
  %call1 = tail call fastcc i32 @gtp_genl_fill_info(ptr noundef nonnull %call.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %conv, ptr noundef %pctx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i.i, i32 noundef 0) #15
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %0 = load i8, ptr getelementptr inbounds (%struct.genl_family, ptr @gtp_genl_family, i32 0, i32 9), align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %cmp.i = icmp eq i8 %0, 0
  br i1 %cmp.i, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %if.end4
  %.b1.i = load i1, ptr @genlmsg_multicast_netns.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.cleanup_crit_edge, label %if.then.i, !prof !199

land.rhs.i.cleanup_crit_edge:                     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @genlmsg_multicast_netns.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.29, i32 noundef 308, i32 noundef 9, ptr noundef null) #15
  br label %cleanup

if.end39.i:                                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  %dev = getelementptr inbounds %struct.pdp_ctx, ptr %pctx, i32 0, i32 8
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 8
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 127
  %3 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %nd_net.i, align 4
  %5 = load i32, ptr getelementptr inbounds (%struct.genl_family, ptr @gtp_genl_family, i32 0, i32 5), align 4
  %genl_sock.i = getelementptr inbounds %struct.net, ptr %4, i32 0, i32 21
  %6 = ptrtoint ptr %genl_sock.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %genl_sock.i, align 4
  %dst_group.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3, i32 16
  %8 = ptrtoint ptr %dst_group.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %5, ptr %dst_group.i.i, align 8
  %call.i.i1 = tail call i32 @netlink_broadcast(ptr noundef %7, ptr noundef nonnull %call.i.i, i32 noundef 0, i32 noundef %5, i32 noundef 2592) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end39.i, %if.then.i, %land.rhs.i.cleanup_crit_edge, %if.then3, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_net_ns_by_fd(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_by_index_rcu(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gtp_dev_init(ptr noundef %dev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr i8, ptr %dev, i32 2320
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev, ptr %dev1, align 4
  %call2 = tail call noalias ptr @__alloc_percpu_gfp(i32 noundef 64, i32 noundef 32, i32 noundef 3264) #20
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %for.cond.preheader

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

for.cond.preheader:                               ; preds = %entry
  %call319 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #21
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %1 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call319, i32 %1)
  %cmp20 = icmp ult i32 %call319, %1
  br i1 %cmp20, label %for.body.lr.ph, label %for.cond.preheader.if.end_crit_edge

for.cond.preheader.if.end_crit_edge:              ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %2 = ptrtoint ptr %call2 to i32
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %call321 = phi i32 [ %call319, %for.body.lr.ph ], [ %call3, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call321
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx, align 4
  %add = add i32 %4, %2
  %5 = inttoptr i32 %add to ptr
  %syncp = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %5, i32 0, i32 4
  %dep_map.i = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %5, i32 0, i32 4, i32 0, i32 1
  tail call void @lockdep_init_map_type(ptr noundef %dep_map.i, ptr noundef nonnull @.str.8, ptr noundef nonnull @gtp_dev_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #15
  %6 = ptrtoint ptr %syncp to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %syncp, align 4
  %call3 = tail call i32 @cpumask_next(i32 noundef %call321, ptr noundef nonnull @__cpu_possible_mask) #21
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %7 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call3, %7
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

if.end:                                           ; preds = %for.body.if.end_crit_edge, %for.cond.preheader.if.end_crit_edge, %entry.if.end_crit_edge
  %. = phi i32 [ -12, %entry.if.end_crit_edge ], [ 0, %for.cond.preheader.if.end_crit_edge ], [ 0, %for.body.if.end_crit_edge ]
  %8 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 130
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call2, ptr %8, align 64
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gtp_dev_uninit(ptr nocapture noundef readonly %dev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %sk0.i = getelementptr i8, ptr %dev, i32 2312
  %0 = ptrtoint ptr %sk0.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk0.i, align 4
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %entry.gtp_encap_disable_sock.exit.i_crit_edge, label %if.end.i.i

entry.gtp_encap_disable_sock.exit.i_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %gtp_encap_disable_sock.exit.i

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @__gtp_encap_destroy(ptr noundef nonnull %1) #15
  br label %gtp_encap_disable_sock.exit.i

gtp_encap_disable_sock.exit.i:                    ; preds = %if.end.i.i, %entry.gtp_encap_disable_sock.exit.i_crit_edge
  %sk1u.i = getelementptr i8, ptr %dev, i32 2316
  %2 = ptrtoint ptr %sk1u.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sk1u.i, align 4
  %tobool.not.i2.i = icmp eq ptr %3, null
  br i1 %tobool.not.i2.i, label %gtp_encap_disable_sock.exit.i.gtp_encap_disable.exit_crit_edge, label %if.end.i3.i

gtp_encap_disable_sock.exit.i.gtp_encap_disable.exit_crit_edge: ; preds = %gtp_encap_disable_sock.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %gtp_encap_disable.exit

if.end.i3.i:                                      ; preds = %gtp_encap_disable_sock.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @__gtp_encap_destroy(ptr noundef nonnull %3) #15
  br label %gtp_encap_disable.exit

gtp_encap_disable.exit:                           ; preds = %if.end.i3.i, %gtp_encap_disable_sock.exit.i.gtp_encap_disable.exit_crit_edge
  %4 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 130
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 64
  tail call void @free_percpu(ptr noundef %6) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gtp_dev_xmit(ptr noundef %skb, ptr noundef %dev) #4 align 64 {
entry:
  %pktinfo = alloca %struct.gtp_pktinfo, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %0 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %protocol, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %pktinfo) #15
  %2 = call ptr @memset(ptr %pktinfo, i32 255, i32 80)
  %needed_headroom = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 21
  %3 = ptrtoint ptr %needed_headroom to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %needed_headroom, align 8
  %conv1 = zext i16 %4 to i32
  %cloned.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %5 = ptrtoint ptr %cloned.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load.i.i = load i8, ptr %cloned.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool.not.i.i = icmp sgt i8 %bf.load.i.i, -1
  br i1 %tobool.not.i.i, label %entry.skb_header_cloned.exit.i_crit_edge, label %if.end.i.i

entry.skb_header_cloned.exit.i_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %skb_header_cloned.exit.i

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %6 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %end.i.i.i, align 4
  %dataref1.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %7, i32 0, i32 10
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dataref1.i.i, i32 noundef 4) #15
  %8 = ptrtoint ptr %dataref1.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %dataref1.i.i, align 4
  %and.i.i = and i32 %9, 65535
  %shr.i.i = ashr i32 %9, 16
  %sub.i.i = sub nsw i32 %and.i.i, %shr.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i.i)
  %cmp.i.not.i = icmp eq i32 %sub.i.i, 1
  br label %skb_header_cloned.exit.i

skb_header_cloned.exit.i:                         ; preds = %if.end.i.i, %entry.skb_header_cloned.exit.i_crit_edge
  %retval.0.i.i = phi i1 [ %cmp.i.not.i, %if.end.i.i ], [ true, %entry.skb_header_cloned.exit.i_crit_edge ]
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %10 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data.i.i.i, align 4
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %12 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %head.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %11 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %13 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i.i.i, i32 %conv1)
  %tobool.not.i3.i = icmp uge i32 %sub.ptr.sub.i.i.i, %conv1
  %or.cond.i.i = and i1 %retval.0.i.i, %tobool.not.i3.i
  br i1 %or.cond.i.i, label %skb_header_cloned.exit.i.if.end_crit_edge, label %skb_cow_head.exit

skb_header_cloned.exit.i.if.end_crit_edge:        ; preds = %skb_header_cloned.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

skb_cow_head.exit:                                ; preds = %skb_header_cloned.exit.i
  %14 = tail call i32 @llvm.usub.sat.i32(i32 %conv1, i32 %sub.ptr.sub.i.i.i) #15
  %add.i.i = add nuw nsw i32 %14, 127
  %and.i4.i = and i32 %add.i.i, 130944
  %call4.i.i = tail call i32 @pskb_expand_head(ptr noundef %skb, i32 noundef %and.i4.i, i32 noundef 0, i32 noundef 2592) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool.not = icmp eq i32 %call4.i.i, 0
  br i1 %tobool.not, label %skb_cow_head.exit.if.end_crit_edge, label %skb_cow_head.exit.tx_err_crit_edge

skb_cow_head.exit.tx_err_crit_edge:               ; preds = %skb_cow_head.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %tx_err

skb_cow_head.exit.if.end_crit_edge:               ; preds = %skb_cow_head.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.end:                                           ; preds = %skb_cow_head.exit.if.end_crit_edge, %skb_header_cloned.exit.i.if.end_crit_edge
  %mac_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %15 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %mac_header.i, align 2
  %inner_mac_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 17
  %17 = ptrtoint ptr %inner_mac_header.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %inner_mac_header.i, align 2
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %18 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %network_header.i, align 4
  %inner_network_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 16
  %20 = ptrtoint ptr %inner_network_header.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %19, ptr %inner_network_header.i, align 4
  %transport_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %21 = ptrtoint ptr %transport_header.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %transport_header.i, align 2
  %inner_transport_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 15
  %23 = ptrtoint ptr %inner_transport_header.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %22, ptr %inner_transport_header.i, align 2
  %24 = tail call i32 @llvm.read_register.i32(metadata !184) #15
  %and.i.i.i.i.i = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %27, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !194
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #15
  %call.i = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 696, ptr noundef nonnull @.str.13) #15
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %1)
  %cond = icmp eq i16 %1, 2048
  br i1 %cond, label %sw.bb, label %tx_err.critedge

sw.bb:                                            ; preds = %rcu_read_lock.exit
  %call2 = call fastcc i32 @gtp_build_skb_ip4(ptr noundef %skb, ptr noundef %dev, ptr noundef nonnull %pktinfo)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %phi.cmp = icmp slt i32 %call2, 0
  %call.i46 = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i46, label %sw.bb.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i49

sw.bb.rcu_read_unlock.exit_crit_edge:             ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

land.lhs.true.i49:                                ; preds = %sw.bb
  %call1.i47 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i47)
  %tobool.not.i48 = icmp eq i32 %call1.i47, 0
  br i1 %tobool.not.i48, label %land.lhs.true.i49.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i51

land.lhs.true.i49.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i49
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

land.lhs.true2.i51:                               ; preds = %land.lhs.true.i49
  %.b4.i50 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i50, label %land.lhs.true2.i51.rcu_read_unlock.exit_crit_edge, label %if.then.i52

land.lhs.true2.i51.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i51
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

if.then.i52:                                      ; preds = %land.lhs.true2.i51
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 724, ptr noundef nonnull @.str.22) #15
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i52, %land.lhs.true2.i51.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i49.rcu_read_unlock.exit_crit_edge, %sw.bb.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !196
  %28 = tail call i32 @llvm.read_register.i32(metadata !184) #15
  %and.i.i.i.i.i53 = and i32 %28, -16384
  %29 = inttoptr i32 %and.i.i.i.i.i53 to ptr
  %preempt_count.i.i.i.i54 = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %preempt_count.i.i.i.i54 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %preempt_count.i.i.i.i54, align 4
  %sub.i.i.i = add i32 %31, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i54, align 4
  tail call void @rcu_read_unlock_strict() #15
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #15
  br i1 %phi.cmp, label %rcu_read_unlock.exit.tx_err_crit_edge, label %do.body7.critedge

rcu_read_unlock.exit.tx_err_crit_edge:            ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %tx_err

do.body7.critedge:                                ; preds = %rcu_read_unlock.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gtp_dev_xmit.__UNIQUE_ID_ddebug607, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gtp_dev_xmit, %if.then12)) #15
          to label %do.end17 [label %if.then12], !srcloc !195

if.then12:                                        ; preds = %do.body7.critedge
  call void @__sanitizer_cov_trace_pc() #17
  %dev13 = getelementptr inbounds %struct.gtp_pktinfo, ptr %pktinfo, i32 0, i32 5
  %32 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev13, align 8
  %iph = getelementptr inbounds %struct.gtp_pktinfo, ptr %pktinfo, i32 0, i32 1
  %34 = ptrtoint ptr %iph to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %iph, align 4
  %saddr = getelementptr inbounds %struct.iphdr, ptr %35, i32 0, i32 8
  %daddr = getelementptr inbounds %struct.iphdr, ptr %35, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @gtp_dev_xmit.__UNIQUE_ID_ddebug607, ptr noundef %33, ptr noundef nonnull @.str.11, ptr noundef %saddr, ptr noundef %daddr) #15
  br label %do.end17

do.end17:                                         ; preds = %if.then12, %do.body7.critedge
  %rt = getelementptr inbounds %struct.gtp_pktinfo, ptr %pktinfo, i32 0, i32 3
  %36 = ptrtoint ptr %rt to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %rt, align 8
  %38 = ptrtoint ptr %pktinfo to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pktinfo, align 8
  %saddr18 = getelementptr inbounds %struct.gtp_pktinfo, ptr %pktinfo, i32 0, i32 2, i32 1
  %40 = ptrtoint ptr %saddr18 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %saddr18, align 8
  %daddr20 = getelementptr inbounds %struct.gtp_pktinfo, ptr %pktinfo, i32 0, i32 2, i32 2
  %42 = ptrtoint ptr %daddr20 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %daddr20, align 4
  %iph21 = getelementptr inbounds %struct.gtp_pktinfo, ptr %pktinfo, i32 0, i32 1
  %44 = ptrtoint ptr %iph21 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %iph21, align 4
  %tos = getelementptr inbounds %struct.iphdr, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %tos to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %tos, align 1
  %_metrics.i.i = getelementptr inbounds %struct.dst_entry, ptr %37, i32 0, i32 2
  %48 = ptrtoint ptr %_metrics.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %_metrics.i.i, align 4
  %and.i.i55 = and i32 %49, -4
  %50 = inttoptr i32 %and.i.i55 to ptr
  %arrayidx.i.i = getelementptr i32, ptr %50, i32 9
  %51 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %cmp.i = icmp eq i32 %52, 0
  br i1 %cmp.i, label %if.then.i56, label %do.end17.ip4_dst_hoplimit.exit_crit_edge

do.end17.ip4_dst_hoplimit.exit_crit_edge:         ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #17
  br label %ip4_dst_hoplimit.exit

if.then.i56:                                      ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #17
  %53 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %37, align 4
  %nd_net.i.i = getelementptr inbounds %struct.net_device, ptr %54, i32 0, i32 127
  %55 = ptrtoint ptr %nd_net.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %nd_net.i.i, align 4
  %sysctl_ip_default_ttl.i = getelementptr inbounds %struct.net, ptr %56, i32 0, i32 35, i32 37
  %57 = ptrtoint ptr %sysctl_ip_default_ttl.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %sysctl_ip_default_ttl.i, align 2
  %conv.i = zext i8 %58 to i32
  br label %ip4_dst_hoplimit.exit

ip4_dst_hoplimit.exit:                            ; preds = %if.then.i56, %do.end17.ip4_dst_hoplimit.exit_crit_edge
  %hoplimit.0.i = phi i32 [ %conv.i, %if.then.i56 ], [ %52, %do.end17.ip4_dst_hoplimit.exit_crit_edge ]
  %conv24 = trunc i32 %hoplimit.0.i to i8
  %gtph_port = getelementptr inbounds %struct.gtp_pktinfo, ptr %pktinfo, i32 0, i32 6
  %59 = ptrtoint ptr %gtph_port to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %gtph_port, align 4
  %pctx = getelementptr inbounds %struct.gtp_pktinfo, ptr %pktinfo, i32 0, i32 4
  %61 = ptrtoint ptr %pctx to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %pctx, align 4
  %sk26 = getelementptr inbounds %struct.pdp_ctx, ptr %62, i32 0, i32 7
  %63 = ptrtoint ptr %sk26 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %sk26, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %64, i32 0, i32 9
  %65 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %skc_net.i, align 4
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 127
  %67 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %nd_net.i, align 4
  %cmp.i57 = icmp ne ptr %66, %68
  tail call void @udp_tunnel_xmit_skb(ptr noundef %37, ptr noundef %39, ptr noundef %skb, i32 noundef %41, i32 noundef %43, i8 noundef zeroext %47, i8 noundef zeroext %conv24, i16 noundef zeroext 0, i16 noundef zeroext %60, i16 noundef zeroext %60, i1 noundef zeroext %cmp.i57, i1 noundef zeroext false) #15
  br label %cleanup

tx_err.critedge:                                  ; preds = %rcu_read_lock.exit
  %call.i59 = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i59, label %tx_err.critedge.rcu_read_unlock.exit69_crit_edge, label %land.lhs.true.i62

tx_err.critedge.rcu_read_unlock.exit69_crit_edge: ; preds = %tx_err.critedge
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit69

land.lhs.true.i62:                                ; preds = %tx_err.critedge
  %call1.i60 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i60)
  %tobool.not.i61 = icmp eq i32 %call1.i60, 0
  br i1 %tobool.not.i61, label %land.lhs.true.i62.rcu_read_unlock.exit69_crit_edge, label %land.lhs.true2.i64

land.lhs.true.i62.rcu_read_unlock.exit69_crit_edge: ; preds = %land.lhs.true.i62
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit69

land.lhs.true2.i64:                               ; preds = %land.lhs.true.i62
  %.b4.i63 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i63, label %land.lhs.true2.i64.rcu_read_unlock.exit69_crit_edge, label %if.then.i65

land.lhs.true2.i64.rcu_read_unlock.exit69_crit_edge: ; preds = %land.lhs.true2.i64
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit69

if.then.i65:                                      ; preds = %land.lhs.true2.i64
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 724, ptr noundef nonnull @.str.22) #15
  br label %rcu_read_unlock.exit69

rcu_read_unlock.exit69:                           ; preds = %if.then.i65, %land.lhs.true2.i64.rcu_read_unlock.exit69_crit_edge, %land.lhs.true.i62.rcu_read_unlock.exit69_crit_edge, %tx_err.critedge.rcu_read_unlock.exit69_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !196
  %69 = tail call i32 @llvm.read_register.i32(metadata !184) #15
  %and.i.i.i.i.i66 = and i32 %69, -16384
  %70 = inttoptr i32 %and.i.i.i.i.i66 to ptr
  %preempt_count.i.i.i.i67 = getelementptr inbounds %struct.thread_info, ptr %70, i32 0, i32 1
  %71 = ptrtoint ptr %preempt_count.i.i.i.i67 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load volatile i32, ptr %preempt_count.i.i.i.i67, align 4
  %sub.i.i.i68 = add i32 %72, -1
  store volatile i32 %sub.i.i.i68, ptr %preempt_count.i.i.i.i67, align 4
  tail call void @rcu_read_unlock_strict() #15
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #15
  br label %tx_err

tx_err:                                           ; preds = %rcu_read_unlock.exit69, %rcu_read_unlock.exit.tx_err_crit_edge, %skb_cow_head.exit.tx_err_crit_edge
  %tx_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 5
  %73 = ptrtoint ptr %tx_errors to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %tx_errors, align 4
  %inc = add i32 %74, 1
  store i32 %inc, ptr %tx_errors, align 4
  tail call void @consume_skb(ptr noundef %skb) #15
  br label %cleanup

cleanup:                                          ; preds = %tx_err, %ip4_dst_hoplimit.exit
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %pktinfo) #15
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_get_tstats64(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__alloc_percpu_gfp(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__gtp_encap_destroy(ptr noundef %sk) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @lock_sock_nested(ptr noundef %sk, i32 noundef 0) #15
  %sk_user_data = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 72
  %0 = ptrtoint ptr %sk_user_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk_user_data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end80_crit_edge, label %if.then

entry.if.end80_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end80

if.then:                                          ; preds = %entry
  %sk0 = getelementptr inbounds %struct.gtp_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %sk0 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sk0, align 4
  %cmp = icmp eq ptr %3, %sk
  %sk1u = getelementptr inbounds %struct.gtp_dev, ptr %1, i32 0, i32 2
  %sk1u.sink = select i1 %cmp, ptr %sk0, ptr %sk1u
  %4 = ptrtoint ptr %sk1u.sink to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %sk1u.sink, align 4
  %encap_type = getelementptr inbounds %struct.udp_sock, ptr %sk, i32 0, i32 3
  %5 = ptrtoint ptr %encap_type to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %encap_type, align 128
  %6 = ptrtoint ptr %sk_user_data to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr null, ptr %sk_user_data, align 4
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 19
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !200
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #15
  %7 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #15, !srcloc !201
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.if.end80_crit_edge, label %if.then10.i.i.i.i, !prof !199

if.end5.i.i.i.i.if.end80_crit_edge:               ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end80

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 3) #15
  br label %if.end80

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !202
  tail call void @sk_free(ptr noundef %sk) #15
  br label %if.end80

if.end80:                                         ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.if.end80_crit_edge, %entry.if.end80_crit_edge
  tail call void @release_sock(ptr noundef %sk) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_sock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_sock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gtp_build_skb_ip4(ptr noundef %skb, ptr noundef %dev, ptr nocapture noundef %pktinfo) unnamed_addr #4 align 64 {
entry:
  %fl4 = alloca %struct.flowi4, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %fl4) #15
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %0 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %2 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %3 to i32
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %conv.i.i
  %role = getelementptr i8, ptr %dev, i32 2324
  %4 = ptrtoint ptr %role to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %role, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp = icmp eq i32 %5, 1
  %daddr = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 9
  %saddr = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 8
  %daddr.sink = select i1 %cmp, ptr %saddr, ptr %daddr
  %6 = ptrtoint ptr %daddr.sink to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %daddr.sink, align 4
  %call3 = tail call fastcc ptr @ipv4_pdp_find(ptr noundef %add.ptr.i, i32 noundef %7)
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %do.body5, label %do.body17

do.body5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gtp_build_skb_ip4.__UNIQUE_ID_ddebug602, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gtp_build_skb_ip4, %if.then10)) #15
          to label %cleanup [label %if.then10], !srcloc !195

if.then10:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #17
  %daddr11 = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @gtp_build_skb_ip4.__UNIQUE_ID_ddebug602, ptr noundef %dev, ptr noundef nonnull @.str.15, ptr noundef %daddr11) #15
  br label %cleanup

do.body17:                                        ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gtp_build_skb_ip4.__UNIQUE_ID_ddebug603, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gtp_build_skb_ip4, %if.then29)) #15
          to label %do.end34 [label %if.then29], !srcloc !195

if.then29:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @gtp_build_skb_ip4.__UNIQUE_ID_ddebug603, ptr noundef %dev, ptr noundef nonnull @.str.16, ptr noundef nonnull %call3) #15
  br label %do.end34

do.end34:                                         ; preds = %if.then29, %do.body17
  %sk = getelementptr inbounds %struct.pdp_ctx, ptr %call3, i32 0, i32 7
  %8 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sk, align 4
  %peer_addr_ip4 = getelementptr inbounds %struct.pdp_ctx, ptr %call3, i32 0, i32 6
  %10 = ptrtoint ptr %peer_addr_ip4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %peer_addr_ip4, align 8
  %12 = call ptr @memset(ptr %fl4, i32 0, i32 56)
  %skc_bound_dev_if.i = getelementptr inbounds %struct.sock_common, ptr %9, i32 0, i32 6
  %13 = ptrtoint ptr %skc_bound_dev_if.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %skc_bound_dev_if.i, align 4
  %15 = ptrtoint ptr %fl4 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %fl4, align 8
  %daddr1.i = getelementptr inbounds %struct.flowi4, ptr %fl4, i32 0, i32 2
  %16 = ptrtoint ptr %daddr1.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %11, ptr %daddr1.i, align 4
  %inet_saddr.i = getelementptr inbounds %struct.inet_sock, ptr %9, i32 0, i32 2
  %17 = ptrtoint ptr %inet_saddr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %inet_saddr.i, align 4
  %saddr.i = getelementptr inbounds %struct.flowi4, ptr %fl4, i32 0, i32 1
  %19 = ptrtoint ptr %saddr.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %saddr.i, align 8
  %tos.i = getelementptr inbounds %struct.inet_sock, ptr %9, i32 0, i32 8
  %20 = ptrtoint ptr %tos.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %tos.i, align 4
  %22 = and i8 %21, 30
  %23 = getelementptr inbounds %struct.sock_common, ptr %9, i32 0, i32 13
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %23, align 4
  %26 = lshr i32 %25, 13
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  %or.i = or i8 %28, %22
  %flowic_tos.i = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 3
  %29 = ptrtoint ptr %flowic_tos.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %or.i, ptr %flowic_tos.i, align 4
  %sk_protocol.i = getelementptr inbounds %struct.sock, ptr %9, i32 0, i32 46
  %30 = ptrtoint ptr %sk_protocol.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %sk_protocol.i, align 4
  %conv7.i = trunc i16 %31 to i8
  %flowic_proto.i = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 5
  %32 = ptrtoint ptr %flowic_proto.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv7.i, ptr %flowic_proto.i, align 2
  %skc_net.i.i = getelementptr inbounds %struct.sock_common, ptr %9, i32 0, i32 9
  %33 = ptrtoint ptr %skc_net.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %skc_net.i.i, align 4
  %call.i.i = call ptr @ip_route_output_flow(ptr noundef %34, ptr noundef nonnull %fl4, ptr noundef null) #15
  %cmp.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.body39, label %if.end59

do.body39:                                        ; preds = %do.end34
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gtp_build_skb_ip4.__UNIQUE_ID_ddebug604, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gtp_build_skb_ip4, %if.then51)) #15
          to label %do.end58 [label %if.then51], !srcloc !195

if.then51:                                        ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @gtp_build_skb_ip4.__UNIQUE_ID_ddebug604, ptr noundef %dev, ptr noundef nonnull @.str.17, ptr noundef %peer_addr_ip4) #15
  br label %do.end58

do.end58:                                         ; preds = %if.then51, %do.body39
  %tx_carrier_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 17
  %35 = ptrtoint ptr %tx_carrier_errors to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %tx_carrier_errors, align 4
  %inc = add i32 %36, 1
  store i32 %inc, ptr %tx_carrier_errors, align 4
  br label %cleanup

if.end59:                                         ; preds = %do.end34
  %37 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %call.i.i, align 4
  %cmp61 = icmp eq ptr %38, %dev
  br i1 %cmp61, label %do.body64, label %if.end86

do.body64:                                        ; preds = %if.end59
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gtp_build_skb_ip4.__UNIQUE_ID_ddebug605, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gtp_build_skb_ip4, %if.then76)) #15
          to label %do.end83 [label %if.then76], !srcloc !195

if.then76:                                        ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @gtp_build_skb_ip4.__UNIQUE_ID_ddebug605, ptr noundef %dev, ptr noundef nonnull @.str.18, ptr noundef %peer_addr_ip4) #15
  br label %do.end83

do.end83:                                         ; preds = %if.then76, %do.body64
  %collisions = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 9
  %39 = ptrtoint ptr %collisions to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %collisions, align 4
  %inc85 = add i32 %40, 1
  store i32 %inc85, ptr %collisions, align 4
  br label %err_rt

if.end86:                                         ; preds = %if.end59
  %frag_off = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 4
  %41 = ptrtoint ptr %frag_off to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %frag_off, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %42)
  %tobool87.not = icmp eq i16 %42, 0
  %ops.i189 = getelementptr inbounds %struct.dst_entry, ptr %call.i.i, i32 0, i32 1
  %43 = ptrtoint ptr %ops.i189 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ops.i189, align 4
  %mtu.i190 = getelementptr inbounds %struct.dst_ops, ptr %44, i32 0, i32 5
  %45 = ptrtoint ptr %mtu.i190 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %mtu.i190, align 4
  %call.i191 = call i32 %46(ptr noundef %call.i.i) #15
  br i1 %tobool87.not, label %if.end86.if.end100_crit_edge, label %if.then88

if.end86.if.end100_crit_edge:                     ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end100

if.then88:                                        ; preds = %if.end86
  %hard_header_len = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 19
  %47 = ptrtoint ptr %hard_header_len to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %hard_header_len, align 2
  %conv = zext i16 %48 to i32
  %sub = sub i32 %call.i191, %conv
  %sub92 = add i32 %sub, -28
  %gtp_version = getelementptr inbounds %struct.pdp_ctx, ptr %call3, i32 0, i32 3
  %49 = ptrtoint ptr %gtp_version to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %gtp_version, align 8
  %51 = zext i8 %50 to i64
  call void @__sanitizer_cov_trace_switch(i64 %51, ptr @__sancov_gen_cov_switch_values.67)
  switch i8 %50, label %if.then88.if.end100_crit_edge [
    i8 0, label %sw.bb
    i8 1, label %sw.bb95
  ]

if.then88.if.end100_crit_edge:                    ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end100

sw.bb:                                            ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #17
  %sub94 = add i32 %sub, -48
  br label %if.end100

sw.bb95:                                          ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #17
  %sub96 = add i32 %sub, -36
  br label %if.end100

if.end100:                                        ; preds = %sw.bb95, %sw.bb, %if.then88.if.end100_crit_edge, %if.end86.if.end100_crit_edge
  %mtu.0 = phi i32 [ %sub92, %if.then88.if.end100_crit_edge ], [ %sub96, %sw.bb95 ], [ %sub94, %sw.bb ], [ %call.i191, %if.end86.if.end100_crit_edge ]
  %52 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %52, align 8
  %and.i.i = and i32 %54, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end100.skb_dst.exit.i_crit_edge, label %land.lhs.true.i.i

if.end100.skb_dst.exit.i_crit_edge:               ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #17
  br label %skb_dst.exit.i

land.lhs.true.i.i:                                ; preds = %if.end100
  %call.i.i192 = call i32 @rcu_read_lock_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i192)
  %tobool1.not.i.i = icmp eq i32 %call.i.i192, 0
  br i1 %tobool1.not.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i.skb_dst.exit.i_crit_edge

land.lhs.true.i.i.skb_dst.exit.i_crit_edge:       ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %skb_dst.exit.i

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  %call2.i.i = call i32 @rcu_read_lock_bh_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %do.end.i.i, label %land.rhs.i.i.skb_dst.exit.i_crit_edge, !prof !198

land.rhs.i.i.skb_dst.exit.i_crit_edge:            ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %skb_dst.exit.i

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 1013, i32 noundef 9, ptr noundef null) #15
  br label %skb_dst.exit.i

skb_dst.exit.i:                                   ; preds = %do.end.i.i, %land.rhs.i.i.skb_dst.exit.i_crit_edge, %land.lhs.true.i.i.skb_dst.exit.i_crit_edge, %if.end100.skb_dst.exit.i_crit_edge
  %55 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %52, align 8
  %and25.i.i = and i32 %56, -2
  %57 = inttoptr i32 %and25.i.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i.i)
  %tobool.not.i = icmp eq i32 %and25.i.i, 0
  br i1 %tobool.not.i, label %skb_dst.exit.i.skb_dst_update_pmtu_no_confirm.exit_crit_edge, label %land.lhs.true.i

skb_dst.exit.i.skb_dst_update_pmtu_no_confirm.exit_crit_edge: ; preds = %skb_dst.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %skb_dst_update_pmtu_no_confirm.exit

land.lhs.true.i:                                  ; preds = %skb_dst.exit.i
  %ops.i193 = getelementptr inbounds %struct.dst_entry, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %ops.i193 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ops.i193, align 4
  %update_pmtu.i = getelementptr inbounds %struct.dst_ops, ptr %59, i32 0, i32 11
  %60 = ptrtoint ptr %update_pmtu.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %update_pmtu.i, align 4
  %tobool1.not.i = icmp eq ptr %61, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.skb_dst_update_pmtu_no_confirm.exit_crit_edge, label %if.then.i

land.lhs.true.i.skb_dst_update_pmtu_no_confirm.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %skb_dst_update_pmtu_no_confirm.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  call void %61(ptr noundef nonnull %57, ptr noundef null, ptr noundef %skb, i32 noundef %mtu.0, i1 noundef zeroext false) #15
  br label %skb_dst_update_pmtu_no_confirm.exit

skb_dst_update_pmtu_no_confirm.exit:              ; preds = %if.then.i, %land.lhs.true.i.skb_dst_update_pmtu_no_confirm.exit_crit_edge, %skb_dst.exit.i.skb_dst_update_pmtu_no_confirm.exit_crit_edge
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %62 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %end.i.i, align 4
  %gso_size.i = getelementptr inbounds %struct.skb_shared_info, ptr %63, i32 0, i32 4
  %64 = ptrtoint ptr %gso_size.i to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %gso_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %65)
  %tobool.i.not = icmp eq i16 %65, 0
  br i1 %tobool.i.not, label %land.lhs.true, label %skb_dst_update_pmtu_no_confirm.exit.if.end129_crit_edge

skb_dst_update_pmtu_no_confirm.exit.if.end129_crit_edge: ; preds = %skb_dst_update_pmtu_no_confirm.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end129

land.lhs.true:                                    ; preds = %skb_dst_update_pmtu_no_confirm.exit
  %66 = ptrtoint ptr %frag_off to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %frag_off, align 2
  %68 = and i16 %67, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %68)
  %tobool104.not = icmp eq i16 %68, 0
  br i1 %tobool104.not, label %land.lhs.true.if.end129_crit_edge, label %land.lhs.true105

land.lhs.true.if.end129_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end129

land.lhs.true105:                                 ; preds = %land.lhs.true
  %tot_len = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 2
  %69 = ptrtoint ptr %tot_len to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %tot_len, align 2
  %conv106 = zext i16 %70 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %mtu.0, i32 %conv106)
  %cmp107 = icmp slt i32 %mtu.0, %conv106
  br i1 %cmp107, label %do.body111, label %land.lhs.true105.if.end129_crit_edge

land.lhs.true105.if.end129_crit_edge:             ; preds = %land.lhs.true105
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end129

do.body111:                                       ; preds = %land.lhs.true105
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gtp_build_skb_ip4.__UNIQUE_ID_ddebug606, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gtp_build_skb_ip4, %if.then123)) #15
          to label %do.end128 [label %if.then123], !srcloc !195

if.then123:                                       ; preds = %do.body111
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @gtp_build_skb_ip4.__UNIQUE_ID_ddebug606, ptr noundef %dev, ptr noundef nonnull @.str.19) #15
  br label %do.end128

do.end128:                                        ; preds = %if.then123, %do.body111
  call void @icmp_ndo_send(ptr noundef %skb, i32 noundef 3, i32 noundef 4, i32 noundef %mtu.0) #15
  br label %err_rt

if.end129:                                        ; preds = %land.lhs.true105.if.end129_crit_edge, %land.lhs.true.if.end129_crit_edge, %skb_dst_update_pmtu_no_confirm.exit.if.end129_crit_edge
  %71 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %sk, align 4
  %73 = ptrtoint ptr %pktinfo to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %72, ptr %pktinfo, align 8
  %iph2.i = getelementptr inbounds %struct.gtp_pktinfo, ptr %pktinfo, i32 0, i32 1
  %74 = ptrtoint ptr %iph2.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %add.ptr.i.i, ptr %iph2.i, align 4
  %pctx3.i = getelementptr inbounds %struct.gtp_pktinfo, ptr %pktinfo, i32 0, i32 4
  %75 = ptrtoint ptr %pctx3.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %call3, ptr %pctx3.i, align 4
  %rt4.i = getelementptr inbounds %struct.gtp_pktinfo, ptr %pktinfo, i32 0, i32 3
  %76 = ptrtoint ptr %rt4.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %call.i.i, ptr %rt4.i, align 8
  %fl45.i = getelementptr inbounds %struct.gtp_pktinfo, ptr %pktinfo, i32 0, i32 2
  %77 = call ptr @memcpy(ptr %fl45.i, ptr %fl4, i32 56)
  %dev6.i = getelementptr inbounds %struct.gtp_pktinfo, ptr %pktinfo, i32 0, i32 5
  %78 = ptrtoint ptr %dev6.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %dev, ptr %dev6.i, align 8
  %gtp_version.i = getelementptr inbounds %struct.pdp_ctx, ptr %call3, i32 0, i32 3
  %79 = ptrtoint ptr %gtp_version.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %gtp_version.i, align 8
  %81 = zext i8 %80 to i64
  call void @__sanitizer_cov_trace_switch(i64 %81, ptr @__sancov_gen_cov_switch_values.68)
  switch i8 %80, label %if.end129.cleanup_crit_edge [
    i8 0, label %sw.bb.i
    i8 1, label %sw.bb2.i
  ]

if.end129.cleanup_crit_edge:                      ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

sw.bb.i:                                          ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #17
  %gtph_port.i = getelementptr inbounds %struct.gtp_pktinfo, ptr %pktinfo, i32 0, i32 6
  %82 = ptrtoint ptr %gtph_port.i to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 3386, ptr %gtph_port.i, align 4
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %83 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %len.i.i, align 4
  %call.i.i194 = call ptr @skb_push(ptr noundef %skb, i32 noundef 20) #15
  %85 = ptrtoint ptr %call.i.i194 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 30, ptr %call.i.i194, align 1
  %type.i.i = getelementptr inbounds %struct.gtp0_header, ptr %call.i.i194, i32 0, i32 1
  %86 = ptrtoint ptr %type.i.i to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 -1, ptr %type.i.i, align 1
  %conv.i.i195 = trunc i32 %84 to i16
  %length.i.i = getelementptr inbounds %struct.gtp0_header, ptr %call.i.i194, i32 0, i32 2
  %87 = ptrtoint ptr %length.i.i to i32
  call void @__asan_storeN_noabort(i32 %87, i32 2)
  store i16 %conv.i.i195, ptr %length.i.i, align 1
  %tx_seq.i.i = getelementptr inbounds %struct.pdp_ctx, ptr %call3, i32 0, i32 9
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %tx_seq.i.i, i32 noundef 4) #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !205
  call void @llvm.prefetch.p0(ptr %tx_seq.i.i, i32 1, i32 3, i32 1) #15
  %88 = call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tx_seq.i.i, ptr %tx_seq.i.i, i32 1, ptr elementtype(i32) %tx_seq.i.i) #15, !srcloc !206
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %88, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !207
  %sub.i.i = add i32 %asmresult.i.i.i.i.i.i, -1
  %rem.i.i = srem i32 %sub.i.i, 65535
  %conv2.i.i = trunc i32 %rem.i.i to i16
  %seq.i.i = getelementptr inbounds %struct.gtp0_header, ptr %call.i.i194, i32 0, i32 3
  %89 = ptrtoint ptr %seq.i.i to i32
  call void @__asan_storeN_noabort(i32 %89, i32 2)
  store i16 %conv2.i.i, ptr %seq.i.i, align 1
  %u.i.i = getelementptr inbounds %struct.pdp_ctx, ptr %call3, i32 0, i32 2
  %flow.i.i = getelementptr inbounds %struct.pdp_ctx, ptr %call3, i32 0, i32 2, i32 0, i32 1
  %90 = ptrtoint ptr %flow.i.i to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %flow.i.i, align 8
  %flow3.i.i = getelementptr inbounds %struct.gtp0_header, ptr %call.i.i194, i32 0, i32 4
  %92 = ptrtoint ptr %flow3.i.i to i32
  call void @__asan_storeN_noabort(i32 %92, i32 2)
  store i16 %91, ptr %flow3.i.i, align 1
  %number.i.i = getelementptr inbounds %struct.gtp0_header, ptr %call.i.i194, i32 0, i32 5
  %93 = ptrtoint ptr %number.i.i to i32
  call void @__asan_storeN_noabort(i32 %93, i32 4)
  store i32 -1, ptr %number.i.i, align 1
  %94 = ptrtoint ptr %u.i.i to i32
  call void @__asan_load8_noabort(i32 %94)
  %95 = load i64, ptr %u.i.i, align 8
  %tid9.i.i = getelementptr inbounds %struct.gtp0_header, ptr %call.i.i194, i32 0, i32 7
  %96 = ptrtoint ptr %tid9.i.i to i32
  call void @__asan_storeN_noabort(i32 %96, i32 8)
  store i64 %95, ptr %tid9.i.i, align 1
  br label %cleanup

sw.bb2.i:                                         ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #17
  %gtph_port3.i = getelementptr inbounds %struct.gtp_pktinfo, ptr %pktinfo, i32 0, i32 6
  %97 = ptrtoint ptr %gtph_port3.i to i32
  call void @__asan_store2_noabort(i32 %97)
  store i16 2152, ptr %gtph_port3.i, align 4
  %len.i10.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %98 = ptrtoint ptr %len.i10.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %len.i10.i, align 4
  %call.i11.i = call ptr @skb_push(ptr noundef %skb, i32 noundef 8) #15
  %100 = ptrtoint ptr %call.i11.i to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 48, ptr %call.i11.i, align 1
  %type.i12.i = getelementptr inbounds %struct.gtp1_header, ptr %call.i11.i, i32 0, i32 1
  %101 = ptrtoint ptr %type.i12.i to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 -1, ptr %type.i12.i, align 1
  %conv.i13.i = trunc i32 %99 to i16
  %length.i14.i = getelementptr inbounds %struct.gtp1_header, ptr %call.i11.i, i32 0, i32 2
  %102 = ptrtoint ptr %length.i14.i to i32
  call void @__asan_storeN_noabort(i32 %102, i32 2)
  store i16 %conv.i13.i, ptr %length.i14.i, align 1
  %u.i15.i = getelementptr inbounds %struct.pdp_ctx, ptr %call3, i32 0, i32 2
  %o_tei.i.i = getelementptr inbounds %struct.anon.160, ptr %u.i15.i, i32 0, i32 1
  %103 = ptrtoint ptr %o_tei.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %o_tei.i.i, align 4
  %tid.i.i = getelementptr inbounds %struct.gtp1_header, ptr %call.i11.i, i32 0, i32 3
  %105 = ptrtoint ptr %tid.i.i to i32
  call void @__asan_storeN_noabort(i32 %105, i32 4)
  store i32 %104, ptr %tid.i.i, align 1
  br label %cleanup

err_rt:                                           ; preds = %do.end128, %do.end83
  call void @dst_release(ptr noundef %call.i.i) #15
  br label %cleanup

cleanup:                                          ; preds = %err_rt, %sw.bb2.i, %sw.bb.i, %if.end129.cleanup_crit_edge, %do.end58, %if.then10, %do.body5
  %retval.0 = phi i32 [ -2, %if.then10 ], [ -74, %err_rt ], [ -74, %do.end58 ], [ -2, %do.body5 ], [ 0, %if.end129.cleanup_crit_edge ], [ 0, %sw.bb.i ], [ 0, %sw.bb2.i ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %fl4) #15
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @udp_tunnel_xmit_skb(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_expand_head(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @ipv4_pdp_find(ptr nocapture noundef readonly %gtp, i32 noundef %ms_addr) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %addr_hash = getelementptr inbounds %struct.gtp_dev, ptr %gtp, i32 0, i32 7
  %0 = ptrtoint ptr %addr_hash to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %addr_hash, align 4
  %2 = load i32, ptr @gtp_h_initval, align 4
  %add1.i.i = add i32 %2, -559038733
  %add.i.i.i = add i32 %add1.i.i, %ms_addr
  %or.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %add1.i.i, i32 %add1.i.i, i32 14) #15
  %sub.i.i.i = sub i32 0, %or.i.i.i.i
  %xor3.i.i.i = xor i32 %add.i.i.i, %sub.i.i.i
  %or.i1.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub.i.i.i, i32 %sub.i.i.i, i32 11) #15
  %sub5.i.i.i = sub i32 %xor3.i.i.i, %or.i1.i.i.i
  %xor6.i.i.i = xor i32 %sub5.i.i.i, %add1.i.i
  %or.i2.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub5.i.i.i, i32 %sub5.i.i.i, i32 25) #15
  %sub8.i.i.i = sub i32 %xor6.i.i.i, %or.i2.i.i.i
  %xor9.i.i.i = xor i32 %sub8.i.i.i, %sub.i.i.i
  %or.i3.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub8.i.i.i, i32 %sub8.i.i.i, i32 16) #15
  %sub11.i.i.i = sub i32 %xor9.i.i.i, %or.i3.i.i.i
  %xor12.i.i.i = xor i32 %sub11.i.i.i, %sub5.i.i.i
  %or.i4.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub11.i.i.i, i32 %sub11.i.i.i, i32 4) #15
  %sub14.i.i.i = sub i32 %xor12.i.i.i, %or.i4.i.i.i
  %xor15.i.i.i = xor i32 %sub14.i.i.i, %sub8.i.i.i
  %or.i5.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub14.i.i.i, i32 %sub14.i.i.i, i32 14) #15
  %sub17.i.i.i = sub i32 %xor15.i.i.i, %or.i5.i.i.i
  %xor18.i.i.i = xor i32 %sub17.i.i.i, %sub11.i.i.i
  %or.i6.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub17.i.i.i, i32 %sub17.i.i.i, i32 24) #15
  %sub20.i.i.i = sub i32 %xor18.i.i.i, %or.i6.i.i.i
  %hash_size = getelementptr inbounds %struct.gtp_dev, ptr %gtp, i32 0, i32 5
  %3 = ptrtoint ptr %hash_size to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %hash_size, align 4
  %rem = urem i32 %sub20.i.i.i, %4
  %arrayidx = getelementptr %struct.hlist_head, ptr %1, i32 %rem
  %call1 = tail call i32 @rcu_read_lock_any_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true4

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b45 = load i1, ptr @ipv4_pdp_find.__warned, align 1
  br i1 %.b45, label %land.lhs.true4.do.end_crit_edge, label %if.then

land.lhs.true4.do.end_crit_edge:                  ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @ipv4_pdp_find.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 144, ptr noundef nonnull @.str.20) #15
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true4.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %arrayidx, align 4
  %tobool11.not = icmp eq ptr %6, null
  %add.ptr = getelementptr i8, ptr %6, i32 -8
  %tobool13.not4953 = icmp eq ptr %add.ptr, null
  %tobool13.not49 = or i1 %tobool11.not, %tobool13.not4953
  br i1 %tobool13.not49, label %do.end.cleanup_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end.for.body_crit_edge
  %pdp.050 = phi ptr [ %add.ptr31, %for.inc.for.body_crit_edge ], [ %add.ptr, %do.end.for.body_crit_edge ]
  %af = getelementptr inbounds %struct.pdp_ctx, ptr %pdp.050, i32 0, i32 4
  %7 = ptrtoint ptr %af to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %af, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %8)
  %cmp = icmp eq i16 %8, 2
  br i1 %cmp, label %land.lhs.true15, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

land.lhs.true15:                                  ; preds = %for.body
  %ms_addr_ip4 = getelementptr inbounds %struct.pdp_ctx, ptr %pdp.050, i32 0, i32 5
  %9 = ptrtoint ptr %ms_addr_ip4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ms_addr_ip4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %ms_addr)
  %cmp16 = icmp eq i32 %10, %ms_addr
  br i1 %cmp16, label %land.lhs.true15.cleanup_crit_edge, label %land.lhs.true15.for.inc_crit_edge

land.lhs.true15.for.inc_crit_edge:                ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

land.lhs.true15.cleanup_crit_edge:                ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.inc:                                          ; preds = %land.lhs.true15.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %hlist_addr = getelementptr inbounds %struct.pdp_ctx, ptr %pdp.050, i32 0, i32 1
  %11 = ptrtoint ptr %hlist_addr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %hlist_addr, align 8
  %tobool27.not = icmp eq ptr %12, null
  %add.ptr31 = getelementptr i8, ptr %12, i32 -8
  %tobool13.not54 = icmp eq ptr %add.ptr31, null
  %tobool13.not = or i1 %tobool27.not, %tobool13.not54
  br i1 %tobool13.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %land.lhs.true15.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %pdp.0.lcssa = phi ptr [ null, %do.end.cleanup_crit_edge ], [ null, %for.inc.cleanup_crit_edge ], [ %pdp.050, %land.lhs.true15.cleanup_crit_edge ]
  ret ptr %pdp.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @icmp_ndo_send(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ip_route_output_flow(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_bh_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_net(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @gtp0_pdp_find(ptr nocapture noundef readonly %gtp, i64 noundef %tid) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %tid_hash = getelementptr inbounds %struct.gtp_dev, ptr %gtp, i32 0, i32 6
  %0 = ptrtoint ptr %tid_hash to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tid_hash, align 4
  %tid.addr.sroa.0.0.extract.shift.i = lshr i64 %tid, 32
  %tid.addr.sroa.0.0.extract.trunc.i = trunc i64 %tid.addr.sroa.0.0.extract.shift.i to i32
  %tid.addr.sroa.2.0.extract.trunc.i = trunc i64 %tid to i32
  %2 = load i32, ptr @gtp_h_initval, align 4
  %add1.i.i = add i32 %2, -559038729
  %add.i.i.i = add i32 %add1.i.i, %tid.addr.sroa.0.0.extract.trunc.i
  %add1.i.i.i = add i32 %add1.i.i, %tid.addr.sroa.2.0.extract.trunc.i
  %xor.i.i.i = xor i32 %add1.i.i.i, %add1.i.i
  %or.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %add1.i.i.i, i32 %add1.i.i.i, i32 14) #15
  %sub.i.i.i = sub i32 %xor.i.i.i, %or.i.i.i.i
  %xor3.i.i.i = xor i32 %sub.i.i.i, %add.i.i.i
  %or.i1.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub.i.i.i, i32 %sub.i.i.i, i32 11) #15
  %sub5.i.i.i = sub i32 %xor3.i.i.i, %or.i1.i.i.i
  %xor6.i.i.i = xor i32 %sub5.i.i.i, %add1.i.i.i
  %or.i2.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub5.i.i.i, i32 %sub5.i.i.i, i32 25) #15
  %sub8.i.i.i = sub i32 %xor6.i.i.i, %or.i2.i.i.i
  %xor9.i.i.i = xor i32 %sub8.i.i.i, %sub.i.i.i
  %or.i3.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub8.i.i.i, i32 %sub8.i.i.i, i32 16) #15
  %sub11.i.i.i = sub i32 %xor9.i.i.i, %or.i3.i.i.i
  %xor12.i.i.i = xor i32 %sub11.i.i.i, %sub5.i.i.i
  %or.i4.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub11.i.i.i, i32 %sub11.i.i.i, i32 4) #15
  %sub14.i.i.i = sub i32 %xor12.i.i.i, %or.i4.i.i.i
  %xor15.i.i.i = xor i32 %sub14.i.i.i, %sub8.i.i.i
  %or.i5.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub14.i.i.i, i32 %sub14.i.i.i, i32 14) #15
  %sub17.i.i.i = sub i32 %xor15.i.i.i, %or.i5.i.i.i
  %xor18.i.i.i = xor i32 %sub17.i.i.i, %sub11.i.i.i
  %or.i6.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub17.i.i.i, i32 %sub17.i.i.i, i32 24) #15
  %sub20.i.i.i = sub i32 %xor18.i.i.i, %or.i6.i.i.i
  %hash_size = getelementptr inbounds %struct.gtp_dev, ptr %gtp, i32 0, i32 5
  %3 = ptrtoint ptr %hash_size to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %hash_size, align 4
  %rem = urem i32 %sub20.i.i.i, %4
  %arrayidx = getelementptr %struct.hlist_head, ptr %1, i32 %rem
  %call1 = tail call i32 @rcu_read_lock_any_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true4

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b46 = load i1, ptr @gtp0_pdp_find.__warned, align 1
  br i1 %.b46, label %land.lhs.true4.do.end_crit_edge, label %if.then

land.lhs.true4.do.end_crit_edge:                  ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @gtp0_pdp_find.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 112, ptr noundef nonnull @.str.20) #15
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true4.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %pdp.048 = load volatile ptr, ptr %arrayidx, align 4
  %tobool13.not49 = icmp eq ptr %pdp.048, null
  br i1 %tobool13.not49, label %do.end.cleanup_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end.for.body_crit_edge
  %pdp.050 = phi ptr [ %pdp.0, %for.inc.for.body_crit_edge ], [ %pdp.048, %do.end.for.body_crit_edge ]
  %gtp_version = getelementptr inbounds %struct.pdp_ctx, ptr %pdp.050, i32 0, i32 3
  %6 = ptrtoint ptr %gtp_version to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %gtp_version, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp = icmp eq i8 %7, 0
  br i1 %cmp, label %land.lhs.true15, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

land.lhs.true15:                                  ; preds = %for.body
  %u = getelementptr inbounds %struct.pdp_ctx, ptr %pdp.050, i32 0, i32 2
  %8 = ptrtoint ptr %u to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %u, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %9, i64 %tid)
  %cmp17 = icmp eq i64 %9, %tid
  br i1 %cmp17, label %land.lhs.true15.cleanup_crit_edge, label %land.lhs.true15.for.inc_crit_edge

land.lhs.true15.for.inc_crit_edge:                ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

land.lhs.true15.cleanup_crit_edge:                ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.inc:                                          ; preds = %land.lhs.true15.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %10 = ptrtoint ptr %pdp.050 to i32
  call void @__asan_load4_noabort(i32 %10)
  %pdp.0 = load volatile ptr, ptr %pdp.050, align 4
  %tobool13.not = icmp eq ptr %pdp.0, null
  br i1 %tobool13.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %land.lhs.true15.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %pdp.0.lcssa = phi ptr [ null, %do.end.cleanup_crit_edge ], [ null, %for.inc.cleanup_crit_edge ], [ %pdp.050, %land.lhs.true15.cleanup_crit_edge ]
  ret ptr %pdp.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @gtp1_pdp_find(ptr nocapture noundef readonly %gtp, i32 noundef %tid) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %tid_hash = getelementptr inbounds %struct.gtp_dev, ptr %gtp, i32 0, i32 6
  %0 = ptrtoint ptr %tid_hash to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tid_hash, align 4
  %2 = load i32, ptr @gtp_h_initval, align 4
  %add1.i.i = add i32 %2, -559038733
  %add.i.i.i = add i32 %add1.i.i, %tid
  %or.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %add1.i.i, i32 %add1.i.i, i32 14) #15
  %sub.i.i.i = sub i32 0, %or.i.i.i.i
  %xor3.i.i.i = xor i32 %add.i.i.i, %sub.i.i.i
  %or.i1.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub.i.i.i, i32 %sub.i.i.i, i32 11) #15
  %sub5.i.i.i = sub i32 %xor3.i.i.i, %or.i1.i.i.i
  %xor6.i.i.i = xor i32 %sub5.i.i.i, %add1.i.i
  %or.i2.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub5.i.i.i, i32 %sub5.i.i.i, i32 25) #15
  %sub8.i.i.i = sub i32 %xor6.i.i.i, %or.i2.i.i.i
  %xor9.i.i.i = xor i32 %sub8.i.i.i, %sub.i.i.i
  %or.i3.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub8.i.i.i, i32 %sub8.i.i.i, i32 16) #15
  %sub11.i.i.i = sub i32 %xor9.i.i.i, %or.i3.i.i.i
  %xor12.i.i.i = xor i32 %sub11.i.i.i, %sub5.i.i.i
  %or.i4.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub11.i.i.i, i32 %sub11.i.i.i, i32 4) #15
  %sub14.i.i.i = sub i32 %xor12.i.i.i, %or.i4.i.i.i
  %xor15.i.i.i = xor i32 %sub14.i.i.i, %sub8.i.i.i
  %or.i5.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub14.i.i.i, i32 %sub14.i.i.i, i32 14) #15
  %sub17.i.i.i = sub i32 %xor15.i.i.i, %or.i5.i.i.i
  %xor18.i.i.i = xor i32 %sub17.i.i.i, %sub11.i.i.i
  %or.i6.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub17.i.i.i, i32 %sub17.i.i.i, i32 24) #15
  %sub20.i.i.i = sub i32 %xor18.i.i.i, %or.i6.i.i.i
  %hash_size = getelementptr inbounds %struct.gtp_dev, ptr %gtp, i32 0, i32 5
  %3 = ptrtoint ptr %hash_size to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %hash_size, align 4
  %rem = urem i32 %sub20.i.i.i, %4
  %arrayidx = getelementptr %struct.hlist_head, ptr %1, i32 %rem
  %call1 = tail call i32 @rcu_read_lock_any_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true4

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b45 = load i1, ptr @gtp1_pdp_find.__warned, align 1
  br i1 %.b45, label %land.lhs.true4.do.end_crit_edge, label %if.then

land.lhs.true4.do.end_crit_edge:                  ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @gtp1_pdp_find.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 128, ptr noundef nonnull @.str.20) #15
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true4.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %pdp.047 = load volatile ptr, ptr %arrayidx, align 4
  %tobool13.not48 = icmp eq ptr %pdp.047, null
  br i1 %tobool13.not48, label %do.end.cleanup_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end.for.body_crit_edge
  %pdp.049 = phi ptr [ %pdp.0, %for.inc.for.body_crit_edge ], [ %pdp.047, %do.end.for.body_crit_edge ]
  %gtp_version = getelementptr inbounds %struct.pdp_ctx, ptr %pdp.049, i32 0, i32 3
  %6 = ptrtoint ptr %gtp_version to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %gtp_version, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %7)
  %cmp = icmp eq i8 %7, 1
  br i1 %cmp, label %land.lhs.true15, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

land.lhs.true15:                                  ; preds = %for.body
  %u = getelementptr inbounds %struct.pdp_ctx, ptr %pdp.049, i32 0, i32 2
  %8 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %u, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %tid)
  %cmp16 = icmp eq i32 %9, %tid
  br i1 %cmp16, label %land.lhs.true15.cleanup_crit_edge, label %land.lhs.true15.for.inc_crit_edge

land.lhs.true15.for.inc_crit_edge:                ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

land.lhs.true15.cleanup_crit_edge:                ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.inc:                                          ; preds = %land.lhs.true15.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %10 = ptrtoint ptr %pdp.049 to i32
  call void @__asan_load4_noabort(i32 %10)
  %pdp.0 = load volatile ptr, ptr %pdp.049, align 4
  %tobool13.not = icmp eq ptr %pdp.0, null
  br i1 %tobool13.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %land.lhs.true15.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %pdp.0.lcssa = phi ptr [ null, %do.end.cleanup_crit_edge ], [ null, %for.inc.cleanup_crit_edge ], [ %pdp.049, %land.lhs.true15.cleanup_crit_edge ]
  ret ptr %pdp.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_memcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gtp_genl_fill_info(ptr noundef %skb, i32 noundef %snd_portid, i32 noundef %snd_seq, i32 noundef %flags, i32 noundef %type, ptr nocapture noundef readonly %pctx) unnamed_addr #4 align 64 {
entry:
  %tmp.i67 = alloca i32, align 4
  %tmp.i65 = alloca i32, align 4
  %tmp.i63 = alloca i16, align 2
  %tmp.i61 = alloca i64, align 8
  %tmp.i59 = alloca i32, align 4
  %tmp.i57 = alloca i32, align 4
  %tmp.i55 = alloca i32, align 4
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i32 %type to i8
  %call = tail call ptr @genlmsg_put(ptr noundef %skb, i32 noundef %snd_portid, i32 noundef %snd_seq, ptr noundef nonnull @gtp_genl_family, i32 noundef %flags, i8 noundef zeroext %conv) #15
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %gtp_version = getelementptr inbounds %struct.pdp_ctx, ptr %pctx, i32 0, i32 3
  %0 = ptrtoint ptr %gtp_version to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %gtp_version, align 8
  %conv2 = zext i8 %1 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #15
  %2 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %conv2, ptr %tmp.i, align 4
  %call.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %tmp.i) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %lor.lhs.false, label %if.end.if.then.i_crit_edge

if.end.if.then.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

lor.lhs.false:                                    ; preds = %if.end
  %dev = getelementptr inbounds %struct.pdp_ctx, ptr %pctx, i32 0, i32 8
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 8
  %ifindex = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 17
  %5 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ifindex, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i55) #15
  %7 = ptrtoint ptr %tmp.i55 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %tmp.i55, align 4
  %call.i56 = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %tmp.i55) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i55) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i56)
  %tobool5.not = icmp eq i32 %call.i56, 0
  br i1 %tobool5.not, label %lor.lhs.false6, label %lor.lhs.false.if.then.i_crit_edge

lor.lhs.false.if.then.i_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %peer_addr_ip4 = getelementptr inbounds %struct.pdp_ctx, ptr %pctx, i32 0, i32 6
  %8 = ptrtoint ptr %peer_addr_ip4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %peer_addr_ip4, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i57) #15
  %10 = ptrtoint ptr %tmp.i57 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %tmp.i57, align 4
  %call.i58 = call i32 @nla_put(ptr noundef %skb, i32 noundef 4, i32 noundef 4, ptr noundef nonnull %tmp.i57) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i57) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i58)
  %tobool8.not = icmp eq i32 %call.i58, 0
  br i1 %tobool8.not, label %lor.lhs.false9, label %lor.lhs.false6.if.then.i_crit_edge

lor.lhs.false6.if.then.i_crit_edge:               ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

lor.lhs.false9:                                   ; preds = %lor.lhs.false6
  %ms_addr_ip4 = getelementptr inbounds %struct.pdp_ctx, ptr %pctx, i32 0, i32 5
  %11 = ptrtoint ptr %ms_addr_ip4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ms_addr_ip4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i59) #15
  %13 = ptrtoint ptr %tmp.i59 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %tmp.i59, align 4
  %call.i60 = call i32 @nla_put(ptr noundef %skb, i32 noundef 5, i32 noundef 4, ptr noundef nonnull %tmp.i59) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i59) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i60)
  %tobool12.not = icmp eq i32 %call.i60, 0
  br i1 %tobool12.not, label %if.end14, label %lor.lhs.false9.if.then.i_crit_edge

lor.lhs.false9.if.then.i_crit_edge:               ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

if.end14:                                         ; preds = %lor.lhs.false9
  %14 = ptrtoint ptr %gtp_version to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %gtp_version, align 8
  %16 = zext i8 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.69)
  switch i8 %15, label %if.end14.sw.epilog_crit_edge [
    i8 0, label %sw.bb
    i8 1, label %sw.bb25
  ]

if.end14.sw.epilog_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end14
  %u = getelementptr inbounds %struct.pdp_ctx, ptr %pctx, i32 0, i32 2
  %17 = ptrtoint ptr %u to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %u, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i61) #15
  %19 = ptrtoint ptr %tmp.i61 to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %18, ptr %tmp.i61, align 8
  %call.i62 = call i32 @nla_put_64bit(ptr noundef %skb, i32 noundef 3, i32 noundef 8, ptr noundef nonnull %tmp.i61, i32 noundef 10) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i61) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i62)
  %tobool18.not = icmp eq i32 %call.i62, 0
  br i1 %tobool18.not, label %lor.lhs.false19, label %sw.bb.if.then.i_crit_edge

sw.bb.if.then.i_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

lor.lhs.false19:                                  ; preds = %sw.bb
  %flow = getelementptr inbounds %struct.pdp_ctx, ptr %pctx, i32 0, i32 2, i32 0, i32 1
  %20 = ptrtoint ptr %flow to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %flow, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i63) #15
  %22 = ptrtoint ptr %tmp.i63 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %21, ptr %tmp.i63, align 2
  %call.i64 = call i32 @nla_put(ptr noundef %skb, i32 noundef 6, i32 noundef 2, ptr noundef nonnull %tmp.i63) #15
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i63) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i64)
  %tobool22.not = icmp eq i32 %call.i64, 0
  br i1 %tobool22.not, label %lor.lhs.false19.sw.epilog_crit_edge, label %lor.lhs.false19.if.then.i_crit_edge

lor.lhs.false19.if.then.i_crit_edge:              ; preds = %lor.lhs.false19
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

lor.lhs.false19.sw.epilog_crit_edge:              ; preds = %lor.lhs.false19
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

sw.bb25:                                          ; preds = %if.end14
  %u26 = getelementptr inbounds %struct.pdp_ctx, ptr %pctx, i32 0, i32 2
  %23 = ptrtoint ptr %u26 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %u26, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i65) #15
  %25 = ptrtoint ptr %tmp.i65 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %tmp.i65, align 4
  %call.i66 = call i32 @nla_put(ptr noundef %skb, i32 noundef 8, i32 noundef 4, ptr noundef nonnull %tmp.i65) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i65) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i66)
  %tobool28.not = icmp eq i32 %call.i66, 0
  br i1 %tobool28.not, label %lor.lhs.false29, label %sw.bb25.if.then.i_crit_edge

sw.bb25.if.then.i_crit_edge:                      ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

lor.lhs.false29:                                  ; preds = %sw.bb25
  %o_tei = getelementptr inbounds %struct.anon.160, ptr %u26, i32 0, i32 1
  %26 = ptrtoint ptr %o_tei to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %o_tei, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i67) #15
  %28 = ptrtoint ptr %tmp.i67 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %tmp.i67, align 4
  %call.i68 = call i32 @nla_put(ptr noundef %skb, i32 noundef 9, i32 noundef 4, ptr noundef nonnull %tmp.i67) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i67) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i68)
  %tobool32.not = icmp eq i32 %call.i68, 0
  br i1 %tobool32.not, label %lor.lhs.false29.sw.epilog_crit_edge, label %lor.lhs.false29.if.then.i_crit_edge

lor.lhs.false29.if.then.i_crit_edge:              ; preds = %lor.lhs.false29
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

lor.lhs.false29.sw.epilog_crit_edge:              ; preds = %lor.lhs.false29
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

sw.epilog:                                        ; preds = %lor.lhs.false29.sw.epilog_crit_edge, %lor.lhs.false19.sw.epilog_crit_edge, %if.end14.sw.epilog_crit_edge
  %add.ptr1.i = getelementptr i8, ptr %call, i32 -20
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %29 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %30 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %add.ptr1.i to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %31 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %sub.ptr.sub.i.i, ptr %add.ptr1.i, align 4
  br label %cleanup

if.then.i:                                        ; preds = %lor.lhs.false29.if.then.i_crit_edge, %sw.bb25.if.then.i_crit_edge, %lor.lhs.false19.if.then.i_crit_edge, %sw.bb.if.then.i_crit_edge, %lor.lhs.false9.if.then.i_crit_edge, %lor.lhs.false6.if.then.i_crit_edge, %lor.lhs.false.if.then.i_crit_edge, %if.end.if.then.i_crit_edge
  %add.ptr1.i69 = getelementptr i8, ptr %call, i32 -20
  %tobool.not.i.i.i = icmp eq ptr %add.ptr1.i69, null
  br i1 %tobool.not.i.i.i, label %if.then.i.cleanup_crit_edge, label %if.then.i.i.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.then.i
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %32 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %data.i.i.i, align 4
  %cmp.i.i.i = icmp ugt ptr %33, %add.ptr1.i69
  br i1 %cmp.i.i.i, label %do.end.i.i.i, label %if.then.i.i.i.if.end.i.i.i_crit_edge, !prof !198

if.then.i.i.i.if.end.i.i.i_crit_edge:             ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.i.i

do.end.i.i.i:                                     ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.28, i32 noundef 991, i32 noundef 9, ptr noundef null) #15
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %do.end.i.i.i, %if.then.i.i.i.if.end.i.i.i_crit_edge
  %34 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %data.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %add.ptr1.i69 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %35 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i.i) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i.i, %if.then.i.cleanup_crit_edge, %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -90, %entry.cleanup_crit_edge ], [ -90, %if.then.i.cleanup_crit_edge ], [ -90, %if.end.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @genlmsg_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put_64bit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netlink_broadcast(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @gtp_find_pdp(ptr noundef %net, ptr nocapture noundef readonly %nla) unnamed_addr #4 align 64 {
entry:
  %tmp.i.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr ptr, ptr %nla, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end5

if.then:                                          ; preds = %entry
  %call.i = tail call fastcc ptr @gtp_find_dev(ptr noundef %net, ptr noundef %nla) #15
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then.if.end5_crit_edge, label %if.end.i

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end5

if.end.i:                                         ; preds = %if.then
  %arrayidx.i = getelementptr ptr, ptr %nla, i32 5
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  %tobool2.not.i = icmp eq ptr %3, null
  br i1 %tobool2.not.i, label %if.else.i, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr.i.i.i = getelementptr i8, ptr %3, i32 4
  %4 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr.i.i.i, align 4
  %call6.i = tail call fastcc ptr @ipv4_pdp_find(ptr noundef nonnull %call.i, i32 noundef %5) #15
  br label %if.end

if.else.i:                                        ; preds = %if.end.i
  %arrayidx7.i = getelementptr ptr, ptr %nla, i32 2
  %6 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx7.i, align 4
  %tobool8.not.i = icmp eq ptr %7, null
  br i1 %tobool8.not.i, label %if.else.i.if.end5_crit_edge, label %if.then9.i

if.else.i.if.end5_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end5

if.then9.i:                                       ; preds = %if.else.i
  %add.ptr.i.i48.i = getelementptr i8, ptr %7, i32 4
  %8 = ptrtoint ptr %add.ptr.i.i48.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr.i.i48.i, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.70)
  switch i32 %9, label %if.then9.i.if.end5_crit_edge [
    i32 0, label %land.lhs.true.i
    i32 1, label %land.lhs.true20.i
  ]

if.then9.i.if.end5_crit_edge:                     ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end5

land.lhs.true.i:                                  ; preds = %if.then9.i
  %arrayidx12.i = getelementptr ptr, ptr %nla, i32 3
  %11 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx12.i, align 4
  %tobool13.not.i = icmp eq ptr %12, null
  br i1 %tobool13.not.i, label %land.lhs.true.i.if.end5_crit_edge, label %if.then14.i

land.lhs.true.i.if.end5_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end5

if.then14.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i.i) #15
  %13 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 -1, ptr %tmp.i.i, align 8, !annotation !203
  %call.i.i = call i32 @nla_memcpy(ptr noundef nonnull %tmp.i.i, ptr noundef nonnull %12, i32 noundef 8) #15
  %14 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %tmp.i.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i.i) #15
  %call17.i = call fastcc ptr @gtp0_pdp_find(ptr noundef nonnull %call.i, i64 noundef %15) #15
  br label %if.end

land.lhs.true20.i:                                ; preds = %if.then9.i
  %arrayidx21.i = getelementptr ptr, ptr %nla, i32 8
  %16 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx21.i, align 4
  %tobool22.not.i = icmp eq ptr %17, null
  br i1 %tobool22.not.i, label %land.lhs.true20.i.if.end5_crit_edge, label %if.then23.i

land.lhs.true20.i.if.end5_crit_edge:              ; preds = %land.lhs.true20.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end5

if.then23.i:                                      ; preds = %land.lhs.true20.i
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr.i.i49.i = getelementptr i8, ptr %17, i32 4
  %18 = ptrtoint ptr %add.ptr.i.i49.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %add.ptr.i.i49.i, align 4
  %call26.i = tail call fastcc ptr @gtp1_pdp_find(ptr noundef nonnull %call.i, i32 noundef %19) #15
  br label %if.end

if.end:                                           ; preds = %if.then23.i, %if.then14.i, %if.then3.i
  %pctx.0 = phi ptr [ %call6.i, %if.then3.i ], [ %call26.i, %if.then23.i ], [ %call17.i, %if.then14.i ]
  %tobool2.not = icmp eq ptr %pctx.0, null
  %spec.select = select i1 %tobool2.not, ptr inttoptr (i32 -2 to ptr), ptr %pctx.0
  br label %if.end5

if.end5:                                          ; preds = %if.end, %land.lhs.true20.i.if.end5_crit_edge, %land.lhs.true.i.if.end5_crit_edge, %if.then9.i.if.end5_crit_edge, %if.else.i.if.end5_crit_edge, %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  %pctx.1 = phi ptr [ inttoptr (i32 -22 to ptr), %entry.if.end5_crit_edge ], [ inttoptr (i32 -22 to ptr), %land.lhs.true.i.if.end5_crit_edge ], [ inttoptr (i32 -22 to ptr), %land.lhs.true20.i.if.end5_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.then9.i.if.end5_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.else.i.if.end5_crit_edge ], [ inttoptr (i32 -19 to ptr), %if.then.if.end5_crit_edge ], [ %spec.select, %if.end ]
  ret ptr %pctx.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pdp_context_free(ptr noundef %head) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %sk = getelementptr i8, ptr %head, i32 -12
  %0 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk, align 4
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 19
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !200
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #15
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #15, !srcloc !201
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.sock_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !199

if.end5.i.i.i.i.sock_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sock_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 3) #15
  br label %sock_put.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !202
  tail call void @sk_free(ptr noundef %1) #15
  br label %sock_put.exit

sock_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.sock_put.exit_crit_edge
  %add.ptr = getelementptr i8, ptr %head, i32 -56
  tail call void @kfree(ptr noundef %add.ptr) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netlink_unicast(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @net_generic(ptr noundef %net, i32 noundef %id) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  %0 = tail call i32 @llvm.read_register.i32(metadata !184) #15
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !194
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #15
  %call.i = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 696, ptr noundef nonnull @.str.13) #15
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %gen = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 43
  %4 = ptrtoint ptr %gen to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %gen, align 128
  %call = tail call i32 @rcu_read_lock_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end7_crit_edge

rcu_read_lock.exit.do.end7_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end7

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b9 = load i1, ptr @net_generic.__warned, align 1
  br i1 %.b9, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @net_generic.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.34, i32 noundef 45, ptr noundef nonnull @.str.35) #15
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %rcu_read_lock.exit.do.end7_crit_edge
  %arrayidx = getelementptr [0 x ptr], ptr %5, i32 0, i32 %id
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %call.i10 = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i10, label %do.end7.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i13

do.end7.rcu_read_unlock.exit_crit_edge:           ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

land.lhs.true.i13:                                ; preds = %do.end7
  %call1.i11 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i11)
  %tobool.not.i12 = icmp eq i32 %call1.i11, 0
  br i1 %tobool.not.i12, label %land.lhs.true.i13.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i15

land.lhs.true.i13.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i13
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

land.lhs.true2.i15:                               ; preds = %land.lhs.true.i13
  %.b4.i14 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i14, label %land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge, label %if.then.i16

land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i15
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

if.then.i16:                                      ; preds = %land.lhs.true2.i15
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 724, ptr noundef nonnull @.str.22) #15
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i16, %land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i13.rcu_read_unlock.exit_crit_edge, %do.end7.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !196
  %8 = tail call i32 @llvm.read_register.i32(metadata !184) #15
  %and.i.i.i.i.i17 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i17 to ptr
  %preempt_count.i.i.i.i18 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i18 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i18, align 4
  %sub.i.i.i = add i32 %11, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i18, align 4
  tail call void @rcu_read_unlock_strict() #15
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #15
  ret ptr %7
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @gtp_link_setup(ptr nocapture noundef %dev) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 16
  %0 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @gtp_netdev_ops, ptr %netdev_ops, align 8
  %needs_free_netdev = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 124
  %1 = ptrtoint ptr %needs_free_netdev to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 1, ptr %needs_free_netdev, align 8
  %type = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 133, i32 4
  %2 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @gtp_type, ptr %type, align 4
  %hard_header_len = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 19
  %3 = ptrtoint ptr %hard_header_len to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 0, ptr %hard_header_len, align 2
  %addr_len = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 56
  %4 = ptrtoint ptr %addr_len to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %addr_len, align 1
  %mtu = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 20
  %5 = ptrtoint ptr %mtu to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1452, ptr %mtu, align 4
  %type2 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 32
  %6 = ptrtoint ptr %type2 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 -2, ptr %type2, align 16
  %flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 4240, ptr %flags, align 8
  %priv_flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 15
  %8 = ptrtoint ptr %priv_flags to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %priv_flags, align 16
  %features = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 23
  %10 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %features, align 16
  %or3 = or i64 %11, 4096
  store i64 %or3, ptr %features, align 16
  %or = and i64 %9, -655393
  %and.i = or i64 %or, 524288
  store i64 %and.i, ptr %priv_flags, align 16
  %needed_headroom = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 21
  %12 = ptrtoint ptr %needed_headroom to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 176, ptr %needed_headroom, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @gtp_validate(ptr nocapture noundef readnone %tb, ptr noundef readnone %data, ptr nocapture noundef readnone %extack) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %data, null
  %. = select i1 %tobool.not, i32 -22, i32 0
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gtp_newlink(ptr nocapture noundef readnone %src_net, ptr noundef %dev, ptr nocapture noundef readnone %tb, ptr nocapture noundef readonly %data, ptr nocapture noundef readnone %extack) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr ptr, ptr %data, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %arrayidx1 = getelementptr ptr, ptr %data, i32 2
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx1, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %arrayidx3 = getelementptr ptr, ptr %data, i32 3
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx3, align 4
  %tobool4.not = icmp eq ptr %5, null
  br i1 %tobool4.not, label %if.end.if.end11_crit_edge, label %if.else

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end11

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 4
  %6 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool8.not = icmp eq i32 %7, 0
  %spec.store.select = select i1 %tobool8.not, i32 1024, i32 %7
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.end.if.end11_crit_edge
  %hashsize.0 = phi i32 [ %spec.store.select, %if.else ], [ 1024, %if.end.if.end11_crit_edge ]
  %8 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %hashsize.0, i32 4) #15
  %9 = extractvalue { i32, i1 } %8, 1
  %10 = extractvalue { i32, i1 } %8, 0
  br i1 %9, label %kmalloc_array.exit.thread.i, label %kmalloc_array.exit.thread77.i, !prof !198

kmalloc_array.exit.thread.i:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #17
  %addr_hash60.i = getelementptr i8, ptr %dev, i32 2336
  %11 = ptrtoint ptr %addr_hash60.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %addr_hash60.i, align 4
  br label %cleanup

kmalloc_array.exit.thread77.i:                    ; preds = %if.end11
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %10, i32 noundef 11456) #20
  %addr_hash79.i = getelementptr i8, ptr %dev, i32 2336
  %12 = ptrtoint ptr %addr_hash79.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call8.i.i, ptr %addr_hash79.i, align 4
  %cmp80.i = icmp eq ptr %call8.i.i, null
  br i1 %cmp80.i, label %kmalloc_array.exit.thread77.i.cleanup_crit_edge, label %if.end7.i56.i

kmalloc_array.exit.thread77.i.cleanup_crit_edge:  ; preds = %kmalloc_array.exit.thread77.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end7.i56.i:                                    ; preds = %kmalloc_array.exit.thread77.i
  %call8.i55.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %10, i32 noundef 11456) #20
  %tid_hash.i = getelementptr i8, ptr %dev, i32 2332
  %13 = ptrtoint ptr %tid_hash.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call8.i55.i, ptr %tid_hash.i, align 4
  %cmp4.i = icmp eq ptr %call8.i55.i, null
  br i1 %cmp4.i, label %err1.i, label %if.end6.i

if.end6.i:                                        ; preds = %if.end7.i56.i
  %hash_size.i = getelementptr i8, ptr %dev, i32 2328
  %14 = ptrtoint ptr %hash_size.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %hashsize.0, ptr %hash_size.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end6.i
  %i.072.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end6.i ]
  %15 = ptrtoint ptr %addr_hash79.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %addr_hash79.i, align 4
  %arrayidx.i = getelementptr %struct.hlist_head, ptr %16, i32 %i.072.i
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %arrayidx.i, align 4
  %18 = ptrtoint ptr %tid_hash.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tid_hash.i, align 4
  %arrayidx10.i = getelementptr %struct.hlist_head, ptr %19, i32 %i.072.i
  %20 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %arrayidx10.i, align 4
  %inc.i = add nuw nsw i32 %i.072.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %hashsize.0
  br i1 %exitcond.not.i, label %if.end14, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

err1.i:                                           ; preds = %if.end7.i56.i
  call void @__sanitizer_cov_trace_pc() #17
  %21 = ptrtoint ptr %addr_hash79.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %addr_hash79.i, align 4
  tail call void @kfree(ptr noundef %22) #15
  br label %cleanup

if.end14:                                         ; preds = %for.body.i
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx, align 4
  %tobool.not.i = icmp eq ptr %24, null
  br i1 %tobool.not.i, label %if.end14.if.end6.i81_crit_edge, label %if.then.i

if.end14.if.end6.i81_crit_edge:                   ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end6.i81

if.then.i:                                        ; preds = %if.end14
  %add.ptr.i.i.i = getelementptr i8, ptr %24, i32 4
  %25 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %add.ptr.i.i.i, align 4
  %call2.i = tail call fastcc ptr @gtp_encap_enable_socket(i32 noundef %26, i32 noundef 4, ptr noundef %add.ptr.i) #15
  %cmp.i.i = icmp ugt ptr %call2.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.i.gtp_encap_enable.exit_crit_edge, label %if.then.i.if.end6.i81_crit_edge

if.then.i.if.end6.i81_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end6.i81

if.then.i.gtp_encap_enable.exit_crit_edge:        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %gtp_encap_enable.exit

if.end6.i81:                                      ; preds = %if.then.i.if.end6.i81_crit_edge, %if.end14.if.end6.i81_crit_edge
  %sk0.0.i = phi ptr [ null, %if.end14.if.end6.i81_crit_edge ], [ %call2.i, %if.then.i.if.end6.i81_crit_edge ]
  %arrayidx7.i = getelementptr ptr, ptr %data, i32 2
  %27 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx7.i, align 4
  %tobool8.not.i = icmp eq ptr %28, null
  br i1 %tobool8.not.i, label %if.end6.i81.if.end20.i_crit_edge, label %if.then9.i

if.end6.i81.if.end20.i_crit_edge:                 ; preds = %if.end6.i81
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end20.i

if.then9.i:                                       ; preds = %if.end6.i81
  %add.ptr.i.i56.i = getelementptr i8, ptr %28, i32 4
  %29 = ptrtoint ptr %add.ptr.i.i56.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %add.ptr.i.i56.i, align 4
  %call12.i = tail call fastcc ptr @gtp_encap_enable_socket(i32 noundef %30, i32 noundef 5, ptr noundef %add.ptr.i) #15
  %cmp.i57.i = icmp ugt ptr %call12.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i57.i, label %if.then14.i, label %if.then9.i.if.end20.i_crit_edge

if.then9.i.if.end20.i_crit_edge:                  ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end20.i

if.then14.i:                                      ; preds = %if.then9.i
  %tobool.not.i.i = icmp eq ptr %sk0.0.i, null
  br i1 %tobool.not.i.i, label %if.then14.i.gtp_encap_enable.exit_crit_edge, label %if.end.i.i82

if.then14.i.gtp_encap_enable.exit_crit_edge:      ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %gtp_encap_enable.exit

if.end.i.i82:                                     ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @__gtp_encap_destroy(ptr noundef nonnull %sk0.0.i) #15
  br label %gtp_encap_enable.exit

if.end20.i:                                       ; preds = %if.then9.i.if.end20.i_crit_edge, %if.end6.i81.if.end20.i_crit_edge
  %sk1u.0.i = phi ptr [ null, %if.end6.i81.if.end20.i_crit_edge ], [ %call12.i, %if.then9.i.if.end20.i_crit_edge ]
  %arrayidx21.i = getelementptr ptr, ptr %data, i32 4
  %31 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx21.i, align 4
  %tobool22.not.i = icmp eq ptr %32, null
  br i1 %tobool22.not.i, label %if.end20.i.gtp_encap_enable.exit.thread105_crit_edge, label %if.then23.i

if.end20.i.gtp_encap_enable.exit.thread105_crit_edge: ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %gtp_encap_enable.exit.thread105

if.then23.i:                                      ; preds = %if.end20.i
  %add.ptr.i.i58.i = getelementptr i8, ptr %32, i32 4
  %33 = ptrtoint ptr %add.ptr.i.i58.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %add.ptr.i.i58.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %34)
  %cmp.i83 = icmp ugt i32 %34, 1
  br i1 %cmp.i83, label %if.then26.i, label %if.then23.i.gtp_encap_enable.exit.thread105_crit_edge

if.then23.i.gtp_encap_enable.exit.thread105_crit_edge: ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %gtp_encap_enable.exit.thread105

if.then26.i:                                      ; preds = %if.then23.i
  %tobool.not.i59.i = icmp eq ptr %sk0.0.i, null
  br i1 %tobool.not.i59.i, label %if.then26.i.gtp_encap_disable_sock.exit61.i_crit_edge, label %if.end.i60.i

if.then26.i.gtp_encap_disable_sock.exit61.i_crit_edge: ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %gtp_encap_disable_sock.exit61.i

if.end.i60.i:                                     ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @__gtp_encap_destroy(ptr noundef nonnull %sk0.0.i) #15
  br label %gtp_encap_disable_sock.exit61.i

gtp_encap_disable_sock.exit61.i:                  ; preds = %if.end.i60.i, %if.then26.i.gtp_encap_disable_sock.exit61.i_crit_edge
  %tobool.not.i62.i = icmp eq ptr %sk1u.0.i, null
  br i1 %tobool.not.i62.i, label %gtp_encap_disable_sock.exit61.i.out_hashtable_crit_edge, label %gtp_encap_disable_sock.exit61.i.out_hashtable.sink.split_crit_edge

gtp_encap_disable_sock.exit61.i.out_hashtable.sink.split_crit_edge: ; preds = %gtp_encap_disable_sock.exit61.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_hashtable.sink.split

gtp_encap_disable_sock.exit61.i.out_hashtable_crit_edge: ; preds = %gtp_encap_disable_sock.exit61.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_hashtable

gtp_encap_enable.exit.thread105:                  ; preds = %if.then23.i.gtp_encap_enable.exit.thread105_crit_edge, %if.end20.i.gtp_encap_enable.exit.thread105_crit_edge
  %role.0.i = phi i32 [ %34, %if.then23.i.gtp_encap_enable.exit.thread105_crit_edge ], [ 0, %if.end20.i.gtp_encap_enable.exit.thread105_crit_edge ]
  %sk029.i = getelementptr i8, ptr %dev, i32 2312
  %35 = ptrtoint ptr %sk029.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %sk0.0.i, ptr %sk029.i, align 4
  %sk1u30.i = getelementptr i8, ptr %dev, i32 2316
  %36 = ptrtoint ptr %sk1u30.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %sk1u.0.i, ptr %sk1u30.i, align 4
  %role31.i = getelementptr i8, ptr %dev, i32 2324
  %37 = ptrtoint ptr %role31.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %role.0.i, ptr %role31.i, align 4
  br label %if.end18

gtp_encap_enable.exit:                            ; preds = %if.end.i.i82, %if.then14.i.gtp_encap_enable.exit_crit_edge, %if.then.i.gtp_encap_enable.exit_crit_edge
  %retval.3.i.in = phi ptr [ %call2.i, %if.then.i.gtp_encap_enable.exit_crit_edge ], [ %call12.i, %if.end.i.i82 ], [ %call12.i, %if.then14.i.gtp_encap_enable.exit_crit_edge ]
  %retval.3.i = ptrtoint ptr %retval.3.i.in to i32
  %cmp16 = icmp slt ptr %retval.3.i.in, null
  br i1 %cmp16, label %gtp_encap_enable.exit.out_hashtable_crit_edge, label %gtp_encap_enable.exit.if.end18_crit_edge

gtp_encap_enable.exit.if.end18_crit_edge:         ; preds = %gtp_encap_enable.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end18

gtp_encap_enable.exit.out_hashtable_crit_edge:    ; preds = %gtp_encap_enable.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_hashtable

if.end18:                                         ; preds = %gtp_encap_enable.exit.if.end18_crit_edge, %gtp_encap_enable.exit.thread105
  %call19 = tail call i32 @register_netdevice(ptr noundef %dev) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %do.body22, label %if.end31

do.body22:                                        ; preds = %if.end18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gtp_newlink.__UNIQUE_ID_ddebug608, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gtp_newlink, %if.then27)) #15
          to label %out_encap [label %if.then27], !srcloc !195

if.then27:                                        ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @gtp_newlink.__UNIQUE_ID_ddebug608, ptr noundef %dev, ptr noundef nonnull @.str.37, i32 noundef %call19) #15
  br label %out_encap

if.end31:                                         ; preds = %if.end18
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 127
  %38 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %nd_net.i, align 4
  %40 = load i32, ptr @gtp_net_id, align 4
  %call33 = tail call fastcc ptr @net_generic(ptr noundef %39, i32 noundef %40)
  %41 = ptrtoint ptr %call33 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %call33, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %add.ptr.i, ptr noundef %call33, ptr noundef %42) #15
  br i1 %call.i.i, label %if.end.i.i84, label %if.end31.list_add_rcu.exit_crit_edge

if.end31.list_add_rcu.exit_crit_edge:             ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_add_rcu.exit

if.end.i.i84:                                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #17
  %43 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %42, ptr %add.ptr.i, align 4
  %prev2.i.i = getelementptr i8, ptr %dev, i32 2308
  %44 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call33, ptr %prev2.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !208
  %45 = ptrtoint ptr %call33 to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %add.ptr.i, ptr %call33, align 4
  %prev37.i.i = getelementptr inbounds %struct.list_head, ptr %42, i32 0, i32 1
  %46 = ptrtoint ptr %prev37.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %add.ptr.i, ptr %prev37.i.i, align 4
  br label %list_add_rcu.exit

list_add_rcu.exit:                                ; preds = %if.end.i.i84, %if.end31.list_add_rcu.exit_crit_edge
  %priv_destructor = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 125
  %47 = ptrtoint ptr %priv_destructor to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @gtp_destructor, ptr %priv_destructor, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gtp_newlink.__UNIQUE_ID_ddebug609, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gtp_newlink, %if.then47)) #15
          to label %cleanup [label %if.then47], !srcloc !195

if.then47:                                        ; preds = %list_add_rcu.exit
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @gtp_newlink.__UNIQUE_ID_ddebug609, ptr noundef %dev, ptr noundef nonnull @.str.38) #15
  br label %cleanup

out_encap:                                        ; preds = %if.then27, %do.body22
  %sk0.i = getelementptr i8, ptr %dev, i32 2312
  %48 = ptrtoint ptr %sk0.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %sk0.i, align 4
  %tobool.not.i.i85 = icmp eq ptr %49, null
  br i1 %tobool.not.i.i85, label %out_encap.gtp_encap_disable_sock.exit.i_crit_edge, label %if.end.i.i86

out_encap.gtp_encap_disable_sock.exit.i_crit_edge: ; preds = %out_encap
  call void @__sanitizer_cov_trace_pc() #17
  br label %gtp_encap_disable_sock.exit.i

if.end.i.i86:                                     ; preds = %out_encap
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @__gtp_encap_destroy(ptr noundef nonnull %49) #15
  br label %gtp_encap_disable_sock.exit.i

gtp_encap_disable_sock.exit.i:                    ; preds = %if.end.i.i86, %out_encap.gtp_encap_disable_sock.exit.i_crit_edge
  %sk1u.i = getelementptr i8, ptr %dev, i32 2316
  %50 = ptrtoint ptr %sk1u.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %sk1u.i, align 4
  %tobool.not.i2.i = icmp eq ptr %51, null
  br i1 %tobool.not.i2.i, label %gtp_encap_disable_sock.exit.i.out_hashtable_crit_edge, label %gtp_encap_disable_sock.exit.i.out_hashtable.sink.split_crit_edge

gtp_encap_disable_sock.exit.i.out_hashtable.sink.split_crit_edge: ; preds = %gtp_encap_disable_sock.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_hashtable.sink.split

gtp_encap_disable_sock.exit.i.out_hashtable_crit_edge: ; preds = %gtp_encap_disable_sock.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_hashtable

out_hashtable.sink.split:                         ; preds = %gtp_encap_disable_sock.exit.i.out_hashtable.sink.split_crit_edge, %gtp_encap_disable_sock.exit61.i.out_hashtable.sink.split_crit_edge
  %sk1u.0.i.sink = phi ptr [ %sk1u.0.i, %gtp_encap_disable_sock.exit61.i.out_hashtable.sink.split_crit_edge ], [ %51, %gtp_encap_disable_sock.exit.i.out_hashtable.sink.split_crit_edge ]
  %err.0.ph = phi i32 [ -22, %gtp_encap_disable_sock.exit61.i.out_hashtable.sink.split_crit_edge ], [ %call19, %gtp_encap_disable_sock.exit.i.out_hashtable.sink.split_crit_edge ]
  tail call fastcc void @__gtp_encap_destroy(ptr noundef nonnull %sk1u.0.i.sink) #15
  br label %out_hashtable

out_hashtable:                                    ; preds = %out_hashtable.sink.split, %gtp_encap_disable_sock.exit.i.out_hashtable_crit_edge, %gtp_encap_enable.exit.out_hashtable_crit_edge, %gtp_encap_disable_sock.exit61.i.out_hashtable_crit_edge
  %err.0 = phi i32 [ %retval.3.i, %gtp_encap_enable.exit.out_hashtable_crit_edge ], [ %call19, %gtp_encap_disable_sock.exit.i.out_hashtable_crit_edge ], [ -22, %gtp_encap_disable_sock.exit61.i.out_hashtable_crit_edge ], [ %err.0.ph, %out_hashtable.sink.split ]
  %addr_hash = getelementptr i8, ptr %dev, i32 2336
  %52 = ptrtoint ptr %addr_hash to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %addr_hash, align 4
  tail call void @kfree(ptr noundef %53) #15
  %tid_hash = getelementptr i8, ptr %dev, i32 2332
  %54 = ptrtoint ptr %tid_hash to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %tid_hash, align 4
  tail call void @kfree(ptr noundef %55) #15
  br label %cleanup

cleanup:                                          ; preds = %out_hashtable, %if.then47, %list_add_rcu.exit, %err1.i, %kmalloc_array.exit.thread77.i.cleanup_crit_edge, %kmalloc_array.exit.thread.i, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %out_hashtable ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.then47 ], [ 0, %list_add_rcu.exit ], [ -12, %err1.i ], [ -12, %kmalloc_array.exit.thread.i ], [ -12, %kmalloc_array.exit.thread77.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gtp_dellink(ptr noundef %dev, ptr noundef %head) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %hash_size = getelementptr i8, ptr %dev, i32 2328
  %0 = ptrtoint ptr %hash_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hash_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp48.not = icmp eq i32 %1, 0
  br i1 %cmp48.not, label %entry.for.end32_crit_edge, label %do.body.lr.ph

entry.for.end32_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end32

do.body.lr.ph:                                    ; preds = %entry
  %tid_hash = getelementptr i8, ptr %dev, i32 2332
  br label %do.body

do.body:                                          ; preds = %for.inc31.do.body_crit_edge, %do.body.lr.ph
  %i.049 = phi i32 [ 0, %do.body.lr.ph ], [ %inc, %for.inc31.do.body_crit_edge ]
  %call1 = tail call i32 @rcu_read_lock_any_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true, label %do.body.do.end_crit_edge

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

land.lhs.true:                                    ; preds = %do.body
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true4

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b43 = load i1, ptr @gtp_dellink.__warned, align 1
  br i1 %.b43, label %land.lhs.true4.do.end_crit_edge, label %if.then

land.lhs.true4.do.end_crit_edge:                  ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @gtp_dellink.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 717, ptr noundef nonnull @.str.20) #15
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true4.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %do.body.do.end_crit_edge
  %2 = ptrtoint ptr %tid_hash to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tid_hash, align 4
  %arrayidx = getelementptr %struct.hlist_head, ptr %3, i32 %i.049
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %pctx.045 = load volatile ptr, ptr %arrayidx, align 4
  %tobool14.not46 = icmp eq ptr %pctx.045, null
  br i1 %tobool14.not46, label %do.end.for.inc31_crit_edge, label %do.end.for.body15_crit_edge

do.end.for.body15_crit_edge:                      ; preds = %do.end
  br label %for.body15

do.end.for.inc31_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc31

for.body15:                                       ; preds = %pdp_context_delete.exit.for.body15_crit_edge, %do.end.for.body15_crit_edge
  %pctx.047 = phi ptr [ %pctx.0, %pdp_context_delete.exit.for.body15_crit_edge ], [ %pctx.045, %do.end.for.body15_crit_edge ]
  %5 = ptrtoint ptr %pctx.047 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pctx.047, align 4
  %pprev2.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %pctx.047, i32 0, i32 1
  %7 = ptrtoint ptr %pprev2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pprev2.i.i.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %6, ptr %8, align 4
  %tobool.not.i.i.i = icmp eq ptr %6, null
  br i1 %tobool.not.i.i.i, label %for.body15.hlist_del_rcu.exit.i_crit_edge, label %do.body13.i.i.i

for.body15.hlist_del_rcu.exit.i_crit_edge:        ; preds = %for.body15
  call void @__sanitizer_cov_trace_pc() #17
  br label %hlist_del_rcu.exit.i

do.body13.i.i.i:                                  ; preds = %for.body15
  call void @__sanitizer_cov_trace_pc() #17
  %pprev14.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %6, i32 0, i32 1
  %10 = ptrtoint ptr %pprev14.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %pprev14.i.i.i, align 4
  br label %hlist_del_rcu.exit.i

hlist_del_rcu.exit.i:                             ; preds = %do.body13.i.i.i, %for.body15.hlist_del_rcu.exit.i_crit_edge
  %11 = ptrtoint ptr %pprev2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i.i, align 4
  %hlist_addr.i = getelementptr inbounds %struct.pdp_ctx, ptr %pctx.047, i32 0, i32 1
  %12 = ptrtoint ptr %hlist_addr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hlist_addr.i, align 4
  %pprev2.i.i3.i = getelementptr inbounds %struct.pdp_ctx, ptr %pctx.047, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %pprev2.i.i3.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pprev2.i.i3.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %13, ptr %15, align 4
  %tobool.not.i.i4.i = icmp eq ptr %13, null
  br i1 %tobool.not.i.i4.i, label %hlist_del_rcu.exit.i.pdp_context_delete.exit_crit_edge, label %do.body13.i.i6.i

hlist_del_rcu.exit.i.pdp_context_delete.exit_crit_edge: ; preds = %hlist_del_rcu.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %pdp_context_delete.exit

do.body13.i.i6.i:                                 ; preds = %hlist_del_rcu.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  %pprev14.i.i5.i = getelementptr inbounds %struct.hlist_node, ptr %13, i32 0, i32 1
  %17 = ptrtoint ptr %pprev14.i.i5.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %15, ptr %pprev14.i.i5.i, align 4
  br label %pdp_context_delete.exit

pdp_context_delete.exit:                          ; preds = %do.body13.i.i6.i, %hlist_del_rcu.exit.i.pdp_context_delete.exit_crit_edge
  %18 = ptrtoint ptr %pprev2.i.i3.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i3.i, align 4
  %callback_head.i = getelementptr inbounds %struct.pdp_ctx, ptr %pctx.047, i32 0, i32 10
  tail call void @call_rcu(ptr noundef %callback_head.i, ptr noundef nonnull @pdp_context_free) #15
  %19 = ptrtoint ptr %pctx.047 to i32
  call void @__asan_load4_noabort(i32 %19)
  %pctx.0 = load volatile ptr, ptr %pctx.047, align 4
  %tobool14.not = icmp eq ptr %pctx.0, null
  br i1 %tobool14.not, label %pdp_context_delete.exit.for.inc31_crit_edge, label %pdp_context_delete.exit.for.body15_crit_edge

pdp_context_delete.exit.for.body15_crit_edge:     ; preds = %pdp_context_delete.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body15

pdp_context_delete.exit.for.inc31_crit_edge:      ; preds = %pdp_context_delete.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc31

for.inc31:                                        ; preds = %pdp_context_delete.exit.for.inc31_crit_edge, %do.end.for.inc31_crit_edge
  %inc = add nuw i32 %i.049, 1
  %20 = ptrtoint ptr %hash_size to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %hash_size, align 4
  %cmp = icmp ult i32 %inc, %21
  br i1 %cmp, label %for.inc31.do.body_crit_edge, label %for.inc31.for.end32_crit_edge

for.inc31.for.end32_crit_edge:                    ; preds = %for.inc31
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end32

for.inc31.do.body_crit_edge:                      ; preds = %for.inc31
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body

for.end32:                                        ; preds = %for.inc31.for.end32_crit_edge, %entry.for.end32_crit_edge
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %add.ptr.i) #15
  br i1 %call.i.i, label %if.end.i.i, label %for.end32.list_del_rcu.exit_crit_edge

for.end32.list_del_rcu.exit_crit_edge:            ; preds = %for.end32
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del_rcu.exit

if.end.i.i:                                       ; preds = %for.end32
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i = getelementptr i8, ptr %dev, i32 2308
  %22 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %prev.i.i, align 4
  %24 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %add.ptr.i, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %23, ptr %prev1.i.i.i, align 4
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %25, ptr %23, align 4
  br label %list_del_rcu.exit

list_del_rcu.exit:                                ; preds = %if.end.i.i, %for.end32.list_del_rcu.exit_crit_edge
  %prev.i = getelementptr i8, ptr %dev, i32 2308
  %28 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @unregister_netdevice_queue(ptr noundef %dev, ptr noundef %head) #15
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @gtp_get_size(ptr nocapture noundef readnone %dev) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 16
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gtp_fill_info(ptr noundef %skb, ptr nocapture noundef readonly %dev) #4 align 64 {
entry:
  %tmp.i8 = alloca i32, align 4
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %hash_size = getelementptr i8, ptr %dev, i32 2328
  %0 = ptrtoint ptr %hash_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hash_size, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #15
  %2 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %tmp.i, align 4
  %call.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 4, ptr noundef nonnull %tmp.i) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.nla_put_failure_crit_edge

entry.nla_put_failure_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %nla_put_failure

if.end:                                           ; preds = %entry
  %role = getelementptr i8, ptr %dev, i32 2324
  %3 = ptrtoint ptr %role to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %role, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i8) #15
  %5 = ptrtoint ptr %tmp.i8 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %tmp.i8, align 4
  %call.i9 = call i32 @nla_put(ptr noundef %skb, i32 noundef 4, i32 noundef 4, ptr noundef nonnull %tmp.i8) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i8) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i9)
  %tobool3.not = icmp eq i32 %call.i9, 0
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end.nla_put_failure_crit_edge

if.end.nla_put_failure_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %nla_put_failure

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

nla_put_failure:                                  ; preds = %if.end.nla_put_failure_crit_edge, %entry.nla_put_failure_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %nla_put_failure, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -90, %nla_put_failure ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdevice(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gtp_destructor(ptr nocapture noundef readonly %dev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %addr_hash = getelementptr i8, ptr %dev, i32 2336
  %0 = ptrtoint ptr %addr_hash to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %addr_hash, align 4
  tail call void @kfree(ptr noundef %1) #15
  %tid_hash = getelementptr i8, ptr %dev, i32 2332
  %2 = ptrtoint ptr %tid_hash to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tid_hash, align 4
  tail call void @kfree(ptr noundef %3) #15
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #13

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @gtp_encap_enable_socket(i32 noundef %fd, i32 noundef %type, ptr noundef %gtp) unnamed_addr #4 align 64 {
entry:
  %tuncfg = alloca %struct.udp_tunnel_sock_cfg, align 4
  %err = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %tuncfg) #15
  %0 = call ptr @memset(ptr %tuncfg, i32 0, i32 28)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err) #15
  %1 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %err, align 4, !annotation !203
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gtp_encap_enable_socket.__UNIQUE_ID_ddebug614, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gtp_encap_enable_socket, %if.then)) #15
          to label %do.end [label %if.then], !srcloc !195

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @gtp_encap_enable_socket.__UNIQUE_ID_ddebug614, ptr noundef nonnull @.str.41, i32 noundef %fd, i32 noundef %type) #15
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call3 = call ptr @sockfd_lookup(i32 noundef %fd, ptr noundef nonnull %err) #15
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %do.body6, label %if.end22

do.body6:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gtp_encap_enable_socket.__UNIQUE_ID_ddebug615, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gtp_encap_enable_socket, %if.then18)) #15
          to label %cleanup [label %if.then18], !srcloc !195

if.then18:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @gtp_encap_enable_socket.__UNIQUE_ID_ddebug615, ptr noundef nonnull @.str.43, i32 noundef %fd) #15
  br label %cleanup

if.end22:                                         ; preds = %do.end
  %sk23 = getelementptr inbounds %struct.socket, ptr %call3, i32 0, i32 4
  %2 = ptrtoint ptr %sk23 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sk23, align 16
  %sk_protocol = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 46
  %4 = ptrtoint ptr %sk_protocol to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %sk_protocol, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 17, i16 %5)
  %cmp.not = icmp eq i16 %5, 17
  br i1 %cmp.not, label %lor.lhs.false, label %if.end22.do.body38_crit_edge

if.end22.do.body38_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body38

lor.lhs.false:                                    ; preds = %if.end22
  %sk_type = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 45
  %6 = ptrtoint ptr %sk_type to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %sk_type, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %7)
  %cmp26.not = icmp eq i16 %7, 2
  br i1 %cmp26.not, label %lor.lhs.false28, label %lor.lhs.false.do.body38_crit_edge

lor.lhs.false.do.body38_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body38

lor.lhs.false28:                                  ; preds = %lor.lhs.false
  %skc_family = getelementptr inbounds %struct.sock_common, ptr %3, i32 0, i32 3
  %8 = ptrtoint ptr %skc_family to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %skc_family, align 8
  %10 = zext i16 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.71)
  switch i16 %9, label %lor.lhs.false28.do.body38_crit_edge [
    i16 2, label %lor.lhs.false28.if.end55_crit_edge
    i16 10, label %lor.lhs.false28.if.end55_crit_edge93
  ]

lor.lhs.false28.if.end55_crit_edge93:             ; preds = %lor.lhs.false28
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end55

lor.lhs.false28.if.end55_crit_edge:               ; preds = %lor.lhs.false28
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end55

lor.lhs.false28.do.body38_crit_edge:              ; preds = %lor.lhs.false28
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body38

do.body38:                                        ; preds = %lor.lhs.false28.do.body38_crit_edge, %lor.lhs.false.do.body38_crit_edge, %if.end22.do.body38_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gtp_encap_enable_socket.__UNIQUE_ID_ddebug616, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gtp_encap_enable_socket, %if.then50)) #15
          to label %out_sock [label %if.then50], !srcloc !195

if.then50:                                        ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @gtp_encap_enable_socket.__UNIQUE_ID_ddebug616, ptr noundef nonnull @.str.45, i32 noundef %fd) #15
  br label %out_sock

if.end55:                                         ; preds = %lor.lhs.false28.if.end55_crit_edge, %lor.lhs.false28.if.end55_crit_edge93
  call void @lock_sock_nested(ptr noundef %3, i32 noundef 0) #15
  %sk_user_data = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 72
  %11 = ptrtoint ptr %sk_user_data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sk_user_data, align 4
  %tobool56.not = icmp eq ptr %12, null
  br i1 %tobool56.not, label %if.end59, label %if.end55.out_rel_sock_crit_edge

if.end55.out_rel_sock_crit_edge:                  ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_rel_sock

if.end59:                                         ; preds = %if.end55
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %3, i32 0, i32 19
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #15
  call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #15
  %13 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #15, !srcloc !197
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end59.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !198

if.end59.if.end15.sink.split.i.i.i.i_crit_edge:   ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end59
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %14 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %14)
  %.not.i.i.i.i = icmp sgt i32 %14, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.sock_hold.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !199

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.sock_hold.exit_crit_edge:         ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sock_hold.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end59.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end59.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef %.sink.i.i.i.i) #15
  br label %sock_hold.exit

sock_hold.exit:                                   ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.sock_hold.exit_crit_edge
  %15 = ptrtoint ptr %tuncfg to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %gtp, ptr %tuncfg, align 4
  %conv61 = trunc i32 %type to i8
  %encap_type = getelementptr inbounds %struct.udp_tunnel_sock_cfg, ptr %tuncfg, i32 0, i32 1
  %16 = ptrtoint ptr %encap_type to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv61, ptr %encap_type, align 4
  %encap_rcv = getelementptr inbounds %struct.udp_tunnel_sock_cfg, ptr %tuncfg, i32 0, i32 2
  %17 = ptrtoint ptr %encap_rcv to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @gtp_encap_recv, ptr %encap_rcv, align 4
  %encap_destroy = getelementptr inbounds %struct.udp_tunnel_sock_cfg, ptr %tuncfg, i32 0, i32 4
  %18 = ptrtoint ptr %encap_destroy to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @gtp_encap_destroy, ptr %encap_destroy, align 4
  %19 = ptrtoint ptr %sk23 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sk23, align 16
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %20, i32 0, i32 9
  %21 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %skc_net.i, align 4
  call void @setup_udp_tunnel_sock(ptr noundef %22, ptr noundef nonnull %call3, ptr noundef nonnull %tuncfg) #15
  br label %out_rel_sock

out_rel_sock:                                     ; preds = %sock_hold.exit, %if.end55.out_rel_sock_crit_edge
  %sk.0 = phi ptr [ %3, %sock_hold.exit ], [ inttoptr (i32 -16 to ptr), %if.end55.out_rel_sock_crit_edge ]
  %23 = ptrtoint ptr %sk23 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %sk23, align 16
  call void @release_sock(ptr noundef %24) #15
  br label %out_sock

out_sock:                                         ; preds = %out_rel_sock, %if.then50, %do.body38
  %sk.1 = phi ptr [ %sk.0, %out_rel_sock ], [ inttoptr (i32 -22 to ptr), %do.body38 ], [ inttoptr (i32 -22 to ptr), %if.then50 ]
  %file = getelementptr inbounds %struct.socket, ptr %call3, i32 0, i32 3
  %25 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %file, align 4
  call void @fput(ptr noundef %26) #15
  br label %cleanup

cleanup:                                          ; preds = %out_sock, %if.then18, %do.body6
  %retval.0 = phi ptr [ %sk.1, %out_sock ], [ null, %if.then18 ], [ null, %do.body6 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err) #15
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %tuncfg) #15
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sockfd_lookup(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gtp_encap_recv(ptr noundef %sk, ptr noundef %skb) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %sk_user_data = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 72
  %0 = ptrtoint ptr %sk_user_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %sk_user_data, align 4
  %call = tail call i32 @rcu_read_lock_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end7_crit_edge

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end7

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b126 = load i1, ptr @gtp_encap_recv.__warned, align 1
  br i1 %.b126, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @gtp_encap_recv.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 335, ptr noundef nonnull @.str.35) #15
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %entry.do.end7_crit_edge
  %2 = ptrtoint ptr %1 to i32
  %and = and i32 %2, -4
  %3 = inttoptr i32 %and to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool10.not = icmp eq i32 %and, 0
  br i1 %tobool10.not, label %do.end7.cleanup_crit_edge, label %do.body14

do.end7.cleanup_crit_edge:                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.body14:                                        ; preds = %do.end7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gtp_encap_recv.__UNIQUE_ID_ddebug597, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gtp_encap_recv, %if.then20)) #15
          to label %do.end25 [label %if.then20], !srcloc !195

if.then20:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #17
  %dev = getelementptr inbounds %struct.gtp_dev, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @gtp_encap_recv.__UNIQUE_ID_ddebug597, ptr noundef %5, ptr noundef nonnull @.str.47, ptr noundef %sk) #15
  br label %do.end25

do.end25:                                         ; preds = %if.then20, %do.body14
  %encap_type = getelementptr inbounds %struct.udp_sock, ptr %sk, i32 0, i32 3
  %6 = ptrtoint ptr %encap_type to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %encap_type, align 128
  %8 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.72)
  switch i8 %7, label %do.end25.do.body93_crit_edge [
    i8 4, label %do.body28
    i8 5, label %do.body50
  ]

do.end25.do.body93_crit_edge:                     ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body93

do.body28:                                        ; preds = %do.end25
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gtp_encap_recv.__UNIQUE_ID_ddebug598, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gtp_encap_recv, %if.then40)) #15
          to label %do.end46 [label %if.then40], !srcloc !195

if.then40:                                        ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #17
  %dev41 = getelementptr inbounds %struct.gtp_dev, ptr %3, i32 0, i32 3
  %9 = ptrtoint ptr %dev41 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev41, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @gtp_encap_recv.__UNIQUE_ID_ddebug598, ptr noundef %10, ptr noundef nonnull @.str.48) #15
  br label %do.end46

do.end46:                                         ; preds = %if.then40, %do.body28
  %call47 = tail call fastcc i32 @gtp0_udp_encap_recv(ptr noundef nonnull %3, ptr noundef %skb)
  br label %sw.epilog

do.body50:                                        ; preds = %do.end25
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gtp_encap_recv.__UNIQUE_ID_ddebug599, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gtp_encap_recv, %if.then62)) #15
          to label %do.end68 [label %if.then62], !srcloc !195

if.then62:                                        ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #17
  %dev63 = getelementptr inbounds %struct.gtp_dev, ptr %3, i32 0, i32 3
  %11 = ptrtoint ptr %dev63 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev63, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @gtp_encap_recv.__UNIQUE_ID_ddebug599, ptr noundef %12, ptr noundef nonnull @.str.49) #15
  br label %do.end68

do.end68:                                         ; preds = %if.then62, %do.body50
  %call69 = tail call fastcc i32 @gtp1u_udp_encap_recv(ptr noundef nonnull %3, ptr noundef %skb)
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end68, %do.end46
  %ret.0 = phi i32 [ %call69, %do.end68 ], [ %call47, %do.end46 ]
  %13 = zext i32 %ret.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.73)
  switch i32 %ret.0, label %sw.epilog.cleanup_crit_edge [
    i32 1, label %do.body72
    i32 -1, label %sw.epilog.do.body93_crit_edge
  ]

sw.epilog.do.body93_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body93

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.body72:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gtp_encap_recv.__UNIQUE_ID_ddebug600, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gtp_encap_recv, %if.then84)) #15
          to label %cleanup [label %if.then84], !srcloc !195

if.then84:                                        ; preds = %do.body72
  call void @__sanitizer_cov_trace_pc() #17
  %dev85 = getelementptr inbounds %struct.gtp_dev, ptr %3, i32 0, i32 3
  %14 = ptrtoint ptr %dev85 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev85, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @gtp_encap_recv.__UNIQUE_ID_ddebug600, ptr noundef %15, ptr noundef nonnull @.str.50) #15
  br label %cleanup

do.body93:                                        ; preds = %sw.epilog.do.body93_crit_edge, %do.end25.do.body93_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gtp_encap_recv.__UNIQUE_ID_ddebug601, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gtp_encap_recv, %if.then105)) #15
          to label %do.end111 [label %if.then105], !srcloc !195

if.then105:                                       ; preds = %do.body93
  call void @__sanitizer_cov_trace_pc() #17
  %dev106 = getelementptr inbounds %struct.gtp_dev, ptr %3, i32 0, i32 3
  %16 = ptrtoint ptr %dev106 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev106, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @gtp_encap_recv.__UNIQUE_ID_ddebug601, ptr noundef %17, ptr noundef nonnull @.str.51) #15
  br label %do.end111

do.end111:                                        ; preds = %if.then105, %do.body93
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end111, %if.then84, %do.body72, %sw.epilog.cleanup_crit_edge, %do.end7.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %do.end7.cleanup_crit_edge ], [ %ret.0, %sw.epilog.cleanup_crit_edge ], [ 0, %do.end111 ], [ 1, %if.then84 ], [ 1, %do.body72 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gtp_encap_destroy(ptr noundef %sk) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @rtnl_lock() #15
  tail call fastcc void @__gtp_encap_destroy(ptr noundef %sk)
  tail call void @rtnl_unlock() #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @setup_udp_tunnel_sock(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gtp0_udp_encap_recv(ptr nocapture noundef readonly %gtp, ptr noundef %skb) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %2 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i = sub i32 %1, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 28, i32 %sub.i.i)
  %cmp.not.i = icmp ult i32 %sub.i.i, 28
  br i1 %cmp.not.i, label %if.end.i, label %entry.if.end_crit_edge, !prof !198

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 28, i32 %1)
  %cmp3.i = icmp ult i32 %1, 28
  br i1 %cmp3.i, label %if.end.i.cleanup_crit_edge, label %pskb_may_pull.exit, !prof !198

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

pskb_may_pull.exit:                               ; preds = %if.end.i
  %sub.i = sub nuw nsw i32 28, %sub.i.i
  %call13.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i) #15
  %cmp14.i.not = icmp eq ptr %call13.i, null
  br i1 %cmp14.i.not, label %pskb_may_pull.exit.cleanup_crit_edge, label %pskb_may_pull.exit.if.end_crit_edge

pskb_may_pull.exit.if.end_crit_edge:              ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

pskb_may_pull.exit.cleanup_crit_edge:             ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %pskb_may_pull.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 8
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %add.ptr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %7)
  %cmp.not = icmp ult i8 %7, 32
  br i1 %cmp.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %type = getelementptr i8, ptr %5, i32 9
  %8 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %9)
  %cmp5.not = icmp eq i8 %9, -1
  br i1 %cmp5.not, label %if.end8, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end8:                                          ; preds = %if.end3
  %tid = getelementptr i8, ptr %5, i32 20
  %10 = ptrtoint ptr %tid to i32
  call void @__asan_loadN_noabort(i32 %10, i32 8)
  %11 = load i64, ptr %tid, align 1
  %call9 = tail call fastcc ptr @gtp0_pdp_find(ptr noundef %gtp, i64 noundef %11)
  %tobool.not = icmp eq ptr %call9, null
  br i1 %tobool.not, label %do.body11, label %if.end20

do.body11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gtp0_udp_encap_recv.__UNIQUE_ID_ddebug590, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gtp0_udp_encap_recv, %if.then16)) #15
          to label %cleanup [label %if.then16], !srcloc !195

if.then16:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #17
  %dev = getelementptr inbounds %struct.gtp_dev, ptr %gtp, i32 0, i32 3
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @gtp0_udp_encap_recv.__UNIQUE_ID_ddebug590, ptr noundef %13, ptr noundef nonnull @.str.53, ptr noundef %skb) #15
  br label %cleanup

if.end20:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #17
  %role = getelementptr inbounds %struct.gtp_dev, ptr %gtp, i32 0, i32 4
  %14 = ptrtoint ptr %role to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %role, align 4
  %call21 = tail call fastcc i32 @gtp_rx(ptr noundef nonnull %call9, ptr noundef %skb, i32 noundef 28, i32 noundef %15)
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.then16, %do.body11, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %pskb_may_pull.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %call21, %if.end20 ], [ -1, %pskb_may_pull.exit.cleanup_crit_edge ], [ 1, %if.end.cleanup_crit_edge ], [ 1, %if.end3.cleanup_crit_edge ], [ 1, %if.then16 ], [ 1, %do.body11 ], [ -1, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gtp1u_udp_encap_recv(ptr nocapture noundef readonly %gtp, ptr noundef %skb) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %2 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i = sub i32 %1, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %sub.i.i)
  %cmp.not.i = icmp ult i32 %sub.i.i, 16
  br i1 %cmp.not.i, label %if.end.i, label %entry.if.end_crit_edge, !prof !198

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %1)
  %cmp3.i = icmp ult i32 %1, 16
  br i1 %cmp3.i, label %if.end.i.cleanup_crit_edge, label %pskb_may_pull.exit, !prof !198

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

pskb_may_pull.exit:                               ; preds = %if.end.i
  %sub.i = sub nuw nsw i32 16, %sub.i.i
  %call13.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i) #15
  %cmp14.i.not = icmp eq ptr %call13.i, null
  br i1 %cmp14.i.not, label %pskb_may_pull.exit.cleanup_crit_edge, label %pskb_may_pull.exit.if.end_crit_edge

pskb_may_pull.exit.if.end_crit_edge:              ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

pskb_may_pull.exit.cleanup_crit_edge:             ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %pskb_may_pull.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 8
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %add.ptr, align 1
  %conv = zext i8 %7 to i32
  %.mask = and i32 %conv, 224
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %.mask)
  %cmp.not = icmp eq i32 %.mask, 32
  br i1 %cmp.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %type = getelementptr i8, ptr %5, i32 9
  %8 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %9)
  %cmp5.not = icmp eq i8 %9, -1
  br i1 %cmp5.not, label %if.end8, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end8:                                          ; preds = %if.end3
  %and = and i32 %conv, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %spec.select = select i1 %tobool.not, i32 16, i32 20
  %10 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len.i.i, align 4
  %12 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i51 = sub i32 %11, %13
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select, i32 %sub.i.i51)
  %cmp.not.i52 = icmp ugt i32 %spec.select, %sub.i.i51
  br i1 %cmp.not.i52, label %if.end.i54, label %if.end8.if.end15_crit_edge, !prof !198

if.end8.if.end15_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15

if.end.i54:                                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %spec.select)
  %cmp3.i53 = icmp ult i32 %11, %spec.select
  br i1 %cmp3.i53, label %if.end.i54.cleanup_crit_edge, label %pskb_may_pull.exit60, !prof !198

if.end.i54.cleanup_crit_edge:                     ; preds = %if.end.i54
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

pskb_may_pull.exit60:                             ; preds = %if.end.i54
  %sub.i55 = sub i32 %spec.select, %sub.i.i51
  %call13.i56 = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i55) #15
  %cmp14.i57.not = icmp eq ptr %call13.i56, null
  br i1 %cmp14.i57.not, label %pskb_may_pull.exit60.cleanup_crit_edge, label %pskb_may_pull.exit60.if.end15_crit_edge

pskb_may_pull.exit60.if.end15_crit_edge:          ; preds = %pskb_may_pull.exit60
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15

pskb_may_pull.exit60.cleanup_crit_edge:           ; preds = %pskb_may_pull.exit60
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end15:                                         ; preds = %pskb_may_pull.exit60.if.end15_crit_edge, %if.end8.if.end15_crit_edge
  %14 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data, align 4
  %tid = getelementptr i8, ptr %15, i32 12
  %16 = ptrtoint ptr %tid to i32
  call void @__asan_loadN_noabort(i32 %16, i32 4)
  %17 = load i32, ptr %tid, align 1
  %call18 = tail call fastcc ptr @gtp1_pdp_find(ptr noundef %gtp, i32 noundef %17)
  %tobool19.not = icmp eq ptr %call18, null
  br i1 %tobool19.not, label %do.body21, label %if.end30

do.body21:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gtp1u_udp_encap_recv.__UNIQUE_ID_ddebug591, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gtp1u_udp_encap_recv, %if.then26)) #15
          to label %cleanup [label %if.then26], !srcloc !195

if.then26:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #17
  %dev = getelementptr inbounds %struct.gtp_dev, ptr %gtp, i32 0, i32 3
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @gtp1u_udp_encap_recv.__UNIQUE_ID_ddebug591, ptr noundef %19, ptr noundef nonnull @.str.53, ptr noundef %skb) #15
  br label %cleanup

if.end30:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #17
  %role = getelementptr inbounds %struct.gtp_dev, ptr %gtp, i32 0, i32 4
  %20 = ptrtoint ptr %role to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %role, align 4
  %call31 = tail call fastcc i32 @gtp_rx(ptr noundef nonnull %call18, ptr noundef %skb, i32 noundef %spec.select, i32 noundef %21)
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %if.then26, %do.body21, %pskb_may_pull.exit60.cleanup_crit_edge, %if.end.i54.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %pskb_may_pull.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %call31, %if.end30 ], [ -1, %pskb_may_pull.exit.cleanup_crit_edge ], [ 1, %if.end.cleanup_crit_edge ], [ 1, %if.end3.cleanup_crit_edge ], [ -1, %pskb_may_pull.exit60.cleanup_crit_edge ], [ 1, %if.then26 ], [ 1, %do.body21 ], [ -1, %if.end.i.cleanup_crit_edge ], [ -1, %if.end.i54.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gtp_rx(ptr nocapture noundef readonly %pctx, ptr noundef %skb, i32 noundef %hdrlen, i32 noundef %role) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %0 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %protocol.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %1)
  %cond.i = icmp eq i16 %1, 2048
  br i1 %cond.i, label %sw.bb.i, label %entry.do.body1_crit_edge

entry.do.body1_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body1

sw.bb.i:                                          ; preds = %entry
  %add.i.i = add i32 %hdrlen, 20
  %len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %2 = ptrtoint ptr %len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len.i.i.i.i, align 4
  %data_len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %4 = ptrtoint ptr %data_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %data_len.i.i.i.i, align 8
  %sub.i.i.i.i = sub i32 %3, %5
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %sub.i.i.i.i)
  %cmp.not.i.i.i = icmp ugt i32 %add.i.i, %sub.i.i.i.i
  br i1 %cmp.not.i.i.i, label %if.end.i.i.i, label %sw.bb.i.gtp_check_ms.exit_crit_edge, !prof !198

sw.bb.i.gtp_check_ms.exit_crit_edge:              ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %gtp_check_ms.exit

if.end.i.i.i:                                     ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %add.i.i)
  %cmp3.i.i.i = icmp ult i32 %3, %add.i.i
  br i1 %cmp3.i.i.i, label %if.end.i.i.i.do.body1_crit_edge, label %pskb_may_pull.exit.i.i, !prof !198

if.end.i.i.i.do.body1_crit_edge:                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body1

pskb_may_pull.exit.i.i:                           ; preds = %if.end.i.i.i
  %sub.i.i.i = sub i32 %add.i.i, %sub.i.i.i.i
  %call13.i.i.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i.i.i) #15
  %cmp14.i.not.i.i = icmp eq ptr %call13.i.i.i, null
  br i1 %cmp14.i.not.i.i, label %pskb_may_pull.exit.i.i.do.body1_crit_edge, label %pskb_may_pull.exit.i.i.gtp_check_ms.exit_crit_edge

pskb_may_pull.exit.i.i.gtp_check_ms.exit_crit_edge: ; preds = %pskb_may_pull.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %gtp_check_ms.exit

pskb_may_pull.exit.i.i.do.body1_crit_edge:        ; preds = %pskb_may_pull.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body1

gtp_check_ms.exit:                                ; preds = %pskb_may_pull.exit.i.i.gtp_check_ms.exit_crit_edge, %sw.bb.i.gtp_check_ms.exit_crit_edge
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %6 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 %hdrlen
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %role)
  %cmp.i.i = icmp eq i32 %role, 1
  %saddr.i.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 8
  %daddr.i.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 9
  %saddr.sink.i.i = select i1 %cmp.i.i, ptr %daddr.i.i, ptr %saddr.i.i
  %8 = ptrtoint ptr %saddr.sink.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %saddr.sink.i.i, align 4
  %ms_addr_ip43.i.i = getelementptr inbounds %struct.pdp_ctx, ptr %pctx, i32 0, i32 5
  %10 = ptrtoint ptr %ms_addr_ip43.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ms_addr_ip43.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp5.i.i = icmp eq i32 %9, %11
  br i1 %cmp5.i.i, label %if.end7, label %gtp_check_ms.exit.do.body1_crit_edge

gtp_check_ms.exit.do.body1_crit_edge:             ; preds = %gtp_check_ms.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body1

do.body1:                                         ; preds = %gtp_check_ms.exit.do.body1_crit_edge, %pskb_may_pull.exit.i.i.do.body1_crit_edge, %if.end.i.i.i.do.body1_crit_edge, %entry.do.body1_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gtp_rx.__UNIQUE_ID_ddebug588, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gtp_rx, %if.then5)) #15
          to label %return [label %if.then5], !srcloc !195

if.then5:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #17
  %dev = getelementptr inbounds %struct.pdp_ctx, ptr %pctx, i32 0, i32 8
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @gtp_rx.__UNIQUE_ID_ddebug588, ptr noundef %13, ptr noundef nonnull @.str.55) #15
  br label %return

if.end7:                                          ; preds = %gtp_check_ms.exit
  %14 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %protocol.i, align 8
  %sk = getelementptr inbounds %struct.pdp_ctx, ptr %pctx, i32 0, i32 7
  %16 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sk, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %17, i32 0, i32 9
  %18 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %skc_net.i, align 4
  %dev9 = getelementptr inbounds %struct.pdp_ctx, ptr %pctx, i32 0, i32 8
  %20 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev9, align 8
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %21, i32 0, i32 127
  %22 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %nd_net.i, align 4
  %cmp.i = icmp ne ptr %19, %23
  %call.i = tail call i32 @__iptunnel_pull_header(ptr noundef %skb, i32 noundef %hdrlen, i16 noundef zeroext %15, i1 noundef zeroext false, i1 noundef zeroext %cmp.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool16.not = icmp eq i32 %call.i, 0
  br i1 %tobool16.not, label %do.body21, label %if.then17

if.then17:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #17
  %24 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev9, align 8
  %rx_length_errors = getelementptr inbounds %struct.net_device, ptr %25, i32 0, i32 36, i32 10
  %26 = ptrtoint ptr %rx_length_errors to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rx_length_errors, align 8
  %inc = add i32 %27, 1
  store i32 %inc, ptr %rx_length_errors, align 8
  %28 = load ptr, ptr %dev9, align 8
  %rx_dropped = getelementptr inbounds %struct.net_device, ptr %28, i32 0, i32 36, i32 6
  %29 = ptrtoint ptr %rx_dropped to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rx_dropped, align 8
  %inc43 = add i32 %30, 1
  store i32 %inc43, ptr %rx_dropped, align 8
  br label %return

do.body21:                                        ; preds = %if.end7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gtp_rx.__UNIQUE_ID_ddebug589, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gtp_rx, %if.then33)) #15
          to label %do.end37 [label %if.then33], !srcloc !195

if.then33:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #17
  %31 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev9, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @gtp_rx.__UNIQUE_ID_ddebug589, ptr noundef %32, ptr noundef nonnull @.str.56) #15
  br label %do.end37

do.end37:                                         ; preds = %if.then33, %do.body21
  %33 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %data.i.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %35 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %34 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %36 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i64 = trunc i32 %sub.ptr.sub.i to i16
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %37 = ptrtoint ptr %network_header.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %conv.i64, ptr %network_header.i, align 4
  %mac_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %38 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %conv.i64, ptr %mac_header.i, align 2
  %39 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev9, align 8
  %41 = getelementptr inbounds %struct.anon.1, ptr %skb, i32 0, i32 2
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %40, ptr %41, align 8
  %43 = load ptr, ptr %dev9, align 8
  %44 = ptrtoint ptr %len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %len.i.i.i.i, align 4
  %46 = getelementptr inbounds %struct.net_device, ptr %43, i32 0, i32 130
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %46, align 64
  %49 = tail call i32 @llvm.read_register.i32(metadata !184) #15
  %and.i.i = and i32 %49, -16384
  %50 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %50, i32 0, i32 3
  %51 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %52
  %53 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %55 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool.not.i.i.i = icmp eq i32 %55, 0
  br i1 %tobool.not.i.i.i, label %do.end37.dev_sw_netstats_rx_add.exit_crit_edge, label %land.lhs.true.i.i.i

do.end37.dev_sw_netstats_rx_add.exit_crit_edge:   ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #17
  br label %dev_sw_netstats_rx_add.exit

land.lhs.true.i.i.i:                              ; preds = %do.end37
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %50, i32 0, i32 1
  %56 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %57, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !209
  %58 = tail call i32 @llvm.read_register.i32(metadata !184) #15
  %and.i.i.i.i = and i32 %58, -16384
  %59 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu.i.i.i = getelementptr inbounds %struct.thread_info, ptr %59, i32 0, i32 3
  %60 = ptrtoint ptr %cpu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %cpu.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %61
  %62 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx.i.i.i, align 4
  %add.i.i.i = add i32 %63, ptrtoint (ptr @lockdep_recursion to i32)
  %64 = inttoptr i32 %add.i.i.i to ptr
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile i32, ptr %64, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !210
  %67 = tail call i32 @llvm.read_register.i32(metadata !184) #15
  %and.i.i.i7.i.i.i = and i32 %67, -16384
  %68 = inttoptr i32 %and.i.i.i7.i.i.i to ptr
  %preempt_count.i.i8.i.i.i = getelementptr inbounds %struct.thread_info, ptr %68, i32 0, i32 1
  %69 = ptrtoint ptr %preempt_count.i.i8.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load volatile i32, ptr %preempt_count.i.i8.i.i.i, align 4
  %sub.i.i.i.i71 = add i32 %70, -1
  store volatile i32 %sub.i.i.i.i71, ptr %preempt_count.i.i8.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool20.not.i.i.i = icmp eq i32 %66, 0
  br i1 %tobool20.not.i.i.i, label %land.rhs.i.i.i, label %land.lhs.true.i.i.i.dev_sw_netstats_rx_add.exit_crit_edge

land.lhs.true.i.i.i.dev_sw_netstats_rx_add.exit_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dev_sw_netstats_rx_add.exit

land.rhs.i.i.i:                                   ; preds = %land.lhs.true.i.i.i
  %71 = tail call i32 @llvm.read_register.i32(metadata !184) #15
  %and.i.i.i.i.i = and i32 %71, -16384
  %72 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %72, i32 0, i32 1
  %73 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %cmp.i.i.i = icmp eq i32 %74, 0
  br i1 %cmp.i.i.i, label %land.rhs22.i.i.i, label %land.rhs.i.i.i.dev_sw_netstats_rx_add.exit_crit_edge

land.rhs.i.i.i.dev_sw_netstats_rx_add.exit_crit_edge: ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dev_sw_netstats_rx_add.exit

land.rhs22.i.i.i:                                 ; preds = %land.rhs.i.i.i
  %75 = tail call i32 @llvm.read_register.i32(metadata !184) #15
  %and.i.i.i9.i.i.i = and i32 %75, -16384
  %76 = inttoptr i32 %and.i.i.i9.i.i.i to ptr
  %preempt_count.i.i10.i.i.i = getelementptr inbounds %struct.thread_info, ptr %76, i32 0, i32 1
  %77 = ptrtoint ptr %preempt_count.i.i10.i.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load volatile i32, ptr %preempt_count.i.i10.i.i.i, align 4
  %add.i11.i.i.i = add i32 %78, 1
  store volatile i32 %add.i11.i.i.i, ptr %preempt_count.i.i10.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !211
  %79 = ptrtoint ptr %cpu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %cpu.i.i.i, align 4
  %arrayidx46.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %80
  %81 = ptrtoint ptr %arrayidx46.i.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %arrayidx46.i.i.i, align 4
  %add47.i.i.i = add i32 %82, ptrtoint (ptr @hardirqs_enabled to i32)
  %83 = inttoptr i32 %add47.i.i.i to ptr
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load volatile i32, ptr %83, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !212
  %86 = tail call i32 @llvm.read_register.i32(metadata !184) #15
  %and.i.i.i12.i.i.i = and i32 %86, -16384
  %87 = inttoptr i32 %and.i.i.i12.i.i.i to ptr
  %preempt_count.i.i13.i.i.i = getelementptr inbounds %struct.thread_info, ptr %87, i32 0, i32 1
  %88 = ptrtoint ptr %preempt_count.i.i13.i.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load volatile i32, ptr %preempt_count.i.i13.i.i.i, align 4
  %sub.i14.i.i.i = add i32 %89, -1
  store volatile i32 %sub.i14.i.i.i, ptr %preempt_count.i.i13.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %tobool54.not.i.i.i = icmp eq i32 %85, 0
  br i1 %tobool54.not.i.i.i, label %land.rhs22.i.i.i.dev_sw_netstats_rx_add.exit_crit_edge, label %land.rhs58.i.i.i

land.rhs22.i.i.i.dev_sw_netstats_rx_add.exit_crit_edge: ; preds = %land.rhs22.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dev_sw_netstats_rx_add.exit

land.rhs58.i.i.i:                                 ; preds = %land.rhs22.i.i.i
  %.b1.i.i.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i.i.i, label %land.rhs58.i.i.i.dev_sw_netstats_rx_add.exit_crit_edge, label %if.then.i.i.i, !prof !199

land.rhs58.i.i.i.dev_sw_netstats_rx_add.exit_crit_edge: ; preds = %land.rhs58.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dev_sw_netstats_rx_add.exit

if.then.i.i.i:                                    ; preds = %land.rhs58.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.57, i32 noundef 271, i32 noundef 9, ptr noundef null) #15
  br label %dev_sw_netstats_rx_add.exit

dev_sw_netstats_rx_add.exit:                      ; preds = %if.then.i.i.i, %land.rhs58.i.i.i.dev_sw_netstats_rx_add.exit_crit_edge, %land.rhs22.i.i.i.dev_sw_netstats_rx_add.exit_crit_edge, %land.rhs.i.i.i.dev_sw_netstats_rx_add.exit_crit_edge, %land.lhs.true.i.i.i.dev_sw_netstats_rx_add.exit_crit_edge, %do.end37.dev_sw_netstats_rx_add.exit_crit_edge
  %90 = ptrtoint ptr %48 to i32
  %add.i = add i32 %54, %90
  %91 = inttoptr i32 %add.i to ptr
  %syncp.i = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %91, i32 0, i32 4
  %92 = ptrtoint ptr %syncp.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %syncp.i, align 4
  %inc.i.i.i.i.i = add i32 %93, 1
  store i32 %inc.i.i.i.i.i, ptr %syncp.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !213
  %dep_map.i.i.i.i = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %91, i32 0, i32 4, i32 0, i32 1
  %94 = tail call ptr @llvm.returnaddress(i32 0) #15
  %95 = ptrtoint ptr %94 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %95) #15
  %conv.i72 = zext i32 %45 to i64
  %rx_bytes.i = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %91, i32 0, i32 1
  %96 = ptrtoint ptr %rx_bytes.i to i32
  call void @__asan_load8_noabort(i32 %96)
  %97 = load i64, ptr %rx_bytes.i, align 8
  %add2.i = add i64 %97, %conv.i72
  store i64 %add2.i, ptr %rx_bytes.i, align 8
  %98 = ptrtoint ptr %91 to i32
  call void @__asan_load8_noabort(i32 %98)
  %99 = load i64, ptr %91, align 32
  %inc.i = add i64 %99, 1
  store i64 %inc.i, ptr %91, align 32
  tail call void @lock_release(ptr noundef %dep_map.i.i.i.i, i32 noundef %95) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !214
  %100 = ptrtoint ptr %syncp.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %syncp.i, align 4
  %inc.i.i.i.i = add i32 %101, 1
  store i32 %inc.i.i.i.i, ptr %syncp.i, align 4
  %call40 = tail call i32 @netif_rx(ptr noundef %skb) #15
  br label %return

return:                                           ; preds = %dev_sw_netstats_rx_add.exit, %if.then17, %if.then5, %do.body1
  %retval.0 = phi i32 [ -1, %if.then17 ], [ 0, %dev_sw_netstats_rx_add.exit ], [ 1, %if.then5 ], [ 1, %do.body1 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__iptunnel_pull_header(ptr noundef, i32 noundef, i16 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #14

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdevice_queue(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gtp_net_init(ptr noundef %net) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @gtp_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0)
  %1 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %call, ptr %call, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %prev.i, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gtp_net_exit(ptr noundef %net) #4 align 64 {
entry:
  %list = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @gtp_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %list) #15
  %1 = getelementptr inbounds %struct.list_head, ptr %list, i32 0, i32 1
  %2 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %list, ptr %list, align 4
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %list, ptr %1, align 4
  call void @rtnl_lock() #15
  %4 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %4)
  %gtp.012 = load ptr, ptr %call, align 4
  %cmp.not13 = icmp eq ptr %gtp.012, %call
  br i1 %cmp.not13, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %gtp.014 = phi ptr [ %gtp.0, %for.body.for.body_crit_edge ], [ %gtp.012, %entry.for.body_crit_edge ]
  %dev = getelementptr inbounds %struct.gtp_dev, ptr %gtp.014, i32 0, i32 3
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  call void @gtp_dellink(ptr noundef %6, ptr noundef nonnull %list)
  %7 = ptrtoint ptr %gtp.014 to i32
  call void @__asan_load4_noabort(i32 %7)
  %gtp.0 = load ptr, ptr %gtp.014, align 4
  %cmp.not = icmp eq ptr %gtp.0, %call
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  call void @unregister_netdevice_many(ptr noundef nonnull %list) #15
  call void @rtnl_unlock() #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %list) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdevice_many(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #13

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #15

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #16 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 68)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #16 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 68)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind readonly }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #14 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #15 = { nounwind }
attributes #16 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #17 = { nomerge }
attributes #18 = { cold nounwind }
attributes #19 = { nounwind allocsize(2) }
attributes #20 = { nounwind allocsize(0) }
attributes #21 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !12, !13, !15, !17, !19, !21, !23, !24, !25, !26, !28, !29, !30, !32, !34, !36, !38, !40, !42, !43, !45, !47, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60, !61, !63, !64, !66, !67, !69, !70, !72, !73, !75, !77, !78, !80, !81, !82, !84, !85, !87, !88, !90, !91, !93, !95, !97, !99, !100, !102, !103, !104, !106, !107, !109, !111, !113, !114, !115, !117, !119, !121, !123, !125, !127, !128, !129, !131, !132, !134, !135, !136, !137, !139, !140, !141, !143, !144, !145, !147, !149, !150, !151, !153, !154, !156, !157, !159, !160, !162, !163, !165, !166, !167, !169, !170, !171, !173, !174, !176, !177, !179, !180, !182}
!llvm.named.register.sp = !{!184}
!llvm.module.flags = !{!185, !186, !187, !188, !189, !190, !191, !192}
!llvm.ident = !{!193}

!0 = !{ptr @__initcall__kmod_gtp__629_1446_gtp_init7, !1, !"__initcall__kmod_gtp__629_1446_gtp_init7", i1 false, i1 false}
!1 = !{!"../drivers/net/gtp.c", i32 1446, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/gtp.c", i32 1454, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @gtp_fini._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @gtp_fini._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @__exitcall_gtp_fini, !9, !"__exitcall_gtp_fini", i1 false, i1 false}
!9 = !{!"../drivers/net/gtp.c", i32 1456, i32 1}
!10 = !{ptr @__UNIQUE_ID_file630, !11, !"__UNIQUE_ID_file630", i1 false, i1 false}
!11 = !{!"../drivers/net/gtp.c", i32 1458, i32 1}
!12 = !{ptr @__UNIQUE_ID_license631, !11, !"__UNIQUE_ID_license631", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_author632, !14, !"__UNIQUE_ID_author632", i1 false, i1 false}
!14 = !{!"../drivers/net/gtp.c", i32 1459, i32 1}
!15 = !{ptr @__UNIQUE_ID_description633, !16, !"__UNIQUE_ID_description633", i1 false, i1 false}
!16 = !{!"../drivers/net/gtp.c", i32 1460, i32 1}
!17 = !{ptr @__UNIQUE_ID_alias634, !18, !"__UNIQUE_ID_alias634", i1 false, i1 false}
!18 = !{!"../drivers/net/gtp.c", i32 1461, i32 1}
!19 = !{ptr @__UNIQUE_ID_alias635, !20, !"__UNIQUE_ID_alias635", i1 false, i1 false}
!20 = !{!"../drivers/net/gtp.c", i32 1462, i32 1}
!21 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/gtp.c", i32 1434, i32 2}
!23 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @gtp_init._entry, !22, !"_entry", i1 false, i1 false}
!25 = !{ptr @gtp_init._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/gtp.c", i32 1443, i32 2}
!28 = !{ptr @gtp_init._entry.5, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @gtp_init._entry_ptr.7, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @gtp_h_initval, !31, !"gtp_h_initval", i1 false, i1 false}
!31 = !{!"../drivers/net/gtp.c", i32 84, i32 12}
!32 = !{ptr @gtp_genl_family, !33, !"gtp_genl_family", i1 false, i1 false}
!33 = !{!"../drivers/net/gtp.c", i32 1373, i32 27}
!34 = !{ptr @gtp_genl_policy, !35, !"gtp_genl_policy", i1 false, i1 false}
!35 = !{!"../drivers/net/gtp.c", i32 1339, i32 32}
!36 = !{ptr @gtp_genl_ops, !37, !"gtp_genl_ops", i1 false, i1 false}
!37 = !{!"../drivers/net/gtp.c", i32 1351, i32 36}
!38 = !{ptr @gtp_netdev_ops, !39, !"gtp_netdev_ops", i1 false, i1 false}
!39 = !{!"../drivers/net/gtp.c", i32 612, i32 36}
!40 = !{ptr @gtp_dev_init.__key, !41, !"__key", i1 false, i1 false}
!41 = !{!"../drivers/net/gtp.c", i32 376, i32 16}
!42 = !{ptr @.str.8, !41, !"<string literal>", i1 false, i1 false}
!43 = distinct !{null, !44, !"__already_done", i1 false, i1 false}
!44 = !{!"../drivers/net/gtp.c", i32 300, i32 3}
!45 = !{ptr @.str.9, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/gtp.c", i32 591, i32 3}
!47 = !{ptr @.str.10, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.11, !46, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @gtp_dev_xmit.__UNIQUE_ID_ddebug607, !46, !"__UNIQUE_ID_ddebug607", i1 false, i1 false}
!50 = distinct !{null, !51, !"__warned", i1 false, i1 false}
!51 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!52 = !{ptr @.str.12, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.13, !51, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.14, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/gtp.c", i32 504, i32 3}
!56 = !{ptr @.str.15, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @gtp_build_skb_ip4.__UNIQUE_ID_ddebug602, !55, !"__UNIQUE_ID_ddebug602", i1 false, i1 false}
!58 = !{ptr @.str.16, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/gtp.c", i32 508, i32 2}
!60 = !{ptr @gtp_build_skb_ip4.__UNIQUE_ID_ddebug603, !59, !"__UNIQUE_ID_ddebug603", i1 false, i1 false}
!61 = !{ptr @.str.17, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/gtp.c", i32 512, i32 3}
!63 = !{ptr @gtp_build_skb_ip4.__UNIQUE_ID_ddebug604, !62, !"__UNIQUE_ID_ddebug604", i1 false, i1 false}
!64 = !{ptr @.str.18, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/gtp.c", i32 519, i32 3}
!66 = !{ptr @gtp_build_skb_ip4.__UNIQUE_ID_ddebug605, !65, !"__UNIQUE_ID_ddebug605", i1 false, i1 false}
!67 = !{ptr @.str.19, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/gtp.c", i32 546, i32 3}
!69 = !{ptr @gtp_build_skb_ip4.__UNIQUE_ID_ddebug606, !68, !"__UNIQUE_ID_ddebug606", i1 false, i1 false}
!70 = distinct !{null, !71, !"__warned", i1 false, i1 false}
!71 = !{!"../drivers/net/gtp.c", i32 144, i32 2}
!72 = !{ptr @.str.20, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @.str.21, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../include/linux/skbuff.h", i32 1011, i32 2}
!75 = distinct !{null, !76, !"__warned", i1 false, i1 false}
!76 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!77 = !{ptr @.str.22, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @.str.23, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/gtp.c", i32 980, i32 4}
!80 = !{ptr @.str.24, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @gtp_pdp_add.__UNIQUE_ID_ddebug617, !79, !"__UNIQUE_ID_ddebug617", i1 false, i1 false}
!82 = !{ptr @.str.25, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/gtp.c", i32 983, i32 4}
!84 = !{ptr @gtp_pdp_add.__UNIQUE_ID_ddebug618, !83, !"__UNIQUE_ID_ddebug618", i1 false, i1 false}
!85 = !{ptr @.str.26, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/gtp.c", i32 1019, i32 3}
!87 = !{ptr @gtp_pdp_add.__UNIQUE_ID_ddebug619, !86, !"__UNIQUE_ID_ddebug619", i1 false, i1 false}
!88 = !{ptr @.str.27, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/gtp.c", i32 1024, i32 3}
!90 = !{ptr @gtp_pdp_add.__UNIQUE_ID_ddebug620, !89, !"__UNIQUE_ID_ddebug620", i1 false, i1 false}
!91 = distinct !{null, !92, !"__warned", i1 false, i1 false}
!92 = !{!"../drivers/net/gtp.c", i32 112, i32 2}
!93 = distinct !{null, !94, !"__warned", i1 false, i1 false}
!94 = !{!"../drivers/net/gtp.c", i32 128, i32 2}
!95 = !{ptr @.str.28, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../include/net/netlink.h", i32 991, i32 3}
!97 = distinct !{null, !98, !"__already_done", i1 false, i1 false}
!98 = !{!"../include/net/genetlink.h", i32 308, i32 6}
!99 = !{ptr @.str.29, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @.str.30, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/gtp.c", i32 1172, i32 3}
!102 = !{ptr @.str.31, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @gtp_genl_del_pdp.__UNIQUE_ID_ddebug621, !101, !"__UNIQUE_ID_ddebug621", i1 false, i1 false}
!104 = !{ptr @.str.32, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/net/gtp.c", i32 1175, i32 3}
!106 = !{ptr @gtp_genl_del_pdp.__UNIQUE_ID_ddebug622, !105, !"__UNIQUE_ID_ddebug622", i1 false, i1 false}
!107 = distinct !{null, !108, !"__warned", i1 false, i1 false}
!108 = !{!"../drivers/net/gtp.c", i32 1306, i32 2}
!109 = distinct !{null, !110, !"__warned", i1 false, i1 false}
!110 = !{!"../drivers/net/gtp.c", i32 1314, i32 4}
!111 = distinct !{null, !112, !"__warned", i1 false, i1 false}
!112 = !{!"../include/net/netns/generic.h", i32 45, i32 7}
!113 = !{ptr @.str.34, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @.str.35, !112, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @gtp_net_id, !116, !"gtp_net_id", i1 false, i1 false}
!116 = !{!"../drivers/net/gtp.c", i32 78, i32 21}
!117 = !{ptr @gtp_genl_mcgrps, !118, !"gtp_genl_mcgrps", i1 false, i1 false}
!118 = !{!"../drivers/net/gtp.c", i32 1192, i32 42}
!119 = !{ptr @gtp_link_ops, !120, !"gtp_link_ops", i1 false, i1 false}
!120 = !{!"../drivers/net/gtp.c", i32 761, i32 29}
!121 = !{ptr @gtp_type, !122, !"gtp_type", i1 false, i1 false}
!122 = !{!"../drivers/net/gtp.c", i32 619, i32 33}
!123 = !{ptr @gtp_policy, !124, !"gtp_policy", i1 false, i1 false}
!124 = !{!"../drivers/net/gtp.c", i32 724, i32 32}
!125 = !{ptr @.str.36, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/net/gtp.c", i32 690, i32 3}
!127 = !{ptr @.str.37, !126, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @gtp_newlink.__UNIQUE_ID_ddebug608, !126, !"__UNIQUE_ID_ddebug608", i1 false, i1 false}
!129 = !{ptr @.str.38, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/net/gtp.c", i32 698, i32 2}
!131 = !{ptr @gtp_newlink.__UNIQUE_ID_ddebug609, !130, !"__UNIQUE_ID_ddebug609", i1 false, i1 false}
!132 = !{ptr @.str.39, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/net/gtp.c", i32 808, i32 2}
!134 = !{ptr @.str.40, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @gtp_encap_enable_socket.__UNIQUE_ID_ddebug614, !133, !"__UNIQUE_ID_ddebug614", i1 false, i1 false}
!136 = !{ptr @.str.41, !133, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @.str.42, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/net/gtp.c", i32 812, i32 3}
!139 = !{ptr @gtp_encap_enable_socket.__UNIQUE_ID_ddebug615, !138, !"__UNIQUE_ID_ddebug615", i1 false, i1 false}
!140 = !{ptr @.str.43, !138, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @.str.44, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/net/gtp.c", i32 820, i32 3}
!143 = !{ptr @gtp_encap_enable_socket.__UNIQUE_ID_ddebug616, !142, !"__UNIQUE_ID_ddebug616", i1 false, i1 false}
!144 = !{ptr @.str.45, !142, !"<string literal>", i1 false, i1 false}
!145 = distinct !{null, !146, !"__warned", i1 false, i1 false}
!146 = !{!"../drivers/net/gtp.c", i32 335, i32 8}
!147 = !{ptr @.str.46, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/net/gtp.c", i32 339, i32 2}
!149 = !{ptr @.str.47, !148, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @gtp_encap_recv.__UNIQUE_ID_ddebug597, !148, !"__UNIQUE_ID_ddebug597", i1 false, i1 false}
!151 = !{ptr @.str.48, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/net/gtp.c", i32 343, i32 3}
!153 = !{ptr @gtp_encap_recv.__UNIQUE_ID_ddebug598, !152, !"__UNIQUE_ID_ddebug598", i1 false, i1 false}
!154 = !{ptr @.str.49, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/net/gtp.c", i32 347, i32 3}
!156 = !{ptr @gtp_encap_recv.__UNIQUE_ID_ddebug599, !155, !"__UNIQUE_ID_ddebug599", i1 false, i1 false}
!157 = !{ptr @.str.50, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/net/gtp.c", i32 356, i32 3}
!159 = !{ptr @gtp_encap_recv.__UNIQUE_ID_ddebug600, !158, !"__UNIQUE_ID_ddebug600", i1 false, i1 false}
!160 = !{ptr @.str.51, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/net/gtp.c", i32 361, i32 3}
!162 = !{ptr @gtp_encap_recv.__UNIQUE_ID_ddebug601, !161, !"__UNIQUE_ID_ddebug601", i1 false, i1 false}
!163 = !{ptr @.str.52, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/net/gtp.c", i32 239, i32 3}
!165 = !{ptr @.str.53, !164, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @gtp0_udp_encap_recv.__UNIQUE_ID_ddebug590, !164, !"__UNIQUE_ID_ddebug590", i1 false, i1 false}
!167 = !{ptr @.str.54, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/net/gtp.c", i32 186, i32 3}
!169 = !{ptr @.str.55, !168, !"<string literal>", i1 false, i1 false}
!170 = !{ptr @gtp_rx.__UNIQUE_ID_ddebug588, !168, !"__UNIQUE_ID_ddebug588", i1 false, i1 false}
!171 = !{ptr @.str.56, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/net/gtp.c", i32 197, i32 2}
!173 = !{ptr @gtp_rx.__UNIQUE_ID_ddebug589, !172, !"__UNIQUE_ID_ddebug589", i1 false, i1 false}
!174 = distinct !{null, !175, !"__already_done", i1 false, i1 false}
!175 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!176 = !{ptr @.str.57, !175, !"<string literal>", i1 false, i1 false}
!177 = !{ptr @.str.58, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/net/gtp.c", i32 281, i32 3}
!179 = !{ptr @gtp1u_udp_encap_recv.__UNIQUE_ID_ddebug591, !178, !"__UNIQUE_ID_ddebug591", i1 false, i1 false}
!180 = distinct !{null, !181, !"__warned", i1 false, i1 false}
!181 = !{!"../drivers/net/gtp.c", i32 717, i32 3}
!182 = !{ptr @gtp_net_ops, !183, !"gtp_net_ops", i1 false, i1 false}
!183 = !{!"../drivers/net/gtp.c", i32 1409, i32 33}
!184 = !{!"sp"}
!185 = !{i32 1, !"wchar_size", i32 2}
!186 = !{i32 1, !"min_enum_size", i32 4}
!187 = !{i32 8, !"branch-target-enforcement", i32 0}
!188 = !{i32 8, !"sign-return-address", i32 0}
!189 = !{i32 8, !"sign-return-address-all", i32 0}
!190 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!191 = !{i32 7, !"uwtable", i32 1}
!192 = !{i32 7, !"frame-pointer", i32 2}
!193 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!194 = !{i64 2149387980}
!195 = !{i64 2148985198, i64 2148985203, i64 2148985216, i64 2148985260, i64 2148985294, i64 2148985315}
!196 = !{i64 2149388246}
!197 = !{i64 2148373351, i64 2148373383, i64 2148373412, i64 2148373446, i64 2148373477, i64 2148373500}
!198 = !{!"branch_weights", i32 1, i32 2000}
!199 = !{!"branch_weights", i32 2000, i32 1}
!200 = !{i64 2148461376}
!201 = !{i64 2148375816, i64 2148375848, i64 2148375877, i64 2148375911, i64 2148375942, i64 2148375965}
!202 = !{i64 2149337490}
!203 = !{!"auto-init"}
!204 = !{i64 2151979768}
!205 = !{i64 2148457256}
!206 = !{i64 2148372541, i64 2148372573, i64 2148372602, i64 2148372636, i64 2148372667, i64 2148372690}
!207 = !{i64 2148457485}
!208 = !{i64 2151899332}
!209 = !{i64 2149895979}
!210 = !{i64 2149900911}
!211 = !{i64 2149922623}
!212 = !{i64 2149927515}
!213 = !{i64 2150003972}
!214 = !{i64 2150004297}
