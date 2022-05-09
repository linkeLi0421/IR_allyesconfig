; ModuleID = '/llk/IR_all_yes/net/batman-adv/netlink.c_pt.bc'
source_filename = "../net/batman-adv/netlink.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.genl_family = type { i32, i32, [16 x i8], i32, i32, i32, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nla_policy = type { i8, i8, i16, %union.anon.48 }
%union.anon.48 = type { i32 }
%struct.genl_small_ops = type { ptr, ptr, i8, i8, i8, i8 }
%struct.genl_multicast_group = type { [16 x i8], i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.batadv_priv = type { %struct.atomic_t, ptr, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, ptr, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.atomic_t, %struct.delayed_work, ptr, ptr, %struct.hlist_head, %struct.spinlock, %struct.batadv_priv_bla, ptr, %struct.batadv_priv_gw, %struct.batadv_priv_tt, %struct.batadv_priv_tvlv, %struct.batadv_priv_dat, %struct.batadv_priv_mcast, %struct.atomic_t, %struct.batadv_priv_nc, %struct.batadv_priv_bat_v }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.batadv_priv_bla = type { %struct.atomic_t, ptr, ptr, [6 x i8], i32, %struct.atomic_t, [16 x %struct.batadv_bcast_duplist_entry], i32, %struct.spinlock, %struct.batadv_bla_claim_dst, %struct.delayed_work }
%struct.batadv_bcast_duplist_entry = type { [6 x i8], i32, i32 }
%struct.batadv_bla_claim_dst = type { [3 x i8], i8, i16 }
%struct.batadv_priv_gw = type { %struct.hlist_head, %struct.spinlock, ptr, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t }
%struct.batadv_priv_tt = type { %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.list_head, ptr, ptr, %struct.hlist_head, %struct.list_head, %struct.spinlock, %struct.spinlock, %struct.spinlock, ptr, i16, %struct.spinlock, %struct.spinlock, %struct.delayed_work }
%struct.batadv_priv_tvlv = type { %struct.hlist_head, %struct.hlist_head, %struct.spinlock, %struct.spinlock }
%struct.batadv_priv_dat = type { i16, ptr, %struct.delayed_work }
%struct.batadv_priv_mcast = type { %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.batadv_mcast_mla_flags, %struct.spinlock, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, %struct.delayed_work }
%struct.batadv_mcast_mla_flags = type { %struct.batadv_mcast_querier_state, %struct.batadv_mcast_querier_state, i8, i8 }
%struct.batadv_mcast_querier_state = type { i8 }
%struct.atomic_t = type { i32 }
%struct.batadv_priv_nc = type { %struct.delayed_work, i8, i32, i32, i32, i32, ptr, ptr }
%struct.batadv_priv_bat_v = type { ptr, i32, %struct.atomic_t, %struct.mutex, %struct.delayed_work }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.139, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.139 = type { ptr }
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
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.39, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.39 = type { %struct.anon.40 }
%struct.anon.40 = type { ptr, i32, i32, i32 }
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
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.ping_group_range = type { %struct.seqlock_t, [2 x %struct.kgid_t] }
%struct.kgid_t = type { i32 }
%struct.siphash_key_t = type { [2 x i64] }
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.53, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.53 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.51, i32, %struct.spinlock }
%union.anon.51 = type { %struct.anon.52 }
%struct.anon.52 = type { ptr, ptr }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [8 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_mpls = type { i32, i32, i32, ptr, ptr }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.netns_xdp = type { %struct.mutex, %struct.hlist_head }
%struct.netns_mctp = type { %struct.list_head, %struct.mutex, %struct.hlist_head, %struct.spinlock, %struct.hlist_head, i32, %struct.mutex, %struct.list_head }
%struct.netns_smc = type { ptr, %struct.mutex, ptr }
%struct.sk_buff = type { %union.anon, %union.anon.2, %union.anon.110, [48 x i8], %union.anon.111, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.113, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%union.anon.2 = type { ptr }
%union.anon.110 = type { i64 }
%union.anon.111 = type { %struct.anon.112 }
%struct.anon.112 = type { i32, ptr }
%union.anon.113 = type { %struct.anon.114 }
%struct.anon.114 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.115, i32, i32, i32, i16, i16, %union.anon.117, i32, %union.anon.118, %union.anon.119, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.115 = type { i32 }
%union.anon.117 = type { i32 }
%union.anon.118 = type { i32 }
%union.anon.119 = type { i16 }
%struct.batadv_algo_ops = type { %struct.hlist_node, ptr, %struct.batadv_algo_iface_ops, %struct.batadv_algo_neigh_ops, %struct.batadv_algo_orig_ops, %struct.batadv_algo_gw_ops }
%struct.batadv_algo_iface_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.batadv_algo_neigh_ops = type { ptr, ptr, ptr, ptr }
%struct.batadv_algo_orig_ops = type { ptr }
%struct.batadv_algo_gw_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.batadv_hard_iface = type { %struct.list_head, i8, i8, i32, ptr, %struct.kref, %struct.packet_type, ptr, %struct.callback_head, %struct.atomic_t, %struct.batadv_hard_iface_bat_iv, %struct.batadv_hard_iface_bat_v, %struct.hlist_head, %struct.spinlock }
%struct.packet_type = type { i16, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.callback_head = type { ptr, ptr }
%struct.batadv_hard_iface_bat_iv = type { ptr, i32, %struct.atomic_t, %struct.mutex }
%struct.batadv_hard_iface_bat_v = type { %struct.atomic_t, %struct.atomic_t, ptr, %struct.delayed_work, %struct.delayed_work, %struct.sk_buff_head, i32, %struct.atomic_t, i8 }
%struct.netlink_callback = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, i8, %union.anon.129 }
%union.anon.129 = type { [6 x i32], [24 x i8] }
%struct.batadv_softif_vlan = type { ptr, i16, %struct.atomic_t, %struct.batadv_vlan_tt, %struct.hlist_node, %struct.kref, %struct.callback_head }
%struct.batadv_vlan_tt = type { i32, %struct.atomic_t }
%struct.genl_info = type { i32, i32, ptr, ptr, ptr, ptr, %struct.possible_net_t, [2 x ptr], ptr }
%struct.genl_ops = type { ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i8 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.sock_common = type { %union.anon.3, %union.anon.5, %union.anon.6, i16, i8, i8, i32, %union.anon.8, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.100, [0 x i32], %union.anon.101, i16, i16, %union.anon.102, %struct.refcount_struct, [0 x i32], %union.anon.103 }
%union.anon.3 = type { i64 }
%union.anon.5 = type { i32 }
%union.anon.6 = type { i32 }
%union.anon.8 = type { %struct.hlist_node }
%struct.in6_addr = type { %union.anon.47 }
%union.anon.47 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.100 = type { i32 }
%union.anon.101 = type { %struct.hlist_node }
%union.anon.102 = type { i32 }
%union.anon.103 = type { i32 }
%struct.nlmsghdr = type { i32, i16, i16, i32, i32 }

@batadv_netlink_family = dso_local global %struct.genl_family { i32 0, i32 0, [16 x i8] c"batadv\00\00\00\00\00\00\00\00\00\00", i32 1, i32 60, i32 0, i8 -128, i8 0, i8 18, i8 2, ptr @batadv_netlink_policy, ptr @batadv_pre_doit, ptr @batadv_post_doit, ptr null, ptr @batadv_netlink_ops, ptr @batadv_netlink_mcgrps, ptr null }, section ".data..ro_after_init", align 4
@batadv_netlink_policy = internal constant { [61 x %struct.nla_policy], [120 x i8] } { [61 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 5, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 5, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 5, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 0, i8 0, i16 6, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 5, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 0, i8 0, i16 6, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 0, i8 0, i16 6, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 4, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 6, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 0, i8 0, i16 6, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 6, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 0, i8 0, i16 6, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 0, i8 0, i16 6, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 6, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 0, i8 0, i16 6, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 0, i8 0, i16 6, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 0, i8 0, i16 6, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.48 zeroinitializer }], [120 x i8] zeroinitializer }, align 32
@batadv_netlink_ops = internal constant { [18 x %struct.genl_small_ops], [40 x i8] } { [18 x %struct.genl_small_ops] [%struct.genl_small_ops { ptr @batadv_netlink_get_mesh, ptr null, i8 1, i8 1, i8 0, i8 3 }, %struct.genl_small_ops { ptr @batadv_netlink_tp_meter_start, ptr null, i8 2, i8 1, i8 16, i8 3 }, %struct.genl_small_ops { ptr @batadv_netlink_tp_meter_cancel, ptr null, i8 3, i8 1, i8 16, i8 3 }, %struct.genl_small_ops { ptr null, ptr @batadv_algo_dump, i8 4, i8 0, i8 16, i8 3 }, %struct.genl_small_ops { ptr @batadv_netlink_get_hardif, ptr @batadv_netlink_dump_hardif, i8 5, i8 3, i8 0, i8 3 }, %struct.genl_small_ops { ptr null, ptr @batadv_tt_local_dump, i8 6, i8 0, i8 16, i8 3 }, %struct.genl_small_ops { ptr null, ptr @batadv_tt_global_dump, i8 7, i8 0, i8 16, i8 3 }, %struct.genl_small_ops { ptr null, ptr @batadv_orig_dump, i8 8, i8 0, i8 16, i8 3 }, %struct.genl_small_ops { ptr null, ptr @batadv_hardif_neigh_dump, i8 9, i8 0, i8 16, i8 3 }, %struct.genl_small_ops { ptr null, ptr @batadv_gw_dump, i8 10, i8 0, i8 16, i8 3 }, %struct.genl_small_ops { ptr null, ptr @batadv_bla_claim_dump, i8 11, i8 0, i8 16, i8 3 }, %struct.genl_small_ops { ptr null, ptr @batadv_bla_backbone_dump, i8 12, i8 0, i8 16, i8 3 }, %struct.genl_small_ops { ptr null, ptr @batadv_dat_cache_dump, i8 13, i8 0, i8 16, i8 3 }, %struct.genl_small_ops { ptr null, ptr @batadv_mcast_flags_dump, i8 14, i8 0, i8 16, i8 3 }, %struct.genl_small_ops { ptr @batadv_netlink_set_mesh, ptr null, i8 15, i8 1, i8 16, i8 3 }, %struct.genl_small_ops { ptr @batadv_netlink_set_hardif, ptr null, i8 16, i8 3, i8 16, i8 3 }, %struct.genl_small_ops { ptr @batadv_netlink_get_vlan, ptr null, i8 17, i8 5, i8 0, i8 3 }, %struct.genl_small_ops { ptr @batadv_netlink_set_vlan, ptr null, i8 18, i8 5, i8 16, i8 3 }], [40 x i8] zeroinitializer }, align 32
@batadv_netlink_mcgrps = internal constant { [2 x %struct.genl_multicast_group], [62 x i8] } { [2 x %struct.genl_multicast_group] [%struct.genl_multicast_group { [16 x i8] c"config\00\00\00\00\00\00\00\00\00\00", i8 0 }, %struct.genl_multicast_group { [16 x i8] c"tpmeter\00\00\00\00\00\00\00\00\00", i8 0 }], [62 x i8] zeroinitializer }, align 32
@batadv_netlink_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1509, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\014batman_adv: unable to register netlink family\00", [48 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"batadv_netlink_register\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"net/batman-adv/netlink.c\00", [39 x i8] zeroinitializer }, align 32
@batadv_netlink_register._entry_ptr = internal global ptr @batadv_netlink_register._entry, section ".printk_index", align 4
@.str.3 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"2022.0\00", [25 x i8] zeroinitializer }, align 32
@batadv_primary_if_get_selected.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"net/batman-adv/hard-interface.h\00", [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.8 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@genlmsg_multicast_netns.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/net/genetlink.h\00", [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/netlink.h\00", [42 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@batadv_hardif_generation = external dso_local local_unnamed_addr global i32, align 4
@batadv_hardif_list = external dso_local global %struct.list_head, align 4
@___asan_gen_.11 = private unnamed_addr constant [22 x i8] c"batadv_netlink_policy\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 94, i32 32 }
@___asan_gen_.14 = private unnamed_addr constant [19 x i8] c"batadv_netlink_ops\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 1360, i32 36 }
@___asan_gen_.17 = private unnamed_addr constant [22 x i8] c"batadv_netlink_mcgrps\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 89, i32 42 }
@___asan_gen_.20 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 1509, i32 3 }
@___asan_gen_.33 = private constant [28 x i8] c"../net/batman-adv/netlink.c\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 242, i32 47 }
@___asan_gen_.39 = private unnamed_addr constant [35 x i8] c"../net/batman-adv/hard-interface.h\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 110, i32 15 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 695, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 723, i32 2 }
@___asan_gen_.51 = private unnamed_addr constant [27 x i8] c"../include/net/genetlink.h\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 308, i32 6 }
@___asan_gen_.53 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.54 = private unnamed_addr constant [25 x i8] c"../include/net/netlink.h\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 991, i32 3 }
@llvm.compiler.used = appending global [16 x ptr] [ptr @batadv_netlink_register._entry, ptr @batadv_netlink_register._entry_ptr, ptr @batadv_netlink_policy, ptr @batadv_netlink_ops, ptr @batadv_netlink_mcgrps, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @batadv_netlink_policy to i32), i32 488, i32 608, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @batadv_netlink_ops to i32), i32 216, i32 256, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @batadv_netlink_mcgrps to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @batadv_netlink_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @batadv_netlink_get_ifindex(ptr noundef %nlh, i32 noundef %attrtype) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %nlh, i32 20
  %0 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nlh, align 4
  %sub1.i.i = add i32 %1, -20
  %call2.i = tail call ptr @nla_find(ptr noundef %add.ptr.i.i, i32 noundef %sub1.i.i, i32 noundef %attrtype) #10
  %tobool.not = icmp eq ptr %call2.i, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %land.lhs.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

land.lhs.true:                                    ; preds = %entry
  %2 = ptrtoint ptr %call2.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %call2.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %3)
  %cmp = icmp eq i16 %3, 8
  br i1 %cmp, label %cond.true, label %land.lhs.true.cond.end_crit_edge

land.lhs.true.cond.end_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.true:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i5 = getelementptr i8, ptr %call2.i, i32 4
  %4 = ptrtoint ptr %add.ptr.i.i5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr.i.i5, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %land.lhs.true.cond.end_crit_edge, %entry.cond.end_crit_edge
  %cond = phi i32 [ %5, %cond.true ], [ 0, %land.lhs.true.cond.end_crit_edge ], [ 0, %entry.cond.end_crit_edge ]
  ret i32 %cond
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @batadv_netlink_notify_mesh(ptr noundef %bat_priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef 3840, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #10
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc i32 @batadv_netlink_mesh_fill(ptr noundef nonnull %call.i.i, ptr noundef %bat_priv, i32 noundef 15, i32 noundef 0, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i.i, i32 noundef 0) #10
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %0 = load i8, ptr getelementptr inbounds (%struct.genl_family, ptr @batadv_netlink_family, i32 0, i32 9), align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %cmp.not.i.not = icmp eq i8 %0, 0
  br i1 %cmp.not.i.not, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %if.end3
  %.b1.i = load i1, ptr @genlmsg_multicast_netns.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.cleanup_crit_edge, label %if.then.i, !prof !42

land.rhs.i.cleanup_crit_edge:                     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @genlmsg_multicast_netns.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 308, i32 noundef 9, ptr noundef null) #10
  br label %cleanup

if.end39.i:                                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  %soft_iface = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 1
  %1 = ptrtoint ptr %soft_iface to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %soft_iface, align 4
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 127
  %3 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %nd_net.i, align 4
  %5 = load i32, ptr getelementptr inbounds (%struct.genl_family, ptr @batadv_netlink_family, i32 0, i32 5), align 4
  %genl_sock.i = getelementptr inbounds %struct.net, ptr %4, i32 0, i32 21
  %6 = ptrtoint ptr %genl_sock.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %genl_sock.i, align 4
  %dst_group.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3, i32 16
  %8 = ptrtoint ptr %dst_group.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %5, ptr %dst_group.i.i, align 8
  %call.i.i12 = tail call i32 @netlink_broadcast(ptr noundef %7, ptr noundef nonnull %call.i.i, i32 noundef 0, i32 noundef %5, i32 noundef 3264) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end39.i, %if.then.i, %land.rhs.i.cleanup_crit_edge, %if.then2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.then2 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %land.rhs.i.cleanup_crit_edge ], [ 0, %if.then.i ], [ 0, %if.end39.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @batadv_netlink_mesh_fill(ptr noundef %msg, ptr noundef %bat_priv, i32 noundef %cmd, i32 noundef %portid, i32 noundef %seq) unnamed_addr #0 align 64 {
entry:
  %tmp.i61 = alloca i32, align 4
  %tmp.i59 = alloca i8, align 1
  %tmp.i57 = alloca i32, align 4
  %tmp.i55 = alloca i8, align 1
  %tmp.i53 = alloca i32, align 4
  %tmp.i51 = alloca i8, align 1
  %tmp.i49 = alloca i32, align 4
  %tmp.i47 = alloca i8, align 1
  %tmp.i45 = alloca i32, align 4
  %tmp.i43 = alloca i32, align 4
  %tmp.i41 = alloca i8, align 1
  %tmp.i39 = alloca i8, align 1
  %tmp.i37 = alloca i8, align 1
  %tmp.i35 = alloca i8, align 1
  %tmp.i33 = alloca i32, align 4
  %tmp.i31 = alloca i32, align 4
  %tmp.i29 = alloca i8, align 1
  %tmp.i27 = alloca i32, align 4
  %tmp.i25 = alloca i16, align 2
  %tmp.i23 = alloca i8, align 1
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %soft_iface1 = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 1
  %0 = ptrtoint ptr %soft_iface1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %soft_iface1, align 4
  %conv = trunc i32 %cmd to i8
  %call = tail call ptr @genlmsg_put(ptr noundef %msg, i32 noundef %portid, i32 noundef %seq, ptr noundef nonnull @batadv_netlink_family, i32 noundef 0, i8 noundef zeroext %conv) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1.i = tail call i32 @nla_put(ptr noundef %msg, i32 noundef 1, i32 noundef 7, ptr noundef nonnull @.str.3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool3.not = icmp eq i32 %call1.i, 0
  br i1 %tobool3.not, label %lor.lhs.false, label %if.end.if.then.i_crit_edge

if.end.if.then.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

lor.lhs.false:                                    ; preds = %if.end
  %algo_ops = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 30
  %2 = ptrtoint ptr %algo_ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %algo_ops, align 4
  %name = getelementptr inbounds %struct.batadv_algo_ops, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %name, align 4
  %call.i16 = tail call i32 @strlen(ptr noundef %5) #13
  %add.i17 = add i32 %call.i16, 1
  %call1.i18 = tail call i32 @nla_put(ptr noundef %msg, i32 noundef 2, i32 noundef %add.i17, ptr noundef %5) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i18)
  %tobool5.not = icmp eq i32 %call1.i18, 0
  br i1 %tobool5.not, label %lor.lhs.false6, label %lor.lhs.false.if.then.i_crit_edge

lor.lhs.false.if.then.i_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %ifindex = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 17
  %6 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ifindex, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #10
  %8 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %tmp.i, align 4
  %call.i19 = call i32 @nla_put(ptr noundef %msg, i32 noundef 3, i32 noundef 4, ptr noundef nonnull %tmp.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i19)
  %tobool8.not = icmp eq i32 %call.i19, 0
  br i1 %tobool8.not, label %lor.lhs.false9, label %lor.lhs.false6.if.then.i_crit_edge

lor.lhs.false6.if.then.i_crit_edge:               ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

lor.lhs.false9:                                   ; preds = %lor.lhs.false6
  %call.i20 = call i32 @strlen(ptr noundef %1) #13
  %add.i21 = add i32 %call.i20, 1
  %call1.i22 = call i32 @nla_put(ptr noundef %msg, i32 noundef 4, i32 noundef %add.i21, ptr noundef %1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i22)
  %tobool12.not = icmp eq i32 %call1.i22, 0
  br i1 %tobool12.not, label %lor.lhs.false13, label %lor.lhs.false9.if.then.i_crit_edge

lor.lhs.false9.if.then.i_crit_edge:               ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

lor.lhs.false13:                                  ; preds = %lor.lhs.false9
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 86
  %9 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev_addr, align 64
  %call14 = call i32 @nla_put(ptr noundef %msg, i32 noundef 5, i32 noundef 6, ptr noundef %10) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %lor.lhs.false16, label %lor.lhs.false13.if.then.i_crit_edge

lor.lhs.false13.if.then.i_crit_edge:              ; preds = %lor.lhs.false13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

lor.lhs.false16:                                  ; preds = %lor.lhs.false13
  %tt = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 36
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %tt, i32 noundef 4) #10
  %11 = ptrtoint ptr %tt to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %tt, align 4
  %conv18 = trunc i32 %12 to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i23) #10
  %13 = ptrtoint ptr %tmp.i23 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv18, ptr %tmp.i23, align 1
  %call.i24 = call i32 @nla_put(ptr noundef %msg, i32 noundef 17, i32 noundef 1, ptr noundef nonnull %tmp.i23) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i23) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i24)
  %tobool20.not = icmp eq i32 %call.i24, 0
  br i1 %tobool20.not, label %if.end22, label %lor.lhs.false16.if.then.i_crit_edge

lor.lhs.false16.if.then.i_crit_edge:              ; preds = %lor.lhs.false16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.end22:                                         ; preds = %lor.lhs.false16
  %group = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 33, i32 9, i32 2
  %14 = ptrtoint ptr %group to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %group, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i25) #10
  %16 = ptrtoint ptr %tmp.i25 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %tmp.i25, align 2
  %call.i26 = call i32 @nla_put(ptr noundef %msg, i32 noundef 34, i32 noundef 2, ptr noundef nonnull %tmp.i25) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i25) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i26)
  %tobool24.not = icmp eq i32 %call.i26, 0
  br i1 %tobool24.not, label %if.end26, label %if.end22.if.then.i_crit_edge

if.end22.if.then.i_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.end26:                                         ; preds = %if.end22
  %call27 = call i32 @batadv_mcast_mesh_info_put(ptr noundef %msg, ptr noundef %bat_priv) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end30, label %if.end26.if.then.i_crit_edge

if.end26.if.then.i_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.end30:                                         ; preds = %if.end26
  %call31 = call fastcc ptr @batadv_primary_if_get_selected(ptr noundef %bat_priv)
  %tobool32.not = icmp eq ptr %call31, null
  br i1 %tobool32.not, label %if.end30.if.end50_crit_edge, label %land.lhs.true

if.end30.if.end50_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end50

land.lhs.true:                                    ; preds = %if.end30
  %if_status = getelementptr inbounds %struct.batadv_hard_iface, ptr %call31, i32 0, i32 1
  %17 = ptrtoint ptr %if_status to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %if_status, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %18)
  %cmp = icmp eq i8 %18, 3
  br i1 %cmp, label %if.then35, label %land.lhs.true.if.end50_crit_edge

land.lhs.true.if.end50_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end50

if.then35:                                        ; preds = %land.lhs.true
  %net_dev = getelementptr inbounds %struct.batadv_hard_iface, ptr %call31, i32 0, i32 4
  %19 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %net_dev, align 4
  %ifindex36 = getelementptr inbounds %struct.net_device, ptr %20, i32 0, i32 17
  %21 = ptrtoint ptr %ifindex36 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ifindex36, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i27) #10
  %23 = ptrtoint ptr %tmp.i27 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %tmp.i27, align 4
  %call.i28 = call i32 @nla_put(ptr noundef %msg, i32 noundef 6, i32 noundef 4, ptr noundef nonnull %tmp.i27) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i27) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i28)
  %tobool38.not = icmp eq i32 %call.i28, 0
  br i1 %tobool38.not, label %lor.lhs.false39, label %if.then35.if.end.i_crit_edge

if.then35.if.end.i_crit_edge:                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

lor.lhs.false39:                                  ; preds = %if.then35
  %call42 = call fastcc i32 @nla_put_string(ptr noundef %msg, i32 noundef 7, ptr noundef %20)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %lor.lhs.false44, label %lor.lhs.false39.if.end.i_crit_edge

lor.lhs.false39.if.end.i_crit_edge:               ; preds = %lor.lhs.false39
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

lor.lhs.false44:                                  ; preds = %lor.lhs.false39
  %dev_addr45 = getelementptr inbounds %struct.net_device, ptr %20, i32 0, i32 86
  %24 = ptrtoint ptr %dev_addr45 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev_addr45, align 64
  %call46 = call i32 @nla_put(ptr noundef %msg, i32 noundef 8, i32 noundef 6, ptr noundef %25) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %lor.lhs.false44.if.end50_crit_edge, label %lor.lhs.false44.if.end.i_crit_edge

lor.lhs.false44.if.end.i_crit_edge:               ; preds = %lor.lhs.false44
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

lor.lhs.false44.if.end50_crit_edge:               ; preds = %lor.lhs.false44
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end50

if.end50:                                         ; preds = %lor.lhs.false44.if.end50_crit_edge, %land.lhs.true.if.end50_crit_edge, %if.end30.if.end50_crit_edge
  %aggregated_ogms = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 3
  %call.i.i1 = call zeroext i1 @__kasan_check_read(ptr noundef %aggregated_ogms, i32 noundef 4) #10
  %26 = ptrtoint ptr %aggregated_ogms to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %aggregated_ogms, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool52 = icmp ne i32 %27, 0
  %conv54 = zext i1 %tobool52 to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i29) #10
  %28 = ptrtoint ptr %tmp.i29 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv54, ptr %tmp.i29, align 1
  %call.i30 = call i32 @nla_put(ptr noundef %msg, i32 noundef 41, i32 noundef 1, ptr noundef nonnull %tmp.i29) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i29) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i30)
  %tobool56.not = icmp eq i32 %call.i30, 0
  br i1 %tobool56.not, label %if.end58, label %if.end50.nla_put_failure_crit_edge

if.end50.nla_put_failure_crit_edge:               ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #12
  br label %nla_put_failure

if.end58:                                         ; preds = %if.end50
  %call59 = call fastcc i32 @batadv_netlink_mesh_fill_ap_isolation(ptr noundef %msg, ptr noundef %bat_priv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %if.end62, label %if.end58.nla_put_failure_crit_edge

if.end58.nla_put_failure_crit_edge:               ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #12
  br label %nla_put_failure

if.end62:                                         ; preds = %if.end58
  %isolation_mark = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 15
  %29 = ptrtoint ptr %isolation_mark to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %isolation_mark, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i31) #10
  %31 = ptrtoint ptr %tmp.i31 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %tmp.i31, align 4
  %call.i32 = call i32 @nla_put(ptr noundef %msg, i32 noundef 43, i32 noundef 4, ptr noundef nonnull %tmp.i31) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i31) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i32)
  %tobool64.not = icmp eq i32 %call.i32, 0
  br i1 %tobool64.not, label %if.end66, label %if.end62.nla_put_failure_crit_edge

if.end62.nla_put_failure_crit_edge:               ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #12
  br label %nla_put_failure

if.end66:                                         ; preds = %if.end62
  %isolation_mark_mask = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 16
  %32 = ptrtoint ptr %isolation_mark_mask to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %isolation_mark_mask, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i33) #10
  %34 = ptrtoint ptr %tmp.i33 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %tmp.i33, align 4
  %call.i34 = call i32 @nla_put(ptr noundef %msg, i32 noundef 44, i32 noundef 4, ptr noundef nonnull %tmp.i33) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i33) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i34)
  %tobool68.not = icmp eq i32 %call.i34, 0
  br i1 %tobool68.not, label %if.end70, label %if.end66.nla_put_failure_crit_edge

if.end66.nla_put_failure_crit_edge:               ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #12
  br label %nla_put_failure

if.end70:                                         ; preds = %if.end66
  %bonding = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 4
  %call.i.i2 = call zeroext i1 @__kasan_check_read(ptr noundef %bonding, i32 noundef 4) #10
  %35 = ptrtoint ptr %bonding to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %bonding, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool72 = icmp ne i32 %36, 0
  %conv77 = zext i1 %tobool72 to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i35) #10
  %37 = ptrtoint ptr %tmp.i35 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv77, ptr %tmp.i35, align 1
  %call.i36 = call i32 @nla_put(ptr noundef %msg, i32 noundef 45, i32 noundef 1, ptr noundef nonnull %tmp.i35) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i35) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i36)
  %tobool79.not = icmp eq i32 %call.i36, 0
  br i1 %tobool79.not, label %if.end81, label %if.end70.nla_put_failure_crit_edge

if.end70.nla_put_failure_crit_edge:               ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #12
  br label %nla_put_failure

if.end81:                                         ; preds = %if.end70
  %bridge_loop_avoidance = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 8
  %call.i.i3 = call zeroext i1 @__kasan_check_read(ptr noundef %bridge_loop_avoidance, i32 noundef 4) #10
  %38 = ptrtoint ptr %bridge_loop_avoidance to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %bridge_loop_avoidance, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool83 = icmp ne i32 %39, 0
  %conv88 = zext i1 %tobool83 to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i37) #10
  %40 = ptrtoint ptr %tmp.i37 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %conv88, ptr %tmp.i37, align 1
  %call.i38 = call i32 @nla_put(ptr noundef %msg, i32 noundef 46, i32 noundef 1, ptr noundef nonnull %tmp.i37) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i37) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i38)
  %tobool90.not = icmp eq i32 %call.i38, 0
  br i1 %tobool90.not, label %if.end92, label %if.end81.nla_put_failure_crit_edge

if.end81.nla_put_failure_crit_edge:               ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #12
  br label %nla_put_failure

if.end92:                                         ; preds = %if.end81
  %distributed_arp_table = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 9
  %call.i.i4 = call zeroext i1 @__kasan_check_read(ptr noundef %distributed_arp_table, i32 noundef 4) #10
  %41 = ptrtoint ptr %distributed_arp_table to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %distributed_arp_table, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool94 = icmp ne i32 %42, 0
  %conv99 = zext i1 %tobool94 to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i39) #10
  %43 = ptrtoint ptr %tmp.i39 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %conv99, ptr %tmp.i39, align 1
  %call.i40 = call i32 @nla_put(ptr noundef %msg, i32 noundef 47, i32 noundef 1, ptr noundef nonnull %tmp.i39) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i39) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i40)
  %tobool101.not = icmp eq i32 %call.i40, 0
  br i1 %tobool101.not, label %if.end103, label %if.end92.nla_put_failure_crit_edge

if.end92.nla_put_failure_crit_edge:               ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #12
  br label %nla_put_failure

if.end103:                                        ; preds = %if.end92
  %fragmentation = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 5
  %call.i.i5 = call zeroext i1 @__kasan_check_read(ptr noundef %fragmentation, i32 noundef 4) #10
  %44 = ptrtoint ptr %fragmentation to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %fragmentation, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool105 = icmp ne i32 %45, 0
  %conv110 = zext i1 %tobool105 to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i41) #10
  %46 = ptrtoint ptr %tmp.i41 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %conv110, ptr %tmp.i41, align 1
  %call.i42 = call i32 @nla_put(ptr noundef %msg, i32 noundef 48, i32 noundef 1, ptr noundef nonnull %tmp.i41) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i41) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i42)
  %tobool112.not = icmp eq i32 %call.i42, 0
  br i1 %tobool112.not, label %if.end114, label %if.end103.nla_put_failure_crit_edge

if.end103.nla_put_failure_crit_edge:              ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #12
  br label %nla_put_failure

if.end114:                                        ; preds = %if.end103
  %bandwidth_down = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 35, i32 6
  %call.i.i6 = call zeroext i1 @__kasan_check_read(ptr noundef %bandwidth_down, i32 noundef 4) #10
  %47 = ptrtoint ptr %bandwidth_down to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %bandwidth_down, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i43) #10
  %49 = ptrtoint ptr %tmp.i43 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %tmp.i43, align 4
  %call.i44 = call i32 @nla_put(ptr noundef %msg, i32 noundef 49, i32 noundef 4, ptr noundef nonnull %tmp.i43) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i43) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i44)
  %tobool117.not = icmp eq i32 %call.i44, 0
  br i1 %tobool117.not, label %if.end119, label %if.end114.nla_put_failure_crit_edge

if.end114.nla_put_failure_crit_edge:              ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #12
  br label %nla_put_failure

if.end119:                                        ; preds = %if.end114
  %bandwidth_up = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 35, i32 7
  %call.i.i7 = call zeroext i1 @__kasan_check_read(ptr noundef %bandwidth_up, i32 noundef 4) #10
  %50 = ptrtoint ptr %bandwidth_up to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %bandwidth_up, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i45) #10
  %52 = ptrtoint ptr %tmp.i45 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %tmp.i45, align 4
  %call.i46 = call i32 @nla_put(ptr noundef %msg, i32 noundef 50, i32 noundef 4, ptr noundef nonnull %tmp.i45) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i45) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i46)
  %tobool123.not = icmp eq i32 %call.i46, 0
  br i1 %tobool123.not, label %if.end125, label %if.end119.nla_put_failure_crit_edge

if.end119.nla_put_failure_crit_edge:              ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #12
  br label %nla_put_failure

if.end125:                                        ; preds = %if.end119
  %mode = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 35, i32 4
  %call.i.i8 = call zeroext i1 @__kasan_check_read(ptr noundef %mode, i32 noundef 4) #10
  %53 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %mode, align 4
  %conv128 = trunc i32 %54 to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i47) #10
  %55 = ptrtoint ptr %tmp.i47 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %conv128, ptr %tmp.i47, align 1
  %call.i48 = call i32 @nla_put(ptr noundef %msg, i32 noundef 51, i32 noundef 1, ptr noundef nonnull %tmp.i47) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i47) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i48)
  %tobool130.not = icmp eq i32 %call.i48, 0
  br i1 %tobool130.not, label %if.end132, label %if.end125.nla_put_failure_crit_edge

if.end125.nla_put_failure_crit_edge:              ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #12
  br label %nla_put_failure

if.end132:                                        ; preds = %if.end125
  %56 = ptrtoint ptr %algo_ops to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %algo_ops, align 4
  %get_best_gw_node = getelementptr inbounds %struct.batadv_algo_ops, ptr %57, i32 0, i32 5, i32 2
  %58 = ptrtoint ptr %get_best_gw_node to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %get_best_gw_node, align 4
  %tobool135.not = icmp eq ptr %59, null
  br i1 %tobool135.not, label %if.end132.if.end147_crit_edge, label %land.lhs.true136

if.end132.if.end147_crit_edge:                    ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end147

land.lhs.true136:                                 ; preds = %if.end132
  %is_eligible = getelementptr inbounds %struct.batadv_algo_ops, ptr %57, i32 0, i32 5, i32 3
  %60 = ptrtoint ptr %is_eligible to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %is_eligible, align 4
  %tobool139.not = icmp eq ptr %61, null
  br i1 %tobool139.not, label %land.lhs.true136.if.end147_crit_edge, label %if.then140

land.lhs.true136.if.end147_crit_edge:             ; preds = %land.lhs.true136
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end147

if.then140:                                       ; preds = %land.lhs.true136
  %sel_class = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 35, i32 5
  %call.i.i9 = call zeroext i1 @__kasan_check_read(ptr noundef %sel_class, i32 noundef 4) #10
  %62 = ptrtoint ptr %sel_class to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile i32, ptr %sel_class, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i49) #10
  %64 = ptrtoint ptr %tmp.i49 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %tmp.i49, align 4
  %call.i50 = call i32 @nla_put(ptr noundef %msg, i32 noundef 52, i32 noundef 4, ptr noundef nonnull %tmp.i49) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i49) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i50)
  %tobool144.not = icmp eq i32 %call.i50, 0
  br i1 %tobool144.not, label %if.then140.if.end147_crit_edge, label %if.then140.nla_put_failure_crit_edge

if.then140.nla_put_failure_crit_edge:             ; preds = %if.then140
  call void @__sanitizer_cov_trace_pc() #12
  br label %nla_put_failure

if.then140.if.end147_crit_edge:                   ; preds = %if.then140
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end147

if.end147:                                        ; preds = %if.then140.if.end147_crit_edge, %land.lhs.true136.if.end147_crit_edge, %if.end132.if.end147_crit_edge
  %hop_penalty = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 13
  %call.i.i10 = call zeroext i1 @__kasan_check_read(ptr noundef %hop_penalty, i32 noundef 4) #10
  %65 = ptrtoint ptr %hop_penalty to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile i32, ptr %hop_penalty, align 4
  %conv149 = trunc i32 %66 to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i51) #10
  %67 = ptrtoint ptr %tmp.i51 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %conv149, ptr %tmp.i51, align 1
  %call.i52 = call i32 @nla_put(ptr noundef %msg, i32 noundef 53, i32 noundef 1, ptr noundef nonnull %tmp.i51) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i51) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i52)
  %tobool151.not = icmp eq i32 %call.i52, 0
  br i1 %tobool151.not, label %if.end153, label %if.end147.nla_put_failure_crit_edge

if.end147.nla_put_failure_crit_edge:              ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #12
  br label %nla_put_failure

if.end153:                                        ; preds = %if.end147
  %log_level = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 14
  %call.i.i11 = call zeroext i1 @__kasan_check_read(ptr noundef %log_level, i32 noundef 4) #10
  %68 = ptrtoint ptr %log_level to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile i32, ptr %log_level, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i53) #10
  %70 = ptrtoint ptr %tmp.i53 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %tmp.i53, align 4
  %call.i54 = call i32 @nla_put(ptr noundef %msg, i32 noundef 54, i32 noundef 4, ptr noundef nonnull %tmp.i53) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i53) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i54)
  %tobool156.not = icmp eq i32 %call.i54, 0
  br i1 %tobool156.not, label %if.end158, label %if.end153.nla_put_failure_crit_edge

if.end153.nla_put_failure_crit_edge:              ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #12
  br label %nla_put_failure

if.end158:                                        ; preds = %if.end153
  %multicast_mode = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 10
  %call.i.i12 = call zeroext i1 @__kasan_check_read(ptr noundef %multicast_mode, i32 noundef 4) #10
  %71 = ptrtoint ptr %multicast_mode to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load volatile i32, ptr %multicast_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool160.not = icmp eq i32 %72, 0
  %conv163 = zext i1 %tobool160.not to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i55) #10
  %73 = ptrtoint ptr %tmp.i55 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %conv163, ptr %tmp.i55, align 1
  %call.i56 = call i32 @nla_put(ptr noundef %msg, i32 noundef 55, i32 noundef 1, ptr noundef nonnull %tmp.i55) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i55) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i56)
  %tobool165.not = icmp eq i32 %call.i56, 0
  br i1 %tobool165.not, label %if.end167, label %if.end158.nla_put_failure_crit_edge

if.end158.nla_put_failure_crit_edge:              ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #12
  br label %nla_put_failure

if.end167:                                        ; preds = %if.end158
  %multicast_fanout = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 11
  %call.i.i13 = call zeroext i1 @__kasan_check_read(ptr noundef %multicast_fanout, i32 noundef 4) #10
  %74 = ptrtoint ptr %multicast_fanout to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load volatile i32, ptr %multicast_fanout, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i57) #10
  %76 = ptrtoint ptr %tmp.i57 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %75, ptr %tmp.i57, align 4
  %call.i58 = call i32 @nla_put(ptr noundef %msg, i32 noundef 60, i32 noundef 4, ptr noundef nonnull %tmp.i57) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i57) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i58)
  %tobool170.not = icmp eq i32 %call.i58, 0
  br i1 %tobool170.not, label %if.end172, label %if.end167.nla_put_failure_crit_edge

if.end167.nla_put_failure_crit_edge:              ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #12
  br label %nla_put_failure

if.end172:                                        ; preds = %if.end167
  %network_coding = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 40
  %call.i.i14 = call zeroext i1 @__kasan_check_read(ptr noundef %network_coding, i32 noundef 4) #10
  %77 = ptrtoint ptr %network_coding to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load volatile i32, ptr %network_coding, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %tobool174 = icmp ne i32 %78, 0
  %conv179 = zext i1 %tobool174 to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i59) #10
  %79 = ptrtoint ptr %tmp.i59 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %conv179, ptr %tmp.i59, align 1
  %call.i60 = call i32 @nla_put(ptr noundef %msg, i32 noundef 56, i32 noundef 1, ptr noundef nonnull %tmp.i59) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i59) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i60)
  %tobool181.not = icmp eq i32 %call.i60, 0
  br i1 %tobool181.not, label %if.end183, label %if.end172.nla_put_failure_crit_edge

if.end172.nla_put_failure_crit_edge:              ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #12
  br label %nla_put_failure

if.end183:                                        ; preds = %if.end172
  %orig_interval = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 12
  %call.i.i15 = call zeroext i1 @__kasan_check_read(ptr noundef %orig_interval, i32 noundef 4) #10
  %80 = ptrtoint ptr %orig_interval to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load volatile i32, ptr %orig_interval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i61) #10
  %82 = ptrtoint ptr %tmp.i61 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %81, ptr %tmp.i61, align 4
  %call.i62 = call i32 @nla_put(ptr noundef %msg, i32 noundef 57, i32 noundef 4, ptr noundef nonnull %tmp.i61) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i61) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i62)
  %tobool186.not = icmp eq i32 %call.i62, 0
  br i1 %tobool186.not, label %if.end188, label %if.end183.nla_put_failure_crit_edge

if.end183.nla_put_failure_crit_edge:              ; preds = %if.end183
  call void @__sanitizer_cov_trace_pc() #12
  br label %nla_put_failure

if.end188:                                        ; preds = %if.end183
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @batadv_hardif_put(ptr noundef %call31)
  %add.ptr1.i = getelementptr i8, ptr %call, i32 -20
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %msg, i32 0, i32 16
  %83 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %84 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %add.ptr1.i to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %85 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %sub.ptr.sub.i.i, ptr %add.ptr1.i, align 4
  br label %cleanup

nla_put_failure:                                  ; preds = %if.end183.nla_put_failure_crit_edge, %if.end172.nla_put_failure_crit_edge, %if.end167.nla_put_failure_crit_edge, %if.end158.nla_put_failure_crit_edge, %if.end153.nla_put_failure_crit_edge, %if.end147.nla_put_failure_crit_edge, %if.then140.nla_put_failure_crit_edge, %if.end125.nla_put_failure_crit_edge, %if.end119.nla_put_failure_crit_edge, %if.end114.nla_put_failure_crit_edge, %if.end103.nla_put_failure_crit_edge, %if.end92.nla_put_failure_crit_edge, %if.end81.nla_put_failure_crit_edge, %if.end70.nla_put_failure_crit_edge, %if.end66.nla_put_failure_crit_edge, %if.end62.nla_put_failure_crit_edge, %if.end58.nla_put_failure_crit_edge, %if.end50.nla_put_failure_crit_edge
  br i1 %tobool32.not, label %nla_put_failure.if.then.i_crit_edge, label %nla_put_failure.if.end.i_crit_edge

nla_put_failure.if.end.i_crit_edge:               ; preds = %nla_put_failure
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

nla_put_failure.if.then.i_crit_edge:              ; preds = %nla_put_failure
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.end.i:                                         ; preds = %nla_put_failure.if.end.i_crit_edge, %lor.lhs.false44.if.end.i_crit_edge, %lor.lhs.false39.if.end.i_crit_edge, %if.then35.if.end.i_crit_edge
  %refcount.i = getelementptr inbounds %struct.batadv_hard_iface, ptr %call31, i32 0, i32 5
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !43
  call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #10
  %86 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #10, !srcloc !44
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %86, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.if.then.i_crit_edge, label %if.then10.i.i.i.i.i, !prof !42

if.end5.i.i.i.i.i.if.then.i_crit_edge:            ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #10
  br label %if.then.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !45
  call void @batadv_hardif_release(ptr noundef %refcount.i) #10, !callees !46
  br label %if.then.i

if.then.i:                                        ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.if.then.i_crit_edge, %nla_put_failure.if.then.i_crit_edge, %if.end26.if.then.i_crit_edge, %if.end22.if.then.i_crit_edge, %lor.lhs.false16.if.then.i_crit_edge, %lor.lhs.false13.if.then.i_crit_edge, %lor.lhs.false9.if.then.i_crit_edge, %lor.lhs.false6.if.then.i_crit_edge, %lor.lhs.false.if.then.i_crit_edge, %if.end.if.then.i_crit_edge
  %add.ptr1.i64 = getelementptr i8, ptr %call, i32 -20
  %tobool.not.i.i.i = icmp eq ptr %add.ptr1.i64, null
  br i1 %tobool.not.i.i.i, label %if.then.i.cleanup_crit_edge, label %if.then.i.i.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.then.i
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %msg, i32 0, i32 19
  %87 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %data.i.i.i, align 4
  %cmp.i.i.i = icmp ugt ptr %88, %add.ptr1.i64
  br i1 %cmp.i.i.i, label %do.end.i.i.i, label %if.then.i.i.i.if.end.i.i.i_crit_edge, !prof !47

if.then.i.i.i.if.end.i.i.i_crit_edge:             ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i.i

do.end.i.i.i:                                     ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 991, i32 noundef 9, ptr noundef null) #10
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %do.end.i.i.i, %if.then.i.i.i.if.end.i.i.i_crit_edge
  %89 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %data.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %add.ptr1.i64 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %90 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  call void @skb_trim(ptr noundef %msg, i32 noundef %sub.ptr.sub.i.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i.i, %if.then.i.cleanup_crit_edge, %if.end188, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end188 ], [ -105, %entry.cleanup_crit_edge ], [ -90, %if.then.i.cleanup_crit_edge ], [ -90, %if.end.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @genlmsg_multicast_netns(ptr nocapture noundef readonly %net, ptr noundef %skb, i32 noundef %group) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %0 = load i8, ptr getelementptr inbounds (%struct.genl_family, ptr @batadv_netlink_family, i32 0, i32 9), align 1
  %conv = zext i8 %0 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %group)
  %cmp.not = icmp ugt i32 %conv, %group
  br i1 %cmp.not, label %if.end39, label %land.rhs

land.rhs:                                         ; preds = %entry
  %.b1 = load i1, ptr @genlmsg_multicast_netns.__already_done, align 1
  br i1 %.b1, label %land.rhs.return_crit_edge, label %if.then, !prof !42

land.rhs.return_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @genlmsg_multicast_netns.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 308, i32 noundef 9, ptr noundef null) #10
  br label %return

if.end39:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %1 = load i32, ptr getelementptr inbounds (%struct.genl_family, ptr @batadv_netlink_family, i32 0, i32 5), align 4
  %add = add i32 %1, %group
  %genl_sock = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 21
  %2 = ptrtoint ptr %genl_sock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %genl_sock, align 4
  %dst_group.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 16
  %4 = ptrtoint ptr %dst_group.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %add, ptr %dst_group.i, align 8
  %call.i = tail call i32 @netlink_broadcast(ptr noundef %3, ptr noundef %skb, i32 noundef 0, i32 noundef %add, i32 noundef 3264) #10
  br label %return

return:                                           ; preds = %if.end39, %if.then, %land.rhs.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @batadv_netlink_tpmeter_notify(ptr nocapture noundef readonly %bat_priv, ptr noundef %dst, i8 noundef zeroext %result, i32 noundef %test_time, i64 noundef %total_bytes, i32 noundef %cookie) local_unnamed_addr #0 align 64 {
entry:
  %tmp.i45 = alloca i8, align 1
  %tmp.i43 = alloca i64, align 8
  %tmp.i41 = alloca i32, align 4
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef 3840, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #10
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @genlmsg_put(ptr noundef nonnull %call.i.i, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @batadv_netlink_family, i32 noundef 0, i8 noundef zeroext 2) #10
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end.err_genlmsg_crit_edge, label %if.end4

if.end.err_genlmsg_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_genlmsg

if.end4:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #10
  %0 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %cookie, ptr %tmp.i, align 4
  %call.i = call i32 @nla_put(ptr noundef nonnull %call.i.i, i32 noundef 13, i32 noundef 4, ptr noundef nonnull %tmp.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool6.not = icmp eq i32 %call.i, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.if.then.i_crit_edge

if.end4.if.then.i_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.end8:                                          ; preds = %if.end4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i41) #10
  %1 = ptrtoint ptr %tmp.i41 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %test_time, ptr %tmp.i41, align 4
  %call.i42 = call i32 @nla_put(ptr noundef nonnull %call.i.i, i32 noundef 11, i32 noundef 4, ptr noundef nonnull %tmp.i41) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i41) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i42)
  %tobool10.not = icmp eq i32 %call.i42, 0
  br i1 %tobool10.not, label %if.end12, label %if.end8.if.then.i_crit_edge

if.end8.if.then.i_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.end12:                                         ; preds = %if.end8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i43) #10
  %2 = ptrtoint ptr %tmp.i43 to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %total_bytes, ptr %tmp.i43, align 8
  %call.i44 = call i32 @nla_put_64bit(ptr noundef nonnull %call.i.i, i32 noundef 12, i32 noundef 8, ptr noundef nonnull %tmp.i43, i32 noundef 14) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i43) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i44)
  %tobool14.not = icmp eq i32 %call.i44, 0
  br i1 %tobool14.not, label %if.end16, label %if.end12.if.then.i_crit_edge

if.end12.if.then.i_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.end16:                                         ; preds = %if.end12
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i45) #10
  %3 = ptrtoint ptr %tmp.i45 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %result, ptr %tmp.i45, align 1
  %call.i46 = call i32 @nla_put(ptr noundef nonnull %call.i.i, i32 noundef 10, i32 noundef 1, ptr noundef nonnull %tmp.i45) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i45) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i46)
  %tobool18.not = icmp eq i32 %call.i46, 0
  br i1 %tobool18.not, label %if.end20, label %if.end16.if.then.i_crit_edge

if.end16.if.then.i_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.end20:                                         ; preds = %if.end16
  %call21 = call i32 @nla_put(ptr noundef nonnull %call.i.i, i32 noundef 9, i32 noundef 6, ptr noundef %dst) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %if.end20.if.then.i_crit_edge

if.end20.if.then.i_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.end24:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr1.i = getelementptr i8, ptr %call1, i32 -20
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %4 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %5 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %add.ptr1.i to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %6 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %sub.ptr.sub.i.i, ptr %add.ptr1.i, align 4
  %soft_iface = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 1
  %7 = ptrtoint ptr %soft_iface to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %soft_iface, align 4
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 127
  %9 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %nd_net.i, align 4
  call fastcc void @genlmsg_multicast_netns(ptr noundef %10, ptr noundef nonnull %call.i.i, i32 noundef 1)
  br label %cleanup

if.then.i:                                        ; preds = %if.end20.if.then.i_crit_edge, %if.end16.if.then.i_crit_edge, %if.end12.if.then.i_crit_edge, %if.end8.if.then.i_crit_edge, %if.end4.if.then.i_crit_edge
  %add.ptr1.i47 = getelementptr i8, ptr %call1, i32 -20
  %tobool.not.i.i.i = icmp eq ptr %add.ptr1.i47, null
  br i1 %tobool.not.i.i.i, label %if.then.i.err_genlmsg_crit_edge, label %if.then.i.i.i

if.then.i.err_genlmsg_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_genlmsg

if.then.i.i.i:                                    ; preds = %if.then.i
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %11 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data.i.i.i, align 4
  %cmp.i.i.i = icmp ugt ptr %12, %add.ptr1.i47
  br i1 %cmp.i.i.i, label %do.end.i.i.i, label %if.then.i.i.i.if.end.i.i.i_crit_edge, !prof !47

if.then.i.i.i.if.end.i.i.i_crit_edge:             ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i.i

do.end.i.i.i:                                     ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 991, i32 noundef 9, ptr noundef null) #10
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %do.end.i.i.i, %if.then.i.i.i.if.end.i.i.i_crit_edge
  %13 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %add.ptr1.i47 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %14 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  call void @skb_trim(ptr noundef nonnull %call.i.i, i32 noundef %sub.ptr.sub.i.i.i) #10
  br label %err_genlmsg

err_genlmsg:                                      ; preds = %if.end.i.i.i, %if.then.i.err_genlmsg_crit_edge, %if.end.err_genlmsg_crit_edge
  %ret.0 = phi i32 [ -105, %if.end.err_genlmsg_crit_edge ], [ -90, %if.then.i.err_genlmsg_crit_edge ], [ -90, %if.end.i.i.i ]
  call void @kfree_skb_reason(ptr noundef nonnull %call.i.i, i32 noundef 0) #10
  br label %cleanup

cleanup:                                          ; preds = %err_genlmsg, %if.end24, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %err_genlmsg ], [ 0, %if.end24 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @genlmsg_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @batadv_netlink_notify_hardif(ptr nocapture noundef readonly %bat_priv, ptr noundef %hard_iface) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef 3840, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #10
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc i32 @batadv_netlink_hardif_fill(ptr noundef nonnull %call.i.i, ptr noundef %bat_priv, ptr noundef %hard_iface, i32 noundef 16, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i.i, i32 noundef 0) #10
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %0 = load i8, ptr getelementptr inbounds (%struct.genl_family, ptr @batadv_netlink_family, i32 0, i32 9), align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %cmp.not.i.not = icmp eq i8 %0, 0
  br i1 %cmp.not.i.not, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %if.end3
  %.b1.i = load i1, ptr @genlmsg_multicast_netns.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.cleanup_crit_edge, label %if.then.i, !prof !42

land.rhs.i.cleanup_crit_edge:                     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @genlmsg_multicast_netns.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 308, i32 noundef 9, ptr noundef null) #10
  br label %cleanup

if.end39.i:                                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  %soft_iface = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 1
  %1 = ptrtoint ptr %soft_iface to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %soft_iface, align 4
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 127
  %3 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %nd_net.i, align 4
  %5 = load i32, ptr getelementptr inbounds (%struct.genl_family, ptr @batadv_netlink_family, i32 0, i32 5), align 4
  %genl_sock.i = getelementptr inbounds %struct.net, ptr %4, i32 0, i32 21
  %6 = ptrtoint ptr %genl_sock.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %genl_sock.i, align 4
  %dst_group.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3, i32 16
  %8 = ptrtoint ptr %dst_group.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %5, ptr %dst_group.i.i, align 8
  %call.i.i12 = tail call i32 @netlink_broadcast(ptr noundef %7, ptr noundef nonnull %call.i.i, i32 noundef 0, i32 noundef %5, i32 noundef 3264) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end39.i, %if.then.i, %land.rhs.i.cleanup_crit_edge, %if.then2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.then2 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %land.rhs.i.cleanup_crit_edge ], [ 0, %if.then.i ], [ 0, %if.end39.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @batadv_netlink_hardif_fill(ptr noundef %msg, ptr nocapture noundef readonly %bat_priv, ptr noundef %hard_iface, i32 noundef %cmd, i32 noundef %portid, i32 noundef %seq, i32 noundef %flags, ptr noundef %cb) unnamed_addr #0 align 64 {
entry:
  %tmp.i87 = alloca i32, align 4
  %tmp.i85 = alloca i32, align 4
  %tmp.i83 = alloca i8, align 1
  %tmp.i77 = alloca i32, align 4
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %net_dev1 = getelementptr inbounds %struct.batadv_hard_iface, ptr %hard_iface, i32 0, i32 4
  %0 = ptrtoint ptr %net_dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net_dev1, align 4
  %conv = trunc i32 %cmd to i8
  %call = tail call ptr @genlmsg_put(ptr noundef %msg, i32 noundef %portid, i32 noundef %seq, ptr noundef nonnull @batadv_netlink_family, i32 noundef %flags, i8 noundef zeroext %conv) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool2.not = icmp eq ptr %cb, null
  br i1 %tobool2.not, label %if.end.if.end4_crit_edge, label %if.then3

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.then3:                                         ; preds = %if.end
  %prev_seq.i.i = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 10
  %2 = ptrtoint ptr %prev_seq.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %prev_seq.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i.i, label %if.then3.genl_dump_check_consistent.exit_crit_edge, label %land.lhs.true.i.i

if.then3.genl_dump_check_consistent.exit_crit_edge: ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  br label %genl_dump_check_consistent.exit

land.lhs.true.i.i:                                ; preds = %if.then3
  %seq.i.i = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 11
  %4 = ptrtoint ptr %seq.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %seq.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %3)
  %cmp.not.i.i = icmp eq i32 %5, %3
  br i1 %cmp.not.i.i, label %land.lhs.true.i.i.genl_dump_check_consistent.exit_crit_edge, label %if.then.i.i

land.lhs.true.i.i.genl_dump_check_consistent.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %genl_dump_check_consistent.exit

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %nlmsg_flags.i.i = getelementptr i8, ptr %call, i32 -14
  %6 = ptrtoint ptr %nlmsg_flags.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %nlmsg_flags.i.i, align 2
  %8 = or i16 %7, 16
  store i16 %8, ptr %nlmsg_flags.i.i, align 2
  br label %genl_dump_check_consistent.exit

genl_dump_check_consistent.exit:                  ; preds = %if.then.i.i, %land.lhs.true.i.i.genl_dump_check_consistent.exit_crit_edge, %if.then3.genl_dump_check_consistent.exit_crit_edge
  %seq3.i.i = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 11
  %9 = ptrtoint ptr %seq3.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %seq3.i.i, align 4
  %11 = ptrtoint ptr %prev_seq.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %prev_seq.i.i, align 4
  br label %if.end4

if.end4:                                          ; preds = %genl_dump_check_consistent.exit, %if.end.if.end4_crit_edge
  %soft_iface = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 1
  %12 = ptrtoint ptr %soft_iface to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %soft_iface, align 4
  %ifindex = getelementptr inbounds %struct.net_device, ptr %13, i32 0, i32 17
  %14 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ifindex, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #10
  %16 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %tmp.i, align 4
  %call.i = call i32 @nla_put(ptr noundef %msg, i32 noundef 3, i32 noundef 4, ptr noundef nonnull %tmp.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool6.not = icmp eq i32 %call.i, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.if.then.i_crit_edge

if.end4.if.then.i_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.end8:                                          ; preds = %if.end4
  %17 = ptrtoint ptr %soft_iface to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %soft_iface, align 4
  %call.i76 = call i32 @strlen(ptr noundef %18) #13
  %add.i = add i32 %call.i76, 1
  %call1.i = call i32 @nla_put(ptr noundef %msg, i32 noundef 4, i32 noundef %add.i, ptr noundef %18) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool11.not = icmp eq i32 %call1.i, 0
  br i1 %tobool11.not, label %if.end13, label %if.end8.if.then.i_crit_edge

if.end8.if.then.i_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.end13:                                         ; preds = %if.end8
  %ifindex14 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 17
  %19 = ptrtoint ptr %ifindex14 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ifindex14, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i77) #10
  %21 = ptrtoint ptr %tmp.i77 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %tmp.i77, align 4
  %call.i78 = call i32 @nla_put(ptr noundef %msg, i32 noundef 6, i32 noundef 4, ptr noundef nonnull %tmp.i77) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i77) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i78)
  %tobool16.not = icmp eq i32 %call.i78, 0
  br i1 %tobool16.not, label %lor.lhs.false, label %if.end13.if.then.i_crit_edge

if.end13.if.then.i_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

lor.lhs.false:                                    ; preds = %if.end13
  %call.i79 = call i32 @strlen(ptr noundef %1) #13
  %add.i80 = add i32 %call.i79, 1
  %call1.i81 = call i32 @nla_put(ptr noundef %msg, i32 noundef 7, i32 noundef %add.i80, ptr noundef %1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i81)
  %tobool20.not = icmp eq i32 %call1.i81, 0
  br i1 %tobool20.not, label %lor.lhs.false21, label %lor.lhs.false.if.then.i_crit_edge

lor.lhs.false.if.then.i_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

lor.lhs.false21:                                  ; preds = %lor.lhs.false
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 86
  %22 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev_addr, align 64
  %call22 = call i32 @nla_put(ptr noundef %msg, i32 noundef 8, i32 noundef 6, ptr noundef %23) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %lor.lhs.false21.if.then.i_crit_edge

lor.lhs.false21.if.then.i_crit_edge:              ; preds = %lor.lhs.false21
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.end25:                                         ; preds = %lor.lhs.false21
  %if_status = getelementptr inbounds %struct.batadv_hard_iface, ptr %hard_iface, i32 0, i32 1
  %24 = ptrtoint ptr %if_status to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %if_status, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %25)
  %cmp = icmp eq i8 %25, 3
  br i1 %cmp, label %if.then28, label %if.end25.if.end33_crit_edge

if.end25.if.end33_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33

if.then28:                                        ; preds = %if.end25
  %call.i82 = call i32 @nla_put(ptr noundef %msg, i32 noundef 15, i32 noundef 0, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i82)
  %tobool30.not = icmp eq i32 %call.i82, 0
  br i1 %tobool30.not, label %if.then28.if.end33_crit_edge, label %if.then28.if.then.i_crit_edge

if.then28.if.then.i_crit_edge:                    ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.then28.if.end33_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33

if.end33:                                         ; preds = %if.then28.if.end33_crit_edge, %if.end25.if.end33_crit_edge
  %hop_penalty = getelementptr inbounds %struct.batadv_hard_iface, ptr %hard_iface, i32 0, i32 9
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %hop_penalty, i32 noundef 4) #10
  %26 = ptrtoint ptr %hop_penalty to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %hop_penalty, align 4
  %conv35 = trunc i32 %27 to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i83) #10
  %28 = ptrtoint ptr %tmp.i83 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv35, ptr %tmp.i83, align 1
  %call.i84 = call i32 @nla_put(ptr noundef %msg, i32 noundef 53, i32 noundef 1, ptr noundef nonnull %tmp.i83) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i83) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i84)
  %tobool37.not = icmp eq i32 %call.i84, 0
  br i1 %tobool37.not, label %if.end39, label %if.end33.if.then.i_crit_edge

if.end33.if.then.i_crit_edge:                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.end39:                                         ; preds = %if.end33
  %bat_v = getelementptr inbounds %struct.batadv_hard_iface, ptr %hard_iface, i32 0, i32 11
  %call.i.i74 = call zeroext i1 @__kasan_check_read(ptr noundef %bat_v, i32 noundef 4) #10
  %29 = ptrtoint ptr %bat_v to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %bat_v, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i85) #10
  %31 = ptrtoint ptr %tmp.i85 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %tmp.i85, align 4
  %call.i86 = call i32 @nla_put(ptr noundef %msg, i32 noundef 58, i32 noundef 4, ptr noundef nonnull %tmp.i85) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i85) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i86)
  %tobool42.not = icmp eq i32 %call.i86, 0
  br i1 %tobool42.not, label %if.end44, label %if.end39.if.then.i_crit_edge

if.end39.if.then.i_crit_edge:                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.end44:                                         ; preds = %if.end39
  %throughput_override = getelementptr inbounds %struct.batadv_hard_iface, ptr %hard_iface, i32 0, i32 11, i32 7
  %call.i.i75 = call zeroext i1 @__kasan_check_read(ptr noundef %throughput_override, i32 noundef 4) #10
  %32 = ptrtoint ptr %throughput_override to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %throughput_override, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i87) #10
  %34 = ptrtoint ptr %tmp.i87 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %tmp.i87, align 4
  %call.i88 = call i32 @nla_put(ptr noundef %msg, i32 noundef 59, i32 noundef 4, ptr noundef nonnull %tmp.i87) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i87) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i88)
  %tobool48.not = icmp eq i32 %call.i88, 0
  br i1 %tobool48.not, label %if.end50, label %if.end44.if.then.i_crit_edge

if.end44.if.then.i_crit_edge:                     ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.end50:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr1.i = getelementptr i8, ptr %call, i32 -20
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %msg, i32 0, i32 16
  %35 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %36 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %add.ptr1.i to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %37 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %sub.ptr.sub.i.i, ptr %add.ptr1.i, align 4
  br label %cleanup

if.then.i:                                        ; preds = %if.end44.if.then.i_crit_edge, %if.end39.if.then.i_crit_edge, %if.end33.if.then.i_crit_edge, %if.then28.if.then.i_crit_edge, %lor.lhs.false21.if.then.i_crit_edge, %lor.lhs.false.if.then.i_crit_edge, %if.end13.if.then.i_crit_edge, %if.end8.if.then.i_crit_edge, %if.end4.if.then.i_crit_edge
  %add.ptr1.i89 = getelementptr i8, ptr %call, i32 -20
  %tobool.not.i.i.i = icmp eq ptr %add.ptr1.i89, null
  br i1 %tobool.not.i.i.i, label %if.then.i.cleanup_crit_edge, label %if.then.i.i.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.then.i
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %msg, i32 0, i32 19
  %38 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %data.i.i.i, align 4
  %cmp.i.i.i = icmp ugt ptr %39, %add.ptr1.i89
  br i1 %cmp.i.i.i, label %do.end.i.i.i, label %if.then.i.i.i.if.end.i.i.i_crit_edge, !prof !47

if.then.i.i.i.if.end.i.i.i_crit_edge:             ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i.i

do.end.i.i.i:                                     ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 991, i32 noundef 9, ptr noundef null) #10
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %do.end.i.i.i, %if.then.i.i.i.if.end.i.i.i_crit_edge
  %40 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %data.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %add.ptr1.i89 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %41 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  call void @skb_trim(ptr noundef %msg, i32 noundef %sub.ptr.sub.i.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i.i, %if.then.i.cleanup_crit_edge, %if.end50, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end50 ], [ -105, %entry.cleanup_crit_edge ], [ -90, %if.then.i.cleanup_crit_edge ], [ -90, %if.end.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @batadv_netlink_notify_vlan(ptr nocapture noundef readonly %bat_priv, ptr noundef %vlan) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef 3840, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #10
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc i32 @batadv_netlink_vlan_fill(ptr noundef nonnull %call.i.i, ptr noundef %bat_priv, ptr noundef %vlan, i32 noundef 18, i32 noundef 0, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i.i, i32 noundef 0) #10
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %0 = load i8, ptr getelementptr inbounds (%struct.genl_family, ptr @batadv_netlink_family, i32 0, i32 9), align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %cmp.not.i.not = icmp eq i8 %0, 0
  br i1 %cmp.not.i.not, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %if.end3
  %.b1.i = load i1, ptr @genlmsg_multicast_netns.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.cleanup_crit_edge, label %if.then.i, !prof !42

land.rhs.i.cleanup_crit_edge:                     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @genlmsg_multicast_netns.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 308, i32 noundef 9, ptr noundef null) #10
  br label %cleanup

if.end39.i:                                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  %soft_iface = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 1
  %1 = ptrtoint ptr %soft_iface to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %soft_iface, align 4
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 127
  %3 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %nd_net.i, align 4
  %5 = load i32, ptr getelementptr inbounds (%struct.genl_family, ptr @batadv_netlink_family, i32 0, i32 5), align 4
  %genl_sock.i = getelementptr inbounds %struct.net, ptr %4, i32 0, i32 21
  %6 = ptrtoint ptr %genl_sock.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %genl_sock.i, align 4
  %dst_group.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3, i32 16
  %8 = ptrtoint ptr %dst_group.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %5, ptr %dst_group.i.i, align 8
  %call.i.i12 = tail call i32 @netlink_broadcast(ptr noundef %7, ptr noundef nonnull %call.i.i, i32 noundef 0, i32 noundef %5, i32 noundef 3264) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end39.i, %if.then.i, %land.rhs.i.cleanup_crit_edge, %if.then2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.then2 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %land.rhs.i.cleanup_crit_edge ], [ 0, %if.then.i ], [ 0, %if.end39.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @batadv_netlink_vlan_fill(ptr noundef %msg, ptr nocapture noundef readonly %bat_priv, ptr noundef %vlan, i32 noundef %cmd, i32 noundef %portid, i32 noundef %seq) unnamed_addr #0 align 64 {
entry:
  %tmp.i4 = alloca i8, align 1
  %tmp.i2 = alloca i32, align 4
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i32 %cmd to i8
  %call = tail call ptr @genlmsg_put(ptr noundef %msg, i32 noundef %portid, i32 noundef %seq, ptr noundef nonnull @batadv_netlink_family, i32 noundef 0, i8 noundef zeroext %conv) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %soft_iface = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 1
  %0 = ptrtoint ptr %soft_iface to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %soft_iface, align 4
  %ifindex = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ifindex, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #10
  %4 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %tmp.i, align 4
  %call.i = call i32 @nla_put(ptr noundef %msg, i32 noundef 3, i32 noundef 4, ptr noundef nonnull %tmp.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not = icmp eq i32 %call.i, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.if.then.i_crit_edge

if.end.if.then.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.end4:                                          ; preds = %if.end
  %5 = ptrtoint ptr %soft_iface to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %soft_iface, align 4
  %call.i1 = call i32 @strlen(ptr noundef %6) #13
  %add.i = add i32 %call.i1, 1
  %call1.i = call i32 @nla_put(ptr noundef %msg, i32 noundef 4, i32 noundef %add.i, ptr noundef %6) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool7.not = icmp eq i32 %call1.i, 0
  br i1 %tobool7.not, label %if.end9, label %if.end4.if.then.i_crit_edge

if.end4.if.then.i_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.end9:                                          ; preds = %if.end4
  %vid = getelementptr inbounds %struct.batadv_softif_vlan, ptr %vlan, i32 0, i32 1
  %7 = ptrtoint ptr %vid to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %vid, align 4
  %9 = and i16 %8, 4095
  %and = zext i16 %9 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i2) #10
  %10 = ptrtoint ptr %tmp.i2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %and, ptr %tmp.i2, align 4
  %call.i3 = call i32 @nla_put(ptr noundef %msg, i32 noundef 40, i32 noundef 4, ptr noundef nonnull %tmp.i2) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3)
  %tobool12.not = icmp eq i32 %call.i3, 0
  br i1 %tobool12.not, label %if.end14, label %if.end9.if.then.i_crit_edge

if.end9.if.then.i_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.end14:                                         ; preds = %if.end9
  %ap_isolation = getelementptr inbounds %struct.batadv_softif_vlan, ptr %vlan, i32 0, i32 2
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %ap_isolation, i32 noundef 4) #10
  %11 = ptrtoint ptr %ap_isolation to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %ap_isolation, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool16 = icmp ne i32 %12, 0
  %conv18 = zext i1 %tobool16 to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i4) #10
  %13 = ptrtoint ptr %tmp.i4 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv18, ptr %tmp.i4, align 1
  %call.i5 = call i32 @nla_put(ptr noundef %msg, i32 noundef 42, i32 noundef 1, ptr noundef nonnull %tmp.i4) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i5)
  %tobool20.not = icmp eq i32 %call.i5, 0
  br i1 %tobool20.not, label %if.end22, label %if.end14.if.then.i_crit_edge

if.end14.if.then.i_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.end22:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr1.i = getelementptr i8, ptr %call, i32 -20
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %msg, i32 0, i32 16
  %14 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %15 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %add.ptr1.i to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %16 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %sub.ptr.sub.i.i, ptr %add.ptr1.i, align 4
  br label %cleanup

if.then.i:                                        ; preds = %if.end14.if.then.i_crit_edge, %if.end9.if.then.i_crit_edge, %if.end4.if.then.i_crit_edge, %if.end.if.then.i_crit_edge
  %add.ptr1.i6 = getelementptr i8, ptr %call, i32 -20
  %tobool.not.i.i.i = icmp eq ptr %add.ptr1.i6, null
  br i1 %tobool.not.i.i.i, label %if.then.i.cleanup_crit_edge, label %if.then.i.i.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.then.i
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %msg, i32 0, i32 19
  %17 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data.i.i.i, align 4
  %cmp.i.i.i = icmp ugt ptr %18, %add.ptr1.i6
  br i1 %cmp.i.i.i, label %do.end.i.i.i, label %if.then.i.i.i.if.end.i.i.i_crit_edge, !prof !47

if.then.i.i.i.if.end.i.i.i_crit_edge:             ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i.i

do.end.i.i.i:                                     ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 991, i32 noundef 9, ptr noundef null) #10
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %do.end.i.i.i, %if.then.i.i.i.if.end.i.i.i_crit_edge
  %19 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %add.ptr1.i6 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %20 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  call void @skb_trim(ptr noundef %msg, i32 noundef %sub.ptr.sub.i.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i.i, %if.then.i.cleanup_crit_edge, %if.end22, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end22 ], [ -105, %entry.cleanup_crit_edge ], [ -90, %if.then.i.cleanup_crit_edge ], [ -90, %if.end.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @batadv_pre_doit(ptr nocapture noundef readonly %ops, ptr nocapture noundef readnone %skb, ptr nocapture noundef %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %_net.i = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 6
  %0 = ptrtoint ptr %_net.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_net.i, align 4
  %internal_flags = getelementptr inbounds %struct.genl_ops, ptr %ops, i32 0, i32 7
  %2 = ptrtoint ptr %internal_flags to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %internal_flags, align 1
  %4 = and i8 %3, 6
  %and = zext i8 %4 to i32
  %call.i = tail call i32 @__sw_hweight8(i32 noundef %and) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp = icmp ugt i32 %call.i, 1
  br i1 %cmp, label %do.end, label %if.end122, !prof !47

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1283, i32 noundef 9, ptr noundef null) #10
  br label %cleanup

if.end122:                                        ; preds = %entry
  %5 = ptrtoint ptr %internal_flags to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %internal_flags, align 1
  %conv125 = zext i8 %6 to i32
  %and127 = and i32 %conv125, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and127)
  %tobool128.not = icmp ne i32 %and127, 0
  %neg = and i32 %conv125, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %neg)
  %tobool132 = icmp eq i32 %neg, 0
  %7 = and i1 %tobool128.not, %tobool132
  br i1 %7, label %do.end148, label %if.end164, !prof !47

do.end148:                                        ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1288, i32 noundef 9, ptr noundef null) #10
  br label %cleanup

if.end164:                                        ; preds = %if.end122
  %8 = and i8 %6, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool168.not = icmp eq i8 %8, 0
  br i1 %tobool168.not, label %if.end164.if.end176_crit_edge, label %if.then169

if.end164.if.end176_crit_edge:                    ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end176

if.then169:                                       ; preds = %if.end164
  %attrs.i = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %9 = ptrtoint ptr %attrs.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %attrs.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %10, i32 3
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %if.then169.if.then172_crit_edge, label %if.end.i

if.then169.if.then172_crit_edge:                  ; preds = %if.then169
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then172

if.end.i:                                         ; preds = %if.then169
  %add.ptr.i.i.i = getelementptr i8, ptr %12, i32 4
  %13 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %add.ptr.i.i.i, align 4
  %call4.i = tail call ptr @dev_get_by_index(ptr noundef %1, i32 noundef %14) #10
  %tobool5.not.i = icmp eq ptr %call4.i, null
  br i1 %tobool5.not.i, label %if.end.i.if.then172_crit_edge, label %if.end8.i

if.end.i.if.then172_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then172

if.end8.i:                                        ; preds = %if.end.i
  %call9.i = tail call zeroext i1 @batadv_softif_is_valid(ptr noundef nonnull %call4.i) #10
  br i1 %call9.i, label %batadv_get_softif_from_info.exit, label %do.body1.i.i

do.body1.i.i:                                     ; preds = %if.end8.i
  %15 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #10, !srcloc !48
  %pcpu_refcnt.i.i = getelementptr inbounds %struct.net_device, ptr %call4.i, i32 0, i32 118
  %16 = ptrtoint ptr %pcpu_refcnt.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pcpu_refcnt.i.i, align 4
  %18 = ptrtoint ptr %17 to i32
  %19 = tail call i32 @llvm.read_register.i32(metadata !32) #10
  %and.i.i.i = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %22
  %23 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %24, %18
  %25 = inttoptr i32 %add.i.i to ptr
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 4
  %add13.i.i = add i32 %27, -1
  store i32 %add13.i.i, ptr %25, align 4
  %28 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !49
  %and.i.i.i.i = and i32 %28, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool24.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool24.not.i.i, label %if.then28.i.i, label %do.body1.i.i.dev_put.exit.i_crit_edge, !prof !47

do.body1.i.i.dev_put.exit.i_crit_edge:            ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_put.exit.i

if.then28.i.i:                                    ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @warn_bogus_irq_restore() #10
  br label %dev_put.exit.i

dev_put.exit.i:                                   ; preds = %if.then28.i.i, %do.body1.i.i.dev_put.exit.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %15) #10, !srcloc !50
  br label %if.then172

batadv_get_softif_from_info.exit:                 ; preds = %if.end8.i
  %cmp.i = icmp ugt ptr %call4.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %batadv_get_softif_from_info.exit.if.then172_crit_edge, label %if.end174

batadv_get_softif_from_info.exit.if.then172_crit_edge: ; preds = %batadv_get_softif_from_info.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then172

if.then172:                                       ; preds = %batadv_get_softif_from_info.exit.if.then172_crit_edge, %dev_put.exit.i, %if.end.i.if.then172_crit_edge, %if.then169.if.then172_crit_edge
  %retval.0.i291 = phi ptr [ %call4.i, %batadv_get_softif_from_info.exit.if.then172_crit_edge ], [ inttoptr (i32 -19 to ptr), %if.end.i.if.then172_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.then169.if.then172_crit_edge ], [ inttoptr (i32 -22 to ptr), %dev_put.exit.i ]
  %29 = ptrtoint ptr %retval.0.i291 to i32
  br label %cleanup

if.end174:                                        ; preds = %batadv_get_softif_from_info.exit
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i = getelementptr i8, ptr %call4.i, i32 2304
  %user_ptr = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 7
  %30 = ptrtoint ptr %user_ptr to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %add.ptr.i, ptr %user_ptr, align 4
  br label %if.end176

if.end176:                                        ; preds = %if.end174, %if.end164.if.end176_crit_edge
  %bat_priv.0 = phi ptr [ %add.ptr.i, %if.end174 ], [ null, %if.end164.if.end176_crit_edge ]
  %31 = ptrtoint ptr %internal_flags to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %internal_flags, align 1
  %33 = and i8 %32, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool180.not = icmp eq i8 %33, 0
  br i1 %tobool180.not, label %if.end176.if.end189_crit_edge, label %if.then181

if.end176.if.end189_crit_edge:                    ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end189

if.then181:                                       ; preds = %if.end176
  %attrs.i257 = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %34 = ptrtoint ptr %attrs.i257 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %attrs.i257, align 4
  %arrayidx.i258 = getelementptr ptr, ptr %35, i32 6
  %36 = ptrtoint ptr %arrayidx.i258 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx.i258, align 4
  %tobool.not.i259 = icmp eq ptr %37, null
  br i1 %tobool.not.i259, label %if.then181.err_put_softif_crit_edge, label %if.end.i263

if.then181.err_put_softif_crit_edge:              ; preds = %if.then181
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_put_softif

if.end.i263:                                      ; preds = %if.then181
  %add.ptr.i.i.i260 = getelementptr i8, ptr %37, i32 4
  %38 = ptrtoint ptr %add.ptr.i.i.i260 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %add.ptr.i.i.i260, align 4
  %call4.i261 = tail call ptr @dev_get_by_index(ptr noundef %1, i32 noundef %39) #10
  %tobool5.not.i262 = icmp eq ptr %call4.i261, null
  br i1 %tobool5.not.i262, label %if.end.i263.err_put_softif_crit_edge, label %if.end8.i265

if.end.i263.err_put_softif_crit_edge:             ; preds = %if.end.i263
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_put_softif

if.end8.i265:                                     ; preds = %if.end.i263
  %call9.i264 = tail call ptr @batadv_hardif_get_by_netdev(ptr noundef nonnull %call4.i261) #10
  %tobool10.not.i = icmp eq ptr %call9.i264, null
  br i1 %tobool10.not.i, label %if.end8.i265.do.body1.i36.i_crit_edge, label %if.end12.i

if.end8.i265.do.body1.i36.i_crit_edge:            ; preds = %if.end8.i265
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body1.i36.i

if.end12.i:                                       ; preds = %if.end8.i265
  %soft_iface.i = getelementptr inbounds %struct.batadv_hard_iface, ptr %call9.i264, i32 0, i32 7
  %40 = ptrtoint ptr %soft_iface.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %soft_iface.i, align 4
  %soft_iface13.i = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv.0, i32 0, i32 1
  %42 = ptrtoint ptr %soft_iface13.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %soft_iface13.i, align 4
  %cmp.not.i = icmp eq ptr %41, %43
  br i1 %cmp.not.i, label %do.body1.i.i274, label %if.end.i.i

do.body1.i.i274:                                  ; preds = %if.end12.i
  %44 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #10, !srcloc !48
  %pcpu_refcnt.i.i266 = getelementptr inbounds %struct.net_device, ptr %call4.i261, i32 0, i32 118
  %45 = ptrtoint ptr %pcpu_refcnt.i.i266 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %pcpu_refcnt.i.i266, align 4
  %47 = ptrtoint ptr %46 to i32
  %48 = tail call i32 @llvm.read_register.i32(metadata !32) #10
  %and.i.i.i267 = and i32 %48, -16384
  %49 = inttoptr i32 %and.i.i.i267 to ptr
  %cpu.i.i268 = getelementptr inbounds %struct.thread_info, ptr %49, i32 0, i32 3
  %50 = ptrtoint ptr %cpu.i.i268 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %cpu.i.i268, align 4
  %arrayidx.i.i269 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %51
  %52 = ptrtoint ptr %arrayidx.i.i269 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx.i.i269, align 4
  %add.i.i270 = add i32 %53, %47
  %54 = inttoptr i32 %add.i.i270 to ptr
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %54, align 4
  %add13.i.i271 = add i32 %56, -1
  store i32 %add13.i.i271, ptr %54, align 4
  %57 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !49
  %and.i.i.i.i272 = and i32 %57, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i272)
  %tobool24.not.i.i273 = icmp eq i32 %and.i.i.i.i272, 0
  br i1 %tobool24.not.i.i273, label %if.then28.i.i275, label %do.body1.i.i274.batadv_get_hardif_from_info.exit_crit_edge, !prof !47

do.body1.i.i274.batadv_get_hardif_from_info.exit_crit_edge: ; preds = %do.body1.i.i274
  call void @__sanitizer_cov_trace_pc() #12
  br label %batadv_get_hardif_from_info.exit

if.then28.i.i275:                                 ; preds = %do.body1.i.i274
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @warn_bogus_irq_restore() #10
  br label %batadv_get_hardif_from_info.exit

if.end.i.i:                                       ; preds = %if.end12.i
  %refcount.i.i = getelementptr inbounds %struct.batadv_hard_iface, ptr %call9.i264, i32 0, i32 5
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !43
  tail call void @llvm.prefetch.p0(ptr %refcount.i.i, i32 1, i32 3, i32 1) #10
  %58 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i, ptr %refcount.i.i, i32 1, ptr elementtype(i32) %refcount.i.i) #10, !srcloc !44
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %58, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.do.body1.i36.i_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !42

if.end5.i.i.i.i.i.i.do.body1.i36.i_crit_edge:     ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body1.i36.i

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i.i, i32 noundef 3) #10
  br label %do.body1.i36.i

if.then.i.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !45
  tail call void @batadv_hardif_release(ptr noundef %refcount.i.i) #10, !callees !46
  br label %do.body1.i36.i

do.body1.i36.i:                                   ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.do.body1.i36.i_crit_edge, %if.end8.i265.do.body1.i36.i_crit_edge
  %59 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #10, !srcloc !48
  %pcpu_refcnt.i28.i = getelementptr inbounds %struct.net_device, ptr %call4.i261, i32 0, i32 118
  %60 = ptrtoint ptr %pcpu_refcnt.i28.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %pcpu_refcnt.i28.i, align 4
  %62 = ptrtoint ptr %61 to i32
  %63 = tail call i32 @llvm.read_register.i32(metadata !32) #10
  %and.i.i29.i = and i32 %63, -16384
  %64 = inttoptr i32 %and.i.i29.i to ptr
  %cpu.i30.i = getelementptr inbounds %struct.thread_info, ptr %64, i32 0, i32 3
  %65 = ptrtoint ptr %cpu.i30.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %cpu.i30.i, align 4
  %arrayidx.i31.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %66
  %67 = ptrtoint ptr %arrayidx.i31.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx.i31.i, align 4
  %add.i32.i = add i32 %68, %62
  %69 = inttoptr i32 %add.i32.i to ptr
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %69, align 4
  %add13.i33.i = add i32 %71, -1
  store i32 %add13.i33.i, ptr %69, align 4
  %72 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !49
  %and.i.i.i34.i = and i32 %72, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i34.i)
  %tobool24.not.i35.i = icmp eq i32 %and.i.i.i34.i, 0
  br i1 %tobool24.not.i35.i, label %if.then28.i37.i, label %do.body1.i36.i.dev_put.exit39.i_crit_edge, !prof !47

do.body1.i36.i.dev_put.exit39.i_crit_edge:        ; preds = %do.body1.i36.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_put.exit39.i

if.then28.i37.i:                                  ; preds = %do.body1.i36.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @warn_bogus_irq_restore() #10
  br label %dev_put.exit39.i

dev_put.exit39.i:                                 ; preds = %if.then28.i37.i, %do.body1.i36.i.dev_put.exit39.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %59) #10, !srcloc !50
  br label %err_put_softif

batadv_get_hardif_from_info.exit:                 ; preds = %if.then28.i.i275, %do.body1.i.i274.batadv_get_hardif_from_info.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %44) #10, !srcloc !50
  %cmp.i278 = icmp ugt ptr %call9.i264, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i278, label %batadv_get_hardif_from_info.exit.err_put_softif_crit_edge, label %if.end186

batadv_get_hardif_from_info.exit.err_put_softif_crit_edge: ; preds = %batadv_get_hardif_from_info.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_put_softif

if.end186:                                        ; preds = %batadv_get_hardif_from_info.exit
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx188 = getelementptr %struct.genl_info, ptr %info, i32 0, i32 7, i32 1
  %73 = ptrtoint ptr %arrayidx188 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %call9.i264, ptr %arrayidx188, align 4
  br label %if.end189

if.end189:                                        ; preds = %if.end186, %if.end176.if.end189_crit_edge
  %74 = ptrtoint ptr %internal_flags to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %internal_flags, align 1
  %76 = and i8 %75, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %76)
  %tobool193.not = icmp eq i8 %76, 0
  br i1 %tobool193.not, label %if.end189.cleanup_crit_edge, label %if.then194

if.end189.cleanup_crit_edge:                      ; preds = %if.end189
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then194:                                       ; preds = %if.end189
  %attrs.i279 = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %77 = ptrtoint ptr %attrs.i279 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %attrs.i279, align 4
  %arrayidx.i280 = getelementptr ptr, ptr %78, i32 40
  %79 = ptrtoint ptr %arrayidx.i280 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %arrayidx.i280, align 4
  %tobool.not.i281 = icmp eq ptr %80, null
  br i1 %tobool.not.i281, label %if.then194.err_put_softif_crit_edge, label %if.end.i283

if.then194.err_put_softif_crit_edge:              ; preds = %if.then194
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_put_softif

if.end.i283:                                      ; preds = %if.then194
  %add.ptr.i.i.i282 = getelementptr i8, ptr %80, i32 4
  %81 = ptrtoint ptr %add.ptr.i.i.i282 to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %add.ptr.i.i.i282, align 2
  %83 = or i16 %82, -32768
  %call5.i = tail call ptr @batadv_softif_vlan_get(ptr noundef %bat_priv.0, i16 noundef zeroext %83) #10
  %tobool6.not.i = icmp eq ptr %call5.i, null
  br i1 %tobool6.not.i, label %if.end.i283.err_put_softif_crit_edge, label %batadv_get_vlan_from_info.exit

if.end.i283.err_put_softif_crit_edge:             ; preds = %if.end.i283
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_put_softif

batadv_get_vlan_from_info.exit:                   ; preds = %if.end.i283
  %cmp.i285 = icmp ugt ptr %call5.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i285, label %batadv_get_vlan_from_info.exit.err_put_softif_crit_edge, label %if.end199

batadv_get_vlan_from_info.exit.err_put_softif_crit_edge: ; preds = %batadv_get_vlan_from_info.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_put_softif

if.end199:                                        ; preds = %batadv_get_vlan_from_info.exit
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx201 = getelementptr %struct.genl_info, ptr %info, i32 0, i32 7, i32 1
  %84 = ptrtoint ptr %arrayidx201 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %call5.i, ptr %arrayidx201, align 4
  br label %cleanup

err_put_softif:                                   ; preds = %batadv_get_vlan_from_info.exit.err_put_softif_crit_edge, %if.end.i283.err_put_softif_crit_edge, %if.then194.err_put_softif_crit_edge, %batadv_get_hardif_from_info.exit.err_put_softif_crit_edge, %dev_put.exit39.i, %if.end.i263.err_put_softif_crit_edge, %if.then181.err_put_softif_crit_edge
  %ret.0.in = phi ptr [ %call9.i264, %batadv_get_hardif_from_info.exit.err_put_softif_crit_edge ], [ inttoptr (i32 -19 to ptr), %if.end.i263.err_put_softif_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.then181.err_put_softif_crit_edge ], [ inttoptr (i32 -22 to ptr), %dev_put.exit39.i ], [ %call5.i, %batadv_get_vlan_from_info.exit.err_put_softif_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.then194.err_put_softif_crit_edge ], [ inttoptr (i32 -2 to ptr), %if.end.i283.err_put_softif_crit_edge ]
  %ret.0 = ptrtoint ptr %ret.0.in to i32
  %tobool203.not = icmp eq ptr %bat_priv.0, null
  br i1 %tobool203.not, label %err_put_softif.cleanup_crit_edge, label %if.then204

err_put_softif.cleanup_crit_edge:                 ; preds = %err_put_softif
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then204:                                       ; preds = %err_put_softif
  %soft_iface205 = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv.0, i32 0, i32 1
  %85 = ptrtoint ptr %soft_iface205 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %soft_iface205, align 4
  %tobool.not.i286 = icmp eq ptr %86, null
  br i1 %tobool.not.i286, label %if.then204.cleanup_crit_edge, label %do.body1.i

if.then204.cleanup_crit_edge:                     ; preds = %if.then204
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body1.i:                                       ; preds = %if.then204
  %87 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #10, !srcloc !48
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %86, i32 0, i32 118
  %88 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %pcpu_refcnt.i, align 4
  %90 = ptrtoint ptr %89 to i32
  %91 = tail call i32 @llvm.read_register.i32(metadata !32) #10
  %and.i.i = and i32 %91, -16384
  %92 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %92, i32 0, i32 3
  %93 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %cpu.i, align 4
  %arrayidx.i287 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %94
  %95 = ptrtoint ptr %arrayidx.i287 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %arrayidx.i287, align 4
  %add.i = add i32 %96, %90
  %97 = inttoptr i32 %add.i to ptr
  %98 = ptrtoint ptr %97 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %97, align 4
  %add13.i = add i32 %99, -1
  store i32 %add13.i, ptr %97, align 4
  %100 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !49
  %and.i.i.i288 = and i32 %100, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i288)
  %tobool24.not.i = icmp eq i32 %and.i.i.i288, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.do.end30.i_crit_edge, !prof !47

do.body1.i.do.end30.i_crit_edge:                  ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end30.i

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @warn_bogus_irq_restore() #10
  br label %do.end30.i

do.end30.i:                                       ; preds = %if.then28.i, %do.body1.i.do.end30.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %87) #10, !srcloc !50
  br label %cleanup

cleanup:                                          ; preds = %do.end30.i, %if.then204.cleanup_crit_edge, %err_put_softif.cleanup_crit_edge, %if.end199, %if.end189.cleanup_crit_edge, %if.then172, %do.end148, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end148 ], [ %29, %if.then172 ], [ 0, %if.end199 ], [ 0, %if.end189.cleanup_crit_edge ], [ %ret.0, %err_put_softif.cleanup_crit_edge ], [ %ret.0, %if.then204.cleanup_crit_edge ], [ %ret.0, %do.end30.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @batadv_post_doit(ptr nocapture noundef readonly %ops, ptr nocapture noundef readnone %skb, ptr nocapture noundef readonly %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %internal_flags = getelementptr inbounds %struct.genl_ops, ptr %ops, i32 0, i32 7
  %0 = ptrtoint ptr %internal_flags to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %internal_flags, align 1
  %2 = and i8 %1, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %arrayidx = getelementptr %struct.genl_info, ptr %info, i32 0, i32 7, i32 1
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %tobool1.not = icmp eq ptr %4, null
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %if.end.i

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end.i:                                         ; preds = %land.lhs.true
  %refcount.i = getelementptr inbounds %struct.batadv_hard_iface, ptr %4, i32 0, i32 5
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !43
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #10
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #10, !srcloc !44
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.if.end_crit_edge, label %if.then10.i.i.i.i.i, !prof !42

if.end5.i.i.i.i.i.if.end_crit_edge:               ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #10
  br label %if.end

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !45
  tail call void @batadv_hardif_release(ptr noundef %refcount.i) #10, !callees !46
  br label %if.end

if.end:                                           ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %6 = ptrtoint ptr %internal_flags to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %internal_flags, align 1
  %8 = and i8 %7, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool7.not = icmp eq i8 %8, 0
  br i1 %tobool7.not, label %if.end.if.end15_crit_edge, label %land.lhs.true8

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

land.lhs.true8:                                   ; preds = %if.end
  %arrayidx10 = getelementptr %struct.genl_info, ptr %info, i32 0, i32 7, i32 1
  %9 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx10, align 4
  %tobool11.not = icmp eq ptr %10, null
  br i1 %tobool11.not, label %land.lhs.true8.if.end15_crit_edge, label %if.end.i42

land.lhs.true8.if.end15_crit_edge:                ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.end.i42:                                       ; preds = %land.lhs.true8
  %refcount.i38 = getelementptr inbounds %struct.batadv_softif_vlan, ptr %10, i32 0, i32 5
  %call.i.i.i.i.i.i.i39 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i38, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !43
  tail call void @llvm.prefetch.p0(ptr %refcount.i38, i32 1, i32 3, i32 1) #10
  %11 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i38, ptr %refcount.i38, i32 1, ptr elementtype(i32) %refcount.i38) #10, !srcloc !44
  %asmresult.i.i.i.i.i.i.i.i40 = extractvalue { i32, i32, i32 } %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i40)
  %cmp.i.i.i.i.i41 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i40, 1
  br i1 %cmp.i.i.i.i.i41, label %if.then.i.i46, label %if.end5.i.i.i.i.i44

if.end5.i.i.i.i.i44:                              ; preds = %if.end.i42
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i40)
  %.not.i.i.i.i.i43 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i40, 0
  br i1 %.not.i.i.i.i.i43, label %if.end5.i.i.i.i.i44.if.end15_crit_edge, label %if.then10.i.i.i.i.i45, !prof !42

if.end5.i.i.i.i.i44.if.end15_crit_edge:           ; preds = %if.end5.i.i.i.i.i44
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.then10.i.i.i.i.i45:                            ; preds = %if.end5.i.i.i.i.i44
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i38, i32 noundef 3) #10
  br label %if.end15

if.then.i.i46:                                    ; preds = %if.end.i42
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !45
  tail call void @batadv_softif_vlan_release(ptr noundef %refcount.i38) #10, !callees !46
  br label %if.end15

if.end15:                                         ; preds = %if.then.i.i46, %if.then10.i.i.i.i.i45, %if.end5.i.i.i.i.i44.if.end15_crit_edge, %land.lhs.true8.if.end15_crit_edge, %if.end.if.end15_crit_edge
  %12 = ptrtoint ptr %internal_flags to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %internal_flags, align 1
  %14 = and i8 %13, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool19.not = icmp eq i8 %14, 0
  br i1 %tobool19.not, label %if.end15.if.end27_crit_edge, label %land.lhs.true20

if.end15.if.end27_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

land.lhs.true20:                                  ; preds = %if.end15
  %user_ptr21 = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 7
  %15 = ptrtoint ptr %user_ptr21 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %user_ptr21, align 4
  %tobool23.not = icmp eq ptr %16, null
  br i1 %tobool23.not, label %land.lhs.true20.if.end27_crit_edge, label %if.then24

land.lhs.true20.if.end27_crit_edge:               ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

if.then24:                                        ; preds = %land.lhs.true20
  %soft_iface = getelementptr inbounds %struct.batadv_priv, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %soft_iface to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %soft_iface, align 4
  %tobool.not.i47 = icmp eq ptr %18, null
  br i1 %tobool.not.i47, label %if.then24.if.end27_crit_edge, label %do.body1.i

if.then24.if.end27_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

do.body1.i:                                       ; preds = %if.then24
  %19 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #10, !srcloc !48
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %18, i32 0, i32 118
  %20 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pcpu_refcnt.i, align 4
  %22 = ptrtoint ptr %21 to i32
  %23 = tail call i32 @llvm.read_register.i32(metadata !32) #10
  %and.i.i = and i32 %23, -16384
  %24 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %26
  %27 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %28, %22
  %29 = inttoptr i32 %add.i to ptr
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %29, align 4
  %add13.i = add i32 %31, -1
  store i32 %add13.i, ptr %29, align 4
  %32 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !49
  %and.i.i.i = and i32 %32, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool24.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.do.end30.i_crit_edge, !prof !47

do.body1.i.do.end30.i_crit_edge:                  ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end30.i

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @warn_bogus_irq_restore() #10
  br label %do.end30.i

do.end30.i:                                       ; preds = %if.then28.i, %do.body1.i.do.end30.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %19) #10, !srcloc !50
  br label %if.end27

if.end27:                                         ; preds = %do.end30.i, %if.then24.if.end27_crit_edge, %land.lhs.true20.if.end27_crit_edge, %if.end15.if.end27_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @batadv_netlink_register() local_unnamed_addr #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @genl_register_family(ptr noundef nonnull @batadv_netlink_family) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #14
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genl_register_family(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @batadv_netlink_unregister() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @genl_unregister_family(ptr noundef nonnull @batadv_netlink_family) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genl_unregister_family(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nla_find(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nla_put_string(ptr noundef %skb, i32 noundef %attrtype, ptr noundef %str) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 @strlen(ptr noundef %str) #15
  %add = add i32 %call, 1
  %call1 = tail call i32 @nla_put(ptr noundef %skb, i32 noundef %attrtype, i32 noundef %add, ptr noundef %str) #10
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @batadv_mcast_mesh_info_put(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @batadv_primary_if_get_selected(ptr noundef %bat_priv) unnamed_addr #2 align 64 {
entry:
  %old.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  %0 = tail call i32 @llvm.read_register.i32(metadata !32) #10
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !51
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 696, ptr noundef nonnull @.str.7) #10
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %primary_if = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 29
  %4 = ptrtoint ptr %primary_if to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %primary_if, align 4
  %call = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end7_crit_edge

rcu_read_lock.exit.do.end7_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b18 = load i1, ptr @batadv_primary_if_get_selected.__warned, align 1
  br i1 %.b18, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @batadv_primary_if_get_selected.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 110, ptr noundef nonnull @.str.5) #10
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %rcu_read_lock.exit.do.end7_crit_edge
  %tobool9.not = icmp eq ptr %5, null
  br i1 %tobool9.not, label %do.end7.out_crit_edge, label %if.end11

do.end7.out_crit_edge:                            ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end11:                                         ; preds = %do.end7
  %refcount = getelementptr inbounds %struct.batadv_hard_iface, ptr %5, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i) #10
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcount, i32 noundef 4) #10
  %6 = ptrtoint ptr %refcount to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %refcount, align 4
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, %if.end11
  %8 = phi i32 [ %7, %if.end11 ], [ %asmresult3.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge ]
  %9 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %old.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i.i.i.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i.i.i.i, label %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %do.cond.i.i.i.i

do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4.i.i.i.i

do.cond.i.i.i.i:                                  ; preds = %do.body.i.i.i.i
  %add.i.i.i.i = add i32 %8, 1
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #10
  %call.i3.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i, i32 noundef 4) #10
  %10 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %old.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #10
  br label %do.body.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i:                            ; preds = %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i
  %12 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 %11, i32 %add.i.i.i.i, ptr elementtype(i32) %refcount) #10, !srcloc !52
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %12, 0
  %tobool.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i:     ; preds = %do.body.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i = extractvalue { i32, i32 } %12, 1
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i, %11
  br i1 %cmp.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, !prof !42

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4.i.i.i.i

if.end4.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge
  %13 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %old.i.i.i.i, align 4
  %add5.i.i.i.i = add i32 %14, 1
  %15 = or i32 %add5.i.i.i.i, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %.not.i.i.i.i = icmp sgt i32 %15, -1
  br i1 %.not.i.i.i.i, label %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge, label %if.then10.i.i.i.i, !prof !42

if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge: ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kref_get_unless_zero.exit

if.then10.i.i.i.i:                                ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 0) #10
  br label %kref_get_unless_zero.exit

kref_get_unless_zero.exit:                        ; preds = %if.then10.i.i.i.i, %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge
  %16 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %old.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool12.i.i.i.i.not = icmp eq i32 %17, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i) #10
  %spec.select = select i1 %tobool12.i.i.i.i.not, ptr null, ptr %5
  br label %out

out:                                              ; preds = %kref_get_unless_zero.exit, %do.end7.out_crit_edge
  %hard_iface.0 = phi ptr [ null, %do.end7.out_crit_edge ], [ %spec.select, %kref_get_unless_zero.exit ]
  %call.i19 = call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i19, label %out.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i22

out.rcu_read_unlock.exit_crit_edge:               ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i22:                                ; preds = %out
  %call1.i20 = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i20)
  %tobool.not.i21 = icmp eq i32 %call1.i20, 0
  br i1 %tobool.not.i21, label %land.lhs.true.i22.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i24

land.lhs.true.i22.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i22
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true2.i24:                               ; preds = %land.lhs.true.i22
  %.b4.i23 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i23, label %land.lhs.true2.i24.rcu_read_unlock.exit_crit_edge, label %if.then.i25

land.lhs.true2.i24.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i24
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

if.then.i25:                                      ; preds = %land.lhs.true2.i24
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 724, ptr noundef nonnull @.str.8) #10
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i25, %land.lhs.true2.i24.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i22.rcu_read_unlock.exit_crit_edge, %out.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !53
  %18 = call i32 @llvm.read_register.i32(metadata !32) #10
  %and.i.i.i.i.i26 = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i.i.i26 to ptr
  %preempt_count.i.i.i.i27 = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i.i.i27 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i.i.i27, align 4
  %sub.i.i.i = add i32 %21, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i27, align 4
  call void @rcu_read_unlock_strict() #10
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  ret ptr %hard_iface.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @batadv_netlink_mesh_fill_ap_isolation(ptr noundef %msg, ptr noundef %bat_priv) unnamed_addr #0 align 64 {
entry:
  %tmp.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @batadv_softif_vlan_get(ptr noundef %bat_priv, i16 noundef zeroext 0) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %ap_isolation1 = getelementptr inbounds %struct.batadv_softif_vlan, ptr %call, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %ap_isolation1, i32 noundef 4) #10
  %0 = ptrtoint ptr %ap_isolation1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %ap_isolation1, align 4
  %conv = trunc i32 %1 to i8
  %refcount.i = getelementptr inbounds %struct.batadv_softif_vlan, ptr %call, i32 0, i32 5
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !43
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #10
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #10, !srcloc !44
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.batadv_softif_vlan_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !42

if.end5.i.i.i.i.i.batadv_softif_vlan_put.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %batadv_softif_vlan_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #10
  br label %batadv_softif_vlan_put.exit

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !45
  tail call void @batadv_softif_vlan_release(ptr noundef %refcount.i) #10, !callees !46
  br label %batadv_softif_vlan_put.exit

batadv_softif_vlan_put.exit:                      ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.batadv_softif_vlan_put.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv)
  %tobool3 = icmp ne i8 %conv, 0
  %conv5 = zext i1 %tobool3 to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i) #10
  %3 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv5, ptr %tmp.i, align 1
  %call.i = call i32 @nla_put(ptr noundef %msg, i32 noundef 42, i32 noundef 1, ptr noundef nonnull %tmp.i) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i) #10
  br label %cleanup

cleanup:                                          ; preds = %batadv_softif_vlan_put.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %batadv_softif_vlan_put.exit ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @batadv_hardif_put(ptr noundef %hard_iface) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %tobool.not = icmp eq ptr %hard_iface, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  %refcount = getelementptr inbounds %struct.batadv_hard_iface, ptr %hard_iface, i32 0, i32 5
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !43
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #10
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #10, !srcloc !44
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.return_crit_edge, label %if.then10.i.i.i.i, !prof !42

if.end5.i.i.i.i.return_crit_edge:                 ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 3) #10
  br label %return

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !45
  tail call void @batadv_hardif_release(ptr noundef %refcount) #10, !callees !46
  br label %return

return:                                           ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #2 align 64 {
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

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #2 align 64 {
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

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @batadv_softif_vlan_get(ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @batadv_softif_vlan_release(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @batadv_hardif_release(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netlink_broadcast(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put_64bit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight8(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_by_index(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @batadv_softif_is_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @batadv_hardif_get_by_netdev(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @batadv_netlink_get_mesh(ptr nocapture noundef readnone %skb, ptr nocapture noundef readonly %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %user_ptr = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 7
  %0 = ptrtoint ptr %user_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %user_ptr, align 4
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef 3840, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #10
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %snd_portid = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 1
  %2 = ptrtoint ptr %snd_portid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %snd_portid, align 4
  %4 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %info, align 4
  %call1 = tail call fastcc i32 @batadv_netlink_mesh_fill(ptr noundef nonnull %call.i.i, ptr noundef %1, i32 noundef 1, i32 noundef %3, i32 noundef %5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i.i, i32 noundef 0) #10
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %_net.i.i = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 6
  %6 = ptrtoint ptr %_net.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %_net.i.i, align 4
  %8 = ptrtoint ptr %snd_portid to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %snd_portid, align 4
  %genl_sock.i.i = getelementptr inbounds %struct.net, ptr %7, i32 0, i32 21
  %10 = ptrtoint ptr %genl_sock.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %genl_sock.i.i, align 4
  %call.i.i.i = tail call i32 @netlink_unicast(ptr noundef %11, ptr noundef nonnull %call.i.i, i32 noundef %9, i32 noundef 64) #10
  %12 = tail call i32 @llvm.smin.i32(i32 %call.i.i.i, i32 0) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.then2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.then2 ], [ %12, %if.end3 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @batadv_netlink_tp_meter_start(ptr nocapture noundef readnone %skb, ptr nocapture noundef readonly %info) #0 align 64 {
entry:
  %tmp.i.i = alloca i32, align 4
  %cookie = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %user_ptr = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 7
  %0 = ptrtoint ptr %user_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %user_ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cookie) #10
  %2 = ptrtoint ptr %cookie to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %cookie, align 4, !annotation !54
  %attrs = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %3 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %attrs, align 4
  %arrayidx1 = getelementptr ptr, ptr %4, i32 9
  %5 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx1, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx3 = getelementptr ptr, ptr %4, i32 11
  %7 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx3, align 4
  %tobool4.not = icmp eq ptr %8, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %add.ptr.i = getelementptr i8, ptr %6, i32 4
  %add.ptr.i.i = getelementptr i8, ptr %8, i32 4
  %9 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %add.ptr.i.i, align 4
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef 3840, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #10
  %tobool13.not = icmp eq ptr %call.i.i, null
  br i1 %tobool13.not, label %if.end6.cleanup_crit_edge, label %if.end15

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end15:                                         ; preds = %if.end6
  %snd_portid = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 1
  %11 = ptrtoint ptr %snd_portid to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %snd_portid, align 4
  %13 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %info, align 4
  %call16 = tail call ptr @genlmsg_put(ptr noundef nonnull %call.i.i, i32 noundef %12, i32 noundef %14, ptr noundef nonnull @batadv_netlink_family, i32 noundef 0, i8 noundef zeroext 2) #10
  %tobool17.not = icmp eq ptr %call16, null
  br i1 %tobool17.not, label %if.end15.if.then24_crit_edge, label %if.end19

if.end15.if.then24_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then24

if.end19:                                         ; preds = %if.end15
  call void @batadv_tp_start(ptr noundef %1, ptr noundef %add.ptr.i, i32 noundef %10, ptr noundef nonnull %cookie) #10
  %15 = ptrtoint ptr %cookie to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cookie, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i) #10
  %17 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %tmp.i.i, align 4
  %call.i.i49 = call i32 @nla_put(ptr noundef nonnull %call.i.i, i32 noundef 13, i32 noundef 4, ptr noundef nonnull %tmp.i.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i49)
  %tobool.not.i = icmp eq i32 %call.i.i49, 0
  br i1 %tobool.not.i, label %if.end26, label %if.end19.if.then24_crit_edge

if.end19.if.then24_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then24

if.then24:                                        ; preds = %if.end19.if.then24_crit_edge, %if.end15.if.then24_crit_edge
  call void @kfree_skb_reason(ptr noundef nonnull %call.i.i, i32 noundef 0) #10
  br label %cleanup

if.end26:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr1.i = getelementptr i8, ptr %call16, i32 -20
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %18 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %19 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %add.ptr1.i to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %20 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %sub.ptr.sub.i.i, ptr %add.ptr1.i, align 4
  %_net.i.i = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 6
  %21 = ptrtoint ptr %_net.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %_net.i.i, align 4
  %23 = ptrtoint ptr %snd_portid to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %snd_portid, align 4
  %genl_sock.i.i = getelementptr inbounds %struct.net, ptr %22, i32 0, i32 21
  %25 = ptrtoint ptr %genl_sock.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %genl_sock.i.i, align 4
  %call.i.i.i = call i32 @netlink_unicast(ptr noundef %26, ptr noundef nonnull %call.i.i, i32 noundef %24, i32 noundef 64) #10
  %27 = call i32 @llvm.smin.i32(i32 %call.i.i.i, i32 0) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %if.then24, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %27, %if.end26 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -105, %if.then24 ], [ -12, %if.end6.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cookie) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @batadv_netlink_tp_meter_cancel(ptr nocapture noundef readnone %skb, ptr nocapture noundef readonly %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %attrs = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %0 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %attrs, align 4
  %arrayidx1 = getelementptr ptr, ptr %1, i32 9
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx1, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %user_ptr = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 7
  %4 = ptrtoint ptr %user_ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %user_ptr, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 4
  tail call void @batadv_tp_stop(ptr noundef %5, ptr noundef %add.ptr.i, i8 noundef zeroext 4) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @batadv_algo_dump(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @batadv_netlink_get_hardif(ptr nocapture noundef readnone %skb, ptr nocapture noundef readonly %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %user_ptr = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 7
  %arrayidx = getelementptr %struct.genl_info, ptr %info, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %2 = ptrtoint ptr %user_ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %user_ptr, align 4
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef 3840, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #10
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %snd_portid = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 1
  %4 = ptrtoint ptr %snd_portid to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %snd_portid, align 4
  %6 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %info, align 4
  %call3 = tail call fastcc i32 @batadv_netlink_hardif_fill(ptr noundef nonnull %call.i.i, ptr noundef %3, ptr noundef %1, i32 noundef 5, i32 noundef %5, i32 noundef %7, i32 noundef 0, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i.i, i32 noundef 0) #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %_net.i.i = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 6
  %8 = ptrtoint ptr %_net.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %_net.i.i, align 4
  %10 = ptrtoint ptr %snd_portid to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %snd_portid, align 4
  %genl_sock.i.i = getelementptr inbounds %struct.net, ptr %9, i32 0, i32 21
  %12 = ptrtoint ptr %genl_sock.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %genl_sock.i.i, align 4
  %call.i.i.i = tail call i32 @netlink_unicast(ptr noundef %13, ptr noundef nonnull %call.i.i, i32 noundef %11, i32 noundef 64) #10
  %14 = tail call i32 @llvm.smin.i32(i32 %call.i.i.i, i32 0) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.then4 ], [ %14, %if.end5 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @batadv_netlink_dump_hardif(ptr noundef %msg, ptr noundef %cb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cb, align 4
  %2 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %4, i32 0, i32 9
  %5 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %skc_net.i, align 4
  %portid3 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 12
  %7 = ptrtoint ptr %portid3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %portid3, align 4
  %9 = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 13
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  %nlh = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 1
  %12 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %nlh, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %13, i32 20
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %sub1.i.i.i = add i32 %15, -20
  %call2.i.i = tail call ptr @nla_find(ptr noundef %add.ptr.i.i.i, i32 noundef %sub1.i.i.i, i32 noundef 3) #10
  %tobool.not.i = icmp eq ptr %call2.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %land.lhs.true.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true.i:                                  ; preds = %entry
  %16 = ptrtoint ptr %call2.i.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %call2.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %17)
  %cmp.i = icmp eq i16 %17, 8
  br i1 %cmp.i, label %batadv_netlink_get_ifindex.exit, label %land.lhs.true.i.cleanup_crit_edge

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

batadv_netlink_get_ifindex.exit:                  ; preds = %land.lhs.true.i
  %add.ptr.i.i5.i = getelementptr i8, ptr %call2.i.i, i32 4
  %18 = ptrtoint ptr %add.ptr.i.i5.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %add.ptr.i.i5.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not = icmp eq i32 %19, 0
  br i1 %tobool.not, label %batadv_netlink_get_ifindex.exit.cleanup_crit_edge, label %if.end

batadv_netlink_get_ifindex.exit.cleanup_crit_edge: ; preds = %batadv_netlink_get_ifindex.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %batadv_netlink_get_ifindex.exit
  %call5 = tail call ptr @dev_get_by_index(ptr noundef %6, i32 noundef %19) #10
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call9 = tail call zeroext i1 @batadv_softif_is_valid(ptr noundef nonnull %call5) #10
  br i1 %call9, label %if.end11, label %do.body1.i

do.body1.i:                                       ; preds = %if.end8
  %20 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #10, !srcloc !48
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %call5, i32 0, i32 118
  %21 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pcpu_refcnt.i, align 4
  %23 = ptrtoint ptr %22 to i32
  %24 = tail call i32 @llvm.read_register.i32(metadata !32) #10
  %and.i.i = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %27
  %28 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %29, %23
  %30 = inttoptr i32 %add.i to ptr
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %30, align 4
  %add13.i = add i32 %32, -1
  store i32 %add13.i, ptr %30, align 4
  %33 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !49
  %and.i.i.i = and i32 %33, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool24.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.dev_put.exit_crit_edge, !prof !47

do.body1.i.dev_put.exit_crit_edge:                ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_put.exit

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @warn_bogus_irq_restore() #10
  br label %dev_put.exit

dev_put.exit:                                     ; preds = %if.then28.i, %do.body1.i.dev_put.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %20) #10, !srcloc !50
  br label %cleanup

if.end11:                                         ; preds = %if.end8
  %add.ptr.i = getelementptr i8, ptr %call5, i32 2304
  tail call void @rtnl_lock() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @batadv_hardif_generation to i32))
  %34 = load i32, ptr @batadv_hardif_generation, align 4
  %shl = shl i32 %34, 1
  %or = or i32 %shl, 1
  %seq = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 11
  %35 = ptrtoint ptr %seq to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %or, ptr %seq, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @batadv_hardif_list to i32))
  %hard_iface.072 = load ptr, ptr @batadv_hardif_list, align 4
  %cmp.not73 = icmp eq ptr %hard_iface.072, @batadv_hardif_list
  br i1 %cmp.not73, label %if.end11.do.body1.i66_crit_edge, label %if.end11.for.body_crit_edge

if.end11.for.body_crit_edge:                      ; preds = %if.end11
  br label %for.body

if.end11.do.body1.i66_crit_edge:                  ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body1.i66

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end11.for.body_crit_edge
  %hard_iface.075 = phi ptr [ %hard_iface.0, %for.inc.for.body_crit_edge ], [ %hard_iface.072, %if.end11.for.body_crit_edge ]
  %i.074 = phi i32 [ %i.1, %for.inc.for.body_crit_edge ], [ 0, %if.end11.for.body_crit_edge ]
  %soft_iface13 = getelementptr inbounds %struct.batadv_hard_iface, ptr %hard_iface.075, i32 0, i32 7
  %36 = ptrtoint ptr %soft_iface13 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %soft_iface13, align 4
  %cmp14.not = icmp eq ptr %37, %call5
  br i1 %cmp14.not, label %if.end16, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end16:                                         ; preds = %for.body
  %inc = add i32 %i.074, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %i.074, i32 %11)
  %cmp17 = icmp slt i32 %i.074, %11
  br i1 %cmp17, label %if.end16.for.inc_crit_edge, label %if.end19

if.end16.for.inc_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end19:                                         ; preds = %if.end16
  %38 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %nlh, align 4
  %nlmsg_seq = getelementptr inbounds %struct.nlmsghdr, ptr %39, i32 0, i32 3
  %40 = ptrtoint ptr %nlmsg_seq to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %nlmsg_seq, align 4
  %call21 = tail call fastcc i32 @batadv_netlink_hardif_fill(ptr noundef %msg, ptr noundef %add.ptr.i, ptr noundef %hard_iface.075, i32 noundef 5, i32 noundef %8, i32 noundef %41, i32 noundef 2, ptr noundef %cb)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end19.for.inc_crit_edge, label %if.end19.do.body1.i66_crit_edge

if.end19.do.body1.i66_crit_edge:                  ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body1.i66

if.end19.for.inc_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

for.inc:                                          ; preds = %if.end19.for.inc_crit_edge, %if.end16.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %i.1 = phi i32 [ %i.074, %for.body.for.inc_crit_edge ], [ %inc, %if.end16.for.inc_crit_edge ], [ %inc, %if.end19.for.inc_crit_edge ]
  %42 = ptrtoint ptr %hard_iface.075 to i32
  call void @__asan_load4_noabort(i32 %42)
  %hard_iface.0 = load ptr, ptr %hard_iface.075, align 4
  %cmp.not = icmp eq ptr %hard_iface.0, @batadv_hardif_list
  br i1 %cmp.not, label %for.inc.do.body1.i66_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.do.body1.i66_crit_edge:                   ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body1.i66

do.body1.i66:                                     ; preds = %for.inc.do.body1.i66_crit_edge, %if.end19.do.body1.i66_crit_edge, %if.end11.do.body1.i66_crit_edge
  %i.0.lcssa = phi i32 [ 0, %if.end11.do.body1.i66_crit_edge ], [ %i.1, %for.inc.do.body1.i66_crit_edge ], [ %i.074, %if.end19.do.body1.i66_crit_edge ]
  tail call void @rtnl_unlock() #10
  %43 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #10, !srcloc !48
  %pcpu_refcnt.i58 = getelementptr inbounds %struct.net_device, ptr %call5, i32 0, i32 118
  %44 = ptrtoint ptr %pcpu_refcnt.i58 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pcpu_refcnt.i58, align 4
  %46 = ptrtoint ptr %45 to i32
  %47 = tail call i32 @llvm.read_register.i32(metadata !32) #10
  %and.i.i59 = and i32 %47, -16384
  %48 = inttoptr i32 %and.i.i59 to ptr
  %cpu.i60 = getelementptr inbounds %struct.thread_info, ptr %48, i32 0, i32 3
  %49 = ptrtoint ptr %cpu.i60 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %cpu.i60, align 4
  %arrayidx.i61 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %50
  %51 = ptrtoint ptr %arrayidx.i61 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx.i61, align 4
  %add.i62 = add i32 %52, %46
  %53 = inttoptr i32 %add.i62 to ptr
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %53, align 4
  %add13.i63 = add i32 %55, -1
  store i32 %add13.i63, ptr %53, align 4
  %56 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !49
  %and.i.i.i64 = and i32 %56, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i64)
  %tobool24.not.i65 = icmp eq i32 %and.i.i.i64, 0
  br i1 %tobool24.not.i65, label %if.then28.i67, label %do.body1.i66.dev_put.exit69_crit_edge, !prof !47

do.body1.i66.dev_put.exit69_crit_edge:            ; preds = %do.body1.i66
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_put.exit69

if.then28.i67:                                    ; preds = %do.body1.i66
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @warn_bogus_irq_restore() #10
  br label %dev_put.exit69

dev_put.exit69:                                   ; preds = %if.then28.i67, %do.body1.i66.dev_put.exit69_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %43) #10, !srcloc !50
  %57 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %i.0.lcssa, ptr %9, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %msg, i32 0, i32 6
  %58 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %len, align 4
  br label %cleanup

cleanup:                                          ; preds = %dev_put.exit69, %dev_put.exit, %if.end.cleanup_crit_edge, %batadv_netlink_get_ifindex.exit.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %59, %dev_put.exit69 ], [ -19, %dev_put.exit ], [ -22, %batadv_netlink_get_ifindex.exit.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ], [ -22, %land.lhs.true.i.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @batadv_tt_local_dump(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @batadv_tt_global_dump(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @batadv_orig_dump(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @batadv_hardif_neigh_dump(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @batadv_gw_dump(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @batadv_bla_claim_dump(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @batadv_bla_backbone_dump(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @batadv_dat_cache_dump(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @batadv_mcast_flags_dump(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @batadv_netlink_set_mesh(ptr nocapture noundef readnone %skb, ptr nocapture noundef readonly %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %user_ptr = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 7
  %0 = ptrtoint ptr %user_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %user_ptr, align 4
  %attrs = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %2 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %attrs, align 4
  %arrayidx1 = getelementptr ptr, ptr %3, i32 41
  %4 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx1, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %aggregated_ogms = getelementptr inbounds %struct.batadv_priv, ptr %1, i32 0, i32 3
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 4
  %6 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %add.ptr.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool4 = icmp ne i8 %7, 0
  %lnot.ext = zext i1 %tobool4 to i32
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %aggregated_ogms, i32 noundef 4) #10
  %8 = ptrtoint ptr %aggregated_ogms to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile i32 %lnot.ext, ptr %aggregated_ogms, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %9 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %attrs, align 4
  %arrayidx7 = getelementptr ptr, ptr %10, i32 42
  %11 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx7, align 4
  %tobool8.not = icmp eq ptr %12, null
  br i1 %tobool8.not, label %if.end.if.end13_crit_edge, label %if.then9

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.then9:                                         ; preds = %if.end
  %call.i = tail call ptr @batadv_softif_vlan_get(ptr noundef %1, i16 noundef zeroext 0) #10
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then9.if.end13_crit_edge, label %if.end.i.i

if.then9.if.end13_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.end.i.i:                                       ; preds = %if.then9
  %ap_isolation.i = getelementptr inbounds %struct.batadv_softif_vlan, ptr %call.i, i32 0, i32 2
  %add.ptr.i.i.i = getelementptr i8, ptr %12, i32 4
  %13 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %add.ptr.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool2.i = icmp ne i8 %14, 0
  %lnot.ext.i = zext i1 %tobool2.i to i32
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ap_isolation.i, i32 noundef 4) #10
  %15 = ptrtoint ptr %ap_isolation.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile i32 %lnot.ext.i, ptr %ap_isolation.i, align 4
  %refcount.i.i = getelementptr inbounds %struct.batadv_softif_vlan, ptr %call.i, i32 0, i32 5
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !43
  tail call void @llvm.prefetch.p0(ptr %refcount.i.i, i32 1, i32 3, i32 1) #10
  %16 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i, ptr %refcount.i.i, i32 1, ptr elementtype(i32) %refcount.i.i) #10, !srcloc !44
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.if.end13_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !42

if.end5.i.i.i.i.i.i.if.end13_crit_edge:           ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i.i, i32 noundef 3) #10
  br label %if.end13

if.then.i.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !45
  tail call void @batadv_softif_vlan_release(ptr noundef %refcount.i.i) #10, !callees !46
  br label %if.end13

if.end13:                                         ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.if.end13_crit_edge, %if.then9.if.end13_crit_edge, %if.end.if.end13_crit_edge
  %17 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %attrs, align 4
  %arrayidx15 = getelementptr ptr, ptr %18, i32 43
  %19 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx15, align 4
  %tobool16.not = icmp eq ptr %20, null
  br i1 %tobool16.not, label %if.end13.if.end21_crit_edge, label %if.then17

if.end13.if.end21_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

if.then17:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i335 = getelementptr i8, ptr %20, i32 4
  %21 = ptrtoint ptr %add.ptr.i.i335 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %add.ptr.i.i335, align 4
  %isolation_mark = getelementptr inbounds %struct.batadv_priv, ptr %1, i32 0, i32 15
  %23 = ptrtoint ptr %isolation_mark to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %isolation_mark, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then17, %if.end13.if.end21_crit_edge
  %24 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %attrs, align 4
  %arrayidx23 = getelementptr ptr, ptr %25, i32 44
  %26 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx23, align 4
  %tobool24.not = icmp eq ptr %27, null
  br i1 %tobool24.not, label %if.end21.if.end29_crit_edge, label %if.then25

if.end21.if.end29_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

if.then25:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i336 = getelementptr i8, ptr %27, i32 4
  %28 = ptrtoint ptr %add.ptr.i.i336 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %add.ptr.i.i336, align 4
  %isolation_mark_mask = getelementptr inbounds %struct.batadv_priv, ptr %1, i32 0, i32 16
  %30 = ptrtoint ptr %isolation_mark_mask to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %isolation_mark_mask, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.then25, %if.end21.if.end29_crit_edge
  %31 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %attrs, align 4
  %arrayidx31 = getelementptr ptr, ptr %32, i32 45
  %33 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx31, align 4
  %tobool32.not = icmp eq ptr %34, null
  br i1 %tobool32.not, label %if.end29.if.end42_crit_edge, label %if.then33

if.end29.if.end42_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end42

if.then33:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  %bonding = getelementptr inbounds %struct.batadv_priv, ptr %1, i32 0, i32 4
  %add.ptr.i.i337 = getelementptr i8, ptr %34, i32 4
  %35 = ptrtoint ptr %add.ptr.i.i337 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %add.ptr.i.i337, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool37 = icmp ne i8 %36, 0
  %lnot.ext41 = zext i1 %tobool37 to i32
  %call.i.i321 = tail call zeroext i1 @__kasan_check_write(ptr noundef %bonding, i32 noundef 4) #10
  %37 = ptrtoint ptr %bonding to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile i32 %lnot.ext41, ptr %bonding, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.then33, %if.end29.if.end42_crit_edge
  %38 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %attrs, align 4
  %arrayidx44 = getelementptr ptr, ptr %39, i32 46
  %40 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx44, align 4
  %tobool45.not = icmp eq ptr %41, null
  br i1 %tobool45.not, label %if.end42.if.end55_crit_edge, label %if.then46

if.end42.if.end55_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end55

if.then46:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  %bridge_loop_avoidance = getelementptr inbounds %struct.batadv_priv, ptr %1, i32 0, i32 8
  %add.ptr.i.i338 = getelementptr i8, ptr %41, i32 4
  %42 = ptrtoint ptr %add.ptr.i.i338 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %add.ptr.i.i338, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool50 = icmp ne i8 %43, 0
  %lnot.ext54 = zext i1 %tobool50 to i32
  %call.i.i322 = tail call zeroext i1 @__kasan_check_write(ptr noundef %bridge_loop_avoidance, i32 noundef 4) #10
  %44 = ptrtoint ptr %bridge_loop_avoidance to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile i32 %lnot.ext54, ptr %bridge_loop_avoidance, align 4
  %soft_iface = getelementptr inbounds %struct.batadv_priv, ptr %1, i32 0, i32 1
  %45 = ptrtoint ptr %soft_iface to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %soft_iface, align 4
  tail call void @batadv_bla_status_update(ptr noundef %46) #10
  br label %if.end55

if.end55:                                         ; preds = %if.then46, %if.end42.if.end55_crit_edge
  %47 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %attrs, align 4
  %arrayidx57 = getelementptr ptr, ptr %48, i32 47
  %49 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx57, align 4
  %tobool58.not = icmp eq ptr %50, null
  br i1 %tobool58.not, label %if.end55.if.end69_crit_edge, label %if.then59

if.end55.if.end69_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then59:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #12
  %distributed_arp_table = getelementptr inbounds %struct.batadv_priv, ptr %1, i32 0, i32 9
  %add.ptr.i.i339 = getelementptr i8, ptr %50, i32 4
  %51 = ptrtoint ptr %add.ptr.i.i339 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %add.ptr.i.i339, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool63 = icmp ne i8 %52, 0
  %lnot.ext67 = zext i1 %tobool63 to i32
  %call.i.i323 = tail call zeroext i1 @__kasan_check_write(ptr noundef %distributed_arp_table, i32 noundef 4) #10
  %53 = ptrtoint ptr %distributed_arp_table to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile i32 %lnot.ext67, ptr %distributed_arp_table, align 4
  %soft_iface68 = getelementptr inbounds %struct.batadv_priv, ptr %1, i32 0, i32 1
  %54 = ptrtoint ptr %soft_iface68 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %soft_iface68, align 4
  tail call void @batadv_dat_status_update(ptr noundef %55) #10
  br label %if.end69

if.end69:                                         ; preds = %if.then59, %if.end55.if.end69_crit_edge
  %56 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %attrs, align 4
  %arrayidx71 = getelementptr ptr, ptr %57, i32 48
  %58 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx71, align 4
  %tobool72.not = icmp eq ptr %59, null
  br i1 %tobool72.not, label %if.end69.if.end83_crit_edge, label %if.then73

if.end69.if.end83_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end83

if.then73:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #12
  %fragmentation = getelementptr inbounds %struct.batadv_priv, ptr %1, i32 0, i32 5
  %add.ptr.i.i340 = getelementptr i8, ptr %59, i32 4
  %60 = ptrtoint ptr %add.ptr.i.i340 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %add.ptr.i.i340, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool77 = icmp ne i8 %61, 0
  %lnot.ext81 = zext i1 %tobool77 to i32
  %call.i.i324 = tail call zeroext i1 @__kasan_check_write(ptr noundef %fragmentation, i32 noundef 4) #10
  %62 = ptrtoint ptr %fragmentation to i32
  call void @__asan_store4_noabort(i32 %62)
  store volatile i32 %lnot.ext81, ptr %fragmentation, align 4
  %soft_iface82 = getelementptr inbounds %struct.batadv_priv, ptr %1, i32 0, i32 1
  %63 = ptrtoint ptr %soft_iface82 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %soft_iface82, align 4
  tail call void @batadv_update_min_mtu(ptr noundef %64) #10
  br label %if.end83

if.end83:                                         ; preds = %if.then73, %if.end69.if.end83_crit_edge
  %65 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %attrs, align 4
  %arrayidx85 = getelementptr ptr, ptr %66, i32 49
  %67 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %arrayidx85, align 4
  %tobool86.not = icmp eq ptr %68, null
  br i1 %tobool86.not, label %if.end83.if.end91_crit_edge, label %if.then87

if.end83.if.end91_crit_edge:                      ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end91

if.then87:                                        ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #12
  %bandwidth_down = getelementptr inbounds %struct.batadv_priv, ptr %1, i32 0, i32 35, i32 6
  %add.ptr.i.i341 = getelementptr i8, ptr %68, i32 4
  %69 = ptrtoint ptr %add.ptr.i.i341 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %add.ptr.i.i341, align 4
  %call.i.i325 = tail call zeroext i1 @__kasan_check_write(ptr noundef %bandwidth_down, i32 noundef 4) #10
  %71 = ptrtoint ptr %bandwidth_down to i32
  call void @__asan_store4_noabort(i32 %71)
  store volatile i32 %70, ptr %bandwidth_down, align 4
  tail call void @batadv_gw_tvlv_container_update(ptr noundef %1) #10
  br label %if.end91

if.end91:                                         ; preds = %if.then87, %if.end83.if.end91_crit_edge
  %72 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %attrs, align 4
  %arrayidx93 = getelementptr ptr, ptr %73, i32 50
  %74 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %arrayidx93, align 4
  %tobool94.not = icmp eq ptr %75, null
  br i1 %tobool94.not, label %if.end91.if.end100_crit_edge, label %if.then95

if.end91.if.end100_crit_edge:                     ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end100

if.then95:                                        ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #12
  %bandwidth_up = getelementptr inbounds %struct.batadv_priv, ptr %1, i32 0, i32 35, i32 7
  %add.ptr.i.i342 = getelementptr i8, ptr %75, i32 4
  %76 = ptrtoint ptr %add.ptr.i.i342 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %add.ptr.i.i342, align 4
  %call.i.i326 = tail call zeroext i1 @__kasan_check_write(ptr noundef %bandwidth_up, i32 noundef 4) #10
  %78 = ptrtoint ptr %bandwidth_up to i32
  call void @__asan_store4_noabort(i32 %78)
  store volatile i32 %77, ptr %bandwidth_up, align 4
  tail call void @batadv_gw_tvlv_container_update(ptr noundef %1) #10
  br label %if.end100

if.end100:                                        ; preds = %if.then95, %if.end91.if.end100_crit_edge
  %79 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %attrs, align 4
  %arrayidx102 = getelementptr ptr, ptr %80, i32 51
  %81 = ptrtoint ptr %arrayidx102 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %arrayidx102, align 4
  %tobool103.not = icmp eq ptr %82, null
  br i1 %tobool103.not, label %if.end100.if.end113_crit_edge, label %if.then104

if.end100.if.end113_crit_edge:                    ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end113

if.then104:                                       ; preds = %if.end100
  %add.ptr.i.i343 = getelementptr i8, ptr %82, i32 4
  %83 = ptrtoint ptr %add.ptr.i.i343 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %add.ptr.i.i343, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %84)
  %cmp = icmp ult i8 %84, 3
  br i1 %cmp, label %if.then109, label %if.then104.if.end113_crit_edge

if.then104.if.end113_crit_edge:                   ; preds = %if.then104
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end113

if.then109:                                       ; preds = %if.then104
  call void @__sanitizer_cov_trace_pc() #12
  %conv = zext i8 %84 to i32
  tail call void @batadv_gw_reselect(ptr noundef %1) #10
  tail call void @batadv_gw_check_client_stop(ptr noundef %1) #10
  %mode = getelementptr inbounds %struct.batadv_priv, ptr %1, i32 0, i32 35, i32 4
  %call.i.i327 = tail call zeroext i1 @__kasan_check_write(ptr noundef %mode, i32 noundef 4) #10
  %85 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %85)
  store volatile i32 %conv, ptr %mode, align 4
  tail call void @batadv_gw_tvlv_container_update(ptr noundef %1) #10
  br label %if.end113

if.end113:                                        ; preds = %if.then109, %if.then104.if.end113_crit_edge, %if.end100.if.end113_crit_edge
  %86 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %attrs, align 4
  %arrayidx115 = getelementptr ptr, ptr %87, i32 52
  %88 = ptrtoint ptr %arrayidx115 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %arrayidx115, align 4
  %tobool116.not = icmp eq ptr %89, null
  br i1 %tobool116.not, label %if.end113.if.end141_crit_edge, label %land.lhs.true

if.end113.if.end141_crit_edge:                    ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end141

land.lhs.true:                                    ; preds = %if.end113
  %algo_ops = getelementptr inbounds %struct.batadv_priv, ptr %1, i32 0, i32 30
  %90 = ptrtoint ptr %algo_ops to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %algo_ops, align 4
  %get_best_gw_node = getelementptr inbounds %struct.batadv_algo_ops, ptr %91, i32 0, i32 5, i32 2
  %92 = ptrtoint ptr %get_best_gw_node to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %get_best_gw_node, align 4
  %tobool118.not = icmp eq ptr %93, null
  br i1 %tobool118.not, label %land.lhs.true.if.end141_crit_edge, label %land.lhs.true119

land.lhs.true.if.end141_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end141

land.lhs.true119:                                 ; preds = %land.lhs.true
  %is_eligible = getelementptr inbounds %struct.batadv_algo_ops, ptr %91, i32 0, i32 5, i32 3
  %94 = ptrtoint ptr %is_eligible to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %is_eligible, align 4
  %tobool122.not = icmp eq ptr %95, null
  br i1 %tobool122.not, label %land.lhs.true119.if.end141_crit_edge, label %if.then123

land.lhs.true119.if.end141_crit_edge:             ; preds = %land.lhs.true119
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end141

if.then123:                                       ; preds = %land.lhs.true119
  %add.ptr.i.i344 = getelementptr i8, ptr %89, i32 4
  %96 = ptrtoint ptr %add.ptr.i.i344 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %add.ptr.i.i344, align 4
  %store_sel_class = getelementptr inbounds %struct.batadv_algo_ops, ptr %91, i32 0, i32 5, i32 1
  %98 = ptrtoint ptr %store_sel_class to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %store_sel_class, align 4
  %tobool129.not = icmp eq ptr %99, null
  %spec.select = select i1 %tobool129.not, i32 255, i32 -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %cmp132.not = icmp eq i32 %97, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %97, i32 %spec.select)
  %cmp135.not = icmp ugt i32 %97, %spec.select
  %or.cond = select i1 %cmp132.not, i1 true, i1 %cmp135.not
  br i1 %or.cond, label %if.then123.if.end141_crit_edge, label %if.then137

if.then123.if.end141_crit_edge:                   ; preds = %if.then123
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end141

if.then137:                                       ; preds = %if.then123
  call void @__sanitizer_cov_trace_pc() #12
  %sel_class139 = getelementptr inbounds %struct.batadv_priv, ptr %1, i32 0, i32 35, i32 5
  %call.i.i328 = tail call zeroext i1 @__kasan_check_write(ptr noundef %sel_class139, i32 noundef 4) #10
  %100 = ptrtoint ptr %sel_class139 to i32
  call void @__asan_store4_noabort(i32 %100)
  store volatile i32 %97, ptr %sel_class139, align 4
  tail call void @batadv_gw_reselect(ptr noundef %1) #10
  br label %if.end141

if.end141:                                        ; preds = %if.then137, %if.then123.if.end141_crit_edge, %land.lhs.true119.if.end141_crit_edge, %land.lhs.true.if.end141_crit_edge, %if.end113.if.end141_crit_edge
  %101 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %attrs, align 4
  %arrayidx143 = getelementptr ptr, ptr %102, i32 53
  %103 = ptrtoint ptr %arrayidx143 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %arrayidx143, align 4
  %tobool144.not = icmp eq ptr %104, null
  br i1 %tobool144.not, label %if.end141.if.end150_crit_edge, label %if.then145

if.end141.if.end150_crit_edge:                    ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end150

if.then145:                                       ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #12
  %hop_penalty = getelementptr inbounds %struct.batadv_priv, ptr %1, i32 0, i32 13
  %add.ptr.i.i345 = getelementptr i8, ptr %104, i32 4
  %105 = ptrtoint ptr %add.ptr.i.i345 to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %add.ptr.i.i345, align 1
  %conv149 = zext i8 %106 to i32
  %call.i.i329 = tail call zeroext i1 @__kasan_check_write(ptr noundef %hop_penalty, i32 noundef 4) #10
  %107 = ptrtoint ptr %hop_penalty to i32
  call void @__asan_store4_noabort(i32 %107)
  store volatile i32 %conv149, ptr %hop_penalty, align 4
  br label %if.end150

if.end150:                                        ; preds = %if.then145, %if.end141.if.end150_crit_edge
  %108 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %attrs, align 4
  %arrayidx152 = getelementptr ptr, ptr %109, i32 54
  %110 = ptrtoint ptr %arrayidx152 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %arrayidx152, align 4
  %tobool153.not = icmp eq ptr %111, null
  br i1 %tobool153.not, label %if.end150.if.end158_crit_edge, label %if.then154

if.end150.if.end158_crit_edge:                    ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end158

if.then154:                                       ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #12
  %log_level = getelementptr inbounds %struct.batadv_priv, ptr %1, i32 0, i32 14
  %add.ptr.i.i346 = getelementptr i8, ptr %111, i32 4
  %112 = ptrtoint ptr %add.ptr.i.i346 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %add.ptr.i.i346, align 4
  %and = and i32 %113, 255
  %call.i.i330 = tail call zeroext i1 @__kasan_check_write(ptr noundef %log_level, i32 noundef 4) #10
  %114 = ptrtoint ptr %log_level to i32
  call void @__asan_store4_noabort(i32 %114)
  store volatile i32 %and, ptr %log_level, align 4
  br label %if.end158

if.end158:                                        ; preds = %if.then154, %if.end150.if.end158_crit_edge
  %115 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %attrs, align 4
  %arrayidx160 = getelementptr ptr, ptr %116, i32 55
  %117 = ptrtoint ptr %arrayidx160 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %arrayidx160, align 4
  %tobool161.not = icmp eq ptr %118, null
  br i1 %tobool161.not, label %if.end158.if.end169_crit_edge, label %if.then162

if.end158.if.end169_crit_edge:                    ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end169

if.then162:                                       ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #12
  %multicast_mode = getelementptr inbounds %struct.batadv_priv, ptr %1, i32 0, i32 10
  %add.ptr.i.i347 = getelementptr i8, ptr %118, i32 4
  %119 = ptrtoint ptr %add.ptr.i.i347 to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %add.ptr.i.i347, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %120)
  %tobool166.not = icmp eq i8 %120, 0
  %lnot.ext168 = zext i1 %tobool166.not to i32
  %call.i.i331 = tail call zeroext i1 @__kasan_check_write(ptr noundef %multicast_mode, i32 noundef 4) #10
  %121 = ptrtoint ptr %multicast_mode to i32
  call void @__asan_store4_noabort(i32 %121)
  store volatile i32 %lnot.ext168, ptr %multicast_mode, align 4
  br label %if.end169

if.end169:                                        ; preds = %if.then162, %if.end158.if.end169_crit_edge
  %122 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %attrs, align 4
  %arrayidx171 = getelementptr ptr, ptr %123, i32 60
  %124 = ptrtoint ptr %arrayidx171 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %arrayidx171, align 4
  %tobool172.not = icmp eq ptr %125, null
  br i1 %tobool172.not, label %if.end169.if.end177_crit_edge, label %if.then173

if.end169.if.end177_crit_edge:                    ; preds = %if.end169
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end177

if.then173:                                       ; preds = %if.end169
  call void @__sanitizer_cov_trace_pc() #12
  %multicast_fanout = getelementptr inbounds %struct.batadv_priv, ptr %1, i32 0, i32 11
  %add.ptr.i.i348 = getelementptr i8, ptr %125, i32 4
  %126 = ptrtoint ptr %add.ptr.i.i348 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %add.ptr.i.i348, align 4
  %call.i.i332 = tail call zeroext i1 @__kasan_check_write(ptr noundef %multicast_fanout, i32 noundef 4) #10
  %128 = ptrtoint ptr %multicast_fanout to i32
  call void @__asan_store4_noabort(i32 %128)
  store volatile i32 %127, ptr %multicast_fanout, align 4
  br label %if.end177

if.end177:                                        ; preds = %if.then173, %if.end169.if.end177_crit_edge
  %129 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %attrs, align 4
  %arrayidx179 = getelementptr ptr, ptr %130, i32 56
  %131 = ptrtoint ptr %arrayidx179 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %arrayidx179, align 4
  %tobool180.not = icmp eq ptr %132, null
  br i1 %tobool180.not, label %if.end177.if.end191_crit_edge, label %if.then181

if.end177.if.end191_crit_edge:                    ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end191

if.then181:                                       ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #12
  %network_coding = getelementptr inbounds %struct.batadv_priv, ptr %1, i32 0, i32 40
  %add.ptr.i.i349 = getelementptr i8, ptr %132, i32 4
  %133 = ptrtoint ptr %add.ptr.i.i349 to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %add.ptr.i.i349, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %134)
  %tobool185 = icmp ne i8 %134, 0
  %lnot.ext189 = zext i1 %tobool185 to i32
  %call.i.i333 = tail call zeroext i1 @__kasan_check_write(ptr noundef %network_coding, i32 noundef 4) #10
  %135 = ptrtoint ptr %network_coding to i32
  call void @__asan_store4_noabort(i32 %135)
  store volatile i32 %lnot.ext189, ptr %network_coding, align 4
  %soft_iface190 = getelementptr inbounds %struct.batadv_priv, ptr %1, i32 0, i32 1
  %136 = ptrtoint ptr %soft_iface190 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %soft_iface190, align 4
  tail call void @batadv_nc_status_update(ptr noundef %137) #10
  br label %if.end191

if.end191:                                        ; preds = %if.then181, %if.end177.if.end191_crit_edge
  %138 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %attrs, align 4
  %arrayidx193 = getelementptr ptr, ptr %139, i32 57
  %140 = ptrtoint ptr %arrayidx193 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %arrayidx193, align 4
  %tobool194.not = icmp eq ptr %141, null
  br i1 %tobool194.not, label %if.end191.if.end209_crit_edge, label %if.then195

if.end191.if.end209_crit_edge:                    ; preds = %if.end191
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end209

if.then195:                                       ; preds = %if.end191
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i350 = getelementptr i8, ptr %141, i32 4
  %142 = ptrtoint ptr %add.ptr.i.i350 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %add.ptr.i.i350, align 4
  %144 = tail call i32 @llvm.umin.i32(i32 %143, i32 2147483647)
  %145 = tail call i32 @llvm.umax.i32(i32 %144, i32 40)
  %orig_interval208 = getelementptr inbounds %struct.batadv_priv, ptr %1, i32 0, i32 12
  %call.i.i334 = tail call zeroext i1 @__kasan_check_write(ptr noundef %orig_interval208, i32 noundef 4) #10
  %146 = ptrtoint ptr %orig_interval208 to i32
  call void @__asan_store4_noabort(i32 %146)
  store volatile i32 %145, ptr %orig_interval208, align 4
  br label %if.end209

if.end209:                                        ; preds = %if.then195, %if.end191.if.end209_crit_edge
  %call210 = tail call i32 @batadv_netlink_notify_mesh(ptr noundef %1)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @batadv_netlink_set_hardif(ptr nocapture noundef readnone %skb, ptr nocapture noundef readonly %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %user_ptr = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 7
  %arrayidx = getelementptr %struct.genl_info, ptr %info, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %2 = ptrtoint ptr %user_ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %user_ptr, align 4
  %attrs = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %4 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %attrs, align 4
  %arrayidx3 = getelementptr ptr, ptr %5, i32 53
  %6 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx3, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %hop_penalty = getelementptr inbounds %struct.batadv_hard_iface, ptr %1, i32 0, i32 9
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 4
  %8 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %add.ptr.i.i, align 1
  %conv = zext i8 %9 to i32
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %hop_penalty, i32 noundef 4) #10
  %10 = ptrtoint ptr %hop_penalty to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile i32 %conv, ptr %hop_penalty, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %11 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %attrs, align 4
  %arrayidx7 = getelementptr ptr, ptr %12, i32 58
  %13 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx7, align 4
  %tobool8.not = icmp eq ptr %14, null
  br i1 %tobool8.not, label %if.end.if.end13_crit_edge, label %if.then9

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %bat_v = getelementptr inbounds %struct.batadv_hard_iface, ptr %1, i32 0, i32 11
  %add.ptr.i.i40 = getelementptr i8, ptr %14, i32 4
  %15 = ptrtoint ptr %add.ptr.i.i40 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %add.ptr.i.i40, align 4
  %call.i.i38 = tail call zeroext i1 @__kasan_check_write(ptr noundef %bat_v, i32 noundef 4) #10
  %17 = ptrtoint ptr %bat_v to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile i32 %16, ptr %bat_v, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then9, %if.end.if.end13_crit_edge
  %18 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %attrs, align 4
  %arrayidx15 = getelementptr ptr, ptr %19, i32 59
  %20 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx15, align 4
  %tobool16.not = icmp eq ptr %21, null
  br i1 %tobool16.not, label %if.end13.if.end22_crit_edge, label %if.then17

if.end13.if.end22_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

if.then17:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  %throughput_override = getelementptr inbounds %struct.batadv_hard_iface, ptr %1, i32 0, i32 11, i32 7
  %add.ptr.i.i41 = getelementptr i8, ptr %21, i32 4
  %22 = ptrtoint ptr %add.ptr.i.i41 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %add.ptr.i.i41, align 4
  %call.i.i39 = tail call zeroext i1 @__kasan_check_write(ptr noundef %throughput_override, i32 noundef 4) #10
  %24 = ptrtoint ptr %throughput_override to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile i32 %23, ptr %throughput_override, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then17, %if.end13.if.end22_crit_edge
  %call23 = tail call i32 @batadv_netlink_notify_hardif(ptr noundef %3, ptr noundef %1)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @batadv_netlink_get_vlan(ptr nocapture noundef readnone %skb, ptr nocapture noundef readonly %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %user_ptr = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 7
  %arrayidx = getelementptr %struct.genl_info, ptr %info, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %2 = ptrtoint ptr %user_ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %user_ptr, align 4
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef 3840, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #10
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %snd_portid = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 1
  %4 = ptrtoint ptr %snd_portid to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %snd_portid, align 4
  %6 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %info, align 4
  %call3 = tail call fastcc i32 @batadv_netlink_vlan_fill(ptr noundef nonnull %call.i.i, ptr noundef %3, ptr noundef %1, i32 noundef 17, i32 noundef %5, i32 noundef %7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i.i, i32 noundef 0) #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %_net.i.i = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 6
  %8 = ptrtoint ptr %_net.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %_net.i.i, align 4
  %10 = ptrtoint ptr %snd_portid to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %snd_portid, align 4
  %genl_sock.i.i = getelementptr inbounds %struct.net, ptr %9, i32 0, i32 21
  %12 = ptrtoint ptr %genl_sock.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %genl_sock.i.i, align 4
  %call.i.i.i = tail call i32 @netlink_unicast(ptr noundef %13, ptr noundef nonnull %call.i.i, i32 noundef %11, i32 noundef 64) #10
  %14 = tail call i32 @llvm.smin.i32(i32 %call.i.i.i, i32 0) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.then4 ], [ %14, %if.end5 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @batadv_netlink_set_vlan(ptr nocapture noundef readnone %skb, ptr nocapture noundef readonly %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %user_ptr = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 7
  %arrayidx = getelementptr %struct.genl_info, ptr %info, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %2 = ptrtoint ptr %user_ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %user_ptr, align 4
  %attrs = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %4 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %attrs, align 4
  %arrayidx3 = getelementptr ptr, ptr %5, i32 42
  %6 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx3, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %ap_isolation = getelementptr inbounds %struct.batadv_softif_vlan, ptr %1, i32 0, i32 2
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 4
  %8 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %add.ptr.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool6 = icmp ne i8 %9, 0
  %lnot.ext = zext i1 %tobool6 to i32
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ap_isolation, i32 noundef 4) #10
  %10 = ptrtoint ptr %ap_isolation to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile i32 %lnot.ext, ptr %ap_isolation, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call8 = tail call i32 @batadv_netlink_notify_vlan(ptr noundef %3, ptr noundef %1)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netlink_unicast(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @batadv_tp_start(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @batadv_tp_stop(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @batadv_bla_status_update(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @batadv_dat_status_update(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @batadv_update_min_mtu(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @batadv_gw_tvlv_container_update(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @batadv_gw_reselect(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @batadv_gw_check_client_stop(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @batadv_nc_status_update(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind readonly }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nobuiltin nounwind }
attributes #14 = { cold nounwind }
attributes #15 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !12, !13, !14, !16, !17, !18, !20, !21, !23, !24, !26, !28, !30}
!llvm.named.register.sp = !{!32}
!llvm.module.flags = !{!33, !34, !35, !36, !37, !38, !39, !40}
!llvm.ident = !{!41}

!0 = !{ptr @batadv_netlink_family, !1, !"batadv_netlink_family", i1 false, i1 false}
!1 = !{!"../net/batman-adv/netlink.c", i32 1484, i32 20}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../net/batman-adv/netlink.c", i32 1509, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @batadv_netlink_register._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @batadv_netlink_register._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../net/batman-adv/netlink.c", i32 242, i32 47}
!10 = distinct !{null, !11, !"__warned", i1 false, i1 false}
!11 = !{!"../net/batman-adv/hard-interface.h", i32 110, i32 15}
!12 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!14 = distinct !{null, !15, !"__warned", i1 false, i1 false}
!15 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!16 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!18 = distinct !{null, !19, !"__warned", i1 false, i1 false}
!19 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!20 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!21 = distinct !{null, !22, !"__already_done", i1 false, i1 false}
!22 = !{!"../include/net/genetlink.h", i32 308, i32 6}
!23 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../include/net/netlink.h", i32 991, i32 3}
!26 = !{ptr @batadv_netlink_policy, !27, !"batadv_netlink_policy", i1 false, i1 false}
!27 = !{!"../net/batman-adv/netlink.c", i32 94, i32 32}
!28 = !{ptr @batadv_netlink_ops, !29, !"batadv_netlink_ops", i1 false, i1 false}
!29 = !{!"../net/batman-adv/netlink.c", i32 1360, i32 36}
!30 = !{ptr @batadv_netlink_mcgrps, !31, !"batadv_netlink_mcgrps", i1 false, i1 false}
!31 = !{!"../net/batman-adv/netlink.c", i32 89, i32 42}
!32 = !{!"sp"}
!33 = !{i32 1, !"wchar_size", i32 2}
!34 = !{i32 1, !"min_enum_size", i32 4}
!35 = !{i32 8, !"branch-target-enforcement", i32 0}
!36 = !{i32 8, !"sign-return-address", i32 0}
!37 = !{i32 8, !"sign-return-address-all", i32 0}
!38 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!39 = !{i32 7, !"uwtable", i32 1}
!40 = !{i32 7, !"frame-pointer", i32 2}
!41 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!42 = !{!"branch_weights", i32 2000, i32 1}
!43 = !{i64 2148261555}
!44 = !{i64 2148176019, i64 2148176051, i64 2148176080, i64 2148176114, i64 2148176145, i64 2148176168}
!45 = !{i64 2150592566}
!46 = !{ptr @batadv_hardif_release, ptr @batadv_softif_vlan_release}
!47 = !{!"branch_weights", i32 1, i32 2000}
!48 = !{i64 625351, i64 625412}
!49 = !{i64 628083}
!50 = !{i64 628368}
!51 = !{i64 2149718019}
!52 = !{i64 546858, i64 546882, i64 546903, i64 546920, i64 546937}
!53 = !{i64 2149718285}
!54 = !{!"auto-init"}
