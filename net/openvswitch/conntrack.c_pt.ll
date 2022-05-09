; ModuleID = '/llk/IR_all_yes/net/openvswitch/conntrack.c_pt.bc'
source_filename = "../net/openvswitch/conntrack.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.nla_policy = type { i8, i8, i16, %union.anon.28 }
%union.anon.28 = type { i32 }
%struct.genl_small_ops = type { ptr, ptr, i8, i8, i8, i8 }
%struct.genl_multicast_group = type { [16 x i8], i8 }
%struct.genl_family = type { i32, i32, [16 x i8], i32, i32, i32, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nf_conntrack_zone = type { i16, i8, i8 }
%struct.atomic_t = type { i32 }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.19, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.19 = type { %struct.anon.20 }
%struct.anon.20 = type { ptr, i32, i32, i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.105, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.ovs_ct_len_tbl = type { i32, i32 }
%struct.sk_buff = type { %union.anon, %union.anon.150, %union.anon.151, [48 x i8], %union.anon.152, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.154, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.150 = type { ptr }
%union.anon.151 = type { i64 }
%union.anon.152 = type { %struct.anon.153 }
%struct.anon.153 = type { i32, ptr }
%union.anon.154 = type { %struct.anon.155 }
%struct.anon.155 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.156, i32, i32, i32, i16, i16, %union.anon.158, i32, %union.anon.159, %union.anon.160, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.156 = type { i32 }
%union.anon.158 = type { i32 }
%union.anon.159 = type { i32 }
%union.anon.160 = type { i16 }
%struct.nf_conn = type { %struct.nf_conntrack, %struct.spinlock, i32, %struct.nf_conntrack_zone, [2 x %struct.nf_conntrack_tuple_hash], i32, i16, %struct.possible_net_t, %struct.hlist_node, %struct.anon.167, ptr, i32, i32, ptr, %union.nf_conntrack_proto }
%struct.nf_conntrack = type { %struct.refcount_struct }
%struct.nf_conntrack_tuple_hash = type { %struct.hlist_nulls_node, %struct.nf_conntrack_tuple }
%struct.hlist_nulls_node = type { ptr, ptr }
%struct.nf_conntrack_tuple = type { %struct.nf_conntrack_man, %struct.anon.112 }
%struct.nf_conntrack_man = type { %union.nf_inet_addr, %union.nf_conntrack_man_proto, i16 }
%union.nf_inet_addr = type { [4 x i32] }
%union.nf_conntrack_man_proto = type { i16 }
%struct.anon.112 = type { %union.nf_inet_addr, %union.anon.113, i8, i8 }
%union.anon.113 = type { i16 }
%struct.possible_net_t = type { ptr }
%struct.anon.167 = type {}
%union.nf_conntrack_proto = type { %struct.nf_ct_dccp, [48 x i8] }
%struct.nf_ct_dccp = type { [2 x i8], i8, i8, i8, i64 }
%struct.ovs_key_ct_tuple_ipv4 = type { i32, i32, i16, i16, i8 }
%struct.ovs_key_ct_tuple_ipv6 = type { [4 x i32], [4 x i32], i16, i16, i8 }
%struct.sw_flow_key = type { [255 x i8], i8, %struct.ip_tunnel_key, %struct.anon.175, i8, i8, i32, i32, %struct.anon.176, i8, i8, %union.anon.177, i16, %struct.anon.179, %union.anon.180, %struct.anon.192 }
%struct.ip_tunnel_key = type { i64, %union.anon.172, i16, i8, i8, i32, i16, i16 }
%union.anon.172 = type { %struct.anon.174 }
%struct.anon.174 = type { %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.27 }
%union.anon.27 = type { [4 x i32] }
%struct.anon.175 = type <{ i32, i32, i16 }>
%struct.anon.176 = type { [6 x i8], [6 x i8], %struct.vlan_head, %struct.vlan_head, i16 }
%struct.vlan_head = type { i16, i16 }
%union.anon.177 = type { %struct.anon.178 }
%struct.anon.178 = type { i8, i8, i8, i8 }
%struct.anon.179 = type { i16, i16, i16 }
%union.anon.180 = type { %struct.anon.186 }
%struct.anon.186 = type { %struct.anon.187, i32, %union.anon.188 }
%struct.anon.187 = type { %struct.in6_addr, %struct.in6_addr }
%union.anon.188 = type { %struct.anon.189 }
%struct.anon.189 = type { %struct.in6_addr, %struct.in6_addr }
%struct.anon.192 = type { %struct.anon.193, i32, %struct.ovs_key_ct_labels }
%struct.anon.193 = type { i16, i16 }
%struct.ovs_key_ct_labels = type { %union.anon.194 }
%union.anon.194 = type { [4 x i32] }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.ovs_conntrack_info = type { ptr, %struct.nf_conntrack_zone, ptr, i8, i16, i32, %struct.md_mark, %struct.md_labels, [32 x i8], ptr, %struct.nf_nat_range2 }
%struct.md_mark = type { i32, i32 }
%struct.md_labels = type { %struct.ovs_key_ct_labels, %struct.ovs_key_ct_labels }
%struct.nf_nat_range2 = type { i32, %union.nf_inet_addr, %union.nf_inet_addr, %union.nf_conntrack_man_proto, %union.nf_conntrack_man_proto, %union.nf_conntrack_man_proto }
%struct.nf_conntrack_expect = type { %struct.hlist_node, %struct.hlist_node, %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple_mask, ptr, ptr, ptr, %struct.timer_list, %struct.refcount_struct, i32, i32, %union.nf_inet_addr, %union.nf_conntrack_man_proto, i32, %struct.callback_head }
%struct.nf_conntrack_tuple_mask = type { %struct.anon.120 }
%struct.anon.120 = type { %union.nf_inet_addr, %union.nf_conntrack_man_proto }
%struct.callback_head = type { ptr, ptr }
%struct.ovs_net = type { %struct.list_head, %struct.work_struct, %struct.delayed_work, ptr, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.ovs_ct_limit_info = type { i32, ptr, ptr }
%struct.ovs_ct_limit = type { %struct.hlist_node, %struct.callback_head, i16, i32 }
%struct.nf_conntrack_ecache = type { i32, i16, i16, i16, i8, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.nlattr = type { i16, i16 }
%struct.nf_conntrack_helper = type { %struct.hlist_node, [16 x i8], %struct.refcount_struct, ptr, ptr, %struct.nf_conntrack_tuple, ptr, ptr, ptr, ptr, i32, i32, i32, i16, [16 x i8] }
%struct.anon.116 = type { i8, i8 }
%struct.nf_hook_state = type { i8, i8, ptr, ptr, ptr, ptr, ptr }
%struct.udphdr = type { i16, i16, i16, i16 }
%struct.tcphdr = type { i16, i16, i32, i32, i16, i16, i16, i16 }
%struct.sctphdr = type { i16, i16, i32, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.1, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.149, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.1 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%union.anon.149 = type { ptr }
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
%struct.genl_info = type { i32, i32, ptr, ptr, ptr, ptr, %struct.possible_net_t, [2 x ptr], ptr }
%struct.sock_common = type { %union.anon.123, %union.anon.125, %union.anon.126, i16, i8, i8, i32, %union.anon.128, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.131, [0 x i32], %union.anon.132, i16, i16, %union.anon.133, %struct.refcount_struct, [0 x i32], %union.anon.134 }
%union.anon.123 = type { i64 }
%union.anon.125 = type { i32 }
%union.anon.126 = type { i32 }
%union.anon.128 = type { %struct.hlist_node }
%struct.atomic64_t = type { i64 }
%union.anon.131 = type { i32 }
%union.anon.132 = type { %struct.hlist_node }
%union.anon.133 = type { i32 }
%union.anon.134 = type { i32 }
%struct.ovs_zone_limit = type { i32, i32, i32 }

@ovs_net_id = external dso_local local_unnamed_addr global i32, align 4
@ovs_ct_copy_action._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1687, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016netlink: ct family unspecified\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ovs_ct_copy_action\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"net/openvswitch/conntrack.c\00", [36 x i8] zeroinitializer }, align 32
@ovs_ct_copy_action._entry_ptr = internal global ptr @ovs_ct_copy_action._entry, section ".printk_index", align 4
@ovs_ct_copy_action._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 1704, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\016netlink: Failed to allocate conntrack template\0A\00", [46 x i8] zeroinitializer }, align 32
@ovs_ct_copy_action._entry_ptr.5 = internal global ptr @ovs_ct_copy_action._entry.3, section ".printk_index", align 4
@ovs_ct_copy_action._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.6, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@ovs_ct_copy_action._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.1, ptr @.str.2, i32 1712, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\016Failed to associated timeout policy `%s'\0A\00", [52 x i8] zeroinitializer }, align 32
@ovs_ct_copy_action._entry_ptr.9 = internal global ptr @ovs_ct_copy_action._entry.7, section ".printk_index", align 4
@ovs_ct_copy_action.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.10 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@ct_limit_policy = internal constant { [2 x %struct.nla_policy], [16 x i8] } { [2 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon.28 zeroinitializer }], [16 x i8] zeroinitializer }, align 32
@ct_limit_genl_ops = internal constant { [3 x %struct.genl_small_ops], [60 x i8] } { [3 x %struct.genl_small_ops] [%struct.genl_small_ops { ptr @ovs_ct_limit_cmd_set, ptr null, i8 1, i8 0, i8 1, i8 3 }, %struct.genl_small_ops { ptr @ovs_ct_limit_cmd_del, ptr null, i8 2, i8 0, i8 1, i8 3 }, %struct.genl_small_ops { ptr @ovs_ct_limit_cmd_get, ptr null, i8 3, i8 0, i8 0, i8 3 }], [60 x i8] zeroinitializer }, align 32
@ovs_ct_limit_multicast_group = internal constant { %struct.genl_multicast_group, [47 x i8] } { %struct.genl_multicast_group { [16 x i8] c"ovs_ct_limit\00\00\00\00", i8 0 }, [47 x i8] zeroinitializer }, align 32
@dp_ct_limit_genl_family = dso_local global %struct.genl_family { i32 0, i32 4, [16 x i8] c"ovs_ct_limit\00\00\00\00", i32 1, i32 1, i32 0, i8 -64, i8 0, i8 3, i8 1, ptr @ct_limit_policy, ptr null, ptr null, ptr null, ptr @ct_limit_genl_ops, ptr @ovs_ct_limit_multicast_group, ptr null }, section ".data..ro_after_init", align 4
@ovs_ct_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 2297, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016netlink: Failed to set connlabel length\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ovs_ct_init\00", [20 x i8] zeroinitializer }, align 32
@ovs_ct_init._entry_ptr = internal global ptr @ovs_ct_init._entry, section ".printk_index", align 4
@nf_ct_zone_dflt = external dso_local constant %struct.nf_conntrack_zone, align 2
@ovs_ct_commit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.2, i32 1217, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\014openvswitch: zone: %u exceeds conntrack limit\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ovs_ct_commit\00", [18 x i8] zeroinitializer }, align 32
@ovs_ct_commit._entry_ptr = internal global ptr @ovs_ct_commit._entry, section ".printk_index", align 4
@skb_nfct_cached.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ovs_ct_find_existing.__UNIQUE_ID_ddebug604 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.16, ptr @.str.2, ptr @.str.17, i8 0, i8 -101, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"openvswitch\00", [20 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ovs_ct_find_existing\00", [43 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"ovs_ct_find_existing: Can't get tuple\0A\00", [57 x i8] zeroinitializer }, align 32
@ovs_ct_find_existing.__UNIQUE_ID_ddebug605 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.16, ptr @.str.2, ptr @.str.18, i8 0, i8 -99, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"ovs_ct_find_existing: Inversion failed!\0A\00", [55 x i8] zeroinitializer }, align 32
@ovs_ct_helper.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ovs_ct_helper.__UNIQUE_ID_ddebug603 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.19, ptr @.str.2, ptr @.str.20, i8 0, i8 117, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ovs_ct_helper\00", [18 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"proto header not found\0A\00", [40 x i8] zeroinitializer }, align 32
@ovs_ct_helper.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.21 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"helper invoked on non-IP family!\00", [63 x i8] zeroinitializer }, align 32
@init_net = external dso_local global %struct.net, align 128
@ovs_ct_limit_enabled = internal global { { { %struct.atomic_t, { ptr } } }, [24 x i8] } zeroinitializer, align 32
@ct_limit_get.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.23 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@net_generic.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.24 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/net/netns/generic.h\00", [36 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.25 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.27 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@parse_ct._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.2, i32 1548, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\016netlink: Unknown conntrack attr (type=%d, max=%d)\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"parse_ct\00", [23 x i8] zeroinitializer }, align 32
@parse_ct._entry_ptr = internal global ptr @parse_ct._entry, section ".printk_index", align 4
@ovs_ct_attr_lens = internal constant { [10 x %struct.ovs_ct_len_tbl], [48 x i8] } { [10 x %struct.ovs_ct_len_tbl] [%struct.ovs_ct_len_tbl zeroinitializer, %struct.ovs_ct_len_tbl zeroinitializer, %struct.ovs_ct_len_tbl { i32 2, i32 2 }, %struct.ovs_ct_len_tbl { i32 8, i32 8 }, %struct.ovs_ct_len_tbl { i32 32, i32 32 }, %struct.ovs_ct_len_tbl { i32 16, i32 1 }, %struct.ovs_ct_len_tbl { i32 2147483647, i32 0 }, %struct.ovs_ct_len_tbl zeroinitializer, %struct.ovs_ct_len_tbl { i32 4, i32 4 }, %struct.ovs_ct_len_tbl { i32 32, i32 1 }], [48 x i8] zeroinitializer }, align 32
@parse_ct._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.29, ptr @.str.2, i32 1557, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [88 x i8], [40 x i8] } { [88 x i8] c"\016netlink: Conntrack attr type has unexpected length (type=%d, length=%d, expected=%d)\0A\00", [40 x i8] zeroinitializer }, align 32
@parse_ct._entry_ptr.32 = internal global ptr @parse_ct._entry.30, section ".printk_index", align 4
@parse_ct._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.29, ptr @.str.2, i32 1578, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016netlink: ct_mark mask cannot be 0\0A\00", [59 x i8] zeroinitializer }, align 32
@parse_ct._entry_ptr.35 = internal global ptr @parse_ct._entry.33, section ".printk_index", align 4
@parse_ct._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.29, ptr @.str.2, i32 1590, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016netlink: ct_labels mask cannot be 0\0A\00", [57 x i8] zeroinitializer }, align 32
@parse_ct._entry_ptr.38 = internal global ptr @parse_ct._entry.36, section ".printk_index", align 4
@parse_ct._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.29, ptr @.str.2, i32 1600, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016netlink: Invalid conntrack helper\0A\00", [59 x i8] zeroinitializer }, align 32
@parse_ct._entry_ptr.41 = internal global ptr @parse_ct._entry.39, section ".printk_index", align 4
@parse_ct._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.29, ptr @.str.2, i32 1621, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016netlink: Invalid conntrack timeout\0A\00", [58 x i8] zeroinitializer }, align 32
@parse_ct._entry_ptr.44 = internal global ptr @parse_ct._entry.42, section ".printk_index", align 4
@parse_ct._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.29, ptr @.str.2, i32 1629, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016netlink: Unknown conntrack attr (%d)\0A\00", [56 x i8] zeroinitializer }, align 32
@parse_ct._entry_ptr.47 = internal global ptr @parse_ct._entry.45, section ".printk_index", align 4
@parse_ct._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.29, ptr @.str.2, i32 1637, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\016netlink: Setting conntrack mark requires 'commit' flag.\0A\00", [37 x i8] zeroinitializer }, align 32
@parse_ct._entry_ptr.50 = internal global ptr @parse_ct._entry.48, section ".printk_index", align 4
@parse_ct._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.29, ptr @.str.2, i32 1644, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\016netlink: Setting conntrack labels requires 'commit' flag.\0A\00", [35 x i8] zeroinitializer }, align 32
@parse_ct._entry_ptr.53 = internal global ptr @parse_ct._entry.51, section ".printk_index", align 4
@parse_ct._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.29, ptr @.str.2, i32 1649, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\016netlink: Conntrack attr has %d unknown bytes\0A\00", [48 x i8] zeroinitializer }, align 32
@parse_ct._entry_ptr.56 = internal global ptr @parse_ct._entry.54, section ".printk_index", align 4
@parse_nat.ovs_nat_attr_lens = internal constant { [10 x [2 x i32]], [48 x i8] } { [10 x [2 x i32]] [[2 x i32] zeroinitializer, [2 x i32] zeroinitializer, [2 x i32] zeroinitializer, [2 x i32] [i32 4, i32 16], [2 x i32] [i32 4, i32 16], [2 x i32] [i32 2, i32 2], [2 x i32] [i32 2, i32 2], [2 x i32] zeroinitializer, [2 x i32] zeroinitializer, [2 x i32] zeroinitializer], [48 x i8] zeroinitializer }, align 32
@parse_nat._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.2, i32 1415, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\016netlink: Unknown NAT attribute (type=%d, max=%d)\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"parse_nat\00", [22 x i8] zeroinitializer }, align 32
@parse_nat._entry_ptr = internal global ptr @parse_nat._entry, section ".printk_index", align 4
@parse_nat._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.58, ptr @.str.2, i32 1422, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\016netlink: NAT attribute type %d has unexpected length (%d != %d)\0A\00", [61 x i8] zeroinitializer }, align 32
@parse_nat._entry_ptr.61 = internal global ptr @parse_nat._entry.59, section ".printk_index", align 4
@parse_nat._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.58, ptr @.str.2, i32 1430, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\016netlink: Only one type of NAT may be specified\0A\00", [46 x i8] zeroinitializer }, align 32
@parse_nat._entry_ptr.64 = internal global ptr @parse_nat._entry.62, section ".printk_index", align 4
@parse_nat._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.58, ptr @.str.2, i32 1475, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016netlink: Unknown nat attribute (%d)\0A\00", [57 x i8] zeroinitializer }, align 32
@parse_nat._entry_ptr.67 = internal global ptr @parse_nat._entry.65, section ".printk_index", align 4
@parse_nat._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.58, ptr @.str.2, i32 1481, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016netlink: NAT attribute has %d unknown bytes\0A\00", [49 x i8] zeroinitializer }, align 32
@parse_nat._entry_ptr.70 = internal global ptr @parse_nat._entry.68, section ".printk_index", align 4
@parse_nat._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.58, ptr @.str.2, i32 1489, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [87 x i8], [41 x i8] } { [87 x i8] c"\016netlink: NAT flags may be given only when NAT range (SRC or DST) is also specified.\0A\00", [41 x i8] zeroinitializer }, align 32
@parse_nat._entry_ptr.73 = internal global ptr @parse_nat._entry.71, section ".printk_index", align 4
@parse_nat._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.58, ptr @.str.2, i32 1496, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [88 x i8], [40 x i8] } { [88 x i8] c"\016netlink: NAT attributes may be specified only when CT COMMIT flag is also specified.\0A\00", [40 x i8] zeroinitializer }, align 32
@parse_nat._entry_ptr.76 = internal global ptr @parse_nat._entry.74, section ".printk_index", align 4
@ovs_ct_add_helper._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.78, ptr @.str.2, i32 1360, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016netlink: Unknown helper \22%s\22\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ovs_ct_add_helper\00", [46 x i8] zeroinitializer }, align 32
@ovs_ct_add_helper._entry_ptr = internal global ptr @ovs_ct_add_helper._entry, section ".printk_index", align 4
@ovs_ct_add_helper._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.78, ptr @.str.2, i32 1377, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\016netlink: Failed to load \22%s\22 NAT helper, error: %d\0A\00", [42 x i8] zeroinitializer }, align 32
@ovs_ct_add_helper._entry_ptr.81 = internal global ptr @ovs_ct_add_helper._entry.79, section ".printk_index", align 4
@ovs_ct_limit_set_zone_limit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.83, ptr @.str.2, i32 1979, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016netlink: zone id is out of range\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ovs_ct_limit_set_zone_limit\00", [36 x i8] zeroinitializer }, align 32
@ovs_ct_limit_set_zone_limit._entry_ptr = internal global ptr @ovs_ct_limit_set_zone_limit._entry, section ".printk_index", align 4
@ovs_ct_limit_set_zone_limit._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.83, ptr @.str.2, i32 2000, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\016netlink: set zone limit has %d unknown bytes\0A\00", [48 x i8] zeroinitializer }, align 32
@ovs_ct_limit_set_zone_limit._entry_ptr.86 = internal global ptr @ovs_ct_limit_set_zone_limit._entry.84, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@ct_limit_set.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ovs_ct_limit_del_zone_limit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.87, ptr @.str.2, i32 2023, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ovs_ct_limit_del_zone_limit\00", [36 x i8] zeroinitializer }, align 32
@ovs_ct_limit_del_zone_limit._entry_ptr = internal global ptr @ovs_ct_limit_del_zone_limit._entry, section ".printk_index", align 4
@ovs_ct_limit_del_zone_limit._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.87, ptr @.str.2, i32 2035, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\016netlink: del zone limit has %d unknown bytes\0A\00", [48 x i8] zeroinitializer }, align 32
@ovs_ct_limit_del_zone_limit._entry_ptr.90 = internal global ptr @ovs_ct_limit_del_zone_limit._entry.88, section ".printk_index", align 4
@ovs_ct_limit_get_zone_limit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.91, ptr @.str.2, i32 2090, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ovs_ct_limit_get_zone_limit\00", [36 x i8] zeroinitializer }, align 32
@ovs_ct_limit_get_zone_limit._entry_ptr = internal global ptr @ovs_ct_limit_get_zone_limit._entry, section ".printk_index", align 4
@ovs_ct_limit_get_zone_limit._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.91, ptr @.str.2, i32 2107, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\016netlink: get zone limit has %d unknown bytes\0A\00", [48 x i8] zeroinitializer }, align 32
@ovs_ct_limit_get_zone_limit._entry_ptr.94 = internal global ptr @ovs_ct_limit_get_zone_limit._entry.92, section ".printk_index", align 4
@ovs_ct_limit_get_all_zone_limit.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ovs_ct_limit_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.96, ptr @.str.2, i32 1904, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013openvswitch: failed to init nf_conncount %d\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ovs_ct_limit_init\00", [46 x i8] zeroinitializer }, align 32
@ovs_ct_limit_init._entry_ptr = internal global ptr @ovs_ct_limit_init._entry, section ".printk_index", align 4
@ovs_ct_limit_exit.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.97 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@__sancov_gen_cov_switch_values.98 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@__sancov_gen_cov_switch_values.99 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@__sancov_gen_cov_switch_values.100 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967181]
@__sancov_gen_cov_switch_values.101 = internal global [6 x i64] [i64 4, i64 32, i64 22, i64 23, i64 24, i64 25]
@__sancov_gen_cov_switch_values.102 = internal global [11 x i64] [i64 9, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9]
@__sancov_gen_cov_switch_values.103 = internal global [11 x i64] [i64 9, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9]
@__sancov_gen_cov_switch_values.104 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.105 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@__sancov_gen_cov_switch_values.106 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.107 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@__sancov_gen_cov_switch_values.108 = internal global [5 x i64] [i64 3, i64 8, i64 6, i64 17, i64 132]
@__sancov_gen_cov_switch_values.109 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@__sancov_gen_cov_switch_values.110 = internal global [5 x i64] [i64 3, i64 8, i64 6, i64 17, i64 132]
@__sancov_gen_cov_switch_values.111 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.112 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.113 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 1687, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 1704, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 1711, i32 4 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 1714, i32 28 }
@___asan_gen_.147 = private unnamed_addr constant [16 x i8] c"ct_limit_policy\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 98, i32 32 }
@___asan_gen_.150 = private unnamed_addr constant [18 x i8] c"ct_limit_genl_ops\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 2250, i32 36 }
@___asan_gen_.153 = private unnamed_addr constant [29 x i8] c"ovs_ct_limit_multicast_group\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 2270, i32 42 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 2297, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 1215, i32 5 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 621, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 630, i32 4 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 471, i32 4 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 478, i32 3 }
@___asan_gen_.195 = private unnamed_addr constant [21 x i8] c"ovs_ct_limit_enabled\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 82, i32 8 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 1159, i32 2 }
@___asan_gen_.202 = private unnamed_addr constant [31 x i8] c"../include/net/netns/generic.h\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 45, i32 7 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 695, i32 2 }
@___asan_gen_.211 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 723, i32 2 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 1546, i32 4 }
@___asan_gen_.222 = private unnamed_addr constant [17 x i8] c"ovs_ct_attr_lens\00", align 1
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 1513, i32 36 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 1555, i32 4 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 1578, i32 5 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 1590, i32 5 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 1600, i32 5 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 1621, i32 5 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 1628, i32 4 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 1636, i32 3 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 1643, i32 3 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 1649, i32 3 }
@___asan_gen_.279 = private unnamed_addr constant [18 x i8] c"ovs_nat_attr_lens\00", align 1
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 1398, i32 20 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 1414, i32 4 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 1420, i32 4 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 1430, i32 5 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 1475, i32 4 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 1481, i32 3 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 1487, i32 4 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 1494, i32 3 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 1360, i32 3 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 1376, i32 4 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 1979, i32 4 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 2000, i32 3 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 2023, i32 4 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 2035, i32 3 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 2090, i32 4 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 2107, i32 3 }
@___asan_gen_.381 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.387 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.388 = private constant [31 x i8] c"../net/openvswitch/conntrack.c\00", align 1
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 1904, i32 3 }
@llvm.compiler.used = appending global [123 x ptr] [ptr @ovs_ct_add_helper._entry, ptr @ovs_ct_add_helper._entry.79, ptr @ovs_ct_add_helper._entry_ptr, ptr @ovs_ct_add_helper._entry_ptr.81, ptr @ovs_ct_commit._entry, ptr @ovs_ct_commit._entry_ptr, ptr @ovs_ct_copy_action._entry, ptr @ovs_ct_copy_action._entry.3, ptr @ovs_ct_copy_action._entry.7, ptr @ovs_ct_copy_action._entry_ptr, ptr @ovs_ct_copy_action._entry_ptr.5, ptr @ovs_ct_copy_action._entry_ptr.9, ptr @ovs_ct_init._entry, ptr @ovs_ct_init._entry_ptr, ptr @ovs_ct_limit_del_zone_limit._entry, ptr @ovs_ct_limit_del_zone_limit._entry.88, ptr @ovs_ct_limit_del_zone_limit._entry_ptr, ptr @ovs_ct_limit_del_zone_limit._entry_ptr.90, ptr @ovs_ct_limit_get_zone_limit._entry, ptr @ovs_ct_limit_get_zone_limit._entry.92, ptr @ovs_ct_limit_get_zone_limit._entry_ptr, ptr @ovs_ct_limit_get_zone_limit._entry_ptr.94, ptr @ovs_ct_limit_init._entry, ptr @ovs_ct_limit_init._entry_ptr, ptr @ovs_ct_limit_set_zone_limit._entry, ptr @ovs_ct_limit_set_zone_limit._entry.84, ptr @ovs_ct_limit_set_zone_limit._entry_ptr, ptr @ovs_ct_limit_set_zone_limit._entry_ptr.86, ptr @parse_ct._entry, ptr @parse_ct._entry.30, ptr @parse_ct._entry.33, ptr @parse_ct._entry.36, ptr @parse_ct._entry.39, ptr @parse_ct._entry.42, ptr @parse_ct._entry.45, ptr @parse_ct._entry.48, ptr @parse_ct._entry.51, ptr @parse_ct._entry.54, ptr @parse_ct._entry_ptr, ptr @parse_ct._entry_ptr.32, ptr @parse_ct._entry_ptr.35, ptr @parse_ct._entry_ptr.38, ptr @parse_ct._entry_ptr.41, ptr @parse_ct._entry_ptr.44, ptr @parse_ct._entry_ptr.47, ptr @parse_ct._entry_ptr.50, ptr @parse_ct._entry_ptr.53, ptr @parse_ct._entry_ptr.56, ptr @parse_nat._entry, ptr @parse_nat._entry.59, ptr @parse_nat._entry.62, ptr @parse_nat._entry.65, ptr @parse_nat._entry.68, ptr @parse_nat._entry.71, ptr @parse_nat._entry.74, ptr @parse_nat._entry_ptr, ptr @parse_nat._entry_ptr.61, ptr @parse_nat._entry_ptr.64, ptr @parse_nat._entry_ptr.67, ptr @parse_nat._entry_ptr.70, ptr @parse_nat._entry_ptr.73, ptr @parse_nat._entry_ptr.76, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @ovs_ct_copy_action._rs, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @ct_limit_policy, ptr @ct_limit_genl_ops, ptr @ovs_ct_limit_multicast_group, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @ovs_ct_limit_enabled, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @ovs_ct_attr_lens, ptr @.str.31, ptr @.str.34, ptr @.str.37, ptr @.str.40, ptr @.str.43, ptr @.str.46, ptr @.str.49, ptr @.str.52, ptr @.str.55, ptr @parse_nat.ovs_nat_attr_lens, ptr @.str.57, ptr @.str.58, ptr @.str.60, ptr @.str.63, ptr @.str.66, ptr @.str.69, ptr @.str.72, ptr @.str.75, ptr @.str.77, ptr @.str.78, ptr @.str.80, ptr @.str.82, ptr @.str.83, ptr @.str.85, ptr @.str.87, ptr @.str.89, ptr @.str.91, ptr @.str.93, ptr @.str.95, ptr @.str.96], section "llvm.metadata"
@0 = internal global [92 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovs_ct_copy_action._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovs_ct_copy_action._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovs_ct_copy_action._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovs_ct_copy_action._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ct_limit_policy to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ct_limit_genl_ops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovs_ct_limit_multicast_group to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovs_ct_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovs_ct_commit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovs_ct_limit_enabled to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_ct._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovs_ct_attr_lens to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_ct._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_ct._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_ct._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_ct._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_ct._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_ct._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_ct._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_ct._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_ct._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_nat.ovs_nat_attr_lens to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_nat._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_nat._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_nat._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_nat._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_nat._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_nat._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 87, i32 128, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_nat._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovs_ct_add_helper._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovs_ct_add_helper._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovs_ct_limit_set_zone_limit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovs_ct_limit_set_zone_limit._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovs_ct_limit_del_zone_limit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovs_ct_limit_del_zone_limit._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovs_ct_limit_get_zone_limit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovs_ct_limit_get_zone_limit._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovs_ct_limit_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @ovs_ct_fill_key(ptr nocapture noundef readonly %skb, ptr noundef %key, i1 noundef zeroext %post_ct) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %_nfct.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 5
  %0 = ptrtoint ptr %_nfct.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %_nfct.i.i.i, align 8
  %and1.i.i = and i32 %1, -8
  %2 = inttoptr i32 %and1.i.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %if.else36.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  %and.i.i = and i32 %1, 7
  %ctinfo.off.i.i = add nsw i32 %and.i.i, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %ctinfo.off.i.i)
  %switch.i.i = icmp ult i32 %ctinfo.off.i.i, 2
  %spec.select.i.i = select i1 %switch.i.i, i8 40, i8 32
  %3 = zext i32 %and.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and.i.i, label %if.then.i.ovs_ct_get_state.exit.i_crit_edge [
    i32 0, label %if.then.i.sw.bb2.i.i_crit_edge
    i32 3, label %if.then.i.sw.bb2.i.i_crit_edge1
    i32 1, label %if.then.i.sw.bb6.i.i_crit_edge
    i32 4, label %if.then.i.sw.bb6.i.i_crit_edge2
    i32 2, label %sw.bb10.i.i
  ]

if.then.i.sw.bb6.i.i_crit_edge2:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb6.i.i

if.then.i.sw.bb6.i.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb6.i.i

if.then.i.sw.bb2.i.i_crit_edge1:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb2.i.i

if.then.i.sw.bb2.i.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb2.i.i

if.then.i.ovs_ct_get_state.exit.i_crit_edge:      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ovs_ct_get_state.exit.i

sw.bb2.i.i:                                       ; preds = %if.then.i.sw.bb2.i.i_crit_edge, %if.then.i.sw.bb2.i.i_crit_edge1
  %4 = or i8 %spec.select.i.i, 2
  br label %ovs_ct_get_state.exit.i

sw.bb6.i.i:                                       ; preds = %if.then.i.sw.bb6.i.i_crit_edge, %if.then.i.sw.bb6.i.i_crit_edge2
  %5 = or i8 %spec.select.i.i, 4
  br label %ovs_ct_get_state.exit.i

sw.bb10.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %6 = or i8 %spec.select.i.i, 1
  br label %ovs_ct_get_state.exit.i

ovs_ct_get_state.exit.i:                          ; preds = %sw.bb10.i.i, %sw.bb6.i.i, %sw.bb2.i.i, %if.then.i.ovs_ct_get_state.exit.i_crit_edge
  %ct_state.1.i.i = phi i8 [ %spec.select.i.i, %if.then.i.ovs_ct_get_state.exit.i_crit_edge ], [ %6, %sw.bb10.i.i ], [ %5, %sw.bb6.i.i ], [ %4, %sw.bb2.i.i ]
  %status.i.i = getelementptr inbounds %struct.nf_conn, ptr %2, i32 0, i32 5
  %7 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %status.i.i, align 8
  %9 = trunc i32 %8 to i8
  %10 = lshr i8 %9, 3
  %11 = and i8 %10, 1
  %12 = xor i8 %11, 1
  %spec.select.i = or i8 %12, %ct_state.1.i.i
  %master.i = getelementptr inbounds %struct.nf_conn, ptr %2, i32 0, i32 10
  %13 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %master.i, align 4
  %tobool7.not.i = icmp eq ptr %14, null
  %15 = or i8 %spec.select.i, 4
  %state.1.i = select i1 %tobool7.not.i, i8 %spec.select.i, i8 %15
  %16 = shl i8 %9, 2
  %.pn.i = and i8 %16, -64
  %state.3.i = or i8 %state.1.i, %.pn.i
  %zone.i.i = getelementptr inbounds %struct.nf_conn, ptr %2, i32 0, i32 3
  br label %ovs_ct_update_key.exit

if.else36.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %spec.select = select i1 %post_ct, i8 48, i8 0
  br label %ovs_ct_update_key.exit

ovs_ct_update_key.exit:                           ; preds = %if.else36.i, %ovs_ct_get_state.exit.i
  %zone.0.i = phi ptr [ %zone.i.i, %ovs_ct_get_state.exit.i ], [ @nf_ct_zone_dflt, %if.else36.i ]
  %state.4.i = phi i8 [ %state.3.i, %ovs_ct_get_state.exit.i ], [ %spec.select, %if.else36.i ]
  tail call fastcc void @__ovs_ct_update_key(ptr noundef %key, i8 noundef zeroext %state.4.i, ptr noundef %zone.0.i, ptr noundef %2) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ovs_ct_put_key(ptr nocapture noundef readonly %swkey, ptr noundef %output, ptr noundef %skb) local_unnamed_addr #1 align 64 {
entry:
  %tmp.i85 = alloca i32, align 4
  %tmp.i83 = alloca i16, align 2
  %tmp.i = alloca i32, align 4
  %orig = alloca %struct.ovs_key_ct_tuple_ipv4, align 4
  %orig35 = alloca %struct.ovs_key_ct_tuple_ipv6, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %ct_state = getelementptr inbounds %struct.sw_flow_key, ptr %output, i32 0, i32 9
  %0 = ptrtoint ptr %ct_state to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ct_state, align 2
  %conv = zext i8 %1 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #13
  %2 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %conv, ptr %tmp.i, align 4
  %call.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 22, i32 noundef 4, ptr noundef nonnull %tmp.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end:                                           ; preds = %entry
  %ct_zone = getelementptr inbounds %struct.sw_flow_key, ptr %output, i32 0, i32 12
  %3 = ptrtoint ptr %ct_zone to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %ct_zone, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i83) #13
  %5 = ptrtoint ptr %tmp.i83 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %4, ptr %tmp.i83, align 2
  %call.i84 = call i32 @nla_put(ptr noundef %skb, i32 noundef 23, i32 noundef 2, ptr noundef nonnull %tmp.i83) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i83) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i84)
  %tobool2.not = icmp eq i32 %call.i84, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end4:                                          ; preds = %if.end
  %ct = getelementptr inbounds %struct.sw_flow_key, ptr %output, i32 0, i32 15
  %mark = getelementptr inbounds %struct.sw_flow_key, ptr %output, i32 0, i32 15, i32 1
  %6 = ptrtoint ptr %mark to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mark, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i85) #13
  %8 = ptrtoint ptr %tmp.i85 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %tmp.i85, align 4
  %call.i86 = call i32 @nla_put(ptr noundef %skb, i32 noundef 24, i32 noundef 4, ptr noundef nonnull %tmp.i85) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i85) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i86)
  %tobool6.not = icmp eq i32 %call.i86, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.return_crit_edge

if.end4.return_crit_edge:                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end8:                                          ; preds = %if.end4
  %labels = getelementptr inbounds %struct.sw_flow_key, ptr %output, i32 0, i32 15, i32 2
  %call10 = call i32 @nla_put(ptr noundef %skb, i32 noundef 25, i32 noundef 16, ptr noundef %labels) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.end8.return_crit_edge

if.end8.return_crit_edge:                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end13:                                         ; preds = %if.end8
  %ct_orig_proto = getelementptr inbounds %struct.sw_flow_key, ptr %swkey, i32 0, i32 10
  %9 = ptrtoint ptr %ct_orig_proto to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %ct_orig_proto, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool14.not = icmp eq i8 %10, 0
  br i1 %tobool14.not, label %if.end13.if.end60_crit_edge, label %if.then15

if.end13.if.end60_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end60

if.then15:                                        ; preds = %if.end13
  %type = getelementptr inbounds %struct.sw_flow_key, ptr %swkey, i32 0, i32 8, i32 4
  %11 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %type, align 4
  %13 = zext i16 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.97)
  switch i16 %12, label %if.then15.if.end60_crit_edge [
    i16 2048, label %if.then18
    i16 -31011, label %if.then34
  ]

if.then15.if.end60_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end60

if.then18:                                        ; preds = %if.then15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %orig) #13
  %14 = getelementptr inbounds i8, ptr %orig, i32 12
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %14, align 4
  %16 = getelementptr inbounds %struct.sw_flow_key, ptr %output, i32 0, i32 14, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 8
  %19 = ptrtoint ptr %orig to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %orig, align 4
  %dst = getelementptr inbounds %struct.sw_flow_key, ptr %output, i32 0, i32 14, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3
  %20 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dst, align 4
  %ipv4_dst = getelementptr inbounds %struct.ovs_key_ct_tuple_ipv4, ptr %orig, i32 0, i32 1
  %22 = ptrtoint ptr %ipv4_dst to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %ipv4_dst, align 4
  %23 = ptrtoint ptr %ct to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %ct, align 4
  %src_port = getelementptr inbounds %struct.ovs_key_ct_tuple_ipv4, ptr %orig, i32 0, i32 2
  %25 = ptrtoint ptr %src_port to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %24, ptr %src_port, align 4
  %dst23 = getelementptr inbounds %struct.sw_flow_key, ptr %output, i32 0, i32 15, i32 0, i32 1
  %26 = ptrtoint ptr %dst23 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %dst23, align 2
  %dst_port = getelementptr inbounds %struct.ovs_key_ct_tuple_ipv4, ptr %orig, i32 0, i32 3
  %28 = ptrtoint ptr %dst_port to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %27, ptr %dst_port, align 2
  %ct_orig_proto24 = getelementptr inbounds %struct.sw_flow_key, ptr %output, i32 0, i32 10
  %29 = ptrtoint ptr %ct_orig_proto24 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %ct_orig_proto24, align 1
  %ipv4_proto = getelementptr inbounds %struct.ovs_key_ct_tuple_ipv4, ptr %orig, i32 0, i32 4
  %31 = ptrtoint ptr %ipv4_proto to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %ipv4_proto, align 4
  %call25 = call i32 @nla_put(ptr noundef %skb, i32 noundef 26, i32 noundef 16, ptr noundef nonnull %orig) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %orig) #13
  br i1 %tobool26.not, label %if.then18.if.end60_crit_edge, label %if.then18.return_crit_edge

if.then18.return_crit_edge:                       ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.then18.if.end60_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end60

if.then34:                                        ; preds = %if.then15
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %orig35) #13
  %32 = getelementptr inbounds %struct.sw_flow_key, ptr %output, i32 0, i32 14, i32 0, i32 2
  %33 = call ptr @memcpy(ptr %orig35, ptr %32, i32 16)
  %ipv6_dst = getelementptr inbounds %struct.ovs_key_ct_tuple_ipv6, ptr %orig35, i32 0, i32 1
  %dst39 = getelementptr inbounds %struct.sw_flow_key, ptr %output, i32 0, i32 14, i32 0, i32 2, i32 0, i32 1
  %34 = getelementptr inbounds %struct.ovs_key_ct_tuple_ipv6, ptr %orig35, i32 0, i32 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %34, align 4
  %36 = call ptr @memcpy(ptr %ipv6_dst, ptr %dst39, i32 16)
  %37 = ptrtoint ptr %ct to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %ct, align 4
  %src_port45 = getelementptr inbounds %struct.ovs_key_ct_tuple_ipv6, ptr %orig35, i32 0, i32 2
  %39 = ptrtoint ptr %src_port45 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %38, ptr %src_port45, align 4
  %dst48 = getelementptr inbounds %struct.sw_flow_key, ptr %output, i32 0, i32 15, i32 0, i32 1
  %40 = ptrtoint ptr %dst48 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %dst48, align 2
  %dst_port49 = getelementptr inbounds %struct.ovs_key_ct_tuple_ipv6, ptr %orig35, i32 0, i32 3
  %42 = ptrtoint ptr %dst_port49 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %41, ptr %dst_port49, align 2
  %ct_orig_proto50 = getelementptr inbounds %struct.sw_flow_key, ptr %output, i32 0, i32 10
  %43 = ptrtoint ptr %ct_orig_proto50 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %ct_orig_proto50, align 1
  %ipv6_proto = getelementptr inbounds %struct.ovs_key_ct_tuple_ipv6, ptr %orig35, i32 0, i32 4
  %45 = ptrtoint ptr %ipv6_proto to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %44, ptr %ipv6_proto, align 4
  %call51 = call i32 @nla_put(ptr noundef %skb, i32 noundef 27, i32 noundef 40, ptr noundef nonnull %orig35) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %orig35) #13
  br i1 %tobool52.not, label %if.then34.if.end60_crit_edge, label %if.then34.return_crit_edge

if.then34.return_crit_edge:                       ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.then34.if.end60_crit_edge:                     ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end60

if.end60:                                         ; preds = %if.then34.if.end60_crit_edge, %if.then18.if.end60_crit_edge, %if.then15.if.end60_crit_edge, %if.end13.if.end60_crit_edge
  br label %return

return:                                           ; preds = %if.end60, %if.then34.return_crit_edge, %if.then18.return_crit_edge, %if.end8.return_crit_edge, %if.end4.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.2 = phi i32 [ -90, %if.then18.return_crit_edge ], [ 0, %if.end60 ], [ -90, %if.then34.return_crit_edge ], [ -90, %entry.return_crit_edge ], [ -90, %if.end.return_crit_edge ], [ -90, %if.end4.return_crit_edge ], [ -90, %if.end8.return_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ovs_ct_execute(ptr noundef %net, ptr noundef %skb, ptr noundef %key, ptr noundef %info) local_unnamed_addr #1 align 64 {
entry:
  %tuple.i.i = alloca %struct.nf_conntrack_tuple, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
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
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %4 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %5 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %call1 = tail call ptr @skb_pull_rcsum(ptr noundef %skb, i32 noundef %sub.ptr.sub.i) #13
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %6 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %protocol.i, align 8
  %8 = zext i16 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.98)
  switch i16 %7, label %sw.default.i [
    i16 2048, label %sw.bb.i
    i16 -31011, label %sw.bb2.i
  ]

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %9 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %head.i.i, align 8
  %11 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i.i = zext i16 %12 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %10, i32 %conv.i.i.i
  %tot_len.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i, i32 0, i32 2
  %13 = ptrtoint ptr %tot_len.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %tot_len.i, align 2
  %conv1.i = zext i16 %14 to i32
  br label %sw.epilog.i

sw.bb2.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %15 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %head.i.i, align 8
  %17 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i15.i = zext i16 %18 to i32
  %add.ptr.i.i16.i = getelementptr i8, ptr %16, i32 %conv.i.i15.i
  %payload_len.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i16.i, i32 0, i32 2
  %19 = ptrtoint ptr %payload_len.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %payload_len.i, align 4
  %conv4.i = zext i16 %20 to i32
  %add.i = add nuw nsw i32 %conv4.i, 40
  br label %sw.epilog.i

sw.default.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %len5.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %21 = ptrtoint ptr %len5.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %len5.i, align 4
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.default.i, %sw.bb2.i, %sw.bb.i
  %len.0.i = phi i32 [ %22, %sw.default.i ], [ %add.i, %sw.bb2.i ], [ %conv1.i, %sw.bb.i ]
  %len1.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %23 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %len1.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %len.0.i)
  %cmp.not.i.i = icmp ugt i32 %24, %len.0.i
  br i1 %cmp.not.i.i, label %pskb_trim_rcsum.exit.i, label %sw.epilog.i.if.end_crit_edge, !prof !200

sw.epilog.i.if.end_crit_edge:                     ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

pskb_trim_rcsum.exit.i:                           ; preds = %sw.epilog.i
  %call.i.i = tail call i32 @pskb_trim_rcsum_slow(ptr noundef %skb, i32 noundef %len.0.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %pskb_trim_rcsum.exit.i.if.end_crit_edge, label %ovs_skb_network_trim.exit

pskb_trim_rcsum.exit.i.if.end_crit_edge:          ; preds = %pskb_trim_rcsum.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

ovs_skb_network_trim.exit:                        ; preds = %pskb_trim_rcsum.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #13
  br label %cleanup

if.end:                                           ; preds = %pskb_trim_rcsum.exit.i.if.end_crit_edge, %sw.epilog.i.if.end_crit_edge
  %frag = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 11, i32 0, i32 3
  %25 = ptrtoint ptr %frag to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %frag, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %cmp.not = icmp eq i8 %26, 0
  br i1 %cmp.not, label %if.end.if.end9_crit_edge, label %if.then4

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end9

if.then4:                                         ; preds = %if.end
  %zone = getelementptr inbounds %struct.ovs_conntrack_info, ptr %info, i32 0, i32 1
  %27 = ptrtoint ptr %zone to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %zone, align 4
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %29 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %ovs_cb.sroa.0.0.copyload.i = load ptr, ptr %cb.i, align 8
  %ovs_cb.sroa.5.0.arraydecay.sroa_idx.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %ovs_cb.sroa.8.0.arraydecay.sroa_idx.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 6
  %30 = ptrtoint ptr %ovs_cb.sroa.8.0.arraydecay.sroa_idx.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %ovs_cb.sroa.8.0.copyload.i = load i16, ptr %ovs_cb.sroa.8.0.arraydecay.sroa_idx.i, align 2
  %ovs_cb.sroa.9.0.arraydecay.sroa_idx.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 8
  %31 = ptrtoint ptr %ovs_cb.sroa.9.0.arraydecay.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %ovs_cb.sroa.9.0.copyload.i = load i32, ptr %ovs_cb.sroa.9.0.arraydecay.sroa_idx.i, align 8
  %type.i = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 8, i32 4
  %32 = ptrtoint ptr %type.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %type.i, align 4
  %34 = zext i16 %33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.99)
  switch i16 %33, label %if.else35.i [
    i16 2048, label %if.then.i43
    i16 -31011, label %if.then13.i
  ]

if.then.i43:                                      ; preds = %if.then4
  %conv2.i = zext i16 %28 to i32
  %add.i41 = add nuw nsw i32 %conv2.i, 2
  %35 = call ptr @memset(ptr %cb.i, i32 0, i32 24)
  %call.i = tail call i32 @ip_defrag(ptr noundef %net, ptr noundef %skb, i32 noundef %add.i41) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i42 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i42, label %cleanup.thread.i, label %if.then.i43.cleanup_crit_edge

if.then.i43.cleanup_crit_edge:                    ; preds = %if.then.i43
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup.thread.i:                                 ; preds = %if.then.i43
  call void @__sanitizer_cov_trace_pc() #15
  %frag_max_size.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 22
  br label %handle_fragments.exit.thread58

if.then13.i:                                      ; preds = %if.then4
  %conv15.i = zext i16 %28 to i32
  %add16.i = add nuw nsw i32 %conv15.i, 1
  %36 = call ptr @memset(ptr %cb.i, i32 0, i32 24)
  %call19.i = tail call i32 @nf_ct_frag6_gather(ptr noundef %net, ptr noundef %skb, i32 noundef %add16.i) #13
  %37 = zext i32 %call19.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.100)
  switch i32 %call19.i, label %handle_fragments.exit [
    i32 0, label %cleanup32.i
    i32 -115, label %if.then13.i.cleanup_crit_edge
  ]

if.then13.i.cleanup_crit_edge:                    ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup32.i:                                      ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #15
  %38 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %head.i.i, align 8
  %40 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i.i46 = zext i16 %41 to i32
  %add.ptr.i.i.i47 = getelementptr i8, ptr %39, i32 %conv.i.i.i46
  %nexthdr.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i.i47, i32 0, i32 3
  %42 = ptrtoint ptr %nexthdr.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %nexthdr.i, align 2
  %44 = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 11
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %43, ptr %44, align 4
  %frag_max_size30.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 20
  br label %handle_fragments.exit.thread58

if.else35.i:                                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #13
  br label %cleanup

handle_fragments.exit.thread58:                   ; preds = %cleanup32.i, %cleanup.thread.i
  %ovs_cb.sroa.5.2.in.i = phi ptr [ %frag_max_size30.i, %cleanup32.i ], [ %frag_max_size.i, %cleanup.thread.i ]
  %46 = ptrtoint ptr %ovs_cb.sroa.5.2.in.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %ovs_cb.sroa.5.2.i = load i16, ptr %ovs_cb.sroa.5.2.in.i, align 2
  %call38.i = tail call i32 @ovs_flow_key_update_l3l4(ptr noundef %skb, ptr noundef %key) #13
  %47 = ptrtoint ptr %frag to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 0, ptr %frag, align 1
  %hash.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 8
  %48 = ptrtoint ptr %hash.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %hash.i.i, align 4
  %sw_hash.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %49 = ptrtoint ptr %sw_hash.i.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %bf.load.i.i = load i16, ptr %sw_hash.i.i, align 8
  %bf.clear2.i.i = and i16 %bf.load.i.i, -4289
  %bf.set.i = or i16 %bf.clear2.i.i, 4096
  store i16 %bf.set.i, ptr %sw_hash.i.i, align 8
  %50 = ptrtoint ptr %cb.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %ovs_cb.sroa.0.0.copyload.i, ptr %cb.i, align 8
  %51 = ptrtoint ptr %ovs_cb.sroa.5.0.arraydecay.sroa_idx.i to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %ovs_cb.sroa.5.2.i, ptr %ovs_cb.sroa.5.0.arraydecay.sroa_idx.i, align 4
  %52 = ptrtoint ptr %ovs_cb.sroa.8.0.arraydecay.sroa_idx.i to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %ovs_cb.sroa.8.0.copyload.i, ptr %ovs_cb.sroa.8.0.arraydecay.sroa_idx.i, align 2
  %53 = ptrtoint ptr %ovs_cb.sroa.9.0.arraydecay.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %ovs_cb.sroa.9.0.copyload.i, ptr %ovs_cb.sroa.9.0.arraydecay.sroa_idx.i, align 8
  br label %if.end9

handle_fragments.exit:                            ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #13
  br label %cleanup

if.end9:                                          ; preds = %handle_fragments.exit.thread58, %if.end.if.end9_crit_edge
  %commit = getelementptr inbounds %struct.ovs_conntrack_info, ptr %info, i32 0, i32 3
  %54 = ptrtoint ptr %commit to i32
  call void @__asan_load1_noabort(i32 %54)
  %bf.load = load i8, ptr %commit, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool10.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool10.not, label %if.else, label %if.then11

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  %call12 = tail call fastcc i32 @ovs_ct_commit(ptr noundef %net, ptr noundef %key, ptr noundef %info, ptr noundef %skb)
  br label %if.end14

if.else:                                          ; preds = %if.end9
  %zone.i = getelementptr inbounds %struct.ovs_conntrack_info, ptr %info, i32 0, i32 1
  %family.i = getelementptr inbounds %struct.ovs_conntrack_info, ptr %info, i32 0, i32 4
  %55 = ptrtoint ptr %family.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %family.i, align 2
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %tuple.i.i) #13
  %57 = call ptr @memset(ptr %tuple.i.i, i32 255, i32 40)
  %58 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %head.i.i, align 8
  %60 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i.i.i = zext i16 %61 to i32
  %add.ptr.i.i.i.i = getelementptr i8, ptr %59, i32 %conv.i.i.i.i
  %62 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %add.ptr.i.i.i.i to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %63 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %call1.i.i = call zeroext i1 @nf_ct_get_tuplepr(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i.i, i16 noundef zeroext %56, ptr noundef %net, ptr noundef nonnull %tuple.i.i) #13
  br i1 %call1.i.i, label %if.end.i.i, label %if.else.if.else.i_crit_edge

if.else.if.else.i_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else.i

if.end.i.i:                                       ; preds = %if.else
  %call2.i.i = call ptr @__nf_ct_expect_find(ptr noundef %net, ptr noundef %zone.i, ptr noundef nonnull %tuple.i.i) #13
  %tobool.not.i.i = icmp eq ptr %call2.i.i, null
  br i1 %tobool.not.i.i, label %if.end.i.i.if.else.i_crit_edge, label %if.then3.i.i

if.end.i.i.if.else.i_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  %call4.i.i = call ptr @nf_conntrack_find_get(ptr noundef %net, ptr noundef %zone.i, ptr noundef nonnull %tuple.i.i) #13
  %tobool5.not.i.i = icmp eq ptr %call4.i.i, null
  br i1 %tobool5.not.i.i, label %if.then3.i.i.if.then.i50_crit_edge, label %if.then6.i.i

if.then3.i.i.if.then.i50_crit_edge:               ; preds = %if.then3.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i50

if.then6.i.i:                                     ; preds = %if.then3.i.i
  %dir.i.i.i = getelementptr inbounds %struct.nf_conntrack_tuple_hash, ptr %call4.i.i, i32 0, i32 1, i32 1, i32 3
  %64 = ptrtoint ptr %dir.i.i.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %dir.i.i.i, align 1
  %conv.i.i.i48 = zext i8 %65 to i32
  %.neg.i.i.i = mul nsw i32 %conv.i.i.i48, -48
  %idx.neg.i.i.i = add nsw i32 %.neg.i.i.i, -56
  %add.ptr.i.i.i49 = getelementptr i8, ptr %call4.i.i, i32 %idx.neg.i.i.i
  %call8.i.i = call zeroext i1 @nf_ct_delete(ptr noundef %add.ptr.i.i.i49, i32 noundef 0, i32 noundef 0) #13
  %tobool.not.i.i.i = icmp eq ptr %add.ptr.i.i.i49, null
  br i1 %tobool.not.i.i.i, label %if.then6.i.i.if.then.i50_crit_edge, label %land.lhs.true.i.i.i

if.then6.i.i.if.then.i50_crit_edge:               ; preds = %if.then6.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i50

land.lhs.true.i.i.i:                              ; preds = %if.then6.i.i
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %add.ptr.i.i.i49, i32 noundef 4) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !201
  call void @llvm.prefetch.p0(ptr nonnull %add.ptr.i.i.i49, i32 1, i32 3, i32 1) #13
  %66 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %add.ptr.i.i.i49, ptr nonnull %add.ptr.i.i.i49, i32 1, ptr nonnull elementtype(i32) %add.ptr.i.i.i49) #13, !srcloc !202
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %66, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.if.then.i50_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !203

if.end5.i.i.i.i.i.i.if.then.i50_crit_edge:        ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i50

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @refcount_warn_saturate(ptr noundef nonnull %add.ptr.i.i.i49, i32 noundef 3) #13
  br label %if.then.i50

if.then.i.i.i:                                    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !204
  call void @nf_ct_destroy(ptr noundef nonnull %add.ptr.i.i.i49) #13
  br label %if.then.i50

if.then.i50:                                      ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.if.then.i50_crit_edge, %if.then6.i.i.if.then.i50_crit_edge, %if.then3.i.i.if.then.i50_crit_edge
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %tuple.i.i) #13
  %master.i = getelementptr inbounds %struct.nf_conntrack_expect, ptr %call2.i.i, i32 0, i32 6
  %67 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %master.i, align 4
  call fastcc void @__ovs_ct_update_key(ptr noundef %key, i8 noundef zeroext 37, ptr noundef %zone.i, ptr noundef %68) #13
  br label %if.end14

if.else.i:                                        ; preds = %if.end.i.i.if.else.i_crit_edge, %if.else.if.else.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %tuple.i.i) #13
  %call2.i = call fastcc i32 @__ovs_ct_lookup(ptr noundef %net, ptr noundef %key, ptr noundef %info, ptr noundef %skb) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end.i, label %if.else.i.if.end14_crit_edge

if.else.i.if.end14_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14

if.end.i:                                         ; preds = %if.else.i
  %_nfct.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 5
  %69 = ptrtoint ptr %_nfct.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %_nfct.i.i, align 8
  %and.i.i = and i32 %70, -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool6.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool6.not.i, label %if.end.i.if.end14_crit_edge, label %if.then7.i

if.end.i.if.end14_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %71 = inttoptr i32 %and.i.i to ptr
  call void @nf_ct_deliver_cached_events(ptr noundef nonnull %71) #13
  br label %if.end14

if.end14:                                         ; preds = %if.then7.i, %if.end.i.if.end14_crit_edge, %if.else.i.if.end14_crit_edge, %if.then.i50, %if.then11
  %err.0 = phi i32 [ %call12, %if.then11 ], [ 0, %if.then7.i ], [ 0, %if.then.i50 ], [ %call2.i, %if.else.i.if.end14_crit_edge ], [ 0, %if.end.i.if.end14_crit_edge ]
  %call.i51 = call ptr @skb_push(ptr noundef %skb, i32 noundef %sub.ptr.sub.i) #13
  %ip_summed.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %72 = ptrtoint ptr %ip_summed.i.i.i to i32
  call void @__asan_load2_noabort(i32 %72)
  %bf.load.i.i.i = load i16, ptr %ip_summed.i.i.i, align 8
  %73 = and i16 %bf.load.i.i.i, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %73)
  %cmp.i.i.i = icmp eq i16 %73, 1024
  br i1 %cmp.i.i.i, label %if.then.i.i.i53, label %if.end14.skb_push_rcsum.exit_crit_edge

if.end14.skb_push_rcsum.exit_crit_edge:           ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  br label %skb_push_rcsum.exit

if.then.i.i.i53:                                  ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  %74 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %data.i, align 4
  %76 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %76, align 8
  %call.i.i.i = call i32 @csum_partial(ptr noundef %75, i32 noundef %sub.ptr.sub.i, i32 noundef 0) #13
  %add.i.i.i.i.i = add i32 %call.i.i.i, %78
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i.i.i, i32 %call.i.i.i)
  %cmp.i.i.i.i.i = icmp ult i32 %add.i.i.i.i.i, %call.i.i.i
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i to i32
  %add1.i.i.i.i.i = add i32 %add.i.i.i.i.i, %conv.i.i.i.i.i
  %79 = ptrtoint ptr %76 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %add1.i.i.i.i.i, ptr %76, align 8
  br label %skb_push_rcsum.exit

skb_push_rcsum.exit:                              ; preds = %if.then.i.i.i53, %if.end14.skb_push_rcsum.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool16.not = icmp eq i32 %err.0, 0
  br i1 %tobool16.not, label %skb_push_rcsum.exit.cleanup_crit_edge, label %if.then17

skb_push_rcsum.exit.cleanup_crit_edge:            ; preds = %skb_push_rcsum.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then17:                                        ; preds = %skb_push_rcsum.exit
  call void @__sanitizer_cov_trace_pc() #15
  call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then17, %skb_push_rcsum.exit.cleanup_crit_edge, %handle_fragments.exit, %if.else35.i, %if.then13.i.cleanup_crit_edge, %if.then.i43.cleanup_crit_edge, %ovs_skb_network_trim.exit
  %retval.0 = phi i32 [ %call.i.i, %ovs_skb_network_trim.exit ], [ %call19.i, %handle_fragments.exit ], [ %err.0, %if.then17 ], [ 0, %skb_push_rcsum.exit.cleanup_crit_edge ], [ %call19.i, %if.then13.i.cleanup_crit_edge ], [ %call.i, %if.then.i43.cleanup_crit_edge ], [ -96, %if.else35.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull_rcsum(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ovs_ct_commit(ptr noundef %net, ptr noundef %key, ptr noundef %info, ptr noundef %skb) unnamed_addr #1 align 64 {
entry:
  %conncount_key.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__ovs_ct_lookup(ptr noundef %net, ptr noundef %key, ptr noundef %info, ptr noundef %skb)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %_nfct.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 5
  %0 = ptrtoint ptr %_nfct.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %_nfct.i.i, align 8
  %and1.i = and i32 %1, -8
  %2 = inttoptr i32 %and1.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not = icmp eq i32 %and1.i, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end4:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @ovs_ct_limit_enabled, ptr blockaddress(@ovs_ct_commit, %if.then9)) #13
          to label %if.end27 [label %if.then9], !srcloc !205

if.then9:                                         ; preds = %if.end4
  %status.i = getelementptr inbounds %struct.nf_conn, ptr %2, i32 0, i32 5
  %3 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %status.i, align 8
  %5 = and i32 %4, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool11.not = icmp eq i32 %5, 0
  br i1 %tobool11.not, label %if.then12, label %if.then9.if.end27_crit_edge

if.then9.if.end27_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end27

if.then12:                                        ; preds = %if.then9
  %tuple = getelementptr inbounds %struct.nf_conn, ptr %2, i32 0, i32 4, i32 0, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ovs_net_id to i32))
  %6 = load i32, ptr @ovs_net_id, align 4
  %call.i = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %6) #13
  %ct_limit_info1.i = getelementptr inbounds %struct.ovs_net, ptr %call.i, i32 0, i32 3
  %7 = ptrtoint ptr %ct_limit_info1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ct_limit_info1.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %conncount_key.i) #13
  %zone.i = getelementptr inbounds %struct.ovs_conntrack_info, ptr %info, i32 0, i32 1
  %9 = ptrtoint ptr %zone.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %zone.i, align 4
  %conv.i = zext i16 %10 to i32
  %11 = ptrtoint ptr %conncount_key.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %conv.i, ptr %conncount_key.i, align 4
  %limits.i.i.i = getelementptr inbounds %struct.ovs_ct_limit_info, ptr %8, i32 0, i32 1
  %12 = ptrtoint ptr %limits.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %limits.i.i.i, align 4
  %14 = and i16 %10, 511
  %and.i.i.i = zext i16 %14 to i32
  %arrayidx.i.i.i = getelementptr %struct.hlist_head, ptr %13, i32 %and.i.i.i
  %call1.i.i = tail call i32 @rcu_read_lock_any_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %if.then12.for.cond.i.i.preheader_crit_edge

if.then12.for.cond.i.i.preheader_crit_edge:       ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.i.i.preheader

land.lhs.true.i.i:                                ; preds = %if.then12
  %call2.i.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %land.lhs.true.i.i.for.cond.i.i.preheader_crit_edge, label %land.lhs.true4.i.i

land.lhs.true.i.i.for.cond.i.i.preheader_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.i.i.preheader

land.lhs.true4.i.i:                               ; preds = %land.lhs.true.i.i
  %.b43.i.i = load i1, ptr @ct_limit_get.__warned, align 1
  br i1 %.b43.i.i, label %land.lhs.true4.i.i.for.cond.i.i.preheader_crit_edge, label %if.then.i.i

land.lhs.true4.i.i.for.cond.i.i.preheader_crit_edge: ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.i.i.preheader

if.then.i.i:                                      ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @ct_limit_get.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 1159, ptr noundef nonnull @.str.23) #13
  br label %for.cond.i.i.preheader

for.cond.i.i.preheader:                           ; preds = %if.then.i.i, %land.lhs.true4.i.i.for.cond.i.i.preheader_crit_edge, %land.lhs.true.i.i.for.cond.i.i.preheader_crit_edge, %if.then12.for.cond.i.i.preheader_crit_edge
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %for.cond.i.i.preheader
  %ct_limit.0.in.i.i = phi ptr [ %ct_limit.0.i.i, %for.body.i.i.for.cond.i.i_crit_edge ], [ %arrayidx.i.i.i, %for.cond.i.i.preheader ]
  %15 = ptrtoint ptr %ct_limit.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %ct_limit.0.i.i = load volatile ptr, ptr %ct_limit.0.in.i.i, align 4
  %tobool13.not.i.i = icmp eq ptr %ct_limit.0.i.i, null
  br i1 %tobool13.not.i.i, label %for.cond.i.i.ct_limit_get.exit.i_crit_edge, label %for.body.i.i

for.cond.i.i.ct_limit_get.exit.i_crit_edge:       ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ct_limit_get.exit.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  %zone14.i.i = getelementptr inbounds %struct.ovs_ct_limit, ptr %ct_limit.0.i.i, i32 0, i32 2
  %16 = ptrtoint ptr %zone14.i.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %zone14.i.i, align 4
  %cmp.i.i = icmp eq i16 %17, %10
  br i1 %cmp.i.i, label %if.then17.i.i, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.i.i

if.then17.i.i:                                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %limit.i.i = getelementptr inbounds %struct.ovs_ct_limit, ptr %ct_limit.0.i.i, i32 0, i32 3
  br label %ct_limit_get.exit.i

ct_limit_get.exit.i:                              ; preds = %if.then17.i.i, %for.cond.i.i.ct_limit_get.exit.i_crit_edge
  %retval.0.in.i.i = phi ptr [ %limit.i.i, %if.then17.i.i ], [ %8, %for.cond.i.i.ct_limit_get.exit.i_crit_edge ]
  %18 = ptrtoint ptr %retval.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %retval.0.i.i = load i32, ptr %retval.0.in.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %cmp.i = icmp eq i32 %retval.0.i.i, 0
  br i1 %cmp.i, label %ct_limit_get.exit.i.ovs_ct_check_limit.exit.thread_crit_edge, label %if.end.i

ct_limit_get.exit.i.ovs_ct_check_limit.exit.thread_crit_edge: ; preds = %ct_limit_get.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ovs_ct_check_limit.exit.thread

if.end.i:                                         ; preds = %ct_limit_get.exit.i
  %data.i = getelementptr inbounds %struct.ovs_ct_limit_info, ptr %8, i32 0, i32 2
  %19 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data.i, align 4
  %call7.i = call i32 @nf_conncount_count(ptr noundef %net, ptr noundef %20, ptr noundef nonnull %conncount_key.i, ptr noundef %tuple, ptr noundef %zone.i) #13
  call void @__sanitizer_cov_trace_cmp4(i32 %call7.i, i32 %retval.0.i.i)
  %cmp8.i = icmp ugt i32 %call7.i, %retval.0.i.i
  br i1 %cmp8.i, label %do.body, label %if.end.i.ovs_ct_check_limit.exit.thread_crit_edge

if.end.i.ovs_ct_check_limit.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ovs_ct_check_limit.exit.thread

ovs_ct_check_limit.exit.thread:                   ; preds = %if.end.i.ovs_ct_check_limit.exit.thread_crit_edge, %ct_limit_get.exit.i.ovs_ct_check_limit.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %conncount_key.i) #13
  br label %if.end27

do.body:                                          ; preds = %if.end.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %conncount_key.i) #13
  %call16 = call i32 @net_ratelimit() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %21 = ptrtoint ptr %zone.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %zone.i, align 4
  %conv = zext i16 %22 to i32
  %call21 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %conv) #16
  br label %cleanup

if.end27:                                         ; preds = %ovs_ct_check_limit.exit.thread, %if.then9.if.end27_crit_edge, %if.end4
  %have_eventmask = getelementptr inbounds %struct.ovs_conntrack_info, ptr %info, i32 0, i32 3
  %23 = ptrtoint ptr %have_eventmask to i32
  call void @__asan_load1_noabort(i32 %23)
  %bf.load = load i8, ptr %have_eventmask, align 4
  %24 = and i8 %bf.load, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool28.not = icmp eq i8 %24, 0
  br i1 %tobool28.not, label %if.end27.if.end35_crit_edge, label %if.then29

if.end27.if.end35_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end35

if.then29:                                        ; preds = %if.end27
  %ext.i.i.i = getelementptr inbounds %struct.nf_conn, ptr %2, i32 0, i32 13
  %25 = ptrtoint ptr %ext.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ext.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %26, null
  br i1 %tobool.not.i.i.i, label %if.then29.if.end35_crit_edge, label %nf_ct_ext_exist.exit.i.i

if.then29.if.end35_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end35

nf_ct_ext_exist.exit.i.i:                         ; preds = %if.then29
  %arrayidx.i.i.i.i = getelementptr [10 x i8], ptr %26, i32 0, i32 4
  %27 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.i.i.not.i.i = icmp eq i8 %28, 0
  br i1 %tobool.i.i.not.i.i, label %nf_ct_ext_exist.exit.i.i.if.end35_crit_edge, label %nf_ct_ecache_find.exit

nf_ct_ext_exist.exit.i.i.if.end35_crit_edge:      ; preds = %nf_ct_ext_exist.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end35

nf_ct_ecache_find.exit:                           ; preds = %nf_ct_ext_exist.exit.i.i
  %conv.i.i = zext i8 %28 to i32
  %add.ptr.i.i = getelementptr i8, ptr %26, i32 %conv.i.i
  %tobool31.not = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool31.not, label %nf_ct_ecache_find.exit.if.end35_crit_edge, label %if.then32

nf_ct_ecache_find.exit.if.end35_crit_edge:        ; preds = %nf_ct_ecache_find.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end35

if.then32:                                        ; preds = %nf_ct_ecache_find.exit
  call void @__sanitizer_cov_trace_pc() #15
  %eventmask = getelementptr inbounds %struct.ovs_conntrack_info, ptr %info, i32 0, i32 5
  %29 = ptrtoint ptr %eventmask to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %eventmask, align 4
  %conv33 = trunc i32 %30 to i16
  %ctmask = getelementptr inbounds %struct.nf_conntrack_ecache, ptr %add.ptr.i.i, i32 0, i32 2
  %31 = ptrtoint ptr %ctmask to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %conv33, ptr %ctmask, align 2
  br label %if.end35

if.end35:                                         ; preds = %if.then32, %nf_ct_ecache_find.exit.if.end35_crit_edge, %nf_ct_ext_exist.exit.i.i.if.end35_crit_edge, %if.then29.if.end35_crit_edge, %if.end27.if.end35_crit_edge
  %mask = getelementptr inbounds %struct.ovs_conntrack_info, ptr %info, i32 0, i32 6, i32 1
  %32 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool36.not = icmp eq i32 %33, 0
  br i1 %tobool36.not, label %if.end35.if.end45_crit_edge, label %if.then37

if.end35.if.end45_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end45

if.then37:                                        ; preds = %if.end35
  %mark = getelementptr inbounds %struct.ovs_conntrack_info, ptr %info, i32 0, i32 6
  %34 = ptrtoint ptr %mark to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %mark, align 4
  %mark.i = getelementptr inbounds %struct.nf_conn, ptr %2, i32 0, i32 11
  %36 = ptrtoint ptr %mark.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %mark.i, align 8
  %neg.i = xor i32 %33, -1
  %and.i116 = and i32 %37, %neg.i
  %or.i = or i32 %and.i116, %35
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %or.i)
  %cmp.not.i = icmp eq i32 %37, %or.i
  br i1 %cmp.not.i, label %if.then37.if.end45_crit_edge, label %if.then.i

if.then37.if.end45_crit_edge:                     ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end45

if.then.i:                                        ; preds = %if.then37
  %38 = ptrtoint ptr %mark.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %or.i, ptr %mark.i, align 8
  %status.i.i = getelementptr inbounds %struct.nf_conn, ptr %2, i32 0, i32 5
  %39 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %status.i.i, align 8
  %41 = and i32 %40, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool.not.i = icmp eq i32 %41, 0
  br i1 %tobool.not.i, label %if.then.i.if.end.i120_crit_edge, label %if.then3.i

if.then.i.if.end.i120_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i120

if.then3.i:                                       ; preds = %if.then.i
  %ct_net.i.i.i = getelementptr inbounds %struct.nf_conn, ptr %2, i32 0, i32 7
  %42 = ptrtoint ptr %ct_net.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ct_net.i.i.i, align 8
  %nf_conntrack_event_cb.i.i = getelementptr inbounds %struct.net, ptr %43, i32 0, i32 40, i32 9
  %44 = ptrtoint ptr %nf_conntrack_event_cb.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile ptr, ptr %nf_conntrack_event_cb.i.i, align 16
  %tobool.not.i.i117 = icmp eq ptr %45, null
  br i1 %tobool.not.i.i117, label %if.then3.i.if.end.i120_crit_edge, label %if.end.i.i118

if.then3.i.if.end.i120_crit_edge:                 ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i120

if.end.i.i118:                                    ; preds = %if.then3.i
  %ext.i.i.i.i.i = getelementptr inbounds %struct.nf_conn, ptr %2, i32 0, i32 13
  %46 = ptrtoint ptr %ext.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ext.i.i.i.i.i, align 8
  %tobool.not.i.i.i.i.i = icmp eq ptr %47, null
  br i1 %tobool.not.i.i.i.i.i, label %if.end.i.i118.if.end.i120_crit_edge, label %nf_ct_ext_exist.exit.i.i.i.i

if.end.i.i118.if.end.i120_crit_edge:              ; preds = %if.end.i.i118
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i120

nf_ct_ext_exist.exit.i.i.i.i:                     ; preds = %if.end.i.i118
  %arrayidx.i.i.i.i.i.i = getelementptr [10 x i8], ptr %47, i32 0, i32 4
  %48 = ptrtoint ptr %arrayidx.i.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx.i.i.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool.i.i.not.i.i.i.i = icmp eq i8 %49, 0
  br i1 %tobool.i.i.not.i.i.i.i, label %nf_ct_ext_exist.exit.i.i.i.i.if.end.i120_crit_edge, label %nf_ct_ecache_find.exit.i.i

nf_ct_ext_exist.exit.i.i.i.i.if.end.i120_crit_edge: ; preds = %nf_ct_ext_exist.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i120

nf_ct_ecache_find.exit.i.i:                       ; preds = %nf_ct_ext_exist.exit.i.i.i.i
  %conv.i.i.i.i = zext i8 %49 to i32
  %add.ptr.i.i.i.i = getelementptr i8, ptr %47, i32 %conv.i.i.i.i
  %cmp.i.i119 = icmp eq ptr %add.ptr.i.i.i.i, null
  br i1 %cmp.i.i119, label %nf_ct_ecache_find.exit.i.i.if.end.i120_crit_edge, label %if.end5.i.i

nf_ct_ecache_find.exit.i.i.if.end.i120_crit_edge: ; preds = %nf_ct_ecache_find.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i120

if.end5.i.i:                                      ; preds = %nf_ct_ecache_find.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @_set_bit(i32 noundef 7, ptr noundef nonnull %add.ptr.i.i.i.i) #13
  br label %if.end.i120

if.end.i120:                                      ; preds = %if.end5.i.i, %nf_ct_ecache_find.exit.i.i.if.end.i120_crit_edge, %nf_ct_ext_exist.exit.i.i.i.i.if.end.i120_crit_edge, %if.end.i.i118.if.end.i120_crit_edge, %if.then3.i.if.end.i120_crit_edge, %if.then.i.if.end.i120_crit_edge
  %mark5.i = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 15, i32 1
  %50 = ptrtoint ptr %mark5.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %or.i, ptr %mark5.i, align 4
  br label %if.end45

if.end45:                                         ; preds = %if.end.i120, %if.then37.if.end45_crit_edge, %if.end35.if.end45_crit_edge
  %status.i121 = getelementptr inbounds %struct.nf_conn, ptr %2, i32 0, i32 5
  %51 = ptrtoint ptr %status.i121 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %status.i121, align 8
  %53 = and i32 %52, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool47.not = icmp eq i32 %53, 0
  br i1 %tobool47.not, label %if.then48, label %if.else

if.then48:                                        ; preds = %if.end45
  %labels = getelementptr inbounds %struct.ovs_conntrack_info, ptr %info, i32 0, i32 7
  %mask51 = getelementptr inbounds %struct.ovs_conntrack_info, ptr %info, i32 0, i32 7, i32 1
  %54 = ptrtoint ptr %mask51 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %mask51, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool.not.i.i124 = icmp eq i32 %55, 0
  br i1 %tobool.not.i.i124, label %for.cond.i.i125, label %if.then48.labels_nonzero.exit.i_crit_edge

if.then48.labels_nonzero.exit.i_crit_edge:        ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #15
  br label %labels_nonzero.exit.i

for.cond.i.i125:                                  ; preds = %if.then48
  %arrayidx.1.i.i = getelementptr %struct.ovs_conntrack_info, ptr %info, i32 0, i32 7, i32 1, i32 0, i32 0, i32 1
  %56 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx.1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool.not.1.i.i = icmp eq i32 %57, 0
  br i1 %tobool.not.1.i.i, label %for.cond.1.i.i, label %for.cond.i.i125.labels_nonzero.exit.i_crit_edge

for.cond.i.i125.labels_nonzero.exit.i_crit_edge:  ; preds = %for.cond.i.i125
  call void @__sanitizer_cov_trace_pc() #15
  br label %labels_nonzero.exit.i

for.cond.1.i.i:                                   ; preds = %for.cond.i.i125
  %arrayidx.2.i.i = getelementptr %struct.ovs_conntrack_info, ptr %info, i32 0, i32 7, i32 1, i32 0, i32 0, i32 2
  %58 = ptrtoint ptr %arrayidx.2.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx.2.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool.not.2.i.i = icmp eq i32 %59, 0
  br i1 %tobool.not.2.i.i, label %for.cond.2.i.i, label %for.cond.1.i.i.labels_nonzero.exit.i_crit_edge

for.cond.1.i.i.labels_nonzero.exit.i_crit_edge:   ; preds = %for.cond.1.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %labels_nonzero.exit.i

for.cond.2.i.i:                                   ; preds = %for.cond.1.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx.3.i.i = getelementptr %struct.ovs_conntrack_info, ptr %info, i32 0, i32 7, i32 1, i32 0, i32 0, i32 3
  %60 = ptrtoint ptr %arrayidx.3.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx.3.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool.not.3.i.i = icmp ne i32 %61, 0
  br label %labels_nonzero.exit.i

labels_nonzero.exit.i:                            ; preds = %for.cond.2.i.i, %for.cond.1.i.i.labels_nonzero.exit.i_crit_edge, %for.cond.i.i125.labels_nonzero.exit.i_crit_edge, %if.then48.labels_nonzero.exit.i_crit_edge
  %cmp.lcssa.i.i = phi i1 [ true, %if.then48.labels_nonzero.exit.i_crit_edge ], [ true, %for.cond.i.i125.labels_nonzero.exit.i_crit_edge ], [ true, %for.cond.1.i.i.labels_nonzero.exit.i_crit_edge ], [ %tobool.not.3.i.i, %for.cond.2.i.i ]
  %master.i = getelementptr inbounds %struct.nf_conn, ptr %2, i32 0, i32 10
  %62 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %master.i, align 4
  %tobool.not.i126 = icmp eq ptr %63, null
  br i1 %tobool.not.i126, label %labels_nonzero.exit.i.cond.end.i_crit_edge, label %cond.true.i

labels_nonzero.exit.i.cond.end.i_crit_edge:       ; preds = %labels_nonzero.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end.i

cond.true.i:                                      ; preds = %labels_nonzero.exit.i
  %ext.i.i.i.i = getelementptr inbounds %struct.nf_conn, ptr %63, i32 0, i32 13
  %64 = ptrtoint ptr %ext.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %ext.i.i.i.i, align 8
  %tobool.not.i.i.i.i = icmp eq ptr %65, null
  br i1 %tobool.not.i.i.i.i, label %cond.true.i.cond.end.i_crit_edge, label %nf_ct_ext_exist.exit.i.i.i

cond.true.i.cond.end.i_crit_edge:                 ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end.i

nf_ct_ext_exist.exit.i.i.i:                       ; preds = %cond.true.i
  %arrayidx.i.i.i.i.i = getelementptr [10 x i8], ptr %65, i32 0, i32 7
  %66 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx.i.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool.i.i.not.i.i.i = icmp eq i8 %67, 0
  br i1 %tobool.i.i.not.i.i.i, label %nf_ct_ext_exist.exit.i.i.i.cond.end.i_crit_edge, label %if.end.i.i.i

nf_ct_ext_exist.exit.i.i.i.cond.end.i_crit_edge:  ; preds = %nf_ct_ext_exist.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end.i

if.end.i.i.i:                                     ; preds = %nf_ct_ext_exist.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %conv.i.i.i = zext i8 %67 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %65, i32 %conv.i.i.i
  br label %cond.end.i

cond.end.i:                                       ; preds = %if.end.i.i.i, %nf_ct_ext_exist.exit.i.i.i.cond.end.i_crit_edge, %cond.true.i.cond.end.i_crit_edge, %labels_nonzero.exit.i.cond.end.i_crit_edge
  %cond.i = phi ptr [ null, %labels_nonzero.exit.i.cond.end.i_crit_edge ], [ %add.ptr.i.i.i, %if.end.i.i.i ], [ null, %nf_ct_ext_exist.exit.i.i.i.cond.end.i_crit_edge ], [ null, %cond.true.i.cond.end.i_crit_edge ]
  %tobool3.not.i = icmp eq ptr %cond.i, null
  %tobool3.not.not.i = xor i1 %tobool3.not.i, true
  %brmerge.i = select i1 %tobool3.not.not.i, i1 true, i1 %cmp.lcssa.i.i
  br i1 %brmerge.i, label %if.end.i129, label %cond.end.i.if.end55_crit_edge

cond.end.i.if.end55_crit_edge:                    ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end55

if.end.i129:                                      ; preds = %cond.end.i
  %ext.i.i.i.i.i127 = getelementptr inbounds %struct.nf_conn, ptr %2, i32 0, i32 13
  %68 = ptrtoint ptr %ext.i.i.i.i.i127 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %ext.i.i.i.i.i127, align 8
  %tobool.not.i.i.i.i.i128 = icmp eq ptr %69, null
  br i1 %tobool.not.i.i.i.i.i128, label %if.end.i129.if.then.i.i135_crit_edge, label %nf_ct_ext_exist.exit.i.i.i.i134

if.end.i129.if.then.i.i135_crit_edge:             ; preds = %if.end.i129
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i.i135

nf_ct_ext_exist.exit.i.i.i.i134:                  ; preds = %if.end.i129
  %arrayidx.i.i.i.i.i.i130 = getelementptr [10 x i8], ptr %69, i32 0, i32 7
  %70 = ptrtoint ptr %arrayidx.i.i.i.i.i.i130 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %arrayidx.i.i.i.i.i.i130, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool.i.i.not.i.i.i.i131 = icmp eq i8 %71, 0
  %conv.i.i.i.i132 = zext i8 %71 to i32
  %add.ptr.i.i.i.i133 = getelementptr i8, ptr %69, i32 %conv.i.i.i.i132
  %tobool.not.i44.i = icmp eq ptr %add.ptr.i.i.i.i133, null
  %or.cond.i.i = select i1 %tobool.i.i.not.i.i.i.i131, i1 true, i1 %tobool.not.i44.i
  br i1 %or.cond.i.i, label %nf_ct_ext_exist.exit.i.i.i.i134.if.then.i.i135_crit_edge, label %nf_ct_ext_exist.exit.i.i.i.i134.if.end8.i_crit_edge

nf_ct_ext_exist.exit.i.i.i.i134.if.end8.i_crit_edge: ; preds = %nf_ct_ext_exist.exit.i.i.i.i134
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8.i

nf_ct_ext_exist.exit.i.i.i.i134.if.then.i.i135_crit_edge: ; preds = %nf_ct_ext_exist.exit.i.i.i.i134
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i.i135

if.then.i.i135:                                   ; preds = %nf_ct_ext_exist.exit.i.i.i.i134.if.then.i.i135_crit_edge, %if.end.i129.if.then.i.i135_crit_edge
  %ct_net.i.i.i.i = getelementptr inbounds %struct.nf_conn, ptr %2, i32 0, i32 7
  %72 = ptrtoint ptr %ct_net.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %ct_net.i.i.i.i, align 8
  %labels_used.i.i.i = getelementptr inbounds %struct.net, ptr %73, i32 0, i32 40, i32 11
  %74 = ptrtoint ptr %labels_used.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %labels_used.i.i.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %cmp.i.i.i = icmp eq i32 %75, 0
  br i1 %cmp.i.i.i, label %if.then.i.i135.nf_ct_labels_ext_add.exit.i.i_crit_edge, label %if.end.i.i45.i

if.then.i.i135.nf_ct_labels_ext_add.exit.i.i_crit_edge: ; preds = %if.then.i.i135
  call void @__sanitizer_cov_trace_pc() #15
  br label %nf_ct_labels_ext_add.exit.i.i

if.end.i.i45.i:                                   ; preds = %if.then.i.i135
  call void @__sanitizer_cov_trace_pc() #15
  %call2.i.i.i = call ptr @nf_ct_ext_add(ptr noundef nonnull %2, i32 noundef 7, i32 noundef 2592) #13
  br label %nf_ct_labels_ext_add.exit.i.i

nf_ct_labels_ext_add.exit.i.i:                    ; preds = %if.end.i.i45.i, %if.then.i.i135.nf_ct_labels_ext_add.exit.i.i_crit_edge
  %76 = ptrtoint ptr %ext.i.i.i.i.i127 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %ext.i.i.i.i.i127, align 8
  %tobool.not.i.i.i7.i.i = icmp eq ptr %77, null
  br i1 %tobool.not.i.i.i7.i.i, label %nf_ct_labels_ext_add.exit.i.i.cleanup_crit_edge, label %nf_ct_ext_exist.exit.i.i10.i.i

nf_ct_labels_ext_add.exit.i.i.cleanup_crit_edge:  ; preds = %nf_ct_labels_ext_add.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

nf_ct_ext_exist.exit.i.i10.i.i:                   ; preds = %nf_ct_labels_ext_add.exit.i.i
  %arrayidx.i.i.i.i8.i.i = getelementptr [10 x i8], ptr %77, i32 0, i32 7
  %78 = ptrtoint ptr %arrayidx.i.i.i.i8.i.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %arrayidx.i.i.i.i8.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %79)
  %tobool.i.i.not.i.i9.i.i = icmp eq i8 %79, 0
  %conv.i.i11.i.i = zext i8 %79 to i32
  %add.ptr.i.i12.i.i = getelementptr i8, ptr %77, i32 %conv.i.i11.i.i
  %tobool6.not.i = icmp eq ptr %add.ptr.i.i12.i.i, null
  %or.cond.i = select i1 %tobool.i.i.not.i.i9.i.i, i1 true, i1 %tobool6.not.i
  br i1 %or.cond.i, label %nf_ct_ext_exist.exit.i.i10.i.i.cleanup_crit_edge, label %nf_ct_ext_exist.exit.i.i10.i.i.if.end8.i_crit_edge

nf_ct_ext_exist.exit.i.i10.i.i.if.end8.i_crit_edge: ; preds = %nf_ct_ext_exist.exit.i.i10.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8.i

nf_ct_ext_exist.exit.i.i10.i.i.cleanup_crit_edge: ; preds = %nf_ct_ext_exist.exit.i.i10.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end8.i:                                        ; preds = %nf_ct_ext_exist.exit.i.i10.i.i.if.end8.i_crit_edge, %nf_ct_ext_exist.exit.i.i.i.i134.if.end8.i_crit_edge
  %cl.0.i61.i = phi ptr [ %add.ptr.i.i.i.i133, %nf_ct_ext_exist.exit.i.i.i.i134.if.end8.i_crit_edge ], [ %add.ptr.i.i12.i.i, %nf_ct_ext_exist.exit.i.i10.i.i.if.end8.i_crit_edge ]
  br i1 %tobool3.not.i, label %if.end8.i.if.end11.i_crit_edge, label %if.then10.i

if.end8.i.if.end11.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end11.i

if.then10.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #15
  %80 = call ptr @memcpy(ptr %cl.0.i61.i, ptr %cond.i, i32 16)
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then10.i, %if.end8.i.if.end11.i_crit_edge
  br i1 %cmp.lcssa.i.i, label %for.body.preheader.i, label %if.end11.i.if.end19.i_crit_edge

if.end11.i.if.end19.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end19.i

for.body.preheader.i:                             ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #15
  %81 = ptrtoint ptr %cl.0.i61.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %cl.0.i61.i, align 4
  %83 = ptrtoint ptr %mask51 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %mask51, align 4
  %neg.i136 = xor i32 %84, -1
  %and.i137 = and i32 %82, %neg.i136
  %85 = ptrtoint ptr %labels to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %labels, align 4
  %and17.i = and i32 %86, %84
  %or.i138 = or i32 %and17.i, %and.i137
  store i32 %or.i138, ptr %cl.0.i61.i, align 4
  %arrayidx.1.i = getelementptr i32, ptr %cl.0.i61.i, i32 1
  %87 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %arrayidx.1.i, align 4
  %arrayidx14.1.i = getelementptr %struct.ovs_conntrack_info, ptr %info, i32 0, i32 7, i32 1, i32 0, i32 0, i32 1
  %89 = ptrtoint ptr %arrayidx14.1.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %arrayidx14.1.i, align 4
  %neg.1.i = xor i32 %90, -1
  %and.1.i = and i32 %88, %neg.1.i
  %arrayidx15.1.i = getelementptr %struct.ovs_conntrack_info, ptr %info, i32 0, i32 7, i32 0, i32 0, i32 0, i32 1
  %91 = ptrtoint ptr %arrayidx15.1.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %arrayidx15.1.i, align 4
  %and17.1.i = and i32 %92, %90
  %or.1.i = or i32 %and17.1.i, %and.1.i
  store i32 %or.1.i, ptr %arrayidx.1.i, align 4
  %arrayidx.2.i = getelementptr i32, ptr %cl.0.i61.i, i32 2
  %93 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %arrayidx.2.i, align 4
  %arrayidx14.2.i = getelementptr %struct.ovs_conntrack_info, ptr %info, i32 0, i32 7, i32 1, i32 0, i32 0, i32 2
  %95 = ptrtoint ptr %arrayidx14.2.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %arrayidx14.2.i, align 4
  %neg.2.i = xor i32 %96, -1
  %and.2.i = and i32 %94, %neg.2.i
  %arrayidx15.2.i = getelementptr %struct.ovs_conntrack_info, ptr %info, i32 0, i32 7, i32 0, i32 0, i32 0, i32 2
  %97 = ptrtoint ptr %arrayidx15.2.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %arrayidx15.2.i, align 4
  %and17.2.i = and i32 %98, %96
  %or.2.i = or i32 %and17.2.i, %and.2.i
  store i32 %or.2.i, ptr %arrayidx.2.i, align 4
  %arrayidx.3.i = getelementptr i32, ptr %cl.0.i61.i, i32 3
  %99 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %arrayidx.3.i, align 4
  %arrayidx14.3.i = getelementptr %struct.ovs_conntrack_info, ptr %info, i32 0, i32 7, i32 1, i32 0, i32 0, i32 3
  %101 = ptrtoint ptr %arrayidx14.3.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %arrayidx14.3.i, align 4
  %neg.3.i = xor i32 %102, -1
  %and.3.i = and i32 %100, %neg.3.i
  %arrayidx15.3.i = getelementptr %struct.ovs_conntrack_info, ptr %info, i32 0, i32 7, i32 0, i32 0, i32 0, i32 3
  %103 = ptrtoint ptr %arrayidx15.3.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %arrayidx15.3.i, align 4
  %and17.3.i = and i32 %104, %102
  %or.3.i = or i32 %and17.3.i, %and.3.i
  store i32 %or.3.i, ptr %arrayidx.3.i, align 4
  br label %if.end19.i

if.end19.i:                                       ; preds = %for.body.preheader.i, %if.end11.i.if.end19.i_crit_edge
  %ct_net.i.i.i139 = getelementptr inbounds %struct.nf_conn, ptr %2, i32 0, i32 7
  %105 = ptrtoint ptr %ct_net.i.i.i139 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %ct_net.i.i.i139, align 8
  %nf_conntrack_event_cb.i.i140 = getelementptr inbounds %struct.net, ptr %106, i32 0, i32 40, i32 9
  %107 = ptrtoint ptr %nf_conntrack_event_cb.i.i140 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load volatile ptr, ptr %nf_conntrack_event_cb.i.i140, align 16
  %tobool.not.i46.i = icmp eq ptr %108, null
  br i1 %tobool.not.i46.i, label %if.end19.i.nf_conntrack_event_cache.exit.i_crit_edge, label %if.end.i.i141

if.end19.i.nf_conntrack_event_cache.exit.i_crit_edge: ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %nf_conntrack_event_cache.exit.i

if.end.i.i141:                                    ; preds = %if.end19.i
  %109 = ptrtoint ptr %ext.i.i.i.i.i127 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %ext.i.i.i.i.i127, align 8
  %tobool.not.i.i.i.i48.i = icmp eq ptr %110, null
  br i1 %tobool.not.i.i.i.i48.i, label %if.end.i.i141.nf_conntrack_event_cache.exit.i_crit_edge, label %nf_ct_ext_exist.exit.i.i.i51.i

if.end.i.i141.nf_conntrack_event_cache.exit.i_crit_edge: ; preds = %if.end.i.i141
  call void @__sanitizer_cov_trace_pc() #15
  br label %nf_conntrack_event_cache.exit.i

nf_ct_ext_exist.exit.i.i.i51.i:                   ; preds = %if.end.i.i141
  %arrayidx.i.i.i.i.i49.i = getelementptr [10 x i8], ptr %110, i32 0, i32 4
  %111 = ptrtoint ptr %arrayidx.i.i.i.i.i49.i to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %arrayidx.i.i.i.i.i49.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %112)
  %tobool.i.i.not.i.i.i50.i = icmp eq i8 %112, 0
  br i1 %tobool.i.i.not.i.i.i50.i, label %nf_ct_ext_exist.exit.i.i.i51.i.nf_conntrack_event_cache.exit.i_crit_edge, label %nf_ct_ecache_find.exit.i.i143

nf_ct_ext_exist.exit.i.i.i51.i.nf_conntrack_event_cache.exit.i_crit_edge: ; preds = %nf_ct_ext_exist.exit.i.i.i51.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %nf_conntrack_event_cache.exit.i

nf_ct_ecache_find.exit.i.i143:                    ; preds = %nf_ct_ext_exist.exit.i.i.i51.i
  %conv.i.i.i52.i = zext i8 %112 to i32
  %add.ptr.i.i.i53.i = getelementptr i8, ptr %110, i32 %conv.i.i.i52.i
  %cmp.i.i142 = icmp eq ptr %add.ptr.i.i.i53.i, null
  br i1 %cmp.i.i142, label %nf_ct_ecache_find.exit.i.i143.nf_conntrack_event_cache.exit.i_crit_edge, label %if.end5.i.i144

nf_ct_ecache_find.exit.i.i143.nf_conntrack_event_cache.exit.i_crit_edge: ; preds = %nf_ct_ecache_find.exit.i.i143
  call void @__sanitizer_cov_trace_pc() #15
  br label %nf_conntrack_event_cache.exit.i

if.end5.i.i144:                                   ; preds = %nf_ct_ecache_find.exit.i.i143
  call void @__sanitizer_cov_trace_pc() #15
  call void @_set_bit(i32 noundef 10, ptr noundef nonnull %add.ptr.i.i.i53.i) #13
  br label %nf_conntrack_event_cache.exit.i

nf_conntrack_event_cache.exit.i:                  ; preds = %if.end5.i.i144, %nf_ct_ecache_find.exit.i.i143.nf_conntrack_event_cache.exit.i_crit_edge, %nf_ct_ext_exist.exit.i.i.i51.i.nf_conntrack_event_cache.exit.i_crit_edge, %if.end.i.i141.nf_conntrack_event_cache.exit.i_crit_edge, %if.end19.i.nf_conntrack_event_cache.exit.i_crit_edge
  %labels21.i = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 15, i32 2
  %113 = call ptr @memcpy(ptr %labels21.i, ptr %cl.0.i61.i, i32 16)
  br label %if.end55

if.end55:                                         ; preds = %nf_conntrack_event_cache.exit.i, %cond.end.i.if.end55_crit_edge
  %ext.i.i.i146 = getelementptr inbounds %struct.nf_conn, ptr %2, i32 0, i32 13
  %114 = ptrtoint ptr %ext.i.i.i146 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %ext.i.i.i146, align 8
  %tobool.not.i.i.i147 = icmp eq ptr %115, null
  br i1 %tobool.not.i.i.i147, label %if.end55.if.end.i155_crit_edge, label %nf_ct_ext_exist.exit.i.i154

if.end55.if.end.i155_crit_edge:                   ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i155

nf_ct_ext_exist.exit.i.i154:                      ; preds = %if.end55
  %arrayidx.i.i.i.i148 = getelementptr [10 x i8], ptr %115, i32 0, i32 9
  %116 = ptrtoint ptr %arrayidx.i.i.i.i148 to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %arrayidx.i.i.i.i148, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %117)
  %tobool.i.i.not.i.i149 = icmp eq i8 %117, 0
  %conv.i.i150 = zext i8 %117 to i32
  %add.ptr.i.i151 = getelementptr i8, ptr %115, i32 %conv.i.i150
  %tobool.not.i152 = icmp eq ptr %add.ptr.i.i151, null
  %or.cond.i153 = select i1 %tobool.i.i.not.i.i149, i1 true, i1 %tobool.not.i152
  br i1 %or.cond.i153, label %nf_ct_ext_exist.exit.i.i154.if.end.i155_crit_edge, label %nf_ct_ext_exist.exit.i.i154.if.end71_crit_edge

nf_ct_ext_exist.exit.i.i154.if.end71_crit_edge:   ; preds = %nf_ct_ext_exist.exit.i.i154
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end71

nf_ct_ext_exist.exit.i.i154.if.end.i155_crit_edge: ; preds = %nf_ct_ext_exist.exit.i.i154
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i155

if.end.i155:                                      ; preds = %nf_ct_ext_exist.exit.i.i154.if.end.i155_crit_edge, %if.end55.if.end.i155_crit_edge
  %call1.i = call ptr @nf_ct_ext_add(ptr noundef nonnull %2, i32 noundef 9, i32 noundef 2592) #13
  br label %if.end71

if.else:                                          ; preds = %if.end45
  %mask58 = getelementptr inbounds %struct.ovs_conntrack_info, ptr %info, i32 0, i32 7, i32 1
  %118 = ptrtoint ptr %mask58 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %mask58, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %119)
  %tobool.not.i156 = icmp eq i32 %119, 0
  br i1 %tobool.not.i156, label %for.cond.i, label %if.else.if.then61_crit_edge

if.else.if.then61_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then61

for.cond.i:                                       ; preds = %if.else
  %arrayidx.1.i157 = getelementptr %struct.ovs_conntrack_info, ptr %info, i32 0, i32 7, i32 1, i32 0, i32 0, i32 1
  %120 = ptrtoint ptr %arrayidx.1.i157 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %arrayidx.1.i157, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %121)
  %tobool.not.1.i = icmp eq i32 %121, 0
  br i1 %tobool.not.1.i, label %for.cond.1.i, label %for.cond.i.if.then61_crit_edge

for.cond.i.if.then61_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then61

for.cond.1.i:                                     ; preds = %for.cond.i
  %arrayidx.2.i158 = getelementptr %struct.ovs_conntrack_info, ptr %info, i32 0, i32 7, i32 1, i32 0, i32 0, i32 2
  %122 = ptrtoint ptr %arrayidx.2.i158 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %arrayidx.2.i158, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %123)
  %tobool.not.2.i = icmp eq i32 %123, 0
  br i1 %tobool.not.2.i, label %labels_nonzero.exit, label %for.cond.1.i.if.then61_crit_edge

for.cond.1.i.if.then61_crit_edge:                 ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then61

labels_nonzero.exit:                              ; preds = %for.cond.1.i
  %arrayidx.3.i159 = getelementptr %struct.ovs_conntrack_info, ptr %info, i32 0, i32 7, i32 1, i32 0, i32 0, i32 3
  %124 = ptrtoint ptr %arrayidx.3.i159 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %arrayidx.3.i159, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %125)
  %tobool.not.3.i.not = icmp eq i32 %125, 0
  br i1 %tobool.not.3.i.not, label %labels_nonzero.exit.if.end71_crit_edge, label %labels_nonzero.exit.if.then61_crit_edge

labels_nonzero.exit.if.then61_crit_edge:          ; preds = %labels_nonzero.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then61

labels_nonzero.exit.if.end71_crit_edge:           ; preds = %labels_nonzero.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end71

if.then61:                                        ; preds = %labels_nonzero.exit.if.then61_crit_edge, %for.cond.1.i.if.then61_crit_edge, %for.cond.i.if.then61_crit_edge, %if.else.if.then61_crit_edge
  %labels57 = getelementptr inbounds %struct.ovs_conntrack_info, ptr %info, i32 0, i32 7
  %ext.i.i.i.i.i160 = getelementptr inbounds %struct.nf_conn, ptr %2, i32 0, i32 13
  %126 = ptrtoint ptr %ext.i.i.i.i.i160 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %ext.i.i.i.i.i160, align 8
  %tobool.not.i.i.i.i.i161 = icmp eq ptr %127, null
  br i1 %tobool.not.i.i.i.i.i161, label %if.then61.if.then.i.i172_crit_edge, label %nf_ct_ext_exist.exit.i.i.i.i168

if.then61.if.then.i.i172_crit_edge:               ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i.i172

nf_ct_ext_exist.exit.i.i.i.i168:                  ; preds = %if.then61
  %arrayidx.i.i.i.i.i.i162 = getelementptr [10 x i8], ptr %127, i32 0, i32 7
  %128 = ptrtoint ptr %arrayidx.i.i.i.i.i.i162 to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %arrayidx.i.i.i.i.i.i162, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %129)
  %tobool.i.i.not.i.i.i.i163 = icmp eq i8 %129, 0
  %conv.i.i.i.i164 = zext i8 %129 to i32
  %add.ptr.i.i.i.i165 = getelementptr i8, ptr %127, i32 %conv.i.i.i.i164
  %tobool.not.i.i166 = icmp eq ptr %add.ptr.i.i.i.i165, null
  %or.cond.i.i167 = select i1 %tobool.i.i.not.i.i.i.i163, i1 true, i1 %tobool.not.i.i166
  br i1 %or.cond.i.i167, label %nf_ct_ext_exist.exit.i.i.i.i168.if.then.i.i172_crit_edge, label %nf_ct_ext_exist.exit.i.i.i.i168.if.end.i185_crit_edge

nf_ct_ext_exist.exit.i.i.i.i168.if.end.i185_crit_edge: ; preds = %nf_ct_ext_exist.exit.i.i.i.i168
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i185

nf_ct_ext_exist.exit.i.i.i.i168.if.then.i.i172_crit_edge: ; preds = %nf_ct_ext_exist.exit.i.i.i.i168
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i.i172

if.then.i.i172:                                   ; preds = %nf_ct_ext_exist.exit.i.i.i.i168.if.then.i.i172_crit_edge, %if.then61.if.then.i.i172_crit_edge
  %ct_net.i.i.i.i169 = getelementptr inbounds %struct.nf_conn, ptr %2, i32 0, i32 7
  %130 = ptrtoint ptr %ct_net.i.i.i.i169 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %ct_net.i.i.i.i169, align 8
  %labels_used.i.i.i170 = getelementptr inbounds %struct.net, ptr %131, i32 0, i32 40, i32 11
  %132 = ptrtoint ptr %labels_used.i.i.i170 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %labels_used.i.i.i170, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %133)
  %cmp.i.i.i171 = icmp eq i32 %133, 0
  br i1 %cmp.i.i.i171, label %if.then.i.i172.nf_ct_labels_ext_add.exit.i.i176_crit_edge, label %if.end.i.i.i174

if.then.i.i172.nf_ct_labels_ext_add.exit.i.i176_crit_edge: ; preds = %if.then.i.i172
  call void @__sanitizer_cov_trace_pc() #15
  br label %nf_ct_labels_ext_add.exit.i.i176

if.end.i.i.i174:                                  ; preds = %if.then.i.i172
  call void @__sanitizer_cov_trace_pc() #15
  %call2.i.i.i173 = call ptr @nf_ct_ext_add(ptr noundef nonnull %2, i32 noundef 7, i32 noundef 2592) #13
  br label %nf_ct_labels_ext_add.exit.i.i176

nf_ct_labels_ext_add.exit.i.i176:                 ; preds = %if.end.i.i.i174, %if.then.i.i172.nf_ct_labels_ext_add.exit.i.i176_crit_edge
  %134 = ptrtoint ptr %ext.i.i.i.i.i160 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %ext.i.i.i.i.i160, align 8
  %tobool.not.i.i.i7.i.i175 = icmp eq ptr %135, null
  br i1 %tobool.not.i.i.i7.i.i175, label %nf_ct_labels_ext_add.exit.i.i176.cleanup_crit_edge, label %nf_ct_ext_exist.exit.i.i10.i.i183

nf_ct_labels_ext_add.exit.i.i176.cleanup_crit_edge: ; preds = %nf_ct_labels_ext_add.exit.i.i176
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

nf_ct_ext_exist.exit.i.i10.i.i183:                ; preds = %nf_ct_labels_ext_add.exit.i.i176
  %arrayidx.i.i.i.i8.i.i177 = getelementptr [10 x i8], ptr %135, i32 0, i32 7
  %136 = ptrtoint ptr %arrayidx.i.i.i.i8.i.i177 to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %arrayidx.i.i.i.i8.i.i177, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %137)
  %tobool.i.i.not.i.i9.i.i178 = icmp eq i8 %137, 0
  %conv.i.i11.i.i179 = zext i8 %137 to i32
  %add.ptr.i.i12.i.i180 = getelementptr i8, ptr %135, i32 %conv.i.i11.i.i179
  %tobool.not.i181 = icmp eq ptr %add.ptr.i.i12.i.i180, null
  %or.cond.i182 = select i1 %tobool.i.i.not.i.i9.i.i178, i1 true, i1 %tobool.not.i181
  br i1 %or.cond.i182, label %nf_ct_ext_exist.exit.i.i10.i.i183.cleanup_crit_edge, label %nf_ct_ext_exist.exit.i.i10.i.i183.if.end.i185_crit_edge

nf_ct_ext_exist.exit.i.i10.i.i183.if.end.i185_crit_edge: ; preds = %nf_ct_ext_exist.exit.i.i10.i.i183
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i185

nf_ct_ext_exist.exit.i.i10.i.i183.cleanup_crit_edge: ; preds = %nf_ct_ext_exist.exit.i.i10.i.i183
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i185:                                      ; preds = %nf_ct_ext_exist.exit.i.i10.i.i183.if.end.i185_crit_edge, %nf_ct_ext_exist.exit.i.i.i.i168.if.end.i185_crit_edge
  %cl.0.i18.i = phi ptr [ %add.ptr.i.i.i.i165, %nf_ct_ext_exist.exit.i.i.i.i168.if.end.i185_crit_edge ], [ %add.ptr.i.i12.i.i180, %nf_ct_ext_exist.exit.i.i10.i.i183.if.end.i185_crit_edge ]
  %call2.i = call i32 @nf_connlabels_replace(ptr noundef nonnull %2, ptr noundef %labels57, ptr noundef %mask58, i32 noundef 4) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i184 = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i184, label %ovs_ct_set_labels.exit, label %if.end.i185.cleanup_crit_edge

if.end.i185.cleanup_crit_edge:                    ; preds = %if.end.i185
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

ovs_ct_set_labels.exit:                           ; preds = %if.end.i185
  call void @__sanitizer_cov_trace_pc() #15
  %labels7.i = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 15, i32 2
  %138 = call ptr @memcpy(ptr %labels7.i, ptr %cl.0.i18.i, i32 16)
  br label %if.end71

if.end71:                                         ; preds = %ovs_ct_set_labels.exit, %labels_nonzero.exit.if.end71_crit_edge, %if.end.i155, %nf_ct_ext_exist.exit.i.i154.if.end71_crit_edge
  %139 = ptrtoint ptr %_nfct.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %_nfct.i.i, align 8
  %and.i.i = and i32 %140, -8
  %141 = inttoptr i32 %and.i.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i188 = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i188, label %if.end71.cleanup_crit_edge, label %if.then.i190

if.end71.cleanup_crit_edge:                       ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then.i190:                                     ; preds = %if.end71
  %status.i.i189 = getelementptr inbounds %struct.nf_conn, ptr %141, i32 0, i32 5
  %142 = ptrtoint ptr %status.i.i189 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load volatile i32, ptr %status.i.i189, align 8
  %144 = and i32 %143, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %144)
  %tobool2.not.i = icmp eq i32 %144, 0
  br i1 %tobool2.not.i, label %if.end.i192, label %if.then.i190.if.then7.i_crit_edge

if.then.i190.if.then7.i_crit_edge:                ; preds = %if.then.i190
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then7.i

if.end.i192:                                      ; preds = %if.then.i190
  %call4.i = call i32 @__nf_conntrack_confirm(ptr noundef %skb) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call4.i)
  %cmp.i191 = icmp eq i32 %call4.i, 1
  br i1 %cmp.i191, label %if.end.i192.if.then7.i_crit_edge, label %if.end.i192.cleanup_crit_edge, !prof !203

if.end.i192.cleanup_crit_edge:                    ; preds = %if.end.i192
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i192.if.then7.i_crit_edge:                 ; preds = %if.end.i192
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then7.i

if.then7.i:                                       ; preds = %if.end.i192.if.then7.i_crit_edge, %if.then.i190.if.then7.i_crit_edge
  call void @nf_ct_deliver_cached_events(ptr noundef nonnull %141) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then7.i, %if.end.i192.cleanup_crit_edge, %if.end71.cleanup_crit_edge, %if.end.i185.cleanup_crit_edge, %nf_ct_ext_exist.exit.i.i10.i.i183.cleanup_crit_edge, %nf_ct_labels_ext_add.exit.i.i176.cleanup_crit_edge, %nf_ct_ext_exist.exit.i.i10.i.i.cleanup_crit_edge, %nf_ct_labels_ext_add.exit.i.i.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ -12, %do.end ], [ -12, %do.body.cleanup_crit_edge ], [ -28, %nf_ct_ext_exist.exit.i.i10.i.i.cleanup_crit_edge ], [ -28, %nf_ct_labels_ext_add.exit.i.i.cleanup_crit_edge ], [ -22, %if.end.i192.cleanup_crit_edge ], [ 0, %if.then7.i ], [ 0, %if.end71.cleanup_crit_edge ], [ -28, %nf_ct_labels_ext_add.exit.i.i176.cleanup_crit_edge ], [ -28, %nf_ct_ext_exist.exit.i.i10.i.i183.cleanup_crit_edge ], [ %call2.i, %if.end.i185.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ovs_ct_clear(ptr nocapture noundef %skb, ptr noundef %key) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %_nfct.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 5
  %0 = ptrtoint ptr %_nfct.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %_nfct.i.i, align 8
  %and1.i = and i32 %1, -8
  %2 = inttoptr i32 %and1.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not.i = icmp eq i32 %and1.i, 0
  br i1 %tobool.not.i, label %entry.ovs_ct_fill_key.exit_crit_edge, label %land.lhs.true.i

entry.ovs_ct_fill_key.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %ovs_ct_fill_key.exit

land.lhs.true.i:                                  ; preds = %entry
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %2, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !201
  tail call void @llvm.prefetch.p0(ptr nonnull %2, i32 1, i32 3, i32 1) #13
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %2, ptr nonnull %2, i32 1, ptr nonnull elementtype(i32) %2) #13, !srcloc !202
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.ovs_ct_fill_key.exit_crit_edge, label %if.then10.i.i.i.i, !prof !203

if.end5.i.i.i.i.ovs_ct_fill_key.exit_crit_edge:   ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ovs_ct_fill_key.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @refcount_warn_saturate(ptr noundef nonnull %2, i32 noundef 3) #13
  br label %ovs_ct_fill_key.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !204
  tail call void @nf_ct_destroy(ptr noundef nonnull %2) #13
  br label %ovs_ct_fill_key.exit

ovs_ct_fill_key.exit:                             ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.ovs_ct_fill_key.exit_crit_edge, %entry.ovs_ct_fill_key.exit_crit_edge
  %slow_gro.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %4 = ptrtoint ptr %slow_gro.i.i to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %bf.load.i.i = load i32, ptr %slow_gro.i.i, align 2
  %bf.set.i.i = or i32 %bf.load.i.i, 4096
  store i32 %bf.set.i.i, ptr %slow_gro.i.i, align 2
  %5 = ptrtoint ptr %_nfct.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 7, ptr %_nfct.i.i, align 8
  tail call fastcc void @__ovs_ct_update_key(ptr noundef %key, i8 noundef zeroext 0, ptr noundef nonnull @nf_ct_zone_dflt, ptr noundef null) #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @ovs_ct_verify(ptr noundef %net, i32 noundef %attr) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.101)
  switch i32 %attr, label %if.end9 [
    i32 22, label %entry.return_crit_edge
    i32 23, label %entry.return_crit_edge13
    i32 24, label %entry.return_crit_edge14
    i32 25, label %if.then8
  ]

entry.return_crit_edge14:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge13:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.then8:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ovs_net_id to i32))
  %1 = load i32, ptr @ovs_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %1)
  %xt_label = getelementptr inbounds %struct.ovs_net, ptr %call, i32 0, i32 4
  %2 = ptrtoint ptr %xt_label to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %xt_label, align 4, !range !206
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool = icmp ne i8 %3, 0
  br label %return

if.end9:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

return:                                           ; preds = %if.end9, %if.then8, %entry.return_crit_edge, %entry.return_crit_edge13, %entry.return_crit_edge14
  %retval.0 = phi i1 [ %tobool, %if.then8 ], [ false, %if.end9 ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge13 ], [ true, %entry.return_crit_edge14 ]
  ret i1 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @net_generic(ptr noundef %net, i32 noundef %id) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %0 = tail call i32 @llvm.read_register.i32(metadata !190) #13
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !207
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.25, i32 noundef 696, ptr noundef nonnull @.str.26) #13
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %gen = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 43
  %4 = ptrtoint ptr %gen to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %gen, align 128
  %call = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end7_crit_edge

rcu_read_lock.exit.do.end7_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end7

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b9 = load i1, ptr @net_generic.__warned, align 1
  br i1 %.b9, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @net_generic.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.24, i32 noundef 45, ptr noundef nonnull @.str.10) #13
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %rcu_read_lock.exit.do.end7_crit_edge
  %arrayidx = getelementptr [0 x ptr], ptr %5, i32 0, i32 %id
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %call.i10 = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i10, label %do.end7.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i13

do.end7.rcu_read_unlock.exit_crit_edge:           ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true.i13:                                ; preds = %do.end7
  %call1.i11 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i11)
  %tobool.not.i12 = icmp eq i32 %call1.i11, 0
  br i1 %tobool.not.i12, label %land.lhs.true.i13.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i15

land.lhs.true.i13.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i13
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true2.i15:                               ; preds = %land.lhs.true.i13
  %.b4.i14 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i14, label %land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge, label %if.then.i16

land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i15
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

if.then.i16:                                      ; preds = %land.lhs.true2.i15
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.25, i32 noundef 724, ptr noundef nonnull @.str.27) #13
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i16, %land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i13.rcu_read_unlock.exit_crit_edge, %do.end7.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !208
  %8 = tail call i32 @llvm.read_register.i32(metadata !190) #13
  %and.i.i.i.i.i17 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i17 to ptr
  %preempt_count.i.i.i.i18 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i18 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i18, align 4
  %sub.i.i.i = add i32 %11, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i18, align 4
  tail call void @rcu_read_unlock_strict() #13
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  ret ptr %7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ovs_ct_copy_action(ptr noundef %net, ptr noundef %attr, ptr nocapture noundef readonly %key, ptr noundef %sfa, i1 noundef zeroext %log) local_unnamed_addr #1 align 64 {
entry:
  %ct_info = alloca %struct.ovs_conntrack_info, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 140, ptr nonnull %ct_info) #13
  %type.i = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 8, i32 4
  %0 = ptrtoint ptr %type.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -31011, i16 %1)
  %switch.selectcmp.i = icmp eq i16 %1, -31011
  %switch.select.i = select i1 %switch.selectcmp.i, i16 10, i16 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %1)
  %switch.selectcmp2.i = icmp eq i16 %1, 2048
  %switch.select3.i = select i1 %switch.selectcmp2.i, i16 2, i16 %switch.select.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %switch.select3.i)
  %cmp = icmp eq i16 %switch.select3.i, 0
  br i1 %cmp, label %do.body, label %if.end10

do.body:                                          ; preds = %entry
  br i1 %log, label %land.lhs.true, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true:                                    ; preds = %do.body
  %call3 = tail call i32 @net_ratelimit() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.cleanup_crit_edge, label %do.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #16
  br label %cleanup

if.end10:                                         ; preds = %entry
  %2 = call ptr @memset(ptr %ct_info, i32 0, i32 140)
  %family11 = getelementptr inbounds %struct.ovs_conntrack_info, ptr %ct_info, i32 0, i32 4
  %3 = ptrtoint ptr %family11 to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %switch.select3.i, ptr %family11, align 2
  %zone = getelementptr inbounds %struct.ovs_conntrack_info, ptr %ct_info, i32 0, i32 1
  %flags2.i = getelementptr inbounds %struct.ovs_conntrack_info, ptr %ct_info, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %flags2.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %flags2.i, align 2
  %dir3.i = getelementptr inbounds %struct.ovs_conntrack_info, ptr %ct_info, i32 0, i32 1, i32 2
  %5 = ptrtoint ptr %dir3.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 3, ptr %dir3.i, align 1
  %6 = ptrtoint ptr %attr to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %attr, align 2
  %conv.i.i = zext i16 %7 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -4
  call void @__sanitizer_cov_trace_const_cmp2(i16 7, i16 %7)
  %cmp.i418.i = icmp ugt i16 %7, 7
  br i1 %cmp.i418.i, label %land.lhs.true.i.lr.ph.i, label %if.end10.for.end.i_crit_edge

if.end10.for.end.i_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

land.lhs.true.i.lr.ph.i:                          ; preds = %if.end10
  %add.ptr.i.i = getelementptr i8, ptr %attr, i32 4
  %timeout.i = getelementptr inbounds %struct.ovs_conntrack_info, ptr %ct_info, i32 0, i32 8
  %have_eventmask.i = getelementptr inbounds %struct.ovs_conntrack_info, ptr %ct_info, i32 0, i32 3
  %eventmask.i = getelementptr inbounds %struct.ovs_conntrack_info, ptr %ct_info, i32 0, i32 5
  %range116.i.i = getelementptr inbounds %struct.ovs_conntrack_info, ptr %ct_info, i32 0, i32 10
  %max_proto.i.i = getelementptr inbounds %struct.ovs_conntrack_info, ptr %ct_info, i32 0, i32 10, i32 4
  %min_proto.i.i = getelementptr inbounds %struct.ovs_conntrack_info, ptr %ct_info, i32 0, i32 10, i32 3
  %max_addr.i.i = getelementptr inbounds %struct.ovs_conntrack_info, ptr %ct_info, i32 0, i32 10, i32 2
  %min_addr.i.i = getelementptr inbounds %struct.ovs_conntrack_info, ptr %ct_info, i32 0, i32 10, i32 1
  %labels83.i = getelementptr inbounds %struct.ovs_conntrack_info, ptr %ct_info, i32 0, i32 7
  %mark62.i = getelementptr inbounds %struct.ovs_conntrack_info, ptr %ct_info, i32 0, i32 6
  br label %land.lhs.true.i.i

land.lhs.true.i.i:                                ; preds = %for.inc.i.land.lhs.true.i.i_crit_edge, %land.lhs.true.i.lr.ph.i
  %helper.0 = phi ptr [ null, %land.lhs.true.i.lr.ph.i ], [ %helper.1, %for.inc.i.land.lhs.true.i.i_crit_edge ]
  %a.0420.i = phi ptr [ %add.ptr.i.i, %land.lhs.true.i.lr.ph.i ], [ %add.ptr.i310.i, %for.inc.i.land.lhs.true.i.i_crit_edge ]
  %rem.0419.i = phi i32 [ %sub.i.i, %land.lhs.true.i.lr.ph.i ], [ %sub1.i.i, %for.inc.i.land.lhs.true.i.i_crit_edge ]
  %8 = ptrtoint ptr %a.0420.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %a.0420.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %9)
  %cmp1.i.i = icmp ult i16 %9, 4
  %conv.i285.i = zext i16 %9 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %rem.0419.i, i32 %conv.i285.i)
  %cmp5.i.not.i = icmp ult i32 %rem.0419.i, %conv.i285.i
  %or.cond339.i = select i1 %cmp1.i.i, i1 true, i1 %cmp5.i.not.i
  br i1 %or.cond339.i, label %land.lhs.true.i.i.for.end.i_crit_edge, label %for.body.i

land.lhs.true.i.i.for.end.i_crit_edge:            ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.body.i:                                       ; preds = %land.lhs.true.i.i
  %nla_type.i.i = getelementptr inbounds %struct.nlattr, ptr %a.0420.i, i32 0, i32 1
  %10 = ptrtoint ptr %nla_type.i.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %nla_type.i.i, align 2
  %12 = and i16 %11, 16383
  %and.i.i = zext i16 %12 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 9, i16 %12)
  %cmp.i = icmp ugt i16 %12, 9
  br i1 %cmp.i, label %do.body.i, label %if.end12.i

do.body.i:                                        ; preds = %for.body.i
  br i1 %log, label %land.lhs.true.i, label %do.body.i.cleanup_crit_edge

do.body.i.cleanup_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true.i:                                  ; preds = %do.body.i
  %call5.i = call i32 @net_ratelimit() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %land.lhs.true.i.cleanup_crit_edge, label %do.end.i

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end.i:                                         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  %call9.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, i32 noundef %and.i.i, i32 noundef 9) #16
  br label %cleanup

if.end12.i:                                       ; preds = %for.body.i
  %arrayidx.i = getelementptr [10 x %struct.ovs_ct_len_tbl], ptr @ovs_ct_attr_lens, i32 0, i32 %and.i.i
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i, align 4
  %minlen15.i = getelementptr [10 x %struct.ovs_ct_len_tbl], ptr @ovs_ct_attr_lens, i32 0, i32 %and.i.i, i32 1
  %15 = ptrtoint ptr %minlen15.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %minlen15.i, align 4
  %sub.i287.i = add nsw i32 %conv.i285.i, -4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i287.i, i32 %16)
  %cmp17.i = icmp slt i32 %sub.i287.i, %16
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i287.i, i32 %14)
  %cmp19.i = icmp sgt i32 %sub.i287.i, %14
  %or.cond.i = select i1 %cmp17.i, i1 true, i1 %cmp19.i
  br i1 %or.cond.i, label %do.body21.i, label %if.end36.i

do.body21.i:                                      ; preds = %if.end12.i
  br i1 %log, label %land.lhs.true23.i, label %do.body21.i.cleanup_crit_edge

do.body21.i.cleanup_crit_edge:                    ; preds = %do.body21.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true23.i:                                ; preds = %do.body21.i
  %call24.i = call i32 @net_ratelimit() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i)
  %tobool25.not.i = icmp eq i32 %call24.i, 0
  br i1 %tobool25.not.i, label %land.lhs.true23.i.cleanup_crit_edge, label %do.end29.i

land.lhs.true23.i.cleanup_crit_edge:              ; preds = %land.lhs.true23.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end29.i:                                       ; preds = %land.lhs.true23.i
  call void @__sanitizer_cov_trace_pc() #15
  %17 = ptrtoint ptr %a.0420.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %a.0420.i, align 2
  %conv.i290.i = zext i16 %18 to i32
  %sub.i291.i = add nsw i32 %conv.i290.i, -4
  %call32.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, i32 noundef %and.i.i, i32 noundef %sub.i291.i, i32 noundef %14) #16
  br label %cleanup

if.end36.i:                                       ; preds = %if.end12.i
  %19 = zext i32 %and.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.102)
  switch i32 %and.i.i, label %do.body144.i [
    i32 7, label %sw.bb.i
    i32 1, label %if.end36.i.sw.bb37.i_crit_edge
    i32 2, label %sw.bb41.i
    i32 3, label %sw.bb43.i
    i32 4, label %sw.bb63.i
    i32 5, label %sw.bb86.i
    i32 6, label %sw.bb107.i
    i32 8, label %sw.bb115.i
    i32 9, label %sw.bb120.i
  ]

if.end36.i.sw.bb37.i_crit_edge:                   ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb37.i

sw.bb.i:                                          ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #15
  %20 = ptrtoint ptr %have_eventmask.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %bf.load.i = load i8, ptr %have_eventmask.i, align 4
  %bf.set.i = or i8 %bf.load.i, 8
  store i8 %bf.set.i, ptr %have_eventmask.i, align 4
  br label %sw.bb37.i

sw.bb37.i:                                        ; preds = %sw.bb.i, %if.end36.i.sw.bb37.i_crit_edge
  %21 = ptrtoint ptr %have_eventmask.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %bf.load38.i = load i8, ptr %have_eventmask.i, align 4
  %bf.set40.i = or i8 %bf.load38.i, -128
  store i8 %bf.set40.i, ptr %have_eventmask.i, align 4
  br label %for.inc.i

sw.bb41.i:                                        ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr.i.i.i = getelementptr i8, ptr %a.0420.i, i32 4
  %22 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %add.ptr.i.i.i, align 2
  %24 = ptrtoint ptr %zone to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %23, ptr %zone, align 4
  br label %for.inc.i

sw.bb43.i:                                        ; preds = %if.end36.i
  %mask.i = getelementptr i8, ptr %a.0420.i, i32 8
  %25 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %mask.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool45.not.i = icmp eq i32 %26, 0
  br i1 %tobool45.not.i, label %do.body47.i, label %cleanup.i

do.body47.i:                                      ; preds = %sw.bb43.i
  br i1 %log, label %land.lhs.true49.i, label %do.body47.i.cleanup_crit_edge

do.body47.i.cleanup_crit_edge:                    ; preds = %do.body47.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true49.i:                                ; preds = %do.body47.i
  %call50.i = call i32 @net_ratelimit() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50.i)
  %tobool51.not.i = icmp eq i32 %call50.i, 0
  br i1 %tobool51.not.i, label %land.lhs.true49.i.cleanup_crit_edge, label %do.end55.i

land.lhs.true49.i.cleanup_crit_edge:              ; preds = %land.lhs.true49.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end55.i:                                       ; preds = %land.lhs.true49.i
  call void @__sanitizer_cov_trace_pc() #15
  %call57.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34) #16
  br label %cleanup

cleanup.i:                                        ; preds = %sw.bb43.i
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr.i292.i = getelementptr i8, ptr %a.0420.i, i32 4
  %27 = ptrtoint ptr %add.ptr.i292.i to i32
  call void @__asan_loadN_noabort(i32 %27, i32 8)
  %28 = load i64, ptr %add.ptr.i292.i, align 4
  %29 = ptrtoint ptr %mark62.i to i32
  call void @__asan_storeN_noabort(i32 %29, i32 8)
  store i64 %28, ptr %mark62.i, align 4
  br label %for.inc.i

sw.bb63.i:                                        ; preds = %if.end36.i
  %add.ptr.i293.i = getelementptr i8, ptr %a.0420.i, i32 4
  %mask65.i = getelementptr i8, ptr %a.0420.i, i32 20
  %30 = ptrtoint ptr %mask65.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %mask65.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not.i.i = icmp eq i32 %31, 0
  br i1 %tobool.not.i.i, label %for.cond.i.i, label %sw.bb63.i.cleanup84.i_crit_edge

sw.bb63.i.cleanup84.i_crit_edge:                  ; preds = %sw.bb63.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup84.i

for.cond.i.i:                                     ; preds = %sw.bb63.i
  %arrayidx.1.i.i = getelementptr i8, ptr %a.0420.i, i32 24
  %32 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx.1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool.not.1.i.i = icmp eq i32 %33, 0
  br i1 %tobool.not.1.i.i, label %for.cond.1.i.i, label %for.cond.i.i.cleanup84.i_crit_edge

for.cond.i.i.cleanup84.i_crit_edge:               ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup84.i

for.cond.1.i.i:                                   ; preds = %for.cond.i.i
  %arrayidx.2.i.i = getelementptr i8, ptr %a.0420.i, i32 28
  %34 = ptrtoint ptr %arrayidx.2.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx.2.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.not.2.i.i = icmp eq i32 %35, 0
  br i1 %tobool.not.2.i.i, label %labels_nonzero.exit.i, label %for.cond.1.i.i.cleanup84.i_crit_edge

for.cond.1.i.i.cleanup84.i_crit_edge:             ; preds = %for.cond.1.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup84.i

labels_nonzero.exit.i:                            ; preds = %for.cond.1.i.i
  %arrayidx.3.i.i = getelementptr i8, ptr %a.0420.i, i32 32
  %36 = ptrtoint ptr %arrayidx.3.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx.3.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool.not.3.i.not.i = icmp eq i32 %37, 0
  br i1 %tobool.not.3.i.not.i, label %do.body68.i, label %labels_nonzero.exit.i.cleanup84.i_crit_edge

labels_nonzero.exit.i.cleanup84.i_crit_edge:      ; preds = %labels_nonzero.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup84.i

do.body68.i:                                      ; preds = %labels_nonzero.exit.i
  br i1 %log, label %land.lhs.true70.i, label %do.body68.i.cleanup_crit_edge

do.body68.i.cleanup_crit_edge:                    ; preds = %do.body68.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true70.i:                                ; preds = %do.body68.i
  %call71.i = call i32 @net_ratelimit() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71.i)
  %tobool72.not.i = icmp eq i32 %call71.i, 0
  br i1 %tobool72.not.i, label %land.lhs.true70.i.cleanup_crit_edge, label %do.end76.i

land.lhs.true70.i.cleanup_crit_edge:              ; preds = %land.lhs.true70.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end76.i:                                       ; preds = %land.lhs.true70.i
  call void @__sanitizer_cov_trace_pc() #15
  %call78.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37) #16
  br label %cleanup

cleanup84.i:                                      ; preds = %labels_nonzero.exit.i.cleanup84.i_crit_edge, %for.cond.1.i.i.cleanup84.i_crit_edge, %for.cond.i.i.cleanup84.i_crit_edge, %sw.bb63.i.cleanup84.i_crit_edge
  %38 = call ptr @memcpy(ptr %labels83.i, ptr %add.ptr.i293.i, i32 32)
  br label %for.inc.i

sw.bb86.i:                                        ; preds = %if.end36.i
  %add.ptr.i294.i = getelementptr i8, ptr %a.0420.i, i32 4
  %call89.i = call ptr @memchr(ptr noundef %add.ptr.i294.i, i32 noundef 0, i32 noundef %sub.i287.i) #17
  %tobool90.not.i = icmp eq ptr %call89.i, null
  br i1 %tobool90.not.i, label %do.body92.i, label %sw.bb86.i.for.inc.i_crit_edge

sw.bb86.i.for.inc.i_crit_edge:                    ; preds = %sw.bb86.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

do.body92.i:                                      ; preds = %sw.bb86.i
  br i1 %log, label %land.lhs.true94.i, label %do.body92.i.cleanup_crit_edge

do.body92.i.cleanup_crit_edge:                    ; preds = %do.body92.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true94.i:                                ; preds = %do.body92.i
  %call95.i = call i32 @net_ratelimit() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call95.i)
  %tobool96.not.i = icmp eq i32 %call95.i, 0
  br i1 %tobool96.not.i, label %land.lhs.true94.i.cleanup_crit_edge, label %do.end100.i

land.lhs.true94.i.cleanup_crit_edge:              ; preds = %land.lhs.true94.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end100.i:                                      ; preds = %land.lhs.true94.i
  call void @__sanitizer_cov_trace_pc() #15
  %call102.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40) #16
  br label %cleanup

sw.bb107.i:                                       ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 7, i16 %9)
  %cmp.i353.i.i = icmp ugt i16 %9, 7
  br i1 %cmp.i353.i.i, label %land.lhs.true.i.lr.ph.i.i, label %sw.bb107.i.for.end.i.i_crit_edge

sw.bb107.i.for.end.i.i_crit_edge:                 ; preds = %sw.bb107.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i.i

land.lhs.true.i.lr.ph.i.i:                        ; preds = %sw.bb107.i
  %add.ptr.i.i297.i = getelementptr i8, ptr %a.0420.i, i32 4
  %39 = ptrtoint ptr %family11 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %family11, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %40)
  %cmp.i298.i = icmp eq i16 %40, 10
  %idxprom.i.i = zext i1 %cmp.i298.i to i32
  br label %land.lhs.true.i.i.i

land.lhs.true.i.i.i:                              ; preds = %for.inc.i.i.land.lhs.true.i.i.i_crit_edge, %land.lhs.true.i.lr.ph.i.i
  %a.0357.i.i = phi ptr [ %add.ptr.i.i297.i, %land.lhs.true.i.lr.ph.i.i ], [ %add.ptr.i315.i.i, %for.inc.i.i.land.lhs.true.i.i.i_crit_edge ]
  %have_ip_max.0.off0356.i.i = phi i1 [ false, %land.lhs.true.i.lr.ph.i.i ], [ %have_ip_max.2.off0.i.i, %for.inc.i.i.land.lhs.true.i.i.i_crit_edge ]
  %have_proto_max.0.off0355.i.i = phi i1 [ false, %land.lhs.true.i.lr.ph.i.i ], [ %have_proto_max.2.off0.i.i, %for.inc.i.i.land.lhs.true.i.i.i_crit_edge ]
  %rem.0354.i.i = phi i32 [ %sub.i287.i, %land.lhs.true.i.lr.ph.i.i ], [ %sub1.i.i.i, %for.inc.i.i.land.lhs.true.i.i.i_crit_edge ]
  %41 = ptrtoint ptr %a.0357.i.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %a.0357.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %42)
  %cmp1.i.i.i = icmp ult i16 %42, 4
  %conv.i306.i.i = zext i16 %42 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %rem.0354.i.i, i32 %conv.i306.i.i)
  %cmp5.i.not.i.i = icmp ult i32 %rem.0354.i.i, %conv.i306.i.i
  %or.cond.i.i = select i1 %cmp1.i.i.i, i1 true, i1 %cmp5.i.not.i.i
  br i1 %or.cond.i.i, label %land.lhs.true.i.i.i.do.body138.i.i_crit_edge, label %for.body.i.i

land.lhs.true.i.i.i.do.body138.i.i_crit_edge:     ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body138.i.i

for.body.i.i:                                     ; preds = %land.lhs.true.i.i.i
  %nla_type.i.i.i = getelementptr inbounds %struct.nlattr, ptr %a.0357.i.i, i32 0, i32 1
  %43 = ptrtoint ptr %nla_type.i.i.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %nla_type.i.i.i, align 2
  %45 = and i16 %44, 16383
  %and.i.i.i = zext i16 %45 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 9, i16 %45)
  %cmp6.i.i = icmp ugt i16 %45, 9
  br i1 %cmp6.i.i, label %do.body.i.i, label %if.end17.i.i

do.body.i.i:                                      ; preds = %for.body.i.i
  br i1 %log, label %land.lhs.true.i299.i, label %do.body.i.i.cleanup_crit_edge

do.body.i.i.cleanup_crit_edge:                    ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true.i299.i:                             ; preds = %do.body.i.i
  %call10.i.i = call i32 @net_ratelimit() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i.i)
  %tobool11.not.i.i = icmp eq i32 %call10.i.i, 0
  br i1 %tobool11.not.i.i, label %land.lhs.true.i299.i.cleanup_crit_edge, label %do.end.i.i

land.lhs.true.i299.i.cleanup_crit_edge:           ; preds = %land.lhs.true.i299.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end.i.i:                                       ; preds = %land.lhs.true.i299.i
  call void @__sanitizer_cov_trace_pc() #15
  %call14.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, i32 noundef %and.i.i.i, i32 noundef 9) #16
  br label %cleanup

if.end17.i.i:                                     ; preds = %for.body.i.i
  %sub.i308.i.i = add nsw i32 %conv.i306.i.i, -4
  %arrayidx20.i.i = getelementptr [10 x [2 x i32]], ptr @parse_nat.ovs_nat_attr_lens, i32 0, i32 %and.i.i.i, i32 %idxprom.i.i
  %46 = ptrtoint ptr %arrayidx20.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx20.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i308.i.i, i32 %47)
  %cmp21.not.i.i = icmp eq i32 %sub.i308.i.i, %47
  br i1 %cmp21.not.i.i, label %if.end44.i.i, label %do.body24.i.i

do.body24.i.i:                                    ; preds = %if.end17.i.i
  br i1 %log, label %land.lhs.true27.i.i, label %do.body24.i.i.cleanup_crit_edge

do.body24.i.i.cleanup_crit_edge:                  ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true27.i.i:                              ; preds = %do.body24.i.i
  %call28.i.i = call i32 @net_ratelimit() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i.i)
  %tobool29.not.i.i = icmp eq i32 %call28.i.i, 0
  br i1 %tobool29.not.i.i, label %land.lhs.true27.i.i.cleanup_crit_edge, label %do.end33.i.i

land.lhs.true27.i.i.cleanup_crit_edge:            ; preds = %land.lhs.true27.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end33.i.i:                                     ; preds = %land.lhs.true27.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %48 = ptrtoint ptr %a.0357.i.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %a.0357.i.i, align 2
  %conv.i309.i.i = zext i16 %49 to i32
  %sub.i310.i.i = add nsw i32 %conv.i309.i.i, -4
  %call40.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, i32 noundef %and.i.i.i, i32 noundef %sub.i310.i.i, i32 noundef %47) #16
  br label %cleanup

if.end44.i.i:                                     ; preds = %if.end17.i.i
  %50 = zext i32 %and.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %50, ptr @__sancov_gen_cov_switch_values.103)
  switch i32 %and.i.i.i, label %do.body119.i.i [
    i32 1, label %if.end44.i.i.sw.bb.i.i_crit_edge
    i32 2, label %if.end44.i.i.sw.bb.i.i_crit_edge511
    i32 3, label %sw.bb85.i.i
    i32 4, label %sw.bb89.i.i
    i32 5, label %sw.bb95.i.i
    i32 6, label %sw.bb101.i.i
    i32 7, label %sw.bb107.i.i
    i32 8, label %sw.bb111.i.i
    i32 9, label %sw.bb115.i.i
  ]

if.end44.i.i.sw.bb.i.i_crit_edge511:              ; preds = %if.end44.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb.i.i

if.end44.i.i.sw.bb.i.i_crit_edge:                 ; preds = %if.end44.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb.i.i

sw.bb.i.i:                                        ; preds = %if.end44.i.i.sw.bb.i.i_crit_edge, %if.end44.i.i.sw.bb.i.i_crit_edge511
  %51 = ptrtoint ptr %have_eventmask.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %bf.load.i.i = load i8, ptr %have_eventmask.i, align 4
  %52 = and i8 %bf.load.i.i, 112
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool45.not.i.i = icmp eq i8 %52, 0
  br i1 %tobool45.not.i.i, label %if.end62.i.i, label %do.body47.i.i

do.body47.i.i:                                    ; preds = %sw.bb.i.i
  br i1 %log, label %land.lhs.true50.i.i, label %do.body47.i.i.cleanup_crit_edge

do.body47.i.i.cleanup_crit_edge:                  ; preds = %do.body47.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true50.i.i:                              ; preds = %do.body47.i.i
  %call51.i.i = call i32 @net_ratelimit() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51.i.i)
  %tobool52.not.i.i = icmp eq i32 %call51.i.i, 0
  br i1 %tobool52.not.i.i, label %land.lhs.true50.i.i.cleanup_crit_edge, label %do.end56.i.i

land.lhs.true50.i.i.cleanup_crit_edge:            ; preds = %land.lhs.true50.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end56.i.i:                                     ; preds = %land.lhs.true50.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call58.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63) #16
  br label %cleanup

if.end62.i.i:                                     ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %bf.clear70.i.i = and i8 %bf.load.i.i, -113
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %45)
  %cmp71.i.i = icmp eq i16 %45, 1
  %conv79.i.i = select i1 %cmp71.i.i, i8 48, i8 80
  %bf.set84.i.i = or i8 %bf.clear70.i.i, %conv79.i.i
  %53 = ptrtoint ptr %have_eventmask.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %bf.set84.i.i, ptr %have_eventmask.i, align 4
  br label %for.inc.i.i

sw.bb85.i.i:                                      ; preds = %if.end44.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call86.i.i = call i32 @nla_memcpy(ptr noundef %min_addr.i.i, ptr noundef %a.0357.i.i, i32 noundef 16) #13
  %54 = ptrtoint ptr %range116.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %range116.i.i, align 4
  %or88.i.i = or i32 %55, 1
  store i32 %or88.i.i, ptr %range116.i.i, align 4
  br label %for.inc.i.i

sw.bb89.i.i:                                      ; preds = %if.end44.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call91.i.i = call i32 @nla_memcpy(ptr noundef %max_addr.i.i, ptr noundef %a.0357.i.i, i32 noundef 16) #13
  %56 = ptrtoint ptr %range116.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %range116.i.i, align 4
  %or94.i.i = or i32 %57, 1
  store i32 %or94.i.i, ptr %range116.i.i, align 4
  br label %for.inc.i.i

sw.bb95.i.i:                                      ; preds = %if.end44.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr.i.i.i.i = getelementptr i8, ptr %a.0357.i.i, i32 4
  %58 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %add.ptr.i.i.i.i, align 2
  %60 = ptrtoint ptr %min_proto.i.i to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %59, ptr %min_proto.i.i, align 4
  %61 = ptrtoint ptr %range116.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %range116.i.i, align 4
  %or100.i.i = or i32 %62, 2
  store i32 %or100.i.i, ptr %range116.i.i, align 4
  br label %for.inc.i.i

sw.bb101.i.i:                                     ; preds = %if.end44.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr.i.i311.i.i = getelementptr i8, ptr %a.0357.i.i, i32 4
  %63 = ptrtoint ptr %add.ptr.i.i311.i.i to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %add.ptr.i.i311.i.i, align 2
  %65 = ptrtoint ptr %max_proto.i.i to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %64, ptr %max_proto.i.i, align 2
  %66 = ptrtoint ptr %range116.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %range116.i.i, align 4
  %or106.i.i = or i32 %67, 2
  store i32 %or106.i.i, ptr %range116.i.i, align 4
  br label %for.inc.i.i

sw.bb107.i.i:                                     ; preds = %if.end44.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %68 = ptrtoint ptr %range116.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %range116.i.i, align 4
  %or110.i.i = or i32 %69, 8
  store i32 %or110.i.i, ptr %range116.i.i, align 4
  br label %for.inc.i.i

sw.bb111.i.i:                                     ; preds = %if.end44.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %70 = ptrtoint ptr %range116.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %range116.i.i, align 4
  %or114.i.i = or i32 %71, 4
  store i32 %or114.i.i, ptr %range116.i.i, align 4
  br label %for.inc.i.i

sw.bb115.i.i:                                     ; preds = %if.end44.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %72 = ptrtoint ptr %range116.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %range116.i.i, align 4
  %or118.i.i = or i32 %73, 16
  store i32 %or118.i.i, ptr %range116.i.i, align 4
  br label %for.inc.i.i

do.body119.i.i:                                   ; preds = %if.end44.i.i
  br i1 %log, label %land.lhs.true122.i.i, label %do.body119.i.i.cleanup_crit_edge

do.body119.i.i.cleanup_crit_edge:                 ; preds = %do.body119.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true122.i.i:                             ; preds = %do.body119.i.i
  %call123.i.i = call i32 @net_ratelimit() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call123.i.i)
  %tobool124.not.i.i = icmp eq i32 %call123.i.i, 0
  br i1 %tobool124.not.i.i, label %land.lhs.true122.i.i.cleanup_crit_edge, label %do.end128.i.i

land.lhs.true122.i.i.cleanup_crit_edge:           ; preds = %land.lhs.true122.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end128.i.i:                                    ; preds = %land.lhs.true122.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call130.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, i32 noundef %and.i.i.i) #16
  br label %cleanup

for.inc.i.i:                                      ; preds = %sw.bb115.i.i, %sw.bb111.i.i, %sw.bb107.i.i, %sw.bb101.i.i, %sw.bb95.i.i, %sw.bb89.i.i, %sw.bb85.i.i, %if.end62.i.i
  %have_proto_max.2.off0.i.i = phi i1 [ %have_proto_max.0.off0355.i.i, %sw.bb115.i.i ], [ %have_proto_max.0.off0355.i.i, %sw.bb111.i.i ], [ %have_proto_max.0.off0355.i.i, %sw.bb107.i.i ], [ true, %sw.bb101.i.i ], [ %have_proto_max.0.off0355.i.i, %sw.bb95.i.i ], [ %have_proto_max.0.off0355.i.i, %sw.bb89.i.i ], [ %have_proto_max.0.off0355.i.i, %sw.bb85.i.i ], [ %have_proto_max.0.off0355.i.i, %if.end62.i.i ]
  %have_ip_max.2.off0.i.i = phi i1 [ %have_ip_max.0.off0356.i.i, %sw.bb115.i.i ], [ %have_ip_max.0.off0356.i.i, %sw.bb111.i.i ], [ %have_ip_max.0.off0356.i.i, %sw.bb107.i.i ], [ %have_ip_max.0.off0356.i.i, %sw.bb101.i.i ], [ %have_ip_max.0.off0356.i.i, %sw.bb95.i.i ], [ true, %sw.bb89.i.i ], [ %have_ip_max.0.off0356.i.i, %sw.bb85.i.i ], [ %have_ip_max.0.off0356.i.i, %if.end62.i.i ]
  %74 = ptrtoint ptr %a.0357.i.i to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %a.0357.i.i, align 2
  %conv.i312.i.i = zext i16 %75 to i32
  %sub.i313.i.i = add nuw nsw i32 %conv.i312.i.i, 3
  %and.i314.i.i = and i32 %sub.i313.i.i, 131068
  %sub1.i.i.i = sub nsw i32 %rem.0354.i.i, %and.i314.i.i
  %add.ptr.i315.i.i = getelementptr i8, ptr %a.0357.i.i, i32 %and.i314.i.i
  %cmp.i.i.i = icmp sgt i32 %sub1.i.i.i, 3
  br i1 %cmp.i.i.i, label %for.inc.i.i.land.lhs.true.i.i.i_crit_edge, label %for.inc.i.i.for.end.i.i_crit_edge

for.inc.i.i.for.end.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i.i

for.inc.i.i.land.lhs.true.i.i.i_crit_edge:        ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true.i.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i.for.end.i.i_crit_edge, %sw.bb107.i.for.end.i.i_crit_edge
  %rem.0.lcssa.i.i = phi i32 [ %sub.i287.i, %sw.bb107.i.for.end.i.i_crit_edge ], [ %sub1.i.i.i, %for.inc.i.i.for.end.i.i_crit_edge ]
  %have_proto_max.0.off0.lcssa.i.i = phi i1 [ false, %sw.bb107.i.for.end.i.i_crit_edge ], [ %have_proto_max.2.off0.i.i, %for.inc.i.i.for.end.i.i_crit_edge ]
  %have_ip_max.0.off0.lcssa.i.i = phi i1 [ false, %sw.bb107.i.for.end.i.i_crit_edge ], [ %have_ip_max.2.off0.i.i, %for.inc.i.i.for.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.0.lcssa.i.i)
  %cmp135.i.i = icmp sgt i32 %rem.0.lcssa.i.i, 0
  br i1 %cmp135.i.i, label %for.end.i.i.do.body138.i.i_crit_edge, label %if.end153.i.i

for.end.i.i.do.body138.i.i_crit_edge:             ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body138.i.i

do.body138.i.i:                                   ; preds = %for.end.i.i.do.body138.i.i_crit_edge, %land.lhs.true.i.i.i.do.body138.i.i_crit_edge
  %rem.0347.i.i = phi i32 [ %rem.0354.i.i, %land.lhs.true.i.i.i.do.body138.i.i_crit_edge ], [ %rem.0.lcssa.i.i, %for.end.i.i.do.body138.i.i_crit_edge ]
  br i1 %log, label %land.lhs.true141.i.i, label %do.body138.i.i.cleanup_crit_edge

do.body138.i.i.cleanup_crit_edge:                 ; preds = %do.body138.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true141.i.i:                             ; preds = %do.body138.i.i
  %call142.i.i = call i32 @net_ratelimit() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call142.i.i)
  %tobool143.not.i.i = icmp eq i32 %call142.i.i, 0
  br i1 %tobool143.not.i.i, label %land.lhs.true141.i.i.cleanup_crit_edge, label %do.end147.i.i

land.lhs.true141.i.i.cleanup_crit_edge:           ; preds = %land.lhs.true141.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end147.i.i:                                    ; preds = %land.lhs.true141.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call149.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, i32 noundef %rem.0347.i.i) #16
  br label %cleanup

if.end153.i.i:                                    ; preds = %for.end.i.i
  %76 = ptrtoint ptr %have_eventmask.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %bf.load155.i.i = load i8, ptr %have_eventmask.i, align 4
  %77 = and i8 %bf.load155.i.i, 112
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %tobool158.not.i.i = icmp eq i8 %77, 0
  br i1 %tobool158.not.i.i, label %if.then159.i.i, label %if.else.i.i

if.then159.i.i:                                   ; preds = %if.end153.i.i
  %78 = ptrtoint ptr %range116.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %range116.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %tobool162.not.i.i = icmp eq i32 %79, 0
  br i1 %tobool162.not.i.i, label %if.end179.i.i, label %do.body164.i.i

do.body164.i.i:                                   ; preds = %if.then159.i.i
  br i1 %log, label %land.lhs.true167.i.i, label %do.body164.i.i.cleanup_crit_edge

do.body164.i.i.cleanup_crit_edge:                 ; preds = %do.body164.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true167.i.i:                             ; preds = %do.body164.i.i
  %call168.i.i = call i32 @net_ratelimit() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call168.i.i)
  %tobool169.not.i.i = icmp eq i32 %call168.i.i, 0
  br i1 %tobool169.not.i.i, label %land.lhs.true167.i.i.cleanup_crit_edge, label %do.end173.i.i

land.lhs.true167.i.i.cleanup_crit_edge:           ; preds = %land.lhs.true167.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end173.i.i:                                    ; preds = %land.lhs.true167.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call175.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72) #16
  br label %cleanup

if.end179.i.i:                                    ; preds = %if.then159.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %bf.clear182.i.i = and i8 %bf.load155.i.i, -113
  %bf.set183.i.i = or i8 %bf.clear182.i.i, 16
  %80 = ptrtoint ptr %have_eventmask.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %bf.set183.i.i, ptr %have_eventmask.i, align 4
  br label %if.end204.i.i

if.else.i.i:                                      ; preds = %if.end153.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load155.i.i)
  %tobool186.not.i.i = icmp sgt i8 %bf.load155.i.i, -1
  br i1 %tobool186.not.i.i, label %do.body188.i.i, label %if.else.i.i.if.end204.i.i_crit_edge

if.else.i.i.if.end204.i.i_crit_edge:              ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end204.i.i

do.body188.i.i:                                   ; preds = %if.else.i.i
  br i1 %log, label %land.lhs.true191.i.i, label %do.body188.i.i.cleanup_crit_edge

do.body188.i.i.cleanup_crit_edge:                 ; preds = %do.body188.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true191.i.i:                             ; preds = %do.body188.i.i
  %call192.i.i = call i32 @net_ratelimit() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call192.i.i)
  %tobool193.not.i.i = icmp eq i32 %call192.i.i, 0
  br i1 %tobool193.not.i.i, label %land.lhs.true191.i.i.cleanup_crit_edge, label %do.end197.i.i

land.lhs.true191.i.i.cleanup_crit_edge:           ; preds = %land.lhs.true191.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end197.i.i:                                    ; preds = %land.lhs.true191.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call199.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75) #16
  br label %cleanup

if.end204.i.i:                                    ; preds = %if.else.i.i.if.end204.i.i_crit_edge, %if.end179.i.i
  %81 = ptrtoint ptr %range116.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %range116.i.i, align 4
  %and.i300.i = and i32 %82, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i300.i)
  %tobool207.not.i.i = icmp eq i32 %and.i300.i, 0
  %brmerge.i.i = select i1 %tobool207.not.i.i, i1 true, i1 %have_ip_max.0.off0.lcssa.i.i
  br i1 %brmerge.i.i, label %if.end204.i.i.if.end215.i.i_crit_edge, label %if.then210.i.i

if.end204.i.i.if.end215.i.i_crit_edge:            ; preds = %if.end204.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end215.i.i

if.then210.i.i:                                   ; preds = %if.end204.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %83 = call ptr @memcpy(ptr %max_addr.i.i, ptr %min_addr.i.i, i32 16)
  br label %if.end215.i.i

if.end215.i.i:                                    ; preds = %if.then210.i.i, %if.end204.i.i.if.end215.i.i_crit_edge
  %and218.i.i = and i32 %82, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and218.i.i)
  %tobool219.not.i.i = icmp eq i32 %and218.i.i, 0
  %brmerge305.i.i = select i1 %tobool219.not.i.i, i1 true, i1 %have_proto_max.0.off0.lcssa.i.i
  br i1 %brmerge305.i.i, label %if.end215.i.i.for.inc.i_crit_edge, label %if.then222.i.i

if.end215.i.i.for.inc.i_crit_edge:                ; preds = %if.end215.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

if.then222.i.i:                                   ; preds = %if.end215.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %84 = ptrtoint ptr %min_proto.i.i to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %min_proto.i.i, align 4
  %86 = ptrtoint ptr %max_proto.i.i to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 %85, ptr %max_proto.i.i, align 2
  br label %for.inc.i

sw.bb115.i:                                       ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #15
  %87 = ptrtoint ptr %have_eventmask.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %bf.load116.i = load i8, ptr %have_eventmask.i, align 4
  %bf.set118.i = or i8 %bf.load116.i, 4
  store i8 %bf.set118.i, ptr %have_eventmask.i, align 4
  %add.ptr.i.i301.i = getelementptr i8, ptr %a.0420.i, i32 4
  %88 = ptrtoint ptr %add.ptr.i.i301.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %add.ptr.i.i301.i, align 4
  %90 = ptrtoint ptr %eventmask.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %89, ptr %eventmask.i, align 4
  br label %for.inc.i

sw.bb120.i:                                       ; preds = %if.end36.i
  %add.ptr.i302.i = getelementptr i8, ptr %a.0420.i, i32 4
  %91 = call ptr @memcpy(ptr %timeout.i, ptr %add.ptr.i302.i, i32 %sub.i287.i)
  %call126.i = call ptr @memchr(ptr noundef %timeout.i, i32 noundef 0, i32 noundef %sub.i287.i) #17
  %tobool127.not.i = icmp eq ptr %call126.i, null
  br i1 %tobool127.not.i, label %do.body129.i, label %sw.bb120.i.for.inc.i_crit_edge

sw.bb120.i.for.inc.i_crit_edge:                   ; preds = %sw.bb120.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

do.body129.i:                                     ; preds = %sw.bb120.i
  br i1 %log, label %land.lhs.true131.i, label %do.body129.i.cleanup_crit_edge

do.body129.i.cleanup_crit_edge:                   ; preds = %do.body129.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true131.i:                               ; preds = %do.body129.i
  %call132.i = call i32 @net_ratelimit() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call132.i)
  %tobool133.not.i = icmp eq i32 %call132.i, 0
  br i1 %tobool133.not.i, label %land.lhs.true131.i.cleanup_crit_edge, label %do.end137.i

land.lhs.true131.i.cleanup_crit_edge:             ; preds = %land.lhs.true131.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end137.i:                                      ; preds = %land.lhs.true131.i
  call void @__sanitizer_cov_trace_pc() #15
  %call139.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43) #16
  br label %cleanup

do.body144.i:                                     ; preds = %if.end36.i
  br i1 %log, label %land.lhs.true146.i, label %do.body144.i.cleanup_crit_edge

do.body144.i.cleanup_crit_edge:                   ; preds = %do.body144.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true146.i:                               ; preds = %do.body144.i
  %call147.i = call i32 @net_ratelimit() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call147.i)
  %tobool148.not.i = icmp eq i32 %call147.i, 0
  br i1 %tobool148.not.i, label %land.lhs.true146.i.cleanup_crit_edge, label %do.end152.i

land.lhs.true146.i.cleanup_crit_edge:             ; preds = %land.lhs.true146.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end152.i:                                      ; preds = %land.lhs.true146.i
  call void @__sanitizer_cov_trace_pc() #15
  %call154.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, i32 noundef %and.i.i) #16
  br label %cleanup

for.inc.i:                                        ; preds = %sw.bb120.i.for.inc.i_crit_edge, %sw.bb115.i, %if.then222.i.i, %if.end215.i.i.for.inc.i_crit_edge, %sw.bb86.i.for.inc.i_crit_edge, %cleanup84.i, %cleanup.i, %sw.bb41.i, %sw.bb37.i
  %helper.1 = phi ptr [ %helper.0, %sw.bb120.i.for.inc.i_crit_edge ], [ %helper.0, %sw.bb115.i ], [ %helper.0, %if.end215.i.i.for.inc.i_crit_edge ], [ %helper.0, %if.then222.i.i ], [ %add.ptr.i294.i, %sw.bb86.i.for.inc.i_crit_edge ], [ %helper.0, %cleanup84.i ], [ %helper.0, %cleanup.i ], [ %helper.0, %sw.bb41.i ], [ %helper.0, %sw.bb37.i ]
  %92 = ptrtoint ptr %a.0420.i to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %a.0420.i, align 2
  %conv.i307.i = zext i16 %93 to i32
  %sub.i308.i = add nuw nsw i32 %conv.i307.i, 3
  %and.i309.i = and i32 %sub.i308.i, 131068
  %sub1.i.i = sub i32 %rem.0419.i, %and.i309.i
  %add.ptr.i310.i = getelementptr i8, ptr %a.0420.i, i32 %and.i309.i
  %cmp.i.i = icmp sgt i32 %sub1.i.i, 3
  br i1 %cmp.i.i, label %for.inc.i.land.lhs.true.i.i_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.inc.i.land.lhs.true.i.i_crit_edge:            ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true.i.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %land.lhs.true.i.i.for.end.i_crit_edge, %if.end10.for.end.i_crit_edge
  %helper.2 = phi ptr [ null, %if.end10.for.end.i_crit_edge ], [ %helper.1, %for.inc.i.for.end.i_crit_edge ], [ %helper.0, %land.lhs.true.i.i.for.end.i_crit_edge ]
  %rem.0.lcssa.i = phi i32 [ %sub.i.i, %if.end10.for.end.i_crit_edge ], [ %sub1.i.i, %for.inc.i.for.end.i_crit_edge ], [ %rem.0419.i, %land.lhs.true.i.i.for.end.i_crit_edge ]
  %commit163.i = getelementptr inbounds %struct.ovs_conntrack_info, ptr %ct_info, i32 0, i32 3
  %94 = ptrtoint ptr %commit163.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %bf.load164.i = load i8, ptr %commit163.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load164.i)
  %tobool165.not.i = icmp sgt i8 %bf.load164.i, -1
  br i1 %tobool165.not.i, label %land.lhs.true166.i, label %for.end.i.if.end209.i_crit_edge

for.end.i.if.end209.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end209.i

land.lhs.true166.i:                               ; preds = %for.end.i
  %mask168.i = getelementptr inbounds %struct.ovs_conntrack_info, ptr %ct_info, i32 0, i32 6, i32 1
  %95 = ptrtoint ptr %mask168.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %mask168.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %tobool169.not.i = icmp eq i32 %96, 0
  br i1 %tobool169.not.i, label %land.lhs.true190.i, label %do.body171.i

do.body171.i:                                     ; preds = %land.lhs.true166.i
  br i1 %log, label %land.lhs.true173.i, label %do.body171.i.cleanup_crit_edge

do.body171.i.cleanup_crit_edge:                   ; preds = %do.body171.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true173.i:                               ; preds = %do.body171.i
  %call174.i = call i32 @net_ratelimit() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call174.i)
  %tobool175.not.i = icmp eq i32 %call174.i, 0
  br i1 %tobool175.not.i, label %land.lhs.true173.i.cleanup_crit_edge, label %do.end179.i

land.lhs.true173.i.cleanup_crit_edge:             ; preds = %land.lhs.true173.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end179.i:                                      ; preds = %land.lhs.true173.i
  call void @__sanitizer_cov_trace_pc() #15
  %call181.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49) #16
  br label %cleanup

land.lhs.true190.i:                               ; preds = %land.lhs.true166.i
  %mask192.i = getelementptr inbounds %struct.ovs_conntrack_info, ptr %ct_info, i32 0, i32 7, i32 1
  %97 = ptrtoint ptr %mask192.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %mask192.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %tobool.not.i311.i = icmp eq i32 %98, 0
  br i1 %tobool.not.i311.i, label %for.cond.i314.i, label %land.lhs.true190.i.do.body195.i_crit_edge

land.lhs.true190.i.do.body195.i_crit_edge:        ; preds = %land.lhs.true190.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body195.i

for.cond.i314.i:                                  ; preds = %land.lhs.true190.i
  %arrayidx.1.i312.i = getelementptr inbounds %struct.ovs_conntrack_info, ptr %ct_info, i32 0, i32 7, i32 1, i32 0, i32 0, i32 1
  %99 = ptrtoint ptr %arrayidx.1.i312.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %arrayidx.1.i312.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %tobool.not.1.i313.i = icmp eq i32 %100, 0
  br i1 %tobool.not.1.i313.i, label %for.cond.1.i317.i, label %for.cond.i314.i.do.body195.i_crit_edge

for.cond.i314.i.do.body195.i_crit_edge:           ; preds = %for.cond.i314.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body195.i

for.cond.1.i317.i:                                ; preds = %for.cond.i314.i
  %arrayidx.2.i315.i = getelementptr inbounds %struct.ovs_conntrack_info, ptr %ct_info, i32 0, i32 7, i32 1, i32 0, i32 0, i32 2
  %101 = ptrtoint ptr %arrayidx.2.i315.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %arrayidx.2.i315.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %102)
  %tobool.not.2.i316.i = icmp eq i32 %102, 0
  br i1 %tobool.not.2.i316.i, label %labels_nonzero.exit322.i, label %for.cond.1.i317.i.do.body195.i_crit_edge

for.cond.1.i317.i.do.body195.i_crit_edge:         ; preds = %for.cond.1.i317.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body195.i

labels_nonzero.exit322.i:                         ; preds = %for.cond.1.i317.i
  %arrayidx.3.i318.i = getelementptr inbounds %struct.ovs_conntrack_info, ptr %ct_info, i32 0, i32 7, i32 1, i32 0, i32 0, i32 3
  %103 = ptrtoint ptr %arrayidx.3.i318.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %arrayidx.3.i318.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %104)
  %tobool.not.3.i319.not.i = icmp eq i32 %104, 0
  br i1 %tobool.not.3.i319.not.i, label %labels_nonzero.exit322.i.if.end209.i_crit_edge, label %labels_nonzero.exit322.i.do.body195.i_crit_edge

labels_nonzero.exit322.i.do.body195.i_crit_edge:  ; preds = %labels_nonzero.exit322.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body195.i

labels_nonzero.exit322.i.if.end209.i_crit_edge:   ; preds = %labels_nonzero.exit322.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end209.i

do.body195.i:                                     ; preds = %labels_nonzero.exit322.i.do.body195.i_crit_edge, %for.cond.1.i317.i.do.body195.i_crit_edge, %for.cond.i314.i.do.body195.i_crit_edge, %land.lhs.true190.i.do.body195.i_crit_edge
  br i1 %log, label %land.lhs.true197.i, label %do.body195.i.cleanup_crit_edge

do.body195.i.cleanup_crit_edge:                   ; preds = %do.body195.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true197.i:                               ; preds = %do.body195.i
  %call198.i = call i32 @net_ratelimit() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call198.i)
  %tobool199.not.i = icmp eq i32 %call198.i, 0
  br i1 %tobool199.not.i, label %land.lhs.true197.i.cleanup_crit_edge, label %do.end203.i

land.lhs.true197.i.cleanup_crit_edge:             ; preds = %land.lhs.true197.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end203.i:                                      ; preds = %land.lhs.true197.i
  call void @__sanitizer_cov_trace_pc() #15
  %call205.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52) #16
  br label %cleanup

if.end209.i:                                      ; preds = %labels_nonzero.exit322.i.if.end209.i_crit_edge, %for.end.i.if.end209.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %rem.0.lcssa.i)
  %cmp210.i = icmp slt i32 %rem.0.lcssa.i, 1
  %log.not.i = xor i1 %log, true
  %brmerge.i = or i1 %cmp210.i, %log.not.i
  br i1 %brmerge.i, label %parse_ct.exit, label %land.lhs.true214.i

land.lhs.true214.i:                               ; preds = %if.end209.i
  %call215.i = call i32 @net_ratelimit() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call215.i)
  %tobool216.not.i = icmp eq i32 %call215.i, 0
  br i1 %tobool216.not.i, label %land.lhs.true214.i.cleanup_crit_edge, label %do.end220.i

land.lhs.true214.i.cleanup_crit_edge:             ; preds = %land.lhs.true214.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end220.i:                                      ; preds = %land.lhs.true214.i
  call void @__sanitizer_cov_trace_pc() #15
  %call222.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, i32 noundef %rem.0.lcssa.i) #16
  br label %cleanup

parse_ct.exit:                                    ; preds = %if.end209.i
  br i1 %cmp210.i, label %if.end17, label %parse_ct.exit.cleanup_crit_edge

parse_ct.exit.cleanup_crit_edge:                  ; preds = %parse_ct.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end17:                                         ; preds = %parse_ct.exit
  %call19 = call ptr @nf_ct_tmpl_alloc(ptr noundef %net, ptr noundef %zone, i32 noundef 3264) #13
  %ct = getelementptr inbounds %struct.ovs_conntrack_info, ptr %ct_info, i32 0, i32 2
  %105 = ptrtoint ptr %ct to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %call19, ptr %ct, align 4
  %tobool21.not = icmp eq ptr %call19, null
  br i1 %tobool21.not, label %do.body23, label %if.end38

do.body23:                                        ; preds = %if.end17
  br i1 %log, label %land.lhs.true26, label %do.body23.cleanup_crit_edge

do.body23.cleanup_crit_edge:                      ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true26:                                  ; preds = %do.body23
  %call27 = call i32 @net_ratelimit() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %land.lhs.true26.cleanup_crit_edge, label %do.end32

land.lhs.true26.cleanup_crit_edge:                ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end32:                                         ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #15
  %call34 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #16
  br label %cleanup

if.end38:                                         ; preds = %if.end17
  %timeout = getelementptr inbounds %struct.ovs_conntrack_info, ptr %ct_info, i32 0, i32 8
  %106 = ptrtoint ptr %timeout to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %107)
  %tobool39.not = icmp eq i8 %107, 0
  br i1 %tobool39.not, label %if.end38.if.end79_crit_edge, label %if.then40

if.end38.if.end79_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end79

if.then40:                                        ; preds = %if.end38
  %conv42 = trunc i16 %switch.select3.i to i8
  %108 = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 11
  %109 = ptrtoint ptr %108 to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %108, align 4
  %call44 = call i32 @nf_ct_set_timeout(ptr noundef %net, ptr noundef nonnull %call19, i8 noundef zeroext %conv42, i8 noundef zeroext %110, ptr noundef %timeout) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.else, label %if.then46

if.then46:                                        ; preds = %if.then40
  %call47 = call i32 @___ratelimit(ptr noundef nonnull @ovs_ct_copy_action._rs, ptr noundef nonnull @.str.1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.then46.if.end79_crit_edge, label %do.end52

if.then46.if.end79_crit_edge:                     ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end79

do.end52:                                         ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #15
  %call56 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %timeout) #16
  br label %if.end79

if.else:                                          ; preds = %if.then40
  %111 = ptrtoint ptr %ct to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %ct, align 4
  %ext.i.i.i = getelementptr inbounds %struct.nf_conn, ptr %112, i32 0, i32 13
  %113 = ptrtoint ptr %ext.i.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %ext.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %114, null
  br i1 %tobool.not.i.i.i, label %if.else.nf_ct_timeout_find.exit_crit_edge, label %nf_ct_ext_exist.exit.i.i

if.else.nf_ct_timeout_find.exit_crit_edge:        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %nf_ct_timeout_find.exit

nf_ct_ext_exist.exit.i.i:                         ; preds = %if.else
  %arrayidx.i.i.i.i = getelementptr [10 x i8], ptr %114, i32 0, i32 6
  %115 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %arrayidx.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %116)
  %tobool.i.i.not.i.i = icmp eq i8 %116, 0
  br i1 %tobool.i.i.not.i.i, label %nf_ct_ext_exist.exit.i.i.nf_ct_timeout_find.exit_crit_edge, label %if.end.i.i

nf_ct_ext_exist.exit.i.i.nf_ct_timeout_find.exit_crit_edge: ; preds = %nf_ct_ext_exist.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %nf_ct_timeout_find.exit

if.end.i.i:                                       ; preds = %nf_ct_ext_exist.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %conv.i.i111 = zext i8 %116 to i32
  %add.ptr.i.i112 = getelementptr i8, ptr %114, i32 %conv.i.i111
  br label %nf_ct_timeout_find.exit

nf_ct_timeout_find.exit:                          ; preds = %if.end.i.i, %nf_ct_ext_exist.exit.i.i.nf_ct_timeout_find.exit_crit_edge, %if.else.nf_ct_timeout_find.exit_crit_edge
  %retval.0.i.i = phi ptr [ %add.ptr.i.i112, %if.end.i.i ], [ null, %nf_ct_ext_exist.exit.i.i.nf_ct_timeout_find.exit_crit_edge ], [ null, %if.else.nf_ct_timeout_find.exit_crit_edge ]
  %117 = ptrtoint ptr %retval.0.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load volatile ptr, ptr %retval.0.i.i, align 4
  %call66 = call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %land.lhs.true68, label %nf_ct_timeout_find.exit.do.end76_crit_edge

nf_ct_timeout_find.exit.do.end76_crit_edge:       ; preds = %nf_ct_timeout_find.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end76

land.lhs.true68:                                  ; preds = %nf_ct_timeout_find.exit
  %call69 = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %land.lhs.true68.do.end76_crit_edge, label %land.lhs.true71

land.lhs.true68.do.end76_crit_edge:               ; preds = %land.lhs.true68
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end76

land.lhs.true71:                                  ; preds = %land.lhs.true68
  %.b110 = load i1, ptr @ovs_ct_copy_action.__warned, align 1
  br i1 %.b110, label %land.lhs.true71.do.end76_crit_edge, label %if.then73

land.lhs.true71.do.end76_crit_edge:               ; preds = %land.lhs.true71
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end76

if.then73:                                        ; preds = %land.lhs.true71
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @ovs_ct_copy_action.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 1715, ptr noundef nonnull @.str.10) #13
  br label %do.end76

do.end76:                                         ; preds = %if.then73, %land.lhs.true71.do.end76_crit_edge, %land.lhs.true68.do.end76_crit_edge, %nf_ct_timeout_find.exit.do.end76_crit_edge
  %nf_ct_timeout = getelementptr inbounds %struct.ovs_conntrack_info, ptr %ct_info, i32 0, i32 9
  %119 = ptrtoint ptr %nf_ct_timeout to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %118, ptr %nf_ct_timeout, align 4
  br label %if.end79

if.end79:                                         ; preds = %do.end76, %do.end52, %if.then46.if.end79_crit_edge, %if.end38.if.end79_crit_edge
  %tobool80.not = icmp eq ptr %helper.2, null
  br i1 %tobool80.not, label %if.end79.if.end87_crit_edge, label %if.then81

if.end79.if.end87_crit_edge:                      ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end87

if.then81:                                        ; preds = %if.end79
  %120 = ptrtoint ptr %family11 to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %family11, align 2
  %122 = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 11
  %123 = ptrtoint ptr %122 to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %122, align 4
  %call.i = call ptr @nf_conntrack_helper_try_module_get(ptr noundef nonnull %helper.2, i16 noundef zeroext %121, i8 noundef zeroext %124) #13
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %do.body.i113, label %if.end9.i

do.body.i113:                                     ; preds = %if.then81
  br i1 %log, label %land.lhs.true.i114, label %do.body.i113.err_free_ct_crit_edge

do.body.i113.err_free_ct_crit_edge:               ; preds = %do.body.i113
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_free_ct

land.lhs.true.i114:                               ; preds = %do.body.i113
  %call2.i = call i32 @net_ratelimit() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i114.err_free_ct_crit_edge, label %do.end.i115

land.lhs.true.i114.err_free_ct_crit_edge:         ; preds = %land.lhs.true.i114
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_free_ct

do.end.i115:                                      ; preds = %land.lhs.true.i114
  call void @__sanitizer_cov_trace_pc() #15
  %call6.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77, ptr noundef nonnull %helper.2) #16
  br label %err_free_ct

if.end9.i:                                        ; preds = %if.then81
  %125 = ptrtoint ptr %ct to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %ct, align 4
  %call10.i = call ptr @nf_ct_helper_ext_add(ptr noundef %126, i32 noundef 3264) #13
  %tobool11.not.i = icmp eq ptr %call10.i, null
  br i1 %tobool11.not.i, label %if.then12.i, label %if.end13.i

if.then12.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @nf_conntrack_helper_put(ptr noundef nonnull %call.i) #13
  br label %err_free_ct

if.end13.i:                                       ; preds = %if.end9.i
  %127 = ptrtoint ptr %commit163.i to i32
  call void @__asan_load1_noabort(i32 %127)
  %bf.load.i116 = load i8, ptr %commit163.i, align 4
  %128 = and i8 %bf.load.i116, 112
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %128)
  %tobool14.not.i = icmp eq i8 %128, 0
  br i1 %tobool14.not.i, label %if.end13.i.ovs_ct_add_helper.exit_crit_edge, label %if.then15.i

if.end13.i.ovs_ct_add_helper.exit_crit_edge:      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ovs_ct_add_helper.exit

if.then15.i:                                      ; preds = %if.end13.i
  %129 = ptrtoint ptr %family11 to i32
  call void @__asan_load2_noabort(i32 %129)
  %130 = load i16, ptr %family11, align 2
  %131 = ptrtoint ptr %122 to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %122, align 4
  %call18.i = call i32 @nf_nat_helper_try_module_get(ptr noundef nonnull %helper.2, i16 noundef zeroext %130, i8 noundef zeroext %132) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %tobool19.not.i = icmp eq i32 %call18.i, 0
  br i1 %tobool19.not.i, label %if.then15.i.ovs_ct_add_helper.exit_crit_edge, label %if.then20.i

if.then15.i.ovs_ct_add_helper.exit_crit_edge:     ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ovs_ct_add_helper.exit

if.then20.i:                                      ; preds = %if.then15.i
  call void @nf_conntrack_helper_put(ptr noundef nonnull %call.i) #13
  br i1 %log, label %land.lhs.true23.i119, label %if.then20.i.err_free_ct_crit_edge

if.then20.i.err_free_ct_crit_edge:                ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_free_ct

land.lhs.true23.i119:                             ; preds = %if.then20.i
  %call24.i117 = call i32 @net_ratelimit() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i117)
  %tobool25.not.i118 = icmp eq i32 %call24.i117, 0
  br i1 %tobool25.not.i118, label %land.lhs.true23.i119.err_free_ct_crit_edge, label %do.end29.i120

land.lhs.true23.i119.err_free_ct_crit_edge:       ; preds = %land.lhs.true23.i119
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_free_ct

do.end29.i120:                                    ; preds = %land.lhs.true23.i119
  call void @__sanitizer_cov_trace_pc() #15
  %call31.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, ptr noundef nonnull %helper.2, i32 noundef %call18.i) #16
  br label %err_free_ct

ovs_ct_add_helper.exit:                           ; preds = %if.then15.i.ovs_ct_add_helper.exit_crit_edge, %if.end13.i.ovs_ct_add_helper.exit_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !209
  %133 = ptrtoint ptr %call10.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store volatile ptr %call.i, ptr %call10.i, align 8
  %134 = ptrtoint ptr %ct_info to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr %call.i, ptr %ct_info, align 4
  br label %if.end87

if.end87:                                         ; preds = %ovs_ct_add_helper.exit, %if.end79.if.end87_crit_edge
  %call89 = call i32 @ovs_nla_add_action(ptr noundef %sfa, i32 noundef 12, ptr noundef nonnull %ct_info, i32 noundef 140, i1 noundef zeroext %log) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89)
  %tobool90.not = icmp eq i32 %call89, 0
  br i1 %tobool90.not, label %if.end92, label %if.end87.err_free_ct_crit_edge

if.end87.err_free_ct_crit_edge:                   ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_free_ct

if.end92:                                         ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #15
  %135 = ptrtoint ptr %ct to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %ct, align 4
  %status = getelementptr inbounds %struct.nf_conn, ptr %136, i32 0, i32 5
  %137 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %status, align 4
  %or.i = or i32 %138, 8
  store i32 %or.i, ptr %status, align 4
  br label %cleanup

err_free_ct:                                      ; preds = %if.end87.err_free_ct_crit_edge, %do.end29.i120, %land.lhs.true23.i119.err_free_ct_crit_edge, %if.then20.i.err_free_ct_crit_edge, %if.then12.i, %do.end.i115, %land.lhs.true.i114.err_free_ct_crit_edge, %do.body.i113.err_free_ct_crit_edge
  %err.0 = phi i32 [ %call89, %if.end87.err_free_ct_crit_edge ], [ %call18.i, %if.then20.i.err_free_ct_crit_edge ], [ %call18.i, %land.lhs.true23.i119.err_free_ct_crit_edge ], [ %call18.i, %do.end29.i120 ], [ -22, %do.body.i113.err_free_ct_crit_edge ], [ -22, %land.lhs.true.i114.err_free_ct_crit_edge ], [ -22, %do.end.i115 ], [ -12, %if.then12.i ]
  %139 = ptrtoint ptr %ct_info to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %ct_info, align 4
  %tobool.not.i122 = icmp eq ptr %140, null
  br i1 %tobool.not.i122, label %err_free_ct.if.end5.i_crit_edge, label %if.then.i

err_free_ct.if.end5.i_crit_edge:                  ; preds = %err_free_ct
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end5.i

if.then.i:                                        ; preds = %err_free_ct
  %141 = ptrtoint ptr %commit163.i to i32
  call void @__asan_load1_noabort(i32 %141)
  %bf.load.i124 = load i8, ptr %commit163.i, align 4
  %142 = and i8 %bf.load.i124, 112
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %142)
  %tobool1.not.i = icmp eq i8 %142, 0
  br i1 %tobool1.not.i, label %if.then.i.if.end.i_crit_edge, label %if.then2.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.then2.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @nf_nat_helper_put(ptr noundef nonnull %140) #13
  br label %if.end.i

if.end.i:                                         ; preds = %if.then2.i, %if.then.i.if.end.i_crit_edge
  %143 = ptrtoint ptr %ct_info to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %ct_info, align 4
  call void @nf_conntrack_helper_put(ptr noundef %144) #13
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.end.i, %err_free_ct.if.end5.i_crit_edge
  %145 = ptrtoint ptr %ct to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %ct, align 4
  %tobool6.not.i126 = icmp eq ptr %146, null
  br i1 %tobool6.not.i126, label %if.end5.i.cleanup_crit_edge, label %if.then7.i

if.end5.i.cleanup_crit_edge:                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then7.i:                                       ; preds = %if.end5.i
  %147 = ptrtoint ptr %timeout to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %148)
  %tobool8.not.i = icmp eq i8 %148, 0
  br i1 %tobool8.not.i, label %if.then7.i.if.end11.i_crit_edge, label %if.then9.i

if.then7.i.if.end11.i_crit_edge:                  ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end11.i

if.then9.i:                                       ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @nf_ct_destroy_timeout(ptr noundef nonnull %146) #13
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then9.i, %if.then7.i.if.end11.i_crit_edge
  %149 = ptrtoint ptr %ct to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %ct, align 4
  call void @nf_ct_tmpl_free(ptr noundef %150) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end11.i, %if.end5.i.cleanup_crit_edge, %if.end92, %do.end32, %land.lhs.true26.cleanup_crit_edge, %do.body23.cleanup_crit_edge, %parse_ct.exit.cleanup_crit_edge, %do.end220.i, %land.lhs.true214.i.cleanup_crit_edge, %do.end203.i, %land.lhs.true197.i.cleanup_crit_edge, %do.body195.i.cleanup_crit_edge, %do.end179.i, %land.lhs.true173.i.cleanup_crit_edge, %do.body171.i.cleanup_crit_edge, %do.end152.i, %land.lhs.true146.i.cleanup_crit_edge, %do.body144.i.cleanup_crit_edge, %do.end137.i, %land.lhs.true131.i.cleanup_crit_edge, %do.body129.i.cleanup_crit_edge, %do.end197.i.i, %land.lhs.true191.i.i.cleanup_crit_edge, %do.body188.i.i.cleanup_crit_edge, %do.end173.i.i, %land.lhs.true167.i.i.cleanup_crit_edge, %do.body164.i.i.cleanup_crit_edge, %do.end147.i.i, %land.lhs.true141.i.i.cleanup_crit_edge, %do.body138.i.i.cleanup_crit_edge, %do.end128.i.i, %land.lhs.true122.i.i.cleanup_crit_edge, %do.body119.i.i.cleanup_crit_edge, %do.end56.i.i, %land.lhs.true50.i.i.cleanup_crit_edge, %do.body47.i.i.cleanup_crit_edge, %do.end33.i.i, %land.lhs.true27.i.i.cleanup_crit_edge, %do.body24.i.i.cleanup_crit_edge, %do.end.i.i, %land.lhs.true.i299.i.cleanup_crit_edge, %do.body.i.i.cleanup_crit_edge, %do.end100.i, %land.lhs.true94.i.cleanup_crit_edge, %do.body92.i.cleanup_crit_edge, %do.end76.i, %land.lhs.true70.i.cleanup_crit_edge, %do.body68.i.cleanup_crit_edge, %do.end55.i, %land.lhs.true49.i.cleanup_crit_edge, %do.body47.i.cleanup_crit_edge, %do.end29.i, %land.lhs.true23.i.cleanup_crit_edge, %do.body21.i.cleanup_crit_edge, %do.end.i, %land.lhs.true.i.cleanup_crit_edge, %do.body.i.cleanup_crit_edge, %do.end, %land.lhs.true.cleanup_crit_edge, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end92 ], [ -22, %do.end ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -22, %do.body.cleanup_crit_edge ], [ -22, %parse_ct.exit.cleanup_crit_edge ], [ -12, %do.end32 ], [ -12, %land.lhs.true26.cleanup_crit_edge ], [ -12, %do.body23.cleanup_crit_edge ], [ %err.0, %if.end5.i.cleanup_crit_edge ], [ %err.0, %if.end11.i ], [ -22, %do.end147.i.i ], [ -22, %land.lhs.true141.i.i.cleanup_crit_edge ], [ -22, %do.body138.i.i.cleanup_crit_edge ], [ -22, %do.end173.i.i ], [ -22, %land.lhs.true167.i.i.cleanup_crit_edge ], [ -22, %do.body164.i.i.cleanup_crit_edge ], [ -22, %do.end197.i.i ], [ -22, %land.lhs.true191.i.i.cleanup_crit_edge ], [ -22, %do.body188.i.i.cleanup_crit_edge ], [ -22, %do.body119.i.i.cleanup_crit_edge ], [ -22, %land.lhs.true122.i.i.cleanup_crit_edge ], [ -22, %do.end128.i.i ], [ -34, %do.body47.i.i.cleanup_crit_edge ], [ -34, %land.lhs.true50.i.i.cleanup_crit_edge ], [ -34, %do.end56.i.i ], [ -22, %do.body24.i.i.cleanup_crit_edge ], [ -22, %land.lhs.true27.i.i.cleanup_crit_edge ], [ -22, %do.end33.i.i ], [ -22, %do.body.i.i.cleanup_crit_edge ], [ -22, %land.lhs.true.i299.i.cleanup_crit_edge ], [ -22, %do.end.i.i ], [ -22, %do.body68.i.cleanup_crit_edge ], [ -22, %land.lhs.true70.i.cleanup_crit_edge ], [ -22, %do.end76.i ], [ -22, %do.end55.i ], [ -22, %land.lhs.true49.i.cleanup_crit_edge ], [ -22, %do.body47.i.cleanup_crit_edge ], [ -22, %do.end.i ], [ -22, %land.lhs.true.i.cleanup_crit_edge ], [ -22, %do.body.i.cleanup_crit_edge ], [ -22, %do.end29.i ], [ -22, %land.lhs.true23.i.cleanup_crit_edge ], [ -22, %do.body21.i.cleanup_crit_edge ], [ -22, %do.end100.i ], [ -22, %land.lhs.true94.i.cleanup_crit_edge ], [ -22, %do.body92.i.cleanup_crit_edge ], [ -22, %do.end137.i ], [ -22, %land.lhs.true131.i.cleanup_crit_edge ], [ -22, %do.body129.i.cleanup_crit_edge ], [ -22, %do.end152.i ], [ -22, %land.lhs.true146.i.cleanup_crit_edge ], [ -22, %do.body144.i.cleanup_crit_edge ], [ -22, %land.lhs.true214.i.cleanup_crit_edge ], [ -22, %do.end220.i ], [ -22, %do.body195.i.cleanup_crit_edge ], [ -22, %land.lhs.true197.i.cleanup_crit_edge ], [ -22, %do.end203.i ], [ -22, %do.body171.i.cleanup_crit_edge ], [ -22, %land.lhs.true173.i.cleanup_crit_edge ], [ -22, %do.end179.i ]
  call void @llvm.lifetime.end.p0(i64 140, ptr nonnull %ct_info) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nf_ct_tmpl_alloc(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_ct_set_timeout(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ovs_nla_add_action(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ovs_ct_action_to_attr(ptr noundef %ct_info, ptr noundef %skb) local_unnamed_addr #1 align 64 {
entry:
  %tmp.i94 = alloca i32, align 4
  %tmp.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %0 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tail.i.i, align 8
  %call1.i = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 12, i32 noundef 0, ptr noundef null) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  %tobool.not101 = icmp eq ptr %1, null
  %tobool.not = select i1 %cmp.i, i1 true, i1 %tobool.not101
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %commit = getelementptr inbounds %struct.ovs_conntrack_info, ptr %ct_info, i32 0, i32 3
  %2 = ptrtoint ptr %commit to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %commit, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool1.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool1.not, label %if.end.if.end9_crit_edge, label %land.lhs.true

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end9

land.lhs.true:                                    ; preds = %if.end
  %3 = and i8 %bf.load, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool5.not = icmp eq i8 %3, 0
  %cond = select i1 %tobool5.not, i32 1, i32 7
  %call.i = tail call i32 @nla_put(ptr noundef %skb, i32 noundef %cond, i32 noundef 0, ptr noundef null) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool7.not = icmp eq i32 %call.i, 0
  br i1 %tobool7.not, label %land.lhs.true.if.end9_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true.if.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end9

if.end9:                                          ; preds = %land.lhs.true.if.end9_crit_edge, %if.end.if.end9_crit_edge
  %zone = getelementptr inbounds %struct.ovs_conntrack_info, ptr %ct_info, i32 0, i32 1
  %4 = ptrtoint ptr %zone to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %zone, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i) #13
  %6 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %tmp.i, align 2
  %call.i91 = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 2, ptr noundef nonnull %tmp.i) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i91)
  %tobool11.not = icmp eq i32 %call.i91, 0
  br i1 %tobool11.not, label %if.end13, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  %mask = getelementptr inbounds %struct.ovs_conntrack_info, ptr %ct_info, i32 0, i32 6, i32 1
  %7 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool14.not = icmp eq i32 %8, 0
  br i1 %tobool14.not, label %if.end13.if.end20_crit_edge, label %land.lhs.true15

if.end13.if.end20_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end20

land.lhs.true15:                                  ; preds = %if.end13
  %mark = getelementptr inbounds %struct.ovs_conntrack_info, ptr %ct_info, i32 0, i32 6
  %call17 = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 8, ptr noundef %mark) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %land.lhs.true15.if.end20_crit_edge, label %land.lhs.true15.cleanup_crit_edge

land.lhs.true15.cleanup_crit_edge:                ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true15.if.end20_crit_edge:               ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end20

if.end20:                                         ; preds = %land.lhs.true15.if.end20_crit_edge, %if.end13.if.end20_crit_edge
  %mask21 = getelementptr inbounds %struct.ovs_conntrack_info, ptr %ct_info, i32 0, i32 7, i32 1
  %9 = ptrtoint ptr %mask21 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mask21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i, label %for.cond.i, label %if.end20.land.lhs.true24_crit_edge

if.end20.land.lhs.true24_crit_edge:               ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true24

for.cond.i:                                       ; preds = %if.end20
  %arrayidx.1.i = getelementptr %struct.ovs_conntrack_info, ptr %ct_info, i32 0, i32 7, i32 1, i32 0, i32 0, i32 1
  %11 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.1.i = icmp eq i32 %12, 0
  br i1 %tobool.not.1.i, label %for.cond.1.i, label %for.cond.i.land.lhs.true24_crit_edge

for.cond.i.land.lhs.true24_crit_edge:             ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true24

for.cond.1.i:                                     ; preds = %for.cond.i
  %arrayidx.2.i = getelementptr %struct.ovs_conntrack_info, ptr %ct_info, i32 0, i32 7, i32 1, i32 0, i32 0, i32 2
  %13 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.2.i = icmp eq i32 %14, 0
  br i1 %tobool.not.2.i, label %labels_nonzero.exit, label %for.cond.1.i.land.lhs.true24_crit_edge

for.cond.1.i.land.lhs.true24_crit_edge:           ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true24

labels_nonzero.exit:                              ; preds = %for.cond.1.i
  %arrayidx.3.i = getelementptr %struct.ovs_conntrack_info, ptr %ct_info, i32 0, i32 7, i32 1, i32 0, i32 0, i32 3
  %15 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.3.i.not = icmp eq i32 %16, 0
  br i1 %tobool.not.3.i.not, label %labels_nonzero.exit.if.end29_crit_edge, label %labels_nonzero.exit.land.lhs.true24_crit_edge

labels_nonzero.exit.land.lhs.true24_crit_edge:    ; preds = %labels_nonzero.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true24

labels_nonzero.exit.if.end29_crit_edge:           ; preds = %labels_nonzero.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29

land.lhs.true24:                                  ; preds = %labels_nonzero.exit.land.lhs.true24_crit_edge, %for.cond.1.i.land.lhs.true24_crit_edge, %for.cond.i.land.lhs.true24_crit_edge, %if.end20.land.lhs.true24_crit_edge
  %labels = getelementptr inbounds %struct.ovs_conntrack_info, ptr %ct_info, i32 0, i32 7
  %call26 = call i32 @nla_put(ptr noundef %skb, i32 noundef 4, i32 noundef 32, ptr noundef %labels) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %land.lhs.true24.if.end29_crit_edge, label %land.lhs.true24.cleanup_crit_edge

land.lhs.true24.cleanup_crit_edge:                ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true24.if.end29_crit_edge:               ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29

if.end29:                                         ; preds = %land.lhs.true24.if.end29_crit_edge, %labels_nonzero.exit.if.end29_crit_edge
  %17 = ptrtoint ptr %ct_info to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ct_info, align 4
  %tobool30.not = icmp eq ptr %18, null
  br i1 %tobool30.not, label %if.end29.if.end37_crit_edge, label %if.then31

if.end29.if.end37_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end37

if.then31:                                        ; preds = %if.end29
  %name = getelementptr inbounds %struct.nf_conntrack_helper, ptr %18, i32 0, i32 1
  %call.i92 = call i32 @strlen(ptr noundef %name) #17
  %add.i = add i32 %call.i92, 1
  %call1.i93 = call i32 @nla_put(ptr noundef %skb, i32 noundef 5, i32 noundef %add.i, ptr noundef %name) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i93)
  %tobool34.not = icmp eq i32 %call1.i93, 0
  br i1 %tobool34.not, label %if.then31.if.end37_crit_edge, label %if.then31.cleanup_crit_edge

if.then31.cleanup_crit_edge:                      ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then31.if.end37_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end37

if.end37:                                         ; preds = %if.then31.if.end37_crit_edge, %if.end29.if.end37_crit_edge
  %19 = ptrtoint ptr %commit to i32
  call void @__asan_load1_noabort(i32 %19)
  %bf.load38 = load i8, ptr %commit, align 4
  %20 = and i8 %bf.load38, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool42.not = icmp eq i8 %20, 0
  br i1 %tobool42.not, label %if.end37.if.end47_crit_edge, label %land.lhs.true43

if.end37.if.end47_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end47

land.lhs.true43:                                  ; preds = %if.end37
  %eventmask = getelementptr inbounds %struct.ovs_conntrack_info, ptr %ct_info, i32 0, i32 5
  %21 = ptrtoint ptr %eventmask to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %eventmask, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i94) #13
  %23 = ptrtoint ptr %tmp.i94 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %tmp.i94, align 4
  %call.i95 = call i32 @nla_put(ptr noundef %skb, i32 noundef 8, i32 noundef 4, ptr noundef nonnull %tmp.i94) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i94) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i95)
  %tobool45.not = icmp eq i32 %call.i95, 0
  br i1 %tobool45.not, label %land.lhs.true43.if.end47_crit_edge, label %land.lhs.true43.cleanup_crit_edge

land.lhs.true43.cleanup_crit_edge:                ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true43.if.end47_crit_edge:               ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end47

if.end47:                                         ; preds = %land.lhs.true43.if.end47_crit_edge, %if.end37.if.end47_crit_edge
  %timeout = getelementptr inbounds %struct.ovs_conntrack_info, ptr %ct_info, i32 0, i32 8
  %24 = ptrtoint ptr %timeout to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool48.not = icmp eq i8 %25, 0
  br i1 %tobool48.not, label %if.end47.if.end56_crit_edge, label %if.then49

if.end47.if.end56_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end56

if.then49:                                        ; preds = %if.end47
  %call.i96 = call i32 @strlen(ptr noundef %timeout) #17
  %add.i97 = add i32 %call.i96, 1
  %call1.i98 = call i32 @nla_put(ptr noundef %skb, i32 noundef 9, i32 noundef %add.i97, ptr noundef %timeout) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i98)
  %tobool53.not = icmp eq i32 %call1.i98, 0
  br i1 %tobool53.not, label %if.then49.if.end56_crit_edge, label %if.then49.cleanup_crit_edge

if.then49.cleanup_crit_edge:                      ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then49.if.end56_crit_edge:                     ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end56

if.end56:                                         ; preds = %if.then49.if.end56_crit_edge, %if.end47.if.end56_crit_edge
  %26 = ptrtoint ptr %commit to i32
  call void @__asan_load1_noabort(i32 %26)
  %bf.load57 = load i8, ptr %commit, align 4
  %27 = and i8 %bf.load57, 112
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool61.not = icmp eq i8 %27, 0
  br i1 %tobool61.not, label %if.end56.if.end65_crit_edge, label %land.lhs.true62

if.end56.if.end65_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end65

land.lhs.true62:                                  ; preds = %if.end56
  %call63 = call fastcc zeroext i1 @ovs_ct_nat_to_attr(ptr noundef %ct_info, ptr noundef %skb)
  br i1 %call63, label %land.lhs.true62.if.end65_crit_edge, label %land.lhs.true62.cleanup_crit_edge

land.lhs.true62.cleanup_crit_edge:                ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true62.if.end65_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end65

if.end65:                                         ; preds = %land.lhs.true62.if.end65_crit_edge, %if.end56.if.end65_crit_edge
  %28 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %29 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %1 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %conv.i, ptr %1, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end65, %land.lhs.true62.cleanup_crit_edge, %if.then49.cleanup_crit_edge, %land.lhs.true43.cleanup_crit_edge, %if.then31.cleanup_crit_edge, %land.lhs.true24.cleanup_crit_edge, %land.lhs.true15.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end65 ], [ -90, %entry.cleanup_crit_edge ], [ -90, %land.lhs.true.cleanup_crit_edge ], [ -90, %if.end9.cleanup_crit_edge ], [ -90, %land.lhs.true15.cleanup_crit_edge ], [ -90, %land.lhs.true24.cleanup_crit_edge ], [ -90, %if.then31.cleanup_crit_edge ], [ -90, %land.lhs.true43.cleanup_crit_edge ], [ -90, %if.then49.cleanup_crit_edge ], [ -90, %land.lhs.true62.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @ovs_ct_nat_to_attr(ptr noundef %info, ptr noundef %skb) unnamed_addr #1 align 64 {
entry:
  %tmp.i160 = alloca i16, align 2
  %tmp.i = alloca i16, align 2
  %tmp.i.i155 = alloca i32, align 4
  %tmp.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %0 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tail.i.i, align 8
  %call1.i = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 6, i32 noundef 0, ptr noundef null) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  %tobool.not166 = icmp eq ptr %1, null
  %tobool.not = select i1 %cmp.i, i1 true, i1 %tobool.not166
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %nat = getelementptr inbounds %struct.ovs_conntrack_info, ptr %info, i32 0, i32 3
  %2 = ptrtoint ptr %nat to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %nat, align 4
  %bf.lshr = lshr i8 %bf.load, 4
  %bf.clear = and i8 %bf.lshr, 7
  %conv = zext i8 %bf.clear to i32
  %and = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  %call.i = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 0, ptr noundef null) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool4.not = icmp eq i32 %call.i, 0
  br i1 %tobool4.not, label %if.then2.if.end21_crit_edge, label %if.then2.cleanup_crit_edge

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then2.if.end21_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21

if.else:                                          ; preds = %if.end
  %and12 = and i32 %conv, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.else.out_crit_edge, label %if.then14

if.else.out_crit_edge:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.then14:                                        ; preds = %if.else
  %call.i154 = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 0, ptr noundef null) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i154)
  %tobool16.not = icmp eq i32 %call.i154, 0
  br i1 %tobool16.not, label %if.then14.if.end21_crit_edge, label %if.then14.cleanup_crit_edge

if.then14.cleanup_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then14.if.end21_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21

if.end21:                                         ; preds = %if.then14.if.end21_crit_edge, %if.then2.if.end21_crit_edge
  %range = getelementptr inbounds %struct.ovs_conntrack_info, ptr %info, i32 0, i32 10
  %3 = ptrtoint ptr %range to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %range, align 4
  %and22 = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %if.end21.if.end69_crit_edge, label %if.then24

if.end21.if.end69_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

if.then24:                                        ; preds = %if.end21
  %family = getelementptr inbounds %struct.ovs_conntrack_info, ptr %info, i32 0, i32 4
  %5 = ptrtoint ptr %family to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %family, align 2
  %7 = zext i16 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.104)
  switch i16 %6, label %if.then24.cleanup_crit_edge [
    i16 2, label %if.then27
    i16 10, label %if.then47
  ]

if.then24.cleanup_crit_edge:                      ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then27:                                        ; preds = %if.then24
  %min_addr = getelementptr inbounds %struct.ovs_conntrack_info, ptr %info, i32 0, i32 10, i32 1
  %8 = ptrtoint ptr %min_addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %min_addr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i) #13
  %10 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %tmp.i.i, align 4
  %call.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 4, ptr noundef nonnull %tmp.i.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool30.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool30.not, label %lor.lhs.false, label %if.then27.cleanup_crit_edge

if.then27.cleanup_crit_edge:                      ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.then27
  %max_addr = getelementptr inbounds %struct.ovs_conntrack_info, ptr %info, i32 0, i32 10, i32 2
  %11 = ptrtoint ptr %max_addr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %max_addr, align 4
  %13 = ptrtoint ptr %min_addr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %min_addr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %14)
  %cmp34.not = icmp eq i32 %12, %14
  br i1 %cmp34.not, label %lor.lhs.false.if.end69_crit_edge, label %land.lhs.true

lor.lhs.false.if.end69_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

land.lhs.true:                                    ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i155) #13
  %15 = ptrtoint ptr %tmp.i.i155 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %12, ptr %tmp.i.i155, align 4
  %call.i.i156 = call i32 @nla_put(ptr noundef %skb, i32 noundef 4, i32 noundef 4, ptr noundef nonnull %tmp.i.i155) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i155) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i156)
  %tobool39.not = icmp eq i32 %call.i.i156, 0
  br i1 %tobool39.not, label %land.lhs.true.if.end69_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true.if.end69_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

if.then47:                                        ; preds = %if.then24
  %min_addr49 = getelementptr inbounds %struct.ovs_conntrack_info, ptr %info, i32 0, i32 10, i32 1
  %call.i157 = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 16, ptr noundef %min_addr49) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i157)
  %tobool51.not = icmp eq i32 %call.i157, 0
  br i1 %tobool51.not, label %lor.lhs.false52, label %if.then47.cleanup_crit_edge

if.then47.cleanup_crit_edge:                      ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false52:                                  ; preds = %if.then47
  %max_addr54 = getelementptr inbounds %struct.ovs_conntrack_info, ptr %info, i32 0, i32 10, i32 2
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(16) %max_addr54, ptr noundef dereferenceable(16) %min_addr49, i32 16) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool58.not = icmp eq i32 %bcmp, 0
  br i1 %tobool58.not, label %lor.lhs.false52.if.end69_crit_edge, label %land.lhs.true59

lor.lhs.false52.if.end69_crit_edge:               ; preds = %lor.lhs.false52
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

land.lhs.true59:                                  ; preds = %lor.lhs.false52
  %call.i158 = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 4, i32 noundef 16, ptr noundef %max_addr54) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i158)
  %tobool63.not = icmp eq i32 %call.i158, 0
  br i1 %tobool63.not, label %land.lhs.true59.if.end69_crit_edge, label %land.lhs.true59.cleanup_crit_edge

land.lhs.true59.cleanup_crit_edge:                ; preds = %land.lhs.true59
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true59.if.end69_crit_edge:               ; preds = %land.lhs.true59
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

if.end69:                                         ; preds = %land.lhs.true59.if.end69_crit_edge, %lor.lhs.false52.if.end69_crit_edge, %land.lhs.true.if.end69_crit_edge, %lor.lhs.false.if.end69_crit_edge, %if.end21.if.end69_crit_edge
  %16 = ptrtoint ptr %range to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %range, align 4
  %and72 = and i32 %17, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and72)
  %tobool73.not = icmp eq i32 %and72, 0
  br i1 %tobool73.not, label %if.end69.if.end92_crit_edge, label %land.lhs.true74

if.end69.if.end92_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end92

land.lhs.true74:                                  ; preds = %if.end69
  %min_proto = getelementptr inbounds %struct.ovs_conntrack_info, ptr %info, i32 0, i32 10, i32 3
  %18 = ptrtoint ptr %min_proto to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %min_proto, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i) #13
  %20 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %19, ptr %tmp.i, align 2
  %call.i159 = call i32 @nla_put(ptr noundef %skb, i32 noundef 5, i32 noundef 2, ptr noundef nonnull %tmp.i) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i159)
  %tobool77.not = icmp eq i32 %call.i159, 0
  br i1 %tobool77.not, label %lor.lhs.false78, label %land.lhs.true74.cleanup_crit_edge

land.lhs.true74.cleanup_crit_edge:                ; preds = %land.lhs.true74
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false78:                                  ; preds = %land.lhs.true74
  %max_proto = getelementptr inbounds %struct.ovs_conntrack_info, ptr %info, i32 0, i32 10, i32 4
  %21 = ptrtoint ptr %max_proto to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %max_proto, align 2
  %23 = ptrtoint ptr %min_proto to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %min_proto, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %22, i16 %24)
  %cmp84.not = icmp eq i16 %22, %24
  br i1 %cmp84.not, label %lor.lhs.false78.if.end92_crit_edge, label %land.lhs.true86

lor.lhs.false78.if.end92_crit_edge:               ; preds = %lor.lhs.false78
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end92

land.lhs.true86:                                  ; preds = %lor.lhs.false78
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i160) #13
  %25 = ptrtoint ptr %tmp.i160 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %22, ptr %tmp.i160, align 2
  %call.i161 = call i32 @nla_put(ptr noundef %skb, i32 noundef 6, i32 noundef 2, ptr noundef nonnull %tmp.i160) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i160) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i161)
  %tobool90.not = icmp eq i32 %call.i161, 0
  br i1 %tobool90.not, label %land.lhs.true86.if.end92_crit_edge, label %land.lhs.true86.cleanup_crit_edge

land.lhs.true86.cleanup_crit_edge:                ; preds = %land.lhs.true86
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true86.if.end92_crit_edge:               ; preds = %land.lhs.true86
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end92

if.end92:                                         ; preds = %land.lhs.true86.if.end92_crit_edge, %lor.lhs.false78.if.end92_crit_edge, %if.end69.if.end92_crit_edge
  %26 = ptrtoint ptr %range to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %range, align 4
  %and95 = and i32 %27, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and95)
  %tobool96.not = icmp eq i32 %and95, 0
  br i1 %tobool96.not, label %if.end92.if.end101_crit_edge, label %land.lhs.true97

if.end92.if.end101_crit_edge:                     ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end101

land.lhs.true97:                                  ; preds = %if.end92
  %call.i162 = call i32 @nla_put(ptr noundef %skb, i32 noundef 7, i32 noundef 0, ptr noundef null) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i162)
  %tobool99.not = icmp eq i32 %call.i162, 0
  br i1 %tobool99.not, label %land.lhs.true97.if.end101_crit_edge, label %land.lhs.true97.cleanup_crit_edge

land.lhs.true97.cleanup_crit_edge:                ; preds = %land.lhs.true97
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true97.if.end101_crit_edge:              ; preds = %land.lhs.true97
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end101

if.end101:                                        ; preds = %land.lhs.true97.if.end101_crit_edge, %if.end92.if.end101_crit_edge
  %28 = ptrtoint ptr %range to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %range, align 4
  %and104 = and i32 %29, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and104)
  %tobool105.not = icmp eq i32 %and104, 0
  br i1 %tobool105.not, label %if.end101.if.end110_crit_edge, label %land.lhs.true106

if.end101.if.end110_crit_edge:                    ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end110

land.lhs.true106:                                 ; preds = %if.end101
  %call.i163 = call i32 @nla_put(ptr noundef %skb, i32 noundef 8, i32 noundef 0, ptr noundef null) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i163)
  %tobool108.not = icmp eq i32 %call.i163, 0
  br i1 %tobool108.not, label %land.lhs.true106.if.end110_crit_edge, label %land.lhs.true106.cleanup_crit_edge

land.lhs.true106.cleanup_crit_edge:               ; preds = %land.lhs.true106
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true106.if.end110_crit_edge:             ; preds = %land.lhs.true106
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end110

if.end110:                                        ; preds = %land.lhs.true106.if.end110_crit_edge, %if.end101.if.end110_crit_edge
  %30 = ptrtoint ptr %range to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %range, align 4
  %and113 = and i32 %31, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and113)
  %tobool114.not = icmp eq i32 %and113, 0
  br i1 %tobool114.not, label %if.end110.out_crit_edge, label %land.lhs.true115

if.end110.out_crit_edge:                          ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

land.lhs.true115:                                 ; preds = %if.end110
  %call.i164 = call i32 @nla_put(ptr noundef %skb, i32 noundef 9, i32 noundef 0, ptr noundef null) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i164)
  %tobool117.not = icmp eq i32 %call.i164, 0
  br i1 %tobool117.not, label %land.lhs.true115.out_crit_edge, label %land.lhs.true115.cleanup_crit_edge

land.lhs.true115.cleanup_crit_edge:               ; preds = %land.lhs.true115
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true115.out_crit_edge:                   ; preds = %land.lhs.true115
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

out:                                              ; preds = %land.lhs.true115.out_crit_edge, %if.end110.out_crit_edge, %if.else.out_crit_edge
  %32 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %33 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %1 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %conv.i, ptr %1, align 2
  br label %cleanup

cleanup:                                          ; preds = %out, %land.lhs.true115.cleanup_crit_edge, %land.lhs.true106.cleanup_crit_edge, %land.lhs.true97.cleanup_crit_edge, %land.lhs.true86.cleanup_crit_edge, %land.lhs.true74.cleanup_crit_edge, %land.lhs.true59.cleanup_crit_edge, %if.then47.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.then27.cleanup_crit_edge, %if.then24.cleanup_crit_edge, %if.then14.cleanup_crit_edge, %if.then2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %out ], [ false, %entry.cleanup_crit_edge ], [ false, %if.then2.cleanup_crit_edge ], [ false, %if.then14.cleanup_crit_edge ], [ false, %land.lhs.true.cleanup_crit_edge ], [ false, %if.then27.cleanup_crit_edge ], [ false, %land.lhs.true59.cleanup_crit_edge ], [ false, %if.then47.cleanup_crit_edge ], [ false, %if.then24.cleanup_crit_edge ], [ false, %land.lhs.true86.cleanup_crit_edge ], [ false, %land.lhs.true74.cleanup_crit_edge ], [ false, %land.lhs.true97.cleanup_crit_edge ], [ false, %land.lhs.true106.cleanup_crit_edge ], [ false, %land.lhs.true115.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ovs_ct_free_action(ptr nocapture noundef readonly %a) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %a, i32 4
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.if.end5.i_crit_edge, label %if.then.i

entry.if.end5.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end5.i

if.then.i:                                        ; preds = %entry
  %nat.i = getelementptr i8, ptr %a, i32 16
  %2 = ptrtoint ptr %nat.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load.i = load i8, ptr %nat.i, align 4
  %3 = and i8 %bf.load.i, 112
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not.i = icmp eq i8 %3, 0
  br i1 %tobool1.not.i, label %if.then.i.if.end.i_crit_edge, label %if.then2.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.then2.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @nf_nat_helper_put(ptr noundef nonnull %1) #13
  br label %if.end.i

if.end.i:                                         ; preds = %if.then2.i, %if.then.i.if.end.i_crit_edge
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i, align 4
  tail call void @nf_conntrack_helper_put(ptr noundef %5) #13
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.end.i, %entry.if.end5.i_crit_edge
  %ct.i = getelementptr i8, ptr %a, i32 12
  %6 = ptrtoint ptr %ct.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ct.i, align 4
  %tobool6.not.i = icmp eq ptr %7, null
  br i1 %tobool6.not.i, label %if.end5.i.__ovs_ct_free_action.exit_crit_edge, label %if.then7.i

if.end5.i.__ovs_ct_free_action.exit_crit_edge:    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__ovs_ct_free_action.exit

if.then7.i:                                       ; preds = %if.end5.i
  %timeout.i = getelementptr i8, ptr %a, i32 64
  %8 = ptrtoint ptr %timeout.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %timeout.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool8.not.i = icmp eq i8 %9, 0
  br i1 %tobool8.not.i, label %if.then7.i.if.end11.i_crit_edge, label %if.then9.i

if.then7.i.if.end11.i_crit_edge:                  ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end11.i

if.then9.i:                                       ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @nf_ct_destroy_timeout(ptr noundef nonnull %7) #13
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then9.i, %if.then7.i.if.end11.i_crit_edge
  %10 = ptrtoint ptr %ct.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ct.i, align 4
  tail call void @nf_ct_tmpl_free(ptr noundef %11) #13
  br label %__ovs_ct_free_action.exit

__ovs_ct_free_action.exit:                        ; preds = %if.end11.i, %if.end5.i.__ovs_ct_free_action.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ovs_ct_init(ptr noundef %net) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ovs_net_id to i32))
  %0 = load i32, ptr @ovs_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0)
  %call1 = tail call i32 @nf_connlabels_get(ptr noundef %net, i32 noundef 127) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  %xt_label9 = getelementptr inbounds %struct.ovs_net, ptr %call, i32 0, i32 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %1 = ptrtoint ptr %xt_label9 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %xt_label9, align 4
  %call2 = tail call i32 @net_ratelimit() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.then.if.end10_crit_edge, label %do.end

if.then.if.end10_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #16
  br label %if.end10

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %2 = ptrtoint ptr %xt_label9 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %xt_label9, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.else, %do.end, %if.then.if.end10_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3264, i32 noundef 12) #19
  %ct_limit_info.i = getelementptr inbounds %struct.ovs_net, ptr %call, i32 0, i32 3
  %4 = ptrtoint ptr %ct_limit_info.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call7.i.i, ptr %ct_limit_info.i, align 4
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %if.end10.ovs_ct_limit_init.exit_crit_edge, label %if.end.i

if.end10.ovs_ct_limit_init.exit_crit_edge:        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %ovs_ct_limit_init.exit

if.end.i:                                         ; preds = %if.end10
  %5 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %call7.i.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3264, i32 noundef 2048) #19
  %7 = ptrtoint ptr %ct_limit_info.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ct_limit_info.i, align 4
  %limits.i = getelementptr inbounds %struct.ovs_ct_limit_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %limits.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call7.i.i.i, ptr %limits.i, align 4
  %10 = load ptr, ptr %ct_limit_info.i, align 4
  %limits6.i = getelementptr inbounds %struct.ovs_ct_limit_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %limits6.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %limits6.i, align 4
  %tobool7.not.i = icmp eq ptr %12, null
  br i1 %tobool7.not.i, label %if.then8.i, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.then8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @kfree(ptr noundef %10) #13
  br label %ovs_ct_limit_init.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %i.042.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end.i.for.body.i_crit_edge ]
  %13 = ptrtoint ptr %ct_limit_info.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ct_limit_info.i, align 4
  %limits12.i = getelementptr inbounds %struct.ovs_ct_limit_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %limits12.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %limits12.i, align 4
  %arrayidx.i = getelementptr %struct.hlist_head, ptr %16, i32 %i.042.i
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %arrayidx.i, align 4
  %inc.i = add nuw nsw i32 %i.042.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 512
  br i1 %exitcond.not.i, label %for.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  %call13.i = tail call ptr @nf_conncount_init(ptr noundef %net, i32 noundef 1, i32 noundef 4) #13
  %18 = ptrtoint ptr %ct_limit_info.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ct_limit_info.i, align 4
  %data.i = getelementptr inbounds %struct.ovs_ct_limit_info, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call13.i, ptr %data.i, align 4
  %21 = load ptr, ptr %ct_limit_info.i, align 4
  %data16.i = getelementptr inbounds %struct.ovs_ct_limit_info, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %data16.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %data16.i, align 4
  %cmp.i.i = icmp ugt ptr %23, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then18.i, label %for.end.i.ovs_ct_limit_init.exit_crit_edge

for.end.i.ovs_ct_limit_init.exit_crit_edge:       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ovs_ct_limit_init.exit

if.then18.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %24 = ptrtoint ptr %23 to i32
  %limits23.i = getelementptr inbounds %struct.ovs_ct_limit_info, ptr %21, i32 0, i32 1
  %25 = ptrtoint ptr %limits23.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %limits23.i, align 4
  tail call void @kfree(ptr noundef %26) #13
  %27 = ptrtoint ptr %ct_limit_info.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ct_limit_info.i, align 4
  tail call void @kfree(ptr noundef %28) #13
  %call25.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.95, i32 noundef %24) #16
  br label %ovs_ct_limit_init.exit

ovs_ct_limit_init.exit:                           ; preds = %if.then18.i, %for.end.i.ovs_ct_limit_init.exit_crit_edge, %if.then8.i, %if.end10.ovs_ct_limit_init.exit_crit_edge
  %retval.0.i = phi i32 [ %24, %if.then18.i ], [ -12, %if.then8.i ], [ -12, %if.end10.ovs_ct_limit_init.exit_crit_edge ], [ 0, %for.end.i.ovs_ct_limit_init.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_connlabels_get(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ovs_ct_exit(ptr noundef %net) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ovs_net_id to i32))
  %0 = load i32, ptr @ovs_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0)
  %ct_limit_info.i = getelementptr inbounds %struct.ovs_net, ptr %call, i32 0, i32 3
  %1 = ptrtoint ptr %ct_limit_info.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ct_limit_info.i, align 4
  %data.i = getelementptr inbounds %struct.ovs_ct_limit_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data.i, align 4
  tail call void @nf_conncount_destroy(ptr noundef %net, i32 noundef 1, ptr noundef %4) #13
  %limits.i = getelementptr inbounds %struct.ovs_ct_limit_info, ptr %2, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.end.i.for.body.i_crit_edge, %entry
  %i.060.i = phi i32 [ 0, %entry ], [ %inc.i, %for.end.i.for.body.i_crit_edge ]
  %5 = ptrtoint ptr %limits.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %limits.i, align 4
  %arrayidx.i = getelementptr %struct.hlist_head, ptr %6, i32 %i.060.i
  %call.i = tail call i32 @lockdep_ovsl_is_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %for.body.i.do.end.i_crit_edge

for.body.i.do.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %call1.i = tail call i32 @rcu_read_lock_any_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true3.i, label %land.lhs.true.i.do.end.i_crit_edge

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %call4.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %land.lhs.true3.i.do.end.i_crit_edge, label %land.lhs.true6.i

land.lhs.true3.i.do.end.i_crit_edge:              ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i

land.lhs.true6.i:                                 ; preds = %land.lhs.true3.i
  %.b56.i = load i1, ptr @ovs_ct_limit_exit.__warned, align 1
  br i1 %.b56.i, label %land.lhs.true6.i.do.end.i_crit_edge, label %if.then.i

land.lhs.true6.i.do.end.i_crit_edge:              ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i

if.then.i:                                        ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @ovs_ct_limit_exit.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 1921, ptr noundef nonnull @.str.23) #13
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %land.lhs.true6.i.do.end.i_crit_edge, %land.lhs.true3.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %for.body.i.do.end.i_crit_edge
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %ct_limit.057.i = load volatile ptr, ptr %arrayidx.i, align 4
  %tobool16.not58.i = icmp eq ptr %ct_limit.057.i, null
  br i1 %tobool16.not58.i, label %do.end.i.for.end.i_crit_edge, label %do.end.i.do.end23.i_crit_edge

do.end.i.do.end23.i_crit_edge:                    ; preds = %do.end.i
  br label %do.end23.i

do.end.i.for.end.i_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

do.end23.i:                                       ; preds = %do.end23.i.do.end23.i_crit_edge, %do.end.i.do.end23.i_crit_edge
  %ct_limit.059.i = phi ptr [ %ct_limit.0.i, %do.end23.i.do.end23.i_crit_edge ], [ %ct_limit.057.i, %do.end.i.do.end23.i_crit_edge ]
  %rcu.i = getelementptr inbounds %struct.ovs_ct_limit, ptr %ct_limit.059.i, i32 0, i32 1
  tail call void @kvfree_call_rcu(ptr noundef %rcu.i, ptr noundef nonnull inttoptr (i32 8 to ptr)) #13
  %8 = ptrtoint ptr %ct_limit.059.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %ct_limit.0.i = load volatile ptr, ptr %ct_limit.059.i, align 4
  %tobool16.not.i = icmp eq ptr %ct_limit.0.i, null
  br i1 %tobool16.not.i, label %do.end23.i.for.end.i_crit_edge, label %do.end23.i.do.end23.i_crit_edge

do.end23.i.do.end23.i_crit_edge:                  ; preds = %do.end23.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end23.i

do.end23.i.for.end.i_crit_edge:                   ; preds = %do.end23.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.end.i:                                        ; preds = %do.end23.i.for.end.i_crit_edge, %do.end.i.for.end.i_crit_edge
  %inc.i = add nuw nsw i32 %i.060.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 512
  br i1 %exitcond.not.i, label %ovs_ct_limit_exit.exit, label %for.end.i.for.body.i_crit_edge

for.end.i.for.body.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

ovs_ct_limit_exit.exit:                           ; preds = %for.end.i
  %9 = ptrtoint ptr %limits.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %limits.i, align 4
  tail call void @kfree(ptr noundef %10) #13
  tail call void @kfree(ptr noundef %2) #13
  %xt_label = getelementptr inbounds %struct.ovs_net, ptr %call, i32 0, i32 4
  %11 = ptrtoint ptr %xt_label to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %xt_label, align 4, !range !206
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not = icmp eq i8 %12, 0
  br i1 %tobool.not, label %ovs_ct_limit_exit.exit.if.end_crit_edge, label %if.then

ovs_ct_limit_exit.exit.if.end_crit_edge:          ; preds = %ovs_ct_limit_exit.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %ovs_ct_limit_exit.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @nf_connlabels_put(ptr noundef %net) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %ovs_ct_limit_exit.exit.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_connlabels_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @__ovs_ct_update_key(ptr noundef %key, i8 noundef zeroext %state, ptr nocapture noundef readonly %zone, ptr noundef readonly %ct) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %ct_state = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 9
  %0 = ptrtoint ptr %ct_state to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %state, ptr %ct_state, align 2
  %1 = ptrtoint ptr %zone to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %zone, align 2
  %ct_zone = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 12
  %3 = ptrtoint ptr %ct_zone to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %2, ptr %ct_zone, align 8
  %tobool.not.i = icmp eq ptr %ct, null
  br i1 %tobool.not.i, label %ovs_ct_get_labels.exit, label %cond.true.i63

cond.true.i63:                                    ; preds = %entry
  %mark.i = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 11
  %4 = ptrtoint ptr %mark.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mark.i, align 8
  %mark = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 15, i32 1
  %6 = ptrtoint ptr %mark to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %mark, align 4
  %labels = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 15, i32 2
  %ext.i.i.i.i = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 13
  %7 = ptrtoint ptr %ext.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ext.i.i.i.i, align 8
  %tobool.not.i.i.i.i = icmp eq ptr %8, null
  br i1 %tobool.not.i.i.i.i, label %cond.true.i63.ovs_ct_get_labels.exit.thread87_crit_edge, label %nf_ct_ext_exist.exit.i.i.i

cond.true.i63.ovs_ct_get_labels.exit.thread87_crit_edge: ; preds = %cond.true.i63
  call void @__sanitizer_cov_trace_pc() #15
  br label %ovs_ct_get_labels.exit.thread87

nf_ct_ext_exist.exit.i.i.i:                       ; preds = %cond.true.i63
  %arrayidx.i.i.i.i.i = getelementptr [10 x i8], ptr %8, i32 0, i32 7
  %9 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx.i.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.i.i.not.i.i.i = icmp eq i8 %10, 0
  br i1 %tobool.i.i.not.i.i.i, label %nf_ct_ext_exist.exit.i.i.i.ovs_ct_get_labels.exit.thread87_crit_edge, label %cond.end.i

nf_ct_ext_exist.exit.i.i.i.ovs_ct_get_labels.exit.thread87_crit_edge: ; preds = %nf_ct_ext_exist.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ovs_ct_get_labels.exit.thread87

cond.end.i:                                       ; preds = %nf_ct_ext_exist.exit.i.i.i
  %conv.i.i.i = zext i8 %10 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %8, i32 %conv.i.i.i
  %tobool1.not.i = icmp eq ptr %add.ptr.i.i.i, null
  br i1 %tobool1.not.i, label %cond.end.i.ovs_ct_get_labels.exit.thread87_crit_edge, label %ovs_ct_get_labels.exit.thread

cond.end.i.ovs_ct_get_labels.exit.thread87_crit_edge: ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ovs_ct_get_labels.exit.thread87

ovs_ct_get_labels.exit.thread:                    ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %11 = call ptr @memcpy(ptr %labels, ptr %add.ptr.i.i.i, i32 16)
  br label %if.then

ovs_ct_get_labels.exit.thread87:                  ; preds = %cond.end.i.ovs_ct_get_labels.exit.thread87_crit_edge, %nf_ct_ext_exist.exit.i.i.i.ovs_ct_get_labels.exit.thread87_crit_edge, %cond.true.i63.ovs_ct_get_labels.exit.thread87_crit_edge
  %12 = call ptr @memset(ptr %labels, i32 0, i32 16)
  br label %if.then

ovs_ct_get_labels.exit:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %mark84 = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 15, i32 1
  %13 = call ptr @memset(ptr %mark84, i32 0, i32 20)
  br label %if.end36

if.then:                                          ; preds = %ovs_ct_get_labels.exit.thread87, %ovs_ct_get_labels.exit.thread
  %master = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 10
  %14 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %master, align 4
  %tobool3.not = icmp eq ptr %15, null
  %spec.select = select i1 %tobool3.not, ptr %ct, ptr %15
  %tuple = getelementptr inbounds %struct.nf_conn, ptr %spec.select, i32 0, i32 4, i32 0, i32 1
  %type = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 8, i32 4
  %16 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %type, align 4
  %18 = zext i16 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.105)
  switch i16 %17, label %if.then.if.end36_crit_edge [
    i16 2048, label %land.lhs.true
    i16 -31011, label %land.lhs.true.i
  ]

if.then.if.end36_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end36

land.lhs.true:                                    ; preds = %if.then
  %l3num.i = getelementptr inbounds %struct.nf_conn, ptr %spec.select, i32 0, i32 4, i32 0, i32 1, i32 0, i32 2
  %19 = ptrtoint ptr %l3num.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %l3num.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %20)
  %cmp9 = icmp eq i16 %20, 2
  br i1 %cmp9, label %if.then11, label %land.lhs.true.if.end36_crit_edge

land.lhs.true.if.end36_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end36

if.then11:                                        ; preds = %land.lhs.true
  %21 = ptrtoint ptr %tuple to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %tuple, align 4
  %23 = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 14, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %22, ptr %23, align 8
  %dst = getelementptr inbounds %struct.nf_conn, ptr %spec.select, i32 0, i32 4, i32 0, i32 1, i32 1
  %25 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %dst, align 4
  %dst14 = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 14, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3
  %27 = ptrtoint ptr %dst14 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %dst14, align 4
  %protonum.i = getelementptr inbounds %struct.nf_conn, ptr %spec.select, i32 0, i32 4, i32 0, i32 1, i32 1, i32 2
  %28 = ptrtoint ptr %protonum.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %protonum.i, align 2
  %ct_orig_proto.i = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 10
  %30 = ptrtoint ptr %ct_orig_proto.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %ct_orig_proto.i, align 1
  %31 = load i8, ptr %protonum.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %31)
  %cmp.i = icmp eq i8 %31, 1
  br i1 %cmp.i, label %if.then.i64, label %if.else.i65

if.then.i64:                                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #15
  %u.i = getelementptr inbounds %struct.nf_conn, ptr %spec.select, i32 0, i32 4, i32 0, i32 1, i32 1, i32 1
  %32 = ptrtoint ptr %u.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %u.i, align 4
  %conv6.i = zext i8 %33 to i16
  %ct.i = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 15
  %34 = ptrtoint ptr %ct.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %conv6.i, ptr %ct.i, align 4
  %code.i = getelementptr inbounds %struct.anon.116, ptr %u.i, i32 0, i32 1
  %35 = ptrtoint ptr %code.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %code.i, align 1
  %conv9.i = zext i8 %36 to i16
  br label %__ovs_ct_update_key_orig_tp.exit

if.else.i65:                                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #15
  %u14.i = getelementptr inbounds %struct.nf_conn, ptr %spec.select, i32 0, i32 4, i32 0, i32 1, i32 0, i32 1
  %37 = ptrtoint ptr %u14.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %u14.i, align 4
  %ct15.i = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 15
  %39 = ptrtoint ptr %ct15.i to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %38, ptr %ct15.i, align 4
  %u19.i = getelementptr inbounds %struct.nf_conn, ptr %spec.select, i32 0, i32 4, i32 0, i32 1, i32 1, i32 1
  %40 = ptrtoint ptr %u19.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %u19.i, align 4
  br label %__ovs_ct_update_key_orig_tp.exit

__ovs_ct_update_key_orig_tp.exit:                 ; preds = %if.else.i65, %if.then.i64
  %.sink.i = phi i16 [ %conv9.i, %if.then.i64 ], [ %41, %if.else.i65 ]
  %42 = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 15, i32 0, i32 1
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %.sink.i, ptr %42, align 2
  br label %return

land.lhs.true.i:                                  ; preds = %if.then
  %44 = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 11
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %44, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 58, i8 %46)
  %cmp3.i = icmp eq i8 %46, 58
  br i1 %cmp3.i, label %land.lhs.true5.i, label %land.lhs.true.i.land.lhs.true22_crit_edge

land.lhs.true.i.land.lhs.true22_crit_edge:        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true22

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %dst.i = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 13, i32 1
  %47 = ptrtoint ptr %dst.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %dst.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %48)
  %cmp7.i = icmp eq i16 %48, 0
  br i1 %cmp7.i, label %sw_flow_key_is_nd.exit, label %land.lhs.true5.i.land.lhs.true22_crit_edge

land.lhs.true5.i.land.lhs.true22_crit_edge:       ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true22

sw_flow_key_is_nd.exit:                           ; preds = %land.lhs.true5.i
  %tp.i = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 13
  %49 = ptrtoint ptr %tp.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %tp.i, align 2
  %51 = add i16 %50, -135
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %51)
  %52 = icmp ult i16 %51, 2
  br i1 %52, label %sw_flow_key_is_nd.exit.if.end36_crit_edge, label %sw_flow_key_is_nd.exit.land.lhs.true22_crit_edge

sw_flow_key_is_nd.exit.land.lhs.true22_crit_edge: ; preds = %sw_flow_key_is_nd.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true22

sw_flow_key_is_nd.exit.if.end36_crit_edge:        ; preds = %sw_flow_key_is_nd.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end36

land.lhs.true22:                                  ; preds = %sw_flow_key_is_nd.exit.land.lhs.true22_crit_edge, %land.lhs.true5.i.land.lhs.true22_crit_edge, %land.lhs.true.i.land.lhs.true22_crit_edge
  %l3num.i67 = getelementptr inbounds %struct.nf_conn, ptr %spec.select, i32 0, i32 4, i32 0, i32 1, i32 0, i32 2
  %53 = ptrtoint ptr %l3num.i67 to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %l3num.i67, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %54)
  %cmp25 = icmp eq i16 %54, 10
  br i1 %cmp25, label %if.then27, label %land.lhs.true22.if.end36_crit_edge

land.lhs.true22.if.end36_crit_edge:               ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end36

if.then27:                                        ; preds = %land.lhs.true22
  %55 = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 14, i32 0, i32 2
  %56 = call ptr @memcpy(ptr %55, ptr %tuple, i32 16)
  %dst31 = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 14, i32 0, i32 2, i32 0, i32 1
  %dst32 = getelementptr inbounds %struct.nf_conn, ptr %spec.select, i32 0, i32 4, i32 0, i32 1, i32 1
  %57 = call ptr @memcpy(ptr %dst31, ptr %dst32, i32 16)
  %protonum.i68 = getelementptr inbounds %struct.nf_conn, ptr %spec.select, i32 0, i32 4, i32 0, i32 1, i32 1, i32 2
  %58 = ptrtoint ptr %protonum.i68 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %protonum.i68, align 2
  %ct_orig_proto.i69 = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 10
  %60 = ptrtoint ptr %ct_orig_proto.i69 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %59, ptr %ct_orig_proto.i69, align 1
  %61 = load i8, ptr %protonum.i68, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 58, i8 %61)
  %cmp.i70 = icmp eq i8 %61, 58
  br i1 %cmp.i70, label %if.then.i76, label %if.else.i80

if.then.i76:                                      ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #15
  %u.i71 = getelementptr inbounds %struct.nf_conn, ptr %spec.select, i32 0, i32 4, i32 0, i32 1, i32 1, i32 1
  %62 = ptrtoint ptr %u.i71 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %u.i71, align 4
  %conv6.i72 = zext i8 %63 to i16
  %ct.i73 = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 15
  %64 = ptrtoint ptr %ct.i73 to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %conv6.i72, ptr %ct.i73, align 4
  %code.i74 = getelementptr inbounds %struct.anon.116, ptr %u.i71, i32 0, i32 1
  %65 = ptrtoint ptr %code.i74 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %code.i74, align 1
  %conv9.i75 = zext i8 %66 to i16
  br label %__ovs_ct_update_key_orig_tp.exit82

if.else.i80:                                      ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #15
  %u14.i77 = getelementptr inbounds %struct.nf_conn, ptr %spec.select, i32 0, i32 4, i32 0, i32 1, i32 0, i32 1
  %67 = ptrtoint ptr %u14.i77 to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %u14.i77, align 4
  %ct15.i78 = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 15
  %69 = ptrtoint ptr %ct15.i78 to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 %68, ptr %ct15.i78, align 4
  %u19.i79 = getelementptr inbounds %struct.nf_conn, ptr %spec.select, i32 0, i32 4, i32 0, i32 1, i32 1, i32 1
  %70 = ptrtoint ptr %u19.i79 to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %u19.i79, align 4
  br label %__ovs_ct_update_key_orig_tp.exit82

__ovs_ct_update_key_orig_tp.exit82:               ; preds = %if.else.i80, %if.then.i76
  %.sink.i81 = phi i16 [ %conv9.i75, %if.then.i76 ], [ %71, %if.else.i80 ]
  %72 = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 15, i32 0, i32 1
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 %.sink.i81, ptr %72, align 2
  br label %return

if.end36:                                         ; preds = %land.lhs.true22.if.end36_crit_edge, %sw_flow_key_is_nd.exit.if.end36_crit_edge, %land.lhs.true.if.end36_crit_edge, %if.then.if.end36_crit_edge, %ovs_ct_get_labels.exit
  %ct_orig_proto = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 10
  %74 = ptrtoint ptr %ct_orig_proto to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 0, ptr %ct_orig_proto, align 1
  br label %return

return:                                           ; preds = %if.end36, %__ovs_ct_update_key_orig_tp.exit82, %__ovs_ct_update_key_orig_tp.exit
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_trim_rcsum_slow(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_defrag(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_ct_frag6_gather(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ovs_flow_key_update_l3l4(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__ovs_ct_lookup(ptr noundef %net, ptr noundef %key, ptr noundef %info, ptr noundef %skb) unnamed_addr #1 align 64 {
entry:
  %state = alloca %struct.nf_hook_state, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %_nfct.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 5
  %0 = ptrtoint ptr %_nfct.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %_nfct.i.i.i, align 8
  %and1.i.i = and i32 %1, -8
  %2 = inttoptr i32 %and1.i.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry.if.then3.i_crit_edge

entry.if.then3.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then3.i

if.then.i:                                        ; preds = %entry
  %ct_state.i.i = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 9
  %3 = ptrtoint ptr %ct_state.i.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %ct_state.i.i, align 2
  %5 = and i8 %4, 48
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %5)
  %6 = icmp eq i8 %5, 32
  br i1 %6, label %land.rhs.i.i, label %lor.lhs.false.i.i

land.rhs.i.i:                                     ; preds = %if.then.i
  %ct_zone.i.i = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 12
  %7 = ptrtoint ptr %ct_zone.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %ct_zone.i.i, align 8
  %zone.i.i = getelementptr inbounds %struct.ovs_conntrack_info, ptr %info, i32 0, i32 1
  %9 = ptrtoint ptr %zone.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %zone.i.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %8, i16 %10)
  %cmp.i.i = icmp eq i16 %8, %10
  br i1 %cmp.i.i, label %land.rhs.i.i.if.end.i_crit_edge, label %land.rhs.i.i.if.then_crit_edge

land.rhs.i.i.if.then_crit_edge:                   ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

land.rhs.i.i.if.end.i_crit_edge:                  ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

lor.lhs.false.i.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool11.not.i.i = icmp eq i8 %4, 0
  br i1 %tobool11.not.i.i, label %land.lhs.true12.i.i, label %lor.lhs.false.i.i.if.then_crit_edge

lor.lhs.false.i.i.if.then_crit_edge:              ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

land.lhs.true12.i.i:                              ; preds = %lor.lhs.false.i.i
  %force.i.i = getelementptr inbounds %struct.ovs_conntrack_info, ptr %info, i32 0, i32 3
  %11 = ptrtoint ptr %force.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load.i.i = load i8, ptr %force.i.i, align 4
  %12 = and i8 %bf.load.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool14.not.i.i = icmp eq i8 %12, 0
  br i1 %tobool14.not.i.i, label %land.lhs.true12.i.i.if.then_crit_edge, label %land.lhs.true12.i.i.if.end.i_crit_edge

land.lhs.true12.i.i.if.end.i_crit_edge:           ; preds = %land.lhs.true12.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

land.lhs.true12.i.i.if.then_crit_edge:            ; preds = %land.lhs.true12.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

if.end.i:                                         ; preds = %land.lhs.true12.i.i.if.end.i_crit_edge, %land.rhs.i.i.if.end.i_crit_edge
  %ct_executed.1.i = phi i8 [ 1, %land.rhs.i.i.if.end.i_crit_edge ], [ 0, %land.lhs.true12.i.i.if.end.i_crit_edge ]
  %zone15.i.i = getelementptr inbounds %struct.ovs_conntrack_info, ptr %info, i32 0, i32 1
  %family.i.i = getelementptr inbounds %struct.ovs_conntrack_info, ptr %info, i32 0, i32 4
  %13 = ptrtoint ptr %family.i.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %family.i.i, align 2
  %conv16.i.i = trunc i16 %14 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 63, i8 %4)
  %tobool20.i.i = icmp ugt i8 %4, 63
  %call.i.i = tail call fastcc ptr @ovs_ct_find_existing(ptr noundef %net, ptr noundef %zone15.i.i, i8 noundef zeroext %conv16.i.i, ptr noundef %skb, i1 noundef zeroext %tobool20.i.i) #13
  %tobool2.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool2.not.i, label %if.end.i.if.then_crit_edge, label %if.end.i.if.then3.i_crit_edge

if.end.i.if.then3.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then3.i

if.end.i.if.then_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

if.then3.i:                                       ; preds = %if.end.i.if.then3.i_crit_edge, %entry.if.then3.i_crit_edge
  %ct.0114.i = phi ptr [ %call.i.i, %if.end.i.if.then3.i_crit_edge ], [ %2, %entry.if.then3.i_crit_edge ]
  %ct_executed.3113.i = phi i8 [ %ct_executed.1.i, %if.end.i.if.then3.i_crit_edge ], [ 1, %entry.if.then3.i_crit_edge ]
  %15 = ptrtoint ptr %_nfct.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %_nfct.i.i.i, align 8
  %and.i97.i = and i32 %16, 7
  %ct_net.i = getelementptr inbounds %struct.nf_conn, ptr %ct.0114.i, i32 0, i32 7
  %17 = ptrtoint ptr %ct_net.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ct_net.i, align 4
  %cmp.i99.not.i = icmp eq ptr %18, %net
  br i1 %cmp.i99.not.i, label %if.end10.i, label %if.then3.i.if.then_crit_edge

if.then3.i.if.then_crit_edge:                     ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

if.end10.i:                                       ; preds = %if.then3.i
  %ct11.i = getelementptr inbounds %struct.ovs_conntrack_info, ptr %info, i32 0, i32 2
  %19 = ptrtoint ptr %ct11.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ct11.i, align 4
  %zone.i100.i = getelementptr inbounds %struct.nf_conn, ptr %ct.0114.i, i32 0, i32 3
  %zone.i.i.i = getelementptr inbounds %struct.nf_conn, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %zone.i.i.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %zone.i.i.i, align 2
  %23 = ptrtoint ptr %zone.i100.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %zone.i100.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %22, i16 %24)
  %cmp.i101.i = icmp eq i16 %22, %24
  br i1 %cmp.i101.i, label %if.end15.i, label %if.end10.i.if.then_crit_edge

if.end10.i.if.then_crit_edge:                     ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

if.end15.i:                                       ; preds = %if.end10.i
  %25 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %info, align 4
  %tobool16.not.i = icmp eq ptr %26, null
  br i1 %tobool16.not.i, label %if.end15.i.if.end25.i_crit_edge, label %if.then17.i

if.end15.i.if.end25.i_crit_edge:                  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end25.i

if.then17.i:                                      ; preds = %if.end15.i
  %ext.i.i.i = getelementptr inbounds %struct.nf_conn, ptr %ct.0114.i, i32 0, i32 13
  %27 = ptrtoint ptr %ext.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ext.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %28, null
  br i1 %tobool.not.i.i.i, label %if.then17.i.if.end25.i_crit_edge, label %nf_ct_ext_exist.exit.i.i

if.then17.i.if.end25.i_crit_edge:                 ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end25.i

nf_ct_ext_exist.exit.i.i:                         ; preds = %if.then17.i
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %28, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool.i.i.not.i.i = icmp eq i8 %30, 0
  br i1 %tobool.i.i.not.i.i, label %nf_ct_ext_exist.exit.i.i.if.end25.i_crit_edge, label %__nf_ct_ext_find.exit.i

nf_ct_ext_exist.exit.i.i.if.end25.i_crit_edge:    ; preds = %nf_ct_ext_exist.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end25.i

__nf_ct_ext_find.exit.i:                          ; preds = %nf_ct_ext_exist.exit.i.i
  %conv.i102.i = zext i8 %30 to i32
  %add.ptr.i.i = getelementptr i8, ptr %28, i32 %conv.i102.i
  %tobool19.not.i = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool19.not.i, label %__nf_ct_ext_find.exit.i.if.end25.i_crit_edge, label %land.lhs.true.i

__nf_ct_ext_find.exit.i.if.end25.i_crit_edge:     ; preds = %__nf_ct_ext_find.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end25.i

land.lhs.true.i:                                  ; preds = %__nf_ct_ext_find.exit.i
  %31 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile ptr, ptr %add.ptr.i.i, align 8
  %cmp.not.i = icmp eq ptr %32, %26
  br i1 %cmp.not.i, label %land.lhs.true.i.if.end25.i_crit_edge, label %land.lhs.true.i.if.then_crit_edge

land.lhs.true.i.if.then_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

land.lhs.true.i.if.end25.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end25.i

if.end25.i:                                       ; preds = %land.lhs.true.i.if.end25.i_crit_edge, %__nf_ct_ext_find.exit.i.if.end25.i_crit_edge, %nf_ct_ext_exist.exit.i.i.if.end25.i_crit_edge, %if.then17.i.if.end25.i_crit_edge, %if.end15.i.if.end25.i_crit_edge
  %nf_ct_timeout.i = getelementptr inbounds %struct.ovs_conntrack_info, ptr %info, i32 0, i32 9
  %33 = ptrtoint ptr %nf_ct_timeout.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %nf_ct_timeout.i, align 4
  %tobool26.not.i = icmp eq ptr %34, null
  br i1 %tobool26.not.i, label %if.end25.i.if.end54.i_crit_edge, label %if.then27.i

if.end25.i.if.end54.i_crit_edge:                  ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end54.i

if.then27.i:                                      ; preds = %if.end25.i
  %ext.i.i.i.i = getelementptr inbounds %struct.nf_conn, ptr %ct.0114.i, i32 0, i32 13
  %35 = ptrtoint ptr %ext.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ext.i.i.i.i, align 8
  %tobool.not.i.i.i.i = icmp eq ptr %36, null
  br i1 %tobool.not.i.i.i.i, label %if.then27.i.if.then_crit_edge, label %nf_ct_ext_exist.exit.i.i.i

if.then27.i.if.then_crit_edge:                    ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

nf_ct_ext_exist.exit.i.i.i:                       ; preds = %if.then27.i
  %arrayidx.i.i.i.i.i = getelementptr [10 x i8], ptr %36, i32 0, i32 6
  %37 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx.i.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool.i.i.not.i.i.i = icmp eq i8 %38, 0
  br i1 %tobool.i.i.not.i.i.i, label %nf_ct_ext_exist.exit.i.i.i.if.then_crit_edge, label %nf_ct_timeout_find.exit.i

nf_ct_ext_exist.exit.i.i.i.if.then_crit_edge:     ; preds = %nf_ct_ext_exist.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

nf_ct_timeout_find.exit.i:                        ; preds = %nf_ct_ext_exist.exit.i.i.i
  %conv.i.i.i = zext i8 %38 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %36, i32 %conv.i.i.i
  %tobool29.not.i = icmp eq ptr %add.ptr.i.i.i, null
  br i1 %tobool29.not.i, label %nf_ct_timeout_find.exit.i.if.then_crit_edge, label %lor.lhs.false.i

nf_ct_timeout_find.exit.i.if.then_crit_edge:      ; preds = %nf_ct_timeout_find.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

lor.lhs.false.i:                                  ; preds = %nf_ct_timeout_find.exit.i
  %39 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile ptr, ptr %add.ptr.i.i.i, align 4
  %call36.i = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.i)
  %tobool37.not.i = icmp eq i32 %call36.i, 0
  br i1 %tobool37.not.i, label %land.lhs.true38.i, label %lor.lhs.false.i.do.end46.i_crit_edge

lor.lhs.false.i.do.end46.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end46.i

land.lhs.true38.i:                                ; preds = %lor.lhs.false.i
  %call39.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39.i)
  %tobool40.not.i = icmp eq i32 %call39.i, 0
  br i1 %tobool40.not.i, label %land.lhs.true38.i.do.end46.i_crit_edge, label %land.lhs.true41.i

land.lhs.true38.i.do.end46.i_crit_edge:           ; preds = %land.lhs.true38.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end46.i

land.lhs.true41.i:                                ; preds = %land.lhs.true38.i
  %.b95.i = load i1, ptr @skb_nfct_cached.__warned, align 1
  br i1 %.b95.i, label %land.lhs.true41.i.do.end46.i_crit_edge, label %if.then43.i

land.lhs.true41.i.do.end46.i_crit_edge:           ; preds = %land.lhs.true41.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end46.i

if.then43.i:                                      ; preds = %land.lhs.true41.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @skb_nfct_cached.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 717, ptr noundef nonnull @.str.10) #13
  br label %do.end46.i

do.end46.i:                                       ; preds = %if.then43.i, %land.lhs.true41.i.do.end46.i_crit_edge, %land.lhs.true38.i.do.end46.i_crit_edge, %lor.lhs.false.i.do.end46.i_crit_edge
  %cmp48.not.i = icmp eq ptr %34, %40
  br i1 %cmp48.not.i, label %do.end46.i.if.end54.i_crit_edge, label %do.end46.i.if.then_crit_edge

do.end46.i.if.then_crit_edge:                     ; preds = %do.end46.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

do.end46.i.if.end54.i_crit_edge:                  ; preds = %do.end46.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end54.i

if.end54.i:                                       ; preds = %do.end46.i.if.end54.i_crit_edge, %if.end25.i.if.end54.i_crit_edge
  %force.i = getelementptr inbounds %struct.ovs_conntrack_info, ptr %info, i32 0, i32 3
  %41 = ptrtoint ptr %force.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %bf.load.i = load i8, ptr %force.i, align 4
  %42 = and i8 %bf.load.i, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool55.not.i = icmp ne i8 %42, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i97.i)
  %cmp57.i = icmp ugt i32 %and.i97.i, 2
  %or.cond.i = select i1 %tobool55.not.i, i1 %cmp57.i, i1 false
  br i1 %or.cond.i, label %if.then61.i, label %skb_nfct_cached.exit

if.then61.i:                                      ; preds = %if.end54.i
  %status.i.i = getelementptr inbounds %struct.nf_conn, ptr %ct.0114.i, i32 0, i32 5
  %43 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %status.i.i, align 4
  %45 = and i32 %44, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool63.not.i = icmp eq i32 %45, 0
  br i1 %tobool63.not.i, label %if.then61.i.if.end66.i_crit_edge, label %if.then64.i

if.then61.i.if.end66.i_crit_edge:                 ; preds = %if.then61.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end66.i

if.then64.i:                                      ; preds = %if.then61.i
  call void @__sanitizer_cov_trace_pc() #15
  %call65.i = tail call zeroext i1 @nf_ct_delete(ptr noundef nonnull %ct.0114.i, i32 noundef 0, i32 noundef 0) #13
  br label %if.end66.i

if.end66.i:                                       ; preds = %if.then64.i, %if.then61.i.if.end66.i_crit_edge
  %tobool.not.i222 = icmp eq ptr %ct.0114.i, null
  br i1 %tobool.not.i222, label %if.end66.i.nf_ct_put.exit232_crit_edge, label %land.lhs.true.i226

if.end66.i.nf_ct_put.exit232_crit_edge:           ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %nf_ct_put.exit232

land.lhs.true.i226:                               ; preds = %if.end66.i
  %call.i.i.i.i.i.i223 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %ct.0114.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !201
  tail call void @llvm.prefetch.p0(ptr nonnull %ct.0114.i, i32 1, i32 3, i32 1) #13
  %46 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %ct.0114.i, ptr nonnull %ct.0114.i, i32 1, ptr nonnull elementtype(i32) %ct.0114.i) #13, !srcloc !202
  %asmresult.i.i.i.i.i.i.i224 = extractvalue { i32, i32, i32 } %46, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i224)
  %cmp.i.i.i.i225 = icmp eq i32 %asmresult.i.i.i.i.i.i.i224, 1
  br i1 %cmp.i.i.i.i225, label %if.then.i230, label %if.end5.i.i.i.i228

if.end5.i.i.i.i228:                               ; preds = %land.lhs.true.i226
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i224)
  %.not.i.i.i.i227 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i224, 0
  br i1 %.not.i.i.i.i227, label %if.end5.i.i.i.i228.nf_ct_put.exit232_crit_edge, label %if.then10.i.i.i.i229, !prof !203

if.end5.i.i.i.i228.nf_ct_put.exit232_crit_edge:   ; preds = %if.end5.i.i.i.i228
  call void @__sanitizer_cov_trace_pc() #15
  br label %nf_ct_put.exit232

if.then10.i.i.i.i229:                             ; preds = %if.end5.i.i.i.i228
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @refcount_warn_saturate(ptr noundef nonnull %ct.0114.i, i32 noundef 3) #13
  br label %nf_ct_put.exit232

if.then.i230:                                     ; preds = %land.lhs.true.i226
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !204
  tail call void @nf_ct_destroy(ptr noundef nonnull %ct.0114.i) #13
  br label %nf_ct_put.exit232

nf_ct_put.exit232:                                ; preds = %if.then.i230, %if.then10.i.i.i.i229, %if.end5.i.i.i.i228.nf_ct_put.exit232_crit_edge, %if.end66.i.nf_ct_put.exit232_crit_edge
  %47 = ptrtoint ptr %_nfct.i.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %_nfct.i.i.i, align 8
  br label %if.then

skb_nfct_cached.exit:                             ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %ct_executed.3113.i)
  %tobool68.i.not = icmp eq i8 %ct_executed.3113.i, 0
  br i1 %tobool68.i.not, label %skb_nfct_cached.exit.if.then_crit_edge, label %skb_nfct_cached.exit.if.end12_crit_edge

skb_nfct_cached.exit.if.end12_crit_edge:          ; preds = %skb_nfct_cached.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end12

skb_nfct_cached.exit.if.then_crit_edge:           ; preds = %skb_nfct_cached.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

if.then:                                          ; preds = %skb_nfct_cached.exit.if.then_crit_edge, %nf_ct_put.exit232, %do.end46.i.if.then_crit_edge, %nf_ct_timeout_find.exit.i.if.then_crit_edge, %nf_ct_ext_exist.exit.i.i.i.if.then_crit_edge, %if.then27.i.if.then_crit_edge, %land.lhs.true.i.if.then_crit_edge, %if.end10.i.if.then_crit_edge, %if.then3.i.if.then_crit_edge, %if.end.i.if.then_crit_edge, %land.lhs.true12.i.i.if.then_crit_edge, %lor.lhs.false.i.i.if.then_crit_edge, %land.rhs.i.i.if.then_crit_edge
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %state) #13
  %pf = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 1
  %family = getelementptr inbounds %struct.ovs_conntrack_info, ptr %info, i32 0, i32 4
  %48 = call ptr @memset(ptr %state, i32 0, i32 24)
  %49 = ptrtoint ptr %family to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %family, align 2
  %conv = trunc i16 %50 to i8
  %51 = ptrtoint ptr %pf to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %conv, ptr %pf, align 1
  %net1 = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 5
  %52 = ptrtoint ptr %net1 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %net, ptr %net1, align 4
  %ct2 = getelementptr inbounds %struct.ovs_conntrack_info, ptr %info, i32 0, i32 2
  %53 = ptrtoint ptr %ct2 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ct2, align 4
  %tobool3.not = icmp eq ptr %54, null
  br i1 %tobool3.not, label %if.then.if.end_crit_edge, label %if.then4

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then4:                                         ; preds = %if.then
  %55 = ptrtoint ptr %_nfct.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %_nfct.i.i.i, align 8
  %and1.i = and i32 %56, -8
  %57 = inttoptr i32 %and1.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not.i154 = icmp eq i32 %and1.i, 0
  br i1 %tobool.not.i154, label %if.then4.if.then.i160_crit_edge, label %land.lhs.true.i155

if.then4.if.then.i160_crit_edge:                  ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i160

land.lhs.true.i155:                               ; preds = %if.then4
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %57, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !201
  tail call void @llvm.prefetch.p0(ptr nonnull %57, i32 1, i32 3, i32 1) #13
  %58 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %57, ptr nonnull %57, i32 1, ptr nonnull elementtype(i32) %57) #13, !srcloc !202
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %58, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i156, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %land.lhs.true.i155
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.if.then.i160_crit_edge, label %if.then10.i.i.i.i, !prof !203

if.end5.i.i.i.i.if.then.i160_crit_edge:           ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i160

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @refcount_warn_saturate(ptr noundef nonnull %57, i32 noundef 3) #13
  br label %if.then.i160

if.then.i156:                                     ; preds = %land.lhs.true.i155
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !204
  tail call void @nf_ct_destroy(ptr noundef nonnull %57) #13
  br label %if.then.i160

if.then.i160:                                     ; preds = %if.then.i156, %if.then10.i.i.i.i, %if.end5.i.i.i.i.if.then.i160_crit_edge, %if.then4.if.then.i160_crit_edge
  %call.i.i.i.i.i.i159 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %54, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr nonnull %54, i32 1, i32 3, i32 1) #13
  %59 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %54, ptr nonnull %54, i32 1, ptr nonnull elementtype(i32) %54) #13, !srcloc !210
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %59, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then.i160.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !200

if.then.i160.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.then.i160
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then.i160
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %60 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %60)
  %.not.i.i.i.i161 = icmp sgt i32 %60, -1
  br i1 %.not.i.i.i.i161, label %if.else.i.i.i.i.nf_conntrack_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !203

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.nf_conntrack_get.exit_crit_edge:  ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %nf_conntrack_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then.i160.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then.i160.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %54, i32 noundef %.sink.i.i.i.i) #13
  br label %nf_conntrack_get.exit

nf_conntrack_get.exit:                            ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.nf_conntrack_get.exit_crit_edge
  %61 = ptrtoint ptr %54 to i32
  %or.i = or i32 %61, 2
  %slow_gro.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %62 = ptrtoint ptr %slow_gro.i.i to i32
  call void @__asan_loadN_noabort(i32 %62, i32 4)
  %bf.load.i.i163 = load i32, ptr %slow_gro.i.i, align 2
  %bf.set.i.i = or i32 %bf.load.i.i163, 4096
  store i32 %bf.set.i.i, ptr %slow_gro.i.i, align 2
  %63 = ptrtoint ptr %_nfct.i.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %or.i, ptr %_nfct.i.i.i, align 8
  br label %if.end

if.end:                                           ; preds = %nf_conntrack_get.exit, %if.then.if.end_crit_edge
  %call6 = call i32 @nf_conntrack_in(ptr noundef %skb, ptr noundef nonnull %state) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call6)
  %cmp.not = icmp eq i32 %call6, 1
  br i1 %cmp.not, label %if.end9, label %cleanup104.critedge

if.end9:                                          ; preds = %if.end
  %ct_state = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 9
  %64 = ptrtoint ptr %ct_state to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 0, ptr %ct_state, align 2
  %65 = ptrtoint ptr %_nfct.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %_nfct.i.i.i, align 8
  %and1.i.i166 = and i32 %66, -8
  %67 = inttoptr i32 %and1.i.i166 to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i166)
  %tobool.not.i167 = icmp eq i32 %and1.i.i166, 0
  br i1 %tobool.not.i167, label %if.else36.i, label %if.then.i168

if.then.i168:                                     ; preds = %if.end9
  %and.i.i = and i32 %66, 7
  %ctinfo.off.i.i = add nsw i32 %and.i.i, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %ctinfo.off.i.i)
  %switch.i.i = icmp ult i32 %ctinfo.off.i.i, 2
  %spec.select.i.i = select i1 %switch.i.i, i8 40, i8 32
  %68 = zext i32 %and.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %68, ptr @__sancov_gen_cov_switch_values.106)
  switch i32 %and.i.i, label %if.then.i168.ovs_ct_get_state.exit.i_crit_edge [
    i32 0, label %if.then.i168.sw.bb2.i.i_crit_edge
    i32 3, label %if.then.i168.sw.bb2.i.i_crit_edge249
    i32 1, label %if.then.i168.sw.bb6.i.i_crit_edge
    i32 4, label %if.then.i168.sw.bb6.i.i_crit_edge250
    i32 2, label %sw.bb10.i.i
  ]

if.then.i168.sw.bb6.i.i_crit_edge250:             ; preds = %if.then.i168
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb6.i.i

if.then.i168.sw.bb6.i.i_crit_edge:                ; preds = %if.then.i168
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb6.i.i

if.then.i168.sw.bb2.i.i_crit_edge249:             ; preds = %if.then.i168
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb2.i.i

if.then.i168.sw.bb2.i.i_crit_edge:                ; preds = %if.then.i168
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb2.i.i

if.then.i168.ovs_ct_get_state.exit.i_crit_edge:   ; preds = %if.then.i168
  call void @__sanitizer_cov_trace_pc() #15
  br label %ovs_ct_get_state.exit.i

sw.bb2.i.i:                                       ; preds = %if.then.i168.sw.bb2.i.i_crit_edge, %if.then.i168.sw.bb2.i.i_crit_edge249
  %69 = or i8 %spec.select.i.i, 2
  br label %ovs_ct_get_state.exit.i

sw.bb6.i.i:                                       ; preds = %if.then.i168.sw.bb6.i.i_crit_edge, %if.then.i168.sw.bb6.i.i_crit_edge250
  %70 = or i8 %spec.select.i.i, 4
  br label %ovs_ct_get_state.exit.i

sw.bb10.i.i:                                      ; preds = %if.then.i168
  call void @__sanitizer_cov_trace_pc() #15
  %71 = or i8 %spec.select.i.i, 1
  br label %ovs_ct_get_state.exit.i

ovs_ct_get_state.exit.i:                          ; preds = %sw.bb10.i.i, %sw.bb6.i.i, %sw.bb2.i.i, %if.then.i168.ovs_ct_get_state.exit.i_crit_edge
  %ct_state.1.i.i = phi i8 [ %spec.select.i.i, %if.then.i168.ovs_ct_get_state.exit.i_crit_edge ], [ %71, %sw.bb10.i.i ], [ %70, %sw.bb6.i.i ], [ %69, %sw.bb2.i.i ]
  %status.i.i169 = getelementptr inbounds %struct.nf_conn, ptr %67, i32 0, i32 5
  %72 = ptrtoint ptr %status.i.i169 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load volatile i32, ptr %status.i.i169, align 8
  %74 = trunc i32 %73 to i8
  %75 = lshr i8 %74, 3
  %76 = and i8 %75, 1
  %77 = xor i8 %76, 1
  %spec.select.i = or i8 %77, %ct_state.1.i.i
  %master.i = getelementptr inbounds %struct.nf_conn, ptr %67, i32 0, i32 10
  %78 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %master.i, align 4
  %tobool7.not.i = icmp eq ptr %79, null
  %80 = or i8 %spec.select.i, 4
  %state.1.i = select i1 %tobool7.not.i, i8 %spec.select.i, i8 %80
  %zone.i.i170 = getelementptr inbounds %struct.nf_conn, ptr %67, i32 0, i32 3
  br label %ovs_ct_update_key.exit

if.else36.i:                                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  %tobool39.not.i = icmp eq ptr %info, null
  %zone41.i = getelementptr inbounds %struct.ovs_conntrack_info, ptr %info, i32 0, i32 1
  %spec.select60.i = select i1 %tobool39.not.i, ptr @nf_ct_zone_dflt, ptr %zone41.i
  br label %ovs_ct_update_key.exit

ovs_ct_update_key.exit:                           ; preds = %if.else36.i, %ovs_ct_get_state.exit.i
  %zone.0.i = phi ptr [ %zone.i.i170, %ovs_ct_get_state.exit.i ], [ %spec.select60.i, %if.else36.i ]
  %state.4.i = phi i8 [ %state.1.i, %ovs_ct_get_state.exit.i ], [ 48, %if.else36.i ]
  call fastcc void @__ovs_ct_update_key(ptr noundef %key, i8 noundef zeroext %state.4.i, ptr noundef %zone.0.i, ptr noundef %67) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %state) #13
  br label %if.end12

if.end12:                                         ; preds = %ovs_ct_update_key.exit, %skb_nfct_cached.exit.if.end12_crit_edge
  %retval.3.i236 = phi i1 [ true, %ovs_ct_update_key.exit ], [ false, %skb_nfct_cached.exit.if.end12_crit_edge ]
  %81 = ptrtoint ptr %_nfct.i.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %_nfct.i.i.i, align 8
  %and.i172 = and i32 %82, 7
  %and1.i173 = and i32 %82, -8
  %83 = inttoptr i32 %and1.i173 to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i173)
  %tobool14.not = icmp eq i32 %and1.i173, 0
  br i1 %tobool14.not, label %if.end12.cleanup104_crit_edge, label %if.then15

if.end12.cleanup104_crit_edge:                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup104

if.then15:                                        ; preds = %if.end12
  %nat = getelementptr inbounds %struct.ovs_conntrack_info, ptr %info, i32 0, i32 3
  %84 = ptrtoint ptr %nat to i32
  call void @__asan_load1_noabort(i32 %84)
  %bf.load = load i8, ptr %nat, align 4
  %85 = and i8 %bf.load, 112
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %85)
  %tobool17.not = icmp eq i8 %85, 0
  br i1 %tobool17.not, label %if.then15.if.end33_crit_edge, label %land.lhs.true

if.then15.if.end33_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end33

land.lhs.true:                                    ; preds = %if.then15
  %ct_state18 = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 9
  %86 = ptrtoint ptr %ct_state18 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %ct_state18, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %87)
  %tobool20.not = icmp ult i8 %87, 64
  br i1 %tobool20.not, label %land.lhs.true21, label %land.lhs.true.if.end33thread-pre-split_crit_edge

land.lhs.true.if.end33thread-pre-split_crit_edge: ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end33thread-pre-split

land.lhs.true21:                                  ; preds = %land.lhs.true
  %status.i = getelementptr inbounds %struct.nf_conn, ptr %83, i32 0, i32 5
  %88 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load volatile i32, ptr %status.i, align 8
  %90 = and i32 %89, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %tobool23.not = icmp eq i32 %90, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool27.not = icmp sgt i8 %bf.load, -1
  %or.cond = select i1 %tobool23.not, i1 %tobool27.not, i1 false
  br i1 %or.cond, label %land.lhs.true21.if.end33thread-pre-split_crit_edge, label %land.lhs.true28

land.lhs.true21.if.end33thread-pre-split_crit_edge: ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end33thread-pre-split

land.lhs.true28:                                  ; preds = %land.lhs.true21
  %91 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load volatile i32, ptr %status.i, align 8
  %93 = and i32 %92, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %tobool.not.i176 = icmp eq i32 %93, 0
  br i1 %tobool.not.i176, label %land.lhs.true.i178, label %land.lhs.true28.if.end.i182_crit_edge

land.lhs.true28.if.end.i182_crit_edge:            ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i182

land.lhs.true.i178:                               ; preds = %land.lhs.true28
  %call1.i = call ptr @nf_ct_nat_ext_add(ptr noundef nonnull %83) #13
  %tobool2.not.i177 = icmp eq ptr %call1.i, null
  br i1 %tobool2.not.i177, label %land.lhs.true.i178.if.end33thread-pre-split_crit_edge, label %land.lhs.true.i178.if.end.i182_crit_edge

land.lhs.true.i178.if.end.i182_crit_edge:         ; preds = %land.lhs.true.i178
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i182

land.lhs.true.i178.if.end33thread-pre-split_crit_edge: ; preds = %land.lhs.true.i178
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end33thread-pre-split

if.end.i182:                                      ; preds = %land.lhs.true.i178.if.end.i182_crit_edge, %land.lhs.true28.if.end.i182_crit_edge
  %94 = ptrtoint ptr %nat to i32
  call void @__asan_load1_noabort(i32 %94)
  %bf.load.i179 = load i8, ptr %nat, align 4
  %95 = and i8 %bf.load.i179, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %95)
  %tobool3.not.i = icmp eq i8 %95, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i172)
  %cmp.not.i180 = icmp eq i32 %and.i172, 2
  %or.cond.i181 = or i1 %cmp.not.i180, %tobool3.not.i
  br i1 %or.cond.i181, label %if.end.i182.if.else31.i_crit_edge, label %land.lhs.true6.i

if.end.i182.if.else31.i_crit_edge:                ; preds = %if.end.i182
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else31.i

land.lhs.true6.i:                                 ; preds = %if.end.i182
  %96 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %status.i, align 8
  %and7.i = and i32 %97, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool8.not.i = icmp eq i32 %and7.i, 0
  br i1 %tobool8.not.i, label %land.lhs.true6.i.if.else31.i_crit_edge, label %land.lhs.true9.i

land.lhs.true6.i.if.else31.i_crit_edge:           ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else31.i

land.lhs.true9.i:                                 ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i172)
  %cmp10.not.i = icmp eq i32 %and.i172, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i179)
  %tobool15.not.i = icmp sgt i8 %bf.load.i179, -1
  %or.cond1.i = select i1 %cmp10.not.i, i1 %tobool15.not.i, i1 false
  br i1 %or.cond1.i, label %land.lhs.true9.i.if.else31.i_crit_edge, label %if.then16.i

land.lhs.true9.i.if.else31.i_crit_edge:           ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else31.i

if.then16.i:                                      ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.i172)
  %cmp17.i = icmp ult i32 %and.i172, 3
  %and23.i = lshr i32 %97, 4
  %and23.lobit.i = and i32 %and23.i, 1
  %98 = zext i1 %cmp17.i to i32
  %spec.select.i183 = xor i32 %and23.lobit.i, %98
  br label %if.end52.i

if.else31.i:                                      ; preds = %land.lhs.true9.i.if.else31.i_crit_edge, %land.lhs.true6.i.if.else31.i_crit_edge, %if.end.i182.if.else31.i_crit_edge
  %bf.lshr34.i = lshr i8 %bf.load.i179, 4
  %bf.clear35.i = and i8 %bf.lshr34.i, 7
  %conv36.i = zext i8 %bf.clear35.i to i32
  %and37.i = and i32 %conv36.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37.i)
  %tobool38.not.i = icmp eq i32 %and37.i, 0
  br i1 %tobool38.not.i, label %if.else40.i, label %if.else31.i.if.end52.i_crit_edge

if.else31.i.if.end52.i_crit_edge:                 ; preds = %if.else31.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end52.i

if.else40.i:                                      ; preds = %if.else31.i
  %and46.i = and i32 %conv36.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46.i)
  %tobool47.not.i = icmp eq i32 %and46.i, 0
  br i1 %tobool47.not.i, label %if.else40.i.if.end33thread-pre-split_crit_edge, label %if.else40.i.if.end52.i_crit_edge

if.else40.i.if.end52.i_crit_edge:                 ; preds = %if.else40.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end52.i

if.else40.i.if.end33thread-pre-split_crit_edge:   ; preds = %if.else40.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end33thread-pre-split

if.end52.i:                                       ; preds = %if.else40.i.if.end52.i_crit_edge, %if.else31.i.if.end52.i_crit_edge, %if.then16.i
  %maniptype.0.i = phi i32 [ 0, %if.else31.i.if.end52.i_crit_edge ], [ 1, %if.else40.i.if.end52.i_crit_edge ], [ %spec.select.i183, %if.then16.i ]
  %range.i = getelementptr inbounds %struct.ovs_conntrack_info, ptr %info, i32 0, i32 10
  %call53.i = call fastcc i32 @ovs_ct_nat_execute(ptr noundef %skb, ptr noundef nonnull %83, i32 noundef %and.i172, ptr noundef %range.i, i32 noundef %maniptype.0.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call53.i)
  %cmp54.i = icmp eq i32 %call53.i, 1
  br i1 %cmp54.i, label %land.lhs.true56.i, label %if.end52.i.cleanup104_crit_edge

if.end52.i.cleanup104_crit_edge:                  ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup104

land.lhs.true56.i:                                ; preds = %if.end52.i
  %99 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %status.i, align 8
  %and58.i = and i32 %100, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58.i)
  %tobool59.not.i = icmp eq i32 %and58.i, 0
  br i1 %tobool59.not.i, label %land.lhs.true56.i.if.then85.i_crit_edge, label %if.then60.i

land.lhs.true56.i.if.then85.i_crit_edge:          ; preds = %land.lhs.true56.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then85.i

if.then60.i:                                      ; preds = %land.lhs.true56.i
  %and62.i = and i32 %100, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62.i)
  %tobool63.not.i184 = icmp eq i32 %and62.i, 0
  br i1 %tobool63.not.i184, label %if.else72.i, label %if.then64.i185

if.then64.i185:                                   ; preds = %if.then60.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %maniptype.0.i)
  %cmp65.i = icmp eq i32 %maniptype.0.i, 0
  %..i = zext i1 %cmp65.i to i32
  %call71.i = call fastcc i32 @ovs_ct_nat_execute(ptr noundef %skb, ptr noundef nonnull %83, i32 noundef %and.i172, ptr noundef %range.i, i32 noundef %..i) #13
  br label %if.end82.i

if.else72.i:                                      ; preds = %if.then60.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.i172)
  %cmp73.i = icmp ult i32 %and.i172, 3
  br i1 %cmp73.i, label %if.then78.i, label %if.else72.i.if.then85.i_crit_edge

if.else72.i.if.then85.i_crit_edge:                ; preds = %if.else72.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then85.i

if.then78.i:                                      ; preds = %if.else72.i
  call void @__sanitizer_cov_trace_pc() #15
  %call79.i = call fastcc i32 @ovs_ct_nat_execute(ptr noundef %skb, ptr noundef nonnull %83, i32 noundef %and.i172, ptr noundef null, i32 noundef 0) #13
  br label %if.end82.i

if.end82.i:                                       ; preds = %if.then78.i, %if.then64.i185
  %maniptype.2.i = phi i32 [ %..i, %if.then64.i185 ], [ %maniptype.0.i, %if.then78.i ]
  %err.0.i = phi i32 [ %call71.i, %if.then64.i185 ], [ %call79.i, %if.then78.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %err.0.i)
  %cmp83.i = icmp eq i32 %err.0.i, 1
  br i1 %cmp83.i, label %if.end82.i.if.then85.i_crit_edge, label %if.end82.i.cleanup104_crit_edge

if.end82.i.cleanup104_crit_edge:                  ; preds = %if.end82.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup104

if.end82.i.if.then85.i_crit_edge:                 ; preds = %if.end82.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then85.i

if.then85.i:                                      ; preds = %if.end82.i.if.then85.i_crit_edge, %if.else72.i.if.then85.i_crit_edge, %land.lhs.true56.i.if.then85.i_crit_edge
  %maniptype.25.i = phi i32 [ %maniptype.2.i, %if.end82.i.if.then85.i_crit_edge ], [ %maniptype.0.i, %if.else72.i.if.then85.i_crit_edge ], [ %maniptype.0.i, %land.lhs.true56.i.if.then85.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %maniptype.25.i)
  %cmp.i.i186 = icmp eq i32 %maniptype.25.i, 0
  %101 = ptrtoint ptr %ct_state18 to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %ct_state18, align 2
  br i1 %cmp.i.i186, label %if.then.i.i, label %if.else45.i.i

if.then.i.i:                                      ; preds = %if.then85.i
  %103 = or i8 %102, 64
  %104 = ptrtoint ptr %ct_state18 to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 %103, ptr %ct_state18, align 2
  %type.i.i = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 8, i32 4
  %105 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %type.i.i, align 4
  %107 = zext i16 %106 to i64
  call void @__sanitizer_cov_trace_switch(i64 %107, ptr @__sancov_gen_cov_switch_values.107)
  switch i16 %106, label %if.then.i.i.if.end33thread-pre-split_crit_edge [
    i16 2048, label %if.then5.i.i
    i16 -31011, label %if.then12.i.i
  ]

if.then.i.i.if.end33thread-pre-split_crit_edge:   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end33thread-pre-split

if.then5.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %head.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %108 = ptrtoint ptr %head.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %head.i.i.i.i, align 8
  %network_header.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %110 = ptrtoint ptr %network_header.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %110)
  %111 = load i16, ptr %network_header.i.i.i.i, align 4
  %conv.i.i.i.i = zext i16 %111 to i32
  %add.ptr.i.i.i.i = getelementptr i8, ptr %109, i32 %conv.i.i.i.i
  %saddr.i.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i.i, i32 0, i32 8
  %112 = ptrtoint ptr %saddr.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %saddr.i.i, align 4
  %114 = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 14
  %115 = ptrtoint ptr %114 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %113, ptr %114, align 8
  br label %if.end18.i.i

if.then12.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %116 = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 14
  %head.i.i131.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %117 = ptrtoint ptr %head.i.i131.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %head.i.i131.i.i, align 8
  %network_header.i.i132.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %119 = ptrtoint ptr %network_header.i.i132.i.i to i32
  call void @__asan_load2_noabort(i32 %119)
  %120 = load i16, ptr %network_header.i.i132.i.i, align 4
  %conv.i.i133.i.i = zext i16 %120 to i32
  %add.ptr.i.i134.i.i = getelementptr i8, ptr %118, i32 %conv.i.i133.i.i
  %saddr16.i.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i134.i.i, i32 0, i32 5
  %121 = call ptr @memcpy(ptr %116, ptr %saddr16.i.i, i32 16)
  br label %if.end18.i.i

if.end18.i.i:                                     ; preds = %if.then12.i.i, %if.then5.i.i
  %122 = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 11
  %123 = ptrtoint ptr %122 to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %122, align 4
  %125 = zext i8 %124 to i64
  call void @__sanitizer_cov_trace_switch(i64 %125, ptr @__sancov_gen_cov_switch_values.108)
  switch i8 %124, label %if.end18.i.i.if.end33thread-pre-split_crit_edge [
    i8 17, label %if.end18.i.i.if.end43.i.i_crit_edge
    i8 6, label %if.end18.i.i.if.end43.i.i_crit_edge251
    i8 -124, label %if.end18.i.i.if.end43.i.i_crit_edge252
  ]

if.end18.i.i.if.end43.i.i_crit_edge252:           ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end43.i.i

if.end18.i.i.if.end43.i.i_crit_edge251:           ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end43.i.i

if.end18.i.i.if.end43.i.i_crit_edge:              ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end43.i.i

if.end18.i.i.if.end33thread-pre-split_crit_edge:  ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end33thread-pre-split

if.end43.i.i:                                     ; preds = %if.end18.i.i.if.end43.i.i_crit_edge, %if.end18.i.i.if.end43.i.i_crit_edge251, %if.end18.i.i.if.end43.i.i_crit_edge252
  %head.i.i138.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %126 = ptrtoint ptr %head.i.i138.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %head.i.i138.i.i, align 8
  %transport_header.i.i139.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %128 = ptrtoint ptr %transport_header.i.i139.i.i to i32
  call void @__asan_load2_noabort(i32 %128)
  %129 = load i16, ptr %transport_header.i.i139.i.i, align 2
  %conv.i.i140.i.i = zext i16 %129 to i32
  %add.ptr.i.i141.i.i = getelementptr i8, ptr %127, i32 %conv.i.i140.i.i
  %130 = ptrtoint ptr %add.ptr.i.i141.i.i to i32
  call void @__asan_load2_noabort(i32 %130)
  %src.0.i.i = load i16, ptr %add.ptr.i.i141.i.i, align 2
  %tp.i.i = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 13
  %131 = ptrtoint ptr %tp.i.i to i32
  call void @__asan_store2_noabort(i32 %131)
  store i16 %src.0.i.i, ptr %tp.i.i, align 2
  br label %if.end33thread-pre-split

if.else45.i.i:                                    ; preds = %if.then85.i
  %132 = or i8 %102, -128
  %133 = ptrtoint ptr %ct_state18 to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 %132, ptr %ct_state18, align 2
  %type51.i.i = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 8, i32 4
  %134 = ptrtoint ptr %type51.i.i to i32
  call void @__asan_load2_noabort(i32 %134)
  %135 = load i16, ptr %type51.i.i, align 4
  %136 = zext i16 %135 to i64
  call void @__sanitizer_cov_trace_switch(i64 %136, ptr @__sancov_gen_cov_switch_values.109)
  switch i16 %135, label %if.else45.i.i.if.end33thread-pre-split_crit_edge [
    i16 2048, label %if.then55.i.i
    i16 -31011, label %if.then65.i.i
  ]

if.else45.i.i.if.end33thread-pre-split_crit_edge: ; preds = %if.else45.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end33thread-pre-split

if.then55.i.i:                                    ; preds = %if.else45.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %head.i.i146.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %137 = ptrtoint ptr %head.i.i146.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %head.i.i146.i.i, align 8
  %network_header.i.i147.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %139 = ptrtoint ptr %network_header.i.i147.i.i to i32
  call void @__asan_load2_noabort(i32 %139)
  %140 = load i16, ptr %network_header.i.i147.i.i, align 4
  %conv.i.i148.i.i = zext i16 %140 to i32
  %add.ptr.i.i149.i.i = getelementptr i8, ptr %138, i32 %conv.i.i148.i.i
  %daddr.i.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i149.i.i, i32 0, i32 9
  %141 = ptrtoint ptr %daddr.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %daddr.i.i, align 4
  %dst58.i.i = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 14, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1
  %143 = ptrtoint ptr %dst58.i.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %142, ptr %dst58.i.i, align 4
  br label %if.end72.i.i

if.then65.i.i:                                    ; preds = %if.else45.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %dst67.i.i = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 14, i32 0, i32 0, i32 1
  %head.i.i150.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %144 = ptrtoint ptr %head.i.i150.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %head.i.i150.i.i, align 8
  %network_header.i.i151.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %146 = ptrtoint ptr %network_header.i.i151.i.i to i32
  call void @__asan_load2_noabort(i32 %146)
  %147 = load i16, ptr %network_header.i.i151.i.i, align 4
  %conv.i.i152.i.i = zext i16 %147 to i32
  %add.ptr.i.i153.i.i = getelementptr i8, ptr %145, i32 %conv.i.i152.i.i
  %daddr69.i.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i153.i.i, i32 0, i32 6
  %148 = call ptr @memcpy(ptr %dst67.i.i, ptr %daddr69.i.i, i32 16)
  br label %if.end72.i.i

if.end72.i.i:                                     ; preds = %if.then65.i.i, %if.then55.i.i
  %149 = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 11
  %150 = ptrtoint ptr %149 to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %149, align 4
  %152 = zext i8 %151 to i64
  call void @__sanitizer_cov_trace_switch(i64 %152, ptr @__sancov_gen_cov_switch_values.110)
  switch i8 %151, label %if.end72.i.i.if.end33thread-pre-split_crit_edge [
    i8 17, label %if.then77.i.i
    i8 6, label %if.then84.i.i
    i8 -124, label %if.then92.i.i
  ]

if.end72.i.i.if.end33thread-pre-split_crit_edge:  ; preds = %if.end72.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end33thread-pre-split

if.then77.i.i:                                    ; preds = %if.end72.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %head.i.i154.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %153 = ptrtoint ptr %head.i.i154.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %head.i.i154.i.i, align 8
  %transport_header.i.i155.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %155 = ptrtoint ptr %transport_header.i.i155.i.i to i32
  call void @__asan_load2_noabort(i32 %155)
  %156 = load i16, ptr %transport_header.i.i155.i.i, align 2
  %conv.i.i156.i.i = zext i16 %156 to i32
  %add.ptr.i.i157.i.i = getelementptr i8, ptr %154, i32 %conv.i.i156.i.i
  %dest.i.i = getelementptr inbounds %struct.udphdr, ptr %add.ptr.i.i157.i.i, i32 0, i32 1
  br label %if.end98.i.i

if.then84.i.i:                                    ; preds = %if.end72.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %head.i.i158.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %157 = ptrtoint ptr %head.i.i158.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %head.i.i158.i.i, align 8
  %transport_header.i.i159.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %159 = ptrtoint ptr %transport_header.i.i159.i.i to i32
  call void @__asan_load2_noabort(i32 %159)
  %160 = load i16, ptr %transport_header.i.i159.i.i, align 2
  %conv.i.i160.i.i = zext i16 %160 to i32
  %add.ptr.i.i161.i.i = getelementptr i8, ptr %158, i32 %conv.i.i160.i.i
  %dest86.i.i = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i.i161.i.i, i32 0, i32 1
  br label %if.end98.i.i

if.then92.i.i:                                    ; preds = %if.end72.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %head.i.i162.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %161 = ptrtoint ptr %head.i.i162.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %head.i.i162.i.i, align 8
  %transport_header.i.i163.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %163 = ptrtoint ptr %transport_header.i.i163.i.i to i32
  call void @__asan_load2_noabort(i32 %163)
  %164 = load i16, ptr %transport_header.i.i163.i.i, align 2
  %conv.i.i164.i.i = zext i16 %164 to i32
  %add.ptr.i.i165.i.i = getelementptr i8, ptr %162, i32 %conv.i.i164.i.i
  %dest94.i.i = getelementptr inbounds %struct.sctphdr, ptr %add.ptr.i.i165.i.i, i32 0, i32 1
  br label %if.end98.i.i

if.end98.i.i:                                     ; preds = %if.then92.i.i, %if.then84.i.i, %if.then77.i.i
  %dst.0.in.i.i = phi ptr [ %dest.i.i, %if.then77.i.i ], [ %dest86.i.i, %if.then84.i.i ], [ %dest94.i.i, %if.then92.i.i ]
  %165 = ptrtoint ptr %dst.0.in.i.i to i32
  call void @__asan_load2_noabort(i32 %165)
  %dst.0.i.i = load i16, ptr %dst.0.in.i.i, align 2
  %dst100.i.i = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 13, i32 1
  %166 = ptrtoint ptr %dst100.i.i to i32
  call void @__asan_store2_noabort(i32 %166)
  store i16 %dst.0.i.i, ptr %dst100.i.i, align 2
  br label %if.end33thread-pre-split

if.end33thread-pre-split:                         ; preds = %if.end98.i.i, %if.end72.i.i.if.end33thread-pre-split_crit_edge, %if.else45.i.i.if.end33thread-pre-split_crit_edge, %if.end43.i.i, %if.end18.i.i.if.end33thread-pre-split_crit_edge, %if.then.i.i.if.end33thread-pre-split_crit_edge, %if.else40.i.if.end33thread-pre-split_crit_edge, %land.lhs.true.i178.if.end33thread-pre-split_crit_edge, %land.lhs.true21.if.end33thread-pre-split_crit_edge, %land.lhs.true.if.end33thread-pre-split_crit_edge
  %167 = ptrtoint ptr %nat to i32
  call void @__asan_load1_noabort(i32 %167)
  %bf.load35.pr = load i8, ptr %nat, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.end33thread-pre-split, %if.then15.if.end33_crit_edge
  %bf.load35 = phi i8 [ %bf.load35.pr, %if.end33thread-pre-split ], [ %bf.load, %if.then15.if.end33_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load35)
  %tobool38.not = icmp sgt i8 %bf.load35, -1
  br i1 %tobool38.not, label %if.end33.if.end69_crit_edge, label %land.lhs.true39

if.end33.if.end69_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

land.lhs.true39:                                  ; preds = %if.end33
  %168 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %info, align 4
  %tobool40.not = icmp eq ptr %169, null
  br i1 %tobool40.not, label %land.lhs.true39.if.end69_crit_edge, label %land.lhs.true41

land.lhs.true39.if.end69_crit_edge:               ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

land.lhs.true41:                                  ; preds = %land.lhs.true39
  %ext.i.i.i188 = getelementptr inbounds %struct.nf_conn, ptr %83, i32 0, i32 13
  %170 = ptrtoint ptr %ext.i.i.i188 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %ext.i.i.i188, align 8
  %tobool.not.i.i.i189 = icmp eq ptr %171, null
  br i1 %tobool.not.i.i.i189, label %land.lhs.true41.if.then44_crit_edge, label %nf_ct_ext_exist.exit.i.i191

land.lhs.true41.if.then44_crit_edge:              ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then44

nf_ct_ext_exist.exit.i.i191:                      ; preds = %land.lhs.true41
  %172 = ptrtoint ptr %171 to i32
  call void @__asan_load1_noabort(i32 %172)
  %173 = load i8, ptr %171, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %173)
  %tobool.i.i.not.i.i190 = icmp eq i8 %173, 0
  %conv.i.i = zext i8 %173 to i32
  %add.ptr.i.i192 = getelementptr i8, ptr %171, i32 %conv.i.i
  %tobool43.not = icmp eq ptr %add.ptr.i.i192, null
  %or.cond247 = select i1 %tobool.i.i.not.i.i190, i1 true, i1 %tobool43.not
  br i1 %or.cond247, label %nf_ct_ext_exist.exit.i.i191.if.then44_crit_edge, label %nf_ct_ext_exist.exit.i.i191.if.end69_crit_edge

nf_ct_ext_exist.exit.i.i191.if.end69_crit_edge:   ; preds = %nf_ct_ext_exist.exit.i.i191
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

nf_ct_ext_exist.exit.i.i191.if.then44_crit_edge:  ; preds = %nf_ct_ext_exist.exit.i.i191
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then44

if.then44:                                        ; preds = %nf_ct_ext_exist.exit.i.i191.if.then44_crit_edge, %land.lhs.true41.if.then44_crit_edge
  %ct46 = getelementptr inbounds %struct.ovs_conntrack_info, ptr %info, i32 0, i32 2
  %174 = ptrtoint ptr %ct46 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %ct46, align 4
  %call47 = call i32 @__nf_ct_try_assign_helper(ptr noundef nonnull %83, ptr noundef %175, i32 noundef 2592) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.end50, label %if.then44.cleanup104_crit_edge

if.then44.cleanup104_crit_edge:                   ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup104

if.end50:                                         ; preds = %if.then44
  %176 = ptrtoint ptr %nat to i32
  call void @__asan_load1_noabort(i32 %176)
  %bf.load52 = load i8, ptr %nat, align 4
  %177 = and i8 %bf.load52, 112
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %177)
  %tobool56.not = icmp eq i8 %177, 0
  br i1 %tobool56.not, label %if.end50.if.end69_crit_edge, label %land.lhs.true57

if.end50.if.end69_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

land.lhs.true57:                                  ; preds = %if.end50
  %178 = ptrtoint ptr %ext.i.i.i188 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %ext.i.i.i188, align 8
  %tobool.not.i.i.i195 = icmp eq ptr %179, null
  br i1 %tobool.not.i.i.i195, label %land.lhs.true57.if.then60_crit_edge, label %nf_ct_ext_exist.exit.i.i197

land.lhs.true57.if.then60_crit_edge:              ; preds = %land.lhs.true57
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then60

nf_ct_ext_exist.exit.i.i197:                      ; preds = %land.lhs.true57
  %arrayidx.i.i.i.i = getelementptr [10 x i8], ptr %179, i32 0, i32 2
  %180 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %180)
  %181 = load i8, ptr %arrayidx.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %181)
  %tobool.i.i.not.i.i196 = icmp eq i8 %181, 0
  %conv.i.i198 = zext i8 %181 to i32
  %add.ptr.i.i199 = getelementptr i8, ptr %179, i32 %conv.i.i198
  %tobool59.not = icmp eq ptr %add.ptr.i.i199, null
  %or.cond248 = select i1 %tobool.i.i.not.i.i196, i1 true, i1 %tobool59.not
  br i1 %or.cond248, label %nf_ct_ext_exist.exit.i.i197.if.then60_crit_edge, label %nf_ct_ext_exist.exit.i.i197.if.end69_crit_edge

nf_ct_ext_exist.exit.i.i197.if.end69_crit_edge:   ; preds = %nf_ct_ext_exist.exit.i.i197
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

nf_ct_ext_exist.exit.i.i197.if.then60_crit_edge:  ; preds = %nf_ct_ext_exist.exit.i.i197
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then60

if.then60:                                        ; preds = %nf_ct_ext_exist.exit.i.i197.if.then60_crit_edge, %land.lhs.true57.if.then60_crit_edge
  %call.i = call ptr @nf_ct_ext_add(ptr noundef nonnull %83, i32 noundef 2, i32 noundef 2592) #13
  %tobool62.not = icmp eq ptr %call.i, null
  br i1 %tobool62.not, label %if.then60.cleanup104_crit_edge, label %if.then60.if.end69_crit_edge

if.then60.if.end69_crit_edge:                     ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

if.then60.cleanup104_crit_edge:                   ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup104

if.end69:                                         ; preds = %if.then60.if.end69_crit_edge, %nf_ct_ext_exist.exit.i.i197.if.end69_crit_edge, %if.end50.if.end69_crit_edge, %nf_ct_ext_exist.exit.i.i191.if.end69_crit_edge, %land.lhs.true39.if.end69_crit_edge, %if.end33.if.end69_crit_edge
  %add_helper.1.off0 = phi i1 [ false, %land.lhs.true39.if.end69_crit_edge ], [ false, %if.end33.if.end69_crit_edge ], [ true, %if.end50.if.end69_crit_edge ], [ true, %if.then60.if.end69_crit_edge ], [ false, %nf_ct_ext_exist.exit.i.i191.if.end69_crit_edge ], [ true, %nf_ct_ext_exist.exit.i.i197.if.end69_crit_edge ]
  %status.i203 = getelementptr inbounds %struct.nf_conn, ptr %83, i32 0, i32 5
  %182 = ptrtoint ptr %status.i203 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load volatile i32, ptr %status.i203, align 8
  %184 = and i32 %183, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %184)
  %tobool71.not = icmp eq i32 %184, 0
  br i1 %tobool71.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end69
  %brmerge = or i1 %retval.3.i236, %add_helper.1.off0
  br i1 %brmerge, label %cond.true.land.lhs.true81_crit_edge, label %cond.true.if.end87_crit_edge

cond.true.if.end87_crit_edge:                     ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end87

cond.true.land.lhs.true81_crit_edge:              ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true81

cond.false:                                       ; preds = %if.end69
  %185 = ptrtoint ptr %nat to i32
  call void @__asan_load1_noabort(i32 %185)
  %bf.load77 = load i8, ptr %nat, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load77)
  %tobool80.not = icmp sgt i8 %bf.load77, -1
  br i1 %tobool80.not, label %cond.false.if.end87_crit_edge, label %cond.false.land.lhs.true81_crit_edge

cond.false.land.lhs.true81_crit_edge:             ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true81

cond.false.if.end87_crit_edge:                    ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end87

land.lhs.true81:                                  ; preds = %cond.false.land.lhs.true81_crit_edge, %cond.true.land.lhs.true81_crit_edge
  %family82 = getelementptr inbounds %struct.ovs_conntrack_info, ptr %info, i32 0, i32 4
  %186 = ptrtoint ptr %family82 to i32
  call void @__asan_load2_noabort(i32 %186)
  %187 = load i16, ptr %family82, align 2
  %call83 = call fastcc i32 @ovs_ct_helper(ptr noundef %skb, i16 noundef zeroext %187)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call83)
  %cmp84.not = icmp eq i32 %call83, 1
  br i1 %cmp84.not, label %land.lhs.true81.if.end87_crit_edge, label %land.lhs.true81.cleanup104_crit_edge

land.lhs.true81.cleanup104_crit_edge:             ; preds = %land.lhs.true81
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup104

land.lhs.true81.if.end87_crit_edge:               ; preds = %land.lhs.true81
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end87

if.end87:                                         ; preds = %land.lhs.true81.if.end87_crit_edge, %cond.false.if.end87_crit_edge, %cond.true.if.end87_crit_edge
  %protonum.i = getelementptr inbounds %struct.nf_conn, ptr %83, i32 0, i32 4, i32 0, i32 1, i32 1, i32 2
  %188 = ptrtoint ptr %protonum.i to i32
  call void @__asan_load1_noabort(i32 %188)
  %189 = load i8, ptr %protonum.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %189)
  %cmp90 = icmp eq i8 %189, 6
  br i1 %cmp90, label %land.lhs.true92, label %if.end87.if.end99_crit_edge

if.end87.if.end99_crit_edge:                      ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end99

land.lhs.true92:                                  ; preds = %if.end87
  %190 = ptrtoint ptr %status.i203 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load volatile i32, ptr %status.i203, align 8
  %192 = and i32 %191, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %192)
  %tobool94.not = icmp eq i32 %192, 0
  br i1 %tobool94.not, label %land.lhs.true92.if.end99_crit_edge, label %land.lhs.true95

land.lhs.true92.if.end99_crit_edge:               ; preds = %land.lhs.true92
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end99

land.lhs.true95:                                  ; preds = %land.lhs.true92
  %state.i = getelementptr inbounds %struct.nf_conn, ptr %83, i32 0, i32 14, i32 1, i32 24
  %193 = ptrtoint ptr %state.i to i32
  call void @__asan_load1_noabort(i32 %193)
  %194 = load i8, ptr %state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %194)
  %cmp.i = icmp eq i8 %194, 3
  br i1 %cmp.i, label %nf_conntrack_tcp_established.exit, label %land.lhs.true95.if.end99_crit_edge

land.lhs.true95.if.end99_crit_edge:               ; preds = %land.lhs.true95
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end99

nf_conntrack_tcp_established.exit:                ; preds = %land.lhs.true95
  %195 = ptrtoint ptr %status.i203 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load volatile i32, ptr %status.i203, align 8
  %197 = and i32 %196, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %197)
  %tobool.i.not = icmp eq i32 %197, 0
  br i1 %tobool.i.not, label %nf_conntrack_tcp_established.exit.if.end99_crit_edge, label %if.then98

nf_conntrack_tcp_established.exit.if.end99_crit_edge: ; preds = %nf_conntrack_tcp_established.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end99

if.then98:                                        ; preds = %nf_conntrack_tcp_established.exit
  call void @__sanitizer_cov_trace_pc() #15
  %flags.i = getelementptr inbounds %struct.nf_conn, ptr %83, i32 0, i32 14, i32 1, i32 1
  %198 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %198)
  %199 = load i8, ptr %flags.i, align 1
  %200 = or i8 %199, 8
  store i8 %200, ptr %flags.i, align 1
  %flags5.i = getelementptr %struct.nf_conn, ptr %83, i32 0, i32 14, i32 1, i32 21
  %201 = ptrtoint ptr %flags5.i to i32
  call void @__asan_load1_noabort(i32 %201)
  %202 = load i8, ptr %flags5.i, align 1
  %203 = or i8 %202, 8
  store i8 %203, ptr %flags5.i, align 1
  br label %if.end99

if.end99:                                         ; preds = %if.then98, %nf_conntrack_tcp_established.exit.if.end99_crit_edge, %land.lhs.true95.if.end99_crit_edge, %land.lhs.true92.if.end99_crit_edge, %if.end87.if.end99_crit_edge
  %ext.i.i.i.i210 = getelementptr inbounds %struct.nf_conn, ptr %83, i32 0, i32 13
  %204 = ptrtoint ptr %ext.i.i.i.i210 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %ext.i.i.i.i210, align 8
  %tobool.not.i.i.i.i211 = icmp eq ptr %205, null
  br i1 %tobool.not.i.i.i.i211, label %if.end99.nf_conn_act_ct_ext_find.exit.i_crit_edge, label %nf_ct_ext_exist.exit.i.i.i214

if.end99.nf_conn_act_ct_ext_find.exit.i_crit_edge: ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #15
  br label %nf_conn_act_ct_ext_find.exit.i

nf_ct_ext_exist.exit.i.i.i214:                    ; preds = %if.end99
  %arrayidx.i.i.i.i.i212 = getelementptr [10 x i8], ptr %205, i32 0, i32 9
  %206 = ptrtoint ptr %arrayidx.i.i.i.i.i212 to i32
  call void @__asan_load1_noabort(i32 %206)
  %207 = load i8, ptr %arrayidx.i.i.i.i.i212, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %207)
  %tobool.i.i.not.i.i.i213 = icmp eq i8 %207, 0
  br i1 %tobool.i.i.not.i.i.i213, label %nf_ct_ext_exist.exit.i.i.i214.nf_conn_act_ct_ext_find.exit.i_crit_edge, label %if.end.i.i.i

nf_ct_ext_exist.exit.i.i.i214.nf_conn_act_ct_ext_find.exit.i_crit_edge: ; preds = %nf_ct_ext_exist.exit.i.i.i214
  call void @__sanitizer_cov_trace_pc() #15
  br label %nf_conn_act_ct_ext_find.exit.i

if.end.i.i.i:                                     ; preds = %nf_ct_ext_exist.exit.i.i.i214
  call void @__sanitizer_cov_trace_pc() #15
  %conv.i.i.i215 = zext i8 %207 to i32
  %add.ptr.i.i.i216 = getelementptr i8, ptr %205, i32 %conv.i.i.i215
  br label %nf_conn_act_ct_ext_find.exit.i

nf_conn_act_ct_ext_find.exit.i:                   ; preds = %if.end.i.i.i, %nf_ct_ext_exist.exit.i.i.i214.nf_conn_act_ct_ext_find.exit.i_crit_edge, %if.end99.nf_conn_act_ct_ext_find.exit.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %add.ptr.i.i.i216, %if.end.i.i.i ], [ null, %nf_ct_ext_exist.exit.i.i.i214.nf_conn_act_ct_ext_find.exit.i_crit_edge ], [ null, %if.end99.nf_conn_act_ct_ext_find.exit.i_crit_edge ]
  %208 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %209 = ptrtoint ptr %208 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %208, align 8
  %nd_net.i.i = getelementptr inbounds %struct.net_device, ptr %210, i32 0, i32 127
  %211 = ptrtoint ptr %nd_net.i.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %nd_net.i.i, align 4
  %cmp.i217 = icmp ne ptr %212, @init_net
  %tobool.not.i218 = icmp eq ptr %retval.0.i.i.i, null
  %or.cond.i219 = select i1 %cmp.i217, i1 true, i1 %tobool.not.i218
  br i1 %or.cond.i219, label %nf_conn_act_ct_ext_find.exit.i.cleanup104_crit_edge, label %if.then.i220

nf_conn_act_ct_ext_find.exit.i.cleanup104_crit_edge: ; preds = %nf_conn_act_ct_ext_find.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup104

if.then.i220:                                     ; preds = %nf_conn_act_ct_ext_find.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %ifindex.i = getelementptr inbounds %struct.net_device, ptr %210, i32 0, i32 17
  %213 = ptrtoint ptr %ifindex.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %ifindex.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i172)
  %cmp3.i = icmp ugt i32 %and.i172, 2
  %cond.i = zext i1 %cmp3.i to i32
  %arrayidx.i = getelementptr [2 x i32], ptr %retval.0.i.i.i, i32 0, i32 %cond.i
  %215 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %215)
  store i32 %214, ptr %arrayidx.i, align 4
  br label %cleanup104

cleanup104.critedge:                              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %state) #13
  br label %cleanup104

cleanup104:                                       ; preds = %cleanup104.critedge, %if.then.i220, %nf_conn_act_ct_ext_find.exit.i.cleanup104_crit_edge, %land.lhs.true81.cleanup104_crit_edge, %if.then60.cleanup104_crit_edge, %if.then44.cleanup104_crit_edge, %if.end82.i.cleanup104_crit_edge, %if.end52.i.cleanup104_crit_edge, %if.end12.cleanup104_crit_edge
  %retval.5 = phi i32 [ -2, %cleanup104.critedge ], [ 0, %nf_conn_act_ct_ext_find.exit.i.cleanup104_crit_edge ], [ 0, %if.then.i220 ], [ 0, %if.end12.cleanup104_crit_edge ], [ -22, %if.end82.i.cleanup104_crit_edge ], [ -22, %if.end52.i.cleanup104_crit_edge ], [ -22, %land.lhs.true81.cleanup104_crit_edge ], [ -22, %if.then60.cleanup104_crit_edge ], [ %call47, %if.then44.cleanup104_crit_edge ]
  ret i32 %retval.5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_conntrack_in(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__nf_ct_try_assign_helper(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ovs_ct_helper(ptr noundef %skb, i16 noundef zeroext %proto) unnamed_addr #1 align 64 {
entry:
  %nexthdr = alloca i8, align 1
  %frag_off = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %_nfct.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 5
  %0 = ptrtoint ptr %_nfct.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %_nfct.i.i, align 8
  %and.i = and i32 %1, 7
  %and1.i129 = and i32 %1, -8
  %2 = inttoptr i32 %and1.i129 to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i129)
  %tobool.not = icmp eq i32 %and1.i129, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %and.i)
  %cmp = icmp eq i32 %and.i, 4
  %or.cond = or i1 %tobool.not, %cmp
  br i1 %or.cond, label %entry.cleanup104_crit_edge, label %if.end

entry.cleanup104_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup104

if.end:                                           ; preds = %entry
  %ext.i.i.i = getelementptr inbounds %struct.nf_conn, ptr %2, i32 0, i32 13
  %3 = ptrtoint ptr %ext.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ext.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %4, null
  br i1 %tobool.not.i.i.i, label %if.end.cleanup104_crit_edge, label %nf_ct_ext_exist.exit.i.i

if.end.cleanup104_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup104

nf_ct_ext_exist.exit.i.i:                         ; preds = %if.end
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.i.i.not.i.i = icmp eq i8 %6, 0
  br i1 %tobool.i.i.not.i.i, label %nf_ct_ext_exist.exit.i.i.cleanup104_crit_edge, label %nfct_help.exit

nf_ct_ext_exist.exit.i.i.cleanup104_crit_edge:    ; preds = %nf_ct_ext_exist.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup104

nfct_help.exit:                                   ; preds = %nf_ct_ext_exist.exit.i.i
  %conv.i.i = zext i8 %6 to i32
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 %conv.i.i
  %tobool2.not = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool2.not, label %nfct_help.exit.cleanup104_crit_edge, label %if.end4

nfct_help.exit.cleanup104_crit_edge:              ; preds = %nfct_help.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup104

if.end4:                                          ; preds = %nfct_help.exit
  %7 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %add.ptr.i.i, align 8
  %call7 = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %land.lhs.true, label %if.end4.do.end16_crit_edge

if.end4.do.end16_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end16

land.lhs.true:                                    ; preds = %if.end4
  %call9 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %land.lhs.true.do.end16_crit_edge, label %land.lhs.true11

land.lhs.true.do.end16_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end16

land.lhs.true11:                                  ; preds = %land.lhs.true
  %.b128 = load i1, ptr @ovs_ct_helper.__warned, align 1
  br i1 %.b128, label %land.lhs.true11.do.end16_crit_edge, label %if.then13

land.lhs.true11.do.end16_crit_edge:               ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end16

if.then13:                                        ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @ovs_ct_helper.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 455, ptr noundef nonnull @.str.10) #13
  br label %do.end16

do.end16:                                         ; preds = %if.then13, %land.lhs.true11.do.end16_crit_edge, %land.lhs.true.do.end16_crit_edge, %if.end4.do.end16_crit_edge
  %tobool18.not = icmp eq ptr %8, null
  br i1 %tobool18.not, label %do.end16.cleanup104_crit_edge, label %if.end20

do.end16.cleanup104_crit_edge:                    ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup104

if.end20:                                         ; preds = %do.end16
  %9 = zext i16 %proto to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.111)
  switch i16 %proto, label %land.end [
    i16 2, label %sw.bb
    i16 10, label %sw.bb22
  ]

sw.bb:                                            ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #15
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %10 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %head.i.i.i, align 8
  %network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %12 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i.i = zext i16 %13 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %11, i32 %conv.i.i.i
  %14 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load.i = load i8, ptr %add.ptr.i.i.i, align 4
  %bf.clear.i = shl i8 %bf.load.i, 2
  %15 = and i8 %bf.clear.i, 60
  %mul.i = zext i8 %15 to i32
  br label %sw.epilog

sw.bb22:                                          ; preds = %if.end20
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %nexthdr) #13
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %16 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %18 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i130 = zext i16 %19 to i32
  %add.ptr.i.i131 = getelementptr i8, ptr %17, i32 %conv.i.i130
  %nexthdr24 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i131, i32 0, i32 3
  %20 = ptrtoint ptr %nexthdr24 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %nexthdr24, align 2
  %22 = ptrtoint ptr %nexthdr to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %nexthdr, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %frag_off) #13
  %23 = ptrtoint ptr %frag_off to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 -1, ptr %frag_off, align 2, !annotation !211
  %call25 = call i32 @ipv6_skip_exthdr(ptr noundef %skb, i32 noundef 40, ptr noundef nonnull %nexthdr, ptr noundef nonnull %frag_off) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp26 = icmp slt i32 %call25, 0
  br i1 %cmp26, label %sw.bb22.do.body33_crit_edge, label %lor.lhs.false28

sw.bb22.do.body33_crit_edge:                      ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body33

lor.lhs.false28:                                  ; preds = %sw.bb22
  %24 = ptrtoint ptr %frag_off to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %frag_off, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %25)
  %cmp30.not = icmp ult i16 %25, 8
  br i1 %cmp30.not, label %cleanup.thread, label %lor.lhs.false28.do.body33_crit_edge

lor.lhs.false28.do.body33_crit_edge:              ; preds = %lor.lhs.false28
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body33

cleanup.thread:                                   ; preds = %lor.lhs.false28
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %frag_off) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %nexthdr) #13
  br label %sw.epilog

do.body33:                                        ; preds = %lor.lhs.false28.do.body33_crit_edge, %sw.bb22.do.body33_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ovs_ct_helper.__UNIQUE_ID_ddebug603, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ovs_ct_helper, %if.then39)) #13
          to label %cleanup [label %if.then39], !srcloc !205

if.then39:                                        ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ovs_ct_helper.__UNIQUE_ID_ddebug603, ptr noundef nonnull @.str.20) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then39, %do.body33
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %frag_off) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %nexthdr) #13
  br label %cleanup104

land.end:                                         ; preds = %if.end20
  %.b126127 = load i1, ptr @ovs_ct_helper.__already_done, align 1
  br i1 %.b126127, label %land.end.cleanup104_crit_edge, label %if.then57, !prof !203

land.end.cleanup104_crit_edge:                    ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup104

if.then57:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @ovs_ct_helper.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 478, i32 noundef 9, ptr noundef nonnull @.str.21) #13
  br label %cleanup104

sw.epilog:                                        ; preds = %cleanup.thread, %sw.bb
  %protoff.1 = phi i32 [ %mul.i, %sw.bb ], [ %call25, %cleanup.thread ]
  %help91 = getelementptr inbounds %struct.nf_conntrack_helper, ptr %8, i32 0, i32 6
  %26 = ptrtoint ptr %help91 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %help91, align 4
  %call92 = call i32 %27(ptr noundef %skb, i32 noundef %protoff.1, ptr noundef nonnull %2, i32 noundef %and.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call92)
  %cmp93.not = icmp eq i32 %call92, 1
  br i1 %cmp93.not, label %if.end96, label %sw.epilog.cleanup104_crit_edge

sw.epilog.cleanup104_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup104

if.end96:                                         ; preds = %sw.epilog
  %status = getelementptr inbounds %struct.nf_conn, ptr %2, i32 0, i32 5
  %28 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %status, align 8
  %30 = and i32 %29, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool98.not = icmp eq i32 %30, 0
  br i1 %tobool98.not, label %if.end96.if.end103_crit_edge, label %land.lhs.true99

if.end96.if.end103_crit_edge:                     ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end103

land.lhs.true99:                                  ; preds = %if.end96
  %call100 = call i32 @nf_ct_seq_adjust(ptr noundef %skb, ptr noundef nonnull %2, i32 noundef %and.i, i32 noundef %protoff.1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call100)
  %tobool101.not = icmp eq i32 %call100, 0
  br i1 %tobool101.not, label %land.lhs.true99.cleanup104_crit_edge, label %land.lhs.true99.if.end103_crit_edge

land.lhs.true99.if.end103_crit_edge:              ; preds = %land.lhs.true99
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end103

land.lhs.true99.cleanup104_crit_edge:             ; preds = %land.lhs.true99
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup104

if.end103:                                        ; preds = %land.lhs.true99.if.end103_crit_edge, %if.end96.if.end103_crit_edge
  br label %cleanup104

cleanup104:                                       ; preds = %if.end103, %land.lhs.true99.cleanup104_crit_edge, %sw.epilog.cleanup104_crit_edge, %if.then57, %land.end.cleanup104_crit_edge, %cleanup, %do.end16.cleanup104_crit_edge, %nfct_help.exit.cleanup104_crit_edge, %nf_ct_ext_exist.exit.i.i.cleanup104_crit_edge, %if.end.cleanup104_crit_edge, %entry.cleanup104_crit_edge
  %retval.1 = phi i32 [ 1, %if.end103 ], [ 1, %cleanup ], [ 1, %entry.cleanup104_crit_edge ], [ 1, %nfct_help.exit.cleanup104_crit_edge ], [ 1, %do.end16.cleanup104_crit_edge ], [ 0, %if.then57 ], [ 0, %land.end.cleanup104_crit_edge ], [ %call92, %sw.epilog.cleanup104_crit_edge ], [ 0, %land.lhs.true99.cleanup104_crit_edge ], [ 1, %nf_ct_ext_exist.exit.i.i.cleanup104_crit_edge ], [ 1, %if.end.cleanup104_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nf_ct_delete(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @ovs_ct_find_existing(ptr noundef %net, ptr noundef %zone, i8 noundef zeroext %l3num, ptr noundef %skb, i1 noundef zeroext %natted) unnamed_addr #1 align 64 {
entry:
  %tuple = alloca %struct.nf_conntrack_tuple, align 4
  %inverse = alloca %struct.nf_conntrack_tuple, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %tuple) #13
  %0 = call ptr @memset(ptr %tuple, i32 255, i32 40)
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %1 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %3 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %4 to i32
  %add.ptr.i.i = getelementptr i8, ptr %2, i32 %conv.i.i
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %5 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %6 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv = zext i8 %l3num to i16
  %call1 = call zeroext i1 @nf_ct_get_tuplepr(ptr noundef %skb, i32 noundef %sub.ptr.sub.i, i16 noundef zeroext %conv, ptr noundef %net, ptr noundef nonnull %tuple) #13
  br i1 %call1, label %if.end7, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ovs_ct_find_existing.__UNIQUE_ID_ddebug604, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ovs_ct_find_existing, %if.then6)) #13
          to label %cleanup43 [label %if.then6], !srcloc !205

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ovs_ct_find_existing.__UNIQUE_ID_ddebug604, ptr noundef nonnull @.str.17) #13
  br label %cleanup43

if.end7:                                          ; preds = %entry
  br i1 %natted, label %if.then9, label %if.end7.if.end29_crit_edge

if.end7.if.end29_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29

if.then9:                                         ; preds = %if.end7
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %inverse) #13
  %7 = call ptr @memset(ptr %inverse, i32 255, i32 40)
  %call10 = call zeroext i1 @nf_ct_invert_tuple(ptr noundef nonnull %inverse, ptr noundef nonnull %tuple) #13
  br i1 %call10, label %if.end28, label %do.body12

do.body12:                                        ; preds = %if.then9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ovs_ct_find_existing.__UNIQUE_ID_ddebug605, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ovs_ct_find_existing, %if.then24)) #13
          to label %cleanup43.critedge [label %if.then24], !srcloc !205

if.then24:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ovs_ct_find_existing.__UNIQUE_ID_ddebug605, ptr noundef nonnull @.str.18) #13
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %inverse) #13
  br label %cleanup43

if.end28:                                         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #15
  %8 = call ptr @memcpy(ptr %tuple, ptr %inverse, i32 40)
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %inverse) #13
  br label %if.end29

if.end29:                                         ; preds = %if.end28, %if.end7.if.end29_crit_edge
  %call30 = call ptr @nf_conntrack_find_get(ptr noundef %net, ptr noundef %zone, ptr noundef nonnull %tuple) #13
  %tobool31.not = icmp eq ptr %call30, null
  br i1 %tobool31.not, label %if.end29.cleanup43_crit_edge, label %if.end33

if.end29.cleanup43_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup43

if.end33:                                         ; preds = %if.end29
  %dir.i = getelementptr inbounds %struct.nf_conntrack_tuple_hash, ptr %call30, i32 0, i32 1, i32 1, i32 3
  %9 = ptrtoint ptr %dir.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %dir.i, align 1
  %conv.i = zext i8 %10 to i32
  %.neg.i = mul nsw i32 %conv.i, -48
  %idx.neg.i = add nsw i32 %.neg.i, -56
  %add.ptr.i = getelementptr i8, ptr %call30, i32 %idx.neg.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool38.not = icmp eq i8 %10, 0
  %lnot.ext40 = zext i1 %tobool38.not to i32
  %arrayidx = getelementptr %struct.nf_conn, ptr %add.ptr.i, i32 0, i32 4, i32 %lnot.ext40
  %h.0 = select i1 %natted, ptr %arrayidx, ptr %call30
  %dir.i.i = getelementptr inbounds %struct.nf_conntrack_tuple_hash, ptr %h.0, i32 0, i32 1, i32 1, i32 3
  %11 = ptrtoint ptr %dir.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %dir.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %12)
  %cmp.i = icmp eq i8 %12, 1
  br i1 %cmp.i, label %if.end33.ovs_ct_get_info.exit_crit_edge, label %if.end.i

if.end33.ovs_ct_get_info.exit_crit_edge:          ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #15
  br label %ovs_ct_get_info.exit

if.end.i:                                         ; preds = %if.end33
  %conv.i.i59 = zext i8 %12 to i32
  %.neg.i.i = mul nsw i32 %conv.i.i59, -48
  %idx.neg.i.i = add nsw i32 %.neg.i.i, -56
  %add.ptr.i.i60 = getelementptr i8, ptr %h.0, i32 %idx.neg.i.i
  %status.i = getelementptr inbounds %struct.nf_conn, ptr %add.ptr.i.i60, i32 0, i32 5
  %13 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %status.i, align 4
  %15 = and i32 %14, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i = icmp eq i32 %15, 0
  br i1 %tobool.not.i, label %if.end4.i, label %if.end.i.ovs_ct_get_info.exit_crit_edge

if.end.i.ovs_ct_get_info.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ovs_ct_get_info.exit

if.end4.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %16 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %status.i, align 4
  %and1.i12.i = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i12.i)
  %tobool7.not.i = icmp eq i32 %and1.i12.i, 0
  %..i = select i1 %tobool7.not.i, i32 2, i32 1
  br label %ovs_ct_get_info.exit

ovs_ct_get_info.exit:                             ; preds = %if.end4.i, %if.end.i.ovs_ct_get_info.exit_crit_edge, %if.end33.ovs_ct_get_info.exit_crit_edge
  %retval.0.i61 = phi i32 [ 3, %if.end33.ovs_ct_get_info.exit_crit_edge ], [ 0, %if.end.i.ovs_ct_get_info.exit_crit_edge ], [ %..i, %if.end4.i ]
  %18 = ptrtoint ptr %add.ptr.i to i32
  %or.i = or i32 %retval.0.i61, %18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %tobool.not.i.i = icmp eq i32 %or.i, 0
  %slow_gro.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %19 = ptrtoint ptr %slow_gro.i.i to i32
  call void @__asan_loadN_noabort(i32 %19, i32 4)
  %bf.load.i.i = load i32, ptr %slow_gro.i.i, align 2
  %bf.load.mask.i.i = and i32 %bf.load.i.i, 4096
  %bf.shl.i.i = select i1 %tobool.not.i.i, i32 %bf.load.mask.i.i, i32 4096
  %bf.clear4.i.i = and i32 %bf.load.i.i, -4097
  %bf.set.i.i = or i32 %bf.shl.i.i, %bf.clear4.i.i
  store i32 %bf.set.i.i, ptr %slow_gro.i.i, align 2
  %_nfct.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 5
  %20 = ptrtoint ptr %_nfct.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %or.i, ptr %_nfct.i.i, align 8
  br label %cleanup43

cleanup43.critedge:                               ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %inverse) #13
  br label %cleanup43

cleanup43:                                        ; preds = %cleanup43.critedge, %ovs_ct_get_info.exit, %if.end29.cleanup43_crit_edge, %if.then24, %if.then6, %do.body
  %retval.1 = phi ptr [ %add.ptr.i, %ovs_ct_get_info.exit ], [ null, %if.then6 ], [ null, %cleanup43.critedge ], [ null, %if.then24 ], [ null, %if.end29.cleanup43_crit_edge ], [ null, %do.body ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %tuple) #13
  ret ptr %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nf_ct_get_tuplepr(ptr noundef, i32 noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nf_ct_invert_tuple(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nf_conntrack_find_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nf_ct_nat_ext_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ovs_ct_nat_execute(ptr noundef %skb, ptr noundef %ct, i32 noundef %ctinfo, ptr noundef %range, i32 noundef %maniptype) unnamed_addr #1 align 64 {
entry:
  %frag_off = alloca i16, align 2
  %nexthdr = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
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
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %4 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %5 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %call1 = tail call ptr @skb_pull_rcsum(ptr noundef %skb, i32 noundef %sub.ptr.sub.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %maniptype)
  %cmp = icmp eq i32 %maniptype, 0
  %. = select i1 %cmp, i32 1, i32 3
  %6 = zext i32 %ctinfo to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.112)
  switch i32 %ctinfo, label %entry.push_crit_edge [
    i32 1, label %entry.sw.bb_crit_edge
    i32 4, label %entry.sw.bb_crit_edge99
    i32 2, label %entry.sw.bb38_crit_edge
    i32 0, label %entry.sw.epilog_crit_edge
    i32 3, label %entry.sw.epilog_crit_edge100
  ]

entry.sw.epilog_crit_edge100:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

entry.sw.bb38_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb38

entry.sw.bb_crit_edge99:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb

entry.push_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %push

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge99
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %7 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %protocol, align 8
  %9 = zext i16 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.113)
  switch i16 %8, label %sw.bb.sw.bb38_crit_edge [
    i16 2048, label %land.lhs.true
    i16 -31011, label %if.then18
  ]

sw.bb.sw.bb38_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb38

land.lhs.true:                                    ; preds = %sw.bb
  %10 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %head.i.i, align 8
  %12 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i89 = zext i16 %13 to i32
  %add.ptr.i.i90 = getelementptr i8, ptr %11, i32 %conv.i.i89
  %protocol5 = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i90, i32 0, i32 6
  %14 = ptrtoint ptr %protocol5 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %protocol5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %15)
  %cmp7 = icmp eq i8 %15, 1
  br i1 %cmp7, label %if.then9, label %land.lhs.true.sw.bb38_crit_edge

land.lhs.true.sw.bb38_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb38

if.then9:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %call10 = tail call i32 @nf_nat_icmp_reply_translation(ptr noundef %skb, ptr noundef %ct, i32 noundef %ctinfo, i32 noundef %.) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool.not = icmp ne i32 %call10, 0
  %spec.select = zext i1 %tobool.not to i32
  br label %push

if.then18:                                        ; preds = %sw.bb
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %frag_off) #13
  %16 = ptrtoint ptr %frag_off to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 -1, ptr %frag_off, align 2, !annotation !211
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %nexthdr) #13
  %17 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %head.i.i, align 8
  %19 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i93 = zext i16 %20 to i32
  %add.ptr.i.i94 = getelementptr i8, ptr %18, i32 %conv.i.i93
  %nexthdr20 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i94, i32 0, i32 3
  %21 = ptrtoint ptr %nexthdr20 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %nexthdr20, align 2
  %23 = ptrtoint ptr %nexthdr to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %nexthdr, align 1
  %call21 = call i32 @ipv6_skip_exthdr(ptr noundef %skb, i32 noundef 40, ptr noundef nonnull %nexthdr, ptr noundef nonnull %frag_off) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call21)
  %cmp22 = icmp sgt i32 %call21, -1
  br i1 %cmp22, label %land.lhs.true24, label %if.then18.cleanup.thread_crit_edge

if.then18.cleanup.thread_crit_edge:               ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.thread

land.lhs.true24:                                  ; preds = %if.then18
  %24 = ptrtoint ptr %nexthdr to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %nexthdr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 58, i8 %25)
  %cmp26 = icmp eq i8 %25, 58
  br i1 %cmp26, label %cleanup, label %land.lhs.true24.cleanup.thread_crit_edge

land.lhs.true24.cleanup.thread_crit_edge:         ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %land.lhs.true24.cleanup.thread_crit_edge, %if.then18.cleanup.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %nexthdr) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %frag_off) #13
  br label %sw.bb38

cleanup:                                          ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #15
  %call29 = call i32 @nf_nat_icmpv6_reply_translation(ptr noundef %skb, ptr noundef %ct, i32 noundef %ctinfo, i32 noundef %., i32 noundef %call21) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp ne i32 %call29, 0
  %spec.select86 = zext i1 %tobool30.not to i32
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %nexthdr) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %frag_off) #13
  br label %push

sw.bb38:                                          ; preds = %cleanup.thread, %land.lhs.true.sw.bb38_crit_edge, %sw.bb.sw.bb38_crit_edge, %entry.sw.bb38_crit_edge
  %status.i = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 5
  %26 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %status.i, align 8
  %..i = select i1 %cmp, i32 128, i32 256
  %and2.i = and i32 %27, %..i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool40.not = icmp eq i32 %and2.i, 0
  br i1 %tobool40.not, label %if.then41, label %sw.bb38.sw.epilog_crit_edge

sw.bb38.sw.epilog_crit_edge:                      ; preds = %sw.bb38
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.then41:                                        ; preds = %sw.bb38
  %tobool42.not = icmp eq ptr %range, null
  br i1 %tobool42.not, label %if.then41.cond.false_crit_edge, label %land.lhs.true43

if.then41.cond.false_crit_edge:                   ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.false

land.lhs.true43:                                  ; preds = %if.then41
  %28 = ptrtoint ptr %range to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %range, align 4
  %and = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool44.not = icmp eq i32 %and, 0
  br i1 %tobool44.not, label %land.lhs.true43.cond.false_crit_edge, label %cond.true

land.lhs.true43.cond.false_crit_edge:             ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.false

cond.true:                                        ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #15
  %call45 = call i32 @nf_nat_setup_info(ptr noundef %ct, ptr noundef nonnull %range, i32 noundef %maniptype) #13
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true43.cond.false_crit_edge, %if.then41.cond.false_crit_edge
  %call46 = call i32 @nf_nat_alloc_null_binding(ptr noundef %ct, i32 noundef %.) #13
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call45, %cond.true ], [ %call46, %cond.false ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %cond)
  %cmp47.not = icmp eq i32 %cond, 1
  br i1 %cmp47.not, label %cond.end.sw.epilog_crit_edge, label %cond.end.push_crit_edge

cond.end.push_crit_edge:                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %push

cond.end.sw.epilog_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.epilog:                                        ; preds = %cond.end.sw.epilog_crit_edge, %sw.bb38.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge100
  %call53 = call i32 @nf_nat_packet(ptr noundef %ct, i32 noundef %ctinfo, i32 noundef %., ptr noundef %skb) #13
  br label %push

push:                                             ; preds = %sw.epilog, %cond.end.push_crit_edge, %cleanup, %if.then9, %entry.push_crit_edge
  %err.2 = phi i32 [ %call53, %sw.epilog ], [ %cond, %cond.end.push_crit_edge ], [ %spec.select86, %cleanup ], [ %spec.select, %if.then9 ], [ 0, %entry.push_crit_edge ]
  %call.i = call ptr @skb_push(ptr noundef %skb, i32 noundef %sub.ptr.sub.i) #13
  %ip_summed.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %30 = ptrtoint ptr %ip_summed.i.i.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %bf.load.i.i.i = load i16, ptr %ip_summed.i.i.i, align 8
  %31 = and i16 %bf.load.i.i.i, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %31)
  %cmp.i.i.i = icmp eq i16 %31, 1024
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %push.cleanup55_crit_edge

push.cleanup55_crit_edge:                         ; preds = %push
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup55

if.then.i.i.i:                                    ; preds = %push
  call void @__sanitizer_cov_trace_pc() #15
  %32 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %data.i, align 4
  %34 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %34, align 8
  %call.i.i.i = call i32 @csum_partial(ptr noundef %33, i32 noundef %sub.ptr.sub.i, i32 noundef 0) #13
  %add.i.i.i.i.i = add i32 %call.i.i.i, %36
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i.i.i, i32 %call.i.i.i)
  %cmp.i.i.i.i.i = icmp ult i32 %add.i.i.i.i.i, %call.i.i.i
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i to i32
  %add1.i.i.i.i.i = add i32 %add.i.i.i.i.i, %conv.i.i.i.i.i
  %37 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %add1.i.i.i.i.i, ptr %34, align 8
  br label %cleanup55

cleanup55:                                        ; preds = %if.then.i.i.i, %push.cleanup55_crit_edge
  ret i32 %err.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_nat_icmp_reply_translation(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_skip_exthdr(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_nat_icmpv6_reply_translation(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_nat_setup_info(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_nat_alloc_null_binding(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_nat_packet(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nf_ct_ext_add(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_ct_seq_adjust(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_conncount_count(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_connlabels_replace(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__nf_conntrack_confirm(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_ct_deliver_cached_events(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__nf_ct_expect_find(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @csum_partial(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_ct_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @memchr(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_memcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nf_conntrack_helper_try_module_get(ptr noundef, i16 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nf_ct_helper_ext_add(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_conntrack_helper_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_nat_helper_try_module_get(ptr noundef, i16 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_nat_helper_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_ct_destroy_timeout(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_ct_tmpl_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ovs_ct_limit_cmd_set(ptr nocapture noundef readonly %skb, ptr nocapture noundef readonly %info) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %attrs = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %0 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %attrs, align 4
  %2 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %4, i32 0, i32 9
  %5 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %skc_net.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ovs_net_id to i32))
  %7 = load i32, ptr @ovs_net_id, align 4
  %call1 = tail call fastcc ptr @net_generic(ptr noundef %6, i32 noundef %7)
  %ct_limit_info2 = getelementptr inbounds %struct.ovs_net, ptr %call1, i32 0, i32 3
  %8 = ptrtoint ptr %ct_limit_info2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ct_limit_info2, align 4
  %userhdr.i = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 4
  %10 = ptrtoint ptr %userhdr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %userhdr.i, align 4
  %call.i.i.i.i = tail call ptr @__alloc_skb(i32 noundef 3844, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #13
  %tobool.not.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool.not.i, label %entry.if.then_crit_edge, label %if.end.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

if.end.i:                                         ; preds = %entry
  %snd_portid.i = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 1
  %12 = ptrtoint ptr %snd_portid.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %snd_portid.i, align 4
  %14 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %info, align 4
  %call2.i = tail call ptr @genlmsg_put(ptr noundef nonnull %call.i.i.i.i, i32 noundef %13, i32 noundef %15, ptr noundef nonnull @dp_ct_limit_genl_family, i32 noundef 0, i8 noundef zeroext 1) #13
  %tobool3.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool3.not.i, label %if.then4.i, label %ovs_ct_limit_cmd_reply_start.exit

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i.i.i.i, i32 noundef 0) #13
  br label %if.then

ovs_ct_limit_cmd_reply_start.exit:                ; preds = %if.end.i
  %16 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %11, align 4
  %18 = ptrtoint ptr %call2.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %call2.i, align 4
  %cmp.i = icmp ugt ptr %call.i.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %ovs_ct_limit_cmd_reply_start.exit.if.then_crit_edge, label %if.end

ovs_ct_limit_cmd_reply_start.exit.if.then_crit_edge: ; preds = %ovs_ct_limit_cmd_reply_start.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

if.then:                                          ; preds = %ovs_ct_limit_cmd_reply_start.exit.if.then_crit_edge, %if.then4.i, %entry.if.then_crit_edge
  %retval.0.i32 = phi ptr [ %call.i.i.i.i, %ovs_ct_limit_cmd_reply_start.exit.if.then_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.if.then_crit_edge ], [ inttoptr (i32 -90 to ptr), %if.then4.i ]
  %19 = ptrtoint ptr %retval.0.i32 to i32
  br label %cleanup

if.end:                                           ; preds = %ovs_ct_limit_cmd_reply_start.exit
  %arrayidx = getelementptr ptr, ptr %1, i32 1
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %21, null
  br i1 %tobool.not, label %if.end.exit_err_crit_edge, label %if.end7

if.end.exit_err_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %exit_err

if.end7:                                          ; preds = %if.end
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %21, align 2
  %conv.i.i = zext i16 %23 to i32
  %sub.i = add nsw i32 %conv.i.i, -1
  %and.i = and i32 %sub.i, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %and.i)
  %cmp69.i = icmp ugt i32 %and.i, 11
  br i1 %cmp69.i, label %while.body.lr.ph.i, label %if.end7.while.end.i_crit_edge

if.end7.while.end.i_crit_edge:                    ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.i

while.body.lr.ph.i:                               ; preds = %if.end7
  %add.ptr.i.i = getelementptr i8, ptr %21, i32 4
  %limits.i.i.i = getelementptr inbounds %struct.ovs_ct_limit_info, ptr %9, i32 0, i32 1
  br label %while.body.i

while.body.i:                                     ; preds = %if.end31.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %zone_limit.071.i = phi ptr [ %add.ptr.i.i, %while.body.lr.ph.i ], [ %add.ptr.i, %if.end31.i.while.body.i_crit_edge ]
  %rem.070.i = phi i32 [ %and.i, %while.body.lr.ph.i ], [ %sub32.i, %if.end31.i.while.body.i_crit_edge ]
  %24 = ptrtoint ptr %zone_limit.071.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %zone_limit.071.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %25)
  %cmp2.i = icmp eq i32 %25, -1
  br i1 %cmp2.i, label %if.then.i, label %if.else.i, !prof !200

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @ovs_lock() #13
  %limit.i = getelementptr inbounds %struct.ovs_zone_limit, ptr %zone_limit.071.i, i32 0, i32 1
  %26 = ptrtoint ptr %limit.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %limit.i, align 4
  %28 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %9, align 4
  tail call void @ovs_unlock() #13
  br label %if.end31.i

if.else.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %25)
  %29 = icmp ult i32 %25, 65536
  br i1 %29, label %if.else22.i, label %do.body.i

do.body.i:                                        ; preds = %if.else.i
  %call15.i = tail call i32 @net_ratelimit() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool16.not.i = icmp eq i32 %call15.i, 0
  br i1 %tobool16.not.i, label %do.body.i.if.end31.i_crit_edge, label %do.end.i

do.body.i.if.end31.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end31.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %call19.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82) #16
  br label %if.end31.i

if.else22.i:                                      ; preds = %if.else.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %30 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %30, i32 noundef 3264, i32 noundef 24) #19
  %tobool24.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool24.not.i, label %if.else22.i.exit_err_crit_edge, label %if.end26.i

if.else22.i.exit_err_crit_edge:                   ; preds = %if.else22.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %exit_err

if.end26.i:                                       ; preds = %if.else22.i
  %conv.i63.i = trunc i32 %25 to i16
  %zone27.i = getelementptr inbounds %struct.ovs_ct_limit, ptr %call7.i.i, i32 0, i32 2
  %31 = ptrtoint ptr %zone27.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %conv.i63.i, ptr %zone27.i, align 8
  %limit28.i = getelementptr inbounds %struct.ovs_zone_limit, ptr %zone_limit.071.i, i32 0, i32 1
  %32 = ptrtoint ptr %limit28.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %limit28.i, align 4
  %limit29.i = getelementptr inbounds %struct.ovs_ct_limit, ptr %call7.i.i, i32 0, i32 3
  %34 = ptrtoint ptr %limit29.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %limit29.i, align 4
  tail call void @ovs_lock() #13
  %35 = ptrtoint ptr %zone27.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %zone27.i, align 8
  %37 = ptrtoint ptr %limits.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %limits.i.i.i, align 4
  %39 = and i16 %36, 511
  %and.i.i.i = zext i16 %39 to i32
  %arrayidx.i.i.i = getelementptr %struct.hlist_head, ptr %38, i32 %and.i.i.i
  %call1.i.i = tail call i32 @rcu_read_lock_any_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %if.end26.i.do.end.i.i_crit_edge

if.end26.i.do.end.i.i_crit_edge:                  ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i

land.lhs.true.i.i:                                ; preds = %if.end26.i
  %call2.i.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %land.lhs.true.i.i.do.end.i.i_crit_edge, label %land.lhs.true4.i.i

land.lhs.true.i.i.do.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i

land.lhs.true4.i.i:                               ; preds = %land.lhs.true.i.i
  %.b60.i.i = load i1, ptr @ct_limit_set.__warned, align 1
  br i1 %.b60.i.i, label %land.lhs.true4.i.i.do.end.i.i_crit_edge, label %if.then.i64.i

land.lhs.true4.i.i.do.end.i.i_crit_edge:          ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i

if.then.i64.i:                                    ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @ct_limit_set.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 1123, ptr noundef nonnull @.str.23) #13
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %if.then.i64.i, %land.lhs.true4.i.i.do.end.i.i_crit_edge, %land.lhs.true.i.i.do.end.i.i_crit_edge, %if.end26.i.do.end.i.i_crit_edge
  %40 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile ptr, ptr %arrayidx.i.i.i, align 4
  %tobool11.not.i.i = icmp eq ptr %41, null
  br i1 %tobool11.not.i.i, label %cleanup.critedge.i.i, label %for.body.lr.ph.i.i

for.body.lr.ph.i.i:                               ; preds = %do.end.i.i
  %42 = ptrtoint ptr %zone27.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %zone27.i, align 8
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %ct_limit.066.i.i = phi ptr [ %41, %for.body.lr.ph.i.i ], [ %60, %for.inc.i.i.for.body.i.i_crit_edge ]
  %zone14.i.i = getelementptr inbounds %struct.ovs_ct_limit, ptr %ct_limit.066.i.i, i32 0, i32 2
  %44 = ptrtoint ptr %zone14.i.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %zone14.i.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %45, i16 %43)
  %cmp.i.i = icmp eq i16 %45, %43
  br i1 %cmp.i.i, label %if.then18.i.i, label %for.inc.i.i

if.then18.i.i:                                    ; preds = %for.body.i.i
  %46 = ptrtoint ptr %ct_limit.066.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ct_limit.066.i.i, align 4
  %48 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %47, ptr %call7.i.i, align 8
  %pprev.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %ct_limit.066.i.i, i32 0, i32 1
  %49 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %pprev.i.i.i, align 4
  %pprev5.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %call7.i.i, i32 0, i32 1
  %51 = ptrtoint ptr %pprev5.i.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile ptr %50, ptr %pprev5.i.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !212
  %52 = ptrtoint ptr %pprev5.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %pprev5.i.i.i, align 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile ptr %call7.i.i, ptr %53, align 4
  %tobool.not.i.i.i = icmp eq ptr %47, null
  br i1 %tobool.not.i.i.i, label %if.then18.i.i.hlist_replace_rcu.exit.i.i_crit_edge, label %do.body50.i.i.i

if.then18.i.i.hlist_replace_rcu.exit.i.i_crit_edge: ; preds = %if.then18.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %hlist_replace_rcu.exit.i.i

do.body50.i.i.i:                                  ; preds = %if.then18.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %55 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %call7.i.i, align 8
  %pprev53.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %pprev53.i.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store volatile ptr %call7.i.i, ptr %pprev53.i.i.i, align 4
  br label %hlist_replace_rcu.exit.i.i

hlist_replace_rcu.exit.i.i:                       ; preds = %do.body50.i.i.i, %if.then18.i.i.hlist_replace_rcu.exit.i.i_crit_edge
  %58 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile ptr inttoptr (i32 290 to ptr), ptr %pprev.i.i.i, align 4
  %rcu.i.i = getelementptr inbounds %struct.ovs_ct_limit, ptr %ct_limit.066.i.i, i32 0, i32 1
  tail call void @kvfree_call_rcu(ptr noundef %rcu.i.i, ptr noundef nonnull inttoptr (i32 8 to ptr)) #13
  br label %ct_limit_set.exit.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %59 = ptrtoint ptr %ct_limit.066.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile ptr, ptr %ct_limit.066.i.i, align 4
  %tobool13.not.i.i = icmp eq ptr %60, null
  br i1 %tobool13.not.i.i, label %do.body49.i.i.i, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i

do.body49.i.i.i:                                  ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %61 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %41, ptr %call7.i.i, align 8
  %pprev.i62.i.i = getelementptr inbounds %struct.hlist_node, ptr %call7.i.i, i32 0, i32 1
  %62 = ptrtoint ptr %pprev.i62.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store volatile ptr %arrayidx.i.i.i, ptr %pprev.i62.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !213
  %63 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store volatile ptr %call7.i.i, ptr %arrayidx.i.i.i, align 4
  %pprev51.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %41, i32 0, i32 1
  %64 = ptrtoint ptr %pprev51.i.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store volatile ptr %call7.i.i, ptr %pprev51.i.i.i, align 4
  br label %ct_limit_set.exit.i

cleanup.critedge.i.i:                             ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %65 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr null, ptr %call7.i.i, align 8
  %pprev.i62.c.i.i = getelementptr inbounds %struct.hlist_node, ptr %call7.i.i, i32 0, i32 1
  %66 = ptrtoint ptr %pprev.i62.c.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store volatile ptr %arrayidx.i.i.i, ptr %pprev.i62.c.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !213
  %67 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store volatile ptr %call7.i.i, ptr %arrayidx.i.i.i, align 4
  br label %ct_limit_set.exit.i

ct_limit_set.exit.i:                              ; preds = %cleanup.critedge.i.i, %do.body49.i.i.i, %hlist_replace_rcu.exit.i.i
  tail call void @ovs_unlock() #13
  br label %if.end31.i

if.end31.i:                                       ; preds = %ct_limit_set.exit.i, %do.end.i, %do.body.i.if.end31.i_crit_edge, %if.then.i
  %sub32.i = add i32 %rem.070.i, -12
  %add.ptr.i = getelementptr i8, ptr %zone_limit.071.i, i32 12
  %cmp.i27 = icmp ugt i32 %sub32.i, 11
  br i1 %cmp.i27, label %if.end31.i.while.body.i_crit_edge, label %if.end31.i.while.end.i_crit_edge

if.end31.i.while.end.i_crit_edge:                 ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.i

if.end31.i.while.body.i_crit_edge:                ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i

while.end.i:                                      ; preds = %if.end31.i.while.end.i_crit_edge, %if.end7.while.end.i_crit_edge
  %rem.0.lcssa.i = phi i32 [ %and.i, %if.end7.while.end.i_crit_edge ], [ %sub32.i, %if.end31.i.while.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.0.lcssa.i)
  %tobool33.not.i = icmp eq i32 %rem.0.lcssa.i, 0
  br i1 %tobool33.not.i, label %while.end.i.if.end12_crit_edge, label %do.body35.i

while.end.i.if.end12_crit_edge:                   ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end12

do.body35.i:                                      ; preds = %while.end.i
  %call36.i = tail call i32 @net_ratelimit() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.i)
  %tobool37.not.i = icmp eq i32 %call36.i, 0
  br i1 %tobool37.not.i, label %do.body35.i.if.end12_crit_edge, label %do.end41.i

do.body35.i.if.end12_crit_edge:                   ; preds = %do.body35.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end12

do.end41.i:                                       ; preds = %do.body35.i
  call void @__sanitizer_cov_trace_pc() #15
  %call43.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85, i32 noundef %rem.0.lcssa.i) #16
  br label %if.end12

if.end12:                                         ; preds = %do.end41.i, %do.body35.i.if.end12_crit_edge, %while.end.i.if.end12_crit_edge
  tail call void @static_key_enable(ptr noundef nonnull @ovs_ct_limit_enabled) #13
  %add.ptr1.i = getelementptr i8, ptr %call2.i, i32 -20
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 16
  %68 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %69 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %add.ptr1.i to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %70 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %sub.ptr.sub.i.i, ptr %add.ptr1.i, align 4
  %_net.i.i = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 6
  %71 = ptrtoint ptr %_net.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %_net.i.i, align 4
  %73 = ptrtoint ptr %snd_portid.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %snd_portid.i, align 4
  %genl_sock.i.i = getelementptr inbounds %struct.net, ptr %72, i32 0, i32 21
  %75 = ptrtoint ptr %genl_sock.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %genl_sock.i.i, align 4
  %call.i.i.i = tail call i32 @netlink_unicast(ptr noundef %76, ptr noundef nonnull %call.i.i.i.i, i32 noundef %74, i32 noundef 64) #13
  %77 = tail call i32 @llvm.smin.i32(i32 %call.i.i.i, i32 0) #13
  br label %cleanup

exit_err:                                         ; preds = %if.else22.i.exit_err_crit_edge, %if.end.exit_err_crit_edge
  %err.0 = phi i32 [ -22, %if.end.exit_err_crit_edge ], [ -12, %if.else22.i.exit_err_crit_edge ]
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i.i.i.i, i32 noundef 0) #13
  br label %cleanup

cleanup:                                          ; preds = %exit_err, %if.end12, %if.then
  %retval.0 = phi i32 [ %19, %if.then ], [ %err.0, %exit_err ], [ %77, %if.end12 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ovs_ct_limit_cmd_del(ptr nocapture noundef readonly %skb, ptr nocapture noundef readonly %info) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %attrs = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %0 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %attrs, align 4
  %2 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %4, i32 0, i32 9
  %5 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %skc_net.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ovs_net_id to i32))
  %7 = load i32, ptr @ovs_net_id, align 4
  %call1 = tail call fastcc ptr @net_generic(ptr noundef %6, i32 noundef %7)
  %ct_limit_info2 = getelementptr inbounds %struct.ovs_net, ptr %call1, i32 0, i32 3
  %8 = ptrtoint ptr %ct_limit_info2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ct_limit_info2, align 4
  %userhdr.i = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 4
  %10 = ptrtoint ptr %userhdr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %userhdr.i, align 4
  %call.i.i.i.i = tail call ptr @__alloc_skb(i32 noundef 3844, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #13
  %tobool.not.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool.not.i, label %entry.if.then_crit_edge, label %if.end.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

if.end.i:                                         ; preds = %entry
  %snd_portid.i = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 1
  %12 = ptrtoint ptr %snd_portid.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %snd_portid.i, align 4
  %14 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %info, align 4
  %call2.i = tail call ptr @genlmsg_put(ptr noundef nonnull %call.i.i.i.i, i32 noundef %13, i32 noundef %15, ptr noundef nonnull @dp_ct_limit_genl_family, i32 noundef 0, i8 noundef zeroext 2) #13
  %tobool3.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool3.not.i, label %if.then4.i, label %ovs_ct_limit_cmd_reply_start.exit

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i.i.i.i, i32 noundef 0) #13
  br label %if.then

ovs_ct_limit_cmd_reply_start.exit:                ; preds = %if.end.i
  %16 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %11, align 4
  %18 = ptrtoint ptr %call2.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %call2.i, align 4
  %cmp.i = icmp ugt ptr %call.i.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %ovs_ct_limit_cmd_reply_start.exit.if.then_crit_edge, label %if.end

ovs_ct_limit_cmd_reply_start.exit.if.then_crit_edge: ; preds = %ovs_ct_limit_cmd_reply_start.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

if.then:                                          ; preds = %ovs_ct_limit_cmd_reply_start.exit.if.then_crit_edge, %if.then4.i, %entry.if.then_crit_edge
  %retval.0.i32 = phi ptr [ %call.i.i.i.i, %ovs_ct_limit_cmd_reply_start.exit.if.then_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.if.then_crit_edge ], [ inttoptr (i32 -90 to ptr), %if.then4.i ]
  %19 = ptrtoint ptr %retval.0.i32 to i32
  br label %cleanup

if.end:                                           ; preds = %ovs_ct_limit_cmd_reply_start.exit
  %arrayidx = getelementptr ptr, ptr %1, i32 1
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %21, null
  br i1 %tobool.not, label %exit_err, label %if.end7

if.end7:                                          ; preds = %if.end
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %21, align 2
  %conv.i.i = zext i16 %23 to i32
  %sub.i = add nsw i32 %conv.i.i, -1
  %and.i = and i32 %sub.i, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %and.i)
  %cmp7.i = icmp ugt i32 %and.i, 11
  br i1 %cmp7.i, label %while.body.lr.ph.i, label %if.end7.while.end.i_crit_edge

if.end7.while.end.i_crit_edge:                    ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.i

while.body.lr.ph.i:                               ; preds = %if.end7
  %add.ptr.i.i = getelementptr i8, ptr %21, i32 4
  %limits.i.i.i = getelementptr inbounds %struct.ovs_ct_limit_info, ptr %9, i32 0, i32 1
  br label %while.body.i

while.body.i:                                     ; preds = %if.end24.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %zone_limit.09.i = phi ptr [ %add.ptr.i.i, %while.body.lr.ph.i ], [ %add.ptr.i, %if.end24.i.while.body.i_crit_edge ]
  %rem.08.i = phi i32 [ %and.i, %while.body.lr.ph.i ], [ %sub25.i, %if.end24.i.while.body.i_crit_edge ]
  %24 = ptrtoint ptr %zone_limit.09.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %zone_limit.09.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %25)
  %cmp2.i = icmp eq i32 %25, -1
  br i1 %cmp2.i, label %if.then.i, label %if.else.i, !prof !200

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @ovs_lock() #13
  %26 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %9, align 4
  tail call void @ovs_unlock() #13
  br label %if.end24.i

if.else.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %25)
  %27 = icmp ult i32 %25, 65536
  br i1 %27, label %if.else22.i, label %do.body.i

do.body.i:                                        ; preds = %if.else.i
  %call15.i = tail call i32 @net_ratelimit() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool16.not.i = icmp eq i32 %call15.i, 0
  br i1 %tobool16.not.i, label %do.body.i.if.end24.i_crit_edge, label %do.end.i

do.body.i.if.end24.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end24.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %call19.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82) #16
  br label %if.end24.i

if.else22.i:                                      ; preds = %if.else.i
  %conv.i1.i = trunc i32 %25 to i16
  tail call void @ovs_lock() #13
  %28 = ptrtoint ptr %limits.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %limits.i.i.i, align 4
  %30 = and i32 %25, 511
  %arrayidx.i.i.i = getelementptr %struct.hlist_head, ptr %29, i32 %30
  %31 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx.i.i.i, align 4
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %land.rhs.i.i.for.cond.i.i_crit_edge, %if.else22.i
  %ct_limit.0.i.i = phi ptr [ %32, %if.else22.i ], [ %34, %land.rhs.i.i.for.cond.i.i_crit_edge ]
  %tobool2.not.i.i = icmp eq ptr %ct_limit.0.i.i, null
  br i1 %tobool2.not.i.i, label %for.cond.i.i.ct_limit_del.exit.i_crit_edge, label %land.rhs.i.i

for.cond.i.i.ct_limit_del.exit.i_crit_edge:       ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ct_limit_del.exit.i

land.rhs.i.i:                                     ; preds = %for.cond.i.i
  %33 = ptrtoint ptr %ct_limit.0.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ct_limit.0.i.i, align 4
  %zone5.i.i = getelementptr inbounds %struct.ovs_ct_limit, ptr %ct_limit.0.i.i, i32 0, i32 2
  %35 = ptrtoint ptr %zone5.i.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %zone5.i.i, align 4
  %cmp.i.i = icmp eq i16 %36, %conv.i1.i
  br i1 %cmp.i.i, label %if.then.i2.i, label %land.rhs.i.i.for.cond.i.i_crit_edge

land.rhs.i.i.for.cond.i.i_crit_edge:              ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.i.i

if.then.i2.i:                                     ; preds = %land.rhs.i.i
  %pprev2.i.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %ct_limit.0.i.i, i32 0, i32 1
  %37 = ptrtoint ptr %pprev2.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pprev2.i.i.i.i, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %34, ptr %38, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %34, null
  br i1 %tobool.not.i.i.i.i, label %if.then.i2.i.hlist_del_rcu.exit.i.i_crit_edge, label %do.body13.i.i.i.i

if.then.i2.i.hlist_del_rcu.exit.i.i_crit_edge:    ; preds = %if.then.i2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %hlist_del_rcu.exit.i.i

do.body13.i.i.i.i:                                ; preds = %if.then.i2.i
  call void @__sanitizer_cov_trace_pc() #15
  %pprev14.i.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %34, i32 0, i32 1
  %40 = ptrtoint ptr %pprev14.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %38, ptr %pprev14.i.i.i.i, align 4
  br label %hlist_del_rcu.exit.i.i

hlist_del_rcu.exit.i.i:                           ; preds = %do.body13.i.i.i.i, %if.then.i2.i.hlist_del_rcu.exit.i.i_crit_edge
  %41 = ptrtoint ptr %pprev2.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i.i.i, align 4
  %rcu.i.i = getelementptr inbounds %struct.ovs_ct_limit, ptr %ct_limit.0.i.i, i32 0, i32 1
  tail call void @kvfree_call_rcu(ptr noundef %rcu.i.i, ptr noundef nonnull inttoptr (i32 8 to ptr)) #13
  br label %ct_limit_del.exit.i

ct_limit_del.exit.i:                              ; preds = %hlist_del_rcu.exit.i.i, %for.cond.i.i.ct_limit_del.exit.i_crit_edge
  tail call void @ovs_unlock() #13
  br label %if.end24.i

if.end24.i:                                       ; preds = %ct_limit_del.exit.i, %do.end.i, %do.body.i.if.end24.i_crit_edge, %if.then.i
  %sub25.i = add i32 %rem.08.i, -12
  %add.ptr.i = getelementptr i8, ptr %zone_limit.09.i, i32 12
  %cmp.i27 = icmp ugt i32 %sub25.i, 11
  br i1 %cmp.i27, label %if.end24.i.while.body.i_crit_edge, label %if.end24.i.while.end.i_crit_edge

if.end24.i.while.end.i_crit_edge:                 ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.i

if.end24.i.while.body.i_crit_edge:                ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i

while.end.i:                                      ; preds = %if.end24.i.while.end.i_crit_edge, %if.end7.while.end.i_crit_edge
  %rem.0.lcssa.i = phi i32 [ %and.i, %if.end7.while.end.i_crit_edge ], [ %sub25.i, %if.end24.i.while.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.0.lcssa.i)
  %tobool26.not.i = icmp eq i32 %rem.0.lcssa.i, 0
  br i1 %tobool26.not.i, label %while.end.i.ovs_ct_limit_del_zone_limit.exit_crit_edge, label %do.body28.i

while.end.i.ovs_ct_limit_del_zone_limit.exit_crit_edge: ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ovs_ct_limit_del_zone_limit.exit

do.body28.i:                                      ; preds = %while.end.i
  %call29.i = tail call i32 @net_ratelimit() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i)
  %tobool30.not.i = icmp eq i32 %call29.i, 0
  br i1 %tobool30.not.i, label %do.body28.i.ovs_ct_limit_del_zone_limit.exit_crit_edge, label %do.end34.i

do.body28.i.ovs_ct_limit_del_zone_limit.exit_crit_edge: ; preds = %do.body28.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ovs_ct_limit_del_zone_limit.exit

do.end34.i:                                       ; preds = %do.body28.i
  call void @__sanitizer_cov_trace_pc() #15
  %call36.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.89, i32 noundef %rem.0.lcssa.i) #16
  br label %ovs_ct_limit_del_zone_limit.exit

ovs_ct_limit_del_zone_limit.exit:                 ; preds = %do.end34.i, %do.body28.i.ovs_ct_limit_del_zone_limit.exit_crit_edge, %while.end.i.ovs_ct_limit_del_zone_limit.exit_crit_edge
  %add.ptr1.i = getelementptr i8, ptr %call2.i, i32 -20
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 16
  %42 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %43 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %add.ptr1.i to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %44 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %sub.ptr.sub.i.i, ptr %add.ptr1.i, align 4
  %_net.i.i = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 6
  %45 = ptrtoint ptr %_net.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %_net.i.i, align 4
  %47 = ptrtoint ptr %snd_portid.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %snd_portid.i, align 4
  %genl_sock.i.i = getelementptr inbounds %struct.net, ptr %46, i32 0, i32 21
  %49 = ptrtoint ptr %genl_sock.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %genl_sock.i.i, align 4
  %call.i.i.i = tail call i32 @netlink_unicast(ptr noundef %50, ptr noundef nonnull %call.i.i.i.i, i32 noundef %48, i32 noundef 64) #13
  %51 = tail call i32 @llvm.smin.i32(i32 %call.i.i.i, i32 0) #13
  br label %cleanup

exit_err:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i.i.i.i, i32 noundef 0) #13
  br label %cleanup

cleanup:                                          ; preds = %exit_err, %ovs_ct_limit_del_zone_limit.exit, %if.then
  %retval.0 = phi i32 [ %19, %if.then ], [ -22, %exit_err ], [ %51, %ovs_ct_limit_del_zone_limit.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ovs_ct_limit_cmd_get(ptr nocapture noundef readonly %skb, ptr nocapture noundef readonly %info) #1 align 64 {
entry:
  %ct_zone.i.i50 = alloca %struct.nf_conntrack_zone, align 2
  %zone_limit.i60.i = alloca %struct.ovs_zone_limit, align 4
  %conncount_key.i.i51 = alloca i32, align 4
  %zone_limit.i.i52 = alloca %struct.ovs_zone_limit, align 4
  %ct_zone.i.i = alloca %struct.nf_conntrack_zone, align 2
  %zone_limit.i83.i = alloca %struct.ovs_zone_limit, align 4
  %conncount_key.i.i = alloca i32, align 4
  %zone_limit.i.i = alloca %struct.ovs_zone_limit, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %attrs = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %0 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %attrs, align 4
  %2 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %4, i32 0, i32 9
  %5 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %skc_net.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ovs_net_id to i32))
  %7 = load i32, ptr @ovs_net_id, align 4
  %call1 = tail call fastcc ptr @net_generic(ptr noundef %6, i32 noundef %7)
  %ct_limit_info2 = getelementptr inbounds %struct.ovs_net, ptr %call1, i32 0, i32 3
  %8 = ptrtoint ptr %ct_limit_info2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ct_limit_info2, align 4
  %userhdr.i = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 4
  %10 = ptrtoint ptr %userhdr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %userhdr.i, align 4
  %call.i.i.i.i = tail call ptr @__alloc_skb(i32 noundef 3844, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #13
  %tobool.not.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool.not.i, label %entry.if.then_crit_edge, label %if.end.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

if.end.i:                                         ; preds = %entry
  %snd_portid.i = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 1
  %12 = ptrtoint ptr %snd_portid.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %snd_portid.i, align 4
  %14 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %info, align 4
  %call2.i = tail call ptr @genlmsg_put(ptr noundef nonnull %call.i.i.i.i, i32 noundef %13, i32 noundef %15, ptr noundef nonnull @dp_ct_limit_genl_family, i32 noundef 0, i8 noundef zeroext 3) #13
  %tobool3.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool3.not.i, label %if.then4.i, label %ovs_ct_limit_cmd_reply_start.exit

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i.i.i.i, i32 noundef 0) #13
  br label %if.then

ovs_ct_limit_cmd_reply_start.exit:                ; preds = %if.end.i
  %16 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %11, align 4
  %18 = ptrtoint ptr %call2.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %call2.i, align 4
  %cmp.i = icmp ugt ptr %call.i.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %ovs_ct_limit_cmd_reply_start.exit.if.then_crit_edge, label %if.end

ovs_ct_limit_cmd_reply_start.exit.if.then_crit_edge: ; preds = %ovs_ct_limit_cmd_reply_start.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

if.then:                                          ; preds = %ovs_ct_limit_cmd_reply_start.exit.if.then_crit_edge, %if.then4.i, %entry.if.then_crit_edge
  %retval.0.i80 = phi ptr [ %call.i.i.i.i, %ovs_ct_limit_cmd_reply_start.exit.if.then_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.if.then_crit_edge ], [ inttoptr (i32 -90 to ptr), %if.then4.i ]
  %19 = ptrtoint ptr %retval.0.i80 to i32
  br label %cleanup

if.end:                                           ; preds = %ovs_ct_limit_cmd_reply_start.exit
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 16
  %20 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tail.i.i, align 8
  %call1.i = tail call i32 @nla_put(ptr noundef nonnull %call.i.i.i.i, i32 noundef 1, i32 noundef 0, ptr noundef null) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i47 = icmp slt i32 %call1.i, 0
  %tobool.not93 = icmp eq ptr %21, null
  %tobool.not = select i1 %cmp.i47, i1 true, i1 %tobool.not93
  br i1 %tobool.not, label %if.end.exit_err_crit_edge, label %if.end8

if.end.exit_err_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %exit_err

if.end8:                                          ; preds = %if.end
  %arrayidx = getelementptr ptr, ptr %1, i32 1
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx, align 4
  %tobool9.not = icmp eq ptr %23, null
  br i1 %tobool9.not, label %if.else, label %if.then10

if.then10:                                        ; preds = %if.end8
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %23, align 2
  %conv.i.i = zext i16 %25 to i32
  %sub.i = add nsw i32 %conv.i.i, -1
  %and.i = and i32 %sub.i, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %and.i)
  %cmp91.i = icmp ugt i32 %and.i, 11
  br i1 %cmp91.i, label %while.body.lr.ph.i, label %if.then10.while.end.i_crit_edge

if.then10.while.end.i_crit_edge:                  ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.i

while.body.lr.ph.i:                               ; preds = %if.then10
  %add.ptr.i.i = getelementptr i8, ptr %23, i32 4
  %limits.i.i.i = getelementptr inbounds %struct.ovs_ct_limit_info, ptr %9, i32 0, i32 1
  %data.i = getelementptr inbounds %struct.ovs_ct_limit_info, ptr %9, i32 0, i32 2
  %26 = getelementptr inbounds %struct.nf_conntrack_zone, ptr %ct_zone.i.i, i32 0, i32 1
  %27 = getelementptr inbounds %struct.nf_conntrack_zone, ptr %ct_zone.i.i, i32 0, i32 2
  %28 = getelementptr inbounds %struct.ovs_zone_limit, ptr %zone_limit.i83.i, i32 0, i32 1
  %29 = getelementptr inbounds %struct.ovs_zone_limit, ptr %zone_limit.i83.i, i32 0, i32 2
  %30 = getelementptr inbounds %struct.ovs_zone_limit, ptr %zone_limit.i.i, i32 0, i32 1
  %31 = getelementptr inbounds %struct.ovs_zone_limit, ptr %zone_limit.i.i, i32 0, i32 2
  br label %while.body.i

while.body.i:                                     ; preds = %if.end33.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %zone_limit.093.i = phi ptr [ %add.ptr.i.i, %while.body.lr.ph.i ], [ %add.ptr.i, %if.end33.i.while.body.i_crit_edge ]
  %rem.092.i = phi i32 [ %and.i, %while.body.lr.ph.i ], [ %sub34.i, %if.end33.i.while.body.i_crit_edge ]
  %32 = ptrtoint ptr %zone_limit.093.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %zone_limit.093.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %33)
  %cmp2.i = icmp eq i32 %33, -1
  br i1 %cmp2.i, label %if.then.i, label %if.else.i, !prof !200

if.then.i:                                        ; preds = %while.body.i
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %zone_limit.i.i) #13
  %34 = ptrtoint ptr %zone_limit.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 -1, ptr %zone_limit.i.i, align 4
  %35 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %9, align 4
  %37 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %30, align 4
  %38 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %31, align 4
  %call.i66.i = call i32 @nla_put_nohdr(ptr noundef nonnull %call.i.i.i.i, i32 noundef 12, ptr noundef nonnull %zone_limit.i.i) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %zone_limit.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i66.i)
  %tobool5.not.i = icmp eq i32 %call.i66.i, 0
  br i1 %tobool5.not.i, label %if.then.i.if.end33.i_crit_edge, label %if.then.i.exit_err_crit_edge

if.then.i.exit_err_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %exit_err

if.then.i.if.end33.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end33.i

if.else.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %33)
  %39 = icmp ult i32 %33, 65536
  br i1 %39, label %if.else26.i, label %do.body.i

do.body.i:                                        ; preds = %if.else.i
  %call18.i = call i32 @net_ratelimit() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %tobool19.not.i = icmp eq i32 %call18.i, 0
  br i1 %tobool19.not.i, label %do.body.i.if.end33.i_crit_edge, label %do.end.i

do.body.i.if.end33.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end33.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %call22.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82) #16
  br label %if.end33.i

if.else26.i:                                      ; preds = %if.else.i
  %conv.i67.i = trunc i32 %33 to i16
  %40 = call i32 @llvm.read_register.i32(metadata !190) #13
  %and.i.i.i.i.i.i = and i32 %40, -16384
  %41 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %43, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !207
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #13
  %call.i.i = call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i.i, label %if.else26.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.else26.i.rcu_read_lock.exit.i_crit_edge:       ; preds = %if.else26.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.else26.i
  %call1.i.i = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.25, i32 noundef 696, ptr noundef nonnull @.str.26) #13
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.else26.i.rcu_read_lock.exit.i_crit_edge
  %44 = ptrtoint ptr %limits.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %limits.i.i.i, align 4
  %46 = and i32 %33, 511
  %arrayidx.i.i.i = getelementptr %struct.hlist_head, ptr %45, i32 %46
  %call1.i69.i = call i32 @rcu_read_lock_any_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i69.i)
  %tobool.not.i70.i = icmp eq i32 %call1.i69.i, 0
  br i1 %tobool.not.i70.i, label %land.lhs.true.i71.i, label %rcu_read_lock.exit.i.for.cond.i.i.preheader_crit_edge

rcu_read_lock.exit.i.for.cond.i.i.preheader_crit_edge: ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.i.i.preheader

land.lhs.true.i71.i:                              ; preds = %rcu_read_lock.exit.i
  %call2.i.i = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %land.lhs.true.i71.i.for.cond.i.i.preheader_crit_edge, label %land.lhs.true4.i.i

land.lhs.true.i71.i.for.cond.i.i.preheader_crit_edge: ; preds = %land.lhs.true.i71.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.i.i.preheader

land.lhs.true4.i.i:                               ; preds = %land.lhs.true.i71.i
  %.b43.i.i = load i1, ptr @ct_limit_get.__warned, align 1
  br i1 %.b43.i.i, label %land.lhs.true4.i.i.for.cond.i.i.preheader_crit_edge, label %if.then.i72.i

land.lhs.true4.i.i.for.cond.i.i.preheader_crit_edge: ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.i.i.preheader

if.then.i72.i:                                    ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @ct_limit_get.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 1159, ptr noundef nonnull @.str.23) #13
  br label %for.cond.i.i.preheader

for.cond.i.i.preheader:                           ; preds = %if.then.i72.i, %land.lhs.true4.i.i.for.cond.i.i.preheader_crit_edge, %land.lhs.true.i71.i.for.cond.i.i.preheader_crit_edge, %rcu_read_lock.exit.i.for.cond.i.i.preheader_crit_edge
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %for.cond.i.i.preheader
  %ct_limit.0.in.i.i = phi ptr [ %ct_limit.0.i.i, %for.body.i.i.for.cond.i.i_crit_edge ], [ %arrayidx.i.i.i, %for.cond.i.i.preheader ]
  %47 = ptrtoint ptr %ct_limit.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %ct_limit.0.i.i = load volatile ptr, ptr %ct_limit.0.in.i.i, align 4
  %tobool13.not.i.i = icmp eq ptr %ct_limit.0.i.i, null
  br i1 %tobool13.not.i.i, label %for.cond.i.i.ct_limit_get.exit.i_crit_edge, label %for.body.i.i

for.cond.i.i.ct_limit_get.exit.i_crit_edge:       ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ct_limit_get.exit.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  %zone14.i.i = getelementptr inbounds %struct.ovs_ct_limit, ptr %ct_limit.0.i.i, i32 0, i32 2
  %48 = ptrtoint ptr %zone14.i.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %zone14.i.i, align 4
  %cmp.i.i = icmp eq i16 %49, %conv.i67.i
  br i1 %cmp.i.i, label %if.then17.i.i, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.i.i

if.then17.i.i:                                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %limit.i.i = getelementptr inbounds %struct.ovs_ct_limit, ptr %ct_limit.0.i.i, i32 0, i32 3
  br label %ct_limit_get.exit.i

ct_limit_get.exit.i:                              ; preds = %if.then17.i.i, %for.cond.i.i.ct_limit_get.exit.i_crit_edge
  %retval.0.in.i.i = phi ptr [ %limit.i.i, %if.then17.i.i ], [ %9, %for.cond.i.i.ct_limit_get.exit.i_crit_edge ]
  %50 = ptrtoint ptr %retval.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %retval.0.i.i = load i32, ptr %retval.0.in.i.i, align 4
  %call.i73.i = call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i73.i, label %ct_limit_get.exit.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i76.i

ct_limit_get.exit.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %ct_limit_get.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit.i

land.lhs.true.i76.i:                              ; preds = %ct_limit_get.exit.i
  %call1.i74.i = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i74.i)
  %tobool.not.i75.i = icmp eq i32 %call1.i74.i, 0
  br i1 %tobool.not.i75.i, label %land.lhs.true.i76.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i78.i

land.lhs.true.i76.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i76.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i78.i:                             ; preds = %land.lhs.true.i76.i
  %.b4.i77.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i77.i, label %land.lhs.true2.i78.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i79.i

land.lhs.true2.i78.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i78.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit.i

if.then.i79.i:                                    ; preds = %land.lhs.true2.i78.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.25, i32 noundef 724, ptr noundef nonnull @.str.27) #13
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i79.i, %land.lhs.true2.i78.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i76.i.rcu_read_unlock.exit.i_crit_edge, %ct_limit_get.exit.i.rcu_read_unlock.exit.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !208
  %51 = call i32 @llvm.read_register.i32(metadata !190) #13
  %and.i.i.i.i.i80.i = and i32 %51, -16384
  %52 = inttoptr i32 %and.i.i.i.i.i80.i to ptr
  %preempt_count.i.i.i.i81.i = getelementptr inbounds %struct.thread_info, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %preempt_count.i.i.i.i81.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %preempt_count.i.i.i.i81.i, align 4
  %sub.i.i.i.i = add i32 %54, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i81.i, align 4
  call void @rcu_read_unlock_strict() #13
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  %55 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ct_zone.i.i) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %zone_limit.i83.i) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %conncount_key.i.i) #13
  %conv.i84.i = and i32 %33, 65535
  %57 = ptrtoint ptr %conncount_key.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %conv.i84.i, ptr %conncount_key.i.i, align 4
  %58 = ptrtoint ptr %zone_limit.i83.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %conv.i84.i, ptr %zone_limit.i83.i, align 4
  %59 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %retval.0.i.i, ptr %28, align 4
  %60 = ptrtoint ptr %ct_zone.i.i to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %conv.i67.i, ptr %ct_zone.i.i, align 2
  %61 = ptrtoint ptr %26 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 0, ptr %26, align 2
  %62 = ptrtoint ptr %27 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 3, ptr %27, align 1
  %call4.i.i = call i32 @nf_conncount_count(ptr noundef %6, ptr noundef %56, ptr noundef nonnull %conncount_key.i.i, ptr noundef null, ptr noundef nonnull %ct_zone.i.i) #13
  %63 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %call4.i.i, ptr %29, align 4
  %call5.i.i = call i32 @nla_put_nohdr(ptr noundef nonnull %call.i.i.i.i, i32 noundef 12, ptr noundef nonnull %zone_limit.i83.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %conncount_key.i.i) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %zone_limit.i83.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ct_zone.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %tobool29.not.i = icmp eq i32 %call5.i.i, 0
  br i1 %tobool29.not.i, label %rcu_read_unlock.exit.i.if.end33.i_crit_edge, label %rcu_read_unlock.exit.i.exit_err_crit_edge

rcu_read_unlock.exit.i.exit_err_crit_edge:        ; preds = %rcu_read_unlock.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %exit_err

rcu_read_unlock.exit.i.if.end33.i_crit_edge:      ; preds = %rcu_read_unlock.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end33.i

if.end33.i:                                       ; preds = %rcu_read_unlock.exit.i.if.end33.i_crit_edge, %do.end.i, %do.body.i.if.end33.i_crit_edge, %if.then.i.if.end33.i_crit_edge
  %sub34.i = add i32 %rem.092.i, -12
  %add.ptr.i = getelementptr i8, ptr %zone_limit.093.i, i32 12
  %cmp.i48 = icmp ugt i32 %sub34.i, 11
  br i1 %cmp.i48, label %if.end33.i.while.body.i_crit_edge, label %if.end33.i.while.end.i_crit_edge

if.end33.i.while.end.i_crit_edge:                 ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.i

if.end33.i.while.body.i_crit_edge:                ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i

while.end.i:                                      ; preds = %if.end33.i.while.end.i_crit_edge, %if.then10.while.end.i_crit_edge
  %rem.0.lcssa.i = phi i32 [ %and.i, %if.then10.while.end.i_crit_edge ], [ %sub34.i, %if.end33.i.while.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.0.lcssa.i)
  %tobool35.not.i = icmp eq i32 %rem.0.lcssa.i, 0
  br i1 %tobool35.not.i, label %while.end.i.if.end20_crit_edge, label %do.body37.i

while.end.i.if.end20_crit_edge:                   ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end20

do.body37.i:                                      ; preds = %while.end.i
  %call38.i = call i32 @net_ratelimit() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38.i)
  %tobool39.not.i = icmp eq i32 %call38.i, 0
  br i1 %tobool39.not.i, label %do.body37.i.if.end20_crit_edge, label %do.end43.i

do.body37.i.if.end20_crit_edge:                   ; preds = %do.body37.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end20

do.end43.i:                                       ; preds = %do.body37.i
  call void @__sanitizer_cov_trace_pc() #15
  %call45.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.93, i32 noundef %rem.0.lcssa.i) #16
  br label %if.end20

if.else:                                          ; preds = %if.end8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %zone_limit.i.i52) #13
  %64 = getelementptr inbounds %struct.ovs_zone_limit, ptr %zone_limit.i.i52, i32 0, i32 1
  %65 = getelementptr inbounds %struct.ovs_zone_limit, ptr %zone_limit.i.i52, i32 0, i32 2
  %66 = ptrtoint ptr %zone_limit.i.i52 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 -1, ptr %zone_limit.i.i52, align 4
  %67 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %9, align 4
  %69 = ptrtoint ptr %64 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %64, align 4
  %70 = ptrtoint ptr %65 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 0, ptr %65, align 4
  %call.i59.i = call i32 @nla_put_nohdr(ptr noundef nonnull %call.i.i.i.i, i32 noundef 12, ptr noundef nonnull %zone_limit.i.i52) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %zone_limit.i.i52) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i59.i)
  %tobool.not.i53 = icmp eq i32 %call.i59.i, 0
  br i1 %tobool.not.i53, label %if.end.i58, label %if.else.exit_err_crit_edge

if.else.exit_err_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %exit_err

if.end.i58:                                       ; preds = %if.else
  %71 = call i32 @llvm.read_register.i32(metadata !190) #13
  %and.i.i.i.i.i.i54 = and i32 %71, -16384
  %72 = inttoptr i32 %and.i.i.i.i.i.i54 to ptr
  %preempt_count.i.i.i.i.i55 = getelementptr inbounds %struct.thread_info, ptr %72, i32 0, i32 1
  %73 = ptrtoint ptr %preempt_count.i.i.i.i.i55 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load volatile i32, ptr %preempt_count.i.i.i.i.i55, align 4
  %add.i.i.i.i56 = add i32 %74, 1
  store volatile i32 %add.i.i.i.i56, ptr %preempt_count.i.i.i.i.i55, align 4
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !207
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #13
  %call.i.i57 = call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i.i57, label %if.end.i58.rcu_read_lock.exit.i66_crit_edge, label %land.lhs.true.i.i61

if.end.i58.rcu_read_lock.exit.i66_crit_edge:      ; preds = %if.end.i58
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit.i66

land.lhs.true.i.i61:                              ; preds = %if.end.i58
  %call1.i.i59 = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i59)
  %tobool.not.i.i60 = icmp eq i32 %call1.i.i59, 0
  br i1 %tobool.not.i.i60, label %land.lhs.true.i.i61.rcu_read_lock.exit.i66_crit_edge, label %land.lhs.true2.i.i63

land.lhs.true.i.i61.rcu_read_lock.exit.i66_crit_edge: ; preds = %land.lhs.true.i.i61
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit.i66

land.lhs.true2.i.i63:                             ; preds = %land.lhs.true.i.i61
  %.b4.i.i62 = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i62, label %land.lhs.true2.i.i63.rcu_read_lock.exit.i66_crit_edge, label %if.then.i.i64

land.lhs.true2.i.i63.rcu_read_lock.exit.i66_crit_edge: ; preds = %land.lhs.true2.i.i63
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit.i66

if.then.i.i64:                                    ; preds = %land.lhs.true2.i.i63
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.25, i32 noundef 696, ptr noundef nonnull @.str.26) #13
  br label %rcu_read_lock.exit.i66

rcu_read_lock.exit.i66:                           ; preds = %if.then.i.i64, %land.lhs.true2.i.i63.rcu_read_lock.exit.i66_crit_edge, %land.lhs.true.i.i61.rcu_read_lock.exit.i66_crit_edge, %if.end.i58.rcu_read_lock.exit.i66_crit_edge
  %limits.i = getelementptr inbounds %struct.ovs_ct_limit_info, ptr %9, i32 0, i32 1
  %data.i65 = getelementptr inbounds %struct.ovs_ct_limit_info, ptr %9, i32 0, i32 2
  %75 = getelementptr inbounds %struct.nf_conntrack_zone, ptr %ct_zone.i.i50, i32 0, i32 1
  %76 = getelementptr inbounds %struct.nf_conntrack_zone, ptr %ct_zone.i.i50, i32 0, i32 2
  %77 = getelementptr inbounds %struct.ovs_zone_limit, ptr %zone_limit.i60.i, i32 0, i32 1
  %78 = getelementptr inbounds %struct.ovs_zone_limit, ptr %zone_limit.i60.i, i32 0, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc38.i.for.body.i_crit_edge, %rcu_read_lock.exit.i66
  %i.071.i = phi i32 [ 0, %rcu_read_lock.exit.i66 ], [ %inc.i, %for.inc38.i.for.body.i_crit_edge ]
  %79 = ptrtoint ptr %limits.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %limits.i, align 4
  %arrayidx.i = getelementptr %struct.hlist_head, ptr %80, i32 %i.071.i
  %call1.i67 = call i32 @rcu_read_lock_any_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i67)
  %tobool2.not.i = icmp eq i32 %call1.i67, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i, label %for.body.i.for.cond16.i.preheader_crit_edge

for.body.i.for.cond16.i.preheader_crit_edge:      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond16.i.preheader

land.lhs.true.i:                                  ; preds = %for.body.i
  %call3.i = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i.for.cond16.i.preheader_crit_edge, label %land.lhs.true5.i

land.lhs.true.i.for.cond16.i.preheader_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond16.i.preheader

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %.b57.i = load i1, ptr @ovs_ct_limit_get_all_zone_limit.__warned, align 1
  br i1 %.b57.i, label %land.lhs.true5.i.for.cond16.i.preheader_crit_edge, label %if.then7.i

land.lhs.true5.i.for.cond16.i.preheader_crit_edge: ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond16.i.preheader

if.then7.i:                                       ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @ovs_ct_limit_get_all_zone_limit.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 2127, ptr noundef nonnull @.str.23) #13
  br label %for.cond16.i.preheader

for.cond16.i.preheader:                           ; preds = %if.then7.i, %land.lhs.true5.i.for.cond16.i.preheader_crit_edge, %land.lhs.true.i.for.cond16.i.preheader_crit_edge, %for.body.i.for.cond16.i.preheader_crit_edge
  br label %for.cond16.i

for.cond16.i:                                     ; preds = %for.body18.i.for.cond16.i_crit_edge, %for.cond16.i.preheader
  %ct_limit.0.in.i = phi ptr [ %ct_limit.0.i, %for.body18.i.for.cond16.i_crit_edge ], [ %arrayidx.i, %for.cond16.i.preheader ]
  %81 = ptrtoint ptr %ct_limit.0.in.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %ct_limit.0.i = load volatile ptr, ptr %ct_limit.0.in.i, align 4
  %tobool17.not.i = icmp eq ptr %ct_limit.0.i, null
  br i1 %tobool17.not.i, label %for.inc38.i, label %for.body18.i

for.body18.i:                                     ; preds = %for.cond16.i
  %82 = ptrtoint ptr %data.i65 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %data.i65, align 4
  %zone.i = getelementptr inbounds %struct.ovs_ct_limit, ptr %ct_limit.0.i, i32 0, i32 2
  %84 = ptrtoint ptr %zone.i to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %zone.i, align 4
  %limit.i = getelementptr inbounds %struct.ovs_ct_limit, ptr %ct_limit.0.i, i32 0, i32 3
  %86 = ptrtoint ptr %limit.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %limit.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ct_zone.i.i50) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %zone_limit.i60.i) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %conncount_key.i.i51) #13
  %conv.i.i69 = zext i16 %85 to i32
  %88 = ptrtoint ptr %conncount_key.i.i51 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %conv.i.i69, ptr %conncount_key.i.i51, align 4
  %89 = ptrtoint ptr %zone_limit.i60.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %conv.i.i69, ptr %zone_limit.i60.i, align 4
  %90 = ptrtoint ptr %77 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %87, ptr %77, align 4
  %91 = ptrtoint ptr %ct_zone.i.i50 to i32
  call void @__asan_store2_noabort(i32 %91)
  store i16 %85, ptr %ct_zone.i.i50, align 2
  %92 = ptrtoint ptr %75 to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 0, ptr %75, align 2
  %93 = ptrtoint ptr %76 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 3, ptr %76, align 1
  %call4.i.i70 = call i32 @nf_conncount_count(ptr noundef %6, ptr noundef %83, ptr noundef nonnull %conncount_key.i.i51, ptr noundef null, ptr noundef nonnull %ct_zone.i.i50) #13
  %94 = ptrtoint ptr %78 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %call4.i.i70, ptr %78, align 4
  %call5.i.i71 = call i32 @nla_put_nohdr(ptr noundef nonnull %call.i.i.i.i, i32 noundef 12, ptr noundef nonnull %zone_limit.i60.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %conncount_key.i.i51) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %zone_limit.i60.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ct_zone.i.i50) #13
  %tobool20.not.i = icmp eq i32 %call5.i.i71, 0
  br i1 %tobool20.not.i, label %for.body18.i.for.cond16.i_crit_edge, label %for.body18.i.exit_err.i_crit_edge

for.body18.i.exit_err.i_crit_edge:                ; preds = %for.body18.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %exit_err.i

for.body18.i.for.cond16.i_crit_edge:              ; preds = %for.body18.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond16.i

for.inc38.i:                                      ; preds = %for.cond16.i
  %inc.i = add nuw nsw i32 %i.071.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 512
  br i1 %exitcond.not.i, label %for.inc38.i.exit_err.i_crit_edge, label %for.inc38.i.for.body.i_crit_edge

for.inc38.i.for.body.i_crit_edge:                 ; preds = %for.inc38.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.inc38.i.exit_err.i_crit_edge:                 ; preds = %for.inc38.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %exit_err.i

exit_err.i:                                       ; preds = %for.inc38.i.exit_err.i_crit_edge, %for.body18.i.exit_err.i_crit_edge
  %err.2.i = phi i32 [ %call5.i.i71, %for.body18.i.exit_err.i_crit_edge ], [ 0, %for.inc38.i.exit_err.i_crit_edge ]
  %call.i61.i = call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i61.i, label %exit_err.i.ovs_ct_limit_get_all_zone_limit.exit_crit_edge, label %land.lhs.true.i64.i

exit_err.i.ovs_ct_limit_get_all_zone_limit.exit_crit_edge: ; preds = %exit_err.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ovs_ct_limit_get_all_zone_limit.exit

land.lhs.true.i64.i:                              ; preds = %exit_err.i
  %call1.i62.i = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i62.i)
  %tobool.not.i63.i = icmp eq i32 %call1.i62.i, 0
  br i1 %tobool.not.i63.i, label %land.lhs.true.i64.i.ovs_ct_limit_get_all_zone_limit.exit_crit_edge, label %land.lhs.true2.i66.i

land.lhs.true.i64.i.ovs_ct_limit_get_all_zone_limit.exit_crit_edge: ; preds = %land.lhs.true.i64.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ovs_ct_limit_get_all_zone_limit.exit

land.lhs.true2.i66.i:                             ; preds = %land.lhs.true.i64.i
  %.b4.i65.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i65.i, label %land.lhs.true2.i66.i.ovs_ct_limit_get_all_zone_limit.exit_crit_edge, label %if.then.i67.i

land.lhs.true2.i66.i.ovs_ct_limit_get_all_zone_limit.exit_crit_edge: ; preds = %land.lhs.true2.i66.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ovs_ct_limit_get_all_zone_limit.exit

if.then.i67.i:                                    ; preds = %land.lhs.true2.i66.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.25, i32 noundef 724, ptr noundef nonnull @.str.27) #13
  br label %ovs_ct_limit_get_all_zone_limit.exit

ovs_ct_limit_get_all_zone_limit.exit:             ; preds = %if.then.i67.i, %land.lhs.true2.i66.i.ovs_ct_limit_get_all_zone_limit.exit_crit_edge, %land.lhs.true.i64.i.ovs_ct_limit_get_all_zone_limit.exit_crit_edge, %exit_err.i.ovs_ct_limit_get_all_zone_limit.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !208
  %95 = call i32 @llvm.read_register.i32(metadata !190) #13
  %and.i.i.i.i.i68.i = and i32 %95, -16384
  %96 = inttoptr i32 %and.i.i.i.i.i68.i to ptr
  %preempt_count.i.i.i.i69.i = getelementptr inbounds %struct.thread_info, ptr %96, i32 0, i32 1
  %97 = ptrtoint ptr %preempt_count.i.i.i.i69.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load volatile i32, ptr %preempt_count.i.i.i.i69.i, align 4
  %sub.i.i.i.i72 = add i32 %98, -1
  store volatile i32 %sub.i.i.i.i72, ptr %preempt_count.i.i.i.i69.i, align 4
  call void @rcu_read_unlock_strict() #13
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.2.i)
  %tobool17.not = icmp eq i32 %err.2.i, 0
  br i1 %tobool17.not, label %ovs_ct_limit_get_all_zone_limit.exit.if.end20_crit_edge, label %ovs_ct_limit_get_all_zone_limit.exit.exit_err_crit_edge

ovs_ct_limit_get_all_zone_limit.exit.exit_err_crit_edge: ; preds = %ovs_ct_limit_get_all_zone_limit.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %exit_err

ovs_ct_limit_get_all_zone_limit.exit.if.end20_crit_edge: ; preds = %ovs_ct_limit_get_all_zone_limit.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end20

if.end20:                                         ; preds = %ovs_ct_limit_get_all_zone_limit.exit.if.end20_crit_edge, %do.end43.i, %do.body37.i.if.end20_crit_edge, %while.end.i.if.end20_crit_edge
  %99 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %100 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %21 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %101 = ptrtoint ptr %21 to i32
  call void @__asan_store2_noabort(i32 %101)
  store i16 %conv.i, ptr %21, align 2
  %add.ptr1.i = getelementptr i8, ptr %call2.i, i32 -20
  %102 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %102 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %add.ptr1.i to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %103 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %sub.ptr.sub.i.i, ptr %add.ptr1.i, align 4
  %_net.i.i = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 6
  %104 = ptrtoint ptr %_net.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %_net.i.i, align 4
  %106 = ptrtoint ptr %snd_portid.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %snd_portid.i, align 4
  %genl_sock.i.i = getelementptr inbounds %struct.net, ptr %105, i32 0, i32 21
  %108 = ptrtoint ptr %genl_sock.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %genl_sock.i.i, align 4
  %call.i.i.i = call i32 @netlink_unicast(ptr noundef %109, ptr noundef nonnull %call.i.i.i.i, i32 noundef %107, i32 noundef 64) #13
  %110 = call i32 @llvm.smin.i32(i32 %call.i.i.i, i32 0) #13
  br label %cleanup

exit_err:                                         ; preds = %ovs_ct_limit_get_all_zone_limit.exit.exit_err_crit_edge, %if.else.exit_err_crit_edge, %rcu_read_unlock.exit.i.exit_err_crit_edge, %if.then.i.exit_err_crit_edge, %if.end.exit_err_crit_edge
  %err.0 = phi i32 [ %err.2.i, %ovs_ct_limit_get_all_zone_limit.exit.exit_err_crit_edge ], [ -90, %if.end.exit_err_crit_edge ], [ %call.i59.i, %if.else.exit_err_crit_edge ], [ %call.i66.i, %if.then.i.exit_err_crit_edge ], [ %call5.i.i, %rcu_read_unlock.exit.i.exit_err_crit_edge ]
  call void @kfree_skb_reason(ptr noundef nonnull %call.i.i.i.i, i32 noundef 0) #13
  br label %cleanup

cleanup:                                          ; preds = %exit_err, %if.end20, %if.then
  %retval.0 = phi i32 [ %19, %if.then ], [ %err.0, %exit_err ], [ %110, %if.end20 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @static_key_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @genlmsg_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ovs_lock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ovs_unlock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netlink_unicast(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put_nohdr(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nf_conncount_init(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_conncount_destroy(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lockdep_ovsl_is_held() local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #12

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 92)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 92)
  ret void
}

attributes #0 = { mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nounwind readonly }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { argmemonly nofree nounwind readonly willreturn }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { cold nounwind }
attributes #17 = { nobuiltin nounwind }
attributes #18 = { nobuiltin }
attributes #19 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !15, !16, !18, !19, !21, !23, !24, !25, !26, !28, !29, !30, !31, !33, !35, !36, !37, !38, !40, !41, !43, !45, !46, !47, !49, !50, !52, !54, !55, !57, !58, !60, !61, !62, !64, !65, !67, !68, !69, !70, !72, !73, !74, !76, !77, !78, !80, !81, !82, !84, !85, !86, !88, !89, !90, !92, !93, !94, !96, !97, !98, !100, !101, !102, !104, !105, !106, !108, !110, !112, !113, !114, !115, !117, !118, !119, !121, !122, !123, !125, !126, !127, !129, !130, !131, !133, !134, !135, !137, !138, !139, !141, !142, !143, !144, !146, !147, !148, !150, !152, !154, !155, !156, !157, !159, !160, !161, !163, !165, !166, !167, !169, !170, !171, !173, !174, !175, !177, !178, !179, !181, !183, !185, !186, !187, !188}
!llvm.named.register.sp = !{!190}
!llvm.module.flags = !{!191, !192, !193, !194, !195, !196, !197, !198}
!llvm.ident = !{!199}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/openvswitch/conntrack.c", i32 1687, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @ovs_ct_copy_action._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @ovs_ct_copy_action._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../net/openvswitch/conntrack.c", i32 1704, i32 3}
!8 = !{ptr @ovs_ct_copy_action._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @ovs_ct_copy_action._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../net/openvswitch/conntrack.c", i32 1711, i32 4}
!12 = !{ptr @ovs_ct_copy_action._rs, !11, !"_rs", i1 false, i1 false}
!13 = !{ptr @.str.8, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @ovs_ct_copy_action._entry.7, !11, !"_entry", i1 false, i1 false}
!15 = !{ptr @ovs_ct_copy_action._entry_ptr.9, !11, !"_entry_ptr", i1 false, i1 false}
!16 = distinct !{null, !17, !"__warned", i1 false, i1 false}
!17 = !{!"../net/openvswitch/conntrack.c", i32 1714, i32 28}
!18 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @dp_ct_limit_genl_family, !20, !"dp_ct_limit_genl_family", i1 false, i1 false}
!20 = !{!"../net/openvswitch/conntrack.c", i32 2274, i32 20}
!21 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../net/openvswitch/conntrack.c", i32 2297, i32 3}
!23 = !{ptr @.str.12, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @ovs_ct_init._entry, !22, !"_entry", i1 false, i1 false}
!25 = !{ptr @ovs_ct_init._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../net/openvswitch/conntrack.c", i32 1215, i32 5}
!28 = !{ptr @.str.14, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @ovs_ct_commit._entry, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @ovs_ct_commit._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!31 = distinct !{null, !32, !"__warned", i1 false, i1 false}
!32 = !{!"../net/openvswitch/conntrack.c", i32 717, i32 7}
!33 = !{ptr @.str.15, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../net/openvswitch/conntrack.c", i32 621, i32 3}
!35 = !{ptr @.str.16, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.17, !34, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @ovs_ct_find_existing.__UNIQUE_ID_ddebug604, !34, !"__UNIQUE_ID_ddebug604", i1 false, i1 false}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../net/openvswitch/conntrack.c", i32 630, i32 4}
!40 = !{ptr @ovs_ct_find_existing.__UNIQUE_ID_ddebug605, !39, !"__UNIQUE_ID_ddebug605", i1 false, i1 false}
!41 = distinct !{null, !42, !"__warned", i1 false, i1 false}
!42 = !{!"../net/openvswitch/conntrack.c", i32 455, i32 11}
!43 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../net/openvswitch/conntrack.c", i32 471, i32 4}
!45 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @ovs_ct_helper.__UNIQUE_ID_ddebug603, !44, !"__UNIQUE_ID_ddebug603", i1 false, i1 false}
!47 = distinct !{null, !48, !"__already_done", i1 false, i1 false}
!48 = !{!"../net/openvswitch/conntrack.c", i32 478, i32 3}
!49 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @ovs_ct_limit_enabled, !51, !"ovs_ct_limit_enabled", i1 false, i1 false}
!51 = !{!"../net/openvswitch/conntrack.c", i32 82, i32 8}
!52 = distinct !{null, !53, !"__warned", i1 false, i1 false}
!53 = !{!"../net/openvswitch/conntrack.c", i32 1159, i32 2}
!54 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!55 = distinct !{null, !56, !"__warned", i1 false, i1 false}
!56 = !{!"../include/net/netns/generic.h", i32 45, i32 7}
!57 = !{ptr @.str.24, !56, !"<string literal>", i1 false, i1 false}
!58 = distinct !{null, !59, !"__warned", i1 false, i1 false}
!59 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!60 = !{ptr @.str.25, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.26, !59, !"<string literal>", i1 false, i1 false}
!62 = distinct !{null, !63, !"__warned", i1 false, i1 false}
!63 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!64 = !{ptr @.str.27, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.28, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../net/openvswitch/conntrack.c", i32 1546, i32 4}
!67 = !{ptr @.str.29, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @parse_ct._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @parse_ct._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.31, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../net/openvswitch/conntrack.c", i32 1555, i32 4}
!72 = !{ptr @parse_ct._entry.30, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @parse_ct._entry_ptr.32, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.34, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../net/openvswitch/conntrack.c", i32 1578, i32 5}
!76 = !{ptr @parse_ct._entry.33, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @parse_ct._entry_ptr.35, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.37, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../net/openvswitch/conntrack.c", i32 1590, i32 5}
!80 = !{ptr @parse_ct._entry.36, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @parse_ct._entry_ptr.38, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.40, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../net/openvswitch/conntrack.c", i32 1600, i32 5}
!84 = !{ptr @parse_ct._entry.39, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @parse_ct._entry_ptr.41, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.43, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../net/openvswitch/conntrack.c", i32 1621, i32 5}
!88 = !{ptr @parse_ct._entry.42, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @parse_ct._entry_ptr.44, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.46, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../net/openvswitch/conntrack.c", i32 1628, i32 4}
!92 = !{ptr @parse_ct._entry.45, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @parse_ct._entry_ptr.47, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.49, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../net/openvswitch/conntrack.c", i32 1636, i32 3}
!96 = !{ptr @parse_ct._entry.48, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @parse_ct._entry_ptr.50, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.52, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../net/openvswitch/conntrack.c", i32 1643, i32 3}
!100 = !{ptr @parse_ct._entry.51, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @parse_ct._entry_ptr.53, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.55, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../net/openvswitch/conntrack.c", i32 1649, i32 3}
!104 = !{ptr @parse_ct._entry.54, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @parse_ct._entry_ptr.56, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @ovs_ct_attr_lens, !107, !"ovs_ct_attr_lens", i1 false, i1 false}
!107 = !{!"../net/openvswitch/conntrack.c", i32 1513, i32 36}
!108 = !{ptr @parse_nat.ovs_nat_attr_lens, !109, !"ovs_nat_attr_lens", i1 false, i1 false}
!109 = !{!"../net/openvswitch/conntrack.c", i32 1398, i32 20}
!110 = !{ptr @.str.57, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../net/openvswitch/conntrack.c", i32 1414, i32 4}
!112 = !{ptr @.str.58, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @parse_nat._entry, !111, !"_entry", i1 false, i1 false}
!114 = !{ptr @parse_nat._entry_ptr, !111, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.60, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../net/openvswitch/conntrack.c", i32 1420, i32 4}
!117 = !{ptr @parse_nat._entry.59, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @parse_nat._entry_ptr.61, !116, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.63, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../net/openvswitch/conntrack.c", i32 1430, i32 5}
!121 = !{ptr @parse_nat._entry.62, !120, !"_entry", i1 false, i1 false}
!122 = !{ptr @parse_nat._entry_ptr.64, !120, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.66, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../net/openvswitch/conntrack.c", i32 1475, i32 4}
!125 = !{ptr @parse_nat._entry.65, !124, !"_entry", i1 false, i1 false}
!126 = !{ptr @parse_nat._entry_ptr.67, !124, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.69, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../net/openvswitch/conntrack.c", i32 1481, i32 3}
!129 = !{ptr @parse_nat._entry.68, !128, !"_entry", i1 false, i1 false}
!130 = !{ptr @parse_nat._entry_ptr.70, !128, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.72, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../net/openvswitch/conntrack.c", i32 1487, i32 4}
!133 = !{ptr @parse_nat._entry.71, !132, !"_entry", i1 false, i1 false}
!134 = !{ptr @parse_nat._entry_ptr.73, !132, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.75, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../net/openvswitch/conntrack.c", i32 1494, i32 3}
!137 = !{ptr @parse_nat._entry.74, !136, !"_entry", i1 false, i1 false}
!138 = !{ptr @parse_nat._entry_ptr.76, !136, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.77, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../net/openvswitch/conntrack.c", i32 1360, i32 3}
!141 = !{ptr @.str.78, !140, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @ovs_ct_add_helper._entry, !140, !"_entry", i1 false, i1 false}
!143 = !{ptr @ovs_ct_add_helper._entry_ptr, !140, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.80, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../net/openvswitch/conntrack.c", i32 1376, i32 4}
!146 = !{ptr @ovs_ct_add_helper._entry.79, !145, !"_entry", i1 false, i1 false}
!147 = !{ptr @ovs_ct_add_helper._entry_ptr.81, !145, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @ct_limit_policy, !149, !"ct_limit_policy", i1 false, i1 false}
!149 = !{!"../net/openvswitch/conntrack.c", i32 98, i32 32}
!150 = !{ptr @ct_limit_genl_ops, !151, !"ct_limit_genl_ops", i1 false, i1 false}
!151 = !{!"../net/openvswitch/conntrack.c", i32 2250, i32 36}
!152 = !{ptr @.str.82, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../net/openvswitch/conntrack.c", i32 1979, i32 4}
!154 = !{ptr @.str.83, !153, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @ovs_ct_limit_set_zone_limit._entry, !153, !"_entry", i1 false, i1 false}
!156 = !{ptr @ovs_ct_limit_set_zone_limit._entry_ptr, !153, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @.str.85, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../net/openvswitch/conntrack.c", i32 2000, i32 3}
!159 = !{ptr @ovs_ct_limit_set_zone_limit._entry.84, !158, !"_entry", i1 false, i1 false}
!160 = !{ptr @ovs_ct_limit_set_zone_limit._entry_ptr.86, !158, !"_entry_ptr", i1 false, i1 false}
!161 = distinct !{null, !162, !"__warned", i1 false, i1 false}
!162 = !{!"../net/openvswitch/conntrack.c", i32 1123, i32 2}
!163 = !{ptr @.str.87, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../net/openvswitch/conntrack.c", i32 2023, i32 4}
!165 = !{ptr @ovs_ct_limit_del_zone_limit._entry, !164, !"_entry", i1 false, i1 false}
!166 = !{ptr @ovs_ct_limit_del_zone_limit._entry_ptr, !164, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @.str.89, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../net/openvswitch/conntrack.c", i32 2035, i32 3}
!169 = !{ptr @ovs_ct_limit_del_zone_limit._entry.88, !168, !"_entry", i1 false, i1 false}
!170 = !{ptr @ovs_ct_limit_del_zone_limit._entry_ptr.90, !168, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @.str.91, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../net/openvswitch/conntrack.c", i32 2090, i32 4}
!173 = !{ptr @ovs_ct_limit_get_zone_limit._entry, !172, !"_entry", i1 false, i1 false}
!174 = !{ptr @ovs_ct_limit_get_zone_limit._entry_ptr, !172, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @.str.93, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../net/openvswitch/conntrack.c", i32 2107, i32 3}
!177 = !{ptr @ovs_ct_limit_get_zone_limit._entry.92, !176, !"_entry", i1 false, i1 false}
!178 = !{ptr @ovs_ct_limit_get_zone_limit._entry_ptr.94, !176, !"_entry_ptr", i1 false, i1 false}
!179 = distinct !{null, !180, !"__warned", i1 false, i1 false}
!180 = !{!"../net/openvswitch/conntrack.c", i32 2127, i32 3}
!181 = !{ptr @ovs_ct_limit_multicast_group, !182, !"ovs_ct_limit_multicast_group", i1 false, i1 false}
!182 = !{!"../net/openvswitch/conntrack.c", i32 2270, i32 42}
!183 = !{ptr @.str.95, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../net/openvswitch/conntrack.c", i32 1904, i32 3}
!185 = !{ptr @.str.96, !184, !"<string literal>", i1 false, i1 false}
!186 = !{ptr @ovs_ct_limit_init._entry, !184, !"_entry", i1 false, i1 false}
!187 = !{ptr @ovs_ct_limit_init._entry_ptr, !184, !"_entry_ptr", i1 false, i1 false}
!188 = distinct !{null, !189, !"__warned", i1 false, i1 false}
!189 = !{!"../net/openvswitch/conntrack.c", i32 1920, i32 3}
!190 = !{!"sp"}
!191 = !{i32 1, !"wchar_size", i32 2}
!192 = !{i32 1, !"min_enum_size", i32 4}
!193 = !{i32 8, !"branch-target-enforcement", i32 0}
!194 = !{i32 8, !"sign-return-address", i32 0}
!195 = !{i32 8, !"sign-return-address-all", i32 0}
!196 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!197 = !{i32 7, !"uwtable", i32 1}
!198 = !{i32 7, !"frame-pointer", i32 2}
!199 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!200 = !{!"branch_weights", i32 1, i32 2000}
!201 = !{i64 2148489484}
!202 = !{i64 2148403924, i64 2148403956, i64 2148403985, i64 2148404019, i64 2148404050, i64 2148404073}
!203 = !{!"branch_weights", i32 2000, i32 1}
!204 = !{i64 2149365598}
!205 = !{i64 2149013306, i64 2149013311, i64 2149013324, i64 2149013368, i64 2149013402, i64 2149013423}
!206 = !{i8 0, i8 2}
!207 = !{i64 2149416088}
!208 = !{i64 2149416354}
!209 = !{i64 2158511059}
!210 = !{i64 2148401459, i64 2148401491, i64 2148401520, i64 2148401554, i64 2148401585, i64 2148401608}
!211 = !{!"auto-init"}
!212 = !{i64 2152010047}
!213 = !{i64 2152050272}
