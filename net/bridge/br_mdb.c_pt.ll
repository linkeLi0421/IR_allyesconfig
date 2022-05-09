; ModuleID = '/llk/IR_all_yes/net/bridge/br_mdb.c_pt.bc'
source_filename = "../net/bridge/br_mdb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.nla_policy = type { i8, i8, i16, %union.anon.52 }
%union.anon.52 = type { i32 }
%struct.anon.53 = type { i16, i16 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.net_bridge_mcast = type { ptr, ptr, i32, i32, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, %struct.hlist_head, %struct.timer_list, %struct.bridge_mcast_other_query, %struct.bridge_mcast_own_query, %struct.bridge_mcast_querier, %struct.hlist_head, %struct.timer_list, %struct.bridge_mcast_other_query, %struct.bridge_mcast_own_query, %struct.bridge_mcast_querier }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.bridge_mcast_other_query = type { %struct.timer_list, i32 }
%struct.bridge_mcast_own_query = type { %struct.timer_list, i32 }
%struct.bridge_mcast_querier = type { %struct.br_ip, i32, %struct.seqcount_spinlock }
%struct.br_ip = type { %union.anon.0, %union.anon.2, i16, i16 }
%union.anon.0 = type { %struct.in6_addr }
%struct.in6_addr = type { %union.anon.1 }
%union.anon.1 = type { [4 x i32] }
%union.anon.2 = type { %struct.in6_addr }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.net_bridge_vlan = type { %struct.rhash_head, %struct.rhash_head, i16, i16, i16, i8, ptr, %union.anon.5, %union.anon.148, %struct.br_tunnel_info, %union.anon.149, %struct.list_head, %struct.callback_head }
%struct.rhash_head = type { ptr }
%union.anon.5 = type { ptr }
%union.anon.148 = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.br_tunnel_info = type { i64, ptr }
%union.anon.149 = type { %struct.net_bridge_mcast }
%struct.list_head = type { ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.sk_buff = type { %union.anon.7, %union.anon.10, %union.anon.117, [48 x i8], %union.anon.118, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.120, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.7 = type { %struct.anon.8 }
%struct.anon.8 = type { ptr, ptr, %union.anon.9 }
%union.anon.9 = type { ptr }
%union.anon.10 = type { ptr }
%union.anon.117 = type { i64 }
%union.anon.118 = type { %struct.anon.119 }
%struct.anon.119 = type { i32, ptr }
%union.anon.120 = type { %struct.anon.121 }
%struct.anon.121 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.122, i32, i32, i32, i16, i16, %union.anon.124, i32, %union.anon.125, %union.anon.126, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.122 = type { i32 }
%union.anon.124 = type { i32 }
%union.anon.125 = type { i32 }
%union.anon.126 = type { i16 }
%struct.net_bridge = type { %struct.spinlock, %struct.spinlock, %struct.hlist_head, ptr, i32, i16, i16, ptr, %struct.rhashtable, %struct.list_head, %union.anon.147, i16, i16, %struct.bridge_id, %struct.bridge_id, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x i8], i32, %struct.net_bridge_mcast, ptr, i32, %struct.spinlock, %struct.rhashtable, %struct.rhashtable, %struct.hlist_head, %struct.hlist_head, %struct.work_struct, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.delayed_work, ptr, i32, i32, i32, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head }
%union.anon.147 = type { %struct.rt6_info }
%struct.rt6_info = type { %struct.dst_entry, ptr, i32, %struct.rt6key, %struct.rt6key, %struct.in6_addr, ptr, i32, %struct.list_head, ptr, i16 }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, ptr }
%struct.rt6key = type { %struct.in6_addr, i32 }
%struct.bridge_id = type { [2 x i8], [6 x i8] }
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.4 }
%union.anon.4 = type { i32 }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.net_bridge_mcast_port = type { ptr, ptr, %struct.bridge_mcast_own_query, %struct.timer_list, %struct.hlist_node, %struct.bridge_mcast_own_query, %struct.timer_list, %struct.hlist_node, i8 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.6, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.146, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.6 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.146 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
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
%struct.net_bridge_port = type { ptr, ptr, ptr, %struct.list_head, i32, ptr, ptr, i8, i8, i16, i8, i8, i16, i16, %struct.bridge_id, %struct.bridge_id, i32, i32, i32, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.kobject, %struct.callback_head, %struct.net_bridge_mcast_port, ptr, i32, i32, %struct.hlist_head, [16 x i8], ptr, i32, i32, %struct.netdev_phys_item_id, i16, i16, %struct.bridge_stp_xstats }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%struct.bridge_stp_xstats = type { i64, i64, i64, i64, i64, i64 }
%struct.net_bridge_port_group = type { ptr, %struct.net_bridge_port_group_sg_key, [6 x i8], i8, i8, i8, i8, %struct.hlist_head, i32, %struct.timer_list, %struct.timer_list, %struct.hlist_node, %struct.rb_root, %struct.rb_root, %struct.rhash_head, %struct.net_bridge_mcast_gc, %struct.callback_head }
%struct.net_bridge_port_group_sg_key = type { ptr, %struct.br_ip }
%struct.net_bridge_mcast_gc = type { %struct.hlist_node, ptr }
%struct.sock_common = type { %union.anon.11, %union.anon.13, %union.anon.14, i16, i8, i8, i32, %union.anon.16, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.107, [0 x i32], %union.anon.108, i16, i16, %union.anon.109, %struct.refcount_struct, [0 x i32], %union.anon.110 }
%union.anon.11 = type { i64 }
%union.anon.13 = type { i32 }
%union.anon.14 = type { i32 }
%union.anon.16 = type { %struct.hlist_node }
%struct.atomic64_t = type { i64 }
%union.anon.107 = type { i32 }
%union.anon.108 = type { %struct.hlist_node }
%union.anon.109 = type { i32 }
%union.anon.110 = type { i32 }
%struct.netlink_callback = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, i8, %union.anon.136 }
%union.anon.136 = type { [6 x i32], [24 x i8] }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.43, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.43 = type { %struct.anon.44 }
%struct.anon.44 = type { ptr, i32, i32, i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.60, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.60 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.55, i32, %struct.spinlock }
%union.anon.55 = type { %struct.anon.56 }
%struct.anon.56 = type { ptr, ptr }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [8 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_mpls = type { i32, i32, i32, ptr, ptr }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.netns_xdp = type { %struct.mutex, %struct.hlist_head }
%struct.netns_mctp = type { %struct.list_head, %struct.mutex, %struct.hlist_head, %struct.spinlock, %struct.hlist_head, i32, %struct.mutex, %struct.list_head }
%struct.netns_smc = type { ptr, %struct.mutex, ptr }
%struct.nlmsghdr = type { i32, i16, i16, i32, i32 }
%struct.net_bridge_mdb_entry = type { %struct.rhash_head, ptr, ptr, %struct.br_ip, i8, %struct.timer_list, %struct.hlist_node, %struct.net_bridge_mcast_gc, %struct.callback_head }
%struct.br_mdb_entry = type { i32, i8, i8, i16, %struct.anon.155 }
%struct.anon.155 = type { %union.anon.156, i16 }
%union.anon.156 = type { %struct.in6_addr }
%struct.net_bridge_vlan_group = type { %struct.rhashtable, %struct.rhashtable, %struct.list_head, i16, i16, i8 }
%struct.net_bridge_group_src = type { %struct.hlist_node, %struct.br_ip, ptr, i8, i8, %struct.timer_list, ptr, %struct.net_bridge_mcast_gc, %struct.callback_head }
%struct.nlattr = type { i16, i16 }
%struct.netlink_ext_ack = type { ptr, ptr, ptr, [20 x i8], i8 }

@br_rports_size.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"net/bridge/br_mdb.c\00", [44 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@br_rports_size.__warned.2 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@br_rports_fill_info.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.5 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@nbp_vlan_group.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"net/bridge/br_private.h\00", [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/netlink.h\00", [42 x i8] zeroinitializer }, align 32
@__mdb_fill_srcs.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@br_mdb_dump.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@br_mdb_valid_dump_req.__msg = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"bridge: Invalid header for mdb dump request\00", [52 x i8] zeroinitializer }, align 32
@br_mdb_valid_dump_req.__msg.9 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"bridge: Filtering by device index is not supported for mdb dump request\00", [56 x i8] zeroinitializer }, align 32
@br_mdb_valid_dump_req.__msg.10 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Invalid data after header in mdb dump request\00", [50 x i8] zeroinitializer }, align 32
@br_mdb_fill_info.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@br_mdb_fill_info.__warned.11 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.12 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@br_mdb_add.__msg = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"bridge: Bridge device is not running\00", [59 x i8] zeroinitializer }, align 32
@br_mdb_add.__msg.13 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"bridge: Bridge's multicast processing is disabled\00", [46 x i8] zeroinitializer }, align 32
@br_mdb_add.__msg.14 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"bridge: Port net device doesn't exist\00", [58 x i8] zeroinitializer }, align 32
@br_mdb_add.__msg.15 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"bridge: Net device is not a bridge port\00", [56 x i8] zeroinitializer }, align 32
@br_mdb_add.__msg.16 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"bridge: Port belongs to a different bridge device\00", [46 x i8] zeroinitializer }, align 32
@br_mdb_add.__msg.17 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"bridge: Port is in disabled state\00", [62 x i8] zeroinitializer }, align 32
@br_mdb_parse.__msg = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"bridge: Invalid bridge ifindex\00", [33 x i8] zeroinitializer }, align 32
@br_mdb_parse.__msg.18 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"bridge: Bridge device doesn't exist\00", [60 x i8] zeroinitializer }, align 32
@br_mdb_parse.__msg.19 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"bridge: Device is not a bridge\00", [33 x i8] zeroinitializer }, align 32
@br_mdb_parse.__msg.20 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"bridge: Missing MDBA_SET_ENTRY attribute\00", [55 x i8] zeroinitializer }, align 32
@br_mdb_parse.__msg.21 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"bridge: Invalid MDBA_SET_ENTRY attribute length\00", [48 x i8] zeroinitializer }, align 32
@__nlmsg_parse.__msg = internal constant [22 x i8] c"Invalid header length\00", align 1
@is_valid_mdb_entry.__msg = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"bridge: Zero entry ifindex is not allowed\00", [54 x i8] zeroinitializer }, align 32
@is_valid_mdb_entry.__msg.22 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"bridge: IPv4 entry group address is not multicast\00", [46 x i8] zeroinitializer }, align 32
@is_valid_mdb_entry.__msg.23 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"bridge: IPv4 entry group address is local multicast\00", [44 x i8] zeroinitializer }, align 32
@is_valid_mdb_entry.__msg.24 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"bridge: IPv6 entry group address is link-local all nodes\00", [39 x i8] zeroinitializer }, align 32
@is_valid_mdb_entry.__msg.25 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"bridge: L2 entry group is not multicast\00", [56 x i8] zeroinitializer }, align 32
@is_valid_mdb_entry.__msg.26 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"bridge: Unknown entry protocol\00", [33 x i8] zeroinitializer }, align 32
@is_valid_mdb_entry.__msg.27 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"bridge: Unknown entry state\00", [36 x i8] zeroinitializer }, align 32
@is_valid_mdb_entry.__msg.28 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"bridge: Invalid entry VLAN id\00", [34 x i8] zeroinitializer }, align 32
@nla_parse_nested.__msg = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"NLA_F_NESTED is missing\00", [40 x i8] zeroinitializer }, align 32
@br_mdbe_attrs_pol = internal constant { <{ %struct.nla_policy, { i8, i8, i16, { %struct.anon.53 } } }>, [16 x i8] } { <{ %struct.nla_policy, { i8, i8, i16, { %struct.anon.53 } } }> <{ %struct.nla_policy zeroinitializer, { i8, i8, i16, { %struct.anon.53 } } { i8 11, i8 1, i16 0, { %struct.anon.53 } { %struct.anon.53 { i16 4, i16 16 } } } }>, [16 x i8] zeroinitializer }, align 32
@is_valid_mdb_source.__msg = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"bridge: IPv4 invalid source address length\00", [53 x i8] zeroinitializer }, align 32
@is_valid_mdb_source.__msg.30 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"bridge: IPv4 multicast source address is not allowed\00", [43 x i8] zeroinitializer }, align 32
@is_valid_mdb_source.__msg.31 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"bridge: IPv6 invalid source address length\00", [53 x i8] zeroinitializer }, align 32
@is_valid_mdb_source.__msg.32 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"bridge: IPv6 multicast source address is not allowed\00", [43 x i8] zeroinitializer }, align 32
@is_valid_mdb_source.__msg.33 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"bridge: Invalid protocol used with source address\00", [46 x i8] zeroinitializer }, align 32
@br_port_get_rtnl.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@br_vlan_group.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@br_mdb_add_group.__msg = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"bridge: Flags are not allowed for host groups\00", [50 x i8] zeroinitializer }, align 32
@br_mdb_add_group.__msg.34 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"bridge: Groups with sources cannot be manually host joined\00", [37 x i8] zeroinitializer }, align 32
@br_mdb_add_group.__msg.35 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"bridge: Only permanent L2 entries allowed\00", [54 x i8] zeroinitializer }, align 32
@br_mdb_add_group.__msg.36 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"bridge: Group is already joined by host\00", [56 x i8] zeroinitializer }, align 32
@br_mdb_add_group.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@br_mdb_add_group.__msg.37 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"bridge: Group is already joined by port\00", [56 x i8] zeroinitializer }, align 32
@br_mdb_add_group.__msg.38 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"bridge: Couldn't allocate new port group\00", [55 x i8] zeroinitializer }, align 32
@__br_mdb_choose_context.__msg = internal constant [73 x i8] c"bridge: Cannot add an entry without a vlan when vlan snooping is enabled\00", align 1
@__br_mdb_choose_context.__msg.39 = internal constant [31 x i8] c"bridge: Vlan is not configured\00", align 1
@__br_mdb_choose_context.__msg.40 = internal constant [48 x i8] c"bridge: Vlan's multicast processing is disabled\00", align 1
@__br_mdb_del.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@__sancov_gen_cov_switch_values.41 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@__sancov_gen_cov_switch_values.42 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@__sancov_gen_cov_switch_values.43 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@__sancov_gen_cov_switch_values.44 = internal global [5 x i64] [i64 3, i64 16, i64 0, i64 2048, i64 34525]
@__sancov_gen_cov_switch_values.45 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@__sancov_gen_cov_switch_values.46 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@__sancov_gen_cov_switch_values.47 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@__sancov_gen_cov_switch_values.48 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@__sancov_gen_cov_switch_values.49 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@__sancov_gen_cov_switch_values.50 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 56, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 695, i32 2 }
@___asan_gen_.64 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 723, i32 2 }
@___asan_gen_.70 = private unnamed_addr constant [27 x i8] c"../net/bridge/br_private.h\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 1477, i32 9 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 991, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 387, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 393, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 397, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 352, i32 30 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 1000, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 1005, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 1012, i32 4 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 1018, i32 4 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 1023, i32 4 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 1027, i32 4 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 773, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 779, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 784, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 791, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 795, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 668, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 674, i32 4 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 678, i32 4 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 684, i32 4 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 691, i32 4 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 695, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 700, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 704, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant [25 x i8] c"../include/net/netlink.h\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 1208, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant [18 x i8] c"br_mdbe_attrs_pol\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 749, i32 32 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 717, i32 4 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 721, i32 4 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 730, i32 4 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 735, i32 4 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 742, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 879, i32 4 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 883, i32 4 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 889, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 904, i32 4 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 918, i32 4 }
@___asan_gen_.180 = private unnamed_addr constant [6 x i8] c"__msg\00", align 1
@___asan_gen_.181 = private constant [23 x i8] c"../net/bridge/br_mdb.c\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 934, i32 3 }
@llvm.compiler.used = appending global [44 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @br_mdb_valid_dump_req.__msg, ptr @br_mdb_valid_dump_req.__msg.9, ptr @br_mdb_valid_dump_req.__msg.10, ptr @.str.12, ptr @br_mdb_add.__msg, ptr @br_mdb_add.__msg.13, ptr @br_mdb_add.__msg.14, ptr @br_mdb_add.__msg.15, ptr @br_mdb_add.__msg.16, ptr @br_mdb_add.__msg.17, ptr @br_mdb_parse.__msg, ptr @br_mdb_parse.__msg.18, ptr @br_mdb_parse.__msg.19, ptr @br_mdb_parse.__msg.20, ptr @br_mdb_parse.__msg.21, ptr @is_valid_mdb_entry.__msg, ptr @is_valid_mdb_entry.__msg.22, ptr @is_valid_mdb_entry.__msg.23, ptr @is_valid_mdb_entry.__msg.24, ptr @is_valid_mdb_entry.__msg.25, ptr @is_valid_mdb_entry.__msg.26, ptr @is_valid_mdb_entry.__msg.27, ptr @is_valid_mdb_entry.__msg.28, ptr @nla_parse_nested.__msg, ptr @br_mdbe_attrs_pol, ptr @is_valid_mdb_source.__msg, ptr @is_valid_mdb_source.__msg.30, ptr @is_valid_mdb_source.__msg.31, ptr @is_valid_mdb_source.__msg.32, ptr @is_valid_mdb_source.__msg.33, ptr @br_mdb_add_group.__msg, ptr @br_mdb_add_group.__msg.34, ptr @br_mdb_add_group.__msg.35, ptr @br_mdb_add_group.__msg.36, ptr @br_mdb_add_group.__msg.37, ptr @br_mdb_add_group.__msg.38], section "llvm.metadata"
@0 = internal global [44 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_mdb_valid_dump_req.__msg to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_mdb_valid_dump_req.__msg.9 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_mdb_valid_dump_req.__msg.10 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_mdb_add.__msg to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_mdb_add.__msg.13 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_mdb_add.__msg.14 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_mdb_add.__msg.15 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_mdb_add.__msg.16 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_mdb_add.__msg.17 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_mdb_parse.__msg to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_mdb_parse.__msg.18 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_mdb_parse.__msg.19 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_mdb_parse.__msg.20 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_mdb_parse.__msg.21 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @is_valid_mdb_entry.__msg to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @is_valid_mdb_entry.__msg.22 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @is_valid_mdb_entry.__msg.23 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @is_valid_mdb_entry.__msg.24 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @is_valid_mdb_entry.__msg.25 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @is_valid_mdb_entry.__msg.26 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @is_valid_mdb_entry.__msg.27 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @is_valid_mdb_entry.__msg.28 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nla_parse_nested.__msg to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_mdbe_attrs_pol to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @is_valid_mdb_source.__msg to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @is_valid_mdb_source.__msg.30 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @is_valid_mdb_source.__msg.31 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @is_valid_mdb_source.__msg.32 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @is_valid_mdb_source.__msg.33 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_mdb_add_group.__msg to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_mdb_add_group.__msg.34 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_mdb_add_group.__msg.35 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_mdb_add_group.__msg.36 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_mdb_add_group.__msg.37 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_mdb_add_group.__msg.38 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @br_rports_size(ptr noundef %brmctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !116) #6
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !126
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #6
  %call.i = tail call zeroext i1 @rcu_is_watching() #6
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 696, ptr noundef nonnull @.str.4) #6
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call1 = tail call i32 @rcu_read_lock_any_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true4

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b96 = load i1, ptr @br_rports_size.__warned, align 1
  br i1 %.b96, label %land.lhs.true4.do.end_crit_edge, label %if.then

land.lhs.true4.do.end_crit_edge:                  ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @br_rports_size.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 57, ptr noundef nonnull @.str.1) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true4.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  %ip4_mc_router_list = getelementptr inbounds %struct.net_bridge_mcast, ptr %brmctx, i32 0, i32 14
  %4 = ptrtoint ptr %ip4_mc_router_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %ip4_mc_router_list, align 4
  %tobool11.not = icmp eq ptr %5, null
  %add.ptr = getelementptr i8, ptr %5, i32 -108
  %tobool13.not115122 = icmp eq ptr %add.ptr, null
  %tobool13.not115 = or i1 %tobool11.not, %tobool13.not115122
  br i1 %tobool13.not115, label %do.end.do.body30_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.do.body30_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body30

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.end.for.body_crit_edge
  %6 = phi ptr [ %8, %for.body.for.body_crit_edge ], [ %5, %do.end.for.body_crit_edge ]
  %size.0116 = phi i32 [ %add, %for.body.for.body_crit_edge ], [ 4, %do.end.for.body_crit_edge ]
  %add = add i32 %size.0116, 48
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %6, align 4
  %tobool22.not = icmp eq ptr %8, null
  %add.ptr26 = getelementptr i8, ptr %8, i32 -108
  %tobool13.not124 = icmp eq ptr %add.ptr26, null
  %tobool13.not = or i1 %tobool22.not, %tobool13.not124
  br i1 %tobool13.not, label %for.body.do.body30_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.do.body30_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body30

do.body30:                                        ; preds = %for.body.do.body30_crit_edge, %do.end.do.body30_crit_edge
  %size.0.lcssa = phi i32 [ 4, %do.end.do.body30_crit_edge ], [ %add, %for.body.do.body30_crit_edge ]
  %call31 = tail call i32 @rcu_read_lock_any_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %land.lhs.true33, label %do.body30.do.end41_crit_edge

do.body30.do.end41_crit_edge:                     ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end41

land.lhs.true33:                                  ; preds = %do.body30
  %call34 = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %land.lhs.true33.do.end41_crit_edge, label %land.lhs.true36

land.lhs.true33.do.end41_crit_edge:               ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end41

land.lhs.true36:                                  ; preds = %land.lhs.true33
  %.b9495 = load i1, ptr @br_rports_size.__warned.2, align 1
  br i1 %.b9495, label %land.lhs.true36.do.end41_crit_edge, label %if.then38

land.lhs.true36.do.end41_crit_edge:               ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end41

if.then38:                                        ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @br_rports_size.__warned.2, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 62, ptr noundef nonnull @.str.1) #6
  br label %do.end41

do.end41:                                         ; preds = %if.then38, %land.lhs.true36.do.end41_crit_edge, %land.lhs.true33.do.end41_crit_edge, %do.body30.do.end41_crit_edge
  %ip6_mc_router_list = getelementptr inbounds %struct.net_bridge_mcast, ptr %brmctx, i32 0, i32 19
  %9 = ptrtoint ptr %ip6_mc_router_list to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %ip6_mc_router_list, align 4
  %tobool50.not = icmp eq ptr %10, null
  %add.ptr54 = getelementptr i8, ptr %10, i32 -216
  %tobool59.not118123 = icmp eq ptr %add.ptr54, null
  %tobool59.not118 = or i1 %tobool50.not, %tobool59.not118123
  br i1 %tobool59.not118, label %do.end41.for.end80_crit_edge, label %do.end41.for.body60_crit_edge

do.end41.for.body60_crit_edge:                    ; preds = %do.end41
  br label %for.body60

do.end41.for.end80_crit_edge:                     ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end80

for.body60:                                       ; preds = %for.body60.for.body60_crit_edge, %do.end41.for.body60_crit_edge
  %11 = phi ptr [ %13, %for.body60.for.body60_crit_edge ], [ %10, %do.end41.for.body60_crit_edge ]
  %size.1119 = phi i32 [ %add62, %for.body60.for.body60_crit_edge ], [ %size.0.lcssa, %do.end41.for.body60_crit_edge ]
  %add62 = add i32 %size.1119, 48
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %11, align 4
  %tobool72.not = icmp eq ptr %13, null
  %add.ptr76 = getelementptr i8, ptr %13, i32 -216
  %tobool59.not125 = icmp eq ptr %add.ptr76, null
  %tobool59.not = or i1 %tobool72.not, %tobool59.not125
  br i1 %tobool59.not, label %for.body60.for.end80_crit_edge, label %for.body60.for.body60_crit_edge

for.body60.for.body60_crit_edge:                  ; preds = %for.body60
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body60

for.body60.for.end80_crit_edge:                   ; preds = %for.body60
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end80

for.end80:                                        ; preds = %for.body60.for.end80_crit_edge, %do.end41.for.end80_crit_edge
  %size.1.lcssa = phi i32 [ %size.0.lcssa, %do.end41.for.end80_crit_edge ], [ %add62, %for.body60.for.end80_crit_edge ]
  %call.i100 = tail call zeroext i1 @rcu_is_watching() #6
  br i1 %call.i100, label %for.end80.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i103

for.end80.rcu_read_unlock.exit_crit_edge:         ; preds = %for.end80
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit

land.lhs.true.i103:                               ; preds = %for.end80
  %call1.i101 = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i101)
  %tobool.not.i102 = icmp eq i32 %call1.i101, 0
  br i1 %tobool.not.i102, label %land.lhs.true.i103.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i105

land.lhs.true.i103.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i103
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit

land.lhs.true2.i105:                              ; preds = %land.lhs.true.i103
  %.b4.i104 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i104, label %land.lhs.true2.i105.rcu_read_unlock.exit_crit_edge, label %if.then.i106

land.lhs.true2.i105.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i105
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit

if.then.i106:                                     ; preds = %land.lhs.true2.i105
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 724, ptr noundef nonnull @.str.5) #6
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i106, %land.lhs.true2.i105.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i103.rcu_read_unlock.exit_crit_edge, %for.end80.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !127
  %14 = tail call i32 @llvm.read_register.i32(metadata !116) #6
  %and.i.i.i.i.i107 = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i.i.i107 to ptr
  %preempt_count.i.i.i.i108 = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %preempt_count.i.i.i.i108 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %preempt_count.i.i.i.i108, align 4
  %sub.i.i.i = add i32 %17, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i108, align 4
  tail call void @rcu_read_unlock_strict() #6
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #6
  ret i32 %size.1.lcssa
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @br_rports_fill_info(ptr noundef %skb, ptr noundef %brmctx) local_unnamed_addr #0 align 64 {
entry:
  %tmp.i159 = alloca i16, align 2
  %tmp.i157 = alloca i32, align 4
  %tmp.i155 = alloca i32, align 4
  %tmp.i153 = alloca i8, align 1
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %vlan = getelementptr inbounds %struct.net_bridge_mcast, ptr %brmctx, i32 0, i32 1
  %0 = ptrtoint ptr %vlan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vlan, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %vid2 = getelementptr inbounds %struct.net_bridge_vlan, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %vid2 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %vid2, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i16 [ %3, %cond.true ], [ 0, %entry.cond.end_crit_edge ]
  %multicast_router = getelementptr inbounds %struct.net_bridge_mcast, ptr %brmctx, i32 0, i32 6
  %4 = ptrtoint ptr %multicast_router to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %multicast_router, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool4.not = icmp eq i8 %5, 0
  br i1 %tobool4.not, label %cond.end.cleanup96_crit_edge, label %lor.lhs.false

cond.end.cleanup96_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup96

lor.lhs.false:                                    ; preds = %cond.end
  %ip4_mc_router_list.i = getelementptr inbounds %struct.net_bridge_mcast, ptr %brmctx, i32 0, i32 14
  %6 = ptrtoint ptr %ip4_mc_router_list.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %ip4_mc_router_list.i, align 4
  %tobool.not.i.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.not.i, label %br_rports_have_mc_router.exit, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

br_rports_have_mc_router.exit:                    ; preds = %lor.lhs.false
  %ip6_mc_router_list.i = getelementptr inbounds %struct.net_bridge_mcast, ptr %brmctx, i32 0, i32 19
  %8 = ptrtoint ptr %ip6_mc_router_list.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %ip6_mc_router_list.i, align 4
  %tobool.not.i4.i.not = icmp eq ptr %9, null
  br i1 %tobool.not.i4.i.not, label %br_rports_have_mc_router.exit.cleanup96_crit_edge, label %br_rports_have_mc_router.exit.if.end_crit_edge

br_rports_have_mc_router.exit.if.end_crit_edge:   ; preds = %br_rports_have_mc_router.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

br_rports_have_mc_router.exit.cleanup96_crit_edge: ; preds = %br_rports_have_mc_router.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup96

if.end:                                           ; preds = %br_rports_have_mc_router.exit.if.end_crit_edge, %lor.lhs.false.if.end_crit_edge
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %10 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tail.i.i, align 8
  %call1.i = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 0, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  %cmp184 = icmp eq ptr %11, null
  %cmp = select i1 %cmp.i, i1 true, i1 %cmp184
  br i1 %cmp, label %if.end.cleanup96_crit_edge, label %do.body

if.end.cleanup96_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup96

do.body:                                          ; preds = %if.end
  %call9 = tail call i32 @rcu_read_lock_any_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %land.lhs.true, label %do.body.do.end_crit_edge

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

land.lhs.true:                                    ; preds = %do.body
  %call11 = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true13

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

land.lhs.true13:                                  ; preds = %land.lhs.true
  %.b142 = load i1, ptr @br_rports_fill_info.__warned, align 1
  br i1 %.b142, label %land.lhs.true13.do.end_crit_edge, label %if.then15

land.lhs.true13.do.end_crit_edge:                 ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.then15:                                        ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @br_rports_fill_info.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 86, ptr noundef nonnull @.str.1) #6
  br label %do.end

do.end:                                           ; preds = %if.then15, %land.lhs.true13.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %do.body.do.end_crit_edge
  %12 = ptrtoint ptr %brmctx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %brmctx, align 4
  %port_list = getelementptr inbounds %struct.net_bridge, ptr %13, i32 0, i32 9
  %14 = ptrtoint ptr %port_list to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pn187 = load volatile ptr, ptr %port_list, align 4
  %cmp23.not189 = icmp eq ptr %.pn187, %port_list
  br i1 %cmp23.not189, label %do.end.for.end_crit_edge, label %for.body.lr.ph

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %cond)
  %tobool25.not = icmp eq i16 %cond, 0
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn190 = phi ptr [ %.pn187, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  br i1 %tobool25.not, label %if.else, label %if.then26

if.then26:                                        ; preds = %for.body
  %call.i = call zeroext i1 @lockdep_rtnl_is_held() #6
  br i1 %call.i, label %if.then26.nbp_vlan_group.exit_crit_edge, label %land.lhs.true.i

if.then26.nbp_vlan_group.exit_crit_edge:          ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #8
  br label %nbp_vlan_group.exit

land.lhs.true.i:                                  ; preds = %if.then26
  %call1.i143 = call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i143)
  %tobool.not.i = icmp eq i32 %call1.i143, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.nbp_vlan_group.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.nbp_vlan_group.exit_crit_edge:    ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nbp_vlan_group.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @nbp_vlan_group.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.nbp_vlan_group.exit_crit_edge, label %if.then.i

land.lhs.true2.i.nbp_vlan_group.exit_crit_edge:   ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nbp_vlan_group.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @nbp_vlan_group.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 1477, ptr noundef nonnull @.str.7) #6
  br label %nbp_vlan_group.exit

nbp_vlan_group.exit:                              ; preds = %if.then.i, %land.lhs.true2.i.nbp_vlan_group.exit_crit_edge, %land.lhs.true.i.nbp_vlan_group.exit_crit_edge, %if.then26.nbp_vlan_group.exit_crit_edge
  %vlgrp.i = getelementptr i8, ptr %.pn190, i32 12
  %15 = ptrtoint ptr %vlgrp.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %vlgrp.i, align 8
  %call28 = call ptr @br_vlan_find(ptr noundef %16, i16 noundef zeroext %cond) #6
  %tobool29.not = icmp eq ptr %call28, null
  %17 = getelementptr inbounds %struct.net_bridge_vlan, ptr %call28, i32 0, i32 10
  br i1 %tobool29.not, label %nbp_vlan_group.exit.for.inc_crit_edge, label %nbp_vlan_group.exit.if.end32_crit_edge

nbp_vlan_group.exit.if.end32_crit_edge:           ; preds = %nbp_vlan_group.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32

nbp_vlan_group.exit.for.inc_crit_edge:            ; preds = %nbp_vlan_group.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %multicast_ctx = getelementptr i8, ptr %.pn190, i32 348
  br label %if.end32

if.end32:                                         ; preds = %if.else, %nbp_vlan_group.exit.if.end32_crit_edge
  %pmctx.1 = phi ptr [ %17, %nbp_vlan_group.exit.if.end32_crit_edge ], [ %multicast_ctx, %if.else ]
  %ip4_mc_router_timer.i = getelementptr inbounds %struct.net_bridge_mcast_port, ptr %pmctx.1, i32 0, i32 3
  %call.i144 = call i32 @br_timer_value(ptr noundef %ip4_mc_router_timer.i) #6
  %pprev.i.i = getelementptr inbounds %struct.net_bridge_mcast_port, ptr %pmctx.1, i32 0, i32 4, i32 1
  %18 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.i = icmp ne ptr %19, null
  %ip6_mc_router_timer.i = getelementptr inbounds %struct.net_bridge_mcast_port, ptr %pmctx.1, i32 0, i32 6
  %call.i145 = call i32 @br_timer_value(ptr noundef %ip6_mc_router_timer.i) #6
  %pprev.i.i146 = getelementptr inbounds %struct.net_bridge_mcast_port, ptr %pmctx.1, i32 0, i32 7, i32 1
  %20 = ptrtoint ptr %pprev.i.i146 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pprev.i.i146, align 4
  %tobool.not.i.i147 = icmp ne ptr %21, null
  %brmerge = select i1 %tobool.not.i.i, i1 true, i1 %tobool.not.i.i147
  br i1 %brmerge, label %if.end40, label %if.end32.for.inc_crit_edge

if.end32.for.inc_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end40:                                         ; preds = %if.end32
  %22 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %tail.i.i, align 8
  %call1.i149 = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 0, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i149)
  %cmp.i150 = icmp slt i32 %call1.i149, 0
  %tobool42.not185 = icmp eq ptr %23, null
  %tobool42.not = select i1 %cmp.i150, i1 true, i1 %tobool42.not185
  br i1 %tobool42.not, label %if.end40.if.then.i.i171_crit_edge, label %if.end44

if.end40.if.then.i.i171_crit_edge:                ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i171

if.end44:                                         ; preds = %if.end40
  %dev = getelementptr i8, ptr %.pn190, i32 -8
  %24 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev, align 4
  %ifindex = getelementptr inbounds %struct.net_device, ptr %25, i32 0, i32 17
  %call45 = call i32 @nla_put_nohdr(ptr noundef %skb, i32 noundef 4, ptr noundef %ifindex) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %lor.lhs.false47, label %if.end44.if.then.i.i_crit_edge

if.end44.if.then.i.i_crit_edge:                   ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i

lor.lhs.false47:                                  ; preds = %if.end44
  %26 = call i32 @llvm.umax.i32(i32 %call.i144, i32 %call.i145)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #6
  %27 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %tmp.i, align 4
  %call.i152 = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %tmp.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i152)
  %tobool56.not = icmp eq i32 %call.i152, 0
  br i1 %tobool56.not, label %lor.lhs.false57, label %lor.lhs.false47.if.then.i.i_crit_edge

lor.lhs.false47.if.then.i.i_crit_edge:            ; preds = %lor.lhs.false47
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i

lor.lhs.false57:                                  ; preds = %lor.lhs.false47
  %multicast_router59 = getelementptr i8, ptr %.pn190, i32 572
  %28 = ptrtoint ptr %multicast_router59 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %multicast_router59, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i153) #6
  %30 = ptrtoint ptr %tmp.i153 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %tmp.i153, align 1
  %call.i154 = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 1, ptr noundef nonnull %tmp.i153) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i153) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i154)
  %tobool61.not = icmp eq i32 %call.i154, 0
  br i1 %tobool61.not, label %lor.lhs.false62, label %lor.lhs.false57.if.then.i.i_crit_edge

lor.lhs.false57.if.then.i.i_crit_edge:            ; preds = %lor.lhs.false57
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i

lor.lhs.false62:                                  ; preds = %lor.lhs.false57
  br i1 %tobool.not.i.i, label %land.lhs.true65, label %lor.lhs.false62.lor.lhs.false68_crit_edge

lor.lhs.false62.lor.lhs.false68_crit_edge:        ; preds = %lor.lhs.false62
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false68

land.lhs.true65:                                  ; preds = %lor.lhs.false62
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i155) #6
  %31 = ptrtoint ptr %tmp.i155 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %call.i144, ptr %tmp.i155, align 4
  %call.i156 = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 4, ptr noundef nonnull %tmp.i155) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i155) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i156)
  %tobool67.not = icmp eq i32 %call.i156, 0
  br i1 %tobool67.not, label %land.lhs.true65.lor.lhs.false68_crit_edge, label %land.lhs.true65.if.then.i.i_crit_edge

land.lhs.true65.if.then.i.i_crit_edge:            ; preds = %land.lhs.true65
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i

land.lhs.true65.lor.lhs.false68_crit_edge:        ; preds = %land.lhs.true65
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false68

lor.lhs.false68:                                  ; preds = %land.lhs.true65.lor.lhs.false68_crit_edge, %lor.lhs.false62.lor.lhs.false68_crit_edge
  br i1 %tobool.not.i.i147, label %land.lhs.true71, label %lor.lhs.false68.lor.lhs.false74_crit_edge

lor.lhs.false68.lor.lhs.false74_crit_edge:        ; preds = %lor.lhs.false68
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false74

land.lhs.true71:                                  ; preds = %lor.lhs.false68
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i157) #6
  %32 = ptrtoint ptr %tmp.i157 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %call.i145, ptr %tmp.i157, align 4
  %call.i158 = call i32 @nla_put(ptr noundef %skb, i32 noundef 4, i32 noundef 4, ptr noundef nonnull %tmp.i157) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i157) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i158)
  %tobool73.not = icmp eq i32 %call.i158, 0
  br i1 %tobool73.not, label %land.lhs.true71.lor.lhs.false74_crit_edge, label %land.lhs.true71.if.then.i.i_crit_edge

land.lhs.true71.if.then.i.i_crit_edge:            ; preds = %land.lhs.true71
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i

land.lhs.true71.lor.lhs.false74_crit_edge:        ; preds = %land.lhs.true71
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false74

lor.lhs.false74:                                  ; preds = %land.lhs.true71.lor.lhs.false74_crit_edge, %lor.lhs.false68.lor.lhs.false74_crit_edge
  br i1 %tobool25.not, label %lor.lhs.false74.if.end81_crit_edge, label %land.lhs.true77

lor.lhs.false74.if.end81_crit_edge:               ; preds = %lor.lhs.false74
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end81

land.lhs.true77:                                  ; preds = %lor.lhs.false74
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i159) #6
  %33 = ptrtoint ptr %tmp.i159 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %cond, ptr %tmp.i159, align 2
  %call.i160 = call i32 @nla_put(ptr noundef %skb, i32 noundef 5, i32 noundef 2, ptr noundef nonnull %tmp.i159) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i159) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i160)
  %tobool79.not = icmp eq i32 %call.i160, 0
  br i1 %tobool79.not, label %land.lhs.true77.if.end81_crit_edge, label %land.lhs.true77.if.then.i.i_crit_edge

land.lhs.true77.if.then.i.i_crit_edge:            ; preds = %land.lhs.true77
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i

land.lhs.true77.if.end81_crit_edge:               ; preds = %land.lhs.true77
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end81

if.then.i.i:                                      ; preds = %land.lhs.true77.if.then.i.i_crit_edge, %land.lhs.true71.if.then.i.i_crit_edge, %land.lhs.true65.if.then.i.i_crit_edge, %lor.lhs.false57.if.then.i.i_crit_edge, %lor.lhs.false47.if.then.i.i_crit_edge, %if.end44.if.then.i.i_crit_edge
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %34 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %data.i.i, align 4
  %cmp.i.i = icmp ugt ptr %35, %23
  br i1 %cmp.i.i, label %do.end.i.i, label %if.then.i.i.nla_nest_cancel.exit_crit_edge, !prof !128

if.then.i.i.nla_nest_cancel.exit_crit_edge:       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nla_nest_cancel.exit

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 991, i32 noundef 9, ptr noundef null) #6
  br label %nla_nest_cancel.exit

nla_nest_cancel.exit:                             ; preds = %do.end.i.i, %if.then.i.i.nla_nest_cancel.exit_crit_edge
  %36 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %23 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %37 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i) #6
  br label %if.then.i.i171

if.end81:                                         ; preds = %land.lhs.true77.if.end81_crit_edge, %lor.lhs.false74.if.end81_crit_edge
  %38 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %39 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %23 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %40 = ptrtoint ptr %23 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %conv.i, ptr %23, align 2
  br label %for.inc

for.inc:                                          ; preds = %if.end81, %if.end32.for.inc_crit_edge, %nbp_vlan_group.exit.for.inc_crit_edge
  %41 = ptrtoint ptr %.pn190 to i32
  call void @__asan_load4_noabort(i32 %41)
  %.pn = load volatile ptr, ptr %.pn190, align 4
  %42 = ptrtoint ptr %brmctx to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %brmctx, align 4
  %port_list22 = getelementptr inbounds %struct.net_bridge, ptr %43, i32 0, i32 9
  %cmp23.not = icmp eq ptr %.pn, %port_list22
  br i1 %cmp23.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end.for.end_crit_edge
  %44 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i164 = ptrtoint ptr %45 to i32
  %sub.ptr.rhs.cast.i165 = ptrtoint ptr %11 to i32
  %sub.ptr.sub.i166 = sub i32 %sub.ptr.lhs.cast.i164, %sub.ptr.rhs.cast.i165
  %conv.i167 = trunc i32 %sub.ptr.sub.i166 to i16
  %46 = ptrtoint ptr %11 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %conv.i167, ptr %11, align 2
  br label %cleanup96

if.then.i.i171:                                   ; preds = %nla_nest_cancel.exit, %if.end40.if.then.i.i171_crit_edge
  %data.i.i169 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %47 = ptrtoint ptr %data.i.i169 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %data.i.i169, align 4
  %cmp.i.i170 = icmp ugt ptr %48, %11
  br i1 %cmp.i.i170, label %do.end.i.i172, label %if.then.i.i171.nla_nest_cancel.exit177_crit_edge, !prof !128

if.then.i.i171.nla_nest_cancel.exit177_crit_edge: ; preds = %if.then.i.i171
  call void @__sanitizer_cov_trace_pc() #8
  br label %nla_nest_cancel.exit177

do.end.i.i172:                                    ; preds = %if.then.i.i171
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 991, i32 noundef 9, ptr noundef null) #6
  br label %nla_nest_cancel.exit177

nla_nest_cancel.exit177:                          ; preds = %do.end.i.i172, %if.then.i.i171.nla_nest_cancel.exit177_crit_edge
  %49 = ptrtoint ptr %data.i.i169 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %data.i.i169, align 4
  %sub.ptr.lhs.cast.i.i173 = ptrtoint ptr %11 to i32
  %sub.ptr.rhs.cast.i.i174 = ptrtoint ptr %50 to i32
  %sub.ptr.sub.i.i175 = sub i32 %sub.ptr.lhs.cast.i.i173, %sub.ptr.rhs.cast.i.i174
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i175) #6
  br label %cleanup96

cleanup96:                                        ; preds = %nla_nest_cancel.exit177, %for.end, %if.end.cleanup96_crit_edge, %br_rports_have_mc_router.exit.cleanup96_crit_edge, %cond.end.cleanup96_crit_edge
  %retval.0 = phi i32 [ -90, %nla_nest_cancel.exit177 ], [ 0, %for.end ], [ 0, %br_rports_have_mc_router.exit.cleanup96_crit_edge ], [ 0, %cond.end.cleanup96_crit_edge ], [ -90, %if.end.cleanup96_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @br_vlan_find(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @nbp_vlan_group(ptr nocapture noundef readonly %p) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call zeroext i1 @lockdep_rtnl_is_held() #6
  br i1 %call, label %entry.do.end_crit_edge, label %land.lhs.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true2

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %.b4 = load i1, ptr @nbp_vlan_group.__warned, align 1
  br i1 %.b4, label %land.lhs.true2.do.end_crit_edge, label %if.then

land.lhs.true2.do.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @nbp_vlan_group.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 1477, ptr noundef nonnull @.str.7) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true2.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %vlgrp = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 5
  %0 = ptrtoint ptr %vlgrp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vlgrp, align 8
  ret ptr %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put_nohdr(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @br_mdb_notify(ptr noundef %dev, ptr noundef %mp, ptr noundef %pg, i32 noundef %type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 127
  %0 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nd_net.i, align 4
  tail call void @br_switchdev_mdb_notify(ptr noundef %dev, ptr noundef %mp, ptr noundef %pg, i32 noundef %type) #6
  %tobool.not.i = icmp eq ptr %pg, null
  br i1 %tobool.not.i, label %entry.rtnl_mdb_nlmsg_size.exit_crit_edge, label %if.end.i

entry.rtnl_mdb_nlmsg_size.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtnl_mdb_nlmsg_size.exit

if.end.i:                                         ; preds = %entry
  %key.i = getelementptr inbounds %struct.net_bridge_port_group, ptr %pg, i32 0, i32 1
  %addr.i = getelementptr inbounds %struct.net_bridge_port_group, ptr %pg, i32 0, i32 1, i32 1
  %proto.i = getelementptr inbounds %struct.net_bridge_port_group, ptr %pg, i32 0, i32 1, i32 1, i32 2
  %2 = ptrtoint ptr %proto.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %proto.i, align 4
  %4 = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i16 %3, label %if.end.i.sw.epilog.i_crit_edge [
    i16 2048, label %sw.bb.i
    i16 -31011, label %sw.bb17.i
  ]

if.end.i.sw.epilog.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %if.end.i
  %5 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %addr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool7.not.i = icmp eq i32 %6, 0
  %spec.select.i = select i1 %tobool7.not.i, i32 56, i32 64
  %7 = ptrtoint ptr %key.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %key.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 8
  %multicast_igmp_version.i = getelementptr inbounds %struct.net_bridge, ptr %10, i32 0, i32 29, i32 5
  %11 = ptrtoint ptr %multicast_igmp_version.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %multicast_igmp_version.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %12)
  %cmp.i = icmp eq i8 %12, 2
  br i1 %cmp.i, label %sw.bb.i.rtnl_mdb_nlmsg_size.exit_crit_edge, label %sw.bb.i.sw.epilog.i_crit_edge

sw.bb.i.sw.epilog.i_crit_edge:                    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

sw.bb.i.rtnl_mdb_nlmsg_size.exit_crit_edge:       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtnl_mdb_nlmsg_size.exit

sw.bb17.i:                                        ; preds = %if.end.i
  %13 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %addr.i, align 4
  %arrayidx2.i.i = getelementptr %struct.net_bridge_port_group, ptr %pg, i32 0, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 1
  %15 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx2.i.i, align 4
  %or.i.i = or i32 %16, %14
  %arrayidx4.i.i = getelementptr %struct.net_bridge_port_group, ptr %pg, i32 0, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 2
  %17 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx4.i.i, align 4
  %or5.i.i = or i32 %or.i.i, %18
  %arrayidx7.i.i = getelementptr %struct.net_bridge_port_group, ptr %pg, i32 0, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 3
  %19 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx7.i.i, align 4
  %or8.i.i = or i32 %or5.i.i, %20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or8.i.i)
  %cmp.i.i = icmp eq i32 %or8.i.i, 0
  %spec.select81.i = select i1 %cmp.i.i, i32 56, i32 76
  %21 = ptrtoint ptr %key.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %key.i, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 8
  %multicast_mld_version.i = getelementptr inbounds %struct.net_bridge, ptr %24, i32 0, i32 29, i32 7
  %25 = ptrtoint ptr %multicast_mld_version.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %multicast_mld_version.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %26)
  %cmp31.i = icmp eq i8 %26, 1
  br i1 %cmp31.i, label %sw.bb17.i.rtnl_mdb_nlmsg_size.exit_crit_edge, label %sw.bb17.i.sw.epilog.i_crit_edge

sw.bb17.i.sw.epilog.i_crit_edge:                  ; preds = %sw.bb17.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

sw.bb17.i.rtnl_mdb_nlmsg_size.exit_crit_edge:     ; preds = %sw.bb17.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtnl_mdb_nlmsg_size.exit

sw.epilog.i:                                      ; preds = %sw.bb17.i.sw.epilog.i_crit_edge, %sw.bb.i.sw.epilog.i_crit_edge, %if.end.i.sw.epilog.i_crit_edge
  %addr_size.0.i = phi i32 [ 16, %if.end.i.sw.epilog.i_crit_edge ], [ 20, %sw.bb.i.sw.epilog.i_crit_edge ], [ 32, %sw.bb17.i.sw.epilog.i_crit_edge ]
  %nlmsg_size.2.i = phi i32 [ 56, %if.end.i.sw.epilog.i_crit_edge ], [ %spec.select.i, %sw.bb.i.sw.epilog.i_crit_edge ], [ %spec.select81.i, %sw.bb17.i.sw.epilog.i_crit_edge ]
  %src_list.i = getelementptr inbounds %struct.net_bridge_port_group, ptr %pg, i32 0, i32 7
  %27 = ptrtoint ptr %src_list.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile ptr, ptr %src_list.i, align 4
  %tobool.not.i.not.i = icmp eq ptr %28, null
  %spec.select82.v.i = select i1 %tobool.not.i.not.i, i32 8, i32 12
  %spec.select82.i = add nuw nsw i32 %spec.select82.v.i, %nlmsg_size.2.i
  br i1 %tobool.not.i.not.i, label %sw.epilog.i.rtnl_mdb_nlmsg_size.exit_crit_edge, label %sw.epilog.i.for.body.i_crit_edge

sw.epilog.i.for.body.i_crit_edge:                 ; preds = %sw.epilog.i
  br label %for.body.i

sw.epilog.i.rtnl_mdb_nlmsg_size.exit_crit_edge:   ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtnl_mdb_nlmsg_size.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %sw.epilog.i.for.body.i_crit_edge
  %nlmsg_size.485.i = phi i32 [ %add52.i, %for.body.i.for.body.i_crit_edge ], [ %spec.select82.i, %sw.epilog.i.for.body.i_crit_edge ]
  %ent.084.i = phi ptr [ %30, %for.body.i.for.body.i_crit_edge ], [ %28, %sw.epilog.i.for.body.i_crit_edge ]
  %add52.i = add i32 %nlmsg_size.485.i, %addr_size.0.i
  %29 = ptrtoint ptr %ent.084.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ent.084.i, align 4
  %tobool46.not.i = icmp eq ptr %30, null
  br i1 %tobool46.not.i, label %for.body.i.rtnl_mdb_nlmsg_size.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.body.i.rtnl_mdb_nlmsg_size.exit_crit_edge:    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtnl_mdb_nlmsg_size.exit

rtnl_mdb_nlmsg_size.exit:                         ; preds = %for.body.i.rtnl_mdb_nlmsg_size.exit_crit_edge, %sw.epilog.i.rtnl_mdb_nlmsg_size.exit_crit_edge, %sw.bb17.i.rtnl_mdb_nlmsg_size.exit_crit_edge, %sw.bb.i.rtnl_mdb_nlmsg_size.exit_crit_edge, %entry.rtnl_mdb_nlmsg_size.exit_crit_edge
  %nlmsg_size.5.i = phi i32 [ %spec.select81.i, %sw.bb17.i.rtnl_mdb_nlmsg_size.exit_crit_edge ], [ %spec.select.i, %sw.bb.i.rtnl_mdb_nlmsg_size.exit_crit_edge ], [ 48, %entry.rtnl_mdb_nlmsg_size.exit_crit_edge ], [ %spec.select82.i, %sw.epilog.i.rtnl_mdb_nlmsg_size.exit_crit_edge ], [ %add52.i, %for.body.i.rtnl_mdb_nlmsg_size.exit_crit_edge ]
  %sub.i.i = add i32 %nlmsg_size.5.i, 19
  %and.i.i = and i32 %sub.i.i, -4
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef %and.i.i, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #6
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %rtnl_mdb_nlmsg_size.exit.errout_crit_edge, label %if.end

rtnl_mdb_nlmsg_size.exit.errout_crit_edge:        ; preds = %rtnl_mdb_nlmsg_size.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %errout

if.end:                                           ; preds = %rtnl_mdb_nlmsg_size.exit
  %data_len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 7
  %31 = ptrtoint ptr %data_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %data_len.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.i.not.i.i.i = icmp eq i32 %32, 0
  br i1 %tobool.i.not.i.i.i, label %skb_tailroom.exit.i.i, label %if.end.if.then4_crit_edge

if.end.if.then4_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then4

skb_tailroom.exit.i.i:                            ; preds = %if.end
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 17
  %33 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %end.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %35 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %34 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %36 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %sub.ptr.sub.i.i.i)
  %cmp.i.i19 = icmp slt i32 %sub.ptr.sub.i.i.i, 24
  br i1 %cmp.i.i19, label %skb_tailroom.exit.i.i.if.then4_crit_edge, label %nlmsg_put.exit.i, !prof !128

skb_tailroom.exit.i.i.if.then4_crit_edge:         ; preds = %skb_tailroom.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then4

nlmsg_put.exit.i:                                 ; preds = %skb_tailroom.exit.i.i
  %call3.i.i = tail call ptr @__nlmsg_put(ptr noundef nonnull %call.i.i, i32 noundef 0, i32 noundef 0, i32 noundef %type, i32 noundef 8, i32 noundef 0) #6
  %tobool.not.i20 = icmp eq ptr %call3.i.i, null
  br i1 %tobool.not.i20, label %nlmsg_put.exit.i.if.then4_crit_edge, label %if.end.i22

nlmsg_put.exit.i.if.then4_crit_edge:              ; preds = %nlmsg_put.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then4

if.end.i22:                                       ; preds = %nlmsg_put.exit.i
  %add.ptr.i.i = getelementptr i8, ptr %call3.i.i, i32 16
  %37 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_storeN_noabort(i32 %37, i32 8)
  store i64 504403158265495552, ptr %add.ptr.i.i, align 4
  %ifindex.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 17
  %38 = ptrtoint ptr %ifindex.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %ifindex.i, align 4
  %ifindex2.i = getelementptr i8, ptr %call3.i.i, i32 20
  %40 = ptrtoint ptr %ifindex2.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %ifindex2.i, align 4
  %41 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %tail.i.i.i, align 8
  %call1.i.i = tail call i32 @nla_put(ptr noundef nonnull %call.i.i, i32 noundef 1, i32 noundef 0, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i37.i = icmp slt i32 %call1.i.i, 0
  %cmp64.i = icmp eq ptr %42, null
  %cmp.i21 = select i1 %cmp.i37.i, i1 true, i1 %cmp64.i
  br i1 %cmp.i21, label %if.end.i22.if.then.i.i.i_crit_edge, label %if.end5.i

if.end.i22.if.then.i.i.i_crit_edge:               ; preds = %if.end.i22
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i.i

if.end5.i:                                        ; preds = %if.end.i22
  %43 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %tail.i.i.i, align 8
  %call1.i39.i = tail call i32 @nla_put(ptr noundef nonnull %call.i.i, i32 noundef 1, i32 noundef 0, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i39.i)
  %cmp.i40.i = icmp slt i32 %call1.i39.i, 0
  %cmp765.i = icmp eq ptr %44, null
  %cmp7.i = select i1 %cmp.i40.i, i1 true, i1 %cmp765.i
  br i1 %cmp7.i, label %if.end5.i.end.i_crit_edge, label %if.end9.i

if.end5.i.end.i_crit_edge:                        ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %end.i

if.end9.i:                                        ; preds = %if.end5.i
  %call10.i = tail call fastcc i32 @__mdb_fill_info(ptr noundef nonnull %call.i.i, ptr noundef %mp, ptr noundef %pg) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %if.end5, label %if.end9.i.end.i_crit_edge

if.end9.i.end.i_crit_edge:                        ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %end.i

end.i:                                            ; preds = %if.end9.i.end.i_crit_edge, %if.end5.i.end.i_crit_edge
  %45 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i53.i = ptrtoint ptr %46 to i32
  %sub.ptr.rhs.cast.i54.i = ptrtoint ptr %42 to i32
  %sub.ptr.sub.i55.i = sub i32 %sub.ptr.lhs.cast.i53.i, %sub.ptr.rhs.cast.i54.i
  %conv.i56.i = trunc i32 %sub.ptr.sub.i55.i to i16
  %47 = ptrtoint ptr %42 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %conv.i56.i, ptr %42, align 2
  br label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %end.i, %if.end.i22.if.then.i.i.i_crit_edge
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %48 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %data.i.i.i, align 4
  %cmp.i.i.i = icmp ugt ptr %49, %call3.i.i
  br i1 %cmp.i.i.i, label %do.end.i.i.i, label %if.then.i.i.i.nlmsg_cancel.exit.i_crit_edge, !prof !128

if.then.i.i.i.nlmsg_cancel.exit.i_crit_edge:      ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nlmsg_cancel.exit.i

do.end.i.i.i:                                     ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 991, i32 noundef 9, ptr noundef null) #6
  br label %nlmsg_cancel.exit.i

nlmsg_cancel.exit.i:                              ; preds = %do.end.i.i.i, %if.then.i.i.i.nlmsg_cancel.exit.i_crit_edge
  %50 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %data.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i57.i = ptrtoint ptr %call3.i.i to i32
  %sub.ptr.rhs.cast.i.i58.i = ptrtoint ptr %51 to i32
  %sub.ptr.sub.i.i59.i = sub i32 %sub.ptr.lhs.cast.i.i57.i, %sub.ptr.rhs.cast.i.i58.i
  tail call void @skb_trim(ptr noundef nonnull %call.i.i, i32 noundef %sub.ptr.sub.i.i59.i) #6
  br label %if.then4

if.then4:                                         ; preds = %nlmsg_cancel.exit.i, %nlmsg_put.exit.i.if.then4_crit_edge, %skb_tailroom.exit.i.i.if.then4_crit_edge, %if.end.if.then4_crit_edge
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i.i, i32 noundef 0) #6
  br label %errout

if.end5:                                          ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  %52 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %53 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %44 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i = trunc i32 %sub.ptr.sub.i.i to i16
  %54 = ptrtoint ptr %44 to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %conv.i.i, ptr %44, align 2
  %55 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i44.i = ptrtoint ptr %55 to i32
  %sub.ptr.rhs.cast.i45.i = ptrtoint ptr %42 to i32
  %sub.ptr.sub.i46.i = sub i32 %sub.ptr.lhs.cast.i44.i, %sub.ptr.rhs.cast.i45.i
  %conv.i47.i = trunc i32 %sub.ptr.sub.i46.i to i16
  %56 = ptrtoint ptr %42 to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %conv.i47.i, ptr %42, align 2
  %57 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i49.i = ptrtoint ptr %57 to i32
  %sub.ptr.rhs.cast.i50.i = ptrtoint ptr %call3.i.i to i32
  %sub.ptr.sub.i51.i = sub i32 %sub.ptr.lhs.cast.i49.i, %sub.ptr.rhs.cast.i50.i
  %58 = ptrtoint ptr %call3.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %sub.ptr.sub.i51.i, ptr %call3.i.i, align 4
  tail call void @rtnl_notify(ptr noundef nonnull %call.i.i, ptr noundef %1, i32 noundef 0, i32 noundef 26, ptr noundef null, i32 noundef 2592) #6
  br label %cleanup

errout:                                           ; preds = %if.then4, %rtnl_mdb_nlmsg_size.exit.errout_crit_edge
  %err.0 = phi i32 [ -90, %if.then4 ], [ -105, %rtnl_mdb_nlmsg_size.exit.errout_crit_edge ]
  tail call void @rtnl_set_sk_err(ptr noundef %1, i32 noundef 26, i32 noundef %err.0) #6
  br label %cleanup

cleanup:                                          ; preds = %errout, %if.end5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @br_switchdev_mdb_notify(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_notify(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_set_sk_err(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @br_rtr_notify(ptr nocapture noundef readonly %dev, ptr noundef readonly %pmctx, i32 noundef %type) local_unnamed_addr #0 align 64 {
entry:
  %tmp.i.i = alloca i16, align 2
  %ifindex.addr.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 127
  %0 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nd_net.i, align 4
  %tobool.not = icmp eq ptr %pmctx, null
  br i1 %tobool.not, label %entry.cond.end8_crit_edge, label %land.lhs.true

entry.cond.end8_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end8

land.lhs.true:                                    ; preds = %entry
  %2 = ptrtoint ptr %pmctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pmctx, align 4
  %dev1 = getelementptr inbounds %struct.net_bridge_port, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev1, align 4
  %ifindex2 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 17
  %6 = ptrtoint ptr %ifindex2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ifindex2, align 4
  %vlan.i = getelementptr inbounds %struct.net_bridge_mcast_port, ptr %pmctx, i32 0, i32 1
  %8 = ptrtoint ptr %vlan.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vlan.i, align 4
  %tobool.i.not = icmp eq ptr %9, null
  br i1 %tobool.i.not, label %land.lhs.true.cond.end8_crit_edge, label %cond.true5

land.lhs.true.cond.end8_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end8

cond.true5:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %vid6 = getelementptr inbounds %struct.net_bridge_vlan, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %vid6 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %vid6, align 8
  br label %cond.end8

cond.end8:                                        ; preds = %cond.true5, %land.lhs.true.cond.end8_crit_edge, %entry.cond.end8_crit_edge
  %cond34 = phi i32 [ %7, %cond.true5 ], [ %7, %land.lhs.true.cond.end8_crit_edge ], [ 0, %entry.cond.end8_crit_edge ]
  %cond9 = phi i16 [ %11, %cond.true5 ], [ 0, %land.lhs.true.cond.end8_crit_edge ], [ 0, %entry.cond.end8_crit_edge ]
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef 40, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #6
  %tobool13.not = icmp eq ptr %call.i.i, null
  br i1 %tobool13.not, label %cond.end8.errout_crit_edge, label %if.end

cond.end8.errout_crit_edge:                       ; preds = %cond.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %errout

if.end:                                           ; preds = %cond.end8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ifindex.addr.i)
  %12 = ptrtoint ptr %ifindex.addr.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %cond34, ptr %ifindex.addr.i, align 4
  %data_len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 7
  %13 = ptrtoint ptr %data_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %data_len.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.i.not.i.i.i = icmp eq i32 %14, 0
  br i1 %tobool.i.not.i.i.i, label %skb_tailroom.exit.i.i, label %if.end.if.then16_crit_edge

if.end.if.then16_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then16

skb_tailroom.exit.i.i:                            ; preds = %if.end
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 17
  %15 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %end.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %17 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %16 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %18 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %sub.ptr.sub.i.i.i)
  %cmp.i.i = icmp slt i32 %sub.ptr.sub.i.i.i, 24
  br i1 %cmp.i.i, label %skb_tailroom.exit.i.i.if.then16_crit_edge, label %nlmsg_put.exit.i, !prof !128

skb_tailroom.exit.i.i.if.then16_crit_edge:        ; preds = %skb_tailroom.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then16

nlmsg_put.exit.i:                                 ; preds = %skb_tailroom.exit.i.i
  %call3.i.i = tail call ptr @__nlmsg_put(ptr noundef nonnull %call.i.i, i32 noundef 0, i32 noundef 0, i32 noundef %type, i32 noundef 8, i32 noundef 0) #6
  %tobool.not.i = icmp eq ptr %call3.i.i, null
  br i1 %tobool.not.i, label %nlmsg_put.exit.i.if.then16_crit_edge, label %if.end.i

nlmsg_put.exit.i.if.then16_crit_edge:             ; preds = %nlmsg_put.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then16

if.end.i:                                         ; preds = %nlmsg_put.exit.i
  %add.ptr.i.i = getelementptr i8, ptr %call3.i.i, i32 16
  %19 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_storeN_noabort(i32 %19, i32 8)
  store i64 504403158265495552, ptr %add.ptr.i.i, align 4
  %ifindex2.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 17
  %20 = ptrtoint ptr %ifindex2.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ifindex2.i, align 4
  %ifindex3.i = getelementptr i8, ptr %call3.i.i, i32 20
  %22 = ptrtoint ptr %ifindex3.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %ifindex3.i, align 4
  %23 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %tail.i.i.i, align 8
  %call1.i.i = tail call i32 @nla_put(ptr noundef nonnull %call.i.i, i32 noundef 2, i32 noundef 0, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i2.i = icmp slt i32 %call1.i.i, 0
  %tobool5.not48.i = icmp eq ptr %24, null
  %tobool5.not.i = select i1 %cmp.i2.i, i1 true, i1 %tobool5.not48.i
  br i1 %tobool5.not.i, label %if.end.i.if.then.i.i38.i_crit_edge, label %if.end7.i

if.end.i.if.then.i.i38.i_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i38.i

if.end7.i:                                        ; preds = %if.end.i
  %25 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %tail.i.i.i, align 8
  %call1.i4.i = tail call i32 @nla_put(ptr noundef nonnull %call.i.i, i32 noundef 1, i32 noundef 0, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i4.i)
  %cmp.i5.i = icmp slt i32 %call1.i4.i, 0
  %tobool9.not49.i = icmp eq ptr %26, null
  %tobool9.not.i = select i1 %cmp.i5.i, i1 true, i1 %tobool9.not49.i
  br i1 %tobool9.not.i, label %if.end7.i.end.i_crit_edge, label %if.end11.i

if.end7.i.end.i_crit_edge:                        ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %end.i

if.end11.i:                                       ; preds = %if.end7.i
  %call12.i = call i32 @nla_put_nohdr(ptr noundef nonnull %call.i.i, i32 noundef 4, ptr noundef nonnull %ifindex.addr.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %if.end15.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.end11.i
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %27 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %data.i.i.i, align 4
  %cmp.i.i.i = icmp ugt ptr %28, %26
  br i1 %cmp.i.i.i, label %if.then.i.i.i.end.sink.split.sink.split.i_crit_edge, label %if.then.i.i.i.end.sink.split.i_crit_edge, !prof !128

if.then.i.i.i.end.sink.split.i_crit_edge:         ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %end.sink.split.i

if.then.i.i.i.end.sink.split.sink.split.i_crit_edge: ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %end.sink.split.sink.split.i

if.end15.i:                                       ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %cond9)
  %tobool16.not.i = icmp eq i16 %cond9, 0
  br i1 %tobool16.not.i, label %if.end15.i.if.end17_crit_edge, label %land.lhs.true.i

if.end15.i.if.end17_crit_edge:                    ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

land.lhs.true.i:                                  ; preds = %if.end15.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i.i) #6
  %29 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %cond9, ptr %tmp.i.i, align 2
  %call.i.i32 = call i32 @nla_put(ptr noundef nonnull %call.i.i, i32 noundef 5, i32 noundef 2, ptr noundef nonnull %tmp.i.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i32)
  %tobool18.not.i = icmp eq i32 %call.i.i32, 0
  br i1 %tobool18.not.i, label %land.lhs.true.i.if.end17_crit_edge, label %if.then.i.i13.i

land.lhs.true.i.if.end17_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

if.then.i.i13.i:                                  ; preds = %land.lhs.true.i
  %data.i.i11.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %30 = ptrtoint ptr %data.i.i11.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %data.i.i11.i, align 4
  %cmp.i.i12.i = icmp ugt ptr %31, %26
  br i1 %cmp.i.i12.i, label %if.then.i.i13.i.end.sink.split.sink.split.i_crit_edge, label %if.then.i.i13.i.end.sink.split.i_crit_edge, !prof !128

if.then.i.i13.i.end.sink.split.i_crit_edge:       ; preds = %if.then.i.i13.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %end.sink.split.i

if.then.i.i13.i.end.sink.split.sink.split.i_crit_edge: ; preds = %if.then.i.i13.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %end.sink.split.sink.split.i

end.sink.split.sink.split.i:                      ; preds = %if.then.i.i13.i.end.sink.split.sink.split.i_crit_edge, %if.then.i.i.i.end.sink.split.sink.split.i_crit_edge
  %data.i.i11.sink.ph.i = phi ptr [ %data.i.i.i, %if.then.i.i.i.end.sink.split.sink.split.i_crit_edge ], [ %data.i.i11.i, %if.then.i.i13.i.end.sink.split.sink.split.i_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 991, i32 noundef 9, ptr noundef null) #6
  br label %end.sink.split.i

end.sink.split.i:                                 ; preds = %end.sink.split.sink.split.i, %if.then.i.i13.i.end.sink.split.i_crit_edge, %if.then.i.i.i.end.sink.split.i_crit_edge
  %data.i.i11.sink.i = phi ptr [ %data.i.i.i, %if.then.i.i.i.end.sink.split.i_crit_edge ], [ %data.i.i11.i, %if.then.i.i13.i.end.sink.split.i_crit_edge ], [ %data.i.i11.sink.ph.i, %end.sink.split.sink.split.i ]
  %32 = ptrtoint ptr %data.i.i11.sink.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %data.i.i11.sink.i, align 4
  %sub.ptr.lhs.cast.i.i15.i = ptrtoint ptr %26 to i32
  %sub.ptr.rhs.cast.i.i16.i = ptrtoint ptr %33 to i32
  %sub.ptr.sub.i.i17.i = sub i32 %sub.ptr.lhs.cast.i.i15.i, %sub.ptr.rhs.cast.i.i16.i
  call void @skb_trim(ptr noundef nonnull %call.i.i, i32 noundef %sub.ptr.sub.i.i17.i) #6
  br label %end.i

end.i:                                            ; preds = %end.sink.split.i, %if.end7.i.end.i_crit_edge
  %34 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i31.i = ptrtoint ptr %35 to i32
  %sub.ptr.rhs.cast.i32.i = ptrtoint ptr %24 to i32
  %sub.ptr.sub.i33.i = sub i32 %sub.ptr.lhs.cast.i31.i, %sub.ptr.rhs.cast.i32.i
  %conv.i34.i = trunc i32 %sub.ptr.sub.i33.i to i16
  %36 = ptrtoint ptr %24 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %conv.i34.i, ptr %24, align 2
  br label %if.then.i.i38.i

if.then.i.i38.i:                                  ; preds = %end.i, %if.end.i.if.then.i.i38.i_crit_edge
  %data.i.i36.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %37 = ptrtoint ptr %data.i.i36.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %data.i.i36.i, align 4
  %cmp.i.i37.i = icmp ugt ptr %38, %call3.i.i
  br i1 %cmp.i.i37.i, label %do.end.i.i39.i, label %if.then.i.i38.i.nlmsg_cancel.exit.i_crit_edge, !prof !128

if.then.i.i38.i.nlmsg_cancel.exit.i_crit_edge:    ; preds = %if.then.i.i38.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nlmsg_cancel.exit.i

do.end.i.i39.i:                                   ; preds = %if.then.i.i38.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 991, i32 noundef 9, ptr noundef null) #6
  br label %nlmsg_cancel.exit.i

nlmsg_cancel.exit.i:                              ; preds = %do.end.i.i39.i, %if.then.i.i38.i.nlmsg_cancel.exit.i_crit_edge
  %39 = ptrtoint ptr %data.i.i36.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %data.i.i36.i, align 4
  %sub.ptr.lhs.cast.i.i40.i = ptrtoint ptr %call3.i.i to i32
  %sub.ptr.rhs.cast.i.i41.i = ptrtoint ptr %40 to i32
  %sub.ptr.sub.i.i42.i = sub i32 %sub.ptr.lhs.cast.i.i40.i, %sub.ptr.rhs.cast.i.i41.i
  call void @skb_trim(ptr noundef nonnull %call.i.i, i32 noundef %sub.ptr.sub.i.i42.i) #6
  br label %if.then16

if.then16:                                        ; preds = %nlmsg_cancel.exit.i, %nlmsg_put.exit.i.if.then16_crit_edge, %skb_tailroom.exit.i.i.if.then16_crit_edge, %if.end.if.then16_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ifindex.addr.i)
  call void @kfree_skb_reason(ptr noundef nonnull %call.i.i, i32 noundef 0) #6
  br label %errout

if.end17:                                         ; preds = %land.lhs.true.i.if.end17_crit_edge, %if.end15.i.if.end17_crit_edge
  %41 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %42 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %26 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i = trunc i32 %sub.ptr.sub.i.i to i16
  %43 = ptrtoint ptr %26 to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %conv.i.i, ptr %26, align 2
  %44 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i22.i = ptrtoint ptr %44 to i32
  %sub.ptr.rhs.cast.i23.i = ptrtoint ptr %24 to i32
  %sub.ptr.sub.i24.i = sub i32 %sub.ptr.lhs.cast.i22.i, %sub.ptr.rhs.cast.i23.i
  %conv.i25.i = trunc i32 %sub.ptr.sub.i24.i to i16
  %45 = ptrtoint ptr %24 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %conv.i25.i, ptr %24, align 2
  %46 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i27.i = ptrtoint ptr %46 to i32
  %sub.ptr.rhs.cast.i28.i = ptrtoint ptr %call3.i.i to i32
  %sub.ptr.sub.i29.i = sub i32 %sub.ptr.lhs.cast.i27.i, %sub.ptr.rhs.cast.i28.i
  %47 = ptrtoint ptr %call3.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %sub.ptr.sub.i29.i, ptr %call3.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ifindex.addr.i)
  call void @rtnl_notify(ptr noundef nonnull %call.i.i, ptr noundef %1, i32 noundef 0, i32 noundef 26, ptr noundef null, i32 noundef 2592) #6
  br label %cleanup

errout:                                           ; preds = %if.then16, %cond.end8.errout_crit_edge
  %err.0 = phi i32 [ -90, %if.then16 ], [ -105, %cond.end8.errout_crit_edge ]
  call void @rtnl_set_sk_err(ptr noundef %1, i32 noundef 26, i32 noundef %err.0) #6
  br label %cleanup

cleanup:                                          ; preds = %errout, %if.end17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @br_mdb_init() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtnl_register_module(ptr noundef null, i32 noundef 7, i32 noundef 86, ptr noundef null, ptr noundef nonnull @br_mdb_dump, i32 noundef 0) #6
  %call1 = tail call i32 @rtnl_register_module(ptr noundef null, i32 noundef 7, i32 noundef 84, ptr noundef nonnull @br_mdb_add, ptr noundef null, i32 noundef 0) #6
  %call2 = tail call i32 @rtnl_register_module(ptr noundef null, i32 noundef 7, i32 noundef 85, ptr noundef nonnull @br_mdb_del, ptr noundef null, i32 noundef 0) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_register_module(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @br_mdb_dump(ptr noundef %skb, ptr nocapture noundef %cb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 9
  %3 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %skc_net.i, align 4
  %strict_check = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 12
  %5 = ptrtoint ptr %strict_check to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %strict_check, align 4, !range !129
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.then:                                          ; preds = %entry
  %nlh1 = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 1
  %7 = ptrtoint ptr %nlh1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %nlh1, align 4
  %extack = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 6
  %9 = ptrtoint ptr %extack to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %extack, align 4
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %12)
  %cmp.i = icmp ult i32 %12, 24
  br i1 %cmp.i, label %do.body.i, label %if.end2.i

do.body.i:                                        ; preds = %if.then
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @br_mdb_valid_dump_req.__msg) #6
  %tobool.not.i98 = icmp eq ptr %10, null
  br i1 %tobool.not.i98, label %do.body.i.cleanup61_crit_edge, label %do.body.i.cleanup.sink.split.i_crit_edge

do.body.i.cleanup.sink.split.i_crit_edge:         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.i

do.body.i.cleanup61_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup61

if.end2.i:                                        ; preds = %if.then
  %ifindex.i = getelementptr i8, ptr %8, i32 20
  %13 = ptrtoint ptr %ifindex.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ifindex.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool4.not.i = icmp eq i32 %14, 0
  br i1 %tobool4.not.i, label %if.end14.i, label %do.body6.i

do.body6.i:                                       ; preds = %if.end2.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @br_mdb_valid_dump_req.__msg.9) #6
  %tobool8.not.i = icmp eq ptr %10, null
  br i1 %tobool8.not.i, label %do.body6.i.cleanup61_crit_edge, label %do.body6.i.cleanup.sink.split.i_crit_edge

do.body6.i.cleanup.sink.split.i_crit_edge:        ; preds = %do.body6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.i

do.body6.i.cleanup61_crit_edge:                   ; preds = %do.body6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup61

if.end14.i:                                       ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %12)
  %tobool16.not.i = icmp eq i32 %12, 24
  br i1 %tobool16.not.i, label %if.end14.i.if.end4_crit_edge, label %do.body18.i

if.end14.i.if.end4_crit_edge:                     ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

do.body18.i:                                      ; preds = %if.end14.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @br_mdb_valid_dump_req.__msg.10) #6
  %tobool20.not.i = icmp eq ptr %10, null
  br i1 %tobool20.not.i, label %do.body18.i.cleanup61_crit_edge, label %do.body18.i.cleanup.sink.split.i_crit_edge

do.body18.i.cleanup.sink.split.i_crit_edge:       ; preds = %do.body18.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.i

do.body18.i.cleanup61_crit_edge:                  ; preds = %do.body18.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup61

cleanup.sink.split.i:                             ; preds = %do.body18.i.cleanup.sink.split.i_crit_edge, %do.body6.i.cleanup.sink.split.i_crit_edge, %do.body.i.cleanup.sink.split.i_crit_edge
  %br_mdb_valid_dump_req.__msg.10.sink.i = phi ptr [ @br_mdb_valid_dump_req.__msg, %do.body.i.cleanup.sink.split.i_crit_edge ], [ @br_mdb_valid_dump_req.__msg.9, %do.body6.i.cleanup.sink.split.i_crit_edge ], [ @br_mdb_valid_dump_req.__msg.10, %do.body18.i.cleanup.sink.split.i_crit_edge ]
  %15 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %br_mdb_valid_dump_req.__msg.10.sink.i, ptr %10, align 4
  br label %cleanup61

if.end4:                                          ; preds = %if.end14.i.if.end4_crit_edge, %entry.if.end4_crit_edge
  %16 = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 13
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 4
  %19 = tail call i32 @llvm.read_register.i32(metadata !116) #6
  %and.i.i.i.i.i = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %22, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !126
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #6
  %call.i = tail call zeroext i1 @rcu_is_watching() #6
  br i1 %call.i, label %if.end4.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end4.rcu_read_lock.exit_crit_edge:             ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end4
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 696, ptr noundef nonnull @.str.4) #6
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end4.rcu_read_lock.exit_crit_edge
  %dev_base_seq = getelementptr inbounds %struct.net, ptr %4, i32 0, i32 3
  %23 = ptrtoint ptr %dev_base_seq to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %dev_base_seq, align 4
  %seq = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 11
  %25 = ptrtoint ptr %seq to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %seq, align 4
  %call5 = tail call i32 @rcu_read_lock_any_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call7 = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true9

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

land.lhs.true9:                                   ; preds = %land.lhs.true
  %.b97 = load i1, ptr @br_mdb_dump.__warned, align 1
  br i1 %.b97, label %land.lhs.true9.do.end_crit_edge, label %if.then11

land.lhs.true9.do.end_crit_edge:                  ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.then11:                                        ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @br_mdb_dump.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 424, ptr noundef nonnull @.str.1) #6
  br label %do.end

do.end:                                           ; preds = %if.then11, %land.lhs.true9.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  %dev_base_head = getelementptr inbounds %struct.net, ptr %4, i32 0, i32 16
  %26 = ptrtoint ptr %dev_base_head to i32
  call void @__asan_load4_noabort(i32 %26)
  %.pn181 = load volatile ptr, ptr %dev_base_head, align 4
  %cmp18.not182 = icmp eq ptr %.pn181, %dev_base_head
  br i1 %cmp18.not182, label %do.end.if.end59_crit_edge, label %for.body.lr.ph

do.end.if.end59_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end59

for.body.lr.ph:                                   ; preds = %do.end
  %nlh27 = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 1
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %arrayidx.i = getelementptr %struct.netlink_callback, ptr %cb, i32 0, i32 13, i32 0, i32 1
  %arrayidx1.i = getelementptr %struct.netlink_callback, ptr %cb, i32 0, i32 13, i32 0, i32 2
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn186 = phi ptr [ %.pn181, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %nlh.0185 = phi ptr [ null, %for.body.lr.ph ], [ %nlh.3, %for.inc.for.body_crit_edge ]
  %idx.0183 = phi i32 [ 0, %for.body.lr.ph ], [ %idx.2, %for.inc.for.body_crit_edge ]
  %priv_flags.i = getelementptr i8, ptr %.pn186, i32 72
  %27 = ptrtoint ptr %priv_flags.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %priv_flags.i, align 16
  %and.i = and i64 %28, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %for.body.for.inc_crit_edge, label %if.then20

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then20:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_cmp4(i32 %idx.0183, i32 %18)
  %cmp22 = icmp slt i32 %idx.0183, %18
  br i1 %cmp22, label %if.then20.cleanup43_crit_edge, label %if.end24

if.then20.cleanup43_crit_edge:                    ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup43

if.end24:                                         ; preds = %if.then20
  %29 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cb, align 4
  %portid = getelementptr inbounds %struct.sk_buff, ptr %30, i32 0, i32 3, i32 12
  %31 = ptrtoint ptr %portid to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %portid, align 4
  %33 = ptrtoint ptr %nlh27 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %nlh27, align 4
  %nlmsg_seq = getelementptr inbounds %struct.nlmsghdr, ptr %34, i32 0, i32 3
  %35 = ptrtoint ptr %nlmsg_seq to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %nlmsg_seq, align 4
  %37 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool.i.not.i.i = icmp eq i32 %38, 0
  br i1 %tobool.i.not.i.i, label %skb_tailroom.exit.i, label %if.end24.if.end59_crit_edge

if.end24.if.end59_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end59

skb_tailroom.exit.i:                              ; preds = %if.end24
  %39 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %end.i.i, align 4
  %41 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %40 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %42 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %sub.ptr.sub.i.i)
  %cmp.i99 = icmp slt i32 %sub.ptr.sub.i.i, 24
  br i1 %cmp.i99, label %skb_tailroom.exit.i.if.end59_crit_edge, label %nlmsg_put.exit, !prof !128

skb_tailroom.exit.i.if.end59_crit_edge:           ; preds = %skb_tailroom.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end59

nlmsg_put.exit:                                   ; preds = %skb_tailroom.exit.i
  %call3.i = tail call ptr @__nlmsg_put(ptr noundef %skb, i32 noundef %32, i32 noundef %36, i32 noundef 86, i32 noundef 8, i32 noundef 2) #6
  %cmp29 = icmp eq ptr %call3.i, null
  br i1 %cmp29, label %nlmsg_put.exit.if.end59_crit_edge, label %if.end31

nlmsg_put.exit.if.end59_crit_edge:                ; preds = %nlmsg_put.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end59

if.end31:                                         ; preds = %nlmsg_put.exit
  %add.ptr.i101 = getelementptr i8, ptr %call3.i, i32 16
  %43 = ptrtoint ptr %add.ptr.i101 to i32
  call void @__asan_storeN_noabort(i32 %43, i32 8)
  store i64 0, ptr %add.ptr.i101, align 4
  %ifindex = getelementptr i8, ptr %.pn186, i32 84
  %44 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %ifindex, align 4
  %ifindex33 = getelementptr i8, ptr %call3.i, i32 20
  %46 = ptrtoint ptr %ifindex33 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %ifindex33, align 4
  %47 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx.i, align 4
  %49 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx1.i, align 4
  %options.i.i = getelementptr i8, ptr %.pn186, i32 2360
  %51 = ptrtoint ptr %options.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %options.i.i, align 4
  %53 = and i32 %52, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool.not.i102 = icmp eq i32 %53, 0
  br i1 %tobool.not.i102, label %if.end31.if.end37_crit_edge, label %if.end.i104

if.end31.if.end37_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

if.end.i104:                                      ; preds = %if.end31
  %54 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %tail.i.i, align 8
  %call1.i.i = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 0, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i.i = icmp slt i32 %call1.i.i, 0
  %cmp161.i = icmp eq ptr %55, null
  %cmp.i103 = select i1 %cmp.i.i, i1 true, i1 %cmp161.i
  br i1 %cmp.i103, label %if.end.i104.if.then58_crit_edge, label %do.body.i105

if.end.i104.if.then58_crit_edge:                  ; preds = %if.end.i104
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then58

do.body.i105:                                     ; preds = %if.end.i104
  %call6.i = tail call i32 @rcu_read_lock_any_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %land.lhs.true.i106, label %do.body.i105.do.end.i_crit_edge

do.body.i105.do.end.i_crit_edge:                  ; preds = %do.body.i105
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

land.lhs.true.i106:                               ; preds = %do.body.i105
  %call8.i = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %land.lhs.true.i106.do.end.i_crit_edge, label %land.lhs.true10.i

land.lhs.true.i106.do.end.i_crit_edge:            ; preds = %land.lhs.true.i106
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

land.lhs.true10.i:                                ; preds = %land.lhs.true.i106
  %.b137.i = load i1, ptr @br_mdb_fill_info.__warned, align 1
  br i1 %.b137.i, label %land.lhs.true10.i.do.end.i_crit_edge, label %if.then12.i

land.lhs.true10.i.do.end.i_crit_edge:             ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

if.then12.i:                                      ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @br_mdb_fill_info.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 331, ptr noundef nonnull @.str.1) #6
  br label %do.end.i

do.end.i:                                         ; preds = %if.then12.i, %land.lhs.true10.i.do.end.i_crit_edge, %land.lhs.true.i106.do.end.i_crit_edge, %do.body.i105.do.end.i_crit_edge
  %mdb_list.i = getelementptr i8, ptr %.pn186, i32 3860
  %56 = ptrtoint ptr %mdb_list.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile ptr, ptr %mdb_list.i, align 4
  %tobool19.not.i = icmp eq ptr %57, null
  %add.ptr.i107 = getelementptr i8, ptr %57, i32 -100
  %tobool21.not168180.i = icmp eq ptr %add.ptr.i107, null
  %tobool21.not168.i = or i1 %tobool19.not.i, %tobool21.not168180.i
  br i1 %tobool21.not168.i, label %do.end.i.br_mdb_fill_info.exit.thread136_crit_edge, label %do.end.i.for.body.i_crit_edge

do.end.i.for.body.i_crit_edge:                    ; preds = %do.end.i
  br label %for.body.i

do.end.i.br_mdb_fill_info.exit.thread136_crit_edge: ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %br_mdb_fill_info.exit.thread136

for.body.i:                                       ; preds = %for.inc72.i.for.body.i_crit_edge, %do.end.i.for.body.i_crit_edge
  %idx.0171.i = phi i32 [ %inc70.i, %for.inc72.i.for.body.i_crit_edge ], [ 0, %do.end.i.for.body.i_crit_edge ]
  %s_pidx.0170.i = phi i32 [ %s_pidx.1.i, %for.inc72.i.for.body.i_crit_edge ], [ %50, %do.end.i.for.body.i_crit_edge ]
  %mp.0169.i = phi ptr [ %add.ptr85.i, %for.inc72.i.for.body.i_crit_edge ], [ %add.ptr.i107, %do.end.i.for.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %idx.0171.i, i32 %48)
  %cmp22.i = icmp slt i32 %idx.0171.i, %48
  br i1 %cmp22.i, label %for.body.i.for.inc72.i_crit_edge, label %if.end24.i

for.body.i.for.inc72.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc72.i

if.end24.i:                                       ; preds = %for.body.i
  %58 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %tail.i.i, align 8
  %call1.i140.i = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 0, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i140.i)
  %cmp.i141.i = icmp slt i32 %call1.i140.i, 0
  %tobool26.not162.i = icmp eq ptr %59, null
  %tobool26.not.i = select i1 %cmp.i141.i, i1 true, i1 %tobool26.not162.i
  br i1 %tobool26.not.i, label %br_mdb_fill_info.exit.thread145, label %if.end28.i

br_mdb_fill_info.exit.thread145:                  ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #8
  %60 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %idx.0171.i, ptr %arrayidx.i, align 4
  %61 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 0, ptr %arrayidx1.i, align 4
  %62 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i150.i149 = ptrtoint ptr %63 to i32
  %sub.ptr.rhs.cast.i151.i150 = ptrtoint ptr %55 to i32
  %sub.ptr.sub.i152.i151 = sub i32 %sub.ptr.lhs.cast.i150.i149, %sub.ptr.rhs.cast.i151.i150
  %conv.i153.i152 = trunc i32 %sub.ptr.sub.i152.i151 to i16
  %64 = ptrtoint ptr %55 to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %conv.i153.i152, ptr %55, align 2
  br label %out

if.end28.i:                                       ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %s_pidx.0170.i)
  %tobool29.not.i = icmp eq i32 %s_pidx.0170.i, 0
  br i1 %tobool29.not.i, label %land.lhs.true30.i, label %if.end28.i.if.end37.i_crit_edge

if.end28.i.if.end37.i_crit_edge:                  ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37.i

land.lhs.true30.i:                                ; preds = %if.end28.i
  %host_joined.i = getelementptr inbounds %struct.net_bridge_mdb_entry, ptr %mp.0169.i, i32 0, i32 4
  %65 = ptrtoint ptr %host_joined.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %host_joined.i, align 4, !range !129
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool31.not.i = icmp eq i8 %66, 0
  br i1 %tobool31.not.i, label %land.lhs.true30.i.if.end37.i_crit_edge, label %if.then32.i

land.lhs.true30.i.if.end37.i_crit_edge:           ; preds = %land.lhs.true30.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37.i

if.then32.i:                                      ; preds = %land.lhs.true30.i
  %call33.i = tail call fastcc i32 @__mdb_fill_info(ptr noundef %skb, ptr noundef nonnull %mp.0169.i, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.i)
  %tobool34.not.i = icmp eq i32 %call33.i, 0
  br i1 %tobool34.not.i, label %if.then32.i.if.end37.i_crit_edge, label %if.then.i.i.i

if.then32.i.if.end37.i_crit_edge:                 ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37.i

if.then.i.i.i:                                    ; preds = %if.then32.i
  %67 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %data.i.i.i, align 4
  %cmp.i.i.i = icmp ugt ptr %68, %59
  br i1 %cmp.i.i.i, label %do.end.i.i.i, label %if.then.i.i.i.nla_nest_cancel.exit.i_crit_edge, !prof !128

if.then.i.i.i.nla_nest_cancel.exit.i_crit_edge:   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nla_nest_cancel.exit.i

do.end.i.i.i:                                     ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 991, i32 noundef 9, ptr noundef null) #6
  br label %nla_nest_cancel.exit.i

nla_nest_cancel.exit.i:                           ; preds = %do.end.i.i.i, %if.then.i.i.i.nla_nest_cancel.exit.i_crit_edge
  %69 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %data.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %59 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %70 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  tail call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i.i) #6
  br label %br_mdb_fill_info.exit

if.end37.i:                                       ; preds = %if.then32.i.if.end37.i_crit_edge, %land.lhs.true30.i.if.end37.i_crit_edge, %if.end28.i.if.end37.i_crit_edge
  %ports.i = getelementptr inbounds %struct.net_bridge_mdb_entry, ptr %mp.0169.i, i32 0, i32 2
  br label %for.cond38.i.outer

for.cond38.i.outer:                               ; preds = %skip_pg.i, %if.end37.i
  %pp.0.i.ph = phi ptr [ %72, %skip_pg.i ], [ %ports.i, %if.end37.i ]
  %pidx.1.i.ph = phi i32 [ %inc.i, %skip_pg.i ], [ 0, %if.end37.i ]
  br label %for.cond38.i

for.cond38.i:                                     ; preds = %for.body57.i.for.cond38.i_crit_edge, %for.cond38.i.outer
  %pp.0.i = phi ptr [ %72, %for.body57.i.for.cond38.i_crit_edge ], [ %pp.0.i.ph, %for.cond38.i.outer ]
  %71 = ptrtoint ptr %pp.0.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load volatile ptr, ptr %pp.0.i, align 4
  %call44.i = tail call i32 @rcu_read_lock_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44.i)
  %tobool45.not.i = icmp eq i32 %call44.i, 0
  br i1 %tobool45.not.i, label %land.lhs.true46.i, label %for.cond38.i.do.end54.i_crit_edge

for.cond38.i.do.end54.i_crit_edge:                ; preds = %for.cond38.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end54.i

land.lhs.true46.i:                                ; preds = %for.cond38.i
  %call47.i = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47.i)
  %tobool48.not.i = icmp eq i32 %call47.i, 0
  br i1 %tobool48.not.i, label %land.lhs.true46.i.do.end54.i_crit_edge, label %land.lhs.true49.i

land.lhs.true46.i.do.end54.i_crit_edge:           ; preds = %land.lhs.true46.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end54.i

land.lhs.true49.i:                                ; preds = %land.lhs.true46.i
  %.b135136.i = load i1, ptr @br_mdb_fill_info.__warned.11, align 1
  br i1 %.b135136.i, label %land.lhs.true49.i.do.end54.i_crit_edge, label %if.then51.i

land.lhs.true49.i.do.end54.i_crit_edge:           ; preds = %land.lhs.true49.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end54.i

if.then51.i:                                      ; preds = %land.lhs.true49.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @br_mdb_fill_info.__warned.11, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 352, ptr noundef nonnull @.str.12) #6
  br label %do.end54.i

do.end54.i:                                       ; preds = %if.then51.i, %land.lhs.true49.i.do.end54.i_crit_edge, %land.lhs.true46.i.do.end54.i_crit_edge, %for.cond38.i.do.end54.i_crit_edge
  %cmp56.not.i = icmp eq ptr %72, null
  br i1 %cmp56.not.i, label %for.end.i, label %for.body57.i

for.body57.i:                                     ; preds = %do.end54.i
  %key.i = getelementptr inbounds %struct.net_bridge_port_group, ptr %72, i32 0, i32 1
  %73 = ptrtoint ptr %key.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %key.i, align 4
  %tobool58.not.i = icmp eq ptr %74, null
  br i1 %tobool58.not.i, label %for.body57.i.for.cond38.i_crit_edge, label %if.end60.i

for.body57.i.for.cond38.i_crit_edge:              ; preds = %for.body57.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond38.i

if.end60.i:                                       ; preds = %for.body57.i
  call void @__sanitizer_cov_trace_cmp4(i32 %pidx.1.i.ph, i32 %s_pidx.0170.i)
  %cmp61.i = icmp slt i32 %pidx.1.i.ph, %s_pidx.0170.i
  br i1 %cmp61.i, label %if.end60.i.skip_pg.i_crit_edge, label %if.end63.i

if.end60.i.skip_pg.i_crit_edge:                   ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %skip_pg.i

if.end63.i:                                       ; preds = %if.end60.i
  %call64.i = tail call fastcc i32 @__mdb_fill_info(ptr noundef %skb, ptr noundef nonnull %mp.0169.i, ptr noundef nonnull %72) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64.i)
  %tobool65.not.i = icmp eq i32 %call64.i, 0
  br i1 %tobool65.not.i, label %if.end63.i.skip_pg.i_crit_edge, label %if.then66.i

if.end63.i.skip_pg.i_crit_edge:                   ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %skip_pg.i

if.then66.i:                                      ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #8
  %75 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i.i108 = ptrtoint ptr %76 to i32
  %sub.ptr.rhs.cast.i.i109 = ptrtoint ptr %59 to i32
  %sub.ptr.sub.i.i110 = sub i32 %sub.ptr.lhs.cast.i.i108, %sub.ptr.rhs.cast.i.i109
  %conv.i.i = trunc i32 %sub.ptr.sub.i.i110 to i16
  %77 = ptrtoint ptr %59 to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 %conv.i.i, ptr %59, align 2
  br label %br_mdb_fill_info.exit

skip_pg.i:                                        ; preds = %if.end63.i.skip_pg.i_crit_edge, %if.end60.i.skip_pg.i_crit_edge
  %inc.i = add i32 %pidx.1.i.ph, 1
  br label %for.cond38.i.outer

for.end.i:                                        ; preds = %do.end54.i
  call void @__sanitizer_cov_trace_pc() #8
  %78 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i145.i = ptrtoint ptr %79 to i32
  %sub.ptr.rhs.cast.i146.i = ptrtoint ptr %59 to i32
  %sub.ptr.sub.i147.i = sub i32 %sub.ptr.lhs.cast.i145.i, %sub.ptr.rhs.cast.i146.i
  %conv.i148.i = trunc i32 %sub.ptr.sub.i147.i to i16
  %80 = ptrtoint ptr %59 to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 %conv.i148.i, ptr %59, align 2
  br label %for.inc72.i

for.inc72.i:                                      ; preds = %for.end.i, %for.body.i.for.inc72.i_crit_edge
  %s_pidx.1.i = phi i32 [ %s_pidx.0170.i, %for.body.i.for.inc72.i_crit_edge ], [ 0, %for.end.i ]
  %inc70.i = add i32 %idx.0171.i, 1
  %mdb_node.i = getelementptr inbounds %struct.net_bridge_mdb_entry, ptr %mp.0169.i, i32 0, i32 6
  %81 = ptrtoint ptr %mdb_node.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load volatile ptr, ptr %mdb_node.i, align 4
  %tobool81.not.i = icmp eq ptr %82, null
  %add.ptr85.i = getelementptr i8, ptr %82, i32 -100
  %tobool21.not185.i = icmp eq ptr %add.ptr85.i, null
  %tobool21.not.i = or i1 %tobool81.not.i, %tobool21.not185.i
  br i1 %tobool21.not.i, label %for.inc72.i.br_mdb_fill_info.exit.thread136_crit_edge, label %for.inc72.i.for.body.i_crit_edge

for.inc72.i.for.body.i_crit_edge:                 ; preds = %for.inc72.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc72.i.br_mdb_fill_info.exit.thread136_crit_edge: ; preds = %for.inc72.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %br_mdb_fill_info.exit.thread136

br_mdb_fill_info.exit.thread136:                  ; preds = %for.inc72.i.br_mdb_fill_info.exit.thread136_crit_edge, %do.end.i.br_mdb_fill_info.exit.thread136_crit_edge
  %idx.0166.i.ph = phi i32 [ 0, %do.end.i.br_mdb_fill_info.exit.thread136_crit_edge ], [ %inc70.i, %for.inc72.i.br_mdb_fill_info.exit.thread136_crit_edge ]
  %83 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %idx.0166.i.ph, ptr %arrayidx.i, align 4
  %84 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 0, ptr %arrayidx1.i, align 4
  %85 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i150.i140 = ptrtoint ptr %86 to i32
  %sub.ptr.rhs.cast.i151.i141 = ptrtoint ptr %55 to i32
  %sub.ptr.sub.i152.i142 = sub i32 %sub.ptr.lhs.cast.i150.i140, %sub.ptr.rhs.cast.i151.i141
  %conv.i153.i143 = trunc i32 %sub.ptr.sub.i152.i142 to i16
  %87 = ptrtoint ptr %55 to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 %conv.i153.i143, ptr %55, align 2
  br label %if.end37

br_mdb_fill_info.exit:                            ; preds = %if.then66.i, %nla_nest_cancel.exit.i
  %pidx.5.i = phi i32 [ 0, %nla_nest_cancel.exit.i ], [ %pidx.1.i.ph, %if.then66.i ]
  %err.7.i = phi i32 [ %call33.i, %nla_nest_cancel.exit.i ], [ %call64.i, %if.then66.i ]
  %88 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %idx.0171.i, ptr %arrayidx.i, align 4
  %89 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %pidx.5.i, ptr %arrayidx1.i, align 4
  %90 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i150.i = ptrtoint ptr %91 to i32
  %sub.ptr.rhs.cast.i151.i = ptrtoint ptr %55 to i32
  %sub.ptr.sub.i152.i = sub i32 %sub.ptr.lhs.cast.i150.i, %sub.ptr.rhs.cast.i151.i
  %conv.i153.i = trunc i32 %sub.ptr.sub.i152.i to i16
  %92 = ptrtoint ptr %55 to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 %conv.i153.i, ptr %55, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.7.i)
  %cmp35 = icmp slt i32 %err.7.i, 0
  br i1 %cmp35, label %br_mdb_fill_info.exit.out_crit_edge, label %br_mdb_fill_info.exit.if.end37_crit_edge

br_mdb_fill_info.exit.if.end37_crit_edge:         ; preds = %br_mdb_fill_info.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

br_mdb_fill_info.exit.out_crit_edge:              ; preds = %br_mdb_fill_info.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end37:                                         ; preds = %br_mdb_fill_info.exit.if.end37_crit_edge, %br_mdb_fill_info.exit.thread136, %if.end31.if.end37_crit_edge
  %multicast_ctx = getelementptr i8, ptr %.pn186, i32 2840
  %call38 = tail call i32 @br_rports_fill_info(ptr noundef %skb, ptr noundef %multicast_ctx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %cmp39 = icmp slt i32 %call38, 0
  br i1 %cmp39, label %if.end37.out_crit_edge, label %if.end41

if.end37.out_crit_edge:                           ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end41:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  %93 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 0, ptr %arrayidx.i, align 4
  %94 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %95 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %call3.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %96 = ptrtoint ptr %call3.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %sub.ptr.sub.i, ptr %call3.i, align 4
  br label %cleanup43

cleanup43:                                        ; preds = %if.end41, %if.then20.cleanup43_crit_edge
  %nlh.1 = phi ptr [ %nlh.0185, %if.then20.cleanup43_crit_edge ], [ %call3.i, %if.end41 ]
  %inc = add i32 %idx.0183, 1
  br label %for.inc

for.inc:                                          ; preds = %cleanup43, %for.body.for.inc_crit_edge
  %idx.2 = phi i32 [ %inc, %cleanup43 ], [ %idx.0183, %for.body.for.inc_crit_edge ]
  %nlh.3 = phi ptr [ %nlh.1, %cleanup43 ], [ %nlh.0185, %for.body.for.inc_crit_edge ]
  %97 = ptrtoint ptr %.pn186 to i32
  call void @__asan_load4_noabort(i32 %97)
  %.pn = load volatile ptr, ptr %.pn186, align 4
  %cmp18.not = icmp eq ptr %.pn, %dev_base_head
  br i1 %cmp18.not, label %for.inc.out_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.out_crit_edge:                            ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

out:                                              ; preds = %for.inc.out_crit_edge, %if.end37.out_crit_edge, %br_mdb_fill_info.exit.out_crit_edge, %br_mdb_fill_info.exit.thread145
  %idx.0180 = phi i32 [ %idx.0183, %br_mdb_fill_info.exit.thread145 ], [ %idx.2, %for.inc.out_crit_edge ], [ %idx.0183, %br_mdb_fill_info.exit.out_crit_edge ], [ %idx.0183, %if.end37.out_crit_edge ]
  %nlh.4 = phi ptr [ %call3.i, %br_mdb_fill_info.exit.thread145 ], [ %nlh.3, %for.inc.out_crit_edge ], [ %call3.i, %br_mdb_fill_info.exit.out_crit_edge ], [ %call3.i, %if.end37.out_crit_edge ]
  %tobool57.not = icmp eq ptr %nlh.4, null
  br i1 %tobool57.not, label %out.if.end59_crit_edge, label %out.if.then58_crit_edge

out.if.then58_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then58

out.if.end59_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end59

if.then58:                                        ; preds = %out.if.then58_crit_edge, %if.end.i104.if.then58_crit_edge
  %idx.0179 = phi i32 [ %idx.0180, %out.if.then58_crit_edge ], [ %idx.0183, %if.end.i104.if.then58_crit_edge ]
  %nlh.4162 = phi ptr [ %nlh.4, %out.if.then58_crit_edge ], [ %call3.i, %if.end.i104.if.then58_crit_edge ]
  %tail.i.i113 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %98 = ptrtoint ptr %tail.i.i113 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %tail.i.i113, align 8
  %sub.ptr.lhs.cast.i114 = ptrtoint ptr %99 to i32
  %sub.ptr.rhs.cast.i115 = ptrtoint ptr %nlh.4162 to i32
  %sub.ptr.sub.i116 = sub i32 %sub.ptr.lhs.cast.i114, %sub.ptr.rhs.cast.i115
  %100 = ptrtoint ptr %nlh.4162 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %sub.ptr.sub.i116, ptr %nlh.4162, align 4
  br label %if.end59

if.end59:                                         ; preds = %if.then58, %out.if.end59_crit_edge, %nlmsg_put.exit.if.end59_crit_edge, %skb_tailroom.exit.i.if.end59_crit_edge, %if.end24.if.end59_crit_edge, %do.end.if.end59_crit_edge
  %idx.0178 = phi i32 [ %idx.0179, %if.then58 ], [ %idx.0180, %out.if.end59_crit_edge ], [ 0, %do.end.if.end59_crit_edge ], [ %idx.0183, %nlmsg_put.exit.if.end59_crit_edge ], [ %idx.0183, %skb_tailroom.exit.i.if.end59_crit_edge ], [ %idx.0183, %if.end24.if.end59_crit_edge ]
  %call.i117 = tail call zeroext i1 @rcu_is_watching() #6
  br i1 %call.i117, label %if.end59.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i120

if.end59.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit

land.lhs.true.i120:                               ; preds = %if.end59
  %call1.i118 = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i118)
  %tobool.not.i119 = icmp eq i32 %call1.i118, 0
  br i1 %tobool.not.i119, label %land.lhs.true.i120.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i122

land.lhs.true.i120.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i120
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit

land.lhs.true2.i122:                              ; preds = %land.lhs.true.i120
  %.b4.i121 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i121, label %land.lhs.true2.i122.rcu_read_unlock.exit_crit_edge, label %if.then.i123

land.lhs.true2.i122.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i122
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit

if.then.i123:                                     ; preds = %land.lhs.true2.i122
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 724, ptr noundef nonnull @.str.5) #6
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i123, %land.lhs.true2.i122.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i120.rcu_read_unlock.exit_crit_edge, %if.end59.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !127
  %101 = tail call i32 @llvm.read_register.i32(metadata !116) #6
  %and.i.i.i.i.i124 = and i32 %101, -16384
  %102 = inttoptr i32 %and.i.i.i.i.i124 to ptr
  %preempt_count.i.i.i.i125 = getelementptr inbounds %struct.thread_info, ptr %102, i32 0, i32 1
  %103 = ptrtoint ptr %preempt_count.i.i.i.i125 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load volatile i32, ptr %preempt_count.i.i.i.i125, align 4
  %sub.i.i.i = add i32 %104, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i125, align 4
  tail call void @rcu_read_unlock_strict() #6
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #6
  %105 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %idx.0178, ptr %16, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %106 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %len, align 4
  br label %cleanup61

cleanup61:                                        ; preds = %rcu_read_unlock.exit, %cleanup.sink.split.i, %do.body18.i.cleanup61_crit_edge, %do.body6.i.cleanup61_crit_edge, %do.body.i.cleanup61_crit_edge
  %retval.2 = phi i32 [ %107, %rcu_read_unlock.exit ], [ -22, %do.body.i.cleanup61_crit_edge ], [ -22, %do.body6.i.cleanup61_crit_edge ], [ -22, %do.body18.i.cleanup61_crit_edge ], [ -22, %cleanup.sink.split.i ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @br_mdb_add(ptr nocapture noundef readonly %skb, ptr noundef %nlh, ptr noundef %extack) #0 align 64 {
entry:
  %mdb_attrs = alloca [2 x ptr], align 4
  %dev = alloca ptr, align 4
  %entry1 = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %mdb_attrs) #6
  %0 = ptrtoint ptr %mdb_attrs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %mdb_attrs, align 4, !annotation !130
  %1 = getelementptr inbounds [2 x ptr], ptr %mdb_attrs, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %1, align 4, !annotation !130
  %3 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %skc_net.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dev) #6
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 -1 to ptr), ptr %dev, align 4, !annotation !130
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %entry1) #6
  %9 = ptrtoint ptr %entry1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 -1 to ptr), ptr %entry1, align 4, !annotation !130
  %call2 = call fastcc i32 @br_mdb_parse(ptr noundef %skb, ptr noundef %nlh, ptr noundef nonnull %dev, ptr noundef nonnull %entry1, ptr noundef nonnull %mdb_attrs, ptr noundef %extack)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 2304
  %dev4 = getelementptr i8, ptr %11, i32 2396
  %12 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev4, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %13, i32 0, i32 6
  %14 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %do.body, label %if.end9

do.body:                                          ; preds = %if.end
  call void @do_trace_netlink_extack(ptr noundef nonnull @br_mdb_add.__msg) #6
  %tobool.not = icmp eq ptr %extack, null
  br i1 %tobool.not, label %do.body.cleanup_crit_edge, label %if.then7

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @br_mdb_add.__msg, ptr %extack, align 4
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %options.i = getelementptr i8, ptr %11, i32 2400
  %17 = ptrtoint ptr %options.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %options.i, align 4
  %19 = and i32 %18, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool11.not = icmp eq i32 %19, 0
  br i1 %tobool11.not, label %do.body13, label %if.end21

do.body13:                                        ; preds = %if.end9
  call void @do_trace_netlink_extack(ptr noundef nonnull @br_mdb_add.__msg.13) #6
  %tobool15.not = icmp eq ptr %extack, null
  br i1 %tobool15.not, label %do.body13.cleanup_crit_edge, label %if.then16

do.body13.cleanup_crit_edge:                      ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then16:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @br_mdb_add.__msg.13, ptr %extack, align 4
  br label %cleanup

if.end21:                                         ; preds = %if.end9
  %21 = ptrtoint ptr %entry1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %entry1, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 4
  %ifindex23 = getelementptr inbounds %struct.net_device, ptr %13, i32 0, i32 17
  %25 = ptrtoint ptr %ifindex23 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ifindex23, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %26)
  %cmp24.not = icmp eq i32 %24, %26
  br i1 %cmp24.not, label %if.else, label %if.then25

if.then25:                                        ; preds = %if.end21
  %call27 = call ptr @__dev_get_by_index(ptr noundef %7, i32 noundef %24) #6
  %tobool28.not = icmp eq ptr %call27, null
  br i1 %tobool28.not, label %do.body30, label %if.end38

do.body30:                                        ; preds = %if.then25
  call void @do_trace_netlink_extack(ptr noundef nonnull @br_mdb_add.__msg.14) #6
  %tobool32.not = icmp eq ptr %extack, null
  br i1 %tobool32.not, label %do.body30.cleanup_crit_edge, label %if.then33

do.body30.cleanup_crit_edge:                      ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then33:                                        ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #8
  %27 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @br_mdb_add.__msg.14, ptr %extack, align 4
  br label %cleanup

if.end38:                                         ; preds = %if.then25
  %priv_flags.i.i = getelementptr inbounds %struct.net_device, ptr %call27, i32 0, i32 15
  %28 = ptrtoint ptr %priv_flags.i.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %priv_flags.i.i, align 16
  %and.i.i = and i64 %29, 512
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.end38.do.body42_crit_edge, label %do.body.i

if.end38.do.body42_crit_edge:                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body42

do.body.i:                                        ; preds = %if.end38
  %call1.i = call zeroext i1 @lockdep_rtnl_is_held() #6
  br i1 %call1.i, label %do.body.i.br_port_get_rtnl.exit_crit_edge, label %land.lhs.true.i

do.body.i.br_port_get_rtnl.exit_crit_edge:        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %br_port_get_rtnl.exit

land.lhs.true.i:                                  ; preds = %do.body.i
  %call2.i = call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.br_port_get_rtnl.exit_crit_edge, label %land.lhs.true3.i

land.lhs.true.i.br_port_get_rtnl.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %br_port_get_rtnl.exit

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %.b6.i = load i1, ptr @br_port_get_rtnl.__warned, align 1
  br i1 %.b6.i, label %land.lhs.true3.i.br_port_get_rtnl.exit_crit_edge, label %if.then.i

land.lhs.true3.i.br_port_get_rtnl.exit_crit_edge: ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %br_port_get_rtnl.exit

if.then.i:                                        ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @br_port_get_rtnl.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 422, ptr noundef nonnull @.str.7) #6
  br label %br_port_get_rtnl.exit

br_port_get_rtnl.exit:                            ; preds = %if.then.i, %land.lhs.true3.i.br_port_get_rtnl.exit_crit_edge, %land.lhs.true.i.br_port_get_rtnl.exit_crit_edge, %do.body.i.br_port_get_rtnl.exit_crit_edge
  %rx_handler_data.i = getelementptr inbounds %struct.net_device, ptr %call27, i32 0, i32 95
  %30 = ptrtoint ptr %rx_handler_data.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %rx_handler_data.i, align 4
  %tobool40.not = icmp eq ptr %31, null
  br i1 %tobool40.not, label %br_port_get_rtnl.exit.do.body42_crit_edge, label %if.end50

br_port_get_rtnl.exit.do.body42_crit_edge:        ; preds = %br_port_get_rtnl.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body42

do.body42:                                        ; preds = %br_port_get_rtnl.exit.do.body42_crit_edge, %if.end38.do.body42_crit_edge
  call void @do_trace_netlink_extack(ptr noundef nonnull @br_mdb_add.__msg.15) #6
  %tobool44.not = icmp eq ptr %extack, null
  br i1 %tobool44.not, label %do.body42.cleanup_crit_edge, label %if.then45

do.body42.cleanup_crit_edge:                      ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then45:                                        ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #8
  %32 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @br_mdb_add.__msg.15, ptr %extack, align 4
  br label %cleanup

if.end50:                                         ; preds = %br_port_get_rtnl.exit
  %33 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %31, align 8
  %cmp52.not = icmp eq ptr %34, %add.ptr.i
  br i1 %cmp52.not, label %if.end62, label %do.body54

do.body54:                                        ; preds = %if.end50
  call void @do_trace_netlink_extack(ptr noundef nonnull @br_mdb_add.__msg.16) #6
  %tobool56.not = icmp eq ptr %extack, null
  br i1 %tobool56.not, label %do.body54.cleanup_crit_edge, label %if.then57

do.body54.cleanup_crit_edge:                      ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then57:                                        ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #8
  %35 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @br_mdb_add.__msg.16, ptr %extack, align 4
  br label %cleanup

if.end62:                                         ; preds = %if.end50
  %state = getelementptr inbounds %struct.net_bridge_port, ptr %31, i32 0, i32 8
  %36 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %state, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %cmp63 = icmp eq i8 %37, 0
  br i1 %cmp63, label %do.body66, label %if.end74

do.body66:                                        ; preds = %if.end62
  call void @do_trace_netlink_extack(ptr noundef nonnull @br_mdb_add.__msg.17) #6
  %tobool68.not = icmp eq ptr %extack, null
  br i1 %tobool68.not, label %do.body66.cleanup_crit_edge, label %if.then69

do.body66.cleanup_crit_edge:                      ; preds = %do.body66
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then69:                                        ; preds = %do.body66
  call void @__sanitizer_cov_trace_pc() #8
  %38 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @br_mdb_add.__msg.17, ptr %extack, align 4
  br label %cleanup

if.end74:                                         ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #8
  %call75 = call fastcc ptr @nbp_vlan_group(ptr noundef nonnull %31)
  br label %if.end77

if.else:                                          ; preds = %if.end21
  %call.i = call zeroext i1 @lockdep_rtnl_is_held() #6
  br i1 %call.i, label %if.else.br_vlan_group.exit_crit_edge, label %land.lhs.true.i155

if.else.br_vlan_group.exit_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %br_vlan_group.exit

land.lhs.true.i155:                               ; preds = %if.else
  %call1.i153 = call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i153)
  %tobool.not.i154 = icmp eq i32 %call1.i153, 0
  br i1 %tobool.not.i154, label %land.lhs.true.i155.br_vlan_group.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i155.br_vlan_group.exit_crit_edge:  ; preds = %land.lhs.true.i155
  call void @__sanitizer_cov_trace_pc() #8
  br label %br_vlan_group.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i155
  %.b4.i = load i1, ptr @br_vlan_group.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.br_vlan_group.exit_crit_edge, label %if.then.i156

land.lhs.true2.i.br_vlan_group.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %br_vlan_group.exit

if.then.i156:                                     ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @br_vlan_group.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 1471, ptr noundef nonnull @.str.7) #6
  br label %br_vlan_group.exit

br_vlan_group.exit:                               ; preds = %if.then.i156, %land.lhs.true2.i.br_vlan_group.exit_crit_edge, %land.lhs.true.i155.br_vlan_group.exit_crit_edge, %if.else.br_vlan_group.exit_crit_edge
  %vlgrp.i = getelementptr i8, ptr %11, i32 2408
  %39 = ptrtoint ptr %vlgrp.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %vlgrp.i, align 4
  br label %if.end77

if.end77:                                         ; preds = %br_vlan_group.exit, %if.end74
  %p.0 = phi ptr [ %31, %if.end74 ], [ null, %br_vlan_group.exit ]
  %vg.0 = phi ptr [ %call75, %if.end74 ], [ %40, %br_vlan_group.exit ]
  %41 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev4, align 4
  %call79 = call zeroext i1 @br_vlan_enabled(ptr noundef %42) #6
  %call79.not = xor i1 %call79, true
  %tobool81.not = icmp eq ptr %vg.0, null
  %or.cond = select i1 %call79.not, i1 true, i1 %tobool81.not
  br i1 %or.cond, label %if.end77.if.else102_crit_edge, label %land.lhs.true82

if.end77.if.else102_crit_edge:                    ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else102

land.lhs.true82:                                  ; preds = %if.end77
  %vid = getelementptr inbounds %struct.br_mdb_entry, ptr %22, i32 0, i32 3
  %43 = ptrtoint ptr %vid to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %vid, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %44)
  %cmp84 = icmp eq i16 %44, 0
  br i1 %cmp84, label %if.then86, label %land.lhs.true82.if.else102_crit_edge

land.lhs.true82.if.else102_crit_edge:             ; preds = %land.lhs.true82
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else102

if.then86:                                        ; preds = %land.lhs.true82
  %vlan_list = getelementptr inbounds %struct.net_bridge_vlan_group, ptr %vg.0, i32 0, i32 2
  %45 = ptrtoint ptr %vlan_list to i32
  call void @__asan_load4_noabort(i32 %45)
  %.pn160 = load ptr, ptr %vlan_list, align 4
  %cmp88.not161 = icmp eq ptr %.pn160, %vlan_list
  br i1 %cmp88.not161, label %if.then86.cleanup_crit_edge, label %if.then86.for.body_crit_edge

if.then86.for.body_crit_edge:                     ; preds = %if.then86
  br label %for.body

if.then86.cleanup_crit_edge:                      ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond:                                         ; preds = %for.body
  %46 = ptrtoint ptr %.pn162 to i32
  call void @__asan_load4_noabort(i32 %46)
  %.pn = load ptr, ptr %.pn162, align 4
  %cmp88.not = icmp eq ptr %.pn, %vlan_list
  br i1 %cmp88.not, label %for.cond.cleanup_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.then86.for.body_crit_edge
  %.pn162 = phi ptr [ %.pn, %for.cond.for.body_crit_edge ], [ %.pn160, %if.then86.for.body_crit_edge ]
  %vid90 = getelementptr i8, ptr %.pn162, i32 -548
  %47 = ptrtoint ptr %vid90 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %vid90, align 8
  %49 = ptrtoint ptr %vid to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %48, ptr %vid, align 2
  %call93 = call fastcc i32 @__br_mdb_add(ptr noundef %add.ptr.i, ptr noundef %p.0, ptr noundef %22, ptr noundef nonnull %mdb_attrs, ptr noundef %extack)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %tobool94.not = icmp eq i32 %call93, 0
  br i1 %tobool94.not, label %for.cond, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.else102:                                       ; preds = %land.lhs.true82.if.else102_crit_edge, %if.end77.if.else102_crit_edge
  %call104 = call fastcc i32 @__br_mdb_add(ptr noundef %add.ptr.i, ptr noundef %p.0, ptr noundef %22, ptr noundef nonnull %mdb_attrs, ptr noundef %extack)
  br label %cleanup

cleanup:                                          ; preds = %if.else102, %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %if.then86.cleanup_crit_edge, %if.then69, %do.body66.cleanup_crit_edge, %if.then57, %do.body54.cleanup_crit_edge, %if.then45, %do.body42.cleanup_crit_edge, %if.then33, %do.body30.cleanup_crit_edge, %if.then16, %do.body13.cleanup_crit_edge, %if.then7, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %entry.cleanup_crit_edge ], [ -22, %if.then7 ], [ -22, %do.body.cleanup_crit_edge ], [ -22, %if.then16 ], [ -22, %do.body13.cleanup_crit_edge ], [ -19, %if.then33 ], [ -19, %do.body30.cleanup_crit_edge ], [ -22, %if.then45 ], [ -22, %do.body42.cleanup_crit_edge ], [ -22, %if.then57 ], [ -22, %do.body54.cleanup_crit_edge ], [ -22, %if.then69 ], [ -22, %do.body66.cleanup_crit_edge ], [ %call104, %if.else102 ], [ %call2, %if.then86.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ], [ %call93, %for.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %entry1) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dev) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %mdb_attrs) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @br_mdb_del(ptr nocapture noundef readonly %skb, ptr noundef %nlh, ptr noundef %extack) #0 align 64 {
entry:
  %mdb_attrs = alloca [2 x ptr], align 4
  %dev = alloca ptr, align 4
  %entry1 = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %mdb_attrs) #6
  %0 = ptrtoint ptr %mdb_attrs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %mdb_attrs, align 4, !annotation !130
  %1 = getelementptr inbounds [2 x ptr], ptr %mdb_attrs, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %1, align 4, !annotation !130
  %3 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %skc_net.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dev) #6
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 -1 to ptr), ptr %dev, align 4, !annotation !130
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %entry1) #6
  %9 = ptrtoint ptr %entry1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 -1 to ptr), ptr %entry1, align 4, !annotation !130
  %call2 = call fastcc i32 @br_mdb_parse(ptr noundef %skb, ptr noundef %nlh, ptr noundef nonnull %dev, ptr noundef nonnull %entry1, ptr noundef nonnull %mdb_attrs, ptr noundef %extack)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 2304
  %12 = ptrtoint ptr %entry1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %entry1, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %dev4 = getelementptr i8, ptr %11, i32 2396
  %16 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev4, align 4
  %ifindex5 = getelementptr inbounds %struct.net_device, ptr %17, i32 0, i32 17
  %18 = ptrtoint ptr %ifindex5 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ifindex5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %19)
  %cmp6.not = icmp eq i32 %15, %19
  br i1 %cmp6.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %if.end
  %call9 = call ptr @__dev_get_by_index(ptr noundef %7, i32 noundef %15) #6
  %tobool.not = icmp eq ptr %call9, null
  br i1 %tobool.not, label %if.then7.cleanup_crit_edge, label %if.end11

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end11:                                         ; preds = %if.then7
  %priv_flags.i.i = getelementptr inbounds %struct.net_device, ptr %call9, i32 0, i32 15
  %20 = ptrtoint ptr %priv_flags.i.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %priv_flags.i.i, align 16
  %and.i.i = and i64 %21, 512
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.end11.cleanup_crit_edge, label %do.body.i

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body.i:                                        ; preds = %if.end11
  %call1.i = call zeroext i1 @lockdep_rtnl_is_held() #6
  br i1 %call1.i, label %do.body.i.br_port_get_rtnl.exit_crit_edge, label %land.lhs.true.i

do.body.i.br_port_get_rtnl.exit_crit_edge:        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %br_port_get_rtnl.exit

land.lhs.true.i:                                  ; preds = %do.body.i
  %call2.i = call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.br_port_get_rtnl.exit_crit_edge, label %land.lhs.true3.i

land.lhs.true.i.br_port_get_rtnl.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %br_port_get_rtnl.exit

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %.b6.i = load i1, ptr @br_port_get_rtnl.__warned, align 1
  br i1 %.b6.i, label %land.lhs.true3.i.br_port_get_rtnl.exit_crit_edge, label %if.then.i

land.lhs.true3.i.br_port_get_rtnl.exit_crit_edge: ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %br_port_get_rtnl.exit

if.then.i:                                        ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @br_port_get_rtnl.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 422, ptr noundef nonnull @.str.7) #6
  br label %br_port_get_rtnl.exit

br_port_get_rtnl.exit:                            ; preds = %if.then.i, %land.lhs.true3.i.br_port_get_rtnl.exit_crit_edge, %land.lhs.true.i.br_port_get_rtnl.exit_crit_edge, %do.body.i.br_port_get_rtnl.exit_crit_edge
  %rx_handler_data.i = getelementptr inbounds %struct.net_device, ptr %call9, i32 0, i32 95
  %22 = ptrtoint ptr %rx_handler_data.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rx_handler_data.i, align 4
  %tobool13.not = icmp eq ptr %23, null
  br i1 %tobool13.not, label %br_port_get_rtnl.exit.cleanup_crit_edge, label %lor.lhs.false

br_port_get_rtnl.exit.cleanup_crit_edge:          ; preds = %br_port_get_rtnl.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %br_port_get_rtnl.exit
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 8
  %cmp15.not = icmp eq ptr %25, %add.ptr.i
  br i1 %cmp15.not, label %lor.lhs.false16, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false16:                                  ; preds = %lor.lhs.false
  %state = getelementptr inbounds %struct.net_bridge_port, ptr %23, i32 0, i32 8
  %26 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %state, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %cmp17 = icmp eq i8 %27, 0
  br i1 %cmp17, label %lor.lhs.false16.cleanup_crit_edge, label %if.end20

lor.lhs.false16.cleanup_crit_edge:                ; preds = %lor.lhs.false16
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end20:                                         ; preds = %lor.lhs.false16
  %call.i = call zeroext i1 @lockdep_rtnl_is_held() #6
  br i1 %call.i, label %if.end20.nbp_vlan_group.exit_crit_edge, label %land.lhs.true.i76

if.end20.nbp_vlan_group.exit_crit_edge:           ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %nbp_vlan_group.exit

land.lhs.true.i76:                                ; preds = %if.end20
  %call1.i74 = call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i74)
  %tobool.not.i75 = icmp eq i32 %call1.i74, 0
  br i1 %tobool.not.i75, label %land.lhs.true.i76.nbp_vlan_group.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i76.nbp_vlan_group.exit_crit_edge:  ; preds = %land.lhs.true.i76
  call void @__sanitizer_cov_trace_pc() #8
  br label %nbp_vlan_group.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i76
  %.b4.i = load i1, ptr @nbp_vlan_group.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.nbp_vlan_group.exit_crit_edge, label %if.then.i77

land.lhs.true2.i.nbp_vlan_group.exit_crit_edge:   ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nbp_vlan_group.exit

if.then.i77:                                      ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @nbp_vlan_group.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 1477, ptr noundef nonnull @.str.7) #6
  br label %nbp_vlan_group.exit

nbp_vlan_group.exit:                              ; preds = %if.then.i77, %land.lhs.true2.i.nbp_vlan_group.exit_crit_edge, %land.lhs.true.i76.nbp_vlan_group.exit_crit_edge, %if.end20.nbp_vlan_group.exit_crit_edge
  %vlgrp.i = getelementptr inbounds %struct.net_bridge_port, ptr %23, i32 0, i32 5
  br label %if.end23

if.else:                                          ; preds = %if.end
  %call.i79 = call zeroext i1 @lockdep_rtnl_is_held() #6
  br i1 %call.i79, label %if.else.br_vlan_group.exit_crit_edge, label %land.lhs.true.i82

if.else.br_vlan_group.exit_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %br_vlan_group.exit

land.lhs.true.i82:                                ; preds = %if.else
  %call1.i80 = call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i80)
  %tobool.not.i81 = icmp eq i32 %call1.i80, 0
  br i1 %tobool.not.i81, label %land.lhs.true.i82.br_vlan_group.exit_crit_edge, label %land.lhs.true2.i84

land.lhs.true.i82.br_vlan_group.exit_crit_edge:   ; preds = %land.lhs.true.i82
  call void @__sanitizer_cov_trace_pc() #8
  br label %br_vlan_group.exit

land.lhs.true2.i84:                               ; preds = %land.lhs.true.i82
  %.b4.i83 = load i1, ptr @br_vlan_group.__warned, align 1
  br i1 %.b4.i83, label %land.lhs.true2.i84.br_vlan_group.exit_crit_edge, label %if.then.i85

land.lhs.true2.i84.br_vlan_group.exit_crit_edge:  ; preds = %land.lhs.true2.i84
  call void @__sanitizer_cov_trace_pc() #8
  br label %br_vlan_group.exit

if.then.i85:                                      ; preds = %land.lhs.true2.i84
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @br_vlan_group.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 1471, ptr noundef nonnull @.str.7) #6
  br label %br_vlan_group.exit

br_vlan_group.exit:                               ; preds = %if.then.i85, %land.lhs.true2.i84.br_vlan_group.exit_crit_edge, %land.lhs.true.i82.br_vlan_group.exit_crit_edge, %if.else.br_vlan_group.exit_crit_edge
  %vlgrp.i86 = getelementptr i8, ptr %11, i32 2408
  br label %if.end23

if.end23:                                         ; preds = %br_vlan_group.exit, %nbp_vlan_group.exit
  %vg.0.in = phi ptr [ %vlgrp.i, %nbp_vlan_group.exit ], [ %vlgrp.i86, %br_vlan_group.exit ]
  %28 = ptrtoint ptr %vg.0.in to i32
  call void @__asan_load4_noabort(i32 %28)
  %vg.0 = load ptr, ptr %vg.0.in, align 4
  %29 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev4, align 4
  %call25 = call zeroext i1 @br_vlan_enabled(ptr noundef %30) #6
  %call25.not = xor i1 %call25, true
  %tobool27.not = icmp eq ptr %vg.0, null
  %or.cond = select i1 %call25.not, i1 true, i1 %tobool27.not
  br i1 %or.cond, label %if.end23.if.else45_crit_edge, label %land.lhs.true28

if.end23.if.else45_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else45

land.lhs.true28:                                  ; preds = %if.end23
  %vid = getelementptr inbounds %struct.br_mdb_entry, ptr %13, i32 0, i32 3
  %31 = ptrtoint ptr %vid to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %vid, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %32)
  %cmp30 = icmp eq i16 %32, 0
  br i1 %cmp30, label %if.then32, label %land.lhs.true28.if.else45_crit_edge

land.lhs.true28.if.else45_crit_edge:              ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else45

if.then32:                                        ; preds = %land.lhs.true28
  %vlan_list = getelementptr inbounds %struct.net_bridge_vlan_group, ptr %vg.0, i32 0, i32 2
  %33 = ptrtoint ptr %vlan_list to i32
  call void @__asan_load4_noabort(i32 %33)
  %.pn90 = load ptr, ptr %vlan_list, align 4
  %cmp34.not91 = icmp eq ptr %.pn90, %vlan_list
  br i1 %cmp34.not91, label %if.then32.cleanup_crit_edge, label %if.then32.for.body_crit_edge

if.then32.for.body_crit_edge:                     ; preds = %if.then32
  br label %for.body

if.then32.cleanup_crit_edge:                      ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then32.for.body_crit_edge
  %.pn92 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn90, %if.then32.for.body_crit_edge ]
  %vid36 = getelementptr i8, ptr %.pn92, i32 -548
  %34 = ptrtoint ptr %vid36 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %vid36, align 8
  %36 = ptrtoint ptr %vid to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %35, ptr %vid, align 2
  %call39 = call fastcc i32 @__br_mdb_del(ptr noundef %add.ptr.i, ptr noundef %13, ptr noundef nonnull %mdb_attrs)
  %37 = ptrtoint ptr %.pn92 to i32
  call void @__asan_load4_noabort(i32 %37)
  %.pn = load ptr, ptr %.pn92, align 4
  %cmp34.not = icmp eq ptr %.pn, %vlan_list
  br i1 %cmp34.not, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.else45:                                        ; preds = %land.lhs.true28.if.else45_crit_edge, %if.end23.if.else45_crit_edge
  %call47 = call fastcc i32 @__br_mdb_del(ptr noundef %add.ptr.i, ptr noundef %13, ptr noundef nonnull %mdb_attrs)
  br label %cleanup

cleanup:                                          ; preds = %if.else45, %for.body.cleanup_crit_edge, %if.then32.cleanup_crit_edge, %lor.lhs.false16.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %br_port_get_rtnl.exit.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.then7.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %entry.cleanup_crit_edge ], [ -19, %if.then7.cleanup_crit_edge ], [ -22, %lor.lhs.false16.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %br_port_get_rtnl.exit.cleanup_crit_edge ], [ %call47, %if.else45 ], [ -22, %if.end11.cleanup_crit_edge ], [ %call2, %if.then32.cleanup_crit_edge ], [ %call39, %for.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %entry1) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dev) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %mdb_attrs) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @br_mdb_uninit() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtnl_unregister(i32 noundef 7, i32 noundef 86) #6
  %call1 = tail call i32 @rtnl_unregister(i32 noundef 7, i32 noundef 84) #6
  %call2 = tail call i32 @rtnl_unregister(i32 noundef 7, i32 noundef 85) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_unregister(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @lockdep_rtnl_is_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @br_timer_value(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__mdb_fill_info(ptr noundef %skb, ptr noundef %mp, ptr noundef %p) unnamed_addr #0 align 64 {
entry:
  %tmp.i152 = alloca i8, align 1
  %tmp.i150 = alloca i8, align 1
  %tmp.i.i = alloca i32, align 4
  %tmp.i = alloca i32, align 4
  %e = alloca %struct.br_mdb_entry, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %e) #6
  %0 = call ptr @memset(ptr %e, i32 0, i32 28)
  %tobool.not = icmp eq ptr %p, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %key = getelementptr inbounds %struct.net_bridge_port_group, ptr %p, i32 0, i32 1
  %1 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %key, align 4
  %dev = getelementptr inbounds %struct.net_bridge_port, ptr %2, i32 0, i32 1
  %timer = getelementptr inbounds %struct.net_bridge_port_group, ptr %p, i32 0, i32 9
  %flags2 = getelementptr inbounds %struct.net_bridge_port_group, ptr %p, i32 0, i32 3
  %3 = ptrtoint ptr %flags2 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %flags2, align 2
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %br = getelementptr inbounds %struct.net_bridge_mdb_entry, ptr %mp, i32 0, i32 1
  %5 = ptrtoint ptr %br to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %br, align 4
  %dev3 = getelementptr inbounds %struct.net_bridge, ptr %6, i32 0, i32 3
  %timer5 = getelementptr inbounds %struct.net_bridge_mdb_entry, ptr %mp, i32 0, i32 5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %mtimer.0 = phi ptr [ %timer, %if.then ], [ %timer5, %if.else ]
  %flags.0 = phi i8 [ %4, %if.then ], [ 0, %if.else ]
  %.pn.in = phi ptr [ %dev, %if.then ], [ %dev3, %if.else ]
  %7 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn = load ptr, ptr %.pn.in, align 4
  %ifindex.0.in = getelementptr inbounds %struct.net_device, ptr %.pn, i32 0, i32 17
  %8 = ptrtoint ptr %ifindex.0.in to i32
  call void @__asan_load4_noabort(i32 %8)
  %ifindex.0 = load i32, ptr %ifindex.0.in, align 4
  %and.i = and i8 %flags.0, 1
  %state.i = getelementptr inbounds %struct.br_mdb_entry, ptr %e, i32 0, i32 1
  %9 = ptrtoint ptr %state.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %and.i, ptr %state.i, align 4
  %flags2.i = getelementptr inbounds %struct.br_mdb_entry, ptr %e, i32 0, i32 2
  %and4.i = lshr i8 %flags.0, 1
  %10 = and i8 %and4.i, 7
  %11 = ptrtoint ptr %flags2.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %flags2.i, align 1
  %12 = and i8 %flags.0, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool28.not.i = icmp eq i8 %12, 0
  br i1 %tobool28.not.i, label %if.end.__mdb_entry_fill_flags.exit_crit_edge, label %if.then29.i

if.end.__mdb_entry_fill_flags.exit_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %__mdb_entry_fill_flags.exit

if.then29.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %flags2.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %flags2.i, align 1
  %15 = or i8 %14, 8
  store i8 %15, ptr %flags2.i, align 1
  br label %__mdb_entry_fill_flags.exit

__mdb_entry_fill_flags.exit:                      ; preds = %if.then29.i, %if.end.__mdb_entry_fill_flags.exit_crit_edge
  %16 = ptrtoint ptr %e to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %ifindex.0, ptr %e, align 4
  %addr = getelementptr inbounds %struct.net_bridge_mdb_entry, ptr %mp, i32 0, i32 3
  %vid = getelementptr inbounds %struct.net_bridge_mdb_entry, ptr %mp, i32 0, i32 3, i32 3
  %17 = ptrtoint ptr %vid to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %vid, align 2
  %vid7 = getelementptr inbounds %struct.br_mdb_entry, ptr %e, i32 0, i32 3
  %19 = ptrtoint ptr %vid7 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %18, ptr %vid7, align 2
  %proto = getelementptr inbounds %struct.net_bridge_mdb_entry, ptr %mp, i32 0, i32 3, i32 2
  %20 = ptrtoint ptr %proto to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %proto, align 4
  %22 = zext i16 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.41)
  switch i16 %21, label %if.else24 [
    i16 2048, label %if.then10
    i16 -31011, label %if.then19
  ]

if.then10:                                        ; preds = %__mdb_entry_fill_flags.exit
  call void @__sanitizer_cov_trace_pc() #8
  %dst = getelementptr inbounds %struct.net_bridge_mdb_entry, ptr %mp, i32 0, i32 3, i32 1
  %23 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %dst, align 4
  %addr12 = getelementptr inbounds %struct.br_mdb_entry, ptr %e, i32 0, i32 4
  %25 = ptrtoint ptr %addr12 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %addr12, align 4
  br label %if.end31

if.then19:                                        ; preds = %__mdb_entry_fill_flags.exit
  call void @__sanitizer_cov_trace_pc() #8
  %addr20 = getelementptr inbounds %struct.br_mdb_entry, ptr %e, i32 0, i32 4
  %dst23 = getelementptr inbounds %struct.net_bridge_mdb_entry, ptr %mp, i32 0, i32 3, i32 1
  %26 = call ptr @memcpy(ptr %addr20, ptr %dst23, i32 16)
  br label %if.end31

if.else24:                                        ; preds = %__mdb_entry_fill_flags.exit
  call void @__sanitizer_cov_trace_pc() #8
  %addr25 = getelementptr inbounds %struct.br_mdb_entry, ptr %e, i32 0, i32 4
  %dst28 = getelementptr inbounds %struct.net_bridge_mdb_entry, ptr %mp, i32 0, i32 3, i32 1
  %27 = ptrtoint ptr %dst28 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %dst28, align 4
  %29 = ptrtoint ptr %addr25 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %addr25, align 4
  %add.ptr.i = getelementptr %struct.net_bridge_mdb_entry, ptr %mp, i32 0, i32 3, i32 1, i32 0, i32 0, i32 0, i32 1
  %30 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr inbounds %struct.br_mdb_entry, ptr %e, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 1
  %32 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %31, ptr %add.ptr1.i, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.else24, %if.then19, %if.then10
  %addr34 = getelementptr inbounds %struct.br_mdb_entry, ptr %e, i32 0, i32 4
  %proto35 = getelementptr inbounds %struct.br_mdb_entry, ptr %e, i32 0, i32 4, i32 1
  %33 = ptrtoint ptr %proto35 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %21, ptr %proto35, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %34 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %tail.i.i, align 8
  %call1.i = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 0, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  %tobool36.not156 = icmp eq ptr %35, null
  %tobool36.not = select i1 %cmp.i, i1 true, i1 %tobool36.not156
  br i1 %tobool36.not, label %if.end31.cleanup_crit_edge, label %if.end38

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end38:                                         ; preds = %if.end31
  %call39 = call i32 @nla_put_nohdr(ptr noundef %skb, i32 noundef 28, ptr noundef nonnull %e) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %lor.lhs.false, label %if.end38.if.then.i.i_crit_edge

if.end38.if.then.i.i_crit_edge:                   ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i

lor.lhs.false:                                    ; preds = %if.end38
  %call41 = call i32 @br_timer_value(ptr noundef %mtimer.0) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #6
  %36 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %call41, ptr %tmp.i, align 4
  %call.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %tmp.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool43.not = icmp eq i32 %call.i, 0
  br i1 %tobool43.not, label %if.end45, label %lor.lhs.false.if.then.i.i_crit_edge

lor.lhs.false.if.then.i.i_crit_edge:              ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i

if.end45:                                         ; preds = %lor.lhs.false
  %37 = ptrtoint ptr %proto to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %proto, align 4
  %39 = zext i16 %38 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.42)
  switch i16 %38, label %sw.default [
    i16 2048, label %sw.bb
    i16 -31011, label %sw.bb64
  ]

sw.bb:                                            ; preds = %if.end45
  %br49 = getelementptr inbounds %struct.net_bridge_mdb_entry, ptr %mp, i32 0, i32 1
  %40 = ptrtoint ptr %br49 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %br49, align 4
  %multicast_igmp_version = getelementptr inbounds %struct.net_bridge, ptr %41, i32 0, i32 29, i32 5
  %42 = ptrtoint ptr %multicast_igmp_version to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %multicast_igmp_version, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %43)
  %cmp51 = icmp eq i8 %43, 3
  %44 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool55.not = icmp eq i32 %45, 0
  br i1 %tobool55.not, label %sw.bb.sw.epilog_crit_edge, label %if.then56

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then56:                                        ; preds = %sw.bb
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i) #6
  %46 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %tmp.i.i, align 4
  %call.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 4, i32 noundef 4, ptr noundef nonnull %tmp.i.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool60.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool60.not, label %if.then56.sw.epilog_crit_edge, label %if.then56.if.then.i.i_crit_edge

if.then56.if.then.i.i_crit_edge:                  ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i

if.then56.sw.epilog_crit_edge:                    ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb64:                                          ; preds = %if.end45
  %br65 = getelementptr inbounds %struct.net_bridge_mdb_entry, ptr %mp, i32 0, i32 1
  %47 = ptrtoint ptr %br65 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %br65, align 4
  %multicast_mld_version = getelementptr inbounds %struct.net_bridge, ptr %48, i32 0, i32 29, i32 7
  %49 = ptrtoint ptr %multicast_mld_version to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %multicast_mld_version, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %50)
  %cmp68 = icmp eq i8 %50, 2
  %51 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %addr, align 4
  %arrayidx2.i = getelementptr %struct.net_bridge_mdb_entry, ptr %mp, i32 0, i32 3, i32 0, i32 0, i32 0, i32 0, i32 1
  %53 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx2.i, align 4
  %or.i = or i32 %54, %52
  %arrayidx4.i = getelementptr %struct.net_bridge_mdb_entry, ptr %mp, i32 0, i32 3, i32 0, i32 0, i32 0, i32 0, i32 2
  %55 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx4.i, align 4
  %or5.i = or i32 %or.i, %56
  %arrayidx7.i = getelementptr %struct.net_bridge_mdb_entry, ptr %mp, i32 0, i32 3, i32 0, i32 0, i32 0, i32 0, i32 3
  %57 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx7.i, align 4
  %or8.i = or i32 %or5.i, %58
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or8.i)
  %cmp.i146 = icmp eq i32 %or8.i, 0
  br i1 %cmp.i146, label %sw.bb64.sw.epilog_crit_edge, label %if.then76

sw.bb64.sw.epilog_crit_edge:                      ; preds = %sw.bb64
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then76:                                        ; preds = %sw.bb64
  %call.i147 = call i32 @nla_put(ptr noundef %skb, i32 noundef 4, i32 noundef 16, ptr noundef %addr) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i147)
  %tobool80.not = icmp eq i32 %call.i147, 0
  br i1 %tobool80.not, label %if.then76.sw.epilog_crit_edge, label %if.then76.if.then.i.i_crit_edge

if.then76.if.then.i.i_crit_edge:                  ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i

if.then76.sw.epilog_crit_edge:                    ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.default:                                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #8
  %dst88 = getelementptr inbounds %struct.net_bridge_mdb_entry, ptr %mp, i32 0, i32 3, i32 1
  %59 = ptrtoint ptr %dst88 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %dst88, align 4
  %61 = ptrtoint ptr %addr34 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %addr34, align 4
  %add.ptr.i148 = getelementptr %struct.net_bridge_mdb_entry, ptr %mp, i32 0, i32 3, i32 1, i32 0, i32 0, i32 0, i32 1
  %62 = ptrtoint ptr %add.ptr.i148 to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %add.ptr.i148, align 2
  %add.ptr1.i149 = getelementptr inbounds %struct.br_mdb_entry, ptr %e, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 1
  %64 = ptrtoint ptr %add.ptr1.i149 to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %63, ptr %add.ptr1.i149, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.then76.sw.epilog_crit_edge, %sw.bb64.sw.epilog_crit_edge, %if.then56.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge
  %dump_srcs_mode.0.shrunk = phi i1 [ false, %sw.default ], [ %cmp68, %sw.bb64.sw.epilog_crit_edge ], [ %cmp68, %if.then76.sw.epilog_crit_edge ], [ %cmp51, %if.then56.sw.epilog_crit_edge ], [ %cmp51, %sw.bb.sw.epilog_crit_edge ]
  br i1 %tobool.not, label %sw.epilog.if.end105_crit_edge, label %if.then91

sw.epilog.if.end105_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end105

if.then91:                                        ; preds = %sw.epilog
  %rt_protocol = getelementptr inbounds %struct.net_bridge_port_group, ptr %p, i32 0, i32 6
  %65 = ptrtoint ptr %rt_protocol to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %rt_protocol, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i150) #6
  %67 = ptrtoint ptr %tmp.i150 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %66, ptr %tmp.i150, align 1
  %call.i151 = call i32 @nla_put(ptr noundef %skb, i32 noundef 5, i32 noundef 1, ptr noundef nonnull %tmp.i150) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i150) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i151)
  %tobool93.not = icmp eq i32 %call.i151, 0
  br i1 %tobool93.not, label %if.end95, label %if.then91.if.then.i.i_crit_edge

if.then91.if.then.i.i_crit_edge:                  ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i

if.end95:                                         ; preds = %if.then91
  br i1 %dump_srcs_mode.0.shrunk, label %land.lhs.true, label %if.end95.if.end105_crit_edge

if.end95.if.end105_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end105

land.lhs.true:                                    ; preds = %if.end95
  %call98 = call fastcc i32 @__mdb_fill_srcs(ptr noundef %skb, ptr noundef nonnull %p)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call98)
  %tobool99.not = icmp eq i32 %call98, 0
  br i1 %tobool99.not, label %lor.lhs.false100, label %land.lhs.true.if.then.i.i_crit_edge

land.lhs.true.if.then.i.i_crit_edge:              ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i

lor.lhs.false100:                                 ; preds = %land.lhs.true
  %filter_mode = getelementptr inbounds %struct.net_bridge_port_group, ptr %p, i32 0, i32 4
  %68 = ptrtoint ptr %filter_mode to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %filter_mode, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i152) #6
  %70 = ptrtoint ptr %tmp.i152 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %69, ptr %tmp.i152, align 1
  %call.i153 = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 1, ptr noundef nonnull %tmp.i152) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i152) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i153)
  %tobool102.not = icmp eq i32 %call.i153, 0
  br i1 %tobool102.not, label %lor.lhs.false100.if.end105_crit_edge, label %lor.lhs.false100.if.then.i.i_crit_edge

lor.lhs.false100.if.then.i.i_crit_edge:           ; preds = %lor.lhs.false100
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i

lor.lhs.false100.if.end105_crit_edge:             ; preds = %lor.lhs.false100
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end105

if.end105:                                        ; preds = %lor.lhs.false100.if.end105_crit_edge, %if.end95.if.end105_crit_edge, %sw.epilog.if.end105_crit_edge
  %71 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %72 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %35 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i155 = trunc i32 %sub.ptr.sub.i to i16
  %73 = ptrtoint ptr %35 to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 %conv.i155, ptr %35, align 2
  br label %cleanup

if.then.i.i:                                      ; preds = %lor.lhs.false100.if.then.i.i_crit_edge, %land.lhs.true.if.then.i.i_crit_edge, %if.then91.if.then.i.i_crit_edge, %if.then76.if.then.i.i_crit_edge, %if.then56.if.then.i.i_crit_edge, %lor.lhs.false.if.then.i.i_crit_edge, %if.end38.if.then.i.i_crit_edge
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %74 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %data.i.i, align 4
  %cmp.i.i = icmp ugt ptr %75, %35
  br i1 %cmp.i.i, label %do.end.i.i, label %if.then.i.i.nla_nest_cancel.exit_crit_edge, !prof !128

if.then.i.i.nla_nest_cancel.exit_crit_edge:       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nla_nest_cancel.exit

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 991, i32 noundef 9, ptr noundef null) #6
  br label %nla_nest_cancel.exit

nla_nest_cancel.exit:                             ; preds = %do.end.i.i, %if.then.i.i.nla_nest_cancel.exit_crit_edge
  %76 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %35 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %77 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %nla_nest_cancel.exit, %if.end105, %if.end31.cleanup_crit_edge
  %retval.0 = phi i32 [ -90, %nla_nest_cancel.exit ], [ 0, %if.end105 ], [ -90, %if.end31.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %e) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__nlmsg_put(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__mdb_fill_srcs(ptr noundef %skb, ptr noundef %p) unnamed_addr #0 align 64 {
entry:
  %tmp.i = alloca i32, align 4
  %tmp.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %src_list = getelementptr inbounds %struct.net_bridge_port_group, ptr %p, i32 0, i32 7
  %0 = ptrtoint ptr %src_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %src_list, align 4
  %tobool.not.i.not = icmp eq ptr %1, null
  br i1 %tobool.not.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %2 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tail.i.i.i, align 8
  %call1.i.i = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 32770, i32 noundef 0, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i.i = icmp slt i32 %call1.i.i, 0
  %tobool2.not147 = icmp eq ptr %3, null
  %tobool2.not = select i1 %cmp.i.i, i1 true, i1 %tobool2.not147
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %do.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %if.end
  %key = getelementptr inbounds %struct.net_bridge_port_group, ptr %p, i32 0, i32 1
  %4 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %key, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %dep_map = getelementptr inbounds %struct.net_bridge, ptr %7, i32 0, i32 32, i32 0, i32 0, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool6.not = icmp eq i32 %call.i, 0
  br i1 %tobool6.not, label %land.lhs.true, label %do.body.do.end_crit_edge

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

land.lhs.true:                                    ; preds = %do.body
  %call7 = tail call i32 @rcu_read_lock_any_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %land.lhs.true9, label %land.lhs.true.do.end_crit_edge

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

land.lhs.true9:                                   ; preds = %land.lhs.true
  %call10 = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %land.lhs.true9.do.end_crit_edge, label %land.lhs.true12

land.lhs.true9.do.end_crit_edge:                  ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

land.lhs.true12:                                  ; preds = %land.lhs.true9
  %.b93 = load i1, ptr @__mdb_fill_srcs.__warned, align 1
  br i1 %.b93, label %land.lhs.true12.do.end_crit_edge, label %if.then14

land.lhs.true12.do.end_crit_edge:                 ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.then14:                                        ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @__mdb_fill_srcs.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 188, ptr noundef nonnull @.str.1) #6
  br label %do.end

do.end:                                           ; preds = %if.then14, %land.lhs.true12.do.end_crit_edge, %land.lhs.true9.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %do.body.do.end_crit_edge
  %8 = ptrtoint ptr %src_list to i32
  call void @__asan_load4_noabort(i32 %8)
  %ent.0152 = load volatile ptr, ptr %src_list, align 4
  %tobool24.not153 = icmp eq ptr %ent.0152, null
  br i1 %tobool24.not153, label %do.end.for.end_crit_edge, label %for.body.lr.ph

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end
  %data.i.i112 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %ent.0154 = phi ptr [ %ent.0152, %for.body.lr.ph ], [ %ent.0, %for.inc.for.body_crit_edge ]
  %9 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tail.i.i.i, align 8
  %call1.i.i96 = call i32 @nla_put(ptr noundef %skb, i32 noundef 32769, i32 noundef 0, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i96)
  %cmp.i.i97 = icmp slt i32 %call1.i.i96, 0
  %tobool26.not148 = icmp eq ptr %10, null
  %tobool26.not = select i1 %cmp.i.i97, i1 true, i1 %tobool26.not148
  br i1 %tobool26.not, label %for.body.if.then.i.i140_crit_edge, label %if.end28

for.body.if.then.i.i140_crit_edge:                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i140

if.end28:                                         ; preds = %for.body
  %addr = getelementptr inbounds %struct.net_bridge_group_src, ptr %ent.0154, i32 0, i32 1
  %proto = getelementptr inbounds %struct.net_bridge_group_src, ptr %ent.0154, i32 0, i32 1, i32 2
  %11 = ptrtoint ptr %proto to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %proto, align 4
  %13 = zext i16 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.43)
  switch i16 %12, label %if.then.i.i114 [
    i16 2048, label %sw.bb
    i16 -31011, label %sw.bb34
  ]

sw.bb:                                            ; preds = %if.end28
  %14 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %addr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i) #6
  %16 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %tmp.i.i, align 4
  %call.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %tmp.i.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool31.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool31.not, label %sw.bb.sw.epilog_crit_edge, label %if.then.i.i

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then.i.i:                                      ; preds = %sw.bb
  %17 = ptrtoint ptr %data.i.i112 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data.i.i112, align 4
  %cmp.i.i99 = icmp ugt ptr %18, %10
  br i1 %cmp.i.i99, label %if.then.i.i.if.then.i.i140.sink.split.sink.split_crit_edge, label %if.then.i.i.if.then.i.i140.sink.split_crit_edge, !prof !128

if.then.i.i.if.then.i.i140.sink.split_crit_edge:  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i140.sink.split

if.then.i.i.if.then.i.i140.sink.split.sink.split_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i140.sink.split.sink.split

sw.bb34:                                          ; preds = %if.end28
  %call.i100 = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 16, ptr noundef %addr) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i100)
  %tobool38.not = icmp eq i32 %call.i100, 0
  br i1 %tobool38.not, label %sw.bb34.sw.epilog_crit_edge, label %if.then.i.i104

sw.bb34.sw.epilog_crit_edge:                      ; preds = %sw.bb34
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then.i.i104:                                   ; preds = %sw.bb34
  %19 = ptrtoint ptr %data.i.i112 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data.i.i112, align 4
  %cmp.i.i103 = icmp ugt ptr %20, %10
  br i1 %cmp.i.i103, label %if.then.i.i104.if.then.i.i140.sink.split.sink.split_crit_edge, label %if.then.i.i104.if.then.i.i140.sink.split_crit_edge, !prof !128

if.then.i.i104.if.then.i.i140.sink.split_crit_edge: ; preds = %if.then.i.i104
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i140.sink.split

if.then.i.i104.if.then.i.i140.sink.split.sink.split_crit_edge: ; preds = %if.then.i.i104
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i140.sink.split.sink.split

if.then.i.i114:                                   ; preds = %if.end28
  %21 = ptrtoint ptr %data.i.i112 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data.i.i112, align 4
  %cmp.i.i113 = icmp ugt ptr %22, %10
  br i1 %cmp.i.i113, label %do.end.i.i115, label %if.then.i.i114.nla_nest_cancel.exit120_crit_edge, !prof !128

if.then.i.i114.nla_nest_cancel.exit120_crit_edge: ; preds = %if.then.i.i114
  call void @__sanitizer_cov_trace_pc() #8
  br label %nla_nest_cancel.exit120

do.end.i.i115:                                    ; preds = %if.then.i.i114
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 991, i32 noundef 9, ptr noundef null) #6
  br label %nla_nest_cancel.exit120

nla_nest_cancel.exit120:                          ; preds = %do.end.i.i115, %if.then.i.i114.nla_nest_cancel.exit120_crit_edge
  %23 = ptrtoint ptr %data.i.i112 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data.i.i112, align 4
  %sub.ptr.lhs.cast.i.i116 = ptrtoint ptr %10 to i32
  %sub.ptr.rhs.cast.i.i117 = ptrtoint ptr %24 to i32
  %sub.ptr.sub.i.i118 = sub i32 %sub.ptr.lhs.cast.i.i116, %sub.ptr.rhs.cast.i.i117
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i118) #6
  br label %for.inc

sw.epilog:                                        ; preds = %sw.bb34.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge
  %timer = getelementptr inbounds %struct.net_bridge_group_src, ptr %ent.0154, i32 0, i32 5
  %call41 = call i32 @br_timer_value(ptr noundef %timer) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #6
  %25 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %call41, ptr %tmp.i, align 4
  %call.i121 = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %tmp.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i121)
  %tobool43.not = icmp eq i32 %call.i121, 0
  br i1 %tobool43.not, label %if.end45, label %if.then.i.i125

if.then.i.i125:                                   ; preds = %sw.epilog
  %26 = ptrtoint ptr %data.i.i112 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %data.i.i112, align 4
  %cmp.i.i124 = icmp ugt ptr %27, %10
  br i1 %cmp.i.i124, label %if.then.i.i125.if.then.i.i140.sink.split.sink.split_crit_edge, label %if.then.i.i125.if.then.i.i140.sink.split_crit_edge, !prof !128

if.then.i.i125.if.then.i.i140.sink.split_crit_edge: ; preds = %if.then.i.i125
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i140.sink.split

if.then.i.i125.if.then.i.i140.sink.split.sink.split_crit_edge: ; preds = %if.then.i.i125
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i140.sink.split.sink.split

if.end45:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %28 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %29 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %10 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %30 = ptrtoint ptr %10 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %conv.i, ptr %10, align 2
  br label %for.inc

for.inc:                                          ; preds = %if.end45, %nla_nest_cancel.exit120
  %31 = ptrtoint ptr %ent.0154 to i32
  call void @__asan_load4_noabort(i32 %31)
  %ent.0 = load volatile ptr, ptr %ent.0154, align 4
  %tobool24.not = icmp eq ptr %ent.0, null
  br i1 %tobool24.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end.for.end_crit_edge
  %32 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i133 = ptrtoint ptr %33 to i32
  %sub.ptr.rhs.cast.i134 = ptrtoint ptr %3 to i32
  %sub.ptr.sub.i135 = sub i32 %sub.ptr.lhs.cast.i133, %sub.ptr.rhs.cast.i134
  %conv.i136 = trunc i32 %sub.ptr.sub.i135 to i16
  %34 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %conv.i136, ptr %3, align 2
  br label %cleanup

if.then.i.i140.sink.split.sink.split:             ; preds = %if.then.i.i125.if.then.i.i140.sink.split.sink.split_crit_edge, %if.then.i.i104.if.then.i.i140.sink.split.sink.split_crit_edge, %if.then.i.i.if.then.i.i140.sink.split.sink.split_crit_edge
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 991, i32 noundef 9, ptr noundef null) #6
  br label %if.then.i.i140.sink.split

if.then.i.i140.sink.split:                        ; preds = %if.then.i.i140.sink.split.sink.split, %if.then.i.i125.if.then.i.i140.sink.split_crit_edge, %if.then.i.i104.if.then.i.i140.sink.split_crit_edge, %if.then.i.i.if.then.i.i140.sink.split_crit_edge
  %35 = ptrtoint ptr %data.i.i112 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %data.i.i112, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %10 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %36 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i) #6
  br label %if.then.i.i140

if.then.i.i140:                                   ; preds = %if.then.i.i140.sink.split, %for.body.if.then.i.i140_crit_edge
  %37 = ptrtoint ptr %data.i.i112 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %data.i.i112, align 4
  %cmp.i.i139 = icmp ugt ptr %38, %3
  br i1 %cmp.i.i139, label %do.end.i.i141, label %if.then.i.i140.nla_nest_cancel.exit146_crit_edge, !prof !128

if.then.i.i140.nla_nest_cancel.exit146_crit_edge: ; preds = %if.then.i.i140
  call void @__sanitizer_cov_trace_pc() #8
  br label %nla_nest_cancel.exit146

do.end.i.i141:                                    ; preds = %if.then.i.i140
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 991, i32 noundef 9, ptr noundef null) #6
  br label %nla_nest_cancel.exit146

nla_nest_cancel.exit146:                          ; preds = %do.end.i.i141, %if.then.i.i140.nla_nest_cancel.exit146_crit_edge
  %39 = ptrtoint ptr %data.i.i112 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %data.i.i112, align 4
  %sub.ptr.lhs.cast.i.i142 = ptrtoint ptr %3 to i32
  %sub.ptr.rhs.cast.i.i143 = ptrtoint ptr %40 to i32
  %sub.ptr.sub.i.i144 = sub i32 %sub.ptr.lhs.cast.i.i142, %sub.ptr.rhs.cast.i.i143
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i144) #6
  br label %cleanup

cleanup:                                          ; preds = %nla_nest_cancel.exit146, %for.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -90, %nla_nest_cancel.exit146 ], [ 0, %for.end ], [ 0, %entry.cleanup_crit_edge ], [ -90, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @br_mdb_parse(ptr nocapture noundef readonly %skb, ptr noundef %nlh, ptr nocapture noundef writeonly %pdev, ptr nocapture noundef writeonly %pentry, ptr noundef %mdb_attrs, ptr noundef %extack) unnamed_addr #0 align 64 {
entry:
  %tb = alloca [3 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 9
  %3 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %skc_net.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %tb) #6
  %5 = ptrtoint ptr %tb to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 -1 to ptr), ptr %tb, align 4, !annotation !130
  %6 = getelementptr inbounds [3 x ptr], ptr %tb, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 -1 to ptr), ptr %6, align 4, !annotation !130
  %8 = getelementptr inbounds [3 x ptr], ptr %tb, i32 0, i32 2
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 -1 to ptr), ptr %8, align 4, !annotation !130
  %10 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nlh, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %11)
  %cmp.i.i = icmp ult i32 %11, 24
  br i1 %cmp.i.i, label %nlmsg_parse_deprecated.exit.thread, label %nlmsg_parse_deprecated.exit

nlmsg_parse_deprecated.exit.thread:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @__nlmsg_parse.__msg) #6
  br label %cleanup

nlmsg_parse_deprecated.exit:                      ; preds = %entry
  %add.ptr.i.i.i = getelementptr i8, ptr %nlh, i32 24
  %sub1.i.i.i = add i32 %11, -24
  %call5.i.i = call i32 @__nla_parse(ptr noundef nonnull %tb, i32 noundef 2, ptr noundef %add.ptr.i.i.i, i32 noundef %sub1.i.i.i, ptr noundef null, i32 noundef 0, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %cmp = icmp slt i32 %call5.i.i, 0
  br i1 %cmp, label %nlmsg_parse_deprecated.exit.cleanup_crit_edge, label %if.end

nlmsg_parse_deprecated.exit.cleanup_crit_edge:    ; preds = %nlmsg_parse_deprecated.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %nlmsg_parse_deprecated.exit
  %ifindex = getelementptr i8, ptr %nlh, i32 20
  %12 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ifindex, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp4 = icmp eq i32 %13, 0
  br i1 %cmp4, label %do.body, label %if.end8

do.body:                                          ; preds = %if.end
  call void @do_trace_netlink_extack(ptr noundef nonnull @br_mdb_parse.__msg) #6
  %tobool.not = icmp eq ptr %extack, null
  br i1 %tobool.not, label %do.body.cleanup_crit_edge, label %if.then6

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @br_mdb_parse.__msg, ptr %extack, align 4
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call10 = call ptr @__dev_get_by_index(ptr noundef %4, i32 noundef %13) #6
  %cmp11 = icmp eq ptr %call10, null
  br i1 %cmp11, label %do.body13, label %if.end21

do.body13:                                        ; preds = %if.end8
  call void @do_trace_netlink_extack(ptr noundef nonnull @br_mdb_parse.__msg.18) #6
  %tobool15.not = icmp eq ptr %extack, null
  br i1 %tobool15.not, label %do.body13.cleanup_crit_edge, label %if.then16

do.body13.cleanup_crit_edge:                      ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then16:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @br_mdb_parse.__msg.18, ptr %extack, align 4
  br label %cleanup

if.end21:                                         ; preds = %if.end8
  %priv_flags.i = getelementptr inbounds %struct.net_device, ptr %call10, i32 0, i32 15
  %16 = ptrtoint ptr %priv_flags.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %priv_flags.i, align 16
  %and.i = and i64 %17, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %do.body24, label %if.end32

do.body24:                                        ; preds = %if.end21
  call void @do_trace_netlink_extack(ptr noundef nonnull @br_mdb_parse.__msg.19) #6
  %tobool26.not = icmp eq ptr %extack, null
  br i1 %tobool26.not, label %do.body24.cleanup_crit_edge, label %if.then27

do.body24.cleanup_crit_edge:                      ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then27:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @br_mdb_parse.__msg.19, ptr %extack, align 4
  br label %cleanup

if.end32:                                         ; preds = %if.end21
  %19 = ptrtoint ptr %pdev to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call10, ptr %pdev, align 4
  %20 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %6, align 4
  %tobool33.not = icmp eq ptr %21, null
  br i1 %tobool33.not, label %do.body35, label %if.end43

do.body35:                                        ; preds = %if.end32
  call void @do_trace_netlink_extack(ptr noundef nonnull @br_mdb_parse.__msg.20) #6
  %tobool37.not = icmp eq ptr %extack, null
  br i1 %tobool37.not, label %do.body35.cleanup_crit_edge, label %if.then38

do.body35.cleanup_crit_edge:                      ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then38:                                        ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @br_mdb_parse.__msg.20, ptr %extack, align 4
  br label %cleanup

if.end43:                                         ; preds = %if.end32
  %23 = ptrtoint ptr %21 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %21, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 32, i16 %24)
  %cmp46.not = icmp eq i16 %24, 32
  br i1 %cmp46.not, label %if.end56, label %do.body48

do.body48:                                        ; preds = %if.end43
  call void @do_trace_netlink_extack(ptr noundef nonnull @br_mdb_parse.__msg.21) #6
  %tobool50.not = icmp eq ptr %extack, null
  br i1 %tobool50.not, label %do.body48.cleanup_crit_edge, label %if.then51

do.body48.cleanup_crit_edge:                      ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then51:                                        ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @br_mdb_parse.__msg.21, ptr %extack, align 4
  br label %cleanup

if.end56:                                         ; preds = %if.end43
  %add.ptr.i109 = getelementptr i8, ptr %21, i32 4
  %26 = ptrtoint ptr %add.ptr.i109 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %add.ptr.i109, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp.i = icmp eq i32 %27, 0
  br i1 %cmp.i, label %do.body.i, label %if.end3.i

do.body.i:                                        ; preds = %if.end56
  call void @do_trace_netlink_extack(ptr noundef nonnull @is_valid_mdb_entry.__msg) #6
  %tobool.not.i = icmp eq ptr %extack, null
  br i1 %tobool.not.i, label %do.body.i.cleanup_crit_edge, label %do.body.i.return.sink.split.i_crit_edge

do.body.i.return.sink.split.i_crit_edge:          ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %return.sink.split.i

do.body.i.cleanup_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3.i:                                        ; preds = %if.end56
  %addr.i = getelementptr i8, ptr %21, i32 12
  %proto.i = getelementptr i8, ptr %21, i32 28
  %28 = ptrtoint ptr %proto.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %proto.i, align 4
  %30 = zext i16 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.44)
  switch i16 %29, label %do.body67.i [
    i16 2048, label %if.then6.i
    i16 -31011, label %if.then34.i
    i16 0, label %if.then53.i
  ]

if.then6.i:                                       ; preds = %if.end3.i
  %31 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %addr.i, align 4
  %and.i.i = and i32 %32, -268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 -536870912, i32 %and.i.i)
  %cmp.i.i110 = icmp eq i32 %and.i.i, -536870912
  br i1 %cmp.i.i110, label %if.end16.i, label %do.body9.i

do.body9.i:                                       ; preds = %if.then6.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @is_valid_mdb_entry.__msg.22) #6
  %tobool11.not.i = icmp eq ptr %extack, null
  br i1 %tobool11.not.i, label %do.body9.i.cleanup_crit_edge, label %do.body9.i.return.sink.split.i_crit_edge

do.body9.i.return.sink.split.i_crit_edge:         ; preds = %do.body9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %return.sink.split.i

do.body9.i.cleanup_crit_edge:                     ; preds = %do.body9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end16.i:                                       ; preds = %if.then6.i
  %and.i130.i = and i32 %32, -256
  call void @__sanitizer_cov_trace_const_cmp4(i32 -536870912, i32 %and.i130.i)
  %cmp.i131.i = icmp eq i32 %and.i130.i, -536870912
  br i1 %cmp.i131.i, label %do.body21.i, label %if.end16.i.if.end76.i_crit_edge

if.end16.i.if.end76.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end76.i

do.body21.i:                                      ; preds = %if.end16.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @is_valid_mdb_entry.__msg.23) #6
  %tobool23.not.i = icmp eq ptr %extack, null
  br i1 %tobool23.not.i, label %do.body21.i.cleanup_crit_edge, label %do.body21.i.return.sink.split.i_crit_edge

do.body21.i.return.sink.split.i_crit_edge:        ; preds = %do.body21.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %return.sink.split.i

do.body21.i.cleanup_crit_edge:                    ; preds = %do.body21.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then34.i:                                      ; preds = %if.end3.i
  %33 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %addr.i, align 4
  %xor.i.i = xor i32 %34, -16646144
  %arrayidx2.i.i = getelementptr i8, ptr %21, i32 16
  %35 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx2.i.i, align 4
  %or.i.i = or i32 %xor.i.i, %36
  %arrayidx4.i.i = getelementptr i8, ptr %21, i32 20
  %37 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx4.i.i, align 4
  %or5.i.i = or i32 %or.i.i, %38
  %arrayidx7.i.i = getelementptr i8, ptr %21, i32 24
  %39 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx7.i.i, align 4
  %xor8.i.i = xor i32 %40, 1
  %or9.i.i = or i32 %or5.i.i, %xor8.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or9.i.i)
  %cmp.i132.i = icmp eq i32 %or9.i.i, 0
  br i1 %cmp.i132.i, label %do.body39.i, label %if.then34.i.if.end76.i_crit_edge

if.then34.i.if.end76.i_crit_edge:                 ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end76.i

do.body39.i:                                      ; preds = %if.then34.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @is_valid_mdb_entry.__msg.24) #6
  %tobool41.not.i = icmp eq ptr %extack, null
  br i1 %tobool41.not.i, label %do.body39.i.cleanup_crit_edge, label %do.body39.i.return.sink.split.i_crit_edge

do.body39.i.return.sink.split.i_crit_edge:        ; preds = %do.body39.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %return.sink.split.i

do.body39.i.cleanup_crit_edge:                    ; preds = %do.body39.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then53.i:                                      ; preds = %if.end3.i
  %41 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %addr.i, align 4
  %43 = and i32 %42, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool.i.not.i = icmp eq i32 %43, 0
  br i1 %tobool.i.not.i, label %do.body58.i, label %if.then53.i.if.end76.i_crit_edge

if.then53.i.if.end76.i_crit_edge:                 ; preds = %if.then53.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end76.i

do.body58.i:                                      ; preds = %if.then53.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @is_valid_mdb_entry.__msg.25) #6
  %tobool60.not.i = icmp eq ptr %extack, null
  br i1 %tobool60.not.i, label %do.body58.i.cleanup_crit_edge, label %do.body58.i.return.sink.split.i_crit_edge

do.body58.i.return.sink.split.i_crit_edge:        ; preds = %do.body58.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %return.sink.split.i

do.body58.i.cleanup_crit_edge:                    ; preds = %do.body58.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body67.i:                                      ; preds = %if.end3.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @is_valid_mdb_entry.__msg.26) #6
  %tobool69.not.i = icmp eq ptr %extack, null
  br i1 %tobool69.not.i, label %do.body67.i.cleanup_crit_edge, label %do.body67.i.return.sink.split.i_crit_edge

do.body67.i.return.sink.split.i_crit_edge:        ; preds = %do.body67.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %return.sink.split.i

do.body67.i.cleanup_crit_edge:                    ; preds = %do.body67.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end76.i:                                       ; preds = %if.then53.i.if.end76.i_crit_edge, %if.then34.i.if.end76.i_crit_edge, %if.end16.i.if.end76.i_crit_edge
  %state.i = getelementptr i8, ptr %21, i32 8
  %44 = ptrtoint ptr %state.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %45)
  %switch.i = icmp ult i8 %45, 2
  br i1 %switch.i, label %if.end92.i, label %do.body85.i

do.body85.i:                                      ; preds = %if.end76.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @is_valid_mdb_entry.__msg.27) #6
  %tobool87.not.i = icmp eq ptr %extack, null
  br i1 %tobool87.not.i, label %do.body85.i.cleanup_crit_edge, label %do.body85.i.return.sink.split.i_crit_edge

do.body85.i.return.sink.split.i_crit_edge:        ; preds = %do.body85.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %return.sink.split.i

do.body85.i.cleanup_crit_edge:                    ; preds = %do.body85.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end92.i:                                       ; preds = %if.end76.i
  %vid.i = getelementptr i8, ptr %21, i32 10
  %46 = ptrtoint ptr %vid.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %vid.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4094, i16 %47)
  %cmp94.i = icmp ugt i16 %47, 4094
  br i1 %cmp94.i, label %do.body97.i, label %if.end61

do.body97.i:                                      ; preds = %if.end92.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @is_valid_mdb_entry.__msg.28) #6
  %tobool99.not.i = icmp eq ptr %extack, null
  br i1 %tobool99.not.i, label %do.body97.i.cleanup_crit_edge, label %do.body97.i.return.sink.split.i_crit_edge

do.body97.i.return.sink.split.i_crit_edge:        ; preds = %do.body97.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %return.sink.split.i

do.body97.i.cleanup_crit_edge:                    ; preds = %do.body97.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

return.sink.split.i:                              ; preds = %do.body97.i.return.sink.split.i_crit_edge, %do.body85.i.return.sink.split.i_crit_edge, %do.body67.i.return.sink.split.i_crit_edge, %do.body58.i.return.sink.split.i_crit_edge, %do.body39.i.return.sink.split.i_crit_edge, %do.body21.i.return.sink.split.i_crit_edge, %do.body9.i.return.sink.split.i_crit_edge, %do.body.i.return.sink.split.i_crit_edge
  %is_valid_mdb_entry.__msg.28.sink.i = phi ptr [ @is_valid_mdb_entry.__msg, %do.body.i.return.sink.split.i_crit_edge ], [ @is_valid_mdb_entry.__msg.22, %do.body9.i.return.sink.split.i_crit_edge ], [ @is_valid_mdb_entry.__msg.23, %do.body21.i.return.sink.split.i_crit_edge ], [ @is_valid_mdb_entry.__msg.24, %do.body39.i.return.sink.split.i_crit_edge ], [ @is_valid_mdb_entry.__msg.25, %do.body58.i.return.sink.split.i_crit_edge ], [ @is_valid_mdb_entry.__msg.26, %do.body67.i.return.sink.split.i_crit_edge ], [ @is_valid_mdb_entry.__msg.27, %do.body85.i.return.sink.split.i_crit_edge ], [ @is_valid_mdb_entry.__msg.28, %do.body97.i.return.sink.split.i_crit_edge ]
  %48 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %is_valid_mdb_entry.__msg.28.sink.i, ptr %extack, align 4
  br label %cleanup

if.end61:                                         ; preds = %if.end92.i
  %49 = ptrtoint ptr %pentry to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %add.ptr.i109, ptr %pentry, align 4
  %50 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %8, align 4
  %tobool63.not = icmp eq ptr %51, null
  br i1 %tobool63.not, label %if.else, label %if.then64

if.then64:                                        ; preds = %if.end61
  %call66 = call fastcc i32 @nla_parse_nested(ptr noundef %mdb_attrs, ptr noundef nonnull %51, ptr noundef %extack)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %if.end69, label %if.then64.cleanup_crit_edge

if.then64.cleanup_crit_edge:                      ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end69:                                         ; preds = %if.then64
  %arrayidx70 = getelementptr ptr, ptr %mdb_attrs, i32 1
  %52 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx70, align 4
  %tobool71.not = icmp eq ptr %53, null
  br i1 %tobool71.not, label %if.end69.if.end76_crit_edge, label %land.lhs.true

if.end69.if.end76_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end76

land.lhs.true:                                    ; preds = %if.end69
  %54 = ptrtoint ptr %proto.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %proto.i, align 4
  %call73 = call fastcc zeroext i1 @is_valid_mdb_source(ptr noundef nonnull %53, i16 noundef zeroext %55, ptr noundef %extack)
  br i1 %call73, label %land.lhs.true.if.end76_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true.if.end76_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end76

if.else:                                          ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #8
  %56 = ptrtoint ptr %mdb_attrs to i32
  call void @__asan_storeN_noabort(i32 %56, i32 8)
  store i64 0, ptr %mdb_attrs, align 4
  br label %if.end76

if.end76:                                         ; preds = %if.else, %land.lhs.true.if.end76_crit_edge, %if.end69.if.end76_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end76, %land.lhs.true.cleanup_crit_edge, %if.then64.cleanup_crit_edge, %return.sink.split.i, %do.body97.i.cleanup_crit_edge, %do.body85.i.cleanup_crit_edge, %do.body67.i.cleanup_crit_edge, %do.body58.i.cleanup_crit_edge, %do.body39.i.cleanup_crit_edge, %do.body21.i.cleanup_crit_edge, %do.body9.i.cleanup_crit_edge, %do.body.i.cleanup_crit_edge, %if.then51, %do.body48.cleanup_crit_edge, %if.then38, %do.body35.cleanup_crit_edge, %if.then27, %do.body24.cleanup_crit_edge, %if.then16, %do.body13.cleanup_crit_edge, %if.then6, %do.body.cleanup_crit_edge, %nlmsg_parse_deprecated.exit.cleanup_crit_edge, %nlmsg_parse_deprecated.exit.thread
  %retval.0 = phi i32 [ 0, %if.end76 ], [ %call5.i.i, %nlmsg_parse_deprecated.exit.cleanup_crit_edge ], [ -22, %if.then6 ], [ -22, %do.body.cleanup_crit_edge ], [ -19, %if.then16 ], [ -19, %do.body13.cleanup_crit_edge ], [ -95, %if.then27 ], [ -95, %do.body24.cleanup_crit_edge ], [ -22, %if.then38 ], [ -22, %do.body35.cleanup_crit_edge ], [ -22, %if.then51 ], [ -22, %do.body48.cleanup_crit_edge ], [ %call66, %if.then64.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -22, %nlmsg_parse_deprecated.exit.thread ], [ -22, %do.body.i.cleanup_crit_edge ], [ -22, %do.body9.i.cleanup_crit_edge ], [ -22, %do.body21.i.cleanup_crit_edge ], [ -22, %do.body39.i.cleanup_crit_edge ], [ -22, %do.body58.i.cleanup_crit_edge ], [ -22, %do.body67.i.cleanup_crit_edge ], [ -22, %do.body85.i.cleanup_crit_edge ], [ -22, %do.body97.i.cleanup_crit_edge ], [ -22, %return.sink.split.i ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %tb) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__dev_get_by_index(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @br_vlan_enabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__br_mdb_add(ptr noundef %br, ptr noundef %p, ptr nocapture noundef readonly %entry1, ptr noundef readonly %mdb_attrs, ptr noundef writeonly %extack) unnamed_addr #0 align 64 {
entry:
  %tmp.i.i = alloca %struct.in6_addr, align 4
  %group.i = alloca %struct.br_ip, align 4
  %star_group.i = alloca %struct.br_ip, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %multicast_lock = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 32
  tail call void @_raw_spin_lock_bh(ptr noundef %multicast_lock) #6
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %group.i) #6
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %star_group.i) #6
  %0 = call ptr @memset(ptr %star_group.i, i32 255, i32 36)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %1 = load volatile i32, ptr @jiffies, align 128
  %2 = call ptr @memset(ptr %group.i, i32 0, i32 32)
  %vid.i.i = getelementptr inbounds %struct.br_mdb_entry, ptr %entry1, i32 0, i32 3
  %3 = ptrtoint ptr %vid.i.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %vid.i.i, align 2
  %vid2.i.i = getelementptr inbounds %struct.br_ip, ptr %group.i, i32 0, i32 3
  %5 = ptrtoint ptr %vid2.i.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %4, ptr %vid2.i.i, align 2
  %addr.i.i = getelementptr inbounds %struct.br_mdb_entry, ptr %entry1, i32 0, i32 4
  %proto.i.i = getelementptr inbounds %struct.br_mdb_entry, ptr %entry1, i32 0, i32 4, i32 1
  %6 = ptrtoint ptr %proto.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %proto.i.i, align 4
  %proto3.i.i = getelementptr inbounds %struct.br_ip, ptr %group.i, i32 0, i32 2
  %8 = ptrtoint ptr %proto3.i.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %proto3.i.i, align 4
  %9 = zext i16 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.45)
  switch i16 %7, label %sw.default.i.i [
    i16 2048, label %sw.bb.i.i
    i16 -31011, label %sw.bb8.i.i
  ]

sw.bb.i.i:                                        ; preds = %entry
  %10 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %addr.i.i, align 4
  %dst.i.i = getelementptr inbounds %struct.br_ip, ptr %group.i, i32 0, i32 1
  %12 = ptrtoint ptr %dst.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %dst.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %mdb_attrs, null
  br i1 %tobool.not.i.i, label %sw.bb.i.i.__mdb_entry_to_br_ip.exit.i_crit_edge, label %land.lhs.true.i.i

sw.bb.i.i.__mdb_entry_to_br_ip.exit.i_crit_edge:  ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__mdb_entry_to_br_ip.exit.i

land.lhs.true.i.i:                                ; preds = %sw.bb.i.i
  %arrayidx.i.i = getelementptr ptr, ptr %mdb_attrs, i32 1
  %13 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool6.not.i.i = icmp eq ptr %14, null
  br i1 %tobool6.not.i.i, label %land.lhs.true.i.i.__mdb_entry_to_br_ip.exit.i_crit_edge, label %if.then.i.i

land.lhs.true.i.i.__mdb_entry_to_br_ip.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__mdb_entry_to_br_ip.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i.i.i.i = getelementptr i8, ptr %14, i32 4
  %15 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %add.ptr.i.i.i.i, align 4
  %17 = ptrtoint ptr %group.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %group.i, align 4
  br label %__mdb_entry_to_br_ip.exit.i

sw.bb8.i.i:                                       ; preds = %entry
  %dst9.i.i = getelementptr inbounds %struct.br_ip, ptr %group.i, i32 0, i32 1
  %18 = call ptr @memcpy(ptr %dst9.i.i, ptr %addr.i.i, i32 16)
  %tobool12.not.i.i = icmp eq ptr %mdb_attrs, null
  br i1 %tobool12.not.i.i, label %sw.bb8.i.i.__mdb_entry_to_br_ip.exit.i_crit_edge, label %land.lhs.true13.i.i

sw.bb8.i.i.__mdb_entry_to_br_ip.exit.i_crit_edge: ; preds = %sw.bb8.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__mdb_entry_to_br_ip.exit.i

land.lhs.true13.i.i:                              ; preds = %sw.bb8.i.i
  %arrayidx14.i.i = getelementptr ptr, ptr %mdb_attrs, i32 1
  %19 = ptrtoint ptr %arrayidx14.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx14.i.i, align 4
  %tobool15.not.i.i = icmp eq ptr %20, null
  br i1 %tobool15.not.i.i, label %land.lhs.true13.i.i.__mdb_entry_to_br_ip.exit.i_crit_edge, label %if.then16.i.i

land.lhs.true13.i.i.__mdb_entry_to_br_ip.exit.i_crit_edge: ; preds = %land.lhs.true13.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__mdb_entry_to_br_ip.exit.i

if.then16.i.i:                                    ; preds = %land.lhs.true13.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp.i.i) #6
  %21 = call ptr @memset(ptr %tmp.i.i, i32 255, i32 16)
  %call.i.i.i = call i32 @nla_memcpy(ptr noundef nonnull %tmp.i.i, ptr noundef nonnull %20, i32 noundef 16) #6
  %22 = call ptr @memcpy(ptr %group.i, ptr %tmp.i.i, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp.i.i) #6
  br label %__mdb_entry_to_br_ip.exit.i

sw.default.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dst20.i.i = getelementptr inbounds %struct.br_ip, ptr %group.i, i32 0, i32 1
  %23 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %addr.i.i, align 4
  %25 = ptrtoint ptr %dst20.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %dst20.i.i, align 4
  %add.ptr.i.i.i = getelementptr %struct.br_mdb_entry, ptr %entry1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 1
  %26 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %add.ptr.i.i.i, align 2
  %add.ptr1.i.i.i = getelementptr inbounds %struct.br_ip, ptr %group.i, i32 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %28 = ptrtoint ptr %add.ptr1.i.i.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %27, ptr %add.ptr1.i.i.i, align 4
  br label %__mdb_entry_to_br_ip.exit.i

__mdb_entry_to_br_ip.exit.i:                      ; preds = %sw.default.i.i, %if.then16.i.i, %land.lhs.true13.i.i.__mdb_entry_to_br_ip.exit.i_crit_edge, %sw.bb8.i.i.__mdb_entry_to_br_ip.exit.i_crit_edge, %if.then.i.i, %land.lhs.true.i.i.__mdb_entry_to_br_ip.exit.i_crit_edge, %sw.bb.i.i.__mdb_entry_to_br_ip.exit.i_crit_edge
  %options.i.i.i = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 4
  %29 = ptrtoint ptr %options.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %options.i.i.i, align 4
  %31 = and i32 %30, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not.i237.i = icmp eq i32 %31, 0
  br i1 %tobool.not.i237.i, label %if.then.i238.i, label %if.end.i.i

if.then.i238.i:                                   ; preds = %__mdb_entry_to_br_ip.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %multicast_ctx.i.i = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 29
  br label %__br_mdb_choose_context.exit.i

if.end.i.i:                                       ; preds = %__mdb_entry_to_br_ip.exit.i
  %32 = ptrtoint ptr %vid.i.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %vid.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %33)
  %tobool2.not.i.i = icmp eq i16 %33, 0
  br i1 %tobool2.not.i.i, label %do.body.i.i, label %if.end7.i.i

do.body.i.i:                                      ; preds = %if.end.i.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @__br_mdb_choose_context.__msg) #6
  %tobool4.not.i.i = icmp eq ptr %extack, null
  br i1 %tobool4.not.i.i, label %do.body.i.i.br_mdb_add_group.exit_crit_edge, label %if.then5.i.i

do.body.i.i.br_mdb_add_group.exit_crit_edge:      ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %br_mdb_add_group.exit

if.then5.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %34 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @__br_mdb_choose_context.__msg, ptr %extack, align 4
  br label %br_mdb_add_group.exit

if.end7.i.i:                                      ; preds = %if.end.i.i
  %call.i.i240.i = call zeroext i1 @lockdep_rtnl_is_held() #6
  br i1 %call.i.i240.i, label %if.end7.i.i.br_vlan_group.exit.i.i_crit_edge, label %land.lhs.true.i.i.i

if.end7.i.i.br_vlan_group.exit.i.i_crit_edge:     ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %br_vlan_group.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end7.i.i
  %call1.i.i.i = call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i.br_vlan_group.exit.i.i_crit_edge, label %land.lhs.true2.i.i.i

land.lhs.true.i.i.i.br_vlan_group.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %br_vlan_group.exit.i.i

land.lhs.true2.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b4.i.i.i = load i1, ptr @br_vlan_group.__warned, align 1
  br i1 %.b4.i.i.i, label %land.lhs.true2.i.i.i.br_vlan_group.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true2.i.i.i.br_vlan_group.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %br_vlan_group.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @br_vlan_group.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 1471, ptr noundef nonnull @.str.7) #6
  br label %br_vlan_group.exit.i.i

br_vlan_group.exit.i.i:                           ; preds = %if.then.i.i.i, %land.lhs.true2.i.i.i.br_vlan_group.exit.i.i_crit_edge, %land.lhs.true.i.i.i.br_vlan_group.exit.i.i_crit_edge, %if.end7.i.i.br_vlan_group.exit.i.i_crit_edge
  %vlgrp.i.i.i = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 7
  %35 = ptrtoint ptr %vlgrp.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %vlgrp.i.i.i, align 4
  %37 = ptrtoint ptr %vid.i.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %vid.i.i, align 2
  %call10.i.i = call ptr @br_vlan_find(ptr noundef %36, i16 noundef zeroext %38) #6
  %tobool11.not.i.i = icmp eq ptr %call10.i.i, null
  br i1 %tobool11.not.i.i, label %do.body13.i.i, label %if.end21.i.i

do.body13.i.i:                                    ; preds = %br_vlan_group.exit.i.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @__br_mdb_choose_context.__msg.39) #6
  %tobool15.not.i241.i = icmp eq ptr %extack, null
  br i1 %tobool15.not.i241.i, label %do.body13.i.i.br_mdb_add_group.exit_crit_edge, label %if.then16.i242.i

do.body13.i.i.br_mdb_add_group.exit_crit_edge:    ; preds = %do.body13.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %br_mdb_add_group.exit

if.then16.i242.i:                                 ; preds = %do.body13.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %39 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @__br_mdb_choose_context.__msg.39, ptr %extack, align 4
  br label %br_mdb_add_group.exit

if.end21.i.i:                                     ; preds = %br_vlan_group.exit.i.i
  %40 = getelementptr inbounds %struct.net_bridge_vlan, ptr %call10.i.i, i32 0, i32 10
  %vlan.i.i.i.i = getelementptr inbounds %struct.net_bridge_vlan, ptr %call10.i.i, i32 0, i32 10, i32 0, i32 1
  %41 = ptrtoint ptr %vlan.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %vlan.i.i.i.i, align 4
  %tobool.i.not.i.i.i = icmp eq ptr %42, null
  br i1 %tobool.i.not.i.i.i, label %if.end21.i.i.__br_mdb_choose_context.exit.i_crit_edge, label %land.rhs.i.i.i

if.end21.i.i.__br_mdb_choose_context.exit.i_crit_edge: ; preds = %if.end21.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__br_mdb_choose_context.exit.i

land.rhs.i.i.i:                                   ; preds = %if.end21.i.i
  %43 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %40, align 4
  %options.i.i.i.i = getelementptr inbounds %struct.net_bridge, ptr %44, i32 0, i32 4
  %45 = ptrtoint ptr %options.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %options.i.i.i.i, align 4
  %47 = and i32 %46, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool.not.i43.i.i = icmp eq i32 %47, 0
  br i1 %tobool.not.i43.i.i, label %land.rhs.i.i.i.do.body24.i.i_crit_edge, label %br_multicast_ctx_vlan_global_disabled.exit.i.i

land.rhs.i.i.i.do.body24.i.i_crit_edge:           ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body24.i.i

br_multicast_ctx_vlan_global_disabled.exit.i.i:   ; preds = %land.rhs.i.i.i
  %priv_flags.i.i.i = getelementptr inbounds %struct.net_bridge_vlan, ptr %42, i32 0, i32 4
  %48 = ptrtoint ptr %priv_flags.i.i.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %priv_flags.i.i.i, align 4
  %50 = and i16 %49, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %50)
  %tobool2.not.i.i.i = icmp eq i16 %50, 0
  br i1 %tobool2.not.i.i.i, label %br_multicast_ctx_vlan_global_disabled.exit.i.i.do.body24.i.i_crit_edge, label %br_multicast_ctx_vlan_global_disabled.exit.i.i.__br_mdb_choose_context.exit.i_crit_edge

br_multicast_ctx_vlan_global_disabled.exit.i.i.__br_mdb_choose_context.exit.i_crit_edge: ; preds = %br_multicast_ctx_vlan_global_disabled.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__br_mdb_choose_context.exit.i

br_multicast_ctx_vlan_global_disabled.exit.i.i.do.body24.i.i_crit_edge: ; preds = %br_multicast_ctx_vlan_global_disabled.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body24.i.i

do.body24.i.i:                                    ; preds = %br_multicast_ctx_vlan_global_disabled.exit.i.i.do.body24.i.i_crit_edge, %land.rhs.i.i.i.do.body24.i.i_crit_edge
  call void @do_trace_netlink_extack(ptr noundef nonnull @__br_mdb_choose_context.__msg.40) #6
  %tobool26.not.i.i = icmp eq ptr %extack, null
  br i1 %tobool26.not.i.i, label %do.body24.i.i.br_mdb_add_group.exit_crit_edge, label %if.then27.i.i

do.body24.i.i.br_mdb_add_group.exit_crit_edge:    ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %br_mdb_add_group.exit

if.then27.i.i:                                    ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %51 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @__br_mdb_choose_context.__msg.40, ptr %extack, align 4
  br label %br_mdb_add_group.exit

__br_mdb_choose_context.exit.i:                   ; preds = %br_multicast_ctx_vlan_global_disabled.exit.i.i.__br_mdb_choose_context.exit.i_crit_edge, %if.end21.i.i.__br_mdb_choose_context.exit.i_crit_edge, %if.then.i238.i
  %brmctx.0.i.i = phi ptr [ %multicast_ctx.i.i, %if.then.i238.i ], [ %40, %br_multicast_ctx_vlan_global_disabled.exit.i.i.__br_mdb_choose_context.exit.i_crit_edge ], [ %40, %if.end21.i.i.__br_mdb_choose_context.exit.i_crit_edge ]
  %tobool.not.i = icmp eq ptr %brmctx.0.i.i, null
  br i1 %tobool.not.i, label %__br_mdb_choose_context.exit.i.br_mdb_add_group.exit_crit_edge, label %if.end.i

__br_mdb_choose_context.exit.i.br_mdb_add_group.exit_crit_edge: ; preds = %__br_mdb_choose_context.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %br_mdb_add_group.exit

if.end.i:                                         ; preds = %__br_mdb_choose_context.exit.i
  %tobool2.not.i = icmp eq ptr %p, null
  br i1 %tobool2.not.i, label %if.then3.i, label %if.end.i.if.end21.i_crit_edge

if.end.i.if.end21.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21.i

if.then3.i:                                       ; preds = %if.end.i
  %state.i = getelementptr inbounds %struct.br_mdb_entry, ptr %entry1, i32 0, i32 1
  %52 = ptrtoint ptr %state.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool4.not.i = icmp eq i8 %53, 0
  br i1 %tobool4.not.i, label %if.end9.i, label %do.body.i

do.body.i:                                        ; preds = %if.then3.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @br_mdb_add_group.__msg) #6
  %tobool6.not.i = icmp eq ptr %extack, null
  br i1 %tobool6.not.i, label %do.body.i.br_mdb_add_group.exit_crit_edge, label %if.then7.i

do.body.i.br_mdb_add_group.exit_crit_edge:        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %br_mdb_add_group.exit

if.then7.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %54 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr @br_mdb_add_group.__msg, ptr %extack, align 4
  br label %br_mdb_add_group.exit

if.end9.i:                                        ; preds = %if.then3.i
  %55 = ptrtoint ptr %proto3.i.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %proto3.i.i, align 4
  %57 = zext i16 %56 to i64
  call void @__sanitizer_cov_trace_switch(i64 %57, ptr @__sancov_gen_cov_switch_values.46)
  switch i16 %56, label %if.end9.i.do.body12.i_crit_edge [
    i16 2048, label %br_multicast_is_star_g.exit.i
    i16 -31011, label %sw.bb1.i.i
  ]

if.end9.i.do.body12.i_crit_edge:                  ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body12.i

sw.bb1.i.i:                                       ; preds = %if.end9.i
  %58 = ptrtoint ptr %group.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %group.i, align 4
  %arrayidx2.i.i.i = getelementptr inbounds [4 x i32], ptr %group.i, i32 0, i32 1
  %60 = ptrtoint ptr %arrayidx2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx2.i.i.i, align 4
  %or.i.i.i = or i32 %61, %59
  %arrayidx4.i.i.i = getelementptr inbounds [4 x i32], ptr %group.i, i32 0, i32 2
  %62 = ptrtoint ptr %arrayidx4.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx4.i.i.i, align 4
  %or5.i.i.i = or i32 %or.i.i.i, %63
  %arrayidx7.i.i.i = getelementptr inbounds [4 x i32], ptr %group.i, i32 0, i32 3
  %64 = ptrtoint ptr %arrayidx7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx7.i.i.i, align 4
  %or8.i.i.i = or i32 %or5.i.i.i, %65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or8.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %or8.i.i.i, 0
  br i1 %cmp.i6.i.i, label %sw.bb1.i.i.if.end21.i_crit_edge, label %sw.bb1.i.i.do.body12.i_crit_edge

sw.bb1.i.i.do.body12.i_crit_edge:                 ; preds = %sw.bb1.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body12.i

sw.bb1.i.i.if.end21.i_crit_edge:                  ; preds = %sw.bb1.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21.i

br_multicast_is_star_g.exit.i:                    ; preds = %if.end9.i
  %66 = ptrtoint ptr %group.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %group.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %cmp.i.i.i = icmp eq i32 %67, 0
  br i1 %cmp.i.i.i, label %br_multicast_is_star_g.exit.i.if.end34.i_crit_edge, label %br_multicast_is_star_g.exit.i.do.body12.i_crit_edge

br_multicast_is_star_g.exit.i.do.body12.i_crit_edge: ; preds = %br_multicast_is_star_g.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body12.i

br_multicast_is_star_g.exit.i.if.end34.i_crit_edge: ; preds = %br_multicast_is_star_g.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34.i

do.body12.i:                                      ; preds = %br_multicast_is_star_g.exit.i.do.body12.i_crit_edge, %sw.bb1.i.i.do.body12.i_crit_edge, %if.end9.i.do.body12.i_crit_edge
  call void @do_trace_netlink_extack(ptr noundef nonnull @br_mdb_add_group.__msg.34) #6
  %tobool14.not.i = icmp eq ptr %extack, null
  br i1 %tobool14.not.i, label %do.body12.i.br_mdb_add_group.exit_crit_edge, label %if.then15.i

do.body12.i.br_mdb_add_group.exit_crit_edge:      ; preds = %do.body12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %br_mdb_add_group.exit

if.then15.i:                                      ; preds = %do.body12.i
  call void @__sanitizer_cov_trace_pc() #8
  %68 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr @br_mdb_add_group.__msg.34, ptr %extack, align 4
  br label %br_mdb_add_group.exit

if.end21.i:                                       ; preds = %sw.bb1.i.i.if.end21.i_crit_edge, %if.end.i.if.end21.i_crit_edge
  %69 = ptrtoint ptr %proto3.i.i to i32
  call void @__asan_load2_noabort(i32 %69)
  %.pr.i = load i16, ptr %proto3.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %.pr.i)
  %cmp.i.i = icmp eq i16 %.pr.i, 0
  br i1 %cmp.i.i, label %land.lhs.true.i, label %if.end21.i.if.end34.i_crit_edge

if.end21.i.if.end34.i_crit_edge:                  ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34.i

land.lhs.true.i:                                  ; preds = %if.end21.i
  %state23.i = getelementptr inbounds %struct.br_mdb_entry, ptr %entry1, i32 0, i32 1
  %70 = ptrtoint ptr %state23.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %state23.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %71)
  %cmp.not.i = icmp eq i8 %71, 1
  br i1 %cmp.not.i, label %land.lhs.true.i.if.end34.i_crit_edge, label %do.body26.i

land.lhs.true.i.if.end34.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34.i

do.body26.i:                                      ; preds = %land.lhs.true.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @br_mdb_add_group.__msg.35) #6
  %tobool28.not.i = icmp eq ptr %extack, null
  br i1 %tobool28.not.i, label %do.body26.i.br_mdb_add_group.exit_crit_edge, label %if.then29.i

do.body26.i.br_mdb_add_group.exit_crit_edge:      ; preds = %do.body26.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %br_mdb_add_group.exit

if.then29.i:                                      ; preds = %do.body26.i
  call void @__sanitizer_cov_trace_pc() #8
  %72 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr @br_mdb_add_group.__msg.35, ptr %extack, align 4
  br label %br_mdb_add_group.exit

if.end34.i:                                       ; preds = %land.lhs.true.i.if.end34.i_crit_edge, %if.end21.i.if.end34.i_crit_edge, %br_multicast_is_star_g.exit.i.if.end34.i_crit_edge
  %call35.i = call ptr @br_mdb_ip_get(ptr noundef %br, ptr noundef nonnull %group.i) #6
  %tobool36.not.i = icmp eq ptr %call35.i, null
  br i1 %tobool36.not.i, label %if.then37.i, label %if.end34.i.if.end43.i_crit_edge

if.end34.i.if.end43.i_crit_edge:                  ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end43.i

if.then37.i:                                      ; preds = %if.end34.i
  %call38.i = call ptr @br_multicast_new_group(ptr noundef %br, ptr noundef nonnull %group.i) #6
  %cmp.i.i246.not.i = icmp ugt ptr %call38.i, inttoptr (i32 -4096 to ptr)
  %73 = ptrtoint ptr %call38.i to i32
  br i1 %cmp.i.i246.not.i, label %if.then37.i.br_mdb_add_group.exit_crit_edge, label %if.then37.i.if.end43.i_crit_edge

if.then37.i.if.end43.i_crit_edge:                 ; preds = %if.then37.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end43.i

if.then37.i.br_mdb_add_group.exit_crit_edge:      ; preds = %if.then37.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %br_mdb_add_group.exit

if.end43.i:                                       ; preds = %if.then37.i.if.end43.i_crit_edge, %if.end34.i.if.end43.i_crit_edge
  %mp.0.i = phi ptr [ %call35.i, %if.end34.i.if.end43.i_crit_edge ], [ %call38.i, %if.then37.i.if.end43.i_crit_edge ]
  br i1 %tobool2.not.i, label %if.then45.i, label %if.end57.i

if.then45.i:                                      ; preds = %if.end43.i
  %host_joined.i = getelementptr inbounds %struct.net_bridge_mdb_entry, ptr %mp.0.i, i32 0, i32 4
  %74 = ptrtoint ptr %host_joined.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %host_joined.i, align 4, !range !129
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %tobool46.not.i = icmp eq i8 %75, 0
  br i1 %tobool46.not.i, label %if.end56.i, label %do.body48.i

do.body48.i:                                      ; preds = %if.then45.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @br_mdb_add_group.__msg.36) #6
  %tobool50.not.i = icmp eq ptr %extack, null
  br i1 %tobool50.not.i, label %do.body48.i.br_mdb_add_group.exit_crit_edge, label %if.then51.i

do.body48.i.br_mdb_add_group.exit_crit_edge:      ; preds = %do.body48.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %br_mdb_add_group.exit

if.then51.i:                                      ; preds = %do.body48.i
  call void @__sanitizer_cov_trace_pc() #8
  %76 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr @br_mdb_add_group.__msg.36, ptr %extack, align 4
  br label %br_mdb_add_group.exit

if.end56.i:                                       ; preds = %if.then45.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @br_multicast_host_join(ptr noundef nonnull %brmctx.0.i.i, ptr noundef %mp.0.i, i1 noundef zeroext false) #6
  %dev.i = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 3
  %77 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %dev.i, align 4
  call void @br_mdb_notify(ptr noundef %78, ptr noundef %mp.0.i, ptr noundef null, i32 noundef 84) #6
  br label %br_mdb_add_group.exit

if.end57.i:                                       ; preds = %if.end43.i
  %ports.i = getelementptr inbounds %struct.net_bridge_mdb_entry, ptr %mp.0.i, i32 0, i32 2
  %dep_map.i = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 32, i32 0, i32 0, i32 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %if.end84.i.for.cond.i_crit_edge, %if.end57.i
  %pp.0.i = phi ptr [ %ports.i, %if.end57.i ], [ %80, %if.end84.i.for.cond.i_crit_edge ]
  %call.i.i = call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool60.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool60.not.i, label %land.lhs.true61.i, label %for.cond.i.do.end69.i_crit_edge

for.cond.i.do.end69.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end69.i

land.lhs.true61.i:                                ; preds = %for.cond.i
  %call62.i = call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62.i)
  %tobool63.not.i = icmp eq i32 %call62.i, 0
  br i1 %tobool63.not.i, label %land.lhs.true61.i.do.end69.i_crit_edge, label %land.lhs.true64.i

land.lhs.true61.i.do.end69.i_crit_edge:           ; preds = %land.lhs.true61.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end69.i

land.lhs.true64.i:                                ; preds = %land.lhs.true61.i
  %.b235.i = load i1, ptr @br_mdb_add_group.__warned, align 1
  br i1 %.b235.i, label %land.lhs.true64.i.do.end69.i_crit_edge, label %if.then66.i

land.lhs.true64.i.do.end69.i_crit_edge:           ; preds = %land.lhs.true64.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end69.i

if.then66.i:                                      ; preds = %land.lhs.true64.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @br_mdb_add_group.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 915, ptr noundef nonnull @.str.7) #6
  br label %do.end69.i

do.end69.i:                                       ; preds = %if.then66.i, %land.lhs.true64.i.do.end69.i_crit_edge, %land.lhs.true61.i.do.end69.i_crit_edge, %for.cond.i.do.end69.i_crit_edge
  %79 = ptrtoint ptr %pp.0.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %pp.0.i, align 4
  %cmp70.not.i = icmp eq ptr %80, null
  br i1 %cmp70.not.i, label %do.end69.i.for.end.i_crit_edge, label %for.body.i

do.end69.i.for.end.i_crit_edge:                   ; preds = %do.end69.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.body.i:                                       ; preds = %do.end69.i
  %key.i = getelementptr inbounds %struct.net_bridge_port_group, ptr %80, i32 0, i32 1
  %81 = ptrtoint ptr %key.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %key.i, align 4
  %cmp73.i = icmp eq ptr %82, %p
  br i1 %cmp73.i, label %do.body76.i, label %if.end84.i

do.body76.i:                                      ; preds = %for.body.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @br_mdb_add_group.__msg.37) #6
  %tobool78.not.i = icmp eq ptr %extack, null
  br i1 %tobool78.not.i, label %do.body76.i.br_mdb_add_group.exit_crit_edge, label %if.then79.i

do.body76.i.br_mdb_add_group.exit_crit_edge:      ; preds = %do.body76.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %br_mdb_add_group.exit

if.then79.i:                                      ; preds = %do.body76.i
  call void @__sanitizer_cov_trace_pc() #8
  %83 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr @br_mdb_add_group.__msg.37, ptr %extack, align 4
  br label %br_mdb_add_group.exit

if.end84.i:                                       ; preds = %for.body.i
  %cmp87.i = icmp ult ptr %82, %p
  br i1 %cmp87.i, label %if.end84.i.for.end.i_crit_edge, label %if.end84.i.for.cond.i_crit_edge

if.end84.i.for.cond.i_crit_edge:                  ; preds = %if.end84.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i

if.end84.i.for.end.i_crit_edge:                   ; preds = %if.end84.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.end.i:                                        ; preds = %if.end84.i.for.end.i_crit_edge, %do.end69.i.for.end.i_crit_edge
  %84 = ptrtoint ptr %proto3.i.i to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %proto3.i.i, align 4
  %86 = zext i16 %85 to i64
  call void @__sanitizer_cov_trace_switch(i64 %86, ptr @__sancov_gen_cov_switch_values.47)
  switch i16 %85, label %for.end.i.br_multicast_is_star_g.exit259.i_crit_edge [
    i16 2048, label %sw.bb.i249.i
    i16 -31011, label %sw.bb1.i257.i
  ]

for.end.i.br_multicast_is_star_g.exit259.i_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %br_multicast_is_star_g.exit259.i

sw.bb.i249.i:                                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %87 = ptrtoint ptr %group.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %group.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %cmp.i.i248.i = icmp eq i32 %88, 0
  br label %br_multicast_is_star_g.exit259.i

sw.bb1.i257.i:                                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %89 = ptrtoint ptr %group.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %group.i, align 4
  %arrayidx2.i.i250.i = getelementptr inbounds [4 x i32], ptr %group.i, i32 0, i32 1
  %91 = ptrtoint ptr %arrayidx2.i.i250.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %arrayidx2.i.i250.i, align 4
  %or.i.i251.i = or i32 %92, %90
  %arrayidx4.i.i252.i = getelementptr inbounds [4 x i32], ptr %group.i, i32 0, i32 2
  %93 = ptrtoint ptr %arrayidx4.i.i252.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %arrayidx4.i.i252.i, align 4
  %or5.i.i253.i = or i32 %or.i.i251.i, %94
  %arrayidx7.i.i254.i = getelementptr inbounds [4 x i32], ptr %group.i, i32 0, i32 3
  %95 = ptrtoint ptr %arrayidx7.i.i254.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %arrayidx7.i.i254.i, align 4
  %or8.i.i255.i = or i32 %or5.i.i253.i, %96
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or8.i.i255.i)
  %cmp.i6.i256.i = icmp eq i32 %or8.i.i255.i, 0
  br label %br_multicast_is_star_g.exit259.i

br_multicast_is_star_g.exit259.i:                 ; preds = %sw.bb1.i257.i, %sw.bb.i249.i, %for.end.i.br_multicast_is_star_g.exit259.i_crit_edge
  %retval.0.i258.i = phi i1 [ %cmp.i6.i256.i, %sw.bb1.i257.i ], [ %cmp.i.i248.i, %sw.bb.i249.i ], [ false, %for.end.i.br_multicast_is_star_g.exit259.i_crit_edge ]
  %not.call91.i = xor i1 %retval.0.i258.i, true
  %conv93.i = zext i1 %not.call91.i to i8
  %state94.i = getelementptr inbounds %struct.br_mdb_entry, ptr %entry1, i32 0, i32 1
  %97 = ptrtoint ptr %state94.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %state94.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %98)
  %cmp96.i = icmp eq i8 %98, 1
  %spec.select.i = zext i1 %cmp96.i to i8
  %call102.i = call ptr @br_multicast_new_port_group(ptr noundef nonnull %p, ptr noundef nonnull %group.i, ptr noundef %80, i8 noundef zeroext %spec.select.i, ptr noundef null, i8 noundef zeroext %conv93.i, i8 noundef zeroext 4) #6
  %tobool103.not.i = icmp eq ptr %call102.i, null
  br i1 %tobool103.not.i, label %do.body108.i, label %do.body117.i, !prof !128

do.body108.i:                                     ; preds = %br_multicast_is_star_g.exit259.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @br_mdb_add_group.__msg.38) #6
  %tobool110.not.i = icmp eq ptr %extack, null
  br i1 %tobool110.not.i, label %do.body108.i.br_mdb_add_group.exit_crit_edge, label %if.then111.i

do.body108.i.br_mdb_add_group.exit_crit_edge:     ; preds = %do.body108.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %br_mdb_add_group.exit

if.then111.i:                                     ; preds = %do.body108.i
  call void @__sanitizer_cov_trace_pc() #8
  %99 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr @br_mdb_add_group.__msg.38, ptr %extack, align 4
  br label %br_mdb_add_group.exit

do.body117.i:                                     ; preds = %br_multicast_is_star_g.exit259.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !131
  %100 = ptrtoint ptr %pp.0.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store volatile ptr %call102.i, ptr %pp.0.i, align 4
  %101 = ptrtoint ptr %state94.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %state94.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %102)
  %cmp157.i = icmp eq i8 %102, 0
  br i1 %cmp157.i, label %if.then159.i, label %do.body117.i.if.end161.i_crit_edge

do.body117.i.if.end161.i_crit_edge:               ; preds = %do.body117.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end161.i

if.then159.i:                                     ; preds = %do.body117.i
  call void @__sanitizer_cov_trace_pc() #8
  %timer.i = getelementptr inbounds %struct.net_bridge_port_group, ptr %call102.i, i32 0, i32 9
  %multicast_membership_interval.i = getelementptr inbounds %struct.net_bridge_mcast, ptr %brmctx.0.i.i, i32 0, i32 9
  %103 = ptrtoint ptr %multicast_membership_interval.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %multicast_membership_interval.i, align 4
  %add.i = add i32 %104, %1
  %call160.i = call i32 @mod_timer(ptr noundef %timer.i, i32 noundef %add.i) #6
  br label %if.end161.i

if.end161.i:                                      ; preds = %if.then159.i, %do.body117.i.if.end161.i_crit_edge
  %dev162.i = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 3
  %105 = ptrtoint ptr %dev162.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %dev162.i, align 4
  call void @br_mdb_notify(ptr noundef %106, ptr noundef %mp.0.i, ptr noundef nonnull %call102.i, i32 noundef 84) #6
  %107 = ptrtoint ptr %proto3.i.i to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %proto3.i.i, align 4
  %109 = zext i16 %108 to i64
  call void @__sanitizer_cov_trace_switch(i64 %109, ptr @__sancov_gen_cov_switch_values.48)
  switch i16 %108, label %if.end161.i.br_mdb_add_group.exit_crit_edge [
    i16 2048, label %sw.bb.i260.i
    i16 -31011, label %sw.bb4.i.i
  ]

if.end161.i.br_mdb_add_group.exit_crit_edge:      ; preds = %if.end161.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %br_mdb_add_group.exit

sw.bb.i260.i:                                     ; preds = %if.end161.i
  call void @__sanitizer_cov_trace_pc() #8
  %multicast_igmp_version.i.i = getelementptr inbounds %struct.net_bridge_mcast, ptr %brmctx.0.i.i, i32 0, i32 5
  br label %br_multicast_should_handle_mode.exit.i

sw.bb4.i.i:                                       ; preds = %if.end161.i
  call void @__sanitizer_cov_trace_pc() #8
  %multicast_mld_version.i.i = getelementptr inbounds %struct.net_bridge_mcast, ptr %brmctx.0.i.i, i32 0, i32 7
  br label %br_multicast_should_handle_mode.exit.i

br_multicast_should_handle_mode.exit.i:           ; preds = %sw.bb4.i.i, %sw.bb.i260.i
  %multicast_mld_version.sink.i.i = phi ptr [ %multicast_mld_version.i.i, %sw.bb4.i.i ], [ %multicast_igmp_version.i.i, %sw.bb.i260.i ]
  %.sink11.i.i = phi i8 [ 2, %sw.bb4.i.i ], [ 3, %sw.bb.i260.i ]
  %110 = ptrtoint ptr %multicast_mld_version.sink.i.i to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %multicast_mld_version.sink.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %111, i8 %.sink11.i.i)
  %cmp6.i.i = icmp eq i8 %111, %.sink11.i.i
  br i1 %cmp6.i.i, label %if.then164.i, label %br_multicast_should_handle_mode.exit.i.br_mdb_add_group.exit_crit_edge

br_multicast_should_handle_mode.exit.i.br_mdb_add_group.exit_crit_edge: ; preds = %br_multicast_should_handle_mode.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %br_mdb_add_group.exit

if.then164.i:                                     ; preds = %br_multicast_should_handle_mode.exit.i
  br i1 %retval.0.i258.i, label %sw.bb.i, label %sw.bb166.i

sw.bb.i:                                          ; preds = %if.then164.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @br_multicast_star_g_handle_mode(ptr noundef nonnull %call102.i, i8 noundef zeroext 0) #6
  br label %br_mdb_add_group.exit

sw.bb166.i:                                       ; preds = %if.then164.i
  %addr.i = getelementptr inbounds %struct.net_bridge_port_group, ptr %call102.i, i32 0, i32 1, i32 1
  %112 = call ptr @memcpy(ptr %star_group.i, ptr %addr.i, i32 36)
  %113 = call ptr @memset(ptr %star_group.i, i32 0, i32 16)
  %call168.i = call ptr @br_mdb_ip_get(ptr noundef %br, ptr noundef nonnull %star_group.i) #6
  %tobool169.not.i = icmp eq ptr %call168.i, null
  br i1 %tobool169.not.i, label %sw.bb166.i.br_mdb_add_group.exit_crit_edge, label %if.then170.i

sw.bb166.i.br_mdb_add_group.exit_crit_edge:       ; preds = %sw.bb166.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %br_mdb_add_group.exit

if.then170.i:                                     ; preds = %sw.bb166.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @br_multicast_sg_add_exclude_ports(ptr noundef nonnull %call168.i, ptr noundef nonnull %call102.i) #6
  br label %br_mdb_add_group.exit

br_mdb_add_group.exit:                            ; preds = %if.then170.i, %sw.bb166.i.br_mdb_add_group.exit_crit_edge, %sw.bb.i, %br_multicast_should_handle_mode.exit.i.br_mdb_add_group.exit_crit_edge, %if.end161.i.br_mdb_add_group.exit_crit_edge, %if.then111.i, %do.body108.i.br_mdb_add_group.exit_crit_edge, %if.then79.i, %do.body76.i.br_mdb_add_group.exit_crit_edge, %if.end56.i, %if.then51.i, %do.body48.i.br_mdb_add_group.exit_crit_edge, %if.then37.i.br_mdb_add_group.exit_crit_edge, %if.then29.i, %do.body26.i.br_mdb_add_group.exit_crit_edge, %if.then15.i, %do.body12.i.br_mdb_add_group.exit_crit_edge, %if.then7.i, %do.body.i.br_mdb_add_group.exit_crit_edge, %__br_mdb_choose_context.exit.i.br_mdb_add_group.exit_crit_edge, %if.then27.i.i, %do.body24.i.i.br_mdb_add_group.exit_crit_edge, %if.then16.i242.i, %do.body13.i.i.br_mdb_add_group.exit_crit_edge, %if.then5.i.i, %do.body.i.i.br_mdb_add_group.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end56.i ], [ -22, %__br_mdb_choose_context.exit.i.br_mdb_add_group.exit_crit_edge ], [ -22, %if.then7.i ], [ -22, %do.body.i.br_mdb_add_group.exit_crit_edge ], [ -22, %if.then15.i ], [ -22, %do.body12.i.br_mdb_add_group.exit_crit_edge ], [ -22, %if.then29.i ], [ -22, %do.body26.i.br_mdb_add_group.exit_crit_edge ], [ %73, %if.then37.i.br_mdb_add_group.exit_crit_edge ], [ -17, %if.then51.i ], [ -17, %do.body48.i.br_mdb_add_group.exit_crit_edge ], [ -17, %if.then79.i ], [ -17, %do.body76.i.br_mdb_add_group.exit_crit_edge ], [ -12, %if.then111.i ], [ -12, %do.body108.i.br_mdb_add_group.exit_crit_edge ], [ 0, %sw.bb.i ], [ 0, %if.then170.i ], [ 0, %sw.bb166.i.br_mdb_add_group.exit_crit_edge ], [ 0, %br_multicast_should_handle_mode.exit.i.br_mdb_add_group.exit_crit_edge ], [ -22, %if.then5.i.i ], [ -22, %do.body.i.i.br_mdb_add_group.exit_crit_edge ], [ -22, %if.then16.i242.i ], [ -22, %do.body13.i.i.br_mdb_add_group.exit_crit_edge ], [ -22, %if.then27.i.i ], [ -22, %do.body24.i.i.br_mdb_add_group.exit_crit_edge ], [ 0, %if.end161.i.br_mdb_add_group.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %star_group.i) #6
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %group.i) #6
  call void @_raw_spin_unlock_bh(ptr noundef %multicast_lock) #6
  ret i32 %retval.0.i
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nla_parse_nested(ptr noundef %tb, ptr noundef %nla, ptr noundef %extack) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %nla_type = getelementptr inbounds %struct.nlattr, ptr %nla, i32 0, i32 1
  %0 = ptrtoint ptr %nla_type to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %nla_type, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %1)
  %tobool.not = icmp sgt i16 %1, -1
  br i1 %tobool.not, label %do.body, label %if.end4

do.body:                                          ; preds = %entry
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nla_parse_nested.__msg) #6
  %tobool1.not = icmp eq ptr %extack, null
  br i1 %tobool1.not, label %do.body.return_crit_edge, label %if.then2

do.body.return_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.then2:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @nla_parse_nested.__msg, ptr %extack, align 4
  %bad_attr = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 1
  %3 = ptrtoint ptr %bad_attr to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %nla, ptr %bad_attr, align 4
  %policy3 = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 2
  %4 = ptrtoint ptr %policy3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %policy3, align 4
  br label %return

if.end4:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i = getelementptr i8, ptr %nla, i32 4
  %5 = ptrtoint ptr %nla to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %nla, align 2
  %conv.i = zext i16 %6 to i32
  %sub.i = add nsw i32 %conv.i, -4
  %call6 = tail call i32 @__nla_parse(ptr noundef %tb, i32 noundef 1, ptr noundef %add.ptr.i, i32 noundef %sub.i, ptr noundef nonnull @br_mdbe_attrs_pol, i32 noundef 31, ptr noundef %extack) #6
  br label %return

return:                                           ; preds = %if.end4, %if.then2, %do.body.return_crit_edge
  %retval.0 = phi i32 [ %call6, %if.end4 ], [ -22, %if.then2 ], [ -22, %do.body.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @is_valid_mdb_source(ptr noundef %attr, i16 noundef zeroext %proto, ptr noundef writeonly %extack) unnamed_addr #0 align 64 {
entry:
  %tmp = alloca %struct.in6_addr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i16 %proto to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.49)
  switch i16 %proto, label %do.body39 [
    i16 2048, label %sw.bb
    i16 -31011, label %sw.bb15
  ]

sw.bb:                                            ; preds = %entry
  %1 = ptrtoint ptr %attr to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %attr, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %2)
  %cmp.not = icmp eq i16 %2, 8
  br i1 %cmp.not, label %if.end3, label %do.body

do.body:                                          ; preds = %sw.bb
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @is_valid_mdb_source.__msg) #6
  %tobool.not = icmp eq ptr %extack, null
  br i1 %tobool.not, label %do.body.return_crit_edge, label %do.body.return.sink.split_crit_edge

do.body.return.sink.split_crit_edge:              ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %return.sink.split

do.body.return_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end3:                                          ; preds = %sw.bb
  %add.ptr.i.i = getelementptr i8, ptr %attr, i32 4
  %3 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %add.ptr.i.i, align 4
  %and.i = and i32 %4, -268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 -536870912, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, -536870912
  br i1 %cmp.i, label %do.body7, label %if.end3.return_crit_edge

if.end3.return_crit_edge:                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

do.body7:                                         ; preds = %if.end3
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @is_valid_mdb_source.__msg.30) #6
  %tobool9.not = icmp eq ptr %extack, null
  br i1 %tobool9.not, label %do.body7.return_crit_edge, label %do.body7.return.sink.split_crit_edge

do.body7.return.sink.split_crit_edge:             ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #8
  br label %return.sink.split

do.body7.return_crit_edge:                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

sw.bb15:                                          ; preds = %entry
  %5 = ptrtoint ptr %attr to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %attr, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 20, i16 %6)
  %cmp17.not = icmp eq i16 %6, 20
  br i1 %cmp17.not, label %if.end27, label %do.body20

do.body20:                                        ; preds = %sw.bb15
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @is_valid_mdb_source.__msg.31) #6
  %tobool22.not = icmp eq ptr %extack, null
  br i1 %tobool22.not, label %do.body20.return_crit_edge, label %do.body20.return.sink.split_crit_edge

do.body20.return.sink.split_crit_edge:            ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #8
  br label %return.sink.split

do.body20.return_crit_edge:                       ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end27:                                         ; preds = %sw.bb15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #6
  %7 = call ptr @memset(ptr %tmp, i32 255, i32 16)
  %call.i = call i32 @nla_memcpy(ptr noundef nonnull %tmp, ptr noundef %attr, i32 noundef 16) #6
  %8 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %8)
  %src.sroa.0.0.copyload = load i32, ptr %tmp, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16777217, i32 %src.sroa.0.0.copyload)
  %cmp.i61 = icmp ugt i32 %src.sroa.0.0.copyload, -16777217
  br i1 %cmp.i61, label %do.body30, label %if.end27.return_crit_edge

if.end27.return_crit_edge:                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

do.body30:                                        ; preds = %if.end27
  call void @do_trace_netlink_extack(ptr noundef nonnull @is_valid_mdb_source.__msg.32) #6
  %tobool32.not = icmp eq ptr %extack, null
  br i1 %tobool32.not, label %do.body30.return_crit_edge, label %do.body30.return.sink.split_crit_edge

do.body30.return.sink.split_crit_edge:            ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #8
  br label %return.sink.split

do.body30.return_crit_edge:                       ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

do.body39:                                        ; preds = %entry
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @is_valid_mdb_source.__msg.33) #6
  %tobool41.not = icmp eq ptr %extack, null
  br i1 %tobool41.not, label %do.body39.return_crit_edge, label %do.body39.return.sink.split_crit_edge

do.body39.return.sink.split_crit_edge:            ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #8
  br label %return.sink.split

do.body39.return_crit_edge:                       ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

return.sink.split:                                ; preds = %do.body39.return.sink.split_crit_edge, %do.body30.return.sink.split_crit_edge, %do.body20.return.sink.split_crit_edge, %do.body7.return.sink.split_crit_edge, %do.body.return.sink.split_crit_edge
  %is_valid_mdb_source.__msg.32.sink = phi ptr [ @is_valid_mdb_source.__msg, %do.body.return.sink.split_crit_edge ], [ @is_valid_mdb_source.__msg.30, %do.body7.return.sink.split_crit_edge ], [ @is_valid_mdb_source.__msg.31, %do.body20.return.sink.split_crit_edge ], [ @is_valid_mdb_source.__msg.32, %do.body30.return.sink.split_crit_edge ], [ @is_valid_mdb_source.__msg.33, %do.body39.return.sink.split_crit_edge ]
  %9 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %is_valid_mdb_source.__msg.32.sink, ptr %extack, align 4
  br label %return

return:                                           ; preds = %return.sink.split, %do.body39.return_crit_edge, %do.body30.return_crit_edge, %if.end27.return_crit_edge, %do.body20.return_crit_edge, %do.body7.return_crit_edge, %if.end3.return_crit_edge, %do.body.return_crit_edge
  %retval.1 = phi i1 [ false, %do.body.return_crit_edge ], [ false, %do.body7.return_crit_edge ], [ false, %do.body39.return_crit_edge ], [ true, %if.end3.return_crit_edge ], [ false, %do.body20.return_crit_edge ], [ false, %do.body30.return_crit_edge ], [ true, %if.end27.return_crit_edge ], [ false, %return.sink.split ]
  ret i1 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__nla_parse(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_memcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @br_mdb_ip_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @br_multicast_new_group(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @br_multicast_host_join(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @br_multicast_new_port_group(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @br_multicast_star_g_handle_mode(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @br_multicast_sg_add_exclude_ports(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__br_mdb_del(ptr noundef %br, ptr nocapture noundef readonly %entry1, ptr noundef readonly %mdb_attrs) unnamed_addr #0 align 64 {
entry:
  %tmp.i = alloca %struct.in6_addr, align 4
  %ip = alloca %struct.br_ip, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %ip) #6
  %dev = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 3
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %options.i = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 4
  %4 = ptrtoint ptr %options.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %options.i, align 4
  %6 = and i32 %5, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %7 = call ptr @memset(ptr %ip, i32 0, i32 32)
  %vid.i = getelementptr inbounds %struct.br_mdb_entry, ptr %entry1, i32 0, i32 3
  %8 = ptrtoint ptr %vid.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %vid.i, align 2
  %vid2.i = getelementptr inbounds %struct.br_ip, ptr %ip, i32 0, i32 3
  %10 = ptrtoint ptr %vid2.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %vid2.i, align 2
  %addr.i = getelementptr inbounds %struct.br_mdb_entry, ptr %entry1, i32 0, i32 4
  %proto.i = getelementptr inbounds %struct.br_mdb_entry, ptr %entry1, i32 0, i32 4, i32 1
  %11 = ptrtoint ptr %proto.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %proto.i, align 4
  %proto3.i = getelementptr inbounds %struct.br_ip, ptr %ip, i32 0, i32 2
  %13 = ptrtoint ptr %proto3.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %proto3.i, align 4
  %14 = zext i16 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.50)
  switch i16 %12, label %sw.default.i [
    i16 2048, label %sw.bb.i
    i16 -31011, label %sw.bb8.i
  ]

sw.bb.i:                                          ; preds = %if.end
  %15 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %addr.i, align 4
  %dst.i = getelementptr inbounds %struct.br_ip, ptr %ip, i32 0, i32 1
  %17 = ptrtoint ptr %dst.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %dst.i, align 4
  %tobool.not.i = icmp eq ptr %mdb_attrs, null
  br i1 %tobool.not.i, label %sw.bb.i.__mdb_entry_to_br_ip.exit_crit_edge, label %land.lhs.true.i

sw.bb.i.__mdb_entry_to_br_ip.exit_crit_edge:      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__mdb_entry_to_br_ip.exit

land.lhs.true.i:                                  ; preds = %sw.bb.i
  %arrayidx.i = getelementptr ptr, ptr %mdb_attrs, i32 1
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.i, align 4
  %tobool6.not.i = icmp eq ptr %19, null
  br i1 %tobool6.not.i, label %land.lhs.true.i.__mdb_entry_to_br_ip.exit_crit_edge, label %if.then.i

land.lhs.true.i.__mdb_entry_to_br_ip.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__mdb_entry_to_br_ip.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i.i.i = getelementptr i8, ptr %19, i32 4
  %20 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %add.ptr.i.i.i, align 4
  %22 = ptrtoint ptr %ip to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %ip, align 4
  br label %__mdb_entry_to_br_ip.exit

sw.bb8.i:                                         ; preds = %if.end
  %dst9.i = getelementptr inbounds %struct.br_ip, ptr %ip, i32 0, i32 1
  %23 = call ptr @memcpy(ptr %dst9.i, ptr %addr.i, i32 16)
  %tobool12.not.i = icmp eq ptr %mdb_attrs, null
  br i1 %tobool12.not.i, label %sw.bb8.i.__mdb_entry_to_br_ip.exit_crit_edge, label %land.lhs.true13.i

sw.bb8.i.__mdb_entry_to_br_ip.exit_crit_edge:     ; preds = %sw.bb8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__mdb_entry_to_br_ip.exit

land.lhs.true13.i:                                ; preds = %sw.bb8.i
  %arrayidx14.i = getelementptr ptr, ptr %mdb_attrs, i32 1
  %24 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx14.i, align 4
  %tobool15.not.i = icmp eq ptr %25, null
  br i1 %tobool15.not.i, label %land.lhs.true13.i.__mdb_entry_to_br_ip.exit_crit_edge, label %if.then16.i

land.lhs.true13.i.__mdb_entry_to_br_ip.exit_crit_edge: ; preds = %land.lhs.true13.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__mdb_entry_to_br_ip.exit

if.then16.i:                                      ; preds = %land.lhs.true13.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp.i) #6
  %26 = call ptr @memset(ptr %tmp.i, i32 255, i32 16)
  %call.i.i = call i32 @nla_memcpy(ptr noundef nonnull %tmp.i, ptr noundef nonnull %25, i32 noundef 16) #6
  %27 = call ptr @memcpy(ptr %ip, ptr %tmp.i, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp.i) #6
  br label %__mdb_entry_to_br_ip.exit

sw.default.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %dst20.i = getelementptr inbounds %struct.br_ip, ptr %ip, i32 0, i32 1
  %28 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %addr.i, align 4
  %30 = ptrtoint ptr %dst20.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %dst20.i, align 4
  %add.ptr.i.i = getelementptr %struct.br_mdb_entry, ptr %entry1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 1
  %31 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %add.ptr.i.i, align 2
  %add.ptr1.i.i = getelementptr inbounds %struct.br_ip, ptr %ip, i32 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %33 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %32, ptr %add.ptr1.i.i, align 4
  br label %__mdb_entry_to_br_ip.exit

__mdb_entry_to_br_ip.exit:                        ; preds = %sw.default.i, %if.then16.i, %land.lhs.true13.i.__mdb_entry_to_br_ip.exit_crit_edge, %sw.bb8.i.__mdb_entry_to_br_ip.exit_crit_edge, %if.then.i, %land.lhs.true.i.__mdb_entry_to_br_ip.exit_crit_edge, %sw.bb.i.__mdb_entry_to_br_ip.exit_crit_edge
  %multicast_lock = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 32
  call void @_raw_spin_lock_bh(ptr noundef %multicast_lock) #6
  %call3 = call ptr @br_mdb_ip_get(ptr noundef %br, ptr noundef nonnull %ip) #6
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %__mdb_entry_to_br_ip.exit.unlock_crit_edge, label %if.end6

__mdb_entry_to_br_ip.exit.unlock_crit_edge:       ; preds = %__mdb_entry_to_br_ip.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %unlock

if.end6:                                          ; preds = %__mdb_entry_to_br_ip.exit
  %34 = ptrtoint ptr %entry1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %entry1, align 4
  %br7 = getelementptr inbounds %struct.net_bridge_mdb_entry, ptr %call3, i32 0, i32 1
  %36 = ptrtoint ptr %br7 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %br7, align 4
  %dev8 = getelementptr inbounds %struct.net_bridge, ptr %37, i32 0, i32 3
  %38 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev8, align 4
  %ifindex9 = getelementptr inbounds %struct.net_device, ptr %39, i32 0, i32 17
  %40 = ptrtoint ptr %ifindex9 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %ifindex9, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %41)
  %cmp = icmp eq i32 %35, %41
  br i1 %cmp, label %land.lhs.true, label %if.end6.if.end20_crit_edge

if.end6.if.end20_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

land.lhs.true:                                    ; preds = %if.end6
  %host_joined = getelementptr inbounds %struct.net_bridge_mdb_entry, ptr %call3, i32 0, i32 4
  %42 = ptrtoint ptr %host_joined to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %host_joined, align 4, !range !129
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool10.not = icmp eq i8 %43, 0
  br i1 %tobool10.not, label %land.lhs.true.if.end20_crit_edge, label %if.then11

land.lhs.true.if.end20_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

if.then11:                                        ; preds = %land.lhs.true
  call void @br_multicast_host_leave(ptr noundef nonnull %call3, i1 noundef zeroext false) #6
  %44 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev, align 4
  call void @br_mdb_notify(ptr noundef %45, ptr noundef nonnull %call3, ptr noundef null, i32 noundef 85)
  %ports = getelementptr inbounds %struct.net_bridge_mdb_entry, ptr %call3, i32 0, i32 2
  %46 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ports, align 4
  %tobool13.not = icmp eq ptr %47, null
  br i1 %tobool13.not, label %land.lhs.true14, label %if.then11.unlock_crit_edge

if.then11.unlock_crit_edge:                       ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #8
  br label %unlock

land.lhs.true14:                                  ; preds = %if.then11
  %48 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev, align 4
  %state.i79 = getelementptr inbounds %struct.net_device, ptr %49, i32 0, i32 6
  %50 = ptrtoint ptr %state.i79 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %state.i79, align 4
  %and1.i.i80 = and i32 %51, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i80)
  %tobool.i81.not = icmp eq i32 %and1.i.i80, 0
  br i1 %tobool.i81.not, label %land.lhs.true14.unlock_crit_edge, label %if.then17

land.lhs.true14.unlock_crit_edge:                 ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #8
  br label %unlock

if.then17:                                        ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #8
  %timer = getelementptr inbounds %struct.net_bridge_mdb_entry, ptr %call3, i32 0, i32 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %52 = load volatile i32, ptr @jiffies, align 128
  %call18 = call i32 @mod_timer(ptr noundef %timer, i32 noundef %52) #6
  br label %unlock

if.end20:                                         ; preds = %land.lhs.true.if.end20_crit_edge, %if.end6.if.end20_crit_edge
  %ports21 = getelementptr inbounds %struct.net_bridge_mdb_entry, ptr %call3, i32 0, i32 2
  %dep_map = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 32, i32 0, i32 0, i32 4
  br label %for.cond

for.cond:                                         ; preds = %for.cond.backedge, %if.end20
  %pp.0 = phi ptr [ %ports21, %if.end20 ], [ %54, %for.cond.backedge ]
  %call.i = call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool24.not = icmp eq i32 %call.i, 0
  br i1 %tobool24.not, label %land.lhs.true25, label %for.cond.do.end_crit_edge

for.cond.do.end_crit_edge:                        ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

land.lhs.true25:                                  ; preds = %for.cond
  %call26 = call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %land.lhs.true25.do.end_crit_edge, label %land.lhs.true28

land.lhs.true25.do.end_crit_edge:                 ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

land.lhs.true28:                                  ; preds = %land.lhs.true25
  %.b77 = load i1, ptr @__br_mdb_del.__warned, align 1
  br i1 %.b77, label %land.lhs.true28.do.end_crit_edge, label %if.then30

land.lhs.true28.do.end_crit_edge:                 ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.then30:                                        ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @__br_mdb_del.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1082, ptr noundef nonnull @.str.7) #6
  br label %do.end

do.end:                                           ; preds = %if.then30, %land.lhs.true28.do.end_crit_edge, %land.lhs.true25.do.end_crit_edge, %for.cond.do.end_crit_edge
  %53 = ptrtoint ptr %pp.0 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %pp.0, align 4
  %cmp32.not = icmp eq ptr %54, null
  br i1 %cmp32.not, label %do.end.unlock_crit_edge, label %for.body

do.end.unlock_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %unlock

for.body:                                         ; preds = %do.end
  %key = getelementptr inbounds %struct.net_bridge_port_group, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %key, align 4
  %tobool33.not = icmp eq ptr %56, null
  br i1 %tobool33.not, label %for.body.for.cond.backedge_crit_edge, label %lor.lhs.false34

for.body.for.cond.backedge_crit_edge:             ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.backedge

for.cond.backedge:                                ; preds = %lor.lhs.false34.for.cond.backedge_crit_edge, %for.body.for.cond.backedge_crit_edge
  br label %for.cond

lor.lhs.false34:                                  ; preds = %for.body
  %dev37 = getelementptr inbounds %struct.net_bridge_port, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %dev37 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev37, align 4
  %ifindex38 = getelementptr inbounds %struct.net_device, ptr %58, i32 0, i32 17
  %59 = ptrtoint ptr %ifindex38 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %ifindex38, align 4
  %61 = ptrtoint ptr %entry1 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %entry1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %60, i32 %62)
  %cmp40.not = icmp eq i32 %60, %62
  br i1 %cmp40.not, label %if.end42, label %lor.lhs.false34.for.cond.backedge_crit_edge

lor.lhs.false34.for.cond.backedge_crit_edge:      ; preds = %lor.lhs.false34
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.backedge

if.end42:                                         ; preds = %lor.lhs.false34
  %state = getelementptr inbounds %struct.net_bridge_port, ptr %56, i32 0, i32 8
  %63 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %state, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %cmp45 = icmp eq i8 %64, 0
  br i1 %cmp45, label %if.end42.unlock_crit_edge, label %if.end48

if.end42.unlock_crit_edge:                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #8
  br label %unlock

if.end48:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #8
  call void @br_multicast_del_pg(ptr noundef nonnull %call3, ptr noundef nonnull %54, ptr noundef %pp.0) #6
  br label %unlock

unlock:                                           ; preds = %if.end48, %if.end42.unlock_crit_edge, %do.end.unlock_crit_edge, %if.then17, %land.lhs.true14.unlock_crit_edge, %if.then11.unlock_crit_edge, %__mdb_entry_to_br_ip.exit.unlock_crit_edge
  %err.0 = phi i32 [ 0, %if.then11.unlock_crit_edge ], [ 0, %if.then17 ], [ 0, %land.lhs.true14.unlock_crit_edge ], [ -22, %if.end42.unlock_crit_edge ], [ 0, %if.end48 ], [ -22, %__mdb_entry_to_br_ip.exit.unlock_crit_edge ], [ -22, %do.end.unlock_crit_edge ]
  call void @_raw_spin_unlock_bh(ptr noundef %multicast_lock) #6
  br label %cleanup

cleanup:                                          ; preds = %unlock, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %unlock ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %ip) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @br_multicast_host_leave(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @br_multicast_del_pg(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind readonly }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !8, !10, !11, !12, !14, !15, !17, !18, !19, !21, !23, !25, !27, !29, !31, !33, !35, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114}
!llvm.named.register.sp = !{!116}
!llvm.module.flags = !{!117, !118, !119, !120, !121, !122, !123, !124}
!llvm.ident = !{!125}

!0 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!1 = !{!"../net/bridge/br_mdb.c", i32 56, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = distinct !{null, !5, !"__warned", i1 false, i1 false}
!5 = !{!"../net/bridge/br_mdb.c", i32 61, i32 2}
!6 = distinct !{null, !7, !"__warned", i1 false, i1 false}
!7 = !{!"../net/bridge/br_mdb.c", i32 86, i32 2}
!8 = distinct !{null, !9, !"__warned", i1 false, i1 false}
!9 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!10 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!12 = distinct !{null, !13, !"__warned", i1 false, i1 false}
!13 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!14 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!15 = distinct !{null, !16, !"__warned", i1 false, i1 false}
!16 = !{!"../net/bridge/br_private.h", i32 1477, i32 9}
!17 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../include/net/netlink.h", i32 991, i32 3}
!21 = distinct !{null, !22, !"__warned", i1 false, i1 false}
!22 = !{!"../net/bridge/br_mdb.c", i32 187, i32 2}
!23 = distinct !{null, !24, !"__warned", i1 false, i1 false}
!24 = !{!"../net/bridge/br_mdb.c", i32 424, i32 2}
!25 = !{ptr @br_mdb_valid_dump_req.__msg, !26, !"__msg", i1 false, i1 false}
!26 = !{!"../net/bridge/br_mdb.c", i32 387, i32 3}
!27 = !{ptr @br_mdb_valid_dump_req.__msg.9, !28, !"__msg", i1 false, i1 false}
!28 = !{!"../net/bridge/br_mdb.c", i32 393, i32 3}
!29 = !{ptr @br_mdb_valid_dump_req.__msg.10, !30, !"__msg", i1 false, i1 false}
!30 = !{!"../net/bridge/br_mdb.c", i32 397, i32 3}
!31 = distinct !{null, !32, !"__warned", i1 false, i1 false}
!32 = !{!"../net/bridge/br_mdb.c", i32 331, i32 2}
!33 = distinct !{null, !34, !"__warned", i1 false, i1 false}
!34 = !{!"../net/bridge/br_mdb.c", i32 352, i32 30}
!35 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @br_mdb_add.__msg, !37, !"__msg", i1 false, i1 false}
!37 = !{!"../net/bridge/br_mdb.c", i32 1000, i32 3}
!38 = !{ptr @br_mdb_add.__msg.13, !39, !"__msg", i1 false, i1 false}
!39 = !{!"../net/bridge/br_mdb.c", i32 1005, i32 3}
!40 = !{ptr @br_mdb_add.__msg.14, !41, !"__msg", i1 false, i1 false}
!41 = !{!"../net/bridge/br_mdb.c", i32 1012, i32 4}
!42 = !{ptr @br_mdb_add.__msg.15, !43, !"__msg", i1 false, i1 false}
!43 = !{!"../net/bridge/br_mdb.c", i32 1018, i32 4}
!44 = !{ptr @br_mdb_add.__msg.16, !45, !"__msg", i1 false, i1 false}
!45 = !{!"../net/bridge/br_mdb.c", i32 1023, i32 4}
!46 = !{ptr @br_mdb_add.__msg.17, !47, !"__msg", i1 false, i1 false}
!47 = !{!"../net/bridge/br_mdb.c", i32 1027, i32 4}
!48 = !{ptr @br_mdb_parse.__msg, !49, !"__msg", i1 false, i1 false}
!49 = !{!"../net/bridge/br_mdb.c", i32 773, i32 3}
!50 = !{ptr @br_mdb_parse.__msg.18, !51, !"__msg", i1 false, i1 false}
!51 = !{!"../net/bridge/br_mdb.c", i32 779, i32 3}
!52 = !{ptr @br_mdb_parse.__msg.19, !53, !"__msg", i1 false, i1 false}
!53 = !{!"../net/bridge/br_mdb.c", i32 784, i32 3}
!54 = !{ptr @br_mdb_parse.__msg.20, !55, !"__msg", i1 false, i1 false}
!55 = !{!"../net/bridge/br_mdb.c", i32 791, i32 3}
!56 = !{ptr @br_mdb_parse.__msg.21, !57, !"__msg", i1 false, i1 false}
!57 = !{!"../net/bridge/br_mdb.c", i32 795, i32 3}
!58 = !{ptr @__nlmsg_parse.__msg, !59, !"__msg", i1 false, i1 false}
!59 = !{!"../include/net/netlink.h", i32 729, i32 3}
!60 = !{ptr @is_valid_mdb_entry.__msg, !61, !"__msg", i1 false, i1 false}
!61 = !{!"../net/bridge/br_mdb.c", i32 668, i32 3}
!62 = !{ptr @is_valid_mdb_entry.__msg.22, !63, !"__msg", i1 false, i1 false}
!63 = !{!"../net/bridge/br_mdb.c", i32 674, i32 4}
!64 = !{ptr @is_valid_mdb_entry.__msg.23, !65, !"__msg", i1 false, i1 false}
!65 = !{!"../net/bridge/br_mdb.c", i32 678, i32 4}
!66 = !{ptr @is_valid_mdb_entry.__msg.24, !67, !"__msg", i1 false, i1 false}
!67 = !{!"../net/bridge/br_mdb.c", i32 684, i32 4}
!68 = !{ptr @is_valid_mdb_entry.__msg.25, !69, !"__msg", i1 false, i1 false}
!69 = !{!"../net/bridge/br_mdb.c", i32 691, i32 4}
!70 = !{ptr @is_valid_mdb_entry.__msg.26, !71, !"__msg", i1 false, i1 false}
!71 = !{!"../net/bridge/br_mdb.c", i32 695, i32 3}
!72 = !{ptr @is_valid_mdb_entry.__msg.27, !73, !"__msg", i1 false, i1 false}
!73 = !{!"../net/bridge/br_mdb.c", i32 700, i32 3}
!74 = !{ptr @is_valid_mdb_entry.__msg.28, !75, !"__msg", i1 false, i1 false}
!75 = !{!"../net/bridge/br_mdb.c", i32 704, i32 3}
!76 = !{ptr @nla_parse_nested.__msg, !77, !"__msg", i1 false, i1 false}
!77 = !{!"../include/net/netlink.h", i32 1208, i32 3}
!78 = !{ptr @br_mdbe_attrs_pol, !79, !"br_mdbe_attrs_pol", i1 false, i1 false}
!79 = !{!"../net/bridge/br_mdb.c", i32 749, i32 32}
!80 = !{ptr @is_valid_mdb_source.__msg, !81, !"__msg", i1 false, i1 false}
!81 = !{!"../net/bridge/br_mdb.c", i32 717, i32 4}
!82 = !{ptr @is_valid_mdb_source.__msg.30, !83, !"__msg", i1 false, i1 false}
!83 = !{!"../net/bridge/br_mdb.c", i32 721, i32 4}
!84 = !{ptr @is_valid_mdb_source.__msg.31, !85, !"__msg", i1 false, i1 false}
!85 = !{!"../net/bridge/br_mdb.c", i32 730, i32 4}
!86 = !{ptr @is_valid_mdb_source.__msg.32, !87, !"__msg", i1 false, i1 false}
!87 = !{!"../net/bridge/br_mdb.c", i32 735, i32 4}
!88 = !{ptr @is_valid_mdb_source.__msg.33, !89, !"__msg", i1 false, i1 false}
!89 = !{!"../net/bridge/br_mdb.c", i32 742, i32 3}
!90 = distinct !{null, !91, !"__warned", i1 false, i1 false}
!91 = !{!"../net/bridge/br_private.h", i32 422, i32 3}
!92 = distinct !{null, !93, !"__warned", i1 false, i1 false}
!93 = !{!"../net/bridge/br_private.h", i32 1471, i32 9}
!94 = !{ptr @br_mdb_add_group.__msg, !95, !"__msg", i1 false, i1 false}
!95 = !{!"../net/bridge/br_mdb.c", i32 879, i32 4}
!96 = !{ptr @br_mdb_add_group.__msg.34, !97, !"__msg", i1 false, i1 false}
!97 = !{!"../net/bridge/br_mdb.c", i32 883, i32 4}
!98 = !{ptr @br_mdb_add_group.__msg.35, !99, !"__msg", i1 false, i1 false}
!99 = !{!"../net/bridge/br_mdb.c", i32 889, i32 3}
!100 = !{ptr @br_mdb_add_group.__msg.36, !101, !"__msg", i1 false, i1 false}
!101 = !{!"../net/bridge/br_mdb.c", i32 904, i32 4}
!102 = distinct !{null, !103, !"__warned", i1 false, i1 false}
!103 = !{!"../net/bridge/br_mdb.c", i32 915, i32 12}
!104 = !{ptr @br_mdb_add_group.__msg.37, !105, !"__msg", i1 false, i1 false}
!105 = !{!"../net/bridge/br_mdb.c", i32 918, i32 4}
!106 = !{ptr @br_mdb_add_group.__msg.38, !107, !"__msg", i1 false, i1 false}
!107 = !{!"../net/bridge/br_mdb.c", i32 934, i32 3}
!108 = !{ptr @__br_mdb_choose_context.__msg, !109, !"__msg", i1 false, i1 false}
!109 = !{!"../net/bridge/br_mdb.c", i32 836, i32 3}
!110 = !{ptr @__br_mdb_choose_context.__msg.39, !111, !"__msg", i1 false, i1 false}
!111 = !{!"../net/bridge/br_mdb.c", i32 842, i32 3}
!112 = !{ptr @__br_mdb_choose_context.__msg.40, !113, !"__msg", i1 false, i1 false}
!113 = !{!"../net/bridge/br_mdb.c", i32 846, i32 3}
!114 = distinct !{null, !115, !"__warned", i1 false, i1 false}
!115 = !{!"../net/bridge/br_mdb.c", i32 1082, i32 12}
!116 = !{!"sp"}
!117 = !{i32 1, !"wchar_size", i32 2}
!118 = !{i32 1, !"min_enum_size", i32 4}
!119 = !{i32 8, !"branch-target-enforcement", i32 0}
!120 = !{i32 8, !"sign-return-address", i32 0}
!121 = !{i32 8, !"sign-return-address-all", i32 0}
!122 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!123 = !{i32 7, !"uwtable", i32 1}
!124 = !{i32 7, !"frame-pointer", i32 2}
!125 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!126 = !{i64 2149676571}
!127 = !{i64 2149676837}
!128 = !{!"branch_weights", i32 1, i32 2000}
!129 = !{i8 0, i8 2}
!130 = !{!"auto-init"}
!131 = !{i64 2158264671}
