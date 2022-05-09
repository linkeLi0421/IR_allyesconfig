; ModuleID = '/llk/IR_all_yes/net/sched/act_ct.c_pt.bc'
source_filename = "../net/sched/act_ct.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t, %union.anon }
%struct.atomic_t = type { i32 }
%union.anon = type { i32 }
%struct.nf_ct_ext_type = type { ptr, i32, i8, i8 }
%struct.tc_action_ops = type { %struct.list_head, [16 x i8], i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.28, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.28 = type { %struct.anon.29 }
%struct.anon.29 = type { ptr, i32, i32, i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.132, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.132 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.122, i32, %struct.spinlock }
%union.anon.122 = type { %struct.anon.123 }
%struct.anon.123 = type { ptr, ptr }
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
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon.2 }
%union.anon.2 = type { %struct.hlist_node }
%struct.anon.57 = type { i16, i16 }
%struct.nla_policy = type { i8, i8, i16, %union.anon.56 }
%union.anon.56 = type { i32 }
%struct.nf_flowtable_type = type { %struct.list_head, i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.vlan_hdr = type { i16, i16 }
%struct.nf_hook_state = type { i8, i8, ptr, ptr, ptr, ptr, ptr }
%struct.anon.37 = type { ptr, ptr, %union.anon.38 }
%union.anon.38 = type { ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.153, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.171, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.153 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.possible_net_t = type { ptr }
%union.anon.171 = type { ptr }
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
%struct.tcf_ct = type { %struct.tc_action, ptr, [12 x i8] }
%struct.tc_action = type { ptr, i32, ptr, i32, %struct.refcount_struct, %struct.atomic_t, i32, %struct.tcf_t, %struct.gnet_stats_basic_sync, %struct.gnet_stats_basic_sync, %struct.gnet_stats_queue, ptr, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, [12 x i8] }
%struct.tcf_t = type { i64, i64, i64, i64 }
%struct.gnet_stats_basic_sync = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.gnet_stats_queue = type { i32, i32, i32, i32, i32 }
%struct.tcf_ct_params = type { ptr, i16, i32, i32, [4 x i32], [4 x i32], %struct.nf_nat_range2, i8, i16, %struct.callback_head, ptr, ptr }
%struct.nf_nat_range2 = type { i32, %union.nf_inet_addr, %union.nf_inet_addr, %union.nf_conntrack_man_proto, %union.nf_conntrack_man_proto, %union.nf_conntrack_man_proto }
%union.nf_inet_addr = type { [4 x i32] }
%union.nf_conntrack_man_proto = type { i16 }
%struct.callback_head = type { ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.sk_buff = type { %union.anon.36, %union.anon.39, %union.anon.40, [48 x i8], %union.anon.41, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.43, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.36 = type { %struct.anon.37 }
%union.anon.39 = type { ptr }
%union.anon.40 = type { i64 }
%union.anon.41 = type { %struct.anon.42 }
%struct.anon.42 = type { i32, ptr }
%union.anon.43 = type { %struct.anon.44 }
%struct.anon.44 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.45, i32, i32, i32, i16, i16, %union.anon.47, i32, %union.anon.48, %union.anon.49, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.45 = type { i32 }
%union.anon.47 = type { i32 }
%union.anon.48 = type { i32 }
%union.anon.49 = type { i16 }
%struct.nf_conn = type { %struct.nf_conntrack, %struct.spinlock, i32, %struct.nf_conntrack_zone, [2 x %struct.nf_conntrack_tuple_hash], i32, i16, %struct.possible_net_t, %struct.hlist_node, %struct.anon.136, ptr, i32, i32, ptr, %union.nf_conntrack_proto }
%struct.nf_conntrack = type { %struct.refcount_struct }
%struct.nf_conntrack_zone = type { i16, i8, i8 }
%struct.nf_conntrack_tuple_hash = type { %struct.hlist_nulls_node, %struct.nf_conntrack_tuple }
%struct.hlist_nulls_node = type { ptr, ptr }
%struct.nf_conntrack_tuple = type { %struct.nf_conntrack_man, %struct.anon.10 }
%struct.nf_conntrack_man = type { %union.nf_inet_addr, %union.nf_conntrack_man_proto, i16 }
%struct.anon.10 = type { %union.nf_inet_addr, %union.anon.11, i8, i8 }
%union.anon.11 = type { i16 }
%struct.anon.136 = type {}
%union.nf_conntrack_proto = type { %struct.nf_ct_dccp, [48 x i8] }
%struct.nf_ct_dccp = type { [2 x i8], i8, i8, i8, i64 }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.3 }
%union.anon.3 = type { [4 x i32] }
%struct.tc_ct = type { i32, i32, i32, i32, i32 }
%struct.nlattr = type { i16, i16 }
%struct.netlink_ext_ack = type { ptr, ptr, ptr, [20 x i8], i8 }
%struct.tc_ct_action_net = type { %struct.tc_action_net, i8 }
%struct.tc_action_net = type { ptr, ptr }
%struct.flow_action_entry = type { i32, i32, i32, ptr, ptr, %union.anon.191, ptr }
%union.anon.191 = type { %struct.anon.199 }
%struct.anon.199 = type { i32, i64, i64, i64, i32 }
%struct.anon.200 = type { i32, i16, ptr }
%struct.flow_offload_action = type { ptr, i32, i32, i32, %struct.flow_stats, %struct.flow_action }
%struct.flow_stats = type { i64, i64, i64, i64, i32, i8 }
%struct.flow_action = type { i32, [0 x %struct.flow_action_entry] }
%struct.flow_offload_tuple = type { %union.anon.176, %union.anon.177, %struct.anon.178, i32, i8, i8, [2 x %struct.anon.179], %struct.anon.180, i8, i8, i16, %union.anon.181 }
%union.anon.176 = type { %struct.in6_addr }
%union.anon.177 = type { %struct.in6_addr }
%struct.anon.178 = type { i16, i16 }
%struct.anon.179 = type { i16, i16 }
%struct.anon.180 = type {}
%union.anon.181 = type { %struct.anon.183 }
%struct.anon.183 = type { i32, i32, [6 x i8], [6 x i8] }
%struct.tcf_ct_flow_table = type { %struct.rhash_head, %struct.rcu_work, %struct.nf_flowtable, %struct.refcount_struct, i16, i8 }
%struct.rhash_head = type { ptr }
%struct.rcu_work = type { %struct.work_struct, %struct.callback_head, ptr }
%struct.nf_flowtable = type { %struct.list_head, %struct.rhashtable, i32, ptr, %struct.delayed_work, i32, %struct.flow_block, %struct.rw_semaphore, %struct.possible_net_t }
%struct.flow_block = type { %struct.list_head }
%struct.flow_offload_tuple_rhash = type { %struct.rhash_head, %struct.flow_offload_tuple }
%struct.flow_offload = type { [2 x %struct.flow_offload_tuple_rhash], ptr, i32, i16, i32, %struct.callback_head }
%struct.tcphdr = type { i16, i16, i32, i32, i16, i16, i16, i16 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.bucket_table = type { i32, i32, i32, %struct.list_head, %struct.callback_head, ptr, %struct.lockdep_map, [68 x i8], [0 x ptr] }
%struct.nf_flow_rule = type { %struct.nf_flow_match, ptr }
%struct.nf_flow_match = type { %struct.flow_dissector, %struct.nf_flow_key, %struct.nf_flow_key }
%struct.flow_dissector = type { i32, [28 x i16] }
%struct.nf_flow_key = type { %struct.flow_dissector_key_meta, %struct.flow_dissector_key_control, %struct.flow_dissector_key_control, %struct.flow_dissector_key_basic, %struct.flow_dissector_key_vlan, %struct.flow_dissector_key_vlan, %union.anon.187, %struct.flow_dissector_key_keyid, %union.anon.188, %struct.flow_dissector_key_tcp, %struct.flow_dissector_key_ports }
%struct.flow_dissector_key_meta = type { i32, i16 }
%struct.flow_dissector_key_control = type { i16, i16, i32 }
%struct.flow_dissector_key_basic = type { i16, i8, i8 }
%struct.flow_dissector_key_vlan = type { %union.anon.185, i16 }
%union.anon.185 = type { %struct.anon.186 }
%struct.anon.186 = type { i16 }
%union.anon.187 = type { %struct.flow_dissector_key_ipv6_addrs }
%struct.flow_dissector_key_ipv6_addrs = type { %struct.in6_addr, %struct.in6_addr }
%struct.flow_dissector_key_keyid = type { i32 }
%union.anon.188 = type { %struct.flow_dissector_key_ipv6_addrs }
%struct.flow_dissector_key_tcp = type { i16 }
%struct.flow_dissector_key_ports = type { %union.anon.189 }
%union.anon.189 = type { i32 }
%struct.flow_rule = type { %struct.flow_match, %struct.flow_action }
%struct.flow_match = type { ptr, ptr, ptr }
%struct.anon.193 = type { i32, i32, i32, i32 }
%struct.anon.201 = type { i32, i32, [4 x i32], i8 }
%struct.tcf_idrinfo = type { %struct.mutex, %struct.idr, ptr }

@tcf_frag_xmit_count = external dso_local global %struct.static_key_false, align 4
@act_ct_extend = internal global %struct.nf_ct_ext_type { ptr null, i32 9, i8 8, i8 4 }, section ".data..read_mostly", align 4
@act_ct_ops = internal global { %struct.tc_action_ops, [48 x i8] } { %struct.tc_action_ops { %struct.list_head zeroinitializer, [16 x i8] c"ct\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 29, i32 288, ptr null, ptr @tcf_ct_act, ptr @tcf_ct_dump, ptr @tcf_ct_cleanup, ptr @tcf_ct_search, ptr @tcf_ct_init, ptr @tcf_ct_walker, ptr @tcf_stats_update, ptr null, ptr null, ptr null, ptr @tcf_ct_offload_act_setup }, [48 x i8] zeroinitializer }, align 32
@ct_net_ops = internal global { %struct.pernet_operations, [32 x i8] } { %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @ct_init_net, ptr null, ptr null, ptr @ct_exit_net, ptr @ct_net_id, i32 12 }, [32 x i8] zeroinitializer }, align 32
@act_ct_wq = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__initcall__kmod_act_ct__672_1637_ct_init_module6 = internal global ptr @ct_init_module, section ".initcall6.init", align 4
@__exitcall_ct_cleanup_module = internal global ptr @ct_cleanup_module, section ".exitcall.exit", align 4
@__UNIQUE_ID_author673 = internal constant [47 x i8] c"act_ct.author=Paul Blakey <paulb@mellanox.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author674 = internal constant [52 x i8] c"act_ct.author=Yossi Kuperman <yossiku@mellanox.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author675 = internal constant [66 x i8] c"act_ct.author=Marcelo Ricardo Leitner <marcelo.leitner@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description676 = internal constant [46 x i8] c"act_ct.description=Connection tracking action\00", section ".modinfo", align 1
@__UNIQUE_ID_file677 = internal constant [29 x i8] c"act_ct.file=net/sched/act_ct\00", section ".modinfo", align 1
@__UNIQUE_ID_license678 = internal constant [22 x i8] c"act_ct.license=GPL v2\00", section ".modinfo", align 1
@tcf_ct_act.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"net/sched/act_ct.c\00", [45 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/if_vlan.h\00", [40 x i8] zeroinitializer }, align 32
@init_net = external dso_local global %struct.net, align 128
@tcf_ct_flow_table_add.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@tcf_ct_dump.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/netlink.h\00", [42 x i8] zeroinitializer }, align 32
@zones_ht = internal global { %struct.rhashtable, [60 x i8] } zeroinitializer, align 32
@zones_params = internal constant { %struct.rhashtable_params, [36 x i8] } { %struct.rhashtable_params { i16 0, i16 2, i16 520, i16 0, i32 0, i16 0, i8 1, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@tcf_ct_flow_table_put.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"(work_completion)(&(&ct_ft->rwork)->work)\00", [54 x i8] zeroinitializer }, align 32
@__rhashtable_remove_fast.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.7 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"include/linux/rhashtable.h\00", [37 x i8] zeroinitializer }, align 32
@__rhashtable_remove_fast.__warned.8 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.9 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@__rhashtable_remove_fast_one.__warned.12 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__rhashtable_remove_fast_one.__warned.14 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rht_ptr.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.15 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@ct_net_id = internal global { i32, [28 x i8] } zeroinitializer, align 32
@net_generic.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.16 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/net/netns/generic.h\00", [36 x i8] zeroinitializer }, align 32
@tcf_ct_init.__msg = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"act_ct: Ct requires attributes to be passed\00", [52 x i8] zeroinitializer }, align 32
@tcf_ct_init.__msg.17 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"act_ct: Missing required ct parameters\00", [57 x i8] zeroinitializer }, align 32
@tcf_ct_init.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@nla_parse_nested.__msg = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"NLA_F_NESTED is missing\00", [40 x i8] zeroinitializer }, align 32
@ct_policy = internal constant { <{ %struct.nla_policy, { i8, i8, i16, { %struct.anon.57 } }, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, { i8, i8, i16, { %struct.anon.57 } }, { i8, i8, i16, { %struct.anon.57 } }, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy }>, [32 x i8] } { <{ %struct.nla_policy, { i8, i8, i16, { %struct.anon.57 } }, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, { i8, i8, i16, { %struct.anon.57 } }, { i8, i8, i16, { %struct.anon.57 } }, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy }> <{ %struct.nla_policy zeroinitializer, { i8, i8, i16, { %struct.anon.57 } } { i8 11, i8 1, i16 0, { %struct.anon.57 } { %struct.anon.57 { i16 20, i16 20 } } }, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.56 zeroinitializer }, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.56 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.56 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.56 zeroinitializer }, %struct.nla_policy { i8 11, i8 0, i16 16, %union.anon.56 zeroinitializer }, %struct.nla_policy { i8 11, i8 0, i16 16, %union.anon.56 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.56 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.56 zeroinitializer }, { i8, i8, i16, { %struct.anon.57 } } { i8 11, i8 1, i16 0, { %struct.anon.57 } { %struct.anon.57 { i16 16, i16 16 } } }, { i8, i8, i16, { %struct.anon.57 } } { i8 11, i8 1, i16 0, { %struct.anon.57 } { %struct.anon.57 { i16 16, i16 16 } } }, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.56 zeroinitializer }, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.56 zeroinitializer }, %struct.nla_policy zeroinitializer }>, [32 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@tcf_ct_fill_params.__msg = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"act_ct: Failed to set connlabel length\00", [57 x i8] zeroinitializer }, align 32
@tcf_ct_fill_params.__msg.19 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"act_ct: Failed to allocate conntrack template\00", [50 x i8] zeroinitializer }, align 32
@tcf_ct_fill_params_nat.__msg = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"act_ct: dnat and snat can't be enabled at the same time\00", [40 x i8] zeroinitializer }, align 32
@zones_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.20, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @zones_mutex, i64 52), ptr getelementptr (i8, ptr @zones_mutex, i64 52) }, ptr @zones_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.21, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@flowtable_ct = internal global { %struct.nf_flowtable_type, [60 x i8] } { %struct.nf_flowtable_type { %struct.list_head zeroinitializer, i32 0, ptr null, ptr null, ptr @tcf_ct_flow_table_fill_actions, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"zones_mutex.wait_lock\00", [42 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"zones_mutex\00", [20 x i8] zeroinitializer }, align 32
@__rhashtable_lookup.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__rhashtable_lookup.__warned.22 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rht_ptr_rcu.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__rhashtable_insert_fast.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__rhashtable_insert_fast.__warned.24 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@tcf_ct_action.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.25 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"include/net/tc_act/tc_ct.h\00", [37 x i8] zeroinitializer }, align 32
@tcf_ct_zone.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@tcf_ct_ft.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ct_init_net._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str, i32 1564, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013act_ct: Failed to set connlabels length\00", [54 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ct_init_net\00", [20 x i8] zeroinitializer }, align 32
@ct_init_net._entry_ptr = internal global ptr @ct_init_net._entry, section ".printk_index", align 4
@tc_action_net_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.28 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&tn->idrinfo->lock\00", [45 x i8] zeroinitializer }, align 32
@xa_init_flags.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.29 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&xa->xa_lock\00", [19 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"act_ct_workqueue\00", [47 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.31 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.32 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@__sancov_gen_cov_switch_values.33 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967181]
@__sancov_gen_cov_switch_values.34 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967181]
@__sancov_gen_cov_switch_values.35 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967181]
@__sancov_gen_cov_switch_values.36 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 10]
@__sancov_gen_cov_switch_values.37 = internal global [4 x i64] [i64 2, i64 8, i64 6, i64 17]
@__sancov_gen_cov_switch_values.38 = internal global [4 x i64] [i64 2, i64 8, i64 6, i64 17]
@__sancov_gen_cov_switch_values.39 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@__sancov_gen_cov_switch_values.40 = internal global [4 x i64] [i64 2, i64 8, i64 6, i64 17]
@__sancov_gen_cov_switch_values.41 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.42 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.43 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.44 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@__sancov_gen_cov_switch_values.46 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.47 = internal global [4 x i64] [i64 2, i64 8, i64 6, i64 17]
@___asan_gen_.48 = private unnamed_addr constant [11 x i8] c"act_ct_ops\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 1542, i32 29 }
@___asan_gen_.51 = private unnamed_addr constant [11 x i8] c"ct_net_ops\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 1588, i32 33 }
@___asan_gen_.54 = private unnamed_addr constant [10 x i8] c"act_ct_wq\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 38, i32 33 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 977, i32 6 }
@___asan_gen_.64 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 271, i32 2 }
@___asan_gen_.67 = private unnamed_addr constant [27 x i8] c"../include/linux/if_vlan.h\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 598, i32 8 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 1443, i32 6 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 991, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant [9 x i8] c"zones_ht\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 39, i32 26 }
@___asan_gen_.78 = private unnamed_addr constant [13 x i8] c"zones_params\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 53, i32 39 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 359, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant [30 x i8] c"../include/linux/rhashtable.h\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 1076, i32 8 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 695, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 723, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant [10 x i8] c"ct_net_id\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 590, i32 21 }
@___asan_gen_.103 = private unnamed_addr constant [31 x i8] c"../include/net/netns/generic.h\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 45, i32 7 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 1279, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 1288, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant [25 x i8] c"../include/net/netlink.h\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 1208, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant [10 x i8] c"ct_policy\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 1090, i32 32 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 1230, i32 4 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 1254, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant [6 x i8] c"__msg\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 1128, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant [12 x i8] c"zones_mutex\00", align 1
@___asan_gen_.129 = private unnamed_addr constant [13 x i8] c"flowtable_ct\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 281, i32 33 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 40, i32 8 }
@___asan_gen_.139 = private unnamed_addr constant [30 x i8] c"../include/net/tc_act/tc_ct.h\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 51, i32 9 }
@___asan_gen_.141 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 1564, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant [25 x i8] c"../include/net/act_api.h\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 156, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.160 = private unnamed_addr constant [26 x i8] c"../include/linux/xarray.h\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 378, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.163 = private constant [22 x i8] c"../net/sched/act_ct.c\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 1599, i32 14 }
@llvm.compiler.used = appending global [49 x ptr] [ptr @__UNIQUE_ID_author673, ptr @__UNIQUE_ID_author674, ptr @__UNIQUE_ID_author675, ptr @__UNIQUE_ID_description676, ptr @__UNIQUE_ID_file677, ptr @__UNIQUE_ID_license678, ptr @__exitcall_ct_cleanup_module, ptr @__initcall__kmod_act_ct__672_1637_ct_init_module6, ptr @ct_cleanup_module, ptr @ct_init_net._entry, ptr @ct_init_net._entry_ptr, ptr @act_ct_ops, ptr @ct_net_ops, ptr @act_ct_wq, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @zones_ht, ptr @zones_params, ptr @tcf_ct_flow_table_put.__key, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.15, ptr @ct_net_id, ptr @.str.16, ptr @tcf_ct_init.__msg, ptr @tcf_ct_init.__msg.17, ptr @nla_parse_nested.__msg, ptr @ct_policy, ptr @tcf_ct_fill_params.__msg, ptr @tcf_ct_fill_params.__msg.19, ptr @tcf_ct_fill_params_nat.__msg, ptr @zones_mutex, ptr @flowtable_ct, ptr @.str.20, ptr @.str.21, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @tc_action_net_init.__key, ptr @.str.28, ptr @xa_init_flags.__key, ptr @.str.29, ptr @.str.30], section "llvm.metadata"
@0 = internal global [39 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @act_ct_ops to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ct_net_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @act_ct_wq to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zones_ht to i32), i32 228, i32 288, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zones_params to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcf_ct_flow_table_put.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ct_net_id to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcf_ct_init.__msg to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcf_ct_init.__msg.17 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nla_parse_nested.__msg to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ct_policy to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcf_ct_fill_params.__msg to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcf_ct_fill_params.__msg.19 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcf_ct_fill_params_nat.__msg to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zones_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flowtable_ct to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ct_init_net._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc_action_net_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xa_init_flags.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ct_cleanup_module() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @static_key_slow_dec(ptr noundef nonnull @tcf_frag_xmit_count) #12
  tail call void @nf_ct_extend_unregister(ptr noundef nonnull @act_ct_extend) #12
  %call = tail call i32 @tcf_unregister_action(ptr noundef nonnull @act_ct_ops, ptr noundef nonnull @ct_net_ops) #12
  tail call void @rhashtable_destroy(ptr noundef nonnull @zones_ht) #12
  %0 = load ptr, ptr @act_ct_wq, align 4
  tail call void @destroy_workqueue(ptr noundef %0) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @static_key_slow_dec(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_ct_extend_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcf_unregister_action(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ct_init_module() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.30, i32 noundef 655362, i32 noundef 1) #12
  store ptr %call, ptr @act_ct_wq, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call i32 @rhashtable_init(ptr noundef nonnull @zones_ht, ptr noundef nonnull @zones_params) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not = icmp eq i32 %call.i, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.err_tbl_init_crit_edge

if.end.err_tbl_init_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_tbl_init

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @tcf_register_action(ptr noundef nonnull @act_ct_ops, ptr noundef nonnull @ct_net_ops) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.err_register_crit_edge

if.end4.err_register_crit_edge:                   ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_register

if.end8:                                          ; preds = %if.end4
  %call9 = tail call i32 @nf_ct_extend_register(ptr noundef nonnull @act_ct_extend) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %err_register_extend

if.end12:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @static_key_slow_inc(ptr noundef nonnull @tcf_frag_xmit_count) #12
  br label %cleanup

err_register_extend:                              ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  %call13 = tail call i32 @tcf_unregister_action(ptr noundef nonnull @act_ct_ops, ptr noundef nonnull @ct_net_ops) #12
  br label %err_register

err_register:                                     ; preds = %err_register_extend, %if.end4.err_register_crit_edge
  %err.0 = phi i32 [ %call5, %if.end4.err_register_crit_edge ], [ %call9, %err_register_extend ]
  tail call void @rhashtable_destroy(ptr noundef nonnull @zones_ht) #12
  br label %err_tbl_init

err_tbl_init:                                     ; preds = %err_register, %if.end.err_tbl_init_crit_edge
  %err.1 = phi i32 [ %call.i, %if.end.err_tbl_init_crit_edge ], [ %err.0, %err_register ]
  %0 = load ptr, ptr @act_ct_wq, align 4
  tail call void @destroy_workqueue(ptr noundef %0) #12
  br label %cleanup

cleanup:                                          ; preds = %err_tbl_init, %if.end12, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %err_tbl_init ], [ 0, %if.end12 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcf_ct_act(ptr noundef %skb, ptr noundef %a, ptr nocapture noundef readnone %res) #2 align 64 {
entry:
  %flags.i.i = alloca i32, align 4
  %payload_ofs.i.i = alloca i32, align 4
  %frag_off.i.i = alloca i16, align 2
  %vhdr.i.i.i.i = alloca %struct.vlan_hdr, align 2
  %state = alloca %struct.nf_hook_state, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.anon.37, ptr %skb, i32 0, i32 2
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 8
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 127
  %3 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %nd_net.i, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %state) #12
  %5 = call ptr @memset(ptr %state, i32 255, i32 24)
  %params = getelementptr inbounds %struct.tcf_ct, ptr %a, i32 0, i32 1
  %6 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %params, align 16
  %call3 = tail call i32 @rcu_read_lock_bh_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end9_crit_edge

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end9

land.lhs.true:                                    ; preds = %entry
  %call4 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true.do.end9_crit_edge, label %land.lhs.true6

land.lhs.true.do.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end9

land.lhs.true6:                                   ; preds = %land.lhs.true
  %.b201 = load i1, ptr @tcf_ct_act.__warned, align 1
  br i1 %.b201, label %land.lhs.true6.do.end9_crit_edge, label %if.then

land.lhs.true6.do.end9_crit_edge:                 ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end9

if.then:                                          ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @tcf_ct_act.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 977, ptr noundef nonnull @.str.1) #12
  br label %do.end9

do.end9:                                          ; preds = %if.then, %land.lhs.true6.do.end9_crit_edge, %land.lhs.true.do.end9_crit_edge, %entry.do.end9_crit_edge
  %tcfa_action = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 6
  %8 = ptrtoint ptr %tcfa_action to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %tcfa_action, align 8
  %ct_action = getelementptr inbounds %struct.tcf_ct_params, ptr %7, i32 0, i32 8
  %10 = ptrtoint ptr %ct_action to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %ct_action, align 2
  %conv = zext i16 %11 to i32
  %and = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool15 = icmp ne i32 %and, 0
  %and18 = and i32 %conv, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  %and23 = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  %12 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %7, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %14 = load volatile i32, ptr @jiffies, align 128
  %lastuse.i = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 7, i32 1
  %15 = ptrtoint ptr %lastuse.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %lastuse.i, align 8
  %conv.i = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %16, i64 %conv.i)
  %cmp.not.i = icmp eq i64 %16, %conv.i
  br i1 %cmp.not.i, label %do.end9.if.end.i_crit_edge, label %if.then.i

do.end9.if.end.i_crit_edge:                       ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then.i:                                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #14
  %17 = ptrtoint ptr %lastuse.i to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %conv.i, ptr %lastuse.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %do.end9.if.end.i_crit_edge
  %firstuse.i = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 7, i32 3
  %18 = ptrtoint ptr %firstuse.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %firstuse.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %19)
  %tobool.not.i = icmp eq i64 %19, 0
  br i1 %tobool.not.i, label %if.then7.i, label %if.end.i.tcf_lastuse_update.exit_crit_edge, !prof !141

if.end.i.tcf_lastuse_update.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tcf_lastuse_update.exit

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %20 = ptrtoint ptr %firstuse.i to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %conv.i, ptr %firstuse.i, align 8
  br label %tcf_lastuse_update.exit

tcf_lastuse_update.exit:                          ; preds = %if.then7.i, %if.end.i.tcf_lastuse_update.exit_crit_edge
  %cpu_bstats.i = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 13
  %21 = ptrtoint ptr %cpu_bstats.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cpu_bstats.i, align 4
  %tobool.not.i202 = icmp eq ptr %22, null
  br i1 %tobool.not.i202, label %if.end.i203, label %do.body.i, !prof !141

do.body.i:                                        ; preds = %tcf_lastuse_update.exit
  call void @__sanitizer_cov_trace_pc() #14
  %23 = ptrtoint ptr %22 to i32
  %24 = tail call i32 @llvm.read_register.i32(metadata !131) #12
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
  tail call fastcc void @bstats_update(ptr noundef %30, ptr noundef %skb) #12
  br label %tcf_action_update_bstats.exit

if.end.i203:                                      ; preds = %tcf_lastuse_update.exit
  call void @__sanitizer_cov_trace_pc() #14
  %tcfa_lock.i = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 12
  tail call void @_raw_spin_lock(ptr noundef %tcfa_lock.i) #12
  %tcfa_bstats.i = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 8
  tail call fastcc void @bstats_update(ptr noundef %tcfa_bstats.i, ptr noundef %skb) #12
  tail call void @_raw_spin_unlock(ptr noundef %tcfa_lock.i) #12
  br label %tcf_action_update_bstats.exit

tcf_action_update_bstats.exit:                    ; preds = %if.end.i203, %do.body.i
  br i1 %tobool19.not, label %if.end36, label %if.then30

if.then30:                                        ; preds = %tcf_action_update_bstats.exit
  %post_ct = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 30
  %31 = ptrtoint ptr %post_ct to i32
  call void @__asan_load1_noabort(i32 %31)
  %bf.load = load i8, ptr %post_ct, align 2
  %bf.clear = and i8 %bf.load, 127
  store i8 %bf.clear, ptr %post_ct, align 2
  %_nfct.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 5
  %32 = ptrtoint ptr %_nfct.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %_nfct.i.i, align 8
  %and1.i = and i32 %33, -8
  %34 = inttoptr i32 %and1.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool33.not = icmp eq i32 %and1.i, 0
  br i1 %tobool33.not, label %if.then30.cleanup_crit_edge, label %land.lhs.true.i

if.then30.cleanup_crit_edge:                      ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true.i:                                  ; preds = %if.then30
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %34, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !142
  tail call void @llvm.prefetch.p0(ptr nonnull %34, i32 1, i32 3, i32 1) #12
  %35 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %34, ptr nonnull %34, i32 1, ptr nonnull elementtype(i32) %34) #12, !srcloc !143
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %35, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i205, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.nf_ct_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !144

if.end5.i.i.i.i.nf_ct_put.exit_crit_edge:         ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nf_ct_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef nonnull %34, i32 noundef 3) #12
  br label %nf_ct_put.exit

if.then.i205:                                     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !145
  tail call void @nf_ct_destroy(ptr noundef nonnull %34) #12
  br label %nf_ct_put.exit

nf_ct_put.exit:                                   ; preds = %if.then.i205, %if.then10.i.i.i.i, %if.end5.i.i.i.i.nf_ct_put.exit_crit_edge
  %slow_gro.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %36 = ptrtoint ptr %slow_gro.i.i to i32
  call void @__asan_loadN_noabort(i32 %36, i32 4)
  %bf.load.i.i = load i32, ptr %slow_gro.i.i, align 2
  %bf.set.i.i = or i32 %bf.load.i.i, 4096
  store i32 %bf.set.i.i, ptr %slow_gro.i.i, align 2
  %37 = ptrtoint ptr %_nfct.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 7, ptr %_nfct.i.i, align 8
  br label %cleanup

if.end36:                                         ; preds = %tcf_action_update_bstats.exit
  %protocol.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %38 = ptrtoint ptr %protocol.i.i.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %protocol.i.i.i, align 8
  %mac_len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 8
  %40 = ptrtoint ptr %mac_len.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %mac_len.i.i.i.i, align 4
  %conv.i.i.i.i = zext i16 %41 to i32
  %42 = zext i16 %39 to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values)
  switch i16 %39, label %if.end36.skb_protocol.exit.i_crit_edge [
    i16 -30552, label %if.end36.if.then.i.i.i.i_crit_edge
    i16 -32512, label %if.end36.if.then.i.i.i.i_crit_edge318
  ]

if.end36.if.then.i.i.i.i_crit_edge318:            ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i.i.i

if.end36.if.then.i.i.i.i_crit_edge:               ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i.i.i

if.end36.skb_protocol.exit.i_crit_edge:           ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_protocol.exit.i

if.then.i.i.i.i:                                  ; preds = %if.end36.if.then.i.i.i.i_crit_edge, %if.end36.if.then.i.i.i.i_crit_edge318
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %41)
  %tobool.not.i.i.i.i = icmp eq i16 %41, 0
  br i1 %tobool.not.i.i.i.i, label %if.then.i.i.i.i.if.end26.i.i.i.i_crit_edge, label %if.then1.i.i.i.i

if.then.i.i.i.i.if.end26.i.i.i.i_crit_edge:       ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26.i.i.i.i

if.then1.i.i.i.i:                                 ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %41)
  %cmp.i.i.i.i208 = icmp ult i16 %41, 4
  br i1 %cmp.i.i.i.i208, label %do.end.i.i.i.i, label %if.end25.i.i.i.i, !prof !141

do.end.i.i.i.i:                                   ; preds = %if.then1.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 598, i32 noundef 9, ptr noundef null) #12
  br label %drop

if.end25.i.i.i.i:                                 ; preds = %if.then1.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i.i.i = add nsw i32 %conv.i.i.i.i, -4
  br label %if.end26.i.i.i.i

if.end26.i.i.i.i:                                 ; preds = %if.end25.i.i.i.i, %if.then.i.i.i.i.if.end26.i.i.i.i_crit_edge
  %vlan_depth.0.i.i.i.i = phi i32 [ %sub.i.i.i.i, %if.end25.i.i.i.i ], [ 14, %if.then.i.i.i.i.if.end26.i.i.i.i_crit_edge ]
  %43 = getelementptr inbounds %struct.vlan_hdr, ptr %vhdr.i.i.i.i, i32 0, i32 1
  %len.i.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %data_len.i.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %tobool2.not.i.i.i.i.i.i = icmp eq ptr %skb, null
  %data.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  br label %do.body27.i.i.i.i

do.body27.i.i.i.i:                                ; preds = %do.body27.backedge.i.i.i.i, %if.end26.i.i.i.i
  %vlan_depth.1.i.i.i.i = phi i32 [ %vlan_depth.0.i.i.i.i, %if.end26.i.i.i.i ], [ %add.i.i.i.i, %do.body27.backedge.i.i.i.i ]
  %parse_depth.0.i.i.i.i = phi i32 [ 8, %if.end26.i.i.i.i ], [ %dec.i.i.i.i, %do.body27.backedge.i.i.i.i ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vhdr.i.i.i.i) #12
  %44 = ptrtoint ptr %vhdr.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 -1, ptr %vhdr.i.i.i.i, align 2, !annotation !146
  %45 = ptrtoint ptr %43 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 -1, ptr %43, align 2, !annotation !146
  %46 = ptrtoint ptr %len.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %len.i.i.i.i.i.i, align 4
  %48 = ptrtoint ptr %data_len.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %data_len.i.i.i.i.i.i, align 8
  %50 = add i32 %vlan_depth.1.i.i.i.i, %49
  %sub.i1.i.i.i.i.i = sub i32 %47, %50
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub.i1.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp sgt i32 %sub.i1.i.i.i.i.i, 3
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i, !prof !144

if.then.i.i.i.i.i.i:                              ; preds = %do.body27.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %51 = ptrtoint ptr %data.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %data.i.i.i.i.i, align 4
  %add.ptr.i.i.i.i.i.i = getelementptr i8, ptr %52, i32 %vlan_depth.1.i.i.i.i
  br label %skb_header_pointer.exit.i.i.i.i

if.end.i.i.i.i.i.i:                               ; preds = %do.body27.i.i.i.i
  br i1 %tobool2.not.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.cleanup.thread.i.i.i.i_crit_edge, label %lor.lhs.false.i.i.i.i.i.i

if.end.i.i.i.i.i.i.cleanup.thread.i.i.i.i_crit_edge: ; preds = %if.end.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.thread.i.i.i.i

lor.lhs.false.i.i.i.i.i.i:                        ; preds = %if.end.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i.i.i.i209 = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %vlan_depth.1.i.i.i.i, ptr noundef nonnull %vhdr.i.i.i.i, i32 noundef 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i.i.i209)
  %cmp3.i.i.i.i.i.i = icmp slt i32 %call.i.i.i.i.i.i209, 0
  %spec.select.i.i.i.i.i.i = select i1 %cmp3.i.i.i.i.i.i, ptr null, ptr %vhdr.i.i.i.i, !prof !141
  br label %skb_header_pointer.exit.i.i.i.i

skb_header_pointer.exit.i.i.i.i:                  ; preds = %lor.lhs.false.i.i.i.i.i.i, %if.then.i.i.i.i.i.i
  %retval.0.i.i.i.i.i.i = phi ptr [ %add.ptr.i.i.i.i.i.i, %if.then.i.i.i.i.i.i ], [ %spec.select.i.i.i.i.i.i, %lor.lhs.false.i.i.i.i.i.i ]
  %tobool29.not.i.i.i.i = icmp eq ptr %retval.0.i.i.i.i.i.i, null
  %dec.i.i.i.i = add nsw i32 %parse_depth.0.i.i.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i.i.i)
  %tobool30.not.i.i.i.i = icmp eq i32 %dec.i.i.i.i, 0
  %53 = select i1 %tobool29.not.i.i.i.i, i1 true, i1 %tobool30.not.i.i.i.i, !prof !141
  br i1 %53, label %skb_header_pointer.exit.i.i.i.i.cleanup.thread.i.i.i.i_crit_edge, label %do.cond42.i.i.i.i, !prof !141

skb_header_pointer.exit.i.i.i.i.cleanup.thread.i.i.i.i_crit_edge: ; preds = %skb_header_pointer.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.thread.i.i.i.i

cleanup.thread.i.i.i.i:                           ; preds = %skb_header_pointer.exit.i.i.i.i.cleanup.thread.i.i.i.i_crit_edge, %if.end.i.i.i.i.i.i.cleanup.thread.i.i.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vhdr.i.i.i.i) #12
  br label %drop

do.cond42.i.i.i.i:                                ; preds = %skb_header_pointer.exit.i.i.i.i
  %h_vlan_encapsulated_proto.i.i.i.i = getelementptr inbounds %struct.vlan_hdr, ptr %retval.0.i.i.i.i.i.i, i32 0, i32 1
  %54 = ptrtoint ptr %h_vlan_encapsulated_proto.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %h_vlan_encapsulated_proto.i.i.i.i, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vhdr.i.i.i.i) #12
  %56 = zext i16 %55 to i64
  call void @__sanitizer_cov_trace_switch(i64 %56, ptr @__sancov_gen_cov_switch_values.31)
  switch i16 %55, label %do.cond42.i.i.i.i.skb_protocol.exit.i_crit_edge [
    i16 -30552, label %do.cond42.i.i.i.i.do.body27.backedge.i.i.i.i_crit_edge
    i16 -32512, label %do.cond42.i.i.i.i.do.body27.backedge.i.i.i.i_crit_edge319
  ]

do.cond42.i.i.i.i.do.body27.backedge.i.i.i.i_crit_edge319: ; preds = %do.cond42.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body27.backedge.i.i.i.i

do.cond42.i.i.i.i.do.body27.backedge.i.i.i.i_crit_edge: ; preds = %do.cond42.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body27.backedge.i.i.i.i

do.cond42.i.i.i.i.skb_protocol.exit.i_crit_edge:  ; preds = %do.cond42.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_protocol.exit.i

do.body27.backedge.i.i.i.i:                       ; preds = %do.cond42.i.i.i.i.do.body27.backedge.i.i.i.i_crit_edge, %do.cond42.i.i.i.i.do.body27.backedge.i.i.i.i_crit_edge319
  %add.i.i.i.i = add nsw i32 %vlan_depth.1.i.i.i.i, 4
  br label %do.body27.i.i.i.i

skb_protocol.exit.i:                              ; preds = %do.cond42.i.i.i.i.skb_protocol.exit.i_crit_edge, %if.end36.skb_protocol.exit.i_crit_edge
  %retval.2.i.i.i.i = phi i16 [ %39, %if.end36.skb_protocol.exit.i_crit_edge ], [ %55, %do.cond42.i.i.i.i.skb_protocol.exit.i_crit_edge ]
  %57 = zext i16 %retval.2.i.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %57, ptr @__sancov_gen_cov_switch_values.32)
  switch i16 %retval.2.i.i.i.i, label %skb_protocol.exit.i.drop_crit_edge [
    i16 -31011, label %skb_protocol.exit.i.if.end41_crit_edge
    i16 2048, label %if.end41.fold.split
  ]

skb_protocol.exit.i.if.end41_crit_edge:           ; preds = %skb_protocol.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end41

skb_protocol.exit.i.drop_crit_edge:               ; preds = %skb_protocol.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %drop

if.end41.fold.split:                              ; preds = %skb_protocol.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end41

if.end41:                                         ; preds = %if.end41.fold.split, %skb_protocol.exit.i.if.end41_crit_edge
  %cmp3.i = phi i1 [ false, %skb_protocol.exit.i.if.end41_crit_edge ], [ true, %if.end41.fold.split ]
  %58 = phi i8 [ 10, %skb_protocol.exit.i.if.end41_crit_edge ], [ 2, %if.end41.fold.split ]
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %59 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %61 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %62 to i32
  %add.ptr.i.i = getelementptr i8, ptr %60, i32 %conv.i.i
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %63 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %64 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %call43 = call ptr @skb_pull_rcsum(ptr noundef %skb, i32 noundef %sub.ptr.sub.i) #12
  %zone = getelementptr inbounds %struct.tcf_ct_params, ptr %7, i32 0, i32 1
  %65 = ptrtoint ptr %zone to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %zone, align 4
  %_nfct.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 5
  %67 = ptrtoint ptr %_nfct.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %_nfct.i.i.i, align 8
  %and.i.i210 = and i32 %68, 7
  %and1.i.i = and i32 %68, -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i211 = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i211, label %lor.lhs.false.i, label %land.lhs.true.i212

land.lhs.true.i212:                               ; preds = %if.end41
  %69 = inttoptr i32 %and1.i.i to ptr
  %status.i.i = getelementptr inbounds %struct.nf_conn, ptr %69, i32 0, i32 5
  %70 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load volatile i32, ptr %status.i.i, align 8
  %72 = and i32 %71, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool2.not.i = icmp eq i32 %72, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %and.i.i210)
  %cmp.i = icmp eq i32 %and.i.i210, 7
  %or.cond.i = select i1 %tobool2.not.i, i1 true, i1 %cmp.i
  br i1 %or.cond.i, label %land.lhs.true.i212.if.end51_crit_edge, label %land.lhs.true.i212.if.end.i213_crit_edge

land.lhs.true.i212.if.end.i213_crit_edge:         ; preds = %land.lhs.true.i212
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i213

land.lhs.true.i212.if.end51_crit_edge:            ; preds = %land.lhs.true.i212
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end51

lor.lhs.false.i:                                  ; preds = %if.end41
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %and.i.i210)
  %cmp.old.i = icmp eq i32 %and.i.i210, 7
  br i1 %cmp.old.i, label %lor.lhs.false.i.if.end51_crit_edge, label %lor.lhs.false.i.if.end.i213_crit_edge

lor.lhs.false.i.if.end.i213_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i213

lor.lhs.false.i.if.end51_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end51

if.end.i213:                                      ; preds = %lor.lhs.false.i.if.end.i213_crit_edge, %land.lhs.true.i212.if.end.i213_crit_edge
  br i1 %cmp3.i, label %if.then5.i, label %if.else.i

if.then5.i:                                       ; preds = %if.end.i213
  %73 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %head.i.i, align 8
  %75 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i.i.i214 = zext i16 %76 to i32
  %add.ptr.i.i.i.i = getelementptr i8, ptr %74, i32 %conv.i.i.i.i214
  %77 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %add.ptr.i.i.i.i to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %78 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %add.i.i = add i32 %sub.ptr.sub.i.i.i, 20
  %len1.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %79 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %len1.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %80, i32 %add.i.i)
  %cmp.i.i = icmp ult i32 %80, %add.i.i
  br i1 %cmp.i.i, label %if.then5.i.drop_crit_edge, label %if.end.i.i, !prof !141

if.then5.i.drop_crit_edge:                        ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %drop

if.end.i.i:                                       ; preds = %if.then5.i
  %data_len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %81 = ptrtoint ptr %data_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %data_len.i.i.i.i, align 8
  %sub.i.i.i.i215 = sub i32 %80, %82
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %sub.i.i.i.i215)
  %cmp.not.i.i.i = icmp ugt i32 %add.i.i, %sub.i.i.i.i215
  br i1 %cmp.not.i.i.i, label %pskb_may_pull.exit.i.i, label %if.end.i.i.if.end8.thread126.i_crit_edge, !prof !141

if.end.i.i.if.end8.thread126.i_crit_edge:         ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8.thread126.i

pskb_may_pull.exit.i.i:                           ; preds = %if.end.i.i
  %sub.i.i.i = sub i32 %add.i.i, %sub.i.i.i.i215
  %call13.i.i.i = call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i.i.i) #12
  %cmp14.i.not.i.i = icmp eq ptr %call13.i.i.i, null
  br i1 %cmp14.i.not.i.i, label %pskb_may_pull.exit.i.i.drop_crit_edge, label %pskb_may_pull.exit.i.i.if.end8.thread126.i_crit_edge, !prof !141

pskb_may_pull.exit.i.i.if.end8.thread126.i_crit_edge: ; preds = %pskb_may_pull.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8.thread126.i

pskb_may_pull.exit.i.i.drop_crit_edge:            ; preds = %pskb_may_pull.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %drop

if.end8.thread126.i:                              ; preds = %pskb_may_pull.exit.i.i.if.end8.thread126.i_crit_edge, %if.end.i.i.if.end8.thread126.i_crit_edge
  %83 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %head.i.i, align 8
  %85 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i22.i.i = zext i16 %86 to i32
  %add.ptr.i.i23.i.i = getelementptr i8, ptr %84, i32 %conv.i.i22.i.i
  %frag_off.i.i.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i23.i.i, i32 0, i32 4
  %87 = ptrtoint ptr %frag_off.i.i.i to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %frag_off.i.i.i, align 2
  %89 = and i16 %88, 16383
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %89)
  %cmp.i.i.i = icmp ne i16 %89, 0
  %frombool.i.i = zext i1 %cmp.i.i.i to i8
  br label %lor.lhs.false10.i

if.else.i:                                        ; preds = %if.end.i213
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags.i.i) #12
  %90 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 0, ptr %flags.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %payload_ofs.i.i) #12
  %91 = ptrtoint ptr %payload_ofs.i.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 0, ptr %payload_ofs.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %frag_off.i.i) #12
  %92 = ptrtoint ptr %frag_off.i.i to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 -1, ptr %frag_off.i.i, align 2, !annotation !146
  %93 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %head.i.i, align 8
  %95 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i.i103.i = zext i16 %96 to i32
  %add.ptr.i.i.i104.i = getelementptr i8, ptr %94, i32 %conv.i.i.i103.i
  %97 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i.i106.i = ptrtoint ptr %add.ptr.i.i.i104.i to i32
  %sub.ptr.rhs.cast.i.i107.i = ptrtoint ptr %98 to i32
  %sub.ptr.sub.i.i108.i = sub i32 %sub.ptr.lhs.cast.i.i106.i, %sub.ptr.rhs.cast.i.i107.i
  %add.i109.i = add i32 %sub.ptr.sub.i.i108.i, 40
  %len1.i110.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %99 = ptrtoint ptr %len1.i110.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %len1.i110.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %100, i32 %add.i109.i)
  %cmp.i111.i = icmp ult i32 %100, %add.i109.i
  br i1 %cmp.i111.i, label %if.else.i.if.end8.thread133.i_crit_edge, label %if.end.i115.i, !prof !141

if.else.i.if.end8.thread133.i_crit_edge:          ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8.thread133.i

if.end.i115.i:                                    ; preds = %if.else.i
  %data_len.i.i.i112.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %101 = ptrtoint ptr %data_len.i.i.i112.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %data_len.i.i.i112.i, align 8
  %sub.i.i.i113.i = sub i32 %100, %102
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i109.i, i32 %sub.i.i.i113.i)
  %cmp.not.i.i114.i = icmp ugt i32 %add.i109.i, %sub.i.i.i113.i
  br i1 %cmp.not.i.i114.i, label %pskb_may_pull.exit.i119.i, label %if.end.i115.i.if.end13.i120.i_crit_edge, !prof !141

if.end.i115.i.if.end13.i120.i_crit_edge:          ; preds = %if.end.i115.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13.i120.i

pskb_may_pull.exit.i119.i:                        ; preds = %if.end.i115.i
  %sub.i.i116.i = sub i32 %add.i109.i, %sub.i.i.i113.i
  %call13.i.i117.i = call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i.i116.i) #12
  %cmp14.i.not.i118.i = icmp eq ptr %call13.i.i117.i, null
  br i1 %cmp14.i.not.i118.i, label %pskb_may_pull.exit.i119.i.if.end8.thread133.i_crit_edge, label %pskb_may_pull.exit.i119.i.if.end13.i120.i_crit_edge, !prof !141

pskb_may_pull.exit.i119.i.if.end13.i120.i_crit_edge: ; preds = %pskb_may_pull.exit.i119.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13.i120.i

pskb_may_pull.exit.i119.i.if.end8.thread133.i_crit_edge: ; preds = %pskb_may_pull.exit.i119.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8.thread133.i

if.end13.i120.i:                                  ; preds = %pskb_may_pull.exit.i119.i.if.end13.i120.i_crit_edge, %if.end.i115.i.if.end13.i120.i_crit_edge
  %call14.i.i = call i32 @ipv6_find_hdr(ptr noundef %skb, ptr noundef nonnull %payload_ofs.i.i, i32 noundef -1, ptr noundef nonnull %frag_off.i.i, ptr noundef nonnull %flags.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i.i)
  %cmp15.i.i = icmp slt i32 %call14.i.i, 0
  br i1 %cmp15.i.i, label %if.end13.i120.i.if.end8.thread133.i_crit_edge, label %if.end8.i, !prof !141

if.end13.i120.i.if.end8.thread133.i_crit_edge:    ; preds = %if.end13.i120.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8.thread133.i

if.end8.thread133.i:                              ; preds = %if.end13.i120.i.if.end8.thread133.i_crit_edge, %pskb_may_pull.exit.i119.i.if.end8.thread133.i_crit_edge, %if.else.i.if.end8.thread133.i_crit_edge
  %retval.0.i121.ph.i = phi i32 [ -71, %if.end13.i120.i.if.end8.thread133.i_crit_edge ], [ -12, %pskb_may_pull.exit.i119.i.if.end8.thread133.i_crit_edge ], [ -22, %if.else.i.if.end8.thread133.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %frag_off.i.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %payload_ofs.i.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags.i.i) #12
  br label %tcf_ct_handle_fragments.exit

if.end8.i:                                        ; preds = %if.end13.i120.i
  call void @__sanitizer_cov_trace_pc() #14
  %103 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %flags.i.i, align 4
  %105 = trunc i32 %104 to i8
  %106 = and i8 %105, 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %frag_off.i.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %payload_ofs.i.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags.i.i) #12
  br label %lor.lhs.false10.i

lor.lhs.false10.i:                                ; preds = %if.end8.i, %if.end8.thread126.i
  %frag.2130.i = phi i8 [ %frombool.i.i, %if.end8.thread126.i ], [ %106, %if.end8.i ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %frag.2130.i)
  %tobool11.not.i = icmp eq i8 %frag.2130.i, 0
  br i1 %tobool11.not.i, label %lor.lhs.false10.i.if.end51_crit_edge, label %if.end13.i

lor.lhs.false10.i.if.end51_crit_edge:             ; preds = %lor.lhs.false10.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end51

if.end13.i:                                       ; preds = %lor.lhs.false10.i
  %users.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 21
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %users.i.i, i32 noundef 4) #12
  call void @llvm.prefetch.p0(ptr %users.i.i, i32 1, i32 3, i32 1) #12
  %107 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users.i.i, ptr %users.i.i, i32 1, ptr elementtype(i32) %users.i.i) #12, !srcloc !147
  %asmresult.i.i.i.i.i.i.i216 = extractvalue { i32, i32, i32 } %107, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i216)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i216, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.end13.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !141

if.end13.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.end13.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i216, 1
  %108 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i216
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %108)
  %.not.i.i.i.i.i = icmp sgt i32 %108, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.skb_get.exit.i_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !144

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.skb_get.exit.i_crit_edge:       ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_get.exit.i

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.end13.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.end13.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %users.i.i, i32 noundef %.sink.i.i.i.i.i) #12
  br label %skb_get.exit.i

skb_get.exit.i:                                   ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.skb_get.exit.i_crit_edge
  %cb1.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %mru16.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 28
  %conv21.i = zext i16 %66 to i32
  br i1 %cmp3.i, label %if.then20.i, label %if.else34.i

if.then20.i:                                      ; preds = %skb_get.exit.i
  %add.i217 = add nuw nsw i32 %conv21.i, 2
  %109 = call ptr @memset(ptr %cb1.i.i, i32 0, i32 24)
  call fastcc void @local_bh_disable() #12
  %call22.i = call i32 @ip_defrag(ptr noundef %4, ptr noundef %skb, i32 noundef %add.i217) #12
  call fastcc void @local_bh_enable() #12
  %110 = zext i32 %call22.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %110, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %call22.i, label %if.then20.i.tcf_ct_handle_fragments.exit_crit_edge [
    i32 0, label %if.then30.i
    i32 -115, label %if.then20.i.if.end62.i_crit_edge
  ]

if.then20.i.if.end62.i_crit_edge:                 ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end62.i

if.then20.i.tcf_ct_handle_fragments.exit_crit_edge: ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tcf_ct_handle_fragments.exit

if.then30.i:                                      ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #14
  %frag_max_size.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 22
  br label %if.then59.i

if.else34.i:                                      ; preds = %skb_get.exit.i
  %add37.i = add nuw nsw i32 %conv21.i, 1
  %111 = call ptr @memset(ptr %cb1.i.i, i32 0, i32 24)
  %call40.i = call i32 @nf_ct_frag6_gather(ptr noundef %4, ptr noundef %skb, i32 noundef %add37.i) #12
  %112 = zext i32 %call40.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %112, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %call40.i, label %out_free.i [
    i32 0, label %if.then48.i
    i32 -115, label %if.else34.i.if.end62.i_crit_edge
  ]

if.else34.i.if.end62.i_crit_edge:                 ; preds = %if.else34.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end62.i

if.then48.i:                                      ; preds = %if.else34.i
  call void @__sanitizer_cov_trace_pc() #14
  %frag_max_size51.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 20
  br label %if.then59.i

if.then59.i:                                      ; preds = %if.then48.i, %if.then30.i
  %mru.4.in.i = phi ptr [ %frag_max_size.i, %if.then30.i ], [ %frag_max_size51.i, %if.then48.i ]
  %113 = ptrtoint ptr %mru.4.in.i to i32
  call void @__asan_load2_noabort(i32 %113)
  %mru.4.i = load i16, ptr %mru.4.in.i, align 2
  %114 = ptrtoint ptr %mru16.i to i32
  call void @__asan_store2_noabort(i32 %114)
  store i16 %mru.4.i, ptr %mru16.i, align 4
  br label %if.end62.i

if.end62.i:                                       ; preds = %if.then59.i, %if.else34.i.if.end62.i_crit_edge, %if.then20.i.if.end62.i_crit_edge
  %defrag.1 = phi i8 [ 0, %if.then20.i.if.end62.i_crit_edge ], [ 1, %if.then59.i ], [ 0, %if.else34.i.if.end62.i_crit_edge ]
  %err.1145.i = phi i32 [ %call22.i, %if.then20.i.if.end62.i_crit_edge ], [ 0, %if.then59.i ], [ %call40.i, %if.else34.i.if.end62.i_crit_edge ]
  %hash.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 8
  %115 = ptrtoint ptr %hash.i.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 0, ptr %hash.i.i, align 4
  %sw_hash.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %116 = ptrtoint ptr %sw_hash.i.i to i32
  call void @__asan_load2_noabort(i32 %116)
  %bf.load.i.i218 = load i16, ptr %sw_hash.i.i, align 8
  %bf.clear2.i.i = and i16 %bf.load.i.i218, -4289
  %bf.set.i = or i16 %bf.clear2.i.i, 4096
  store i16 %bf.set.i, ptr %sw_hash.i.i, align 8
  br label %tcf_ct_handle_fragments.exit

out_free.i:                                       ; preds = %if.else34.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #12
  br label %tcf_ct_handle_fragments.exit

tcf_ct_handle_fragments.exit:                     ; preds = %out_free.i, %if.end62.i, %if.then20.i.tcf_ct_handle_fragments.exit_crit_edge, %if.end8.thread133.i
  %defrag.2 = phi i8 [ 0, %if.then20.i.tcf_ct_handle_fragments.exit_crit_edge ], [ %defrag.1, %if.end62.i ], [ 0, %out_free.i ], [ 0, %if.end8.thread133.i ]
  %retval.1.i = phi i32 [ %call22.i, %if.then20.i.tcf_ct_handle_fragments.exit_crit_edge ], [ %err.1145.i, %if.end62.i ], [ %call40.i, %out_free.i ], [ %retval.0.i121.ph.i, %if.end8.thread133.i ]
  %117 = zext i32 %retval.1.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %117, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %retval.1.i, label %tcf_ct_handle_fragments.exit.drop_crit_edge [
    i32 -115, label %tcf_ct_handle_fragments.exit.out_clear_crit_edge
    i32 0, label %tcf_ct_handle_fragments.exit.if.end51_crit_edge
  ]

tcf_ct_handle_fragments.exit.if.end51_crit_edge:  ; preds = %tcf_ct_handle_fragments.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end51

tcf_ct_handle_fragments.exit.out_clear_crit_edge: ; preds = %tcf_ct_handle_fragments.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_clear

tcf_ct_handle_fragments.exit.drop_crit_edge:      ; preds = %tcf_ct_handle_fragments.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %drop

if.end51:                                         ; preds = %tcf_ct_handle_fragments.exit.if.end51_crit_edge, %lor.lhs.false10.i.if.end51_crit_edge, %lor.lhs.false.i.if.end51_crit_edge, %land.lhs.true.i212.if.end51_crit_edge
  %defrag.2292 = phi i8 [ %defrag.2, %tcf_ct_handle_fragments.exit.if.end51_crit_edge ], [ 0, %lor.lhs.false.i.if.end51_crit_edge ], [ 0, %land.lhs.true.i212.if.end51_crit_edge ], [ 0, %lor.lhs.false10.i.if.end51_crit_edge ]
  %118 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %head.i.i, align 8
  %120 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i.i = zext i16 %121 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %119, i32 %conv.i.i.i
  br i1 %cmp3.i, label %sw.bb.i, label %sw.bb1.i

sw.bb.i:                                          ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #14
  %tot_len.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i, i32 0, i32 2
  %122 = ptrtoint ptr %tot_len.i to i32
  call void @__asan_load2_noabort(i32 %122)
  %123 = load i16, ptr %tot_len.i, align 2
  %conv.i219 = zext i16 %123 to i32
  br label %sw.epilog.i

sw.bb1.i:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #14
  %payload_len.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i.i, i32 0, i32 2
  %124 = ptrtoint ptr %payload_len.i to i32
  call void @__asan_load2_noabort(i32 %124)
  %125 = load i16, ptr %payload_len.i, align 4
  %conv3.i = zext i16 %125 to i32
  %add.i220 = add nuw nsw i32 %conv3.i, 40
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb1.i, %sw.bb.i
  %len.0.i = phi i32 [ %add.i220, %sw.bb1.i ], [ %conv.i219, %sw.bb.i ]
  %len1.i.i221 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %126 = ptrtoint ptr %len1.i.i221 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %len1.i.i221, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %127, i32 %len.0.i)
  %cmp.not.i.i = icmp ugt i32 %127, %len.0.i
  br i1 %cmp.not.i.i, label %tcf_ct_skb_network_trim.exit, label %sw.epilog.i.if.end56_crit_edge, !prof !141

sw.epilog.i.if.end56_crit_edge:                   ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end56

tcf_ct_skb_network_trim.exit:                     ; preds = %sw.epilog.i
  %call.i.i = call i32 @pskb_trim_rcsum_slow(ptr noundef %skb, i32 noundef %len.0.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool54.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool54.not, label %tcf_ct_skb_network_trim.exit.if.end56_crit_edge, label %tcf_ct_skb_network_trim.exit.drop_crit_edge

tcf_ct_skb_network_trim.exit.drop_crit_edge:      ; preds = %tcf_ct_skb_network_trim.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %drop

tcf_ct_skb_network_trim.exit.if.end56_crit_edge:  ; preds = %tcf_ct_skb_network_trim.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end56

if.end56:                                         ; preds = %tcf_ct_skb_network_trim.exit.if.end56_crit_edge, %sw.epilog.i.if.end56_crit_edge
  %128 = ptrtoint ptr %zone to i32
  call void @__asan_load2_noabort(i32 %128)
  %129 = load i16, ptr %zone, align 4
  %130 = ptrtoint ptr %_nfct.i.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %_nfct.i.i.i, align 8
  %and.i.i224 = and i32 %131, 7
  %and1.i.i225 = and i32 %131, -8
  %132 = inttoptr i32 %and1.i.i225 to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i225)
  %tobool.not.i226 = icmp eq i32 %and1.i.i225, 0
  br i1 %tobool.not.i226, label %if.end56.if.then62_crit_edge, label %if.end.i227

if.end56.if.then62_crit_edge:                     ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then62

if.end.i227:                                      ; preds = %if.end56
  %ct_net.i = getelementptr inbounds %struct.nf_conn, ptr %132, i32 0, i32 7
  %133 = ptrtoint ptr %ct_net.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %ct_net.i, align 8
  %cmp.i.not.i = icmp eq ptr %134, %4
  br i1 %cmp.i.not.i, label %if.end5.i, label %if.end.i227.if.then62_crit_edge

if.end.i227.if.then62_crit_edge:                  ; preds = %if.end.i227
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then62

if.end5.i:                                        ; preds = %if.end.i227
  %zone.i.i = getelementptr inbounds %struct.nf_conn, ptr %132, i32 0, i32 3
  %135 = ptrtoint ptr %zone.i.i to i32
  call void @__asan_load2_noabort(i32 %135)
  %136 = load i16, ptr %zone.i.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %136, i16 %129)
  %cmp.not.i228 = icmp ne i16 %136, %129
  %brmerge.i = or i1 %tobool24.not, %cmp.not.i228
  br i1 %brmerge.i, label %tcf_ct_skb_nfct_cached.exit, label %land.lhs.true.i229

land.lhs.true.i229:                               ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i.i224)
  %cmp13.i = icmp ugt i32 %and.i.i224, 2
  br i1 %cmp13.i, label %if.then17.i, label %land.lhs.true.i229.do_nat_crit_edge

land.lhs.true.i229.do_nat_crit_edge:              ; preds = %land.lhs.true.i229
  call void @__sanitizer_cov_trace_pc() #14
  br label %do_nat

if.then17.i:                                      ; preds = %land.lhs.true.i229
  %status.i.i230 = getelementptr inbounds %struct.nf_conn, ptr %132, i32 0, i32 5
  %137 = ptrtoint ptr %status.i.i230 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load volatile i32, ptr %status.i.i230, align 8
  %139 = and i32 %138, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %139)
  %tobool19.not.i = icmp eq i32 %139, 0
  br i1 %tobool19.not.i, label %if.then17.i.land.lhs.true.i.i_crit_edge, label %if.then20.i232

if.then17.i.land.lhs.true.i.i_crit_edge:          ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true.i.i

if.then20.i232:                                   ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i231 = call zeroext i1 @nf_ct_delete(ptr noundef nonnull %132, i32 noundef 0, i32 noundef 0) #12
  br label %land.lhs.true.i.i

land.lhs.true.i.i:                                ; preds = %if.then20.i232, %if.then17.i.land.lhs.true.i.i_crit_edge
  %call.i.i.i.i.i.i.i233 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %132, i32 noundef 4) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !142
  call void @llvm.prefetch.p0(ptr nonnull %132, i32 1, i32 3, i32 1) #12
  %140 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %132, ptr nonnull %132, i32 1, ptr nonnull elementtype(i32) %132) #12, !srcloc !143
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %140, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i234 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i234, label %if.end5.i.i.i.i.i.nf_ct_put.exit.i_crit_edge, label %if.then10.i.i.i.i.i, !prof !144

if.end5.i.i.i.i.i.nf_ct_put.exit.i_crit_edge:     ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nf_ct_put.exit.i

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @refcount_warn_saturate(ptr noundef nonnull %132, i32 noundef 3) #12
  br label %nf_ct_put.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !145
  call void @nf_ct_destroy(ptr noundef nonnull %132) #12
  br label %nf_ct_put.exit.i

nf_ct_put.exit.i:                                 ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.nf_ct_put.exit.i_crit_edge
  %slow_gro.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %141 = ptrtoint ptr %slow_gro.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %141, i32 4)
  %bf.load.i.i.i = load i32, ptr %slow_gro.i.i.i, align 2
  %bf.set.i.i.i = or i32 %bf.load.i.i.i, 4096
  store i32 %bf.set.i.i.i, ptr %slow_gro.i.i.i, align 2
  %142 = ptrtoint ptr %_nfct.i.i.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 7, ptr %_nfct.i.i.i, align 8
  br label %if.then62

tcf_ct_skb_nfct_cached.exit:                      ; preds = %if.end5.i
  br i1 %cmp.not.i228, label %tcf_ct_skb_nfct_cached.exit.if.then62_crit_edge, label %tcf_ct_skb_nfct_cached.exit.do_nat_crit_edge

tcf_ct_skb_nfct_cached.exit.do_nat_crit_edge:     ; preds = %tcf_ct_skb_nfct_cached.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do_nat

tcf_ct_skb_nfct_cached.exit.if.then62_crit_edge:  ; preds = %tcf_ct_skb_nfct_cached.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then62

if.then62:                                        ; preds = %tcf_ct_skb_nfct_cached.exit.if.then62_crit_edge, %nf_ct_put.exit.i, %if.end.i227.if.then62_crit_edge, %if.end56.if.then62_crit_edge
  %call63 = call fastcc zeroext i1 @tcf_ct_flow_table_lookup(ptr noundef %7, ptr noundef %skb, i8 noundef zeroext %58)
  br i1 %call63, label %if.then62.do_nat_crit_edge, label %if.end65

if.then62.do_nat_crit_edge:                       ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do_nat

if.end65:                                         ; preds = %if.then62
  %tobool66.not = icmp eq ptr %13, null
  br i1 %tobool66.not, label %if.end65.if.end69_crit_edge, label %if.then67

if.end65.if.end69_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then67:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #14
  %143 = ptrtoint ptr %_nfct.i.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %_nfct.i.i.i, align 8
  %and.i235 = and i32 %144, -8
  %145 = inttoptr i32 %and.i235 to ptr
  call fastcc void @nf_conntrack_put(ptr noundef %145)
  call fastcc void @nf_conntrack_get(ptr noundef nonnull %13)
  %146 = ptrtoint ptr %13 to i32
  %or.i = or i32 %146, 2
  %slow_gro.i.i236 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %147 = ptrtoint ptr %slow_gro.i.i236 to i32
  call void @__asan_loadN_noabort(i32 %147, i32 4)
  %bf.load.i.i237 = load i32, ptr %slow_gro.i.i236, align 2
  %bf.set.i.i240 = or i32 %bf.load.i.i237, 4096
  store i32 %bf.set.i.i240, ptr %slow_gro.i.i236, align 2
  %148 = ptrtoint ptr %_nfct.i.i.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 %or.i, ptr %_nfct.i.i.i, align 8
  br label %if.end69

if.end69:                                         ; preds = %if.then67, %if.end65.if.end69_crit_edge
  %149 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %149)
  store i8 0, ptr %state, align 4
  %net70 = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 5
  %150 = ptrtoint ptr %net70 to i32
  call void @__asan_store4_noabort(i32 %150)
  store ptr %4, ptr %net70, align 4
  %pf = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 1
  %151 = ptrtoint ptr %pf to i32
  call void @__asan_store1_noabort(i32 %151)
  store i8 %58, ptr %pf, align 1
  %call71 = call i32 @nf_conntrack_in(ptr noundef %skb, ptr noundef nonnull %state) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call71)
  %cmp72.not = icmp eq i32 %call71, 1
  br i1 %cmp72.not, label %if.end69.do_nat_crit_edge, label %if.end69.out_push_crit_edge

if.end69.out_push_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_push

if.end69.do_nat_crit_edge:                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #14
  br label %do_nat

do_nat:                                           ; preds = %if.end69.do_nat_crit_edge, %if.then62.do_nat_crit_edge, %tcf_ct_skb_nfct_cached.exit.do_nat_crit_edge, %land.lhs.true.i229.do_nat_crit_edge
  %skip_add.0.off0 = phi i1 [ false, %tcf_ct_skb_nfct_cached.exit.do_nat_crit_edge ], [ false, %if.end69.do_nat_crit_edge ], [ true, %if.then62.do_nat_crit_edge ], [ false, %land.lhs.true.i229.do_nat_crit_edge ]
  %152 = ptrtoint ptr %_nfct.i.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %_nfct.i.i.i, align 8
  %and.i243 = and i32 %153, 7
  %and1.i244 = and i32 %153, -8
  %154 = inttoptr i32 %and1.i244 to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i244)
  %tobool78.not = icmp eq i32 %and1.i244, 0
  br i1 %tobool78.not, label %do_nat.out_push_crit_edge, label %if.end80

do_nat.out_push_crit_edge:                        ; preds = %do_nat
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_push

if.end80:                                         ; preds = %do_nat
  call void @nf_ct_deliver_cached_events(ptr noundef nonnull %154) #12
  %ext.i.i.i.i = getelementptr inbounds %struct.nf_conn, ptr %154, i32 0, i32 13
  %155 = ptrtoint ptr %ext.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %ext.i.i.i.i, align 8
  %tobool.not.i.i.i.i245 = icmp eq ptr %156, null
  br i1 %tobool.not.i.i.i.i245, label %if.end80.nf_conn_act_ct_ext_fill.exit_crit_edge, label %nf_ct_ext_exist.exit.i.i.i

if.end80.nf_conn_act_ct_ext_fill.exit_crit_edge:  ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #14
  br label %nf_conn_act_ct_ext_fill.exit

nf_ct_ext_exist.exit.i.i.i:                       ; preds = %if.end80
  %arrayidx.i.i.i.i.i = getelementptr [10 x i8], ptr %156, i32 0, i32 9
  %157 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %arrayidx.i.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %158)
  %tobool.i.i.not.i.i.i = icmp eq i8 %158, 0
  br i1 %tobool.i.i.not.i.i.i, label %nf_ct_ext_exist.exit.i.i.i.nf_conn_act_ct_ext_fill.exit_crit_edge, label %nf_conn_act_ct_ext_find.exit.i

nf_ct_ext_exist.exit.i.i.i.nf_conn_act_ct_ext_fill.exit_crit_edge: ; preds = %nf_ct_ext_exist.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nf_conn_act_ct_ext_fill.exit

nf_conn_act_ct_ext_find.exit.i:                   ; preds = %nf_ct_ext_exist.exit.i.i.i
  %conv.i.i.i246 = zext i8 %158 to i32
  %add.ptr.i.i.i247 = getelementptr i8, ptr %156, i32 %conv.i.i.i246
  %159 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %0, align 8
  %nd_net.i.i = getelementptr inbounds %struct.net_device, ptr %160, i32 0, i32 127
  %161 = ptrtoint ptr %nd_net.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %nd_net.i.i, align 4
  %cmp.i248 = icmp ne ptr %162, @init_net
  %tobool.not.i249 = icmp eq ptr %add.ptr.i.i.i247, null
  %or.cond.i250 = select i1 %cmp.i248, i1 true, i1 %tobool.not.i249
  br i1 %or.cond.i250, label %nf_conn_act_ct_ext_find.exit.i.nf_conn_act_ct_ext_fill.exit_crit_edge, label %if.then.i253

nf_conn_act_ct_ext_find.exit.i.nf_conn_act_ct_ext_fill.exit_crit_edge: ; preds = %nf_conn_act_ct_ext_find.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nf_conn_act_ct_ext_fill.exit

if.then.i253:                                     ; preds = %nf_conn_act_ct_ext_find.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %ifindex.i = getelementptr inbounds %struct.net_device, ptr %160, i32 0, i32 17
  %163 = ptrtoint ptr %ifindex.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %ifindex.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i243)
  %cmp3.i251 = icmp ugt i32 %and.i243, 2
  %cond.i = zext i1 %cmp3.i251 to i32
  %arrayidx.i252 = getelementptr [2 x i32], ptr %add.ptr.i.i.i247, i32 0, i32 %cond.i
  %165 = ptrtoint ptr %arrayidx.i252 to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 %164, ptr %arrayidx.i252, align 4
  br label %nf_conn_act_ct_ext_fill.exit

nf_conn_act_ct_ext_fill.exit:                     ; preds = %if.then.i253, %nf_conn_act_ct_ext_find.exit.i.nf_conn_act_ct_ext_fill.exit_crit_edge, %nf_ct_ext_exist.exit.i.i.i.nf_conn_act_ct_ext_fill.exit_crit_edge, %if.end80.nf_conn_act_ct_ext_fill.exit_crit_edge
  %166 = ptrtoint ptr %ct_action to i32
  call void @__asan_load2_noabort(i32 %166)
  %167 = load i16, ptr %ct_action, align 2
  %conv82 = zext i16 %167 to i32
  %range = getelementptr inbounds %struct.tcf_ct_params, ptr %7, i32 0, i32 6
  %and.i255 = and i32 %conv82, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i255)
  %tobool.not.i256 = icmp eq i32 %and.i255, 0
  br i1 %tobool.not.i256, label %nf_conn_act_ct_ext_fill.exit.if.end88_crit_edge, label %if.end.i258

nf_conn_act_ct_ext_fill.exit.if.end88_crit_edge:  ; preds = %nf_conn_act_ct_ext_fill.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end88

if.end.i258:                                      ; preds = %nf_conn_act_ct_ext_fill.exit
  %status.i.i257 = getelementptr inbounds %struct.nf_conn, ptr %154, i32 0, i32 5
  %168 = ptrtoint ptr %status.i.i257 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load volatile i32, ptr %status.i.i257, align 8
  %170 = and i32 %169, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %170)
  %tobool1.not.i = icmp eq i32 %170, 0
  br i1 %tobool1.not.i, label %land.lhs.true.i259, label %if.end.i258.if.end5.i261_crit_edge

if.end.i258.if.end5.i261_crit_edge:               ; preds = %if.end.i258
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5.i261

land.lhs.true.i259:                               ; preds = %if.end.i258
  %call2.i = call ptr @nf_ct_nat_ext_add(ptr noundef nonnull %154) #12
  %tobool3.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool3.not.i, label %land.lhs.true.i259.drop_crit_edge, label %land.lhs.true.i259.if.end5.i261_crit_edge

land.lhs.true.i259.if.end5.i261_crit_edge:        ; preds = %land.lhs.true.i259
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5.i261

land.lhs.true.i259.drop_crit_edge:                ; preds = %land.lhs.true.i259
  call void @__sanitizer_cov_trace_pc() #14
  br label %drop

if.end5.i261:                                     ; preds = %land.lhs.true.i259.if.end5.i261_crit_edge, %if.end.i258.if.end5.i261_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i243)
  %cmp.not.i260 = icmp eq i32 %and.i243, 2
  br i1 %cmp.not.i260, label %if.end5.i261.if.else25.i_crit_edge, label %land.lhs.true6.i

if.end5.i261.if.else25.i_crit_edge:               ; preds = %if.end5.i261
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else25.i

land.lhs.true6.i:                                 ; preds = %if.end5.i261
  %171 = ptrtoint ptr %status.i.i257 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %status.i.i257, align 8
  %and7.i = and i32 %172, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool8.not.i = icmp ne i32 %and7.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i243)
  %cmp10.not.i = icmp ne i32 %and.i243, 1
  %brmerge.i262 = or i1 %tobool15, %cmp10.not.i
  %or.cond.i263 = and i1 %brmerge.i262, %tobool8.not.i
  br i1 %or.cond.i263, label %if.then12.i, label %land.lhs.true6.i.if.else25.i_crit_edge

land.lhs.true6.i.if.else25.i_crit_edge:           ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else25.i

if.then12.i:                                      ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.i243)
  %cmp13.i264 = icmp ult i32 %and.i243, 3
  %and17.i = lshr i32 %172, 4
  %and17.lobit.i = and i32 %and17.i, 1
  %173 = zext i1 %cmp13.i264 to i32
  %spec.select.i = xor i32 %and17.lobit.i, %173
  br label %if.end36.i

if.else25.i:                                      ; preds = %land.lhs.true6.i.if.else25.i_crit_edge, %if.end5.i261.if.else25.i_crit_edge
  %and26.i = and i32 %conv82, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.i)
  %tobool27.not.i = icmp eq i32 %and26.i, 0
  br i1 %tobool27.not.i, label %if.else29.i, label %if.else25.i.if.end36.i_crit_edge

if.else25.i.if.end36.i_crit_edge:                 ; preds = %if.else25.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36.i

if.else29.i:                                      ; preds = %if.else25.i
  %and30.i = and i32 %conv82, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30.i)
  %tobool31.not.i = icmp eq i32 %and30.i, 0
  br i1 %tobool31.not.i, label %if.else29.i.if.end88_crit_edge, label %if.else29.i.if.end36.i_crit_edge

if.else29.i.if.end36.i_crit_edge:                 ; preds = %if.else29.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36.i

if.else29.i.if.end88_crit_edge:                   ; preds = %if.else29.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end88

if.end36.i:                                       ; preds = %if.else29.i.if.end36.i_crit_edge, %if.else25.i.if.end36.i_crit_edge, %if.then12.i
  %maniptype.0.i = phi i32 [ 0, %if.else25.i.if.end36.i_crit_edge ], [ 1, %if.else29.i.if.end36.i_crit_edge ], [ %spec.select.i, %if.then12.i ]
  %call37.i = call fastcc i32 @ct_nat_execute(ptr noundef %skb, ptr noundef nonnull %154, i32 noundef %and.i243, ptr noundef %range, i32 noundef %maniptype.0.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call37.i)
  %cmp38.i = icmp eq i32 %call37.i, 1
  br i1 %cmp38.i, label %land.lhs.true39.i, label %if.end36.i.drop_crit_edge

if.end36.i.drop_crit_edge:                        ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %drop

land.lhs.true39.i:                                ; preds = %if.end36.i
  %174 = ptrtoint ptr %status.i.i257 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %status.i.i257, align 8
  %and41.i = and i32 %175, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41.i)
  %tobool42.not.i = icmp eq i32 %and41.i, 0
  br i1 %tobool42.not.i, label %land.lhs.true39.i.if.end88_crit_edge, label %if.then43.i

land.lhs.true39.i.if.end88_crit_edge:             ; preds = %land.lhs.true39.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end88

if.then43.i:                                      ; preds = %land.lhs.true39.i
  %and45.i = and i32 %175, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45.i)
  %tobool46.not.i = icmp eq i32 %and45.i, 0
  br i1 %tobool46.not.i, label %if.else53.i, label %if.then47.i

if.then47.i:                                      ; preds = %if.then43.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %maniptype.0.i)
  %cmp48.i = icmp eq i32 %maniptype.0.i, 0
  %..i = zext i1 %cmp48.i to i32
  %call52.i = call fastcc i32 @ct_nat_execute(ptr noundef %skb, ptr noundef nonnull %154, i32 noundef %and.i243, ptr noundef %range, i32 noundef %..i) #12
  br label %tcf_ct_act_nat.exit

if.else53.i:                                      ; preds = %if.then43.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.i243)
  %cmp54.i = icmp ult i32 %and.i243, 3
  br i1 %cmp54.i, label %if.then57.i, label %if.else53.i.if.end88_crit_edge

if.else53.i.if.end88_crit_edge:                   ; preds = %if.else53.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end88

if.then57.i:                                      ; preds = %if.else53.i
  call void @__sanitizer_cov_trace_pc() #14
  %call58.i = call fastcc i32 @ct_nat_execute(ptr noundef %skb, ptr noundef nonnull %154, i32 noundef %and.i243, ptr noundef null, i32 noundef 0) #12
  br label %tcf_ct_act_nat.exit

tcf_ct_act_nat.exit:                              ; preds = %if.then57.i, %if.then47.i
  %retval.0.i265 = phi i32 [ %call52.i, %if.then47.i ], [ %call58.i, %if.then57.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %retval.0.i265)
  %cmp85.not = icmp eq i32 %retval.0.i265, 1
  br i1 %cmp85.not, label %tcf_ct_act_nat.exit.if.end88_crit_edge, label %tcf_ct_act_nat.exit.drop_crit_edge

tcf_ct_act_nat.exit.drop_crit_edge:               ; preds = %tcf_ct_act_nat.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %drop

tcf_ct_act_nat.exit.if.end88_crit_edge:           ; preds = %tcf_ct_act_nat.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end88

if.end88:                                         ; preds = %tcf_ct_act_nat.exit.if.end88_crit_edge, %if.else53.i.if.end88_crit_edge, %land.lhs.true39.i.if.end88_crit_edge, %if.else29.i.if.end88_crit_edge, %nf_conn_act_ct_ext_fill.exit.if.end88_crit_edge
  br i1 %tobool15, label %if.then90, label %if.end88.if.end102_crit_edge

if.end88.if.end102_crit_edge:                     ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end102

if.then90:                                        ; preds = %if.end88
  %mark = getelementptr inbounds %struct.tcf_ct_params, ptr %7, i32 0, i32 2
  %176 = ptrtoint ptr %mark to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %mark, align 4
  %mark_mask = getelementptr inbounds %struct.tcf_ct_params, ptr %7, i32 0, i32 3
  %178 = ptrtoint ptr %mark_mask to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %mark_mask, align 4
  call fastcc void @tcf_ct_act_set_mark(ptr noundef nonnull %154, i32 noundef %177, i32 noundef %179)
  %labels = getelementptr inbounds %struct.tcf_ct_params, ptr %7, i32 0, i32 4
  %labels_mask = getelementptr inbounds %struct.tcf_ct_params, ptr %7, i32 0, i32 5
  call fastcc void @tcf_ct_act_set_labels(ptr noundef nonnull %154, ptr noundef %labels, ptr noundef %labels_mask)
  %status.i = getelementptr inbounds %struct.nf_conn, ptr %154, i32 0, i32 5
  %180 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load volatile i32, ptr %status.i, align 8
  %182 = and i32 %181, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %182)
  %tobool93.not = icmp eq i32 %182, 0
  br i1 %tobool93.not, label %if.then94, label %if.then90.if.end96_crit_edge

if.then90.if.end96_crit_edge:                     ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end96

if.then94:                                        ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #14
  call fastcc void @nf_conn_act_ct_ext_add(ptr noundef nonnull %154)
  br label %if.end96

if.end96:                                         ; preds = %if.then94, %if.then90.if.end96_crit_edge
  %call97 = call fastcc i32 @nf_conntrack_confirm(ptr noundef %skb)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call97)
  %cmp98.not = icmp eq i32 %call97, 1
  br i1 %cmp98.not, label %if.end96.if.end102_crit_edge, label %if.end96.drop_crit_edge

if.end96.drop_crit_edge:                          ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #14
  br label %drop

if.end96.if.end102_crit_edge:                     ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end102

if.end102:                                        ; preds = %if.end96.if.end102_crit_edge, %if.end88.if.end102_crit_edge
  br i1 %skip_add.0.off0, label %if.end102.out_push_crit_edge, label %if.then104

if.end102.out_push_crit_edge:                     ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_push

if.then104:                                       ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #14
  %ct_ft = getelementptr inbounds %struct.tcf_ct_params, ptr %7, i32 0, i32 10
  %183 = ptrtoint ptr %ct_ft to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %ct_ft, align 4
  call fastcc void @tcf_ct_flow_table_process_conn(ptr noundef %184, ptr noundef nonnull %154, i32 noundef %and.i243)
  br label %out_push

out_push:                                         ; preds = %if.then104, %if.end102.out_push_crit_edge, %do_nat.out_push_crit_edge, %if.end69.out_push_crit_edge
  %call.i = call ptr @skb_push(ptr noundef %skb, i32 noundef %sub.ptr.sub.i) #12
  %ip_summed.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %185 = ptrtoint ptr %ip_summed.i.i.i to i32
  call void @__asan_load2_noabort(i32 %185)
  %bf.load.i.i.i267 = load i16, ptr %ip_summed.i.i.i, align 8
  %186 = and i16 %bf.load.i.i.i267, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %186)
  %cmp.i.i.i268 = icmp eq i16 %186, 1024
  br i1 %cmp.i.i.i268, label %if.then.i.i.i, label %out_push.skb_push_rcsum.exit_crit_edge

out_push.skb_push_rcsum.exit_crit_edge:           ; preds = %out_push
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_push_rcsum.exit

if.then.i.i.i:                                    ; preds = %out_push
  call void @__sanitizer_cov_trace_pc() #14
  %187 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %data.i, align 4
  %189 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %190 = ptrtoint ptr %189 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %189, align 8
  %call.i.i.i = call i32 @csum_partial(ptr noundef %188, i32 noundef %sub.ptr.sub.i, i32 noundef 0) #12
  %add.i.i.i.i.i270 = add i32 %call.i.i.i, %191
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i.i.i270, i32 %call.i.i.i)
  %cmp.i.i.i.i.i271 = icmp ult i32 %add.i.i.i.i.i270, %call.i.i.i
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i271 to i32
  %add1.i.i.i.i.i = add i32 %add.i.i.i.i.i270, %conv.i.i.i.i.i
  %192 = ptrtoint ptr %189 to i32
  call void @__asan_store4_noabort(i32 %192)
  store i32 %add1.i.i.i.i.i, ptr %189, align 8
  br label %skb_push_rcsum.exit

skb_push_rcsum.exit:                              ; preds = %if.then.i.i.i, %out_push.skb_push_rcsum.exit_crit_edge
  %post_ct108 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 30
  %193 = ptrtoint ptr %post_ct108 to i32
  call void @__asan_load1_noabort(i32 %193)
  %bf.load109 = load i8, ptr %post_ct108, align 2
  %bf.set111 = or i8 %bf.load109, -128
  store i8 %bf.set111, ptr %post_ct108, align 2
  %194 = ptrtoint ptr %zone to i32
  call void @__asan_load2_noabort(i32 %194)
  %195 = load i16, ptr %zone, align 4
  %zone114 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 32
  %196 = ptrtoint ptr %zone114 to i32
  call void @__asan_store2_noabort(i32 %196)
  store i16 %195, ptr %zone114, align 4
  br label %out_clear

out_clear:                                        ; preds = %skb_push_rcsum.exit, %tcf_ct_handle_fragments.exit.out_clear_crit_edge
  %defrag.3 = phi i8 [ %defrag.2292, %skb_push_rcsum.exit ], [ %defrag.2, %tcf_ct_handle_fragments.exit.out_clear_crit_edge ]
  %retval1.0 = phi i32 [ %9, %skb_push_rcsum.exit ], [ 4, %tcf_ct_handle_fragments.exit.out_clear_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %defrag.3)
  %tobool115.not = icmp eq i8 %defrag.3, 0
  br i1 %tobool115.not, label %out_clear.cleanup_crit_edge, label %if.then116

out_clear.cleanup_crit_edge:                      ; preds = %out_clear
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then116:                                       ; preds = %out_clear
  call void @__sanitizer_cov_trace_pc() #14
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %197 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %len, align 4
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %199 = ptrtoint ptr %cb.i to i32
  call void @__asan_store4_noabort(i32 %199)
  store i32 %198, ptr %cb.i, align 4
  br label %cleanup

drop:                                             ; preds = %if.end96.drop_crit_edge, %tcf_ct_act_nat.exit.drop_crit_edge, %if.end36.i.drop_crit_edge, %land.lhs.true.i259.drop_crit_edge, %tcf_ct_skb_network_trim.exit.drop_crit_edge, %tcf_ct_handle_fragments.exit.drop_crit_edge, %pskb_may_pull.exit.i.i.drop_crit_edge, %if.then5.i.drop_crit_edge, %skb_protocol.exit.i.drop_crit_edge, %cleanup.thread.i.i.i.i, %do.end.i.i.i.i
  %cpu_qstats.i = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 15
  %200 = ptrtoint ptr %cpu_qstats.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %cpu_qstats.i, align 4
  %tobool.not.i274 = icmp eq ptr %201, null
  br i1 %tobool.not.i274, label %if.end.i281, label %do.body.i279, !prof !141

do.body.i279:                                     ; preds = %drop
  call void @__sanitizer_cov_trace_pc() #14
  %202 = ptrtoint ptr %201 to i32
  %203 = call i32 @llvm.read_register.i32(metadata !131) #12
  %and.i.i275 = and i32 %203, -16384
  %204 = inttoptr i32 %and.i.i275 to ptr
  %cpu.i276 = getelementptr inbounds %struct.thread_info, ptr %204, i32 0, i32 3
  %205 = ptrtoint ptr %cpu.i276 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %cpu.i276, align 4
  %arrayidx.i277 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %206
  %207 = ptrtoint ptr %arrayidx.i277 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %arrayidx.i277, align 4
  %add.i278 = add i32 %208, %202
  %209 = inttoptr i32 %add.i278 to ptr
  %drops.i.i = getelementptr inbounds %struct.gnet_stats_queue, ptr %209, i32 0, i32 2
  %210 = ptrtoint ptr %drops.i.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %drops.i.i, align 4
  %inc.i.i = add i32 %211, 1
  store i32 %inc.i.i, ptr %drops.i.i, align 4
  br label %cleanup

if.end.i281:                                      ; preds = %drop
  call void @__sanitizer_cov_trace_pc() #14
  %tcfa_lock.i280 = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 12
  call void @_raw_spin_lock(ptr noundef %tcfa_lock.i280) #12
  %drops.i10.i = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 10, i32 2
  %212 = ptrtoint ptr %drops.i10.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %drops.i10.i, align 4
  %inc.i11.i = add i32 %213, 1
  store i32 %inc.i11.i, ptr %drops.i10.i, align 4
  call void @_raw_spin_unlock(ptr noundef %tcfa_lock.i280) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end.i281, %do.body.i279, %if.then116, %out_clear.cleanup_crit_edge, %nf_ct_put.exit, %if.then30.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval1.0, %if.then116 ], [ %retval1.0, %out_clear.cleanup_crit_edge ], [ 2, %do.body.i279 ], [ 2, %if.end.i281 ], [ %9, %if.then30.cleanup_crit_edge ], [ %9, %nf_ct_put.exit ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %state) #12
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcf_ct_dump(ptr noundef %skb, ptr noundef %a, i32 noundef %bind, i32 noundef %ref) #3 align 64 {
entry:
  %opt = alloca %struct.tc_ct, align 4
  %t = alloca %struct.tcf_t, align 8
  call void @__sanitizer_cov_trace_pc() #14
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %0 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tail.i, align 8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %opt) #12
  %2 = getelementptr inbounds %struct.tc_ct, ptr %opt, i32 0, i32 1
  %3 = getelementptr inbounds %struct.tc_ct, ptr %opt, i32 0, i32 2
  %4 = getelementptr inbounds %struct.tc_ct, ptr %opt, i32 0, i32 3
  %5 = getelementptr inbounds %struct.tc_ct, ptr %opt, i32 0, i32 4
  %tcfa_index = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 3
  %6 = getelementptr inbounds i8, ptr %opt, i32 8
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %6, align 4
  %8 = ptrtoint ptr %tcfa_index to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tcfa_index, align 4
  %10 = ptrtoint ptr %opt to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %opt, align 4
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %2, align 4
  %tcfa_refcnt = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %tcfa_refcnt, i32 noundef 4) #12
  %12 = ptrtoint ptr %tcfa_refcnt to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %tcfa_refcnt, align 4
  %sub = sub i32 %13, %ref
  %14 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %sub, ptr %4, align 4
  %tcfa_bindcnt = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 5
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %tcfa_bindcnt, i32 noundef 4) #12
  %15 = ptrtoint ptr %tcfa_bindcnt to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %tcfa_bindcnt, align 4
  %sub5 = sub i32 %16, %bind
  %17 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %sub5, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %t) #12
  %18 = getelementptr inbounds %struct.tcf_t, ptr %t, i32 0, i32 1
  %19 = getelementptr inbounds %struct.tcf_t, ptr %t, i32 0, i32 2
  %20 = getelementptr inbounds %struct.tcf_t, ptr %t, i32 0, i32 3
  %tcfa_lock = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 12
  %21 = call ptr @memset(ptr %t, i32 255, i32 32)
  tail call void @_raw_spin_lock_bh(ptr noundef %tcfa_lock) #12
  %dep_map = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 12, i32 0, i32 0, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call10 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true12

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true12:                                  ; preds = %land.lhs.true
  %.b83 = load i1, ptr @tcf_ct_dump.__warned, align 1
  br i1 %.b83, label %land.lhs.true12.do.end_crit_edge, label %if.then

land.lhs.true12.do.end_crit_edge:                 ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.then:                                          ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @tcf_ct_dump.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1444, ptr noundef nonnull @.str.4) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true12.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %params = getelementptr inbounds %struct.tcf_ct, ptr %a, i32 0, i32 1
  %22 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %params, align 16
  %tcfa_action = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 6
  %24 = ptrtoint ptr %tcfa_action to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %tcfa_action, align 8
  %26 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %3, align 4
  %ct_action = getelementptr inbounds %struct.tcf_ct_params, ptr %23, i32 0, i32 8
  %call2.i = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 2, ptr noundef %ct_action) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end19, label %do.end.nla_put_failure_crit_edge

do.end.nla_put_failure_crit_edge:                 ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %nla_put_failure

if.end19:                                         ; preds = %do.end
  %27 = ptrtoint ptr %ct_action to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %ct_action, align 2
  %29 = and i16 %28, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %tobool21.not = icmp eq i16 %29, 0
  br i1 %tobool21.not, label %if.end23, label %if.end19.skip_dump_crit_edge

if.end19.skip_dump_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  br label %skip_dump

if.end23:                                         ; preds = %if.end19
  %mark = getelementptr inbounds %struct.tcf_ct_params, ptr %23, i32 0, i32 2
  %mark_mask = getelementptr inbounds %struct.tcf_ct_params, ptr %23, i32 0, i32 3
  %tobool.not.i = icmp eq ptr %mark_mask, null
  br i1 %tobool.not.i, label %if.end23.if.end.i_crit_edge, label %land.lhs.true.i

if.end23.if.end.i_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.end23
  %call.i84 = tail call ptr @memchr_inv(ptr noundef nonnull %mark_mask, i32 noundef 0, i32 noundef 4) #12
  %tobool1.not.i = icmp eq ptr %call.i84, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.if.end27_crit_edge, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

land.lhs.true.i.if.end27_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %if.end23.if.end.i_crit_edge
  %call2.i85 = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 5, i32 noundef 4, ptr noundef %mark) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i85)
  %tobool3.not.i86 = icmp eq i32 %call2.i85, 0
  br i1 %tobool3.not.i86, label %if.end5.i87, label %if.end.i.nla_put_failure_crit_edge

if.end.i.nla_put_failure_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nla_put_failure

if.end5.i87:                                      ; preds = %if.end.i
  %call7.i = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 6, i32 noundef 4, ptr noundef %mark_mask) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %if.end5.i87.if.end27_crit_edge, label %if.end5.i87.nla_put_failure_crit_edge

if.end5.i87.nla_put_failure_crit_edge:            ; preds = %if.end5.i87
  call void @__sanitizer_cov_trace_pc() #14
  br label %nla_put_failure

if.end5.i87.if.end27_crit_edge:                   ; preds = %if.end5.i87
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27

if.end27:                                         ; preds = %if.end5.i87.if.end27_crit_edge, %land.lhs.true.i.if.end27_crit_edge
  %labels = getelementptr inbounds %struct.tcf_ct_params, ptr %23, i32 0, i32 4
  %labels_mask = getelementptr inbounds %struct.tcf_ct_params, ptr %23, i32 0, i32 5
  %tobool.not.i90 = icmp eq ptr %labels_mask, null
  br i1 %tobool.not.i90, label %if.end27.if.end.i96_crit_edge, label %land.lhs.true.i93

if.end27.if.end.i96_crit_edge:                    ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i96

land.lhs.true.i93:                                ; preds = %if.end27
  %call.i91 = tail call ptr @memchr_inv(ptr noundef nonnull %labels_mask, i32 noundef 0, i32 noundef 16) #12
  %tobool1.not.i92 = icmp eq ptr %call.i91, null
  br i1 %tobool1.not.i92, label %land.lhs.true.i93.if.end32_crit_edge, label %land.lhs.true.i93.if.end.i96_crit_edge

land.lhs.true.i93.if.end.i96_crit_edge:           ; preds = %land.lhs.true.i93
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i96

land.lhs.true.i93.if.end32_crit_edge:             ; preds = %land.lhs.true.i93
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end32

if.end.i96:                                       ; preds = %land.lhs.true.i93.if.end.i96_crit_edge, %if.end27.if.end.i96_crit_edge
  %call2.i94 = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 7, i32 noundef 16, ptr noundef %labels) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i94)
  %tobool3.not.i95 = icmp eq i32 %call2.i94, 0
  br i1 %tobool3.not.i95, label %if.end5.i97, label %if.end.i96.nla_put_failure_crit_edge

if.end.i96.nla_put_failure_crit_edge:             ; preds = %if.end.i96
  call void @__sanitizer_cov_trace_pc() #14
  br label %nla_put_failure

if.end5.i97:                                      ; preds = %if.end.i96
  %call7.i98 = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 8, i32 noundef 16, ptr noundef %labels_mask) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i98)
  %tobool8.not.i99 = icmp eq i32 %call7.i98, 0
  br i1 %tobool8.not.i99, label %if.end5.i97.if.end32_crit_edge, label %if.end5.i97.nla_put_failure_crit_edge

if.end5.i97.nla_put_failure_crit_edge:            ; preds = %if.end5.i97
  call void @__sanitizer_cov_trace_pc() #14
  br label %nla_put_failure

if.end5.i97.if.end32_crit_edge:                   ; preds = %if.end5.i97
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end32

if.end32:                                         ; preds = %if.end5.i97.if.end32_crit_edge, %land.lhs.true.i93.if.end32_crit_edge
  %zone = getelementptr inbounds %struct.tcf_ct_params, ptr %23, i32 0, i32 1
  %call2.i103 = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 4, i32 noundef 2, ptr noundef %zone) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i103)
  %tobool3.not.i104 = icmp eq i32 %call2.i103, 0
  br i1 %tobool3.not.i104, label %if.end36, label %if.end32.nla_put_failure_crit_edge

if.end32.nla_put_failure_crit_edge:               ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #14
  br label %nla_put_failure

if.end36:                                         ; preds = %if.end32
  %call37 = tail call fastcc i32 @tcf_ct_dump_nat(ptr noundef %skb, ptr noundef %23)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end36.skip_dump_crit_edge, label %if.end36.nla_put_failure_crit_edge

if.end36.nla_put_failure_crit_edge:               ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #14
  br label %nla_put_failure

if.end36.skip_dump_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #14
  br label %skip_dump

skip_dump:                                        ; preds = %if.end36.skip_dump_crit_edge, %if.end19.skip_dump_crit_edge
  %call41 = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 20, ptr noundef nonnull %opt) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.end44, label %skip_dump.nla_put_failure_crit_edge

skip_dump.nla_put_failure_crit_edge:              ; preds = %skip_dump
  call void @__sanitizer_cov_trace_pc() #14
  br label %nla_put_failure

if.end44:                                         ; preds = %skip_dump
  %tcfa_tm = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %30 = load volatile i32, ptr @jiffies, align 128
  %31 = ptrtoint ptr %tcfa_tm to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %tcfa_tm, align 8
  %33 = trunc i64 %32 to i32
  %conv1.i = sub i32 %30, %33
  %call.i110 = call i32 @jiffies_to_clock_t(i32 noundef %conv1.i) #12
  %conv2.i = sext i32 %call.i110 to i64
  %34 = ptrtoint ptr %t to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %conv2.i, ptr %t, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %35 = load volatile i32, ptr @jiffies, align 128
  %lastuse.i = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 7, i32 1
  %36 = ptrtoint ptr %lastuse.i to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %lastuse.i, align 8
  %38 = trunc i64 %37 to i32
  %conv6.i = sub i32 %35, %38
  %call7.i111 = call i32 @jiffies_to_clock_t(i32 noundef %conv6.i) #12
  %conv8.i = sext i32 %call7.i111 to i64
  %39 = ptrtoint ptr %18 to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %conv8.i, ptr %18, align 8
  %firstuse.i = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 7, i32 3
  %40 = ptrtoint ptr %firstuse.i to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %firstuse.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %41)
  %tobool.not.i112 = icmp eq i64 %41, 0
  br i1 %tobool.not.i112, label %if.end44.tcf_tm_dump.exit_crit_edge, label %cond.true.i

if.end44.tcf_tm_dump.exit_crit_edge:              ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #14
  br label %tcf_tm_dump.exit

cond.true.i:                                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %42 = load volatile i32, ptr @jiffies, align 128
  %43 = trunc i64 %41 to i32
  %conv13.i = sub i32 %42, %43
  %call14.i = call i32 @jiffies_to_clock_t(i32 noundef %conv13.i) #12
  br label %tcf_tm_dump.exit

tcf_tm_dump.exit:                                 ; preds = %cond.true.i, %if.end44.tcf_tm_dump.exit_crit_edge
  %cond.i = phi i32 [ %call14.i, %cond.true.i ], [ 0, %if.end44.tcf_tm_dump.exit_crit_edge ]
  %conv15.i = sext i32 %cond.i to i64
  %44 = ptrtoint ptr %20 to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %conv15.i, ptr %20, align 8
  %expires.i = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 7, i32 2
  %45 = ptrtoint ptr %expires.i to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %expires.i, align 8
  %conv17.i = trunc i64 %46 to i32
  %call18.i = call i32 @jiffies_to_clock_t(i32 noundef %conv17.i) #12
  %conv19.i = sext i32 %call18.i to i64
  %47 = ptrtoint ptr %19 to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 %conv19.i, ptr %19, align 8
  %call46 = call i32 @nla_put_64bit(ptr noundef %skb, i32 noundef 2, i32 noundef 32, ptr noundef nonnull %t, i32 noundef 15) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.end49, label %tcf_tm_dump.exit.nla_put_failure_crit_edge

tcf_tm_dump.exit.nla_put_failure_crit_edge:       ; preds = %tcf_tm_dump.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %nla_put_failure

if.end49:                                         ; preds = %tcf_tm_dump.exit
  call void @__sanitizer_cov_trace_pc() #14
  call void @_raw_spin_unlock_bh(ptr noundef %tcfa_lock) #12
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %48 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %len, align 4
  br label %cleanup

nla_put_failure:                                  ; preds = %tcf_tm_dump.exit.nla_put_failure_crit_edge, %skip_dump.nla_put_failure_crit_edge, %if.end36.nla_put_failure_crit_edge, %if.end32.nla_put_failure_crit_edge, %if.end5.i97.nla_put_failure_crit_edge, %if.end.i96.nla_put_failure_crit_edge, %if.end5.i87.nla_put_failure_crit_edge, %if.end.i.nla_put_failure_crit_edge, %do.end.nla_put_failure_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %tcfa_lock) #12
  %tobool.not.i113 = icmp eq ptr %1, null
  br i1 %tobool.not.i113, label %nla_put_failure.cleanup_crit_edge, label %if.then.i

nla_put_failure.cleanup_crit_edge:                ; preds = %nla_put_failure
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then.i:                                        ; preds = %nla_put_failure
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %50 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %data.i, align 4
  %cmp.i = icmp ugt ptr %51, %1
  br i1 %cmp.i, label %do.end.i, label %if.then.i.if.end.i114_crit_edge, !prof !141

if.then.i.if.end.i114_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i114

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 991, i32 noundef 9, ptr noundef null) #12
  br label %if.end.i114

if.end.i114:                                      ; preds = %do.end.i, %if.then.i.if.end.i114_crit_edge
  %52 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %1 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %53 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end.i114, %nla_put_failure.cleanup_crit_edge, %if.end49
  %retval.0 = phi i32 [ %49, %if.end49 ], [ -1, %nla_put_failure.cleanup_crit_edge ], [ -1, %if.end.i114 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %t) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %opt) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tcf_ct_cleanup(ptr nocapture noundef readonly %a) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %params1 = getelementptr inbounds %struct.tcf_ct, ptr %a, i32 0, i32 1
  %0 = ptrtoint ptr %params1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %params1, align 16
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %rcu = getelementptr inbounds %struct.tcf_ct_params, ptr %1, i32 0, i32 9
  tail call void @call_rcu(ptr noundef %rcu, ptr noundef nonnull @tcf_ct_params_free) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcf_ct_search(ptr noundef %net, ptr noundef %a, i32 noundef %index) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @ct_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0)
  %call1 = tail call i32 @tcf_idr_search(ptr noundef %call, ptr noundef %a, i32 noundef %index) #12
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcf_ct_init(ptr noundef %net, ptr noundef %nla, ptr noundef %est, ptr noundef %a, ptr noundef %tp, i32 noundef %flags, ptr noundef %extack) #2 align 64 {
entry:
  %tmp.i.i = alloca %struct.in6_addr, align 4
  %tmp41.i.i = alloca %struct.in6_addr, align 4
  %zone.i = alloca %struct.nf_conntrack_zone, align 4
  %tb = alloca [16 x ptr], align 4
  %goto_ch = alloca ptr, align 4
  %index = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @ct_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0)
  %and = and i32 %flags, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp ne i32 %and, 0
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %tb) #12
  %1 = call ptr @memset(ptr %tb, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %goto_ch) #12
  %2 = ptrtoint ptr %goto_ch to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %goto_ch, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %index) #12
  %3 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %index, align 4, !annotation !146
  %tobool1.not = icmp eq ptr %nla, null
  br i1 %tobool1.not, label %do.body, label %if.end4

do.body:                                          ; preds = %entry
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @tcf_ct_init.__msg) #12
  %tobool2.not = icmp eq ptr %extack, null
  br i1 %tobool2.not, label %do.body.cleanup138_crit_edge, label %if.then3

do.body.cleanup138_crit_edge:                     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup138

if.then3:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %4 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @tcf_ct_init.__msg, ptr %extack, align 4
  br label %cleanup138

if.end4:                                          ; preds = %entry
  %nla_type.i = getelementptr inbounds %struct.nlattr, ptr %nla, i32 0, i32 1
  %5 = ptrtoint ptr %nla_type.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %nla_type.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %6)
  %tobool.not.i = icmp sgt i16 %6, -1
  br i1 %tobool.not.i, label %do.body.i, label %nla_parse_nested.exit

do.body.i:                                        ; preds = %if.end4
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nla_parse_nested.__msg) #12
  %tobool1.not.i = icmp eq ptr %extack, null
  br i1 %tobool1.not.i, label %do.body.i.cleanup138_crit_edge, label %if.then2.i

do.body.i.cleanup138_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup138

if.then2.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %7 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @nla_parse_nested.__msg, ptr %extack, align 4
  %bad_attr.i = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 1
  %8 = ptrtoint ptr %bad_attr.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %nla, ptr %bad_attr.i, align 4
  %policy3.i = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 2
  %9 = ptrtoint ptr %policy3.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %policy3.i, align 4
  br label %cleanup138

nla_parse_nested.exit:                            ; preds = %if.end4
  %add.ptr.i.i = getelementptr i8, ptr %nla, i32 4
  %10 = ptrtoint ptr %nla to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %nla, align 2
  %conv.i.i = zext i16 %11 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -4
  %call6.i = call i32 @__nla_parse(ptr noundef nonnull %tb, i32 noundef 15, ptr noundef %add.ptr.i.i, i32 noundef %sub.i.i, ptr noundef nonnull @ct_policy, i32 noundef 31, ptr noundef %extack) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp = icmp slt i32 %call6.i, 0
  br i1 %cmp, label %nla_parse_nested.exit.cleanup138_crit_edge, label %if.end7

nla_parse_nested.exit.cleanup138_crit_edge:       ; preds = %nla_parse_nested.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup138

if.end7:                                          ; preds = %nla_parse_nested.exit
  %arrayidx = getelementptr inbounds [16 x ptr], ptr %tb, i32 0, i32 1
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx, align 4
  %tobool8.not = icmp eq ptr %13, null
  br i1 %tobool8.not, label %do.body10, label %if.end18

do.body10:                                        ; preds = %if.end7
  call void @do_trace_netlink_extack(ptr noundef nonnull @tcf_ct_init.__msg.17) #12
  %tobool12.not = icmp eq ptr %extack, null
  br i1 %tobool12.not, label %do.body10.cleanup138_crit_edge, label %if.then13

do.body10.cleanup138_crit_edge:                   ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup138

if.then13:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #14
  %14 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @tcf_ct_init.__msg.17, ptr %extack, align 4
  br label %cleanup138

if.end18:                                         ; preds = %if.end7
  %add.ptr.i = getelementptr i8, ptr %13, i32 4
  %15 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %add.ptr.i, align 4
  %17 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %index, align 4
  %and.lobit = lshr exact i32 %and, 17
  %call23 = call i32 @tcf_idr_check_alloc(ptr noundef %call, ptr noundef nonnull %index, ptr noundef %a, i32 noundef %and.lobit) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp24 = icmp slt i32 %call23, 0
  br i1 %cmp24, label %if.end18.cleanup138_crit_edge, label %if.end27

if.end18.cleanup138_crit_edge:                    ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup138

if.end27:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool28.not = icmp eq i32 %call23, 0
  br i1 %tobool28.not, label %if.then29, label %if.else

if.then29:                                        ; preds = %if.end27
  %18 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %index, align 4
  %call32 = call i32 @tcf_idr_create_from_flags(ptr noundef %call, i32 noundef %19, ptr noundef %est, ptr noundef %a, ptr noundef nonnull @act_ct_ops, i32 noundef %and.lobit, i32 noundef %flags) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.then29.if.end45_crit_edge, label %if.then34

if.then29.if.end45_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end45

if.then34:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #14
  %20 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %index, align 4
  call void @tcf_idr_cleanup(ptr noundef %call, i32 noundef %21) #12
  br label %cleanup138

if.else:                                          ; preds = %if.end27
  br i1 %tobool, label %if.else.cleanup138_crit_edge, label %if.end38

if.else.cleanup138_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup138

if.end38:                                         ; preds = %if.else
  %and39 = and i32 %flags, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  br i1 %tobool40.not, label %if.then41, label %if.end38.if.end45_crit_edge

if.end38.if.end45_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end45

if.then41:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #14
  %22 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %a, align 4
  %call43 = call i32 @tcf_idr_release(ptr noundef %23, i1 noundef zeroext false) #12
  br label %cleanup138

if.end45:                                         ; preds = %if.end38.if.end45_crit_edge, %if.then29.if.end45_crit_edge
  %res.0 = phi i32 [ 0, %if.end38.if.end45_crit_edge ], [ 1, %if.then29.if.end45_crit_edge ]
  %action = getelementptr i8, ptr %13, i32 12
  %24 = ptrtoint ptr %action to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %action, align 4
  %call46 = call i32 @tcf_action_check_ctrlact(i32 noundef %25, ptr noundef %tp, ptr noundef nonnull %goto_ch, ptr noundef %extack) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %cmp47 = icmp slt i32 %call46, 0
  br i1 %cmp47, label %if.end45.cleanup_crit_edge, label %if.end50

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end50:                                         ; preds = %if.end45
  %26 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %a, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %28 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %28, i32 noundef 3520, i32 noundef 112) #15
  %tobool52.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool52.not, label %if.end50.cleanup_crit_edge, label %if.end57, !prof !141

if.end50.cleanup_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end57:                                         ; preds = %if.end50
  %29 = load i32, ptr @ct_net_id, align 4
  %call.i = call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %29) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %zone.i) #12
  %30 = getelementptr inbounds %struct.nf_conntrack_zone, ptr %zone.i, i32 0, i32 1
  %31 = getelementptr inbounds %struct.nf_conntrack_zone, ptr %zone.i, i32 0, i32 2
  %zone1.i = getelementptr inbounds %struct.tcf_ct_params, ptr %call7.i.i, i32 0, i32 1
  %32 = ptrtoint ptr %zone.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -1, ptr %zone.i, align 4
  %33 = ptrtoint ptr %zone1.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 0, ptr %zone1.i, align 4
  %ct_action.i = getelementptr inbounds %struct.tcf_ct_params, ptr %call7.i.i, i32 0, i32 8
  %arrayidx.i.i = getelementptr inbounds ptr, ptr %tb, i32 3
  %34 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %35, null
  br i1 %tobool.not.i.i, label %if.end57.tcf_ct_set_key_val.exit.i_crit_edge, label %if.end.i.i

if.end57.tcf_ct_set_key_val.exit.i_crit_edge:     ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #14
  br label %tcf_ct_set_key_val.exit.i

if.end.i.i:                                       ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i = call i32 @nla_memcpy(ptr noundef %ct_action.i, ptr noundef nonnull %35, i32 noundef 2) #12
  br label %tcf_ct_set_key_val.exit.i

tcf_ct_set_key_val.exit.i:                        ; preds = %if.end.i.i, %if.end57.tcf_ct_set_key_val.exit.i_crit_edge
  %36 = ptrtoint ptr %ct_action.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %ct_action.i, align 2
  %38 = and i16 %37, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %38)
  %tobool.not.i196 = icmp eq i16 %38, 0
  br i1 %tobool.not.i196, label %if.end.i, label %tcf_ct_set_key_val.exit.i.if.end62_crit_edge

tcf_ct_set_key_val.exit.i.if.end62_crit_edge:     ; preds = %tcf_ct_set_key_val.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end62

if.end.i:                                         ; preds = %tcf_ct_set_key_val.exit.i
  %conv.i.i197 = zext i16 %37 to i32
  %and.i.i = and i32 %conv.i.i197, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i1.i = icmp eq i32 %and.i.i, 0
  %and3.i.i = and i32 %conv.i.i197, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i.i)
  %tobool4.not.i.i = icmp eq i32 %and3.i.i, 0
  %or.cond1.i.i = or i1 %tobool.not.i1.i, %tobool4.not.i.i
  br i1 %or.cond1.i.i, label %if.end.i.if.end6.i_crit_edge, label %if.end6.i.i

if.end.i.if.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6.i

if.end6.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %and3.i.i)
  %.not.i.i = icmp eq i32 %and3.i.i, 48
  br i1 %.not.i.i, label %do.body.i.i, label %if.end19.i.i

do.body.i.i:                                      ; preds = %if.end6.i.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @tcf_ct_fill_params_nat.__msg) #12
  %tobool16.not.i.i = icmp eq ptr %extack, null
  br i1 %tobool16.not.i.i, label %do.body.i.i.tcf_ct_fill_params.exit.thread_crit_edge, label %do.body.i.i.tcf_ct_fill_params.exit.thread.sink.split_crit_edge

do.body.i.i.tcf_ct_fill_params.exit.thread.sink.split_crit_edge: ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tcf_ct_fill_params.exit.thread.sink.split

do.body.i.i.tcf_ct_fill_params.exit.thread_crit_edge: ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tcf_ct_fill_params.exit.thread

if.end19.i.i:                                     ; preds = %if.end6.i.i
  %range20.i.i = getelementptr inbounds %struct.tcf_ct_params, ptr %call7.i.i, i32 0, i32 6
  %arrayidx.i2.i = getelementptr inbounds ptr, ptr %tb, i32 9
  %39 = ptrtoint ptr %arrayidx.i2.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx.i2.i, align 4
  %tobool21.not.i.i = icmp eq ptr %40, null
  br i1 %tobool21.not.i.i, label %if.else.i.i, label %if.then22.i.i

if.then22.i.i:                                    ; preds = %if.end19.i.i
  %arrayidx23.i.i = getelementptr inbounds ptr, ptr %tb, i32 10
  %41 = ptrtoint ptr %arrayidx23.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx23.i.i, align 4
  %ipv4_range.i.i = getelementptr inbounds %struct.tcf_ct_params, ptr %call7.i.i, i32 0, i32 7
  %43 = ptrtoint ptr %ipv4_range.i.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 1, ptr %ipv4_range.i.i, align 4
  %44 = ptrtoint ptr %range20.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %range20.i.i, align 8
  %or.i3.i = or i32 %45, 1
  store i32 %or.i3.i, ptr %range20.i.i, align 8
  %add.ptr.i.i.i.i = getelementptr i8, ptr %40, i32 4
  %46 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %add.ptr.i.i.i.i, align 4
  %min_addr.i.i = getelementptr inbounds %struct.tcf_ct_params, ptr %call7.i.i, i32 0, i32 6, i32 1
  %48 = ptrtoint ptr %min_addr.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %min_addr.i.i, align 4
  %tobool25.not.i.i = icmp eq ptr %42, null
  br i1 %tobool25.not.i.i, label %if.then22.i.i.cond.end.i.i_crit_edge, label %cond.true.i.i

if.then22.i.i.cond.end.i.i_crit_edge:             ; preds = %if.then22.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end.i.i

cond.true.i.i:                                    ; preds = %if.then22.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i.i2.i.i = getelementptr i8, ptr %42, i32 4
  %49 = ptrtoint ptr %add.ptr.i.i2.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %add.ptr.i.i2.i.i, align 4
  br label %cond.end.i.i

cond.end.i.i:                                     ; preds = %cond.true.i.i, %if.then22.i.i.cond.end.i.i_crit_edge
  %cond.i.i = phi i32 [ %50, %cond.true.i.i ], [ %47, %if.then22.i.i.cond.end.i.i_crit_edge ]
  %max_addr.i.i = getelementptr inbounds %struct.tcf_ct_params, ptr %call7.i.i, i32 0, i32 6, i32 2
  %51 = ptrtoint ptr %max_addr.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %cond.i.i, ptr %max_addr.i.i, align 4
  br label %if.end46.i.i

if.else.i.i:                                      ; preds = %if.end19.i.i
  %arrayidx28.i.i = getelementptr inbounds ptr, ptr %tb, i32 11
  %52 = ptrtoint ptr %arrayidx28.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx28.i.i, align 4
  %tobool29.not.i.i = icmp eq ptr %53, null
  br i1 %tobool29.not.i.i, label %if.else.i.i.if.end46.i.i_crit_edge, label %if.then30.i.i

if.else.i.i.if.end46.i.i_crit_edge:               ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end46.i.i

if.then30.i.i:                                    ; preds = %if.else.i.i
  %arrayidx32.i.i = getelementptr inbounds ptr, ptr %tb, i32 12
  %54 = ptrtoint ptr %arrayidx32.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx32.i.i, align 4
  %ipv4_range33.i.i = getelementptr inbounds %struct.tcf_ct_params, ptr %call7.i.i, i32 0, i32 7
  %56 = ptrtoint ptr %ipv4_range33.i.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 0, ptr %ipv4_range33.i.i, align 4
  %57 = ptrtoint ptr %range20.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %range20.i.i, align 8
  %or35.i.i = or i32 %58, 1
  store i32 %or35.i.i, ptr %range20.i.i, align 8
  %min_addr36.i.i = getelementptr inbounds %struct.tcf_ct_params, ptr %call7.i.i, i32 0, i32 6, i32 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp.i.i) #12
  %59 = call ptr @memset(ptr %tmp.i.i, i32 255, i32 16)
  %call.i.i.i = call i32 @nla_memcpy(ptr noundef nonnull %tmp.i.i, ptr noundef nonnull %53, i32 noundef 16) #12
  %60 = call ptr @memcpy(ptr %min_addr36.i.i, ptr %tmp.i.i, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp.i.i) #12
  %max_addr38.i.i = getelementptr inbounds %struct.tcf_ct_params, ptr %call7.i.i, i32 0, i32 6, i32 2
  %tobool39.not.i.i = icmp eq ptr %55, null
  br i1 %tobool39.not.i.i, label %cond.false42.i.i, label %cond.true40.i.i

cond.true40.i.i:                                  ; preds = %if.then30.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp41.i.i) #12
  %61 = call ptr @memset(ptr %tmp41.i.i, i32 255, i32 16)
  %call.i3.i.i = call i32 @nla_memcpy(ptr noundef nonnull %tmp41.i.i, ptr noundef nonnull %55, i32 noundef 16) #12
  %62 = call ptr @memcpy(ptr %max_addr38.i.i, ptr %tmp41.i.i, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp41.i.i) #12
  br label %if.end46.i.i

cond.false42.i.i:                                 ; preds = %if.then30.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %63 = call ptr @memcpy(ptr %max_addr38.i.i, ptr %min_addr36.i.i, i32 16)
  br label %if.end46.i.i

if.end46.i.i:                                     ; preds = %cond.false42.i.i, %cond.true40.i.i, %if.else.i.i.if.end46.i.i_crit_edge, %cond.end.i.i
  %arrayidx47.i.i = getelementptr inbounds ptr, ptr %tb, i32 13
  %64 = ptrtoint ptr %arrayidx47.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %arrayidx47.i.i, align 4
  %tobool48.not.i.i = icmp eq ptr %65, null
  br i1 %tobool48.not.i.i, label %if.end46.i.i.if.end6.i_crit_edge, label %if.then49.i.i

if.end46.i.i.if.end6.i_crit_edge:                 ; preds = %if.end46.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6.i

if.then49.i.i:                                    ; preds = %if.end46.i.i
  %66 = ptrtoint ptr %range20.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %range20.i.i, align 8
  %or51.i.i = or i32 %67, 2
  store i32 %or51.i.i, ptr %range20.i.i, align 8
  %add.ptr.i.i4.i.i = getelementptr i8, ptr %65, i32 4
  %68 = ptrtoint ptr %add.ptr.i.i4.i.i to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %add.ptr.i.i4.i.i, align 2
  %min_proto.i.i = getelementptr inbounds %struct.tcf_ct_params, ptr %call7.i.i, i32 0, i32 6, i32 3
  %70 = ptrtoint ptr %min_proto.i.i to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 %69, ptr %min_proto.i.i, align 4
  %arrayidx54.i.i = getelementptr inbounds ptr, ptr %tb, i32 14
  %71 = ptrtoint ptr %arrayidx54.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %arrayidx54.i.i, align 4
  %tobool55.not.i.i = icmp eq ptr %72, null
  br i1 %tobool55.not.i.i, label %if.then49.i.i.cond.end63.i.i_crit_edge, label %cond.true56.i.i

if.then49.i.i.cond.end63.i.i_crit_edge:           ; preds = %if.then49.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end63.i.i

cond.true56.i.i:                                  ; preds = %if.then49.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i.i5.i.i = getelementptr i8, ptr %72, i32 4
  %73 = ptrtoint ptr %add.ptr.i.i5.i.i to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %add.ptr.i.i5.i.i, align 2
  br label %cond.end63.i.i

cond.end63.i.i:                                   ; preds = %cond.true56.i.i, %if.then49.i.i.cond.end63.i.i_crit_edge
  %cond64.in.i.i = phi i16 [ %74, %cond.true56.i.i ], [ %69, %if.then49.i.i.cond.end63.i.i_crit_edge ]
  %max_proto.i.i = getelementptr inbounds %struct.tcf_ct_params, ptr %call7.i.i, i32 0, i32 6, i32 4
  %75 = ptrtoint ptr %max_proto.i.i to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 %cond64.in.i.i, ptr %max_proto.i.i, align 2
  br label %if.end6.i

if.end6.i:                                        ; preds = %cond.end63.i.i, %if.end46.i.i.if.end6.i_crit_edge, %if.end.i.if.end6.i_crit_edge
  %arrayidx.i = getelementptr inbounds ptr, ptr %tb, i32 5
  %76 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %arrayidx.i, align 4
  %tobool7.not.i = icmp eq ptr %77, null
  br i1 %tobool7.not.i, label %if.end6.i.if.end9.i_crit_edge, label %if.end.i7.i

if.end6.i.if.end9.i_crit_edge:                    ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9.i

if.end.i7.i:                                      ; preds = %if.end6.i
  %mark.i = getelementptr inbounds %struct.tcf_ct_params, ptr %call7.i.i, i32 0, i32 2
  %mark_mask.i = getelementptr inbounds %struct.tcf_ct_params, ptr %call7.i.i, i32 0, i32 3
  %call.i6.i = call i32 @nla_memcpy(ptr noundef %mark.i, ptr noundef nonnull %77, i32 noundef 4) #12
  %arrayidx5.i.i = getelementptr inbounds ptr, ptr %tb, i32 6
  %78 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %arrayidx5.i.i, align 4
  %tobool6.not.i.i = icmp eq ptr %79, null
  br i1 %tobool6.not.i.i, label %if.then7.i.i, label %if.else.i8.i

if.then7.i.i:                                     ; preds = %if.end.i7.i
  call void @__sanitizer_cov_trace_pc() #14
  %80 = ptrtoint ptr %mark_mask.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 -1, ptr %mark_mask.i, align 4
  br label %if.end9.i

if.else.i8.i:                                     ; preds = %if.end.i7.i
  call void @__sanitizer_cov_trace_pc() #14
  %call9.i.i = call i32 @nla_memcpy(ptr noundef nonnull %mark_mask.i, ptr noundef nonnull %79, i32 noundef 4) #12
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.else.i8.i, %if.then7.i.i, %if.end6.i.if.end9.i_crit_edge
  %arrayidx10.i = getelementptr inbounds ptr, ptr %tb, i32 7
  %81 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %arrayidx10.i, align 4
  %tobool11.not.i = icmp eq ptr %82, null
  br i1 %tobool11.not.i, label %if.end9.i.if.end21.i_crit_edge, label %if.then12.i

if.end9.i.if.end21.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21.i

if.then12.i:                                      ; preds = %if.end9.i
  %labels.i = getelementptr inbounds %struct.tc_ct_action_net, ptr %call.i, i32 0, i32 1
  %83 = ptrtoint ptr %labels.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %labels.i, align 4, !range !148
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %84)
  %tobool13.not.i = icmp eq i8 %84, 0
  br i1 %tobool13.not.i, label %do.body.i198, label %if.end.i14.i

do.body.i198:                                     ; preds = %if.then12.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @tcf_ct_fill_params.__msg) #12
  %tobool15.not.i = icmp eq ptr %extack, null
  br i1 %tobool15.not.i, label %do.body.i198.tcf_ct_fill_params.exit.thread_crit_edge, label %do.body.i198.tcf_ct_fill_params.exit.thread.sink.split_crit_edge

do.body.i198.tcf_ct_fill_params.exit.thread.sink.split_crit_edge: ; preds = %do.body.i198
  call void @__sanitizer_cov_trace_pc() #14
  br label %tcf_ct_fill_params.exit.thread.sink.split

do.body.i198.tcf_ct_fill_params.exit.thread_crit_edge: ; preds = %do.body.i198
  call void @__sanitizer_cov_trace_pc() #14
  br label %tcf_ct_fill_params.exit.thread

if.end.i14.i:                                     ; preds = %if.then12.i
  %labels19.i = getelementptr inbounds %struct.tcf_ct_params, ptr %call7.i.i, i32 0, i32 4
  %labels_mask.i = getelementptr inbounds %struct.tcf_ct_params, ptr %call7.i.i, i32 0, i32 5
  %call.i12.i = call i32 @nla_memcpy(ptr noundef %labels19.i, ptr noundef nonnull %82, i32 noundef 16) #12
  %arrayidx5.i16.i = getelementptr inbounds ptr, ptr %tb, i32 8
  %85 = ptrtoint ptr %arrayidx5.i16.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %arrayidx5.i16.i, align 4
  %tobool6.not.i17.i = icmp eq ptr %86, null
  br i1 %tobool6.not.i17.i, label %if.then7.i18.i, label %if.else.i20.i

if.then7.i18.i:                                   ; preds = %if.end.i14.i
  call void @__sanitizer_cov_trace_pc() #14
  %87 = call ptr @memset(ptr %labels_mask.i, i32 255, i32 16)
  br label %if.end21.i

if.else.i20.i:                                    ; preds = %if.end.i14.i
  call void @__sanitizer_cov_trace_pc() #14
  %call9.i19.i = call i32 @nla_memcpy(ptr noundef nonnull %labels_mask.i, ptr noundef nonnull %86, i32 noundef 16) #12
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.else.i20.i, %if.then7.i18.i, %if.end9.i.if.end21.i_crit_edge
  %arrayidx22.i = getelementptr inbounds ptr, ptr %tb, i32 4
  %88 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %arrayidx22.i, align 4
  %tobool23.not.i = icmp eq ptr %89, null
  br i1 %tobool23.not.i, label %if.end21.i.if.end26.i_crit_edge, label %tcf_ct_set_key_val.exit26.i

if.end21.i.if.end26.i_crit_edge:                  ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26.i

tcf_ct_set_key_val.exit26.i:                      ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i24.i = call i32 @nla_memcpy(ptr noundef %zone1.i, ptr noundef nonnull %89, i32 noundef 2) #12
  br label %if.end26.i

if.end26.i:                                       ; preds = %tcf_ct_set_key_val.exit26.i, %if.end21.i.if.end26.i_crit_edge
  %90 = ptrtoint ptr %zone1.i to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %zone1.i, align 4
  %92 = ptrtoint ptr %zone.i to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 %91, ptr %zone.i, align 4
  %93 = ptrtoint ptr %30 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 0, ptr %30, align 2
  %94 = ptrtoint ptr %31 to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 3, ptr %31, align 1
  %call29.i = call ptr @nf_ct_tmpl_alloc(ptr noundef %net, ptr noundef nonnull %zone.i, i32 noundef 3264) #12
  %tobool30.not.i = icmp eq ptr %call29.i, null
  br i1 %tobool30.not.i, label %do.body32.i, label %if.end40.i

do.body32.i:                                      ; preds = %if.end26.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @tcf_ct_fill_params.__msg.19) #12
  %tobool34.not.i = icmp eq ptr %extack, null
  br i1 %tobool34.not.i, label %do.body32.i.tcf_ct_fill_params.exit.thread_crit_edge, label %do.body32.i.tcf_ct_fill_params.exit.thread.sink.split_crit_edge

do.body32.i.tcf_ct_fill_params.exit.thread.sink.split_crit_edge: ; preds = %do.body32.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tcf_ct_fill_params.exit.thread.sink.split

do.body32.i.tcf_ct_fill_params.exit.thread_crit_edge: ; preds = %do.body32.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tcf_ct_fill_params.exit.thread

if.end40.i:                                       ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #14
  %status.i = getelementptr inbounds %struct.nf_conn, ptr %call29.i, i32 0, i32 5
  %95 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %status.i, align 4
  %or.i.i = or i32 %96, 8
  store i32 %or.i.i, ptr %status.i, align 4
  %97 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %call29.i, ptr %call7.i.i, align 8
  br label %if.end62

tcf_ct_fill_params.exit.thread.sink.split:        ; preds = %do.body32.i.tcf_ct_fill_params.exit.thread.sink.split_crit_edge, %do.body.i198.tcf_ct_fill_params.exit.thread.sink.split_crit_edge, %do.body.i.i.tcf_ct_fill_params.exit.thread.sink.split_crit_edge
  %tcf_ct_fill_params.__msg.sink = phi ptr [ @tcf_ct_fill_params_nat.__msg, %do.body.i.i.tcf_ct_fill_params.exit.thread.sink.split_crit_edge ], [ @tcf_ct_fill_params.__msg, %do.body.i198.tcf_ct_fill_params.exit.thread.sink.split_crit_edge ], [ @tcf_ct_fill_params.__msg.19, %do.body32.i.tcf_ct_fill_params.exit.thread.sink.split_crit_edge ]
  %retval.0.i199.ph.ph = phi i32 [ -95, %do.body.i.i.tcf_ct_fill_params.exit.thread.sink.split_crit_edge ], [ -95, %do.body.i198.tcf_ct_fill_params.exit.thread.sink.split_crit_edge ], [ -12, %do.body32.i.tcf_ct_fill_params.exit.thread.sink.split_crit_edge ]
  %98 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %tcf_ct_fill_params.__msg.sink, ptr %extack, align 4
  br label %tcf_ct_fill_params.exit.thread

tcf_ct_fill_params.exit.thread:                   ; preds = %tcf_ct_fill_params.exit.thread.sink.split, %do.body32.i.tcf_ct_fill_params.exit.thread_crit_edge, %do.body.i198.tcf_ct_fill_params.exit.thread_crit_edge, %do.body.i.i.tcf_ct_fill_params.exit.thread_crit_edge
  %retval.0.i199.ph = phi i32 [ -95, %do.body.i.i.tcf_ct_fill_params.exit.thread_crit_edge ], [ -12, %do.body32.i.tcf_ct_fill_params.exit.thread_crit_edge ], [ -95, %do.body.i198.tcf_ct_fill_params.exit.thread_crit_edge ], [ %retval.0.i199.ph.ph, %tcf_ct_fill_params.exit.thread.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %zone.i) #12
  br label %cleanup

if.end62:                                         ; preds = %if.end40.i, %tcf_ct_set_key_val.exit.i.if.end62_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %zone.i) #12
  %call63 = call fastcc i32 @tcf_ct_flow_table_get(ptr noundef nonnull %call7.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %if.end66, label %if.end62.cleanup_crit_edge

if.end62.cleanup_crit_edge:                       ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end66:                                         ; preds = %if.end62
  %tcfa_lock = getelementptr inbounds %struct.tc_action, ptr %27, i32 0, i32 12
  call void @_raw_spin_lock_bh(ptr noundef %tcfa_lock) #12
  %99 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %a, align 4
  %101 = ptrtoint ptr %action to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %action, align 4
  %103 = ptrtoint ptr %goto_ch to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %goto_ch, align 4
  %call68 = call ptr @tcf_action_set_ctrlact(ptr noundef %100, i32 noundef %102, ptr noundef %104) #12
  %105 = ptrtoint ptr %goto_ch to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %call68, ptr %goto_ch, align 4
  %dep_map = getelementptr inbounds %struct.tc_action, ptr %27, i32 0, i32 12, i32 0, i32 0, i32 4
  %call.i200 = call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i200)
  %tobool73.not = icmp eq i32 %call.i200, 0
  br i1 %tobool73.not, label %land.lhs.true, label %if.end66.do.end81_crit_edge

if.end66.do.end81_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end81

land.lhs.true:                                    ; preds = %if.end66
  %call74 = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %land.lhs.true.do.end81_crit_edge, label %land.lhs.true76

land.lhs.true.do.end81_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end81

land.lhs.true76:                                  ; preds = %land.lhs.true
  %.b195 = load i1, ptr @tcf_ct_init.__warned, align 1
  br i1 %.b195, label %land.lhs.true76.do.end81_crit_edge, label %if.then78

land.lhs.true76.do.end81_crit_edge:               ; preds = %land.lhs.true76
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end81

if.then78:                                        ; preds = %land.lhs.true76
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @tcf_ct_init.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1337, ptr noundef nonnull @.str.4) #12
  br label %do.end81

do.end81:                                         ; preds = %if.then78, %land.lhs.true76.do.end81_crit_edge, %land.lhs.true.do.end81_crit_edge, %if.end66.do.end81_crit_edge
  %params82 = getelementptr inbounds %struct.tcf_ct, ptr %27, i32 0, i32 1
  %106 = ptrtoint ptr %params82 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %params82, align 16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !149
  %108 = ptrtoint ptr %params82 to i32
  call void @__asan_store4_noabort(i32 %108)
  store volatile ptr %call7.i.i, ptr %params82, align 16
  call void @_raw_spin_unlock_bh(ptr noundef %tcfa_lock) #12
  %109 = ptrtoint ptr %goto_ch to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %goto_ch, align 4
  %tobool127.not = icmp eq ptr %110, null
  br i1 %tobool127.not, label %do.end81.if.end129_crit_edge, label %if.then128

do.end81.if.end129_crit_edge:                     ; preds = %do.end81
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end129

if.then128:                                       ; preds = %do.end81
  call void @__sanitizer_cov_trace_pc() #14
  call void @tcf_chain_put_by_act(ptr noundef nonnull %110) #12
  br label %if.end129

if.end129:                                        ; preds = %if.then128, %do.end81.if.end129_crit_edge
  %tobool130.not = icmp eq ptr %107, null
  br i1 %tobool130.not, label %if.end129.cleanup138_crit_edge, label %if.then131

if.end129.cleanup138_crit_edge:                   ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup138

if.then131:                                       ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #14
  %rcu = getelementptr inbounds %struct.tcf_ct_params, ptr %107, i32 0, i32 9
  call void @call_rcu(ptr noundef %rcu, ptr noundef nonnull @tcf_ct_params_free) #12
  br label %cleanup138

cleanup:                                          ; preds = %if.end62.cleanup_crit_edge, %tcf_ct_fill_params.exit.thread, %if.end50.cleanup_crit_edge, %if.end45.cleanup_crit_edge
  %params.0 = phi ptr [ null, %if.end45.cleanup_crit_edge ], [ %call7.i.i, %if.end62.cleanup_crit_edge ], [ null, %if.end50.cleanup_crit_edge ], [ %call7.i.i, %tcf_ct_fill_params.exit.thread ]
  %err.0 = phi i32 [ %call46, %if.end45.cleanup_crit_edge ], [ %call63, %if.end62.cleanup_crit_edge ], [ -12, %if.end50.cleanup_crit_edge ], [ %retval.0.i199.ph, %tcf_ct_fill_params.exit.thread ]
  %111 = ptrtoint ptr %goto_ch to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %goto_ch, align 4
  %tobool133.not = icmp eq ptr %112, null
  br i1 %tobool133.not, label %cleanup.if.end135_crit_edge, label %if.then134

cleanup.if.end135_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end135

if.then134:                                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  call void @tcf_chain_put_by_act(ptr noundef nonnull %112) #12
  br label %if.end135

if.end135:                                        ; preds = %if.then134, %cleanup.if.end135_crit_edge
  call void @kfree(ptr noundef %params.0) #12
  %113 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %a, align 4
  %call137 = call i32 @tcf_idr_release(ptr noundef %114, i1 noundef zeroext %tobool) #12
  br label %cleanup138

cleanup138:                                       ; preds = %if.end135, %if.then131, %if.end129.cleanup138_crit_edge, %if.then41, %if.else.cleanup138_crit_edge, %if.then34, %if.end18.cleanup138_crit_edge, %if.then13, %do.body10.cleanup138_crit_edge, %nla_parse_nested.exit.cleanup138_crit_edge, %if.then2.i, %do.body.i.cleanup138_crit_edge, %if.then3, %do.body.cleanup138_crit_edge
  %retval.0 = phi i32 [ %err.0, %if.end135 ], [ -17, %if.then41 ], [ %call32, %if.then34 ], [ -22, %if.then3 ], [ -22, %do.body.cleanup138_crit_edge ], [ %call6.i, %nla_parse_nested.exit.cleanup138_crit_edge ], [ -22, %if.then13 ], [ -22, %do.body10.cleanup138_crit_edge ], [ %call23, %if.end18.cleanup138_crit_edge ], [ 0, %if.else.cleanup138_crit_edge ], [ %res.0, %if.then131 ], [ %res.0, %if.end129.cleanup138_crit_edge ], [ -22, %if.then2.i ], [ -22, %do.body.i.cleanup138_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %index) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %goto_ch) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %tb) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcf_ct_walker(ptr noundef %net, ptr noundef %skb, ptr noundef %cb, i32 noundef %type, ptr noundef %ops, ptr noundef %extack) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @ct_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0)
  %call1 = tail call i32 @tcf_generic_walker(ptr noundef %call, ptr noundef %skb, ptr noundef %cb, i32 noundef %type, ptr noundef %ops, ptr noundef %extack) #12
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tcf_stats_update(ptr noundef %a, i64 noundef %bytes, i64 noundef %packets, i64 noundef %drops, i64 noundef %lastuse, i1 noundef zeroext %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @tcf_action_update_stats(ptr noundef %a, i64 noundef %bytes, i64 noundef %packets, i64 noundef %drops, i1 noundef zeroext %hw) #12
  %lastuse1 = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %lastuse1 to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %lastuse1, align 8
  %2 = tail call i64 @llvm.umax.i64(i64 %1, i64 %lastuse)
  %3 = ptrtoint ptr %lastuse1 to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %2, ptr %lastuse1, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcf_ct_offload_act_setup(ptr noundef %act, ptr nocapture noundef writeonly %entry_data, ptr nocapture noundef writeonly %index_inc, i1 noundef zeroext %bind) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %bind, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %0 = ptrtoint ptr %entry_data to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 23, ptr %entry_data, align 8
  %dep_map.i = getelementptr inbounds %struct.tc_action, ptr %act, i32 0, i32 12, i32 0, i32 0, i32 4
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.then.tcf_ct_action.exit_crit_edge

if.then.tcf_ct_action.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %tcf_ct_action.exit

land.lhs.true.i:                                  ; preds = %if.then
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.tcf_ct_action.exit_crit_edge, label %land.lhs.true3.i

land.lhs.true.i.tcf_ct_action.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tcf_ct_action.exit

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %.b6.i = load i1, ptr @tcf_ct_action.__warned, align 1
  br i1 %.b6.i, label %land.lhs.true3.i.tcf_ct_action.exit_crit_edge, label %if.then.i

land.lhs.true3.i.tcf_ct_action.exit_crit_edge:    ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tcf_ct_action.exit

if.then.i:                                        ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @tcf_ct_action.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.25, i32 noundef 51, ptr noundef nonnull @.str.4) #12
  br label %tcf_ct_action.exit

tcf_ct_action.exit:                               ; preds = %if.then.i, %land.lhs.true3.i.tcf_ct_action.exit_crit_edge, %land.lhs.true.i.tcf_ct_action.exit_crit_edge, %if.then.tcf_ct_action.exit_crit_edge
  %params.i = getelementptr inbounds %struct.tcf_ct, ptr %act, i32 0, i32 1
  %1 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %params.i, align 16
  %ct_action.i = getelementptr inbounds %struct.tcf_ct_params, ptr %2, i32 0, i32 8
  %3 = ptrtoint ptr %ct_action.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %ct_action.i, align 2
  %conv.i = zext i16 %4 to i32
  %5 = getelementptr inbounds %struct.flow_action_entry, ptr %entry_data, i32 0, i32 5
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv.i, ptr %5, align 8
  %call.i.i12 = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i12)
  %tobool.not.i13 = icmp eq i32 %call.i.i12, 0
  br i1 %tobool.not.i13, label %land.lhs.true.i16, label %tcf_ct_action.exit.tcf_ct_zone.exit_crit_edge

tcf_ct_action.exit.tcf_ct_zone.exit_crit_edge:    ; preds = %tcf_ct_action.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %tcf_ct_zone.exit

land.lhs.true.i16:                                ; preds = %tcf_ct_action.exit
  %call1.i14 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i14)
  %tobool2.not.i15 = icmp eq i32 %call1.i14, 0
  br i1 %tobool2.not.i15, label %land.lhs.true.i16.tcf_ct_zone.exit_crit_edge, label %land.lhs.true3.i18

land.lhs.true.i16.tcf_ct_zone.exit_crit_edge:     ; preds = %land.lhs.true.i16
  call void @__sanitizer_cov_trace_pc() #14
  br label %tcf_ct_zone.exit

land.lhs.true3.i18:                               ; preds = %land.lhs.true.i16
  %.b6.i17 = load i1, ptr @tcf_ct_zone.__warned, align 1
  br i1 %.b6.i17, label %land.lhs.true3.i18.tcf_ct_zone.exit_crit_edge, label %if.then.i19

land.lhs.true3.i18.tcf_ct_zone.exit_crit_edge:    ; preds = %land.lhs.true3.i18
  call void @__sanitizer_cov_trace_pc() #14
  br label %tcf_ct_zone.exit

if.then.i19:                                      ; preds = %land.lhs.true3.i18
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @tcf_ct_zone.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.25, i32 noundef 46, ptr noundef nonnull @.str.4) #12
  br label %tcf_ct_zone.exit

tcf_ct_zone.exit:                                 ; preds = %if.then.i19, %land.lhs.true3.i18.tcf_ct_zone.exit_crit_edge, %land.lhs.true.i16.tcf_ct_zone.exit_crit_edge, %tcf_ct_action.exit.tcf_ct_zone.exit_crit_edge
  %7 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %params.i, align 16
  %zone.i = getelementptr inbounds %struct.tcf_ct_params, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %zone.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %zone.i, align 4
  %zone = getelementptr inbounds %struct.anon.200, ptr %5, i32 0, i32 1
  %11 = ptrtoint ptr %zone to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %zone, align 4
  %call.i.i22 = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i22)
  %tobool.not.i23 = icmp eq i32 %call.i.i22, 0
  br i1 %tobool.not.i23, label %land.lhs.true.i26, label %tcf_ct_zone.exit.tcf_ct_ft.exit_crit_edge

tcf_ct_zone.exit.tcf_ct_ft.exit_crit_edge:        ; preds = %tcf_ct_zone.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %tcf_ct_ft.exit

land.lhs.true.i26:                                ; preds = %tcf_ct_zone.exit
  %call1.i24 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i24)
  %tobool2.not.i25 = icmp eq i32 %call1.i24, 0
  br i1 %tobool2.not.i25, label %land.lhs.true.i26.tcf_ct_ft.exit_crit_edge, label %land.lhs.true3.i28

land.lhs.true.i26.tcf_ct_ft.exit_crit_edge:       ; preds = %land.lhs.true.i26
  call void @__sanitizer_cov_trace_pc() #14
  br label %tcf_ct_ft.exit

land.lhs.true3.i28:                               ; preds = %land.lhs.true.i26
  %.b6.i27 = load i1, ptr @tcf_ct_ft.__warned, align 1
  br i1 %.b6.i27, label %land.lhs.true3.i28.tcf_ct_ft.exit_crit_edge, label %if.then.i29

land.lhs.true3.i28.tcf_ct_ft.exit_crit_edge:      ; preds = %land.lhs.true3.i28
  call void @__sanitizer_cov_trace_pc() #14
  br label %tcf_ct_ft.exit

if.then.i29:                                      ; preds = %land.lhs.true3.i28
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @tcf_ct_ft.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.25, i32 noundef 56, ptr noundef nonnull @.str.4) #12
  br label %tcf_ct_ft.exit

tcf_ct_ft.exit:                                   ; preds = %if.then.i29, %land.lhs.true3.i28.tcf_ct_ft.exit_crit_edge, %land.lhs.true.i26.tcf_ct_ft.exit_crit_edge, %tcf_ct_zone.exit.tcf_ct_ft.exit_crit_edge
  %12 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %params.i, align 16
  %nf_ft.i = getelementptr inbounds %struct.tcf_ct_params, ptr %13, i32 0, i32 11
  %14 = ptrtoint ptr %nf_ft.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %nf_ft.i, align 4
  %flow_table = getelementptr inbounds %struct.flow_action_entry, ptr %entry_data, i32 0, i32 5, i32 0, i32 1
  %16 = ptrtoint ptr %flow_table to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %flow_table, align 8
  %17 = ptrtoint ptr %index_inc to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %index_inc, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %id4 = getelementptr inbounds %struct.flow_offload_action, ptr %entry_data, i32 0, i32 2
  %18 = ptrtoint ptr %id4 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 23, ptr %id4, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %tcf_ct_ft.exit
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_bh_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull_rcsum(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @tcf_ct_flow_table_lookup(ptr nocapture noundef readonly %p, ptr noundef %skb, i8 noundef zeroext %family) unnamed_addr #2 align 64 {
entry:
  %tuple = alloca %struct.flow_offload_tuple, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ct_ft = getelementptr inbounds %struct.tcf_ct_params, ptr %p, i32 0, i32 10
  %0 = ptrtoint ptr %ct_ft to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ct_ft, align 4
  %nf_ft1 = getelementptr inbounds %struct.tcf_ct_flow_table, ptr %1, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 76, ptr nonnull %tuple) #12
  %2 = call ptr @memset(ptr %tuple, i32 0, i32 76)
  %3 = zext i8 %family to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.36)
  switch i8 %family, label %entry.cleanup_crit_edge [
    i8 2, label %sw.bb
    i8 10, label %sw.bb2
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %head.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %4 = ptrtoint ptr %head.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %head.i.i.i.i, align 8
  %network_header.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %6 = ptrtoint ptr %network_header.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %network_header.i.i.i.i, align 4
  %conv.i.i.i.i = zext i16 %7 to i32
  %add.ptr.i.i.i.i = getelementptr i8, ptr %5, i32 %conv.i.i.i.i
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %8 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %add.ptr.i.i.i.i to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %9 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %add.i.i = add i32 %sub.ptr.sub.i.i.i, 20
  %len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %10 = ptrtoint ptr %len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len.i.i.i.i, align 4
  %data_len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %12 = ptrtoint ptr %data_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %data_len.i.i.i.i, align 8
  %sub.i.i.i.i = sub i32 %11, %13
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %sub.i.i.i.i)
  %cmp.not.i.i.i = icmp ugt i32 %add.i.i, %sub.i.i.i.i
  br i1 %cmp.not.i.i.i, label %if.end.i.i.i, label %sw.bb.if.end.i_crit_edge, !prof !141

sw.bb.if.end.i_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.end.i.i.i:                                     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %add.i.i)
  %cmp3.i.i.i = icmp ult i32 %11, %add.i.i
  br i1 %cmp3.i.i.i, label %if.end.i.i.i.cleanup_crit_edge, label %pskb_network_may_pull.exit.i, !prof !141

if.end.i.i.i.cleanup_crit_edge:                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

pskb_network_may_pull.exit.i:                     ; preds = %if.end.i.i.i
  %sub.i.i.i = sub i32 %add.i.i, %sub.i.i.i.i
  %call13.i.i.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i.i.i) #12
  %cmp14.i.i.not.i = icmp eq ptr %call13.i.i.i, null
  br i1 %cmp14.i.i.not.i, label %pskb_network_may_pull.exit.i.cleanup_crit_edge, label %pskb_network_may_pull.exit.i.if.end.i_crit_edge

pskb_network_may_pull.exit.i.if.end.i_crit_edge:  ; preds = %pskb_network_may_pull.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

pskb_network_may_pull.exit.i.cleanup_crit_edge:   ; preds = %pskb_network_may_pull.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i:                                         ; preds = %pskb_network_may_pull.exit.i.if.end.i_crit_edge, %sw.bb.if.end.i_crit_edge
  %14 = ptrtoint ptr %head.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %head.i.i.i.i, align 8
  %16 = ptrtoint ptr %network_header.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %network_header.i.i.i.i, align 4
  %conv.i.i.i = zext i16 %17 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %15, i32 %conv.i.i.i
  %18 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load.i = load i8, ptr %add.ptr.i.i.i, align 4
  %frag_off.i.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i, i32 0, i32 4
  %19 = ptrtoint ptr %frag_off.i.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %frag_off.i.i, align 2
  %21 = and i16 %20, 16383
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %cmp.i.not.i = icmp eq i16 %21, 0
  %22 = and i8 %bf.load.i, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %22)
  %cmp.not.i = icmp eq i8 %22, 5
  %or.cond.i = select i1 %cmp.i.not.i, i1 %cmp.not.i, i1 false
  br i1 %or.cond.i, label %if.end8.i, label %if.end.i.cleanup_crit_edge, !prof !150

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end8.i:                                        ; preds = %if.end.i
  %protocol.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i, i32 0, i32 6
  %23 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %protocol.i, align 1
  %25 = zext i8 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.37)
  switch i8 %24, label %if.end8.i.cleanup_crit_edge [
    i8 6, label %if.end8.i.if.end17.i_crit_edge
    i8 17, label %if.end8.i.if.end17.i_crit_edge93
  ]

if.end8.i.if.end17.i_crit_edge93:                 ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17.i

if.end8.i.if.end17.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17.i

if.end8.i.cleanup_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end17.i:                                       ; preds = %if.end8.i.if.end17.i_crit_edge, %if.end8.i.if.end17.i_crit_edge93
  %ttl.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i, i32 0, i32 5
  %26 = ptrtoint ptr %ttl.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %ttl.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %27)
  %cmp19.i = icmp ult i8 %27, 2
  br i1 %cmp19.i, label %if.end17.i.cleanup_crit_edge, label %if.end22.i

if.end17.i.cleanup_crit_edge:                     ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end22.i:                                       ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %24)
  %cmp25.i = icmp eq i8 %24, 6
  %..i = select i1 %cmp25.i, i32 40, i32 24
  %28 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %data.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i75.i = ptrtoint ptr %add.ptr.i.i.i to i32
  %sub.ptr.rhs.cast.i.i76.i = ptrtoint ptr %29 to i32
  %sub.ptr.sub.i.i77.i = sub i32 %sub.ptr.lhs.cast.i.i75.i, %sub.ptr.rhs.cast.i.i76.i
  %add.i78.i = add i32 %sub.ptr.sub.i.i77.i, %..i
  %30 = ptrtoint ptr %len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %len.i.i.i.i, align 4
  %32 = ptrtoint ptr %data_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %data_len.i.i.i.i, align 8
  %sub.i.i.i81.i = sub i32 %31, %33
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i78.i, i32 %sub.i.i.i81.i)
  %cmp.not.i.i82.i = icmp ugt i32 %add.i78.i, %sub.i.i.i81.i
  br i1 %cmp.not.i.i82.i, label %if.end.i.i84.i, label %if.end22.i.if.end31.i_crit_edge, !prof !141

if.end22.i.if.end31.i_crit_edge:                  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end31.i

if.end.i.i84.i:                                   ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %add.i78.i)
  %cmp3.i.i83.i = icmp ult i32 %31, %add.i78.i
  br i1 %cmp3.i.i83.i, label %if.end.i.i84.i.cleanup_crit_edge, label %pskb_network_may_pull.exit91.i, !prof !141

if.end.i.i84.i.cleanup_crit_edge:                 ; preds = %if.end.i.i84.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

pskb_network_may_pull.exit91.i:                   ; preds = %if.end.i.i84.i
  %sub.i.i85.i = sub i32 %add.i78.i, %sub.i.i.i81.i
  %call13.i.i86.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i.i85.i) #12
  %cmp14.i.i87.not.i = icmp eq ptr %call13.i.i86.i, null
  br i1 %cmp14.i.i87.not.i, label %pskb_network_may_pull.exit91.i.cleanup_crit_edge, label %pskb_network_may_pull.exit91.i.if.end31.i_crit_edge

pskb_network_may_pull.exit91.i.if.end31.i_crit_edge: ; preds = %pskb_network_may_pull.exit91.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end31.i

pskb_network_may_pull.exit91.i.cleanup_crit_edge: ; preds = %pskb_network_may_pull.exit91.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end31.i:                                       ; preds = %pskb_network_may_pull.exit91.i.if.end31.i_crit_edge, %if.end22.i.if.end31.i_crit_edge
  %34 = ptrtoint ptr %head.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %head.i.i.i.i, align 8
  %36 = ptrtoint ptr %network_header.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %network_header.i.i.i.i, align 4
  %conv.i.i94.i = zext i16 %37 to i32
  %add.ptr.i.i95.i = getelementptr i8, ptr %35, i32 %conv.i.i94.i
  %protocol33.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i95.i, i32 0, i32 6
  %38 = ptrtoint ptr %protocol33.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %protocol33.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %39)
  %cmp35.i = icmp eq i8 %39, 6
  %add.ptr.i = getelementptr i8, ptr %add.ptr.i.i95.i, i32 20
  %spec.select = select i1 %cmp35.i, ptr %add.ptr.i, ptr null
  %saddr.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i95.i, i32 0, i32 8
  %40 = ptrtoint ptr %saddr.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %saddr.i, align 4
  %42 = ptrtoint ptr %tuple to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %tuple, align 4
  %daddr.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i95.i, i32 0, i32 9
  %43 = ptrtoint ptr %daddr.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %daddr.i, align 4
  %45 = getelementptr inbounds %struct.flow_offload_tuple, ptr %tuple, i32 0, i32 1
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %44, ptr %45, align 4
  %47 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %add.ptr.i, align 2
  %49 = getelementptr inbounds %struct.flow_offload_tuple, ptr %tuple, i32 0, i32 2
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %48, ptr %49, align 4
  %dest.i = getelementptr i8, ptr %add.ptr.i.i95.i, i32 22
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %head.i.i.i.i52 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %51 = ptrtoint ptr %head.i.i.i.i52 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %head.i.i.i.i52, align 8
  %network_header.i.i.i.i53 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %53 = ptrtoint ptr %network_header.i.i.i.i53 to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %network_header.i.i.i.i53, align 4
  %conv.i.i.i.i54 = zext i16 %54 to i32
  %add.ptr.i.i.i.i55 = getelementptr i8, ptr %52, i32 %conv.i.i.i.i54
  %data.i.i.i56 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %55 = ptrtoint ptr %data.i.i.i56 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %data.i.i.i56, align 4
  %sub.ptr.lhs.cast.i.i.i57 = ptrtoint ptr %add.ptr.i.i.i.i55 to i32
  %sub.ptr.rhs.cast.i.i.i58 = ptrtoint ptr %56 to i32
  %sub.ptr.sub.i.i.i59 = sub i32 %sub.ptr.lhs.cast.i.i.i57, %sub.ptr.rhs.cast.i.i.i58
  %add.i.i60 = add i32 %sub.ptr.sub.i.i.i59, 40
  %len.i.i.i.i61 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %57 = ptrtoint ptr %len.i.i.i.i61 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %len.i.i.i.i61, align 4
  %data_len.i.i.i.i62 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %59 = ptrtoint ptr %data_len.i.i.i.i62 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %data_len.i.i.i.i62, align 8
  %sub.i.i.i.i63 = sub i32 %58, %60
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i60, i32 %sub.i.i.i.i63)
  %cmp.not.i.i.i64 = icmp ugt i32 %add.i.i60, %sub.i.i.i.i63
  br i1 %cmp.not.i.i.i64, label %if.end.i.i.i66, label %sw.bb2.if.end.i73_crit_edge, !prof !141

sw.bb2.if.end.i73_crit_edge:                      ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i73

if.end.i.i.i66:                                   ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_cmp4(i32 %58, i32 %add.i.i60)
  %cmp3.i.i.i65 = icmp ult i32 %58, %add.i.i60
  br i1 %cmp3.i.i.i65, label %if.end.i.i.i66.cleanup_crit_edge, label %pskb_network_may_pull.exit.i70, !prof !141

if.end.i.i.i66.cleanup_crit_edge:                 ; preds = %if.end.i.i.i66
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

pskb_network_may_pull.exit.i70:                   ; preds = %if.end.i.i.i66
  %sub.i.i.i67 = sub i32 %add.i.i60, %sub.i.i.i.i63
  %call13.i.i.i68 = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i.i.i67) #12
  %cmp14.i.i.not.i69 = icmp eq ptr %call13.i.i.i68, null
  br i1 %cmp14.i.i.not.i69, label %pskb_network_may_pull.exit.i70.cleanup_crit_edge, label %pskb_network_may_pull.exit.i70.if.end.i73_crit_edge

pskb_network_may_pull.exit.i70.if.end.i73_crit_edge: ; preds = %pskb_network_may_pull.exit.i70
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i73

pskb_network_may_pull.exit.i70.cleanup_crit_edge: ; preds = %pskb_network_may_pull.exit.i70
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i73:                                       ; preds = %pskb_network_may_pull.exit.i70.if.end.i73_crit_edge, %sw.bb2.if.end.i73_crit_edge
  %61 = ptrtoint ptr %head.i.i.i.i52 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %head.i.i.i.i52, align 8
  %63 = ptrtoint ptr %network_header.i.i.i.i53 to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %network_header.i.i.i.i53, align 4
  %conv.i.i.i71 = zext i16 %64 to i32
  %add.ptr.i.i.i72 = getelementptr i8, ptr %62, i32 %conv.i.i.i71
  %nexthdr.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i.i72, i32 0, i32 3
  %65 = ptrtoint ptr %nexthdr.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %nexthdr.i, align 2
  %67 = zext i8 %66 to i64
  call void @__sanitizer_cov_trace_switch(i64 %67, ptr @__sancov_gen_cov_switch_values.38)
  switch i8 %66, label %if.end.i73.cleanup_crit_edge [
    i8 6, label %if.end.i73.if.end8.i74_crit_edge
    i8 17, label %if.end.i73.if.end8.i74_crit_edge94
  ]

if.end.i73.if.end8.i74_crit_edge94:               ; preds = %if.end.i73
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8.i74

if.end.i73.if.end8.i74_crit_edge:                 ; preds = %if.end.i73
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8.i74

if.end.i73.cleanup_crit_edge:                     ; preds = %if.end.i73
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end8.i74:                                      ; preds = %if.end.i73.if.end8.i74_crit_edge, %if.end.i73.if.end8.i74_crit_edge94
  %hop_limit.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i.i72, i32 0, i32 4
  %68 = ptrtoint ptr %hop_limit.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %hop_limit.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %69)
  %cmp10.i = icmp ult i8 %69, 2
  br i1 %cmp10.i, label %if.end8.i74.cleanup_crit_edge, label %if.end13.i

if.end8.i74.cleanup_crit_edge:                    ; preds = %if.end8.i74
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end13.i:                                       ; preds = %if.end8.i74
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %66)
  %cmp16.i = icmp eq i8 %66, 6
  %..i75 = select i1 %cmp16.i, i32 60, i32 44
  %70 = ptrtoint ptr %data.i.i.i56 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %data.i.i.i56, align 4
  %sub.ptr.lhs.cast.i.i62.i = ptrtoint ptr %add.ptr.i.i.i72 to i32
  %sub.ptr.rhs.cast.i.i63.i = ptrtoint ptr %71 to i32
  %sub.ptr.sub.i.i64.i = sub i32 %sub.ptr.lhs.cast.i.i62.i, %sub.ptr.rhs.cast.i.i63.i
  %add.i65.i = add i32 %sub.ptr.sub.i.i64.i, %..i75
  %72 = ptrtoint ptr %len.i.i.i.i61 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %len.i.i.i.i61, align 4
  %74 = ptrtoint ptr %data_len.i.i.i.i62 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %data_len.i.i.i.i62, align 8
  %sub.i.i.i68.i = sub i32 %73, %75
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i65.i, i32 %sub.i.i.i68.i)
  %cmp.not.i.i69.i = icmp ugt i32 %add.i65.i, %sub.i.i.i68.i
  br i1 %cmp.not.i.i69.i, label %if.end.i.i71.i, label %if.end13.i.if.end22.i76_crit_edge, !prof !141

if.end13.i.if.end22.i76_crit_edge:                ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22.i76

if.end.i.i71.i:                                   ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_cmp4(i32 %73, i32 %add.i65.i)
  %cmp3.i.i70.i = icmp ult i32 %73, %add.i65.i
  br i1 %cmp3.i.i70.i, label %if.end.i.i71.i.cleanup_crit_edge, label %pskb_network_may_pull.exit78.i, !prof !141

if.end.i.i71.i.cleanup_crit_edge:                 ; preds = %if.end.i.i71.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

pskb_network_may_pull.exit78.i:                   ; preds = %if.end.i.i71.i
  %sub.i.i72.i = sub i32 %add.i65.i, %sub.i.i.i68.i
  %call13.i.i73.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i.i72.i) #12
  %cmp14.i.i74.not.i = icmp eq ptr %call13.i.i73.i, null
  br i1 %cmp14.i.i74.not.i, label %pskb_network_may_pull.exit78.i.cleanup_crit_edge, label %pskb_network_may_pull.exit78.i.if.end22.i76_crit_edge

pskb_network_may_pull.exit78.i.if.end22.i76_crit_edge: ; preds = %pskb_network_may_pull.exit78.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22.i76

pskb_network_may_pull.exit78.i.cleanup_crit_edge: ; preds = %pskb_network_may_pull.exit78.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end22.i76:                                     ; preds = %pskb_network_may_pull.exit78.i.if.end22.i76_crit_edge, %if.end13.i.if.end22.i76_crit_edge
  %76 = ptrtoint ptr %head.i.i.i.i52 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %head.i.i.i.i52, align 8
  %78 = ptrtoint ptr %network_header.i.i.i.i53 to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %network_header.i.i.i.i53, align 4
  %conv.i.i81.i = zext i16 %79 to i32
  %add.ptr.i.i82.i = getelementptr i8, ptr %77, i32 %conv.i.i81.i
  %nexthdr24.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i82.i, i32 0, i32 3
  %80 = ptrtoint ptr %nexthdr24.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %nexthdr24.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %81)
  %cmp26.i = icmp eq i8 %81, 6
  %add.ptr.i77 = getelementptr i8, ptr %add.ptr.i.i82.i, i32 40
  %spec.select90 = select i1 %cmp26.i, ptr %add.ptr.i77, ptr null
  %saddr.i78 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i82.i, i32 0, i32 5
  %82 = call ptr @memcpy(ptr %tuple, ptr %saddr.i78, i32 16)
  %83 = getelementptr inbounds %struct.flow_offload_tuple, ptr %tuple, i32 0, i32 1
  %daddr.i79 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i82.i, i32 0, i32 6
  %84 = call ptr @memcpy(ptr %83, ptr %daddr.i79, i32 16)
  %85 = ptrtoint ptr %add.ptr.i77 to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %add.ptr.i77, align 2
  %87 = getelementptr inbounds %struct.flow_offload_tuple, ptr %tuple, i32 0, i32 2
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 %86, ptr %87, align 4
  %dest.i80 = getelementptr i8, ptr %add.ptr.i.i82.i, i32 42
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end22.i76, %if.end31.i
  %dest.i80.sink = phi ptr [ %dest.i80, %if.end22.i76 ], [ %dest.i, %if.end31.i ]
  %.sink.in = phi ptr [ %nexthdr24.i, %if.end22.i76 ], [ %protocol33.i, %if.end31.i ]
  %tcph.4 = phi ptr [ %spec.select90, %if.end22.i76 ], [ %spec.select, %if.end31.i ]
  %89 = ptrtoint ptr %dest.i80.sink to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %dest.i80.sink, align 2
  %dst_port.i81 = getelementptr inbounds %struct.flow_offload_tuple, ptr %tuple, i32 0, i32 2, i32 1
  %91 = ptrtoint ptr %dst_port.i81 to i32
  call void @__asan_store2_noabort(i32 %91)
  store i16 %90, ptr %dst_port.i81, align 2
  %l3proto.i82 = getelementptr inbounds %struct.flow_offload_tuple, ptr %tuple, i32 0, i32 4
  %92 = ptrtoint ptr %l3proto.i82 to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 %family, ptr %l3proto.i82, align 4
  %93 = ptrtoint ptr %.sink.in to i32
  call void @__asan_load1_noabort(i32 %93)
  %.sink = load i8, ptr %.sink.in, align 1
  %l4proto.i83 = getelementptr inbounds %struct.flow_offload_tuple, ptr %tuple, i32 0, i32 5
  %94 = ptrtoint ptr %l4proto.i83 to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 %.sink, ptr %l4proto.i83, align 1
  %call6 = call ptr @flow_offload_lookup(ptr noundef %nf_ft1, ptr noundef nonnull %tuple) #12
  %tobool.not = icmp eq ptr %call6, null
  br i1 %tobool.not, label %sw.epilog.cleanup_crit_edge, label %if.end8

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end8:                                          ; preds = %sw.epilog
  %dir10 = getelementptr inbounds %struct.flow_offload_tuple_rhash, ptr %call6, i32 0, i32 1, i32 8
  %95 = ptrtoint ptr %dir10 to i32
  call void @__asan_load1_noabort(i32 %95)
  %bf.load = load i8, ptr %dir10, align 2
  %bf.lshr = lshr i8 %bf.load, 6
  %conv11 = zext i8 %bf.lshr to i32
  %.neg = mul nsw i32 %conv11, -80
  %add.ptr = getelementptr i8, ptr %call6, i32 %.neg
  %ct12 = getelementptr inbounds %struct.flow_offload, ptr %add.ptr, i32 0, i32 1
  %96 = ptrtoint ptr %ct12 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %ct12, align 4
  %tobool13.not = icmp eq ptr %tcph.4, null
  br i1 %tobool13.not, label %if.end8.if.end25_crit_edge, label %land.lhs.true

if.end8.if.end25_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25

land.lhs.true:                                    ; preds = %if.end8
  %fin = getelementptr inbounds %struct.tcphdr, ptr %tcph.4, i32 0, i32 4
  %98 = ptrtoint ptr %fin to i32
  call void @__asan_load2_noabort(i32 %98)
  %bf.load14 = load i16, ptr %fin, align 4
  %99 = and i16 %bf.load14, 5
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %99)
  %.not = icmp eq i16 %99, 0
  br i1 %.not, label %land.lhs.true.if.end25_crit_edge, label %if.then24, !prof !144

land.lhs.true.if.end25_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25

if.then24:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  call void @flow_offload_teardown(ptr noundef %add.ptr) #12
  br label %cleanup

if.end25:                                         ; preds = %land.lhs.true.if.end25_crit_edge, %if.end8.if.end25_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %bf.load)
  %cmp = icmp ult i8 %bf.load, 64
  %cond = select i1 %cmp, i32 0, i32 3
  call void @flow_offload_refresh(ptr noundef %nf_ft1, ptr noundef %add.ptr) #12
  %tobool.not.i = icmp eq ptr %97, null
  br i1 %tobool.not.i, label %if.end25.nf_conntrack_get.exit_crit_edge, label %if.then.i

if.end25.nf_conntrack_get.exit_crit_edge:         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  br label %nf_conntrack_get.exit

if.then.i:                                        ; preds = %if.end25
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %97, i32 noundef 4) #12
  call void @llvm.prefetch.p0(ptr nonnull %97, i32 1, i32 3, i32 1) #12
  %100 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %97, ptr nonnull %97, i32 1, ptr nonnull elementtype(i32) %97) #12, !srcloc !147
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %100, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !141

if.then.i.if.end15.sink.split.i.i.i.i_crit_edge:  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then.i
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %101 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %101)
  %.not.i.i.i.i = icmp sgt i32 %101, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.nf_conntrack_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !144

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.nf_conntrack_get.exit_crit_edge:  ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nf_conntrack_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef nonnull %97, i32 noundef %.sink.i.i.i.i) #12
  br label %nf_conntrack_get.exit

nf_conntrack_get.exit:                            ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.nf_conntrack_get.exit_crit_edge, %if.end25.nf_conntrack_get.exit_crit_edge
  %102 = ptrtoint ptr %97 to i32
  %or.i = or i32 %cond, %102
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %tobool.not.i.i = icmp eq i32 %or.i, 0
  %slow_gro.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %103 = ptrtoint ptr %slow_gro.i.i to i32
  call void @__asan_loadN_noabort(i32 %103, i32 4)
  %bf.load.i.i = load i32, ptr %slow_gro.i.i, align 2
  %bf.load.mask.i.i = and i32 %bf.load.i.i, 4096
  %bf.shl.i.i = select i1 %tobool.not.i.i, i32 %bf.load.mask.i.i, i32 4096
  %bf.clear4.i.i = and i32 %bf.load.i.i, -4097
  %bf.set.i.i = or i32 %bf.shl.i.i, %bf.clear4.i.i
  store i32 %bf.set.i.i, ptr %slow_gro.i.i, align 2
  %_nfct.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 5
  %104 = ptrtoint ptr %_nfct.i.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %or.i, ptr %_nfct.i.i, align 8
  %flags = getelementptr inbounds %struct.tcf_ct_flow_table, ptr %1, i32 0, i32 2, i32 5
  %105 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %flags, align 4
  %and = and i32 %106, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool28.not = icmp eq i32 %and, 0
  br i1 %tobool28.not, label %nf_conntrack_get.exit.cleanup_crit_edge, label %if.then29

nf_conntrack_get.exit.cleanup_crit_edge:          ; preds = %nf_conntrack_get.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then29:                                        ; preds = %nf_conntrack_get.exit
  call void @__sanitizer_cov_trace_pc() #14
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %107 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %len, align 4
  call void @nf_ct_acct_add(ptr noundef %97, i32 noundef %conv11, i32 noundef 1, i32 noundef %108) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then29, %nf_conntrack_get.exit.cleanup_crit_edge, %if.then24, %sw.epilog.cleanup_crit_edge, %pskb_network_may_pull.exit78.i.cleanup_crit_edge, %if.end.i.i71.i.cleanup_crit_edge, %if.end8.i74.cleanup_crit_edge, %if.end.i73.cleanup_crit_edge, %pskb_network_may_pull.exit.i70.cleanup_crit_edge, %if.end.i.i.i66.cleanup_crit_edge, %pskb_network_may_pull.exit91.i.cleanup_crit_edge, %if.end.i.i84.i.cleanup_crit_edge, %if.end17.i.cleanup_crit_edge, %if.end8.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %pskb_network_may_pull.exit.i.cleanup_crit_edge, %if.end.i.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %if.then24 ], [ false, %entry.cleanup_crit_edge ], [ false, %sw.epilog.cleanup_crit_edge ], [ true, %if.then29 ], [ true, %nf_conntrack_get.exit.cleanup_crit_edge ], [ false, %pskb_network_may_pull.exit.i.cleanup_crit_edge ], [ false, %if.end.i.cleanup_crit_edge ], [ false, %if.end8.i.cleanup_crit_edge ], [ false, %if.end17.i.cleanup_crit_edge ], [ false, %pskb_network_may_pull.exit91.i.cleanup_crit_edge ], [ false, %if.end.i.i.i.cleanup_crit_edge ], [ false, %if.end.i.i84.i.cleanup_crit_edge ], [ false, %pskb_network_may_pull.exit.i70.cleanup_crit_edge ], [ false, %if.end.i73.cleanup_crit_edge ], [ false, %if.end8.i74.cleanup_crit_edge ], [ false, %pskb_network_may_pull.exit78.i.cleanup_crit_edge ], [ false, %if.end.i.i.i66.cleanup_crit_edge ], [ false, %if.end.i.i71.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 76, ptr nonnull %tuple) #12
  ret i1 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nf_conntrack_put(ptr noundef %nfct) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %tobool.not = icmp eq ptr %nfct, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %nfct, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !142
  tail call void @llvm.prefetch.p0(ptr nonnull %nfct, i32 1, i32 3, i32 1) #12
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %nfct, ptr nonnull %nfct, i32 1, ptr nonnull elementtype(i32) %nfct) #12, !srcloc !143
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.then, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.if.end_crit_edge, label %if.then10.i.i.i, !prof !144

if.end5.i.i.i.if.end_crit_edge:                   ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef nonnull %nfct, i32 noundef 3) #12
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !145
  tail call void @nf_conntrack_destroy(ptr noundef nonnull %nfct) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %if.then10.i.i.i, %if.end5.i.i.i.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nf_conntrack_get(ptr noundef %nfct) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %tobool.not = icmp eq ptr %nfct, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %nfct, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr nonnull %nfct, i32 1, i32 3, i32 1) #12
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %nfct, ptr nonnull %nfct, i32 1, ptr nonnull elementtype(i32) %nfct) #12, !srcloc !147
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %if.then.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !141

if.then.if.end15.sink.split.i.i.i_crit_edge:      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %if.then
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %1 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.if.end_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !144

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.if.end_crit_edge:                   ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %if.then.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %if.then.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %nfct, i32 noundef %.sink.i.i.i) #12
  br label %if.end

if.end:                                           ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_conntrack_in(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_ct_deliver_cached_events(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tcf_ct_act_set_mark(ptr noundef %ct, i32 noundef %mark, i32 noundef %mask) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mask)
  %tobool.not = icmp eq i32 %mask, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %mark1 = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 11
  %0 = ptrtoint ptr %mark1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mark1, align 8
  %neg = xor i32 %mask, -1
  %and = and i32 %1, %neg
  %or = or i32 %and, %mark
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %or)
  %cmp.not = icmp eq i32 %1, %or
  br i1 %cmp.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then3:                                         ; preds = %if.end
  %2 = ptrtoint ptr %mark1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %or, ptr %mark1, align 8
  %status.i = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 5
  %3 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %status.i, align 4
  %5 = and i32 %4, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool5.not = icmp eq i32 %5, 0
  br i1 %tobool5.not, label %if.then3.cleanup_crit_edge, label %if.then6

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then6:                                         ; preds = %if.then3
  %ct_net.i.i = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 7
  %6 = ptrtoint ptr %ct_net.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ct_net.i.i, align 4
  %nf_conntrack_event_cb.i = getelementptr inbounds %struct.net, ptr %7, i32 0, i32 40, i32 9
  %8 = ptrtoint ptr %nf_conntrack_event_cb.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %nf_conntrack_event_cb.i, align 16
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.then6.cleanup_crit_edge, label %if.end.i

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i:                                         ; preds = %if.then6
  %ext.i.i.i.i = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 13
  %10 = ptrtoint ptr %ext.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ext.i.i.i.i, align 8
  %tobool.not.i.i.i.i = icmp eq ptr %11, null
  br i1 %tobool.not.i.i.i.i, label %if.end.i.cleanup_crit_edge, label %nf_ct_ext_exist.exit.i.i.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

nf_ct_ext_exist.exit.i.i.i:                       ; preds = %if.end.i
  %arrayidx.i.i.i.i.i = getelementptr [10 x i8], ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.i.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.i.i.not.i.i.i = icmp eq i8 %13, 0
  br i1 %tobool.i.i.not.i.i.i, label %nf_ct_ext_exist.exit.i.i.i.cleanup_crit_edge, label %nf_ct_ecache_find.exit.i

nf_ct_ext_exist.exit.i.i.i.cleanup_crit_edge:     ; preds = %nf_ct_ext_exist.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

nf_ct_ecache_find.exit.i:                         ; preds = %nf_ct_ext_exist.exit.i.i.i
  %conv.i.i.i = zext i8 %13 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %11, i32 %conv.i.i.i
  %cmp.i = icmp eq ptr %add.ptr.i.i.i, null
  br i1 %cmp.i, label %nf_ct_ecache_find.exit.i.cleanup_crit_edge, label %if.end5.i

nf_ct_ecache_find.exit.i.cleanup_crit_edge:       ; preds = %nf_ct_ecache_find.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end5.i:                                        ; preds = %nf_ct_ecache_find.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_set_bit(i32 noundef 7, ptr noundef nonnull %add.ptr.i.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end5.i, %nf_ct_ecache_find.exit.i.cleanup_crit_edge, %nf_ct_ext_exist.exit.i.i.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.then6.cleanup_crit_edge, %if.then3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tcf_ct_act_set_labels(ptr noundef %ct, ptr noundef %labels, ptr noundef %labels_m) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @memchr_inv(ptr noundef %labels_m, i32 noundef 0, i32 noundef 16) #12
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call1 = tail call i32 @nf_connlabels_replace(ptr noundef %ct, ptr noundef %labels, ptr noundef %labels_m, i32 noundef 4) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nf_conn_act_ct_ext_add(ptr noundef %ct) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %ext.i.i = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 13
  %0 = ptrtoint ptr %ext.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ext.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %entry.if.end_crit_edge, label %nf_ct_ext_exist.exit.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

nf_ct_ext_exist.exit.i:                           ; preds = %entry
  %arrayidx.i.i.i = getelementptr [10 x i8], ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.i.i.not.i = icmp eq i8 %3, 0
  %conv.i = zext i8 %3 to i32
  %add.ptr.i = getelementptr i8, ptr %1, i32 %conv.i
  %tobool.not = icmp eq ptr %add.ptr.i, null
  %or.cond = select i1 %tobool.i.i.not.i, i1 true, i1 %tobool.not
  br i1 %or.cond, label %nf_ct_ext_exist.exit.i.if.end_crit_edge, label %nf_ct_ext_exist.exit.i.cleanup_crit_edge

nf_ct_ext_exist.exit.i.cleanup_crit_edge:         ; preds = %nf_ct_ext_exist.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

nf_ct_ext_exist.exit.i.if.end_crit_edge:          ; preds = %nf_ct_ext_exist.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end:                                           ; preds = %nf_ct_ext_exist.exit.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call1 = tail call ptr @nf_ct_ext_add(ptr noundef %ct, i32 noundef 9, i32 noundef 2592) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %nf_ct_ext_exist.exit.i.cleanup_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nf_conntrack_confirm(ptr noundef %skb) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %_nfct.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 5
  %0 = ptrtoint ptr %_nfct.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %_nfct.i, align 8
  %and.i = and i32 %1, -8
  %2 = inttoptr i32 %and.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %entry.if.end9_crit_edge, label %if.then

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

if.then:                                          ; preds = %entry
  %status.i = getelementptr inbounds %struct.nf_conn, ptr %2, i32 0, i32 5
  %3 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %status.i, align 8
  %5 = and i32 %4, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool2.not = icmp eq i32 %5, 0
  br i1 %tobool2.not, label %if.end, label %if.then.if.then7_crit_edge

if.then.if.then7_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then7

if.end:                                           ; preds = %if.then
  %call4 = tail call i32 @__nf_conntrack_confirm(ptr noundef %skb) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call4)
  %cmp = icmp eq i32 %call4, 1
  br i1 %cmp, label %if.end.if.then7_crit_edge, label %if.end.if.end9_crit_edge, !prof !144

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

if.end.if.then7_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then7

if.then7:                                         ; preds = %if.end.if.then7_crit_edge, %if.then.if.then7_crit_edge
  tail call void @nf_ct_deliver_cached_events(ptr noundef nonnull %2) #12
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end.if.end9_crit_edge, %entry.if.end9_crit_edge
  %ret.1 = phi i32 [ 1, %if.then7 ], [ %call4, %if.end.if.end9_crit_edge ], [ 1, %entry.if.end9_crit_edge ]
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tcf_ct_flow_table_process_conn(ptr noundef %ct_ft, ptr noundef %ct, i32 noundef %ctinfo) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %ctinfo to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %ctinfo, label %entry.cleanup_crit_edge [
    i32 0, label %entry.lor.lhs.false_crit_edge
    i32 3, label %entry.lor.lhs.false_crit_edge23
  ]

entry.lor.lhs.false_crit_edge23:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false

entry.lor.lhs.false_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry.lor.lhs.false_crit_edge, %entry.lor.lhs.false_crit_edge23
  %status = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 5
  %1 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %status, align 4
  %3 = and i32 %2, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %protonum.i = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 4, i32 0, i32 1, i32 1, i32 2
  %4 = ptrtoint ptr %protonum.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %protonum.i, align 2
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.40)
  switch i8 %5, label %if.end.cleanup_crit_edge [
    i8 6, label %sw.bb
    i8 17, label %if.end.sw.epilog_crit_edge
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %state = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 14, i32 1, i32 24
  %7 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %8)
  %cmp4.not = icmp eq i8 %8, 3
  br i1 %cmp4.not, label %sw.bb.sw.epilog_crit_edge, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge
  %tcp.0.off0 = phi i1 [ false, %if.end.sw.epilog_crit_edge ], [ true, %sw.bb.sw.epilog_crit_edge ]
  %ext.i = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 13
  %9 = ptrtoint ptr %ext.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ext.i, align 8
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %lor.lhs.false10, label %nf_ct_ext_exist.exit

nf_ct_ext_exist.exit:                             ; preds = %sw.epilog
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %10, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.i.i = icmp eq i8 %12, 0
  %and = and i32 %2, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool12.not = icmp eq i32 %and, 0
  %or.cond = select i1 %tobool.i.i, i1 %tobool12.not, i1 false
  br i1 %or.cond, label %nf_ct_ext_exist.exit.if.end14_crit_edge, label %nf_ct_ext_exist.exit.cleanup_crit_edge

nf_ct_ext_exist.exit.cleanup_crit_edge:           ; preds = %nf_ct_ext_exist.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

nf_ct_ext_exist.exit.if.end14_crit_edge:          ; preds = %nf_ct_ext_exist.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

lor.lhs.false10:                                  ; preds = %sw.epilog
  %and.old = and i32 %2, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.old)
  %tobool12.not.old = icmp eq i32 %and.old, 0
  br i1 %tobool12.not.old, label %lor.lhs.false10.if.end14_crit_edge, label %lor.lhs.false10.cleanup_crit_edge

lor.lhs.false10.cleanup_crit_edge:                ; preds = %lor.lhs.false10
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false10.if.end14_crit_edge:               ; preds = %lor.lhs.false10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

if.end14:                                         ; preds = %lor.lhs.false10.if.end14_crit_edge, %nf_ct_ext_exist.exit.if.end14_crit_edge
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 14, ptr noundef %status) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i22 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i22, label %if.end.i, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i:                                         ; preds = %if.end14
  %call2.i = tail call ptr @flow_offload_alloc(ptr noundef %ct) #12
  %tobool3.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool3.not.i, label %land.end.i, label %if.end40.i

land.end.i:                                       ; preds = %if.end.i
  %.b76.i = load i1, ptr @tcf_ct_flow_table_add.__already_done, align 1
  br i1 %.b76.i, label %land.end.i.err_alloc.i_crit_edge, label %if.then10.i, !prof !144

land.end.i.err_alloc.i_crit_edge:                 ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_alloc.i

if.then10.i:                                      ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @tcf_ct_flow_table_add.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 384, i32 noundef 9, ptr noundef null) #12
  br label %err_alloc.i

if.end40.i:                                       ; preds = %if.end.i
  br i1 %tcp.0.off0, label %if.then42.i, label %if.end40.i.if.end51.i_crit_edge

if.end40.i.if.end51.i_crit_edge:                  ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end51.i

if.then42.i:                                      ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #14
  %flags.i = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 14, i32 1, i32 1
  %13 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %flags.i, align 1
  %15 = or i8 %14, 8
  store i8 %15, ptr %flags.i, align 1
  %flags47.i = getelementptr %struct.nf_conn, ptr %ct, i32 0, i32 14, i32 1, i32 21
  %16 = ptrtoint ptr %flags47.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %flags47.i, align 1
  %18 = or i8 %17, 8
  store i8 %18, ptr %flags47.i, align 1
  br label %if.end51.i

if.end51.i:                                       ; preds = %if.then42.i, %if.end40.i.if.end51.i_crit_edge
  %19 = ptrtoint ptr %ext.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ext.i, align 8
  %tobool.not.i.i.i.i = icmp eq ptr %20, null
  br i1 %tobool.not.i.i.i.i, label %if.end51.i.if.end55.i_crit_edge, label %nf_ct_ext_exist.exit.i.i.i

if.end51.i.if.end55.i_crit_edge:                  ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end55.i

nf_ct_ext_exist.exit.i.i.i:                       ; preds = %if.end51.i
  %arrayidx.i.i.i.i.i = getelementptr [10 x i8], ptr %20, i32 0, i32 9
  %21 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx.i.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.i.i.not.i.i.i = icmp eq i8 %22, 0
  br i1 %tobool.i.i.not.i.i.i, label %nf_ct_ext_exist.exit.i.i.i.if.end55.i_crit_edge, label %nf_conn_act_ct_ext_find.exit.i

nf_ct_ext_exist.exit.i.i.i.if.end55.i_crit_edge:  ; preds = %nf_ct_ext_exist.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end55.i

nf_conn_act_ct_ext_find.exit.i:                   ; preds = %nf_ct_ext_exist.exit.i.i.i
  %conv.i.i.i = zext i8 %22 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %20, i32 %conv.i.i.i
  %tobool53.not.i = icmp eq ptr %add.ptr.i.i.i, null
  br i1 %tobool53.not.i, label %nf_conn_act_ct_ext_find.exit.i.if.end55.i_crit_edge, label %if.then54.i

nf_conn_act_ct_ext_find.exit.i.if.end55.i_crit_edge: ; preds = %nf_conn_act_ct_ext_find.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end55.i

if.then54.i:                                      ; preds = %nf_conn_act_ct_ext_find.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %xmit_type.i.i = getelementptr [2 x %struct.flow_offload_tuple_rhash], ptr %call2.i, i32 0, i32 0, i32 1, i32 8
  %23 = ptrtoint ptr %xmit_type.i.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %bf.load.i.i = load i8, ptr %xmit_type.i.i, align 2
  %bf.clear.i.i = and i8 %bf.load.i.i, -57
  %bf.set.i.i = or i8 %bf.clear.i.i, 32
  store i8 %bf.set.i.i, ptr %xmit_type.i.i, align 2
  %24 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %add.ptr.i.i.i, align 4
  %26 = getelementptr [2 x %struct.flow_offload_tuple_rhash], ptr %call2.i, i32 0, i32 0, i32 1, i32 11
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %25, ptr %26, align 4
  %xmit_type.i77.i = getelementptr [2 x %struct.flow_offload_tuple_rhash], ptr %call2.i, i32 0, i32 1, i32 1, i32 8
  %28 = ptrtoint ptr %xmit_type.i77.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %bf.load.i78.i = load i8, ptr %xmit_type.i77.i, align 2
  %bf.clear.i79.i = and i8 %bf.load.i78.i, -57
  %bf.set.i80.i = or i8 %bf.clear.i79.i, 32
  store i8 %bf.set.i80.i, ptr %xmit_type.i77.i, align 2
  %arrayidx3.i.i = getelementptr [2 x i32], ptr %add.ptr.i.i.i, i32 0, i32 1
  %29 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx3.i.i, align 4
  %31 = getelementptr [2 x %struct.flow_offload_tuple_rhash], ptr %call2.i, i32 0, i32 1, i32 1, i32 11
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %30, ptr %31, align 4
  br label %if.end55.i

if.end55.i:                                       ; preds = %if.then54.i, %nf_conn_act_ct_ext_find.exit.i.if.end55.i_crit_edge, %nf_ct_ext_exist.exit.i.i.i.if.end55.i_crit_edge, %if.end51.i.if.end55.i_crit_edge
  %nf_ft.i = getelementptr inbounds %struct.tcf_ct_flow_table, ptr %ct_ft, i32 0, i32 2
  %call56.i = tail call i32 @flow_offload_add(ptr noundef %nf_ft.i, ptr noundef nonnull %call2.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56.i)
  %tobool57.not.i = icmp eq i32 %call56.i, 0
  br i1 %tobool57.not.i, label %if.end55.i.cleanup_crit_edge, label %err_add.i

if.end55.i.cleanup_crit_edge:                     ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

err_add.i:                                        ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @flow_offload_free(ptr noundef nonnull %call2.i) #12
  br label %err_alloc.i

err_alloc.i:                                      ; preds = %err_add.i, %if.then10.i, %land.end.i.err_alloc.i_crit_edge
  tail call void @_clear_bit(i32 noundef 14, ptr noundef %status) #12
  br label %cleanup

cleanup:                                          ; preds = %err_alloc.i, %if.end55.i.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %lor.lhs.false10.cleanup_crit_edge, %nf_ct_ext_exist.exit.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bstats_update(ptr noundef %bstats, ptr nocapture noundef readonly %skb) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %cb.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %0 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cb.i.i, align 4
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %2 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %end.i.i, align 4
  %gso_size.i = getelementptr inbounds %struct.skb_shared_info, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %gso_size.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %gso_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.i.not = icmp eq i16 %5, 0
  br i1 %tobool.i.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %gso_segs = getelementptr inbounds %struct.skb_shared_info, ptr %3, i32 0, i32 5
  %6 = ptrtoint ptr %gso_segs to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %gso_segs, align 2
  %conv4 = zext i16 %7 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %conv4, %cond.true ], [ 1, %entry.cond.end_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %8 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i.i.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i.i.i, label %cond.end._bstats_update.exit_crit_edge, label %land.lhs.true.i.i.i

cond.end._bstats_update.exit_crit_edge:           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %_bstats_update.exit

land.lhs.true.i.i.i:                              ; preds = %cond.end
  %9 = tail call i32 @llvm.read_register.i32(metadata !131) #12
  %and.i.i.i.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %12, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !151
  %13 = tail call i32 @llvm.read_register.i32(metadata !131) #12
  %and.i.i.i.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu.i.i.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %cpu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cpu.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %16
  %17 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.i.i.i, align 4
  %add.i.i.i = add i32 %18, ptrtoint (ptr @lockdep_recursion to i32)
  %19 = inttoptr i32 %add.i.i.i to ptr
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %19, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !152
  %22 = tail call i32 @llvm.read_register.i32(metadata !131) #12
  %and.i.i.i7.i.i.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i7.i.i.i to ptr
  %preempt_count.i.i8.i.i.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %preempt_count.i.i8.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %preempt_count.i.i8.i.i.i, align 4
  %sub.i.i.i.i = add i32 %25, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i8.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool20.not.i.i.i = icmp eq i32 %21, 0
  br i1 %tobool20.not.i.i.i, label %land.rhs.i.i.i, label %land.lhs.true.i.i.i._bstats_update.exit_crit_edge

land.lhs.true.i.i.i._bstats_update.exit_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %_bstats_update.exit

land.rhs.i.i.i:                                   ; preds = %land.lhs.true.i.i.i
  %26 = tail call i32 @llvm.read_register.i32(metadata !131) #12
  %and.i.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp.i.i.i = icmp eq i32 %29, 0
  br i1 %cmp.i.i.i, label %land.rhs22.i.i.i, label %land.rhs.i.i.i._bstats_update.exit_crit_edge

land.rhs.i.i.i._bstats_update.exit_crit_edge:     ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %_bstats_update.exit

land.rhs22.i.i.i:                                 ; preds = %land.rhs.i.i.i
  %30 = tail call i32 @llvm.read_register.i32(metadata !131) #12
  %and.i.i.i9.i.i.i = and i32 %30, -16384
  %31 = inttoptr i32 %and.i.i.i9.i.i.i to ptr
  %preempt_count.i.i10.i.i.i = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %preempt_count.i.i10.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %preempt_count.i.i10.i.i.i, align 4
  %add.i11.i.i.i = add i32 %33, 1
  store volatile i32 %add.i11.i.i.i, ptr %preempt_count.i.i10.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !153
  %34 = ptrtoint ptr %cpu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %cpu.i.i.i, align 4
  %arrayidx46.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %35
  %36 = ptrtoint ptr %arrayidx46.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx46.i.i.i, align 4
  %add47.i.i.i = add i32 %37, ptrtoint (ptr @hardirqs_enabled to i32)
  %38 = inttoptr i32 %add47.i.i.i to ptr
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %38, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !154
  %41 = tail call i32 @llvm.read_register.i32(metadata !131) #12
  %and.i.i.i12.i.i.i = and i32 %41, -16384
  %42 = inttoptr i32 %and.i.i.i12.i.i.i to ptr
  %preempt_count.i.i13.i.i.i = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %preempt_count.i.i13.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %preempt_count.i.i13.i.i.i, align 4
  %sub.i14.i.i.i = add i32 %44, -1
  store volatile i32 %sub.i14.i.i.i, ptr %preempt_count.i.i13.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool54.not.i.i.i = icmp eq i32 %40, 0
  br i1 %tobool54.not.i.i.i, label %land.rhs22.i.i.i._bstats_update.exit_crit_edge, label %land.rhs58.i.i.i

land.rhs22.i.i.i._bstats_update.exit_crit_edge:   ; preds = %land.rhs22.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %_bstats_update.exit

land.rhs58.i.i.i:                                 ; preds = %land.rhs22.i.i.i
  %.b1.i.i.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i.i.i, label %land.rhs58.i.i.i._bstats_update.exit_crit_edge, label %if.then.i.i.i, !prof !144

land.rhs58.i.i.i._bstats_update.exit_crit_edge:   ; preds = %land.rhs58.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %_bstats_update.exit

if.then.i.i.i:                                    ; preds = %land.rhs58.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 271, i32 noundef 9, ptr noundef null) #12
  br label %_bstats_update.exit

_bstats_update.exit:                              ; preds = %if.then.i.i.i, %land.rhs58.i.i.i._bstats_update.exit_crit_edge, %land.rhs22.i.i.i._bstats_update.exit_crit_edge, %land.rhs.i.i.i._bstats_update.exit_crit_edge, %land.lhs.true.i.i.i._bstats_update.exit_crit_edge, %cond.end._bstats_update.exit_crit_edge
  %conv = zext i32 %1 to i64
  %syncp.i = getelementptr inbounds %struct.gnet_stats_basic_sync, ptr %bstats, i32 0, i32 2
  %45 = ptrtoint ptr %syncp.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %syncp.i, align 4
  %inc.i.i.i.i.i = add i32 %46, 1
  store i32 %inc.i.i.i.i.i, ptr %syncp.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !155
  %dep_map.i.i.i.i = getelementptr inbounds %struct.gnet_stats_basic_sync, ptr %bstats, i32 0, i32 2, i32 0, i32 1
  %47 = tail call ptr @llvm.returnaddress(i32 0) #12
  %48 = ptrtoint ptr %47 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %48) #12
  %49 = ptrtoint ptr %bstats to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %bstats, align 8
  %add.i.i = add i64 %50, %conv
  store i64 %add.i.i, ptr %bstats, align 8
  %packets2.i = getelementptr inbounds %struct.gnet_stats_basic_sync, ptr %bstats, i32 0, i32 1
  %conv.i7.i = zext i32 %cond to i64
  %51 = ptrtoint ptr %packets2.i to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %packets2.i, align 8
  %add.i8.i = add i64 %52, %conv.i7.i
  store i64 %add.i8.i, ptr %packets2.i, align 8
  tail call void @lock_release(ptr noundef %dep_map.i.i.i.i, i32 noundef %48) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !156
  %53 = ptrtoint ptr %syncp.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %syncp.i, align 4
  %inc.i.i.i.i = add i32 %54, 1
  store i32 %inc.i.i.i.i, ptr %syncp.i, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_ct_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_defrag(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_ct_frag6_gather(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_find_hdr(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_trim_rcsum_slow(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nf_ct_delete(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @flow_offload_lookup(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @flow_offload_teardown(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @flow_offload_refresh(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_ct_acct_add(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_conntrack_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nf_ct_nat_ext_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ct_nat_execute(ptr noundef %skb, ptr noundef %ct, i32 noundef %ctinfo, ptr noundef %range, i32 noundef %maniptype) unnamed_addr #2 align 64 {
entry:
  %vhdr.i.i.i = alloca %struct.vlan_hdr, align 2
  %frag_off = alloca i16, align 2
  %nexthdr = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %protocol.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %0 = ptrtoint ptr %protocol.i.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %protocol.i.i, align 8
  %mac_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 8
  %2 = ptrtoint ptr %mac_len.i.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %mac_len.i.i.i, align 4
  %conv.i.i.i = zext i16 %3 to i32
  %4 = zext i16 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.41)
  switch i16 %1, label %entry.skb_protocol.exit_crit_edge [
    i16 -30552, label %entry.if.then.i.i.i_crit_edge
    i16 -32512, label %entry.if.then.i.i.i_crit_edge112
  ]

entry.if.then.i.i.i_crit_edge112:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i.i

entry.if.then.i.i.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i.i

entry.skb_protocol.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_protocol.exit

if.then.i.i.i:                                    ; preds = %entry.if.then.i.i.i_crit_edge, %entry.if.then.i.i.i_crit_edge112
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not.i.i.i = icmp eq i16 %3, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i.if.end26.i.i.i_crit_edge, label %if.then1.i.i.i

if.then.i.i.i.if.end26.i.i.i_crit_edge:           ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26.i.i.i

if.then1.i.i.i:                                   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %3)
  %cmp.i.i.i = icmp ult i16 %3, 4
  br i1 %cmp.i.i.i, label %do.end.i.i.i, label %if.end25.i.i.i, !prof !141

do.end.i.i.i:                                     ; preds = %if.then1.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 598, i32 noundef 9, ptr noundef null) #12
  br label %skb_protocol.exit

if.end25.i.i.i:                                   ; preds = %if.then1.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i.i = add nsw i32 %conv.i.i.i, -4
  br label %if.end26.i.i.i

if.end26.i.i.i:                                   ; preds = %if.end25.i.i.i, %if.then.i.i.i.if.end26.i.i.i_crit_edge
  %vlan_depth.0.i.i.i = phi i32 [ %sub.i.i.i, %if.end25.i.i.i ], [ 14, %if.then.i.i.i.if.end26.i.i.i_crit_edge ]
  %5 = getelementptr inbounds %struct.vlan_hdr, ptr %vhdr.i.i.i, i32 0, i32 1
  %len.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %data_len.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %tobool2.not.i.i.i.i.i = icmp eq ptr %skb, null
  %data.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  br label %do.body27.i.i.i

do.body27.i.i.i:                                  ; preds = %do.body27.backedge.i.i.i, %if.end26.i.i.i
  %vlan_depth.1.i.i.i = phi i32 [ %vlan_depth.0.i.i.i, %if.end26.i.i.i ], [ %add.i.i.i, %do.body27.backedge.i.i.i ]
  %parse_depth.0.i.i.i = phi i32 [ 8, %if.end26.i.i.i ], [ %dec.i.i.i, %do.body27.backedge.i.i.i ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vhdr.i.i.i) #12
  %6 = ptrtoint ptr %vhdr.i.i.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 -1, ptr %vhdr.i.i.i, align 2, !annotation !146
  %7 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 -1, ptr %5, align 2, !annotation !146
  %8 = ptrtoint ptr %len.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len.i.i.i.i.i, align 4
  %10 = ptrtoint ptr %data_len.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %data_len.i.i.i.i.i, align 8
  %12 = add i32 %vlan_depth.1.i.i.i, %11
  %sub.i1.i.i.i.i = sub i32 %9, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub.i1.i.i.i.i)
  %cmp.i.i.i.i.i = icmp sgt i32 %sub.i1.i.i.i.i, 3
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i.i.i.i, label %if.end.i.i.i.i.i, !prof !144

if.then.i.i.i.i.i:                                ; preds = %do.body27.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %13 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data.i.i.i.i, align 4
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %14, i32 %vlan_depth.1.i.i.i
  br label %skb_header_pointer.exit.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %do.body27.i.i.i
  br i1 %tobool2.not.i.i.i.i.i, label %if.end.i.i.i.i.i.cleanup.thread.i.i.i_crit_edge, label %lor.lhs.false.i.i.i.i.i

if.end.i.i.i.i.i.cleanup.thread.i.i.i_crit_edge:  ; preds = %if.end.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.thread.i.i.i

lor.lhs.false.i.i.i.i.i:                          ; preds = %if.end.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %vlan_depth.1.i.i.i, ptr noundef nonnull %vhdr.i.i.i, i32 noundef 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i.i)
  %cmp3.i.i.i.i.i = icmp slt i32 %call.i.i.i.i.i, 0
  %spec.select.i.i.i.i.i = select i1 %cmp3.i.i.i.i.i, ptr null, ptr %vhdr.i.i.i, !prof !141
  br label %skb_header_pointer.exit.i.i.i

skb_header_pointer.exit.i.i.i:                    ; preds = %lor.lhs.false.i.i.i.i.i, %if.then.i.i.i.i.i
  %retval.0.i.i.i.i.i = phi ptr [ %add.ptr.i.i.i.i.i, %if.then.i.i.i.i.i ], [ %spec.select.i.i.i.i.i, %lor.lhs.false.i.i.i.i.i ]
  %tobool29.not.i.i.i = icmp eq ptr %retval.0.i.i.i.i.i, null
  %dec.i.i.i = add nsw i32 %parse_depth.0.i.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i.i)
  %tobool30.not.i.i.i = icmp eq i32 %dec.i.i.i, 0
  %15 = select i1 %tobool29.not.i.i.i, i1 true, i1 %tobool30.not.i.i.i, !prof !141
  br i1 %15, label %skb_header_pointer.exit.i.i.i.cleanup.thread.i.i.i_crit_edge, label %do.cond42.i.i.i, !prof !141

skb_header_pointer.exit.i.i.i.cleanup.thread.i.i.i_crit_edge: ; preds = %skb_header_pointer.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.thread.i.i.i

cleanup.thread.i.i.i:                             ; preds = %skb_header_pointer.exit.i.i.i.cleanup.thread.i.i.i_crit_edge, %if.end.i.i.i.i.i.cleanup.thread.i.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vhdr.i.i.i) #12
  br label %skb_protocol.exit

do.cond42.i.i.i:                                  ; preds = %skb_header_pointer.exit.i.i.i
  %h_vlan_encapsulated_proto.i.i.i = getelementptr inbounds %struct.vlan_hdr, ptr %retval.0.i.i.i.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %h_vlan_encapsulated_proto.i.i.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %h_vlan_encapsulated_proto.i.i.i, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vhdr.i.i.i) #12
  %18 = zext i16 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.42)
  switch i16 %17, label %do.cond42.i.i.i.skb_protocol.exit_crit_edge [
    i16 -30552, label %do.cond42.i.i.i.do.body27.backedge.i.i.i_crit_edge
    i16 -32512, label %do.cond42.i.i.i.do.body27.backedge.i.i.i_crit_edge113
  ]

do.cond42.i.i.i.do.body27.backedge.i.i.i_crit_edge113: ; preds = %do.cond42.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body27.backedge.i.i.i

do.cond42.i.i.i.do.body27.backedge.i.i.i_crit_edge: ; preds = %do.cond42.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body27.backedge.i.i.i

do.cond42.i.i.i.skb_protocol.exit_crit_edge:      ; preds = %do.cond42.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_protocol.exit

do.body27.backedge.i.i.i:                         ; preds = %do.cond42.i.i.i.do.body27.backedge.i.i.i_crit_edge, %do.cond42.i.i.i.do.body27.backedge.i.i.i_crit_edge113
  %add.i.i.i = add nsw i32 %vlan_depth.1.i.i.i, 4
  br label %do.body27.i.i.i

skb_protocol.exit:                                ; preds = %do.cond42.i.i.i.skb_protocol.exit_crit_edge, %cleanup.thread.i.i.i, %do.end.i.i.i, %entry.skb_protocol.exit_crit_edge
  %retval.2.i.i.i = phi i16 [ 0, %do.end.i.i.i ], [ %1, %entry.skb_protocol.exit_crit_edge ], [ 0, %cleanup.thread.i.i.i ], [ %17, %do.cond42.i.i.i.skb_protocol.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %maniptype)
  %cmp = icmp eq i32 %maniptype, 0
  %. = select i1 %cmp, i32 1, i32 3
  %19 = zext i32 %ctinfo to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %ctinfo, label %skb_protocol.exit.cleanup68_crit_edge [
    i32 1, label %skb_protocol.exit.sw.bb_crit_edge
    i32 4, label %skb_protocol.exit.sw.bb_crit_edge114
    i32 2, label %skb_protocol.exit.sw.bb35_crit_edge
    i32 0, label %skb_protocol.exit.sw.epilog_crit_edge
    i32 3, label %skb_protocol.exit.sw.epilog_crit_edge115
  ]

skb_protocol.exit.sw.epilog_crit_edge115:         ; preds = %skb_protocol.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

skb_protocol.exit.sw.epilog_crit_edge:            ; preds = %skb_protocol.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

skb_protocol.exit.sw.bb35_crit_edge:              ; preds = %skb_protocol.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb35

skb_protocol.exit.sw.bb_crit_edge114:             ; preds = %skb_protocol.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

skb_protocol.exit.sw.bb_crit_edge:                ; preds = %skb_protocol.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

skb_protocol.exit.cleanup68_crit_edge:            ; preds = %skb_protocol.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup68

sw.bb:                                            ; preds = %skb_protocol.exit.sw.bb_crit_edge, %skb_protocol.exit.sw.bb_crit_edge114
  %20 = zext i16 %retval.2.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.44)
  switch i16 %retval.2.i.i.i, label %sw.bb.sw.bb35_crit_edge [
    i16 2048, label %land.lhs.true
    i16 -31011, label %if.then15
  ]

sw.bb.sw.bb35_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb35

land.lhs.true:                                    ; preds = %sw.bb
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %21 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %23 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %24 to i32
  %add.ptr.i.i = getelementptr i8, ptr %22, i32 %conv.i.i
  %protocol = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 6
  %25 = ptrtoint ptr %protocol to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %protocol, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %26)
  %cmp5 = icmp eq i8 %26, 1
  br i1 %cmp5, label %if.then7, label %land.lhs.true.sw.bb35_crit_edge

land.lhs.true.sw.bb35_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb35

if.then7:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %call8 = call i32 @nf_nat_icmp_reply_translation(ptr noundef %skb, ptr noundef %ct, i32 noundef %ctinfo, i32 noundef %.) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool.not = icmp ne i32 %call8, 0
  %spec.select = zext i1 %tobool.not to i32
  br label %cleanup68

if.then15:                                        ; preds = %sw.bb
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %frag_off) #12
  %27 = ptrtoint ptr %frag_off to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 -1, ptr %frag_off, align 2, !annotation !146
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %nexthdr) #12
  %head.i.i102 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %28 = ptrtoint ptr %head.i.i102 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %head.i.i102, align 8
  %network_header.i.i103 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %30 = ptrtoint ptr %network_header.i.i103 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %network_header.i.i103, align 4
  %conv.i.i104 = zext i16 %31 to i32
  %add.ptr.i.i105 = getelementptr i8, ptr %29, i32 %conv.i.i104
  %nexthdr17 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i105, i32 0, i32 3
  %32 = ptrtoint ptr %nexthdr17 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %nexthdr17, align 2
  %34 = ptrtoint ptr %nexthdr to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %33, ptr %nexthdr, align 1
  %call18 = call i32 @ipv6_skip_exthdr(ptr noundef %skb, i32 noundef 40, ptr noundef nonnull %nexthdr, ptr noundef nonnull %frag_off) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call18)
  %cmp19 = icmp sgt i32 %call18, -1
  br i1 %cmp19, label %land.lhs.true21, label %if.then15.cleanup.thread_crit_edge

if.then15.cleanup.thread_crit_edge:               ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.thread

land.lhs.true21:                                  ; preds = %if.then15
  %35 = ptrtoint ptr %nexthdr to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %nexthdr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 58, i8 %36)
  %cmp23 = icmp eq i8 %36, 58
  br i1 %cmp23, label %cleanup, label %land.lhs.true21.cleanup.thread_crit_edge

land.lhs.true21.cleanup.thread_crit_edge:         ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %land.lhs.true21.cleanup.thread_crit_edge, %if.then15.cleanup.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %nexthdr) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %frag_off) #12
  br label %sw.bb35

cleanup:                                          ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #14
  %call26 = call i32 @nf_nat_icmpv6_reply_translation(ptr noundef %skb, ptr noundef %ct, i32 noundef %ctinfo, i32 noundef %., i32 noundef %call18) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp ne i32 %call26, 0
  %spec.select100 = zext i1 %tobool27.not to i32
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %nexthdr) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %frag_off) #12
  br label %cleanup68

sw.bb35:                                          ; preds = %cleanup.thread, %land.lhs.true.sw.bb35_crit_edge, %sw.bb.sw.bb35_crit_edge, %skb_protocol.exit.sw.bb35_crit_edge
  %status.i = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 5
  %37 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %status.i, align 8
  %..i = select i1 %cmp, i32 128, i32 256
  %and2.i = and i32 %38, %..i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool37.not = icmp eq i32 %and2.i, 0
  br i1 %tobool37.not, label %if.then38, label %sw.bb35.sw.epilog_crit_edge

sw.bb35.sw.epilog_crit_edge:                      ; preds = %sw.bb35
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.then38:                                        ; preds = %sw.bb35
  %tobool39.not = icmp eq ptr %range, null
  br i1 %tobool39.not, label %if.then38.cond.false_crit_edge, label %land.lhs.true40

if.then38.cond.false_crit_edge:                   ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.false

land.lhs.true40:                                  ; preds = %if.then38
  %39 = ptrtoint ptr %range to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %range, align 4
  %and = and i32 %40, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool41.not = icmp eq i32 %and, 0
  br i1 %tobool41.not, label %land.lhs.true40.cond.false_crit_edge, label %cond.true

land.lhs.true40.cond.false_crit_edge:             ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.false

cond.true:                                        ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #14
  %call42 = call i32 @nf_nat_setup_info(ptr noundef %ct, ptr noundef nonnull %range, i32 noundef %maniptype) #12
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true40.cond.false_crit_edge, %if.then38.cond.false_crit_edge
  %call43 = call i32 @nf_nat_alloc_null_binding(ptr noundef %ct, i32 noundef %.) #12
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call42, %cond.true ], [ %call43, %cond.false ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %cond)
  %cmp44.not = icmp eq i32 %cond, 1
  br i1 %cmp44.not, label %cond.end.sw.epilog_crit_edge, label %cond.end.cleanup68_crit_edge

cond.end.cleanup68_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup68

cond.end.sw.epilog_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.epilog:                                        ; preds = %cond.end.sw.epilog_crit_edge, %sw.bb35.sw.epilog_crit_edge, %skb_protocol.exit.sw.epilog_crit_edge, %skb_protocol.exit.sw.epilog_crit_edge115
  %call50 = call i32 @nf_nat_packet(ptr noundef %ct, i32 noundef %ctinfo, i32 noundef %., ptr noundef %skb) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call50)
  %cmp51 = icmp eq i32 %call50, 1
  br i1 %cmp51, label %if.then53, label %sw.epilog.cleanup68_crit_edge

sw.epilog.cleanup68_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup68

if.then53:                                        ; preds = %sw.epilog
  br i1 %cmp, label %if.end58.thread, label %if.end58

if.end58.thread:                                  ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #14
  %post_ct_snat = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 30
  %41 = ptrtoint ptr %post_ct_snat to i32
  call void @__asan_load1_noabort(i32 %41)
  %bf.load = load i8, ptr %post_ct_snat, align 2
  %bf.set = or i8 %bf.load, 64
  store i8 %bf.set, ptr %post_ct_snat, align 2
  br label %cleanup68

if.end58:                                         ; preds = %if.then53
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %maniptype)
  %cmp59 = icmp eq i32 %maniptype, 1
  br i1 %cmp59, label %if.then61, label %if.end58.cleanup68_crit_edge

if.end58.cleanup68_crit_edge:                     ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup68

if.then61:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #14
  %post_ct_dnat = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 30
  %42 = ptrtoint ptr %post_ct_dnat to i32
  call void @__asan_load1_noabort(i32 %42)
  %bf.load63 = load i8, ptr %post_ct_dnat, align 2
  %bf.set65 = or i8 %bf.load63, 32
  store i8 %bf.set65, ptr %post_ct_dnat, align 2
  br label %cleanup68

cleanup68:                                        ; preds = %if.then61, %if.end58.cleanup68_crit_edge, %if.end58.thread, %sw.epilog.cleanup68_crit_edge, %cond.end.cleanup68_crit_edge, %cleanup, %if.then7, %skb_protocol.exit.cleanup68_crit_edge
  %retval.0 = phi i32 [ 1, %if.then61 ], [ 1, %if.end58.cleanup68_crit_edge ], [ %call50, %sw.epilog.cleanup68_crit_edge ], [ %cond, %cond.end.cleanup68_crit_edge ], [ %spec.select100, %cleanup ], [ %spec.select, %if.then7 ], [ 0, %skb_protocol.exit.cleanup68_crit_edge ], [ 1, %if.end58.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_nat_icmp_reply_translation(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_skip_exthdr(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_nat_icmpv6_reply_translation(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_nat_setup_info(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_nat_alloc_null_binding(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_nat_packet(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memchr_inv(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_connlabels_replace(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nf_ct_ext_add(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__nf_conntrack_confirm(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @flow_offload_alloc(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @flow_offload_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @flow_offload_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @csum_partial(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tcf_ct_dump_nat(ptr noundef %skb, ptr noundef %p) unnamed_addr #2 align 64 {
entry:
  %tmp.i64 = alloca i16, align 2
  %tmp.i = alloca i16, align 2
  %tmp.i.i60 = alloca i32, align 4
  %tmp.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %range1 = getelementptr inbounds %struct.tcf_ct_params, ptr %p, i32 0, i32 6
  %ct_action = getelementptr inbounds %struct.tcf_ct_params, ptr %p, i32 0, i32 8
  %0 = ptrtoint ptr %ct_action to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %ct_action, align 2
  %conv = zext i16 %1 to i32
  %and = and i32 %conv, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %and4 = and i32 %conv, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  %or.cond = or i1 %tobool.not, %tobool5.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end7

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end7:                                          ; preds = %entry
  %2 = ptrtoint ptr %range1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %range1, align 4
  %and8 = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.end7.if.end31_crit_edge, label %if.then10

if.end7.if.end31_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end31

if.then10:                                        ; preds = %if.end7
  %ipv4_range = getelementptr inbounds %struct.tcf_ct_params, ptr %p, i32 0, i32 7
  %4 = ptrtoint ptr %ipv4_range to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ipv4_range, align 4, !range !148
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool11.not = icmp eq i8 %5, 0
  %min_addr20 = getelementptr inbounds %struct.tcf_ct_params, ptr %p, i32 0, i32 6, i32 1
  br i1 %tobool11.not, label %if.else, label %if.then12

if.then12:                                        ; preds = %if.then10
  %6 = ptrtoint ptr %min_addr20 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %min_addr20, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i) #12
  %8 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %tmp.i.i, align 4
  %call.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 9, i32 noundef 4, ptr noundef nonnull %tmp.i.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool13.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool13.not, label %if.end15, label %if.then12.cleanup_crit_edge

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end15:                                         ; preds = %if.then12
  %max_addr = getelementptr inbounds %struct.tcf_ct_params, ptr %p, i32 0, i32 6, i32 2
  %9 = ptrtoint ptr %max_addr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %max_addr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i60) #12
  %11 = ptrtoint ptr %tmp.i.i60 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %tmp.i.i60, align 4
  %call.i.i61 = call i32 @nla_put(ptr noundef %skb, i32 noundef 10, i32 noundef 4, ptr noundef nonnull %tmp.i.i60) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i60) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i61)
  %tobool17.not = icmp eq i32 %call.i.i61, 0
  br i1 %tobool17.not, label %if.end15.if.end31_crit_edge, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end15.if.end31_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end31

if.else:                                          ; preds = %if.then10
  %call.i = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 11, i32 noundef 16, ptr noundef %min_addr20) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool22.not = icmp eq i32 %call.i, 0
  br i1 %tobool22.not, label %if.end24, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end24:                                         ; preds = %if.else
  %max_addr25 = getelementptr inbounds %struct.tcf_ct_params, ptr %p, i32 0, i32 6, i32 2
  %call.i62 = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 12, i32 noundef 16, ptr noundef %max_addr25) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i62)
  %tobool27.not = icmp eq i32 %call.i62, 0
  br i1 %tobool27.not, label %if.end24.if.end31_crit_edge, label %if.end24.cleanup_crit_edge

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end24.if.end31_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end31

if.end31:                                         ; preds = %if.end24.if.end31_crit_edge, %if.end15.if.end31_crit_edge, %if.end7.if.end31_crit_edge
  %12 = ptrtoint ptr %range1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %range1, align 4
  %and33 = and i32 %13, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %if.end31.if.end44_crit_edge, label %if.then35

if.end31.if.end44_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end44

if.then35:                                        ; preds = %if.end31
  %min_proto = getelementptr inbounds %struct.tcf_ct_params, ptr %p, i32 0, i32 6, i32 3
  %14 = ptrtoint ptr %min_proto to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %min_proto, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i) #12
  %16 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %tmp.i, align 2
  %call.i63 = call i32 @nla_put(ptr noundef %skb, i32 noundef 13, i32 noundef 2, ptr noundef nonnull %tmp.i) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i63)
  %tobool37.not = icmp eq i32 %call.i63, 0
  br i1 %tobool37.not, label %if.end39, label %if.then35.cleanup_crit_edge

if.then35.cleanup_crit_edge:                      ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end39:                                         ; preds = %if.then35
  %max_proto = getelementptr inbounds %struct.tcf_ct_params, ptr %p, i32 0, i32 6, i32 4
  %17 = ptrtoint ptr %max_proto to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %max_proto, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i64) #12
  %19 = ptrtoint ptr %tmp.i64 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %18, ptr %tmp.i64, align 2
  %call.i65 = call i32 @nla_put(ptr noundef %skb, i32 noundef 14, i32 noundef 2, ptr noundef nonnull %tmp.i64) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i64) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i65)
  %tobool41.not = icmp eq i32 %call.i65, 0
  br i1 %tobool41.not, label %if.end39.if.end44_crit_edge, label %if.end39.cleanup_crit_edge

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end39.if.end44_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end44

if.end44:                                         ; preds = %if.end39.if.end44_crit_edge, %if.end31.if.end44_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end44, %if.end39.cleanup_crit_edge, %if.then35.cleanup_crit_edge, %if.end24.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %if.then12.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end44 ], [ 0, %entry.cleanup_crit_edge ], [ -1, %if.then12.cleanup_crit_edge ], [ -1, %if.end15.cleanup_crit_edge ], [ -1, %if.else.cleanup_crit_edge ], [ -1, %if.end24.cleanup_crit_edge ], [ -1, %if.then35.cleanup_crit_edge ], [ -1, %if.end39.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put_64bit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_clock_t(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tcf_ct_params_free(ptr noundef %head) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %head, i32 -96
  %ct_ft1.i = getelementptr i8, ptr %head, i32 8
  %0 = ptrtoint ptr %ct_ft1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ct_ft1.i, align 4
  %ref.i = getelementptr inbounds %struct.tcf_ct_flow_table, ptr %1, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !142
  tail call void @llvm.prefetch.p0(ptr %ref.i, i32 1, i32 3, i32 1) #12
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i, ptr %ref.i, i32 1, ptr elementtype(i32) %ref.i) #12, !srcloc !143
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.tcf_ct_flow_table_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !144

if.end5.i.i.i.i.tcf_ct_flow_table_put.exit_crit_edge: ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tcf_ct_flow_table_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %ref.i, i32 noundef 3) #12
  br label %tcf_ct_flow_table_put.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !145
  tail call fastcc void @rhashtable_remove_fast(ptr noundef %1, [7 x i32] [i32 2, i32 34078720, i32 0, i32 256, i32 0, i32 0, i32 0]) #12
  %rwork.i = getelementptr inbounds %struct.tcf_ct_flow_table, ptr %1, i32 0, i32 1
  tail call void @__init_work(ptr noundef %rwork.i, i32 noundef 0) #12
  %3 = ptrtoint ptr %rwork.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -64, ptr %rwork.i, align 4
  %lockdep_map.i = getelementptr inbounds %struct.tcf_ct_flow_table, ptr %1, i32 0, i32 1, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.6, ptr noundef nonnull @tcf_ct_flow_table_put.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %entry10.i = getelementptr inbounds %struct.tcf_ct_flow_table, ptr %1, i32 0, i32 1, i32 0, i32 1
  %4 = ptrtoint ptr %entry10.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %entry10.i, ptr %entry10.i, align 4
  %prev.i.i = getelementptr inbounds %struct.tcf_ct_flow_table, ptr %1, i32 0, i32 1, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %entry10.i, ptr %prev.i.i, align 4
  %func.i = getelementptr inbounds %struct.tcf_ct_flow_table, ptr %1, i32 0, i32 1, i32 0, i32 2
  %6 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @tcf_ct_flow_table_cleanup_work, ptr %func.i, align 4
  %7 = load ptr, ptr @act_ct_wq, align 4
  %call14.i = tail call zeroext i1 @queue_rcu_work(ptr noundef %7, ptr noundef %rwork.i) #12
  br label %tcf_ct_flow_table_put.exit

tcf_ct_flow_table_put.exit:                       ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.tcf_ct_flow_table_put.exit_crit_edge
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %tcf_ct_flow_table_put.exit.if.end_crit_edge, label %land.lhs.true.i

tcf_ct_flow_table_put.exit.if.end_crit_edge:      ; preds = %tcf_ct_flow_table_put.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true.i:                                  ; preds = %tcf_ct_flow_table_put.exit
  %call.i.i.i.i.i.i5 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %9, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !142
  tail call void @llvm.prefetch.p0(ptr nonnull %9, i32 1, i32 3, i32 1) #12
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %9, ptr nonnull %9, i32 1, ptr nonnull elementtype(i32) %9) #12, !srcloc !143
  %asmresult.i.i.i.i.i.i.i6 = extractvalue { i32, i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i6)
  %cmp.i.i.i.i7 = icmp eq i32 %asmresult.i.i.i.i.i.i.i6, 1
  br i1 %cmp.i.i.i.i7, label %if.then.i11, label %if.end5.i.i.i.i9

if.end5.i.i.i.i9:                                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i6)
  %.not.i.i.i.i8 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i6, 0
  br i1 %.not.i.i.i.i8, label %if.end5.i.i.i.i9.if.end_crit_edge, label %if.then10.i.i.i.i10, !prof !144

if.end5.i.i.i.i9.if.end_crit_edge:                ; preds = %if.end5.i.i.i.i9
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then10.i.i.i.i10:                              ; preds = %if.end5.i.i.i.i9
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef nonnull %9, i32 noundef 3) #12
  br label %if.end

if.then.i11:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !145
  tail call void @nf_ct_destroy(ptr noundef nonnull %9) #12
  br label %if.end

if.end:                                           ; preds = %if.then.i11, %if.then10.i.i.i.i10, %if.end5.i.i.i.i9.if.end_crit_edge, %tcf_ct_flow_table_put.exit.if.end_crit_edge
  tail call void @kfree(ptr noundef %add.ptr) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rhashtable_remove_fast(ptr noundef %obj, [7 x i32] %params.coerce) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %0 = tail call i32 @llvm.read_register.i32(metadata !131) #12
  %and.i.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !157
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i.i, label %entry.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

entry.rcu_read_lock.exit.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %entry
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 696, ptr noundef nonnull @.str.10) #12
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %entry.rcu_read_lock.exit.i_crit_edge
  %4 = load volatile ptr, ptr @zones_ht, align 4
  %call.i = tail call i32 @lockdep_rht_mutex_is_held(ptr noundef nonnull @zones_ht) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %rcu_read_lock.exit.i.do.end10.i_crit_edge

rcu_read_lock.exit.i.do.end10.i_crit_edge:        ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10.i

lor.lhs.false.i:                                  ; preds = %rcu_read_lock.exit.i
  %call3.i = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i, label %lor.lhs.false.i.do.end10.i_crit_edge

lor.lhs.false.i.do.end10.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %call5.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %land.lhs.true.i.do.end10.i_crit_edge, label %land.lhs.true7.i

land.lhs.true.i.do.end10.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10.i

land.lhs.true7.i:                                 ; preds = %land.lhs.true.i
  %.b2.i = load i1, ptr @__rhashtable_remove_fast.__warned, align 1
  br i1 %.b2.i, label %land.lhs.true7.i.do.end10.i_crit_edge, label %if.then.i

land.lhs.true7.i.do.end10.i_crit_edge:            ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10.i

if.then.i:                                        ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__rhashtable_remove_fast.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 1076, ptr noundef nonnull @.str.1) #12
  br label %do.end10.i

do.end10.i:                                       ; preds = %if.then.i, %land.lhs.true7.i.do.end10.i_crit_edge, %land.lhs.true.i.do.end10.i_crit_edge, %lor.lhs.false.i.do.end10.i_crit_edge, %rcu_read_lock.exit.i.do.end10.i_crit_edge
  %params.coerce.fca.0.extract.i.i.i = extractvalue [7 x i32] %params.coerce, 0
  %params.coerce.fca.5.extract.i.i.i = extractvalue [7 x i32] %params.coerce, 5
  %5 = inttoptr i32 %params.coerce.fca.5.extract.i.i.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %params.coerce.fca.5.extract.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %params.coerce.fca.5.extract.i.i.i, 0
  %conv.i.i.i = and i32 %params.coerce.fca.0.extract.i.i.i, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %conv.i.i.i, 0
  %params.coerce.fca.1.extract.i.i.i = extractvalue [7 x i32] %params.coerce, 1
  %params.sroa.3.4.extract.shift.i.i.i = lshr i32 %params.coerce.fca.1.extract.i.i.i, 16
  br label %while.cond.i

while.cond.i:                                     ; preds = %do.end33.i.while.cond.i_crit_edge, %do.end10.i
  %tbl.0.i = phi ptr [ %4, %do.end10.i ], [ %37, %do.end33.i.while.cond.i_crit_edge ]
  %6 = load i16, ptr getelementptr inbounds (%struct.rhashtable, ptr @zones_ht, i32 0, i32 3, i32 3), align 2
  %conv.i.i.i.i = zext i16 %6 to i32
  %idx.neg.i.i.i.i = sub nsw i32 0, %conv.i.i.i.i
  %add.ptr.i.i.i.i = getelementptr i8, ptr %obj, i32 %idx.neg.i.i.i.i
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i.i.i, label %cond.true.i.i.i, !prof !141

cond.true.i.i.i:                                  ; preds = %while.cond.i
  br i1 %tobool4.not.i.i.i, label %cond.false.i.i.i, label %cond.true.i.i.i.cond.end.i.i.i_crit_edge

cond.true.i.i.i.cond.end.i.i.i_crit_edge:         ; preds = %cond.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end.i.i.i

cond.false.i.i.i:                                 ; preds = %cond.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %7 = load i16, ptr getelementptr inbounds (%struct.rhashtable, ptr @zones_ht, i32 0, i32 3, i32 1), align 2
  %conv7.i.i.i = zext i16 %7 to i32
  br label %cond.end.i.i.i

cond.end.i.i.i:                                   ; preds = %cond.false.i.i.i, %cond.true.i.i.i.cond.end.i.i.i_crit_edge
  %cond.i.i.i = phi i32 [ %conv7.i.i.i, %cond.false.i.i.i ], [ %conv.i.i.i, %cond.true.i.i.i.cond.end.i.i.i_crit_edge ]
  %hash_rnd.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i, i32 0, i32 2
  %8 = ptrtoint ptr %hash_rnd.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %hash_rnd.i.i.i, align 8
  %call8.i.i.i = tail call i32 %5(ptr noundef %add.ptr.i.i.i.i, i32 noundef %cond.i.i.i, i32 noundef %9) #12
  br label %rht_head_hashfn.exit.i.i

if.then.i.i.i.i.i:                                ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  %hash_rnd.i.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i, i32 0, i32 2
  %10 = ptrtoint ptr %hash_rnd.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %hash_rnd.i.i.i.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i, i32 %params.sroa.3.4.extract.shift.i.i.i
  %12 = load ptr, ptr getelementptr inbounds (%struct.rhashtable, ptr @zones_ht, i32 0, i32 3, i32 7), align 4
  %13 = load i32, ptr getelementptr inbounds (%struct.rhashtable, ptr @zones_ht, i32 0, i32 1), align 4
  %call.i.i.i.i.i = tail call i32 %12(ptr noundef %add.ptr.i.i.i, i32 noundef %13, i32 noundef %11) #12
  br label %rht_head_hashfn.exit.i.i

rht_head_hashfn.exit.i.i:                         ; preds = %if.then.i.i.i.i.i, %cond.end.i.i.i
  %hash.2.i.i.sink.i.i.i = phi i32 [ %call8.i.i.i, %cond.end.i.i.i ], [ %call.i.i.i.i.i, %if.then.i.i.i.i.i ]
  %14 = ptrtoint ptr %tbl.0.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tbl.0.i, align 128
  %sub.i.i.i.i.i = add i32 %15, -1
  %and.i1.i.i.i.i = and i32 %sub.i.i.i.i.i, %hash.2.i.i.sink.i.i.i
  %nest.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i, i32 0, i32 1
  %16 = ptrtoint ptr %nest.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nest.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i3.i.i = icmp eq i32 %17, 0
  br i1 %tobool.not.i3.i.i, label %cond.false.i5.i.i, label %cond.true.i4.i.i, !prof !144

cond.true.i4.i.i:                                 ; preds = %rht_head_hashfn.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i = tail call ptr @__rht_bucket_nested(ptr noundef %tbl.0.i, i32 noundef %and.i1.i.i.i.i) #12
  br label %rht_bucket_var.exit.i.i

cond.false.i5.i.i:                                ; preds = %rht_head_hashfn.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i.i.i = getelementptr %struct.bucket_table, ptr %tbl.0.i, i32 0, i32 8, i32 %and.i1.i.i.i.i
  br label %rht_bucket_var.exit.i.i

rht_bucket_var.exit.i.i:                          ; preds = %cond.false.i5.i.i, %cond.true.i4.i.i
  %cond.i6.i.i = phi ptr [ %call.i.i.i, %cond.true.i4.i.i ], [ %arrayidx.i.i.i, %cond.false.i5.i.i ]
  %tobool.not.i3.i = icmp eq ptr %cond.i6.i.i, null
  br i1 %tobool.not.i3.i, label %rht_bucket_var.exit.i.i.land.rhs.i_crit_edge, label %if.end.i.i

rht_bucket_var.exit.i.i.land.rhs.i_crit_edge:     ; preds = %rht_bucket_var.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs.i

if.end.i.i:                                       ; preds = %rht_bucket_var.exit.i.i
  tail call fastcc void @rht_lock(ptr noundef %tbl.0.i, ptr noundef nonnull %cond.i6.i.i) #12
  %call.i8.i.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %tbl.0.i, i32 noundef %and.i1.i.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i8.i.i)
  %tobool.not.i9.i.i = icmp eq i32 %call.i8.i.i, 0
  br i1 %tobool.not.i9.i.i, label %land.lhs.true.i.i.i, label %if.end.i.i.rht_ptr.exit.i.i_crit_edge

if.end.i.i.rht_ptr.exit.i.i_crit_edge:            ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rht_ptr.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end.i.i
  %call1.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool2.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool2.not.i.i.i, label %land.lhs.true.i.i.i.rht_ptr.exit.i.i_crit_edge, label %land.lhs.true3.i.i.i

land.lhs.true.i.i.i.rht_ptr.exit.i.i_crit_edge:   ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rht_ptr.exit.i.i

land.lhs.true3.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b7.i.i.i = load i1, ptr @rht_ptr.__warned, align 1
  br i1 %.b7.i.i.i, label %land.lhs.true3.i.i.i.rht_ptr.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true3.i.i.i.rht_ptr.exit.i.i_crit_edge:  ; preds = %land.lhs.true3.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rht_ptr.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true3.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rht_ptr.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 377, ptr noundef nonnull @.str.4) #12
  br label %rht_ptr.exit.i.i

rht_ptr.exit.i.i:                                 ; preds = %if.then.i.i.i, %land.lhs.true3.i.i.i.rht_ptr.exit.i.i_crit_edge, %land.lhs.true.i.i.i.rht_ptr.exit.i.i_crit_edge, %if.end.i.i.rht_ptr.exit.i.i_crit_edge
  %18 = ptrtoint ptr %cond.i6.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cond.i6.i.i, align 4
  %20 = ptrtoint ptr %19 to i32
  %and.i.i.i.i = and i32 %20, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  %21 = ptrtoint ptr %cond.i6.i.i to i32
  %or.i.i.i.i = or i32 %21, 1
  %cond.i.i.i.i = select i1 %tobool.not.i.i.i.i, i32 %or.i.i.i.i, i32 %and.i.i.i.i
  %and.i20.i.i = and i32 %cond.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i20.i.i)
  %tobool.i.not21.i.i = icmp eq i32 %and.i20.i.i, 0
  br i1 %tobool.i.not21.i.i, label %for.body.preheader.i.i, label %rht_ptr.exit.i.i.unlocked.i.i_crit_edge

rht_ptr.exit.i.i.unlocked.i.i_crit_edge:          ; preds = %rht_ptr.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlocked.i.i

for.body.preheader.i.i:                           ; preds = %rht_ptr.exit.i.i
  %22 = inttoptr i32 %cond.i.i.i.i to ptr
  %cmp.not.i20.i = icmp eq ptr %22, %obj
  br i1 %cmp.not.i20.i, label %for.body.preheader.i.i.do.body54.i.i_crit_edge, label %for.body.preheader.i.i.do.body145.i.i_crit_edge

for.body.preheader.i.i.do.body145.i.i_crit_edge:  ; preds = %for.body.preheader.i.i
  br label %do.body145.i.i

for.body.preheader.i.i.do.body54.i.i_crit_edge:   ; preds = %for.body.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body54.i.i

for.body.i.i:                                     ; preds = %do.end156.i.i
  %cmp.not.i.i = icmp eq ptr %27, %obj
  br i1 %cmp.not.i.i, label %for.body.i.i.do.body54.i.i_crit_edge, label %for.body.i.i.do.body145.i.i_crit_edge

for.body.i.i.do.body145.i.i_crit_edge:            ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body145.i.i

for.body.i.i.do.body54.i.i_crit_edge:             ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body54.i.i

do.body54.i.i:                                    ; preds = %for.body.i.i.do.body54.i.i_crit_edge, %for.body.preheader.i.i.do.body54.i.i_crit_edge
  %pprev.023.i.lcssa.i = phi ptr [ %he.022.i21.i, %for.body.i.i.do.body54.i.i_crit_edge ], [ null, %for.body.preheader.i.i.do.body54.i.i_crit_edge ]
  %call55.i.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %tbl.0.i, i32 noundef %and.i1.i.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55.i.i)
  %tobool56.not.i.i = icmp eq i32 %call55.i.i, 0
  br i1 %tobool56.not.i.i, label %land.lhs.true57.i.i, label %do.body54.i.i.do.end65.i.i_crit_edge

do.body54.i.i.do.end65.i.i_crit_edge:             ; preds = %do.body54.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end65.i.i

land.lhs.true57.i.i:                              ; preds = %do.body54.i.i
  %call58.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58.i.i)
  %tobool59.not.i.i = icmp eq i32 %call58.i.i, 0
  br i1 %tobool59.not.i.i, label %land.lhs.true57.i.i.do.end65.i.i_crit_edge, label %land.lhs.true60.i.i

land.lhs.true57.i.i.do.end65.i.i_crit_edge:       ; preds = %land.lhs.true57.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end65.i.i

land.lhs.true60.i.i:                              ; preds = %land.lhs.true57.i.i
  %.b2.i.i = load i1, ptr @__rhashtable_remove_fast_one.__warned.12, align 1
  br i1 %.b2.i.i, label %land.lhs.true60.i.i.do.end65.i.i_crit_edge, label %if.then62.i.i

land.lhs.true60.i.i.do.end65.i.i_crit_edge:       ; preds = %land.lhs.true60.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end65.i.i

if.then62.i.i:                                    ; preds = %land.lhs.true60.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__rhashtable_remove_fast_one.__warned.12, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 1032, ptr noundef nonnull @.str.4) #12
  br label %do.end65.i.i

do.end65.i.i:                                     ; preds = %if.then62.i.i, %land.lhs.true60.i.i.do.end65.i.i_crit_edge, %land.lhs.true57.i.i.do.end65.i.i_crit_edge, %do.body54.i.i.do.end65.i.i_crit_edge
  %23 = ptrtoint ptr %obj to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %obj, align 4
  %tobool103.not.i.i = icmp eq ptr %pprev.023.i.lcssa.i, null
  br i1 %tobool103.not.i.i, label %if.else142.i.i, label %do.body105.i.i

do.body105.i.i:                                   ; preds = %do.end65.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !158
  %25 = ptrtoint ptr %pprev.023.i.lcssa.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %24, ptr %pprev.023.i.lcssa.i, align 4
  tail call fastcc void @rht_unlock(ptr noundef %tbl.0.i, ptr noundef nonnull %cond.i6.i.i) #12
  br label %if.then160.i.i

if.else142.i.i:                                   ; preds = %do.end65.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @rht_assign_unlock(ptr noundef %tbl.0.i, ptr noundef nonnull %cond.i6.i.i, ptr noundef %24) #12
  br label %if.then160.i.i

do.body145.i.i:                                   ; preds = %for.body.i.i.do.body145.i.i_crit_edge, %for.body.preheader.i.i.do.body145.i.i_crit_edge
  %he.022.i21.i = phi ptr [ %27, %for.body.i.i.do.body145.i.i_crit_edge ], [ %22, %for.body.preheader.i.i.do.body145.i.i_crit_edge ]
  %call146.i.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %tbl.0.i, i32 noundef %and.i1.i.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call146.i.i)
  %tobool147.not.i.i = icmp eq i32 %call146.i.i, 0
  br i1 %tobool147.not.i.i, label %land.lhs.true148.i.i, label %do.body145.i.i.do.end156.i.i_crit_edge

do.body145.i.i.do.end156.i.i_crit_edge:           ; preds = %do.body145.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end156.i.i

land.lhs.true148.i.i:                             ; preds = %do.body145.i.i
  %call149.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call149.i.i)
  %tobool150.not.i.i = icmp eq i32 %call149.i.i, 0
  br i1 %tobool150.not.i.i, label %land.lhs.true148.i.i.do.end156.i.i_crit_edge, label %land.lhs.true151.i.i

land.lhs.true148.i.i.do.end156.i.i_crit_edge:     ; preds = %land.lhs.true148.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end156.i.i

land.lhs.true151.i.i:                             ; preds = %land.lhs.true148.i.i
  %.b2281.i.i = load i1, ptr @__rhashtable_remove_fast_one.__warned.14, align 1
  br i1 %.b2281.i.i, label %land.lhs.true151.i.i.do.end156.i.i_crit_edge, label %if.then153.i.i

land.lhs.true151.i.i.do.end156.i.i_crit_edge:     ; preds = %land.lhs.true151.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end156.i.i

if.then153.i.i:                                   ; preds = %land.lhs.true151.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__rhashtable_remove_fast_one.__warned.14, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 1004, ptr noundef nonnull @.str.4) #12
  br label %do.end156.i.i

do.end156.i.i:                                    ; preds = %if.then153.i.i, %land.lhs.true151.i.i.do.end156.i.i_crit_edge, %land.lhs.true148.i.i.do.end156.i.i_crit_edge, %do.body145.i.i.do.end156.i.i_crit_edge
  %26 = ptrtoint ptr %he.022.i21.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %he.022.i21.i, align 4
  %28 = ptrtoint ptr %27 to i32
  %and.i.i.i = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %for.body.i.i, label %do.end156.i.i.unlocked.i.i_crit_edge

do.end156.i.i.unlocked.i.i_crit_edge:             ; preds = %do.end156.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlocked.i.i

unlocked.i.i:                                     ; preds = %do.end156.i.i.unlocked.i.i_crit_edge, %rht_ptr.exit.i.i.unlocked.i.i_crit_edge
  tail call fastcc void @rht_unlock(ptr noundef %tbl.0.i, ptr noundef nonnull %cond.i6.i.i) #12
  br label %land.rhs.i

if.then160.i.i:                                   ; preds = %if.else142.i.i, %do.body105.i.i
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef getelementptr inbounds (%struct.rhashtable, ptr @zones_ht, i32 0, i32 8), i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr getelementptr inbounds (%struct.rhashtable, ptr @zones_ht, i32 0, i32 8), i32 1, i32 3, i32 1) #12
  %29 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) getelementptr inbounds (%struct.rhashtable, ptr @zones_ht, i32 0, i32 8), ptr getelementptr inbounds (%struct.rhashtable, ptr @zones_ht, i32 0, i32 8), i32 1, ptr elementtype(i32) getelementptr inbounds (%struct.rhashtable, ptr @zones_ht, i32 0, i32 8)) #12, !srcloc !159
  %30 = load i8, ptr getelementptr inbounds (%struct.rhashtable, ptr @zones_ht, i32 0, i32 3, i32 6), align 2, !range !148
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool161.not.i.i = icmp eq i8 %30, 0
  br i1 %tobool161.not.i.i, label %if.then160.i.i.while.end.i_crit_edge, label %land.rhs162.i.i

if.then160.i.i.while.end.i_crit_edge:             ; preds = %if.then160.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i

land.rhs162.i.i:                                  ; preds = %if.then160.i.i
  %call.i.i.i10.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef getelementptr inbounds (%struct.rhashtable, ptr @zones_ht, i32 0, i32 8), i32 noundef 4) #12
  %31 = load volatile i32, ptr getelementptr inbounds (%struct.rhashtable, ptr @zones_ht, i32 0, i32 8), align 4
  %32 = ptrtoint ptr %tbl.0.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %tbl.0.i, align 128
  %mul.i.i.i = mul i32 %33, 3
  %div.i.i.i = udiv i32 %mul.i.i.i, 10
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %div.i.i.i)
  %cmp.i.i.i = icmp ult i32 %31, %div.i.i.i
  br i1 %cmp.i.i.i, label %rht_shrink_below_30.exit.i.i, label %land.rhs162.i.i.while.end.i_crit_edge

land.rhs162.i.i.while.end.i_crit_edge:            ; preds = %land.rhs162.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i

rht_shrink_below_30.exit.i.i:                     ; preds = %land.rhs162.i.i
  %34 = load i16, ptr getelementptr inbounds (%struct.rhashtable, ptr @zones_ht, i32 0, i32 3, i32 5), align 4
  %conv.i11.i.i = zext i16 %34 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %conv.i11.i.i)
  %cmp2.i.i.i = icmp ugt i32 %33, %conv.i11.i.i
  br i1 %cmp2.i.i.i, label %if.then168.i.i, label %rht_shrink_below_30.exit.i.i.while.end.i_crit_edge, !prof !141

rht_shrink_below_30.exit.i.i.while.end.i_crit_edge: ; preds = %rht_shrink_below_30.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i

if.then168.i.i:                                   ; preds = %rht_shrink_below_30.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %35 = load ptr, ptr @system_wq, align 4
  %call.i.i12.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %35, ptr noundef getelementptr inbounds (%struct.rhashtable, ptr @zones_ht, i32 0, i32 5)) #12
  br label %while.end.i

land.rhs.i:                                       ; preds = %unlocked.i.i, %rht_bucket_var.exit.i.i.land.rhs.i_crit_edge
  %future_tbl.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i, i32 0, i32 5
  %36 = ptrtoint ptr %future_tbl.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile ptr, ptr %future_tbl.i, align 4
  %call20.i = tail call i32 @lockdep_rht_mutex_is_held(ptr noundef nonnull @zones_ht) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %tobool21.not.i = icmp eq i32 %call20.i, 0
  br i1 %tobool21.not.i, label %lor.lhs.false22.i, label %land.rhs.i.do.end33.i_crit_edge

land.rhs.i.do.end33.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end33.i

lor.lhs.false22.i:                                ; preds = %land.rhs.i
  %call23.i = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %tobool24.not.i = icmp eq i32 %call23.i, 0
  br i1 %tobool24.not.i, label %land.lhs.true25.i, label %lor.lhs.false22.i.do.end33.i_crit_edge

lor.lhs.false22.i.do.end33.i_crit_edge:           ; preds = %lor.lhs.false22.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end33.i

land.lhs.true25.i:                                ; preds = %lor.lhs.false22.i
  %call26.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %tobool27.not.i = icmp eq i32 %call26.i, 0
  br i1 %tobool27.not.i, label %land.lhs.true25.i.do.end33.i_crit_edge, label %land.lhs.true28.i

land.lhs.true25.i.do.end33.i_crit_edge:           ; preds = %land.lhs.true25.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end33.i

land.lhs.true28.i:                                ; preds = %land.lhs.true25.i
  %.b401.i = load i1, ptr @__rhashtable_remove_fast.__warned.8, align 1
  br i1 %.b401.i, label %land.lhs.true28.i.do.end33.i_crit_edge, label %if.then30.i

land.lhs.true28.i.do.end33.i_crit_edge:           ; preds = %land.lhs.true28.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end33.i

if.then30.i:                                      ; preds = %land.lhs.true28.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__rhashtable_remove_fast.__warned.8, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 1085, ptr noundef nonnull @.str.1) #12
  br label %do.end33.i

do.end33.i:                                       ; preds = %if.then30.i, %land.lhs.true28.i.do.end33.i_crit_edge, %land.lhs.true25.i.do.end33.i_crit_edge, %lor.lhs.false22.i.do.end33.i_crit_edge, %land.rhs.i.do.end33.i_crit_edge
  %tobool35.not.i = icmp eq ptr %37, null
  br i1 %tobool35.not.i, label %do.end33.i.while.end.i_crit_edge, label %do.end33.i.while.cond.i_crit_edge

do.end33.i.while.cond.i_crit_edge:                ; preds = %do.end33.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i

do.end33.i.while.end.i_crit_edge:                 ; preds = %do.end33.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i

while.end.i:                                      ; preds = %do.end33.i.while.end.i_crit_edge, %if.then168.i.i, %rht_shrink_below_30.exit.i.i.while.end.i_crit_edge, %land.rhs162.i.i.while.end.i_crit_edge, %if.then160.i.i.while.end.i_crit_edge
  %call.i4.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i4.i, label %while.end.i.__rhashtable_remove_fast.exit_crit_edge, label %land.lhs.true.i7.i

while.end.i.__rhashtable_remove_fast.exit_crit_edge: ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__rhashtable_remove_fast.exit

land.lhs.true.i7.i:                               ; preds = %while.end.i
  %call1.i5.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i5.i)
  %tobool.not.i6.i = icmp eq i32 %call1.i5.i, 0
  br i1 %tobool.not.i6.i, label %land.lhs.true.i7.i.__rhashtable_remove_fast.exit_crit_edge, label %land.lhs.true2.i9.i

land.lhs.true.i7.i.__rhashtable_remove_fast.exit_crit_edge: ; preds = %land.lhs.true.i7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__rhashtable_remove_fast.exit

land.lhs.true2.i9.i:                              ; preds = %land.lhs.true.i7.i
  %.b4.i8.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i8.i, label %land.lhs.true2.i9.i.__rhashtable_remove_fast.exit_crit_edge, label %if.then.i10.i

land.lhs.true2.i9.i.__rhashtable_remove_fast.exit_crit_edge: ; preds = %land.lhs.true2.i9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__rhashtable_remove_fast.exit

if.then.i10.i:                                    ; preds = %land.lhs.true2.i9.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 724, ptr noundef nonnull @.str.15) #12
  br label %__rhashtable_remove_fast.exit

__rhashtable_remove_fast.exit:                    ; preds = %if.then.i10.i, %land.lhs.true2.i9.i.__rhashtable_remove_fast.exit_crit_edge, %land.lhs.true.i7.i.__rhashtable_remove_fast.exit_crit_edge, %while.end.i.__rhashtable_remove_fast.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !160
  %38 = tail call i32 @llvm.read_register.i32(metadata !131) #12
  %and.i.i.i.i.i11.i = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i.i.i.i11.i to ptr
  %preempt_count.i.i.i.i12.i = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %preempt_count.i.i.i.i12.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %preempt_count.i.i.i.i12.i, align 4
  %sub.i.i.i.i = add i32 %41, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i12.i, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tcf_ct_flow_table_cleanup_work(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %nf_ft = getelementptr i8, ptr %work, i32 56
  tail call void @nf_flow_table_free(ptr noundef %nf_ft) #12
  %flow_block = getelementptr i8, ptr %work, i32 404
  %flow_block_lock = getelementptr i8, ptr %work, i32 412
  tail call void @down_write(ptr noundef %flow_block_lock) #12
  %0 = ptrtoint ptr %flow_block to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %flow_block, align 4
  %cmp.not30 = icmp eq ptr %1, %flow_block
  br i1 %cmp.not30, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn.in31 = phi ptr [ %.pn, %list_del.exit.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %block_cb.0 = getelementptr i8, ptr %.pn.in31, i32 -8
  %2 = ptrtoint ptr %.pn.in31 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn = load ptr, ptr %.pn.in31, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in31) #12
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in31, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %.pn.in31 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %.pn.in31, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %9 = ptrtoint ptr %.pn.in31 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in31, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in31, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @flow_block_cb_free(ptr noundef %block_cb.0) #12
  %cmp.not = icmp eq ptr %.pn, %flow_block
  br i1 %cmp.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %add.ptr = getelementptr i8, ptr %work, i32 -4
  tail call void @up_write(ptr noundef %flow_block_lock) #12
  tail call void @kfree(ptr noundef %add.ptr) #12
  tail call void @module_put(ptr noundef null) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_rcu_work(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lockdep_rht_mutex_is_held(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #1

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
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rht_lock(ptr noundef %tbl, ptr noundef %bkt) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @local_bh_disable()
  %0 = tail call i32 @llvm.read_register.i32(metadata !131) #12
  %and.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %3, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !161
  br label %while.cond.i

while.cond.i:                                     ; preds = %do.body14.i, %entry
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %bkt, i32 noundef 4) #12
  %4 = ptrtoint ptr %bkt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %bkt, align 4
  %and.i.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %test_and_set_bit_lock.exit.i, label %while.cond.i.do.body2.i_crit_edge, !prof !162

while.cond.i.do.body2.i_crit_edge:                ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body2.i

test_and_set_bit_lock.exit.i:                     ; preds = %while.cond.i
  tail call void @llvm.prefetch.p0(ptr %bkt, i32 1, i32 3, i32 1) #12
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %bkt, ptr %bkt, i32 1, ptr elementtype(i32) %bkt) #12, !srcloc !163
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !164
  %and1.i.i.i = and i32 %asmresult.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %phi.cmp.i.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %phi.cmp.i.not.i, label %__here, label %test_and_set_bit_lock.exit.i.do.body2.i_crit_edge, !prof !144

test_and_set_bit_lock.exit.i.do.body2.i_crit_edge: ; preds = %test_and_set_bit_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body2.i

do.body2.i:                                       ; preds = %test_and_set_bit_lock.exit.i.do.body2.i_crit_edge, %while.cond.i.do.body2.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !165
  %7 = tail call i32 @llvm.read_register.i32(metadata !131) #12
  %and.i.i.i1.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i1.i to ptr
  %preempt_count.i.i2.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i.i2.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i.i2.i, align 4
  %sub.i.i = add i32 %10, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i2.i, align 4
  br label %do.body4.i

do.body4.i:                                       ; preds = %do.body4.i.do.body4.i_crit_edge, %do.body2.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !166
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #12, !srcloc !167
  %11 = ptrtoint ptr %bkt to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %bkt, align 4
  %and1.i.i = and i32 %12, 1
  %tobool12.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool12.not.i, label %do.body14.i, label %do.body4.i.do.body4.i_crit_edge

do.body4.i.do.body4.i_crit_edge:                  ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body4.i

do.body14.i:                                      ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #14
  %13 = tail call i32 @llvm.read_register.i32(metadata !131) #12
  %and.i.i.i3.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i3.i to ptr
  %preempt_count.i.i4.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i4.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i4.i, align 4
  %add.i5.i = add i32 %16, 1
  store volatile i32 %add.i5.i, ptr %preempt_count.i.i4.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !168
  br label %while.cond.i

__here:                                           ; preds = %test_and_set_bit_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %dep_map = getelementptr inbounds %struct.bucket_table, ptr %tbl, i32 0, i32 6
  tail call void @lock_acquire(ptr noundef %dep_map, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rht_lock, %__here) to i32)) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lockdep_rht_bucket_is_held(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rht_unlock(ptr noundef %tbl, ptr noundef %bkt) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  %dep_map = getelementptr inbounds %struct.bucket_table, ptr %tbl, i32 0, i32 6
  tail call void @lock_release(ptr noundef %dep_map, i32 noundef ptrtoint (ptr blockaddress(@rht_unlock, %__here) to i32)) #12
  %0 = ptrtoint ptr %bkt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %bkt, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %do.body4.i, label %bit_spin_unlock.exit, !prof !141

do.body4.i:                                       ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/bit_spinlock.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 60, 0\0A.popsection", ""() #12, !srcloc !169
  unreachable

bit_spin_unlock.exit:                             ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %bkt, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !170
  tail call void @llvm.prefetch.p0(ptr %bkt, i32 1, i32 3, i32 1) #12
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %bkt, ptr %bkt, i32 1, ptr elementtype(i32) %bkt) #12, !srcloc !171
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !172
  %3 = tail call i32 @llvm.read_register.i32(metadata !131) #12
  %and.i.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %6, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  tail call fastcc void @local_bh_enable()
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rht_assign_unlock(ptr noundef %tbl, ptr noundef %bkt, ptr noundef %obj) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %0 = ptrtoint ptr %obj to i32
  %and.i = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  %spec.select = select i1 %tobool.i.not, ptr %obj, ptr null
  %dep_map = getelementptr inbounds %struct.bucket_table, ptr %tbl, i32 0, i32 6
  tail call void @lock_release(ptr noundef %dep_map, i32 noundef ptrtoint (ptr blockaddress(@rht_assign_unlock, %__here) to i32)) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !173
  %1 = ptrtoint ptr %bkt to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %spec.select, ptr %bkt, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !174
  %2 = tail call i32 @llvm.read_register.i32(metadata !131) #12
  %and.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i, align 4
  %sub.i = add i32 %5, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i, align 4
  tail call fastcc void @local_bh_enable()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__rht_bucket_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

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
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_flow_table_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @flow_block_cb_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @net_generic(ptr noundef %net, i32 noundef %id) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %0 = tail call i32 @llvm.read_register.i32(metadata !131) #12
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !157
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
  %gen = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 43
  %4 = ptrtoint ptr %gen to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %gen, align 128
  %call = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end7_crit_edge

rcu_read_lock.exit.do.end7_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end7

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b9 = load i1, ptr @net_generic.__warned, align 1
  br i1 %.b9, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @net_generic.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 45, ptr noundef nonnull @.str.1) #12
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %rcu_read_lock.exit.do.end7_crit_edge
  %arrayidx = getelementptr [0 x ptr], ptr %5, i32 0, i32 %id
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %call.i10 = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i10, label %do.end7.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i13

do.end7.rcu_read_unlock.exit_crit_edge:           ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true.i13:                                ; preds = %do.end7
  %call1.i11 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i11)
  %tobool.not.i12 = icmp eq i32 %call1.i11, 0
  br i1 %tobool.not.i12, label %land.lhs.true.i13.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i15

land.lhs.true.i13.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i13
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true2.i15:                               ; preds = %land.lhs.true.i13
  %.b4.i14 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i14, label %land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge, label %if.then.i16

land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i15
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

if.then.i16:                                      ; preds = %land.lhs.true2.i15
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 724, ptr noundef nonnull @.str.15) #12
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i16, %land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i13.rcu_read_unlock.exit_crit_edge, %do.end7.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !160
  %8 = tail call i32 @llvm.read_register.i32(metadata !131) #12
  %and.i.i.i.i.i17 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i17 to ptr
  %preempt_count.i.i.i.i18 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i18 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i18, align 4
  %sub.i.i.i = add i32 %11, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i18, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  ret ptr %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcf_idr_search(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcf_idr_check_alloc(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcf_idr_create_from_flags(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcf_idr_cleanup(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcf_idr_release(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcf_action_check_ctrlact(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tcf_ct_flow_table_get(ptr noundef %params) unnamed_addr #2 align 64 {
entry:
  %old.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @zones_mutex, i32 noundef 0) #12
  %zone = getelementptr inbounds %struct.tcf_ct_params, ptr %params, i32 0, i32 1
  %0 = tail call i32 @llvm.read_register.i32(metadata !131) #12
  %and.i.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !157
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i.i, label %entry.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

entry.rcu_read_lock.exit.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %entry
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 696, ptr noundef nonnull @.str.10) #12
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %entry.rcu_read_lock.exit.i_crit_edge
  %4 = load volatile ptr, ptr @zones_ht, align 4
  %call.i.i.i = tail call i32 @lockdep_rht_mutex_is_held(ptr noundef nonnull @zones_ht) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %lor.lhs.false.i.i.i, label %rcu_read_lock.exit.i.do.end12.i.i.i_crit_edge

rcu_read_lock.exit.i.do.end12.i.i.i_crit_edge:    ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end12.i.i.i

lor.lhs.false.i.i.i:                              ; preds = %rcu_read_lock.exit.i
  %call5.i.i.i = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i.i)
  %tobool6.not.i.i.i = icmp eq i32 %call5.i.i.i, 0
  br i1 %tobool6.not.i.i.i, label %land.lhs.true.i.i.i, label %lor.lhs.false.i.i.i.do.end12.i.i.i_crit_edge

lor.lhs.false.i.i.i.do.end12.i.i.i_crit_edge:     ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end12.i.i.i

land.lhs.true.i.i.i:                              ; preds = %lor.lhs.false.i.i.i
  %call7.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i.i)
  %tobool8.not.i.i.i = icmp eq i32 %call7.i.i.i, 0
  br i1 %tobool8.not.i.i.i, label %land.lhs.true.i.i.i.do.end12.i.i.i_crit_edge, label %land.lhs.true9.i.i.i

land.lhs.true.i.i.i.do.end12.i.i.i_crit_edge:     ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end12.i.i.i

land.lhs.true9.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b2.i.i.i = load i1, ptr @__rhashtable_lookup.__warned, align 1
  br i1 %.b2.i.i.i, label %land.lhs.true9.i.i.i.do.end12.i.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true9.i.i.i.do.end12.i.i.i_crit_edge:    ; preds = %land.lhs.true9.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end12.i.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true9.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__rhashtable_lookup.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 594, ptr noundef nonnull @.str.1) #12
  br label %do.end12.i.i.i

do.end12.i.i.i:                                   ; preds = %if.then.i.i.i, %land.lhs.true9.i.i.i.do.end12.i.i.i_crit_edge, %land.lhs.true.i.i.i.do.end12.i.i.i_crit_edge, %lor.lhs.false.i.i.i.do.end12.i.i.i_crit_edge, %rcu_read_lock.exit.i.do.end12.i.i.i_crit_edge
  %arrayidx77.i = getelementptr i8, ptr %zone, i32 1
  br label %restart.i.i.i

restart.i.i.i:                                    ; preds = %do.end60.i.i.i.restart.i.i.i_crit_edge, %do.end12.i.i.i
  %tbl.0.i.i.i = phi ptr [ %4, %do.end12.i.i.i ], [ %28, %do.end60.i.i.i.restart.i.i.i_crit_edge ]
  %hash_rnd.i.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i.i.i, i32 0, i32 2
  %5 = ptrtoint ptr %hash_rnd.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %hash_rnd.i.i.i.i, align 8
  %add1.i = add i32 %6, -559038735
  %7 = ptrtoint ptr %arrayidx77.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx77.i, align 1
  %conv78.i = zext i8 %8 to i32
  %shl79.i = shl nuw nsw i32 %conv78.i, 8
  %add80.i = add i32 %shl79.i, %add1.i
  %9 = ptrtoint ptr %zone to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %zone, align 1
  %conv83.i = zext i8 %10 to i32
  %add84.i = add i32 %add80.i, %conv83.i
  %or.i206.i = tail call i32 @llvm.fshl.i32(i32 %add1.i, i32 %add1.i, i32 14) #12
  %sub87.i = sub i32 0, %or.i206.i
  %xor88.i = xor i32 %add84.i, %sub87.i
  %or.i207.i = tail call i32 @llvm.fshl.i32(i32 %sub87.i, i32 %sub87.i, i32 11) #12
  %sub90.i = sub i32 %xor88.i, %or.i207.i
  %xor91.i = xor i32 %sub90.i, %add1.i
  %or.i208.i = tail call i32 @llvm.fshl.i32(i32 %sub90.i, i32 %sub90.i, i32 25) #12
  %sub93.i = sub i32 %xor91.i, %or.i208.i
  %xor94.i = xor i32 %sub93.i, %sub87.i
  %or.i209.i = tail call i32 @llvm.fshl.i32(i32 %sub93.i, i32 %sub93.i, i32 16) #12
  %sub96.i = sub i32 %xor94.i, %or.i209.i
  %xor97.i = xor i32 %sub96.i, %sub90.i
  %or.i210.i = tail call i32 @llvm.fshl.i32(i32 %sub96.i, i32 %sub96.i, i32 4) #12
  %sub99.i = sub i32 %xor97.i, %or.i210.i
  %xor100.i = xor i32 %sub99.i, %sub93.i
  %or.i211.i = tail call i32 @llvm.fshl.i32(i32 %sub99.i, i32 %sub99.i, i32 14) #12
  %sub102.i = sub i32 %xor100.i, %or.i211.i
  %xor103.i = xor i32 %sub102.i, %sub96.i
  %or.i212.i = tail call i32 @llvm.fshl.i32(i32 %sub102.i, i32 %sub102.i, i32 24) #12
  %sub105.i = sub i32 %xor103.i, %or.i212.i
  %11 = ptrtoint ptr %tbl.0.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tbl.0.i.i.i, align 128
  %sub.i.i.i.i.i = add i32 %12, -1
  %and.i1.i.i.i.i = and i32 %sub105.i, %sub.i.i.i.i.i
  %nest.i.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %nest.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %nest.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i.i.i.i = icmp eq i32 %14, 0
  br i1 %tobool.not.i.i.i.i, label %cond.false.i.i.i.i, label %cond.true.i.i.i.i, !prof !144

cond.true.i.i.i.i:                                ; preds = %restart.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i.i = tail call ptr @rht_bucket_nested(ptr noundef %tbl.0.i.i.i, i32 noundef %and.i1.i.i.i.i) #12
  br label %rht_bucket.exit.i.i.i

cond.false.i.i.i.i:                               ; preds = %restart.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i.i.i.i = getelementptr %struct.bucket_table, ptr %tbl.0.i.i.i, i32 0, i32 8, i32 %and.i1.i.i.i.i
  br label %rht_bucket.exit.i.i.i

rht_bucket.exit.i.i.i:                            ; preds = %cond.false.i.i.i.i, %cond.true.i.i.i.i
  %cond.i.i.i.i = phi ptr [ %call.i.i.i.i, %cond.true.i.i.i.i ], [ %arrayidx.i.i.i.i, %cond.false.i.i.i.i ]
  %15 = ptrtoint ptr %cond.i.i.i.i to i32
  %or.i.i.i.i.i = or i32 %15, 1
  %16 = inttoptr i32 %or.i.i.i.i.i to ptr
  br label %do.body16.i.i.i

do.body16.i.i.i:                                  ; preds = %do.cond34.i.i.i.do.body16.i.i.i_crit_edge, %rht_bucket.exit.i.i.i
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !175
  %17 = ptrtoint ptr %cond.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %cond.i.i.i.i, align 4
  %call.i3.i.i.i = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3.i.i.i)
  %tobool.not.i4.i.i.i = icmp eq i32 %call.i3.i.i.i, 0
  br i1 %tobool.not.i4.i.i.i, label %land.lhs.true.i.i.i.i, label %do.body16.i.i.i.rht_ptr_rcu.exit.i.i.i_crit_edge

do.body16.i.i.i.rht_ptr_rcu.exit.i.i.i_crit_edge: ; preds = %do.body16.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rht_ptr_rcu.exit.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %do.body16.i.i.i
  %call2.i.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i.i)
  %tobool3.not.i.i.i.i = icmp eq i32 %call2.i.i.i.i, 0
  br i1 %tobool3.not.i.i.i.i, label %land.lhs.true.i.i.i.i.rht_ptr_rcu.exit.i.i.i_crit_edge, label %land.lhs.true4.i.i.i.i

land.lhs.true.i.i.i.i.rht_ptr_rcu.exit.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rht_ptr_rcu.exit.i.i.i

land.lhs.true4.i.i.i.i:                           ; preds = %land.lhs.true.i.i.i.i
  %.b11.i.i.i.i = load i1, ptr @rht_ptr_rcu.__warned, align 1
  br i1 %.b11.i.i.i.i, label %land.lhs.true4.i.i.i.i.rht_ptr_rcu.exit.i.i.i_crit_edge, label %if.then.i.i.i.i

land.lhs.true4.i.i.i.i.rht_ptr_rcu.exit.i.i.i_crit_edge: ; preds = %land.lhs.true4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rht_ptr_rcu.exit.i.i.i

if.then.i.i.i.i:                                  ; preds = %land.lhs.true4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rht_ptr_rcu.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 369, ptr noundef nonnull @.str.1) #12
  br label %rht_ptr_rcu.exit.i.i.i

rht_ptr_rcu.exit.i.i.i:                           ; preds = %if.then.i.i.i.i, %land.lhs.true4.i.i.i.i.rht_ptr_rcu.exit.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.rht_ptr_rcu.exit.i.i.i_crit_edge, %do.body16.i.i.i.rht_ptr_rcu.exit.i.i.i_crit_edge
  %19 = ptrtoint ptr %18 to i32
  %and.i.i5.i.i.i = and i32 %19, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i5.i.i.i)
  %tobool.not.i.i6.i.i.i = icmp eq i32 %and.i.i5.i.i.i, 0
  %cond.i.i.i.i.i = select i1 %tobool.not.i.i6.i.i.i, i32 %or.i.i.i.i.i, i32 %and.i.i5.i.i.i
  %20 = inttoptr i32 %cond.i.i.i.i.i to ptr
  %and.i15.i.i.i = and i32 %cond.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i15.i.i.i)
  %tobool.i.not16.i.i.i = icmp eq i32 %and.i15.i.i.i, 0
  br i1 %tobool.i.not16.i.i.i, label %for.body.i.i.i.preheader, label %rht_ptr_rcu.exit.i.i.i.do.cond34.i.i.i_crit_edge

rht_ptr_rcu.exit.i.i.i.do.cond34.i.i.i_crit_edge: ; preds = %rht_ptr_rcu.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.cond34.i.i.i

for.body.i.i.i.preheader:                         ; preds = %rht_ptr_rcu.exit.i.i.i
  %21 = load i16, ptr getelementptr inbounds (%struct.rhashtable, ptr @zones_ht, i32 0, i32 3, i32 3), align 2
  %conv.i7.i.i.i = zext i16 %21 to i32
  %idx.neg.i8.i.i.i = sub nsw i32 0, %conv.i7.i.i.i
  %22 = load i16, ptr getelementptr inbounds (%struct.rhashtable, ptr @zones_ht, i32 0, i32 3, i32 2), align 4
  %conv.i10.i.i.i = zext i16 %22 to i32
  %23 = load i16, ptr getelementptr inbounds (%struct.rhashtable, ptr @zones_ht, i32 0, i32 3, i32 1), align 2
  %conv3.i.i.i.i = zext i16 %23 to i32
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %for.body.i.i.i.preheader
  %he.017.i.i.i = phi ptr [ %25, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ %20, %for.body.i.i.i.preheader ]
  %add.ptr.i9.i.i.i = getelementptr i8, ptr %he.017.i.i.i, i32 %idx.neg.i8.i.i.i
  %add.ptr.i11.i.i.i = getelementptr i8, ptr %add.ptr.i9.i.i.i, i32 %conv.i10.i.i.i
  %bcmp.i.i.i = tail call i32 @bcmp(ptr %add.ptr.i11.i.i.i, ptr %zone, i32 %conv3.i.i.i.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i.i)
  %tobool26.not.i.i.i = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %tobool26.not.i.i.i, label %__rhashtable_lookup.exit.i.i, label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %for.body.i.i.i
  %24 = ptrtoint ptr %he.017.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile ptr, ptr %he.017.i.i.i, align 4
  %26 = ptrtoint ptr %25 to i32
  %and.i.i.i.i = and i32 %26, 1
  %tobool.i.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i, label %for.inc.i.i.i.for.body.i.i.i_crit_edge, label %for.inc.i.i.i.do.cond34.i.i.i_crit_edge

for.inc.i.i.i.do.cond34.i.i.i_crit_edge:          ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.cond34.i.i.i

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i.i

do.cond34.i.i.i:                                  ; preds = %for.inc.i.i.i.do.cond34.i.i.i_crit_edge, %rht_ptr_rcu.exit.i.i.i.do.cond34.i.i.i_crit_edge
  %he.0.lcssa.i.i.i = phi ptr [ %20, %rht_ptr_rcu.exit.i.i.i.do.cond34.i.i.i_crit_edge ], [ %25, %for.inc.i.i.i.do.cond34.i.i.i_crit_edge ]
  %cmp.not.i.i.i = icmp eq ptr %he.0.lcssa.i.i.i, %16
  br i1 %cmp.not.i.i.i, label %do.end39.i.i.i, label %do.cond34.i.i.i.do.body16.i.i.i_crit_edge

do.cond34.i.i.i.do.body16.i.i.i_crit_edge:        ; preds = %do.cond34.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body16.i.i.i

do.end39.i.i.i:                                   ; preds = %do.cond34.i.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !176
  %future_tbl.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i.i.i, i32 0, i32 5
  %27 = ptrtoint ptr %future_tbl.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile ptr, ptr %future_tbl.i.i.i, align 4
  %call47.i.i.i = tail call i32 @lockdep_rht_mutex_is_held(ptr noundef nonnull @zones_ht) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47.i.i.i)
  %tobool48.not.i.i.i = icmp eq i32 %call47.i.i.i, 0
  br i1 %tobool48.not.i.i.i, label %lor.lhs.false49.i.i.i, label %do.end39.i.i.i.do.end60.i.i.i_crit_edge

do.end39.i.i.i.do.end60.i.i.i_crit_edge:          ; preds = %do.end39.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end60.i.i.i

lor.lhs.false49.i.i.i:                            ; preds = %do.end39.i.i.i
  %call50.i.i.i = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50.i.i.i)
  %tobool51.not.i.i.i = icmp eq i32 %call50.i.i.i, 0
  br i1 %tobool51.not.i.i.i, label %land.lhs.true52.i.i.i, label %lor.lhs.false49.i.i.i.do.end60.i.i.i_crit_edge

lor.lhs.false49.i.i.i.do.end60.i.i.i_crit_edge:   ; preds = %lor.lhs.false49.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end60.i.i.i

land.lhs.true52.i.i.i:                            ; preds = %lor.lhs.false49.i.i.i
  %call53.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53.i.i.i)
  %tobool54.not.i.i.i = icmp eq i32 %call53.i.i.i, 0
  br i1 %tobool54.not.i.i.i, label %land.lhs.true52.i.i.i.do.end60.i.i.i_crit_edge, label %land.lhs.true55.i.i.i

land.lhs.true52.i.i.i.do.end60.i.i.i_crit_edge:   ; preds = %land.lhs.true52.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end60.i.i.i

land.lhs.true55.i.i.i:                            ; preds = %land.lhs.true52.i.i.i
  %.b901.i.i.i = load i1, ptr @__rhashtable_lookup.__warned.22, align 1
  br i1 %.b901.i.i.i, label %land.lhs.true55.i.i.i.do.end60.i.i.i_crit_edge, label %if.then57.i.i.i

land.lhs.true55.i.i.i.do.end60.i.i.i_crit_edge:   ; preds = %land.lhs.true55.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end60.i.i.i

if.then57.i.i.i:                                  ; preds = %land.lhs.true55.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__rhashtable_lookup.__warned.22, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 614, ptr noundef nonnull @.str.1) #12
  br label %do.end60.i.i.i

do.end60.i.i.i:                                   ; preds = %if.then57.i.i.i, %land.lhs.true55.i.i.i.do.end60.i.i.i_crit_edge, %land.lhs.true52.i.i.i.do.end60.i.i.i_crit_edge, %lor.lhs.false49.i.i.i.do.end60.i.i.i_crit_edge, %do.end39.i.i.i.do.end60.i.i.i_crit_edge
  %tobool62.not.i.i.i = icmp eq ptr %28, null
  br i1 %tobool62.not.i.i.i, label %do.end60.i.i.i.rhashtable_lookup.exit.i_crit_edge, label %do.end60.i.i.i.restart.i.i.i_crit_edge, !prof !144

do.end60.i.i.i.restart.i.i.i_crit_edge:           ; preds = %do.end60.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %restart.i.i.i

do.end60.i.i.i.rhashtable_lookup.exit.i_crit_edge: ; preds = %do.end60.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rhashtable_lookup.exit.i

__rhashtable_lookup.exit.i.i:                     ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %tobool.not.i1.i = icmp eq ptr %he.017.i.i.i, null
  %spec.select = select i1 %tobool.not.i1.i, ptr null, ptr %add.ptr.i9.i.i.i
  br label %rhashtable_lookup.exit.i

rhashtable_lookup.exit.i:                         ; preds = %__rhashtable_lookup.exit.i.i, %do.end60.i.i.i.rhashtable_lookup.exit.i_crit_edge
  %cond.i.i = phi ptr [ %spec.select, %__rhashtable_lookup.exit.i.i ], [ null, %do.end60.i.i.i.rhashtable_lookup.exit.i_crit_edge ]
  %call.i2.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i2.i, label %rhashtable_lookup.exit.i.rhashtable_lookup_fast.exit_crit_edge, label %land.lhs.true.i5.i

rhashtable_lookup.exit.i.rhashtable_lookup_fast.exit_crit_edge: ; preds = %rhashtable_lookup.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rhashtable_lookup_fast.exit

land.lhs.true.i5.i:                               ; preds = %rhashtable_lookup.exit.i
  %call1.i3.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i3.i)
  %tobool.not.i4.i = icmp eq i32 %call1.i3.i, 0
  br i1 %tobool.not.i4.i, label %land.lhs.true.i5.i.rhashtable_lookup_fast.exit_crit_edge, label %land.lhs.true2.i7.i

land.lhs.true.i5.i.rhashtable_lookup_fast.exit_crit_edge: ; preds = %land.lhs.true.i5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rhashtable_lookup_fast.exit

land.lhs.true2.i7.i:                              ; preds = %land.lhs.true.i5.i
  %.b4.i6.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i6.i, label %land.lhs.true2.i7.i.rhashtable_lookup_fast.exit_crit_edge, label %if.then.i8.i

land.lhs.true2.i7.i.rhashtable_lookup_fast.exit_crit_edge: ; preds = %land.lhs.true2.i7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rhashtable_lookup_fast.exit

if.then.i8.i:                                     ; preds = %land.lhs.true2.i7.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 724, ptr noundef nonnull @.str.15) #12
  br label %rhashtable_lookup_fast.exit

rhashtable_lookup_fast.exit:                      ; preds = %if.then.i8.i, %land.lhs.true2.i7.i.rhashtable_lookup_fast.exit_crit_edge, %land.lhs.true.i5.i.rhashtable_lookup_fast.exit_crit_edge, %rhashtable_lookup.exit.i.rhashtable_lookup_fast.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !160
  %29 = tail call i32 @llvm.read_register.i32(metadata !131) #12
  %and.i.i.i.i.i9.i = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i.i.i.i9.i to ptr
  %preempt_count.i.i.i.i10.i = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %preempt_count.i.i.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %preempt_count.i.i.i.i10.i, align 4
  %sub.i.i.i.i = add i32 %32, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i10.i, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  %tobool.not = icmp eq ptr %cond.i.i, null
  br i1 %tobool.not, label %rhashtable_lookup_fast.exit.if.end_crit_edge, label %land.lhs.true

rhashtable_lookup_fast.exit.if.end_crit_edge:     ; preds = %rhashtable_lookup_fast.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %rhashtable_lookup_fast.exit
  %ref = getelementptr inbounds %struct.tcf_ct_flow_table, ptr %cond.i.i, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i) #12
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %ref, i32 noundef 4) #12
  %33 = ptrtoint ptr %ref to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %ref, align 4
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge, %land.lhs.true
  %35 = phi i32 [ %34, %land.lhs.true ], [ %asmresult3.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge ]
  %36 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %old.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.not.i.i.i60 = icmp eq i32 %35, 0
  br i1 %tobool.not.i.i.i60, label %do.body.i.i.i.if.end4.i.i.i_crit_edge, label %do.cond.i.i.i

do.body.i.i.i.if.end4.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i.i.i

do.cond.i.i.i:                                    ; preds = %do.body.i.i.i
  %add.i.i.i = add i32 %35, 1
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %ref, i32 noundef 4) #12
  %call.i3.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i, i32 noundef 4) #12
  %37 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %old.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %ref, i32 1, i32 3, i32 1) #12
  br label %do.body.i.i.i.i.i.i

do.body.i.i.i.i.i.i:                              ; preds = %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i
  %39 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %ref, ptr %ref, i32 %38, i32 %add.i.i.i, ptr elementtype(i32) %ref) #12, !srcloc !177
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %39, 0
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i, label %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i:       ; preds = %do.body.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i = extractvalue { i32, i32 } %39, 1
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i, %38
  br i1 %cmp.not.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge, !prof !144

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i.i.i

if.end4.i.i.i:                                    ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, %do.body.i.i.i.if.end4.i.i.i_crit_edge
  %40 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %old.i.i.i, align 4
  %add5.i.i.i = add i32 %41, 1
  %42 = or i32 %add5.i.i.i, %41
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %42)
  %.not.i.i.i = icmp sgt i32 %42, -1
  br i1 %.not.i.i.i, label %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge, label %if.then10.i.i.i, !prof !144

if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge: ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %refcount_inc_not_zero.exit

if.then10.i.i.i:                                  ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @refcount_warn_saturate(ptr noundef %ref, i32 noundef 0) #12
  %43 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %.pr = load i32, ptr %old.i.i.i, align 4
  br label %refcount_inc_not_zero.exit

refcount_inc_not_zero.exit:                       ; preds = %if.then10.i.i.i, %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge
  %44 = phi i32 [ %41, %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge ], [ %.pr, %if.then10.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool12.i.i.i.not = icmp eq i32 %44, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i) #12
  br i1 %tobool12.i.i.i.not, label %refcount_inc_not_zero.exit.if.end_crit_edge, label %refcount_inc_not_zero.exit.out_unlock_crit_edge

refcount_inc_not_zero.exit.out_unlock_crit_edge:  ; preds = %refcount_inc_not_zero.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_unlock

refcount_inc_not_zero.exit.if.end_crit_edge:      ; preds = %refcount_inc_not_zero.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end:                                           ; preds = %refcount_inc_not_zero.exit.if.end_crit_edge, %rhashtable_lookup_fast.exit.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %45 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %45, i32 noundef 3520, i32 noundef 524) #15
  %tobool3.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %ref6 = getelementptr inbounds %struct.tcf_ct_flow_table, ptr %call7.i.i, i32 0, i32 3
  %call.i.i.i61 = call zeroext i1 @__kasan_check_write(ptr noundef %ref6, i32 noundef 4) #12
  %46 = ptrtoint ptr %ref6 to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile i32 1, ptr %ref6, align 4
  %47 = ptrtoint ptr %zone to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %zone, align 4
  %zone8 = getelementptr inbounds %struct.tcf_ct_flow_table, ptr %call7.i.i, i32 0, i32 4
  %49 = ptrtoint ptr %zone8 to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %48, ptr %zone8, align 8
  %50 = call i32 @llvm.read_register.i32(metadata !131) #12
  %and.i.i.i.i.i.i.i = and i32 %50, -16384
  %51 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %53, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !157
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i.i.i62 = call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i.i.i62, label %if.end5.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true.i.i.i64

if.end5.rcu_read_lock.exit.i.i_crit_edge:         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i.i

land.lhs.true.i.i.i64:                            ; preds = %if.end5
  %call1.i.i.i = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i.i.i63 = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i.i.i63, label %land.lhs.true.i.i.i64.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true2.i.i.i

land.lhs.true.i.i.i64.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i64
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i.i

land.lhs.true2.i.i.i:                             ; preds = %land.lhs.true.i.i.i64
  %.b4.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i, label %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %if.then.i.i.i65

land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i.i

if.then.i.i.i65:                                  ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 696, ptr noundef nonnull @.str.10) #12
  br label %rcu_read_lock.exit.i.i

rcu_read_lock.exit.i.i:                           ; preds = %if.then.i.i.i65, %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %land.lhs.true.i.i.i64.rcu_read_lock.exit.i.i_crit_edge, %if.end5.rcu_read_lock.exit.i.i_crit_edge
  %54 = load volatile ptr, ptr @zones_ht, align 4
  %call.i.i66 = call i32 @lockdep_rht_mutex_is_held(ptr noundef nonnull @zones_ht) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i66)
  %tobool.not.i.i67 = icmp eq i32 %call.i.i66, 0
  br i1 %tobool.not.i.i67, label %lor.lhs.false.i.i, label %rcu_read_lock.exit.i.i.do.end12.i.i_crit_edge

rcu_read_lock.exit.i.i.do.end12.i.i_crit_edge:    ; preds = %rcu_read_lock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end12.i.i

lor.lhs.false.i.i:                                ; preds = %rcu_read_lock.exit.i.i
  %call5.i.i = call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %tobool6.not.i.i = icmp eq i32 %call5.i.i, 0
  br i1 %tobool6.not.i.i, label %land.lhs.true.i.i69, label %lor.lhs.false.i.i.do.end12.i.i_crit_edge

lor.lhs.false.i.i.do.end12.i.i_crit_edge:         ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end12.i.i

land.lhs.true.i.i69:                              ; preds = %lor.lhs.false.i.i
  %call7.i.i68 = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i68)
  %tobool8.not.i.i = icmp eq i32 %call7.i.i68, 0
  br i1 %tobool8.not.i.i, label %land.lhs.true.i.i69.do.end12.i.i_crit_edge, label %land.lhs.true9.i.i

land.lhs.true.i.i69.do.end12.i.i_crit_edge:       ; preds = %land.lhs.true.i.i69
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end12.i.i

land.lhs.true9.i.i:                               ; preds = %land.lhs.true.i.i69
  %.b2.i.i = load i1, ptr @__rhashtable_insert_fast.__warned, align 1
  br i1 %.b2.i.i, label %land.lhs.true9.i.i.do.end12.i.i_crit_edge, label %if.then.i.i70

land.lhs.true9.i.i.do.end12.i.i_crit_edge:        ; preds = %land.lhs.true9.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end12.i.i

if.then.i.i70:                                    ; preds = %land.lhs.true9.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__rhashtable_insert_fast.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 715, ptr noundef nonnull @.str.1) #12
  br label %do.end12.i.i

do.end12.i.i:                                     ; preds = %if.then.i.i70, %land.lhs.true9.i.i.do.end12.i.i_crit_edge, %land.lhs.true.i.i69.do.end12.i.i_crit_edge, %lor.lhs.false.i.i.do.end12.i.i_crit_edge, %rcu_read_lock.exit.i.i.do.end12.i.i_crit_edge
  %55 = load i16, ptr getelementptr inbounds (%struct.rhashtable, ptr @zones_ht, i32 0, i32 3, i32 3), align 2
  %conv.i.i.i.i = zext i16 %55 to i32
  %idx.neg.i.i.i.i = sub nsw i32 0, %conv.i.i.i.i
  %add.ptr.i.i.i.i = getelementptr i8, ptr %call7.i.i, i32 %idx.neg.i.i.i.i
  %add.ptr.i.i.i71 = getelementptr i8, ptr %add.ptr.i.i.i.i, i32 520
  %hash_rnd.i.i.i.i72 = getelementptr inbounds %struct.bucket_table, ptr %54, i32 0, i32 2
  %56 = ptrtoint ptr %hash_rnd.i.i.i.i72 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %hash_rnd.i.i.i.i72, align 8
  %add1.i80 = add i32 %57, -559038735
  %arrayidx77.i81 = getelementptr i8, ptr %add.ptr.i.i.i71, i32 1
  %58 = ptrtoint ptr %arrayidx77.i81 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx77.i81, align 1
  %conv78.i82 = zext i8 %59 to i32
  %shl79.i83 = shl nuw nsw i32 %conv78.i82, 8
  %add80.i84 = add i32 %shl79.i83, %add1.i80
  %60 = ptrtoint ptr %add.ptr.i.i.i71 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %add.ptr.i.i.i71, align 1
  %conv83.i85 = zext i8 %61 to i32
  %add84.i86 = add i32 %add80.i84, %conv83.i85
  %or.i206.i88 = call i32 @llvm.fshl.i32(i32 %add1.i80, i32 %add1.i80, i32 14) #12
  %sub87.i89 = sub i32 0, %or.i206.i88
  %xor88.i90 = xor i32 %add84.i86, %sub87.i89
  %or.i207.i91 = call i32 @llvm.fshl.i32(i32 %sub87.i89, i32 %sub87.i89, i32 11) #12
  %sub90.i92 = sub i32 %xor88.i90, %or.i207.i91
  %xor91.i93 = xor i32 %sub90.i92, %add1.i80
  %or.i208.i94 = call i32 @llvm.fshl.i32(i32 %sub90.i92, i32 %sub90.i92, i32 25) #12
  %sub93.i95 = sub i32 %xor91.i93, %or.i208.i94
  %xor94.i96 = xor i32 %sub93.i95, %sub87.i89
  %or.i209.i97 = call i32 @llvm.fshl.i32(i32 %sub93.i95, i32 %sub93.i95, i32 16) #12
  %sub96.i98 = sub i32 %xor94.i96, %or.i209.i97
  %xor97.i99 = xor i32 %sub96.i98, %sub90.i92
  %or.i210.i100 = call i32 @llvm.fshl.i32(i32 %sub96.i98, i32 %sub96.i98, i32 4) #12
  %sub99.i101 = sub i32 %xor97.i99, %or.i210.i100
  %xor100.i102 = xor i32 %sub99.i101, %sub93.i95
  %or.i211.i103 = call i32 @llvm.fshl.i32(i32 %sub99.i101, i32 %sub99.i101, i32 14) #12
  %sub102.i104 = sub i32 %xor100.i102, %or.i211.i103
  %xor103.i105 = xor i32 %sub102.i104, %sub96.i98
  %or.i212.i106 = call i32 @llvm.fshl.i32(i32 %sub102.i104, i32 %sub102.i104, i32 24) #12
  %sub105.i107 = sub i32 %xor103.i105, %or.i212.i106
  %62 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %54, align 128
  %sub.i.i.i.i.i74 = add i32 %63, -1
  %and.i1.i.i.i.i75 = and i32 %sub105.i107, %sub.i.i.i.i.i74
  %nest.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %54, i32 0, i32 1
  %64 = ptrtoint ptr %nest.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %nest.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool.not.i4.i.i = icmp eq i32 %65, 0
  br i1 %tobool.not.i4.i.i, label %cond.false.i7.i.i, label %cond.true.i6.i.i, !prof !144

cond.true.i6.i.i:                                 ; preds = %do.end12.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i5.i.i = call ptr @rht_bucket_nested_insert(ptr noundef nonnull @zones_ht, ptr noundef %54, i32 noundef %and.i1.i.i.i.i75) #12
  br label %rht_bucket_insert.exit.i.i

cond.false.i7.i.i:                                ; preds = %do.end12.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i.i.i = getelementptr %struct.bucket_table, ptr %54, i32 0, i32 8, i32 %and.i1.i.i.i.i75
  br label %rht_bucket_insert.exit.i.i

rht_bucket_insert.exit.i.i:                       ; preds = %cond.false.i7.i.i, %cond.true.i6.i.i
  %cond.i8.i.i = phi ptr [ %call.i5.i.i, %cond.true.i6.i.i ], [ %arrayidx.i.i.i, %cond.false.i7.i.i ]
  %tobool17.not.i.i = icmp eq ptr %cond.i8.i.i, null
  br i1 %tobool17.not.i.i, label %rht_bucket_insert.exit.i.i.out.i.i_crit_edge, label %if.end19.i.i

rht_bucket_insert.exit.i.i.out.i.i_crit_edge:     ; preds = %rht_bucket_insert.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i.i

if.end19.i.i:                                     ; preds = %rht_bucket_insert.exit.i.i
  call fastcc void @rht_lock(ptr noundef %54, ptr noundef nonnull %cond.i8.i.i) #12
  %future_tbl.i.i = getelementptr inbounds %struct.bucket_table, ptr %54, i32 0, i32 5
  %66 = ptrtoint ptr %future_tbl.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile ptr, ptr %future_tbl.i.i, align 4
  %tobool25.not.i.i = icmp eq ptr %67, null
  br i1 %tobool25.not.i.i, label %if.end30.i.i, label %if.end19.i.i.slow_path.i.i_crit_edge, !prof !144

if.end19.i.i.slow_path.i.i_crit_edge:             ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %slow_path.i.i

slow_path.i.i:                                    ; preds = %rht_grow_above_100.exit.i.i.slow_path.i.i_crit_edge, %for.end.i.i.slow_path.i.i_crit_edge, %if.end19.i.i.slow_path.i.i_crit_edge
  call fastcc void @rht_unlock(ptr noundef %54, ptr noundef nonnull %cond.i8.i.i) #12
  %call.i10.i.i = call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i10.i.i, label %slow_path.i.i.rcu_read_unlock.exit.i.i_crit_edge, label %land.lhs.true.i13.i.i

slow_path.i.i.rcu_read_unlock.exit.i.i_crit_edge: ; preds = %slow_path.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit.i.i

land.lhs.true.i13.i.i:                            ; preds = %slow_path.i.i
  %call1.i11.i.i = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i11.i.i)
  %tobool.not.i12.i.i = icmp eq i32 %call1.i11.i.i, 0
  br i1 %tobool.not.i12.i.i, label %land.lhs.true.i13.i.i.rcu_read_unlock.exit.i.i_crit_edge, label %land.lhs.true2.i15.i.i

land.lhs.true.i13.i.i.rcu_read_unlock.exit.i.i_crit_edge: ; preds = %land.lhs.true.i13.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit.i.i

land.lhs.true2.i15.i.i:                           ; preds = %land.lhs.true.i13.i.i
  %.b4.i14.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i14.i.i, label %land.lhs.true2.i15.i.i.rcu_read_unlock.exit.i.i_crit_edge, label %if.then.i16.i.i

land.lhs.true2.i15.i.i.rcu_read_unlock.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i15.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit.i.i

if.then.i16.i.i:                                  ; preds = %land.lhs.true2.i15.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 724, ptr noundef nonnull @.str.15) #12
  br label %rcu_read_unlock.exit.i.i

rcu_read_unlock.exit.i.i:                         ; preds = %if.then.i16.i.i, %land.lhs.true2.i15.i.i.rcu_read_unlock.exit.i.i_crit_edge, %land.lhs.true.i13.i.i.rcu_read_unlock.exit.i.i_crit_edge, %slow_path.i.i.rcu_read_unlock.exit.i.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !160
  %68 = call i32 @llvm.read_register.i32(metadata !131) #12
  %and.i.i.i.i.i17.i.i = and i32 %68, -16384
  %69 = inttoptr i32 %and.i.i.i.i.i17.i.i to ptr
  %preempt_count.i.i.i.i18.i.i = getelementptr inbounds %struct.thread_info, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %preempt_count.i.i.i.i18.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load volatile i32, ptr %preempt_count.i.i.i.i18.i.i, align 4
  %sub.i.i.i19.i.i = add i32 %71, -1
  store volatile i32 %sub.i.i.i19.i.i, ptr %preempt_count.i.i.i.i18.i.i, align 4
  call void @rcu_read_unlock_strict() #12
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  %call29.i.i = call ptr @rhashtable_insert_slow(ptr noundef nonnull @zones_ht, ptr noundef null, ptr noundef nonnull %call7.i.i) #12
  br label %rhashtable_insert_fast.exit

if.end30.i.i:                                     ; preds = %if.end19.i.i
  %call.i20.i.i = call i32 @lockdep_rht_bucket_is_held(ptr noundef %54, i32 noundef %and.i1.i.i.i.i75) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i20.i.i)
  %tobool.not.i21.i.i = icmp eq i32 %call.i20.i.i, 0
  br i1 %tobool.not.i21.i.i, label %land.lhs.true.i23.i.i, label %if.end30.i.i.rht_ptr.exit.i.i_crit_edge

if.end30.i.i.rht_ptr.exit.i.i_crit_edge:          ; preds = %if.end30.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rht_ptr.exit.i.i

land.lhs.true.i23.i.i:                            ; preds = %if.end30.i.i
  %call1.i22.i.i = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i22.i.i)
  %tobool2.not.i.i.i = icmp eq i32 %call1.i22.i.i, 0
  br i1 %tobool2.not.i.i.i, label %land.lhs.true.i23.i.i.rht_ptr.exit.i.i_crit_edge, label %land.lhs.true3.i.i.i

land.lhs.true.i23.i.i.rht_ptr.exit.i.i_crit_edge: ; preds = %land.lhs.true.i23.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rht_ptr.exit.i.i

land.lhs.true3.i.i.i:                             ; preds = %land.lhs.true.i23.i.i
  %.b7.i.i.i = load i1, ptr @rht_ptr.__warned, align 1
  br i1 %.b7.i.i.i, label %land.lhs.true3.i.i.i.rht_ptr.exit.i.i_crit_edge, label %if.then.i24.i.i

land.lhs.true3.i.i.i.rht_ptr.exit.i.i_crit_edge:  ; preds = %land.lhs.true3.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rht_ptr.exit.i.i

if.then.i24.i.i:                                  ; preds = %land.lhs.true3.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rht_ptr.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 377, ptr noundef nonnull @.str.4) #12
  br label %rht_ptr.exit.i.i

rht_ptr.exit.i.i:                                 ; preds = %if.then.i24.i.i, %land.lhs.true3.i.i.i.rht_ptr.exit.i.i_crit_edge, %land.lhs.true.i23.i.i.rht_ptr.exit.i.i_crit_edge, %if.end30.i.i.rht_ptr.exit.i.i_crit_edge
  %72 = ptrtoint ptr %cond.i8.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %cond.i8.i.i, align 4
  %74 = ptrtoint ptr %73 to i32
  %and.i.i.i.i76 = and i32 %74, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i76)
  %tobool.not.i.i.i.i77 = icmp eq i32 %and.i.i.i.i76, 0
  %75 = ptrtoint ptr %cond.i8.i.i to i32
  %or.i.i.i.i = or i32 %75, 1
  %cond.i.i.i.i78 = select i1 %tobool.not.i.i.i.i77, i32 %or.i.i.i.i, i32 %and.i.i.i.i76
  %and.i60.i.i = and i32 %cond.i.i.i.i78, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i60.i.i)
  %tobool.i.not61.i.i = icmp eq i32 %and.i60.i.i, 0
  br i1 %tobool.i.not61.i.i, label %for.body.preheader.i.i, label %rht_ptr.exit.i.i.if.end152.i.i_crit_edge

rht_ptr.exit.i.i.if.end152.i.i_crit_edge:         ; preds = %rht_ptr.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end152.i.i

for.body.preheader.i.i:                           ; preds = %rht_ptr.exit.i.i
  %76 = inttoptr i32 %cond.i.i.i.i78 to ptr
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %do.end147.i.i.for.body.i.i_crit_edge, %for.body.preheader.i.i
  %head.063.i.i = phi ptr [ %78, %do.end147.i.i.for.body.i.i_crit_edge ], [ %76, %for.body.preheader.i.i ]
  %elasticity.062.i.i = phi i32 [ %dec.i.i, %do.end147.i.i.for.body.i.i_crit_edge ], [ 16, %for.body.preheader.i.i ]
  %dec.i.i = add i32 %elasticity.062.i.i, -1
  %call137.i.i = call i32 @lockdep_rht_bucket_is_held(ptr noundef %54, i32 noundef %and.i1.i.i.i.i75) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call137.i.i)
  %tobool138.not.i.i = icmp eq i32 %call137.i.i, 0
  br i1 %tobool138.not.i.i, label %land.lhs.true139.i.i, label %for.body.i.i.do.end147.i.i_crit_edge

for.body.i.i.do.end147.i.i_crit_edge:             ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end147.i.i

land.lhs.true139.i.i:                             ; preds = %for.body.i.i
  %call140.i.i = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call140.i.i)
  %tobool141.not.i.i = icmp eq i32 %call140.i.i, 0
  br i1 %tobool141.not.i.i, label %land.lhs.true139.i.i.do.end147.i.i_crit_edge, label %land.lhs.true142.i.i

land.lhs.true139.i.i.do.end147.i.i_crit_edge:     ; preds = %land.lhs.true139.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end147.i.i

land.lhs.true142.i.i:                             ; preds = %land.lhs.true139.i.i
  %.b2811.i.i = load i1, ptr @__rhashtable_insert_fast.__warned.24, align 1
  br i1 %.b2811.i.i, label %land.lhs.true142.i.i.do.end147.i.i_crit_edge, label %if.then144.i.i

land.lhs.true142.i.i.do.end147.i.i_crit_edge:     ; preds = %land.lhs.true142.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end147.i.i

if.then144.i.i:                                   ; preds = %land.lhs.true142.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__rhashtable_insert_fast.__warned.24, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 732, ptr noundef nonnull @.str.4) #12
  br label %do.end147.i.i

do.end147.i.i:                                    ; preds = %if.then144.i.i, %land.lhs.true142.i.i.do.end147.i.i_crit_edge, %land.lhs.true139.i.i.do.end147.i.i_crit_edge, %for.body.i.i.do.end147.i.i_crit_edge
  %77 = ptrtoint ptr %head.063.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %head.063.i.i, align 4
  %79 = ptrtoint ptr %78 to i32
  %and.i.i.i = and i32 %79, 1
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %do.end147.i.i.for.body.i.i_crit_edge, label %for.end.i.i

do.end147.i.i.for.body.i.i_crit_edge:             ; preds = %do.end147.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %do.end147.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i.i)
  %phi.cmp.i.i = icmp slt i32 %dec.i.i, 1
  br i1 %phi.cmp.i.i, label %for.end.i.i.slow_path.i.i_crit_edge, label %for.end.i.i.if.end152.i.i_crit_edge

for.end.i.i.if.end152.i.i_crit_edge:              ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end152.i.i

for.end.i.i.slow_path.i.i_crit_edge:              ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %slow_path.i.i

if.end152.i.i:                                    ; preds = %for.end.i.i.if.end152.i.i_crit_edge, %rht_ptr.exit.i.i.if.end152.i.i_crit_edge
  %call.i.i.i25.i.i = call zeroext i1 @__kasan_check_read(ptr noundef getelementptr inbounds (%struct.rhashtable, ptr @zones_ht, i32 0, i32 8), i32 noundef 4) #12
  %80 = load volatile i32, ptr getelementptr inbounds (%struct.rhashtable, ptr @zones_ht, i32 0, i32 8), align 4
  %81 = load i32, ptr getelementptr inbounds (%struct.rhashtable, ptr @zones_ht, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %80, i32 %81)
  %cmp.i.not.i.i = icmp ult i32 %80, %81
  br i1 %cmp.i.not.i.i, label %if.end162.i.i, label %out_unlock.i.i, !prof !144

if.end162.i.i:                                    ; preds = %if.end152.i.i
  %call.i.i.i26.i.i = call zeroext i1 @__kasan_check_read(ptr noundef getelementptr inbounds (%struct.rhashtable, ptr @zones_ht, i32 0, i32 8), i32 noundef 4) #12
  %82 = load volatile i32, ptr getelementptr inbounds (%struct.rhashtable, ptr @zones_ht, i32 0, i32 8), align 4
  %83 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %54, align 128
  call void @__sanitizer_cov_trace_cmp4(i32 %82, i32 %84)
  %cmp.i27.i.i = icmp ugt i32 %82, %84
  br i1 %cmp.i27.i.i, label %rht_grow_above_100.exit.i.i, label %if.end162.i.i.if.end171.i.i_crit_edge

if.end162.i.i.if.end171.i.i_crit_edge:            ; preds = %if.end162.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end171.i.i

rht_grow_above_100.exit.i.i:                      ; preds = %if.end162.i.i
  %85 = load i32, ptr getelementptr inbounds (%struct.rhashtable, ptr @zones_ht, i32 0, i32 3, i32 4), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %tobool.not.i28.i.i = icmp eq i32 %85, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %84, i32 %85)
  %cmp4.i.i.i = icmp ult i32 %84, %85
  %spec.select.i.i.i = select i1 %tobool.not.i28.i.i, i1 true, i1 %cmp4.i.i.i
  br i1 %spec.select.i.i.i, label %rht_grow_above_100.exit.i.i.slow_path.i.i_crit_edge, label %rht_grow_above_100.exit.i.i.if.end171.i.i_crit_edge, !prof !141

rht_grow_above_100.exit.i.i.if.end171.i.i_crit_edge: ; preds = %rht_grow_above_100.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end171.i.i

rht_grow_above_100.exit.i.i.slow_path.i.i_crit_edge: ; preds = %rht_grow_above_100.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %slow_path.i.i

if.end171.i.i:                                    ; preds = %rht_grow_above_100.exit.i.i.if.end171.i.i_crit_edge, %if.end162.i.i.if.end171.i.i_crit_edge
  %call.i29.i.i = call i32 @lockdep_rht_bucket_is_held(ptr noundef %54, i32 noundef %and.i1.i.i.i.i75) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i29.i.i)
  %tobool.not.i30.i.i = icmp eq i32 %call.i29.i.i, 0
  br i1 %tobool.not.i30.i.i, label %land.lhs.true.i33.i.i, label %if.end171.i.i.rht_ptr.exit41.i.i_crit_edge

if.end171.i.i.rht_ptr.exit41.i.i_crit_edge:       ; preds = %if.end171.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rht_ptr.exit41.i.i

land.lhs.true.i33.i.i:                            ; preds = %if.end171.i.i
  %call1.i31.i.i = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i31.i.i)
  %tobool2.not.i32.i.i = icmp eq i32 %call1.i31.i.i, 0
  br i1 %tobool2.not.i32.i.i, label %land.lhs.true.i33.i.i.rht_ptr.exit41.i.i_crit_edge, label %land.lhs.true3.i35.i.i

land.lhs.true.i33.i.i.rht_ptr.exit41.i.i_crit_edge: ; preds = %land.lhs.true.i33.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rht_ptr.exit41.i.i

land.lhs.true3.i35.i.i:                           ; preds = %land.lhs.true.i33.i.i
  %.b7.i34.i.i = load i1, ptr @rht_ptr.__warned, align 1
  br i1 %.b7.i34.i.i, label %land.lhs.true3.i35.i.i.rht_ptr.exit41.i.i_crit_edge, label %if.then.i36.i.i

land.lhs.true3.i35.i.i.rht_ptr.exit41.i.i_crit_edge: ; preds = %land.lhs.true3.i35.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rht_ptr.exit41.i.i

if.then.i36.i.i:                                  ; preds = %land.lhs.true3.i35.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rht_ptr.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 377, ptr noundef nonnull @.str.4) #12
  br label %rht_ptr.exit41.i.i

rht_ptr.exit41.i.i:                               ; preds = %if.then.i36.i.i, %land.lhs.true3.i35.i.i.rht_ptr.exit41.i.i_crit_edge, %land.lhs.true.i33.i.i.rht_ptr.exit41.i.i_crit_edge, %if.end171.i.i.rht_ptr.exit41.i.i_crit_edge
  %86 = ptrtoint ptr %cond.i8.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %cond.i8.i.i, align 4
  %88 = ptrtoint ptr %87 to i32
  %and.i.i37.i.i = and i32 %88, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i37.i.i)
  %tobool.not.i.i38.i.i = icmp eq i32 %and.i.i37.i.i, 0
  %cond.i.i40.i.i = select i1 %tobool.not.i.i38.i.i, i32 %or.i.i.i.i, i32 %and.i.i37.i.i
  %89 = inttoptr i32 %cond.i.i40.i.i to ptr
  %90 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store volatile ptr %89, ptr %call7.i.i, align 8
  %call.i.i.i.i79 = call zeroext i1 @__kasan_check_write(ptr noundef getelementptr inbounds (%struct.rhashtable, ptr @zones_ht, i32 0, i32 8), i32 noundef 4) #12
  call void @llvm.prefetch.p0(ptr getelementptr inbounds (%struct.rhashtable, ptr @zones_ht, i32 0, i32 8), i32 1, i32 3, i32 1) #12
  %91 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) getelementptr inbounds (%struct.rhashtable, ptr @zones_ht, i32 0, i32 8), ptr getelementptr inbounds (%struct.rhashtable, ptr @zones_ht, i32 0, i32 8), i32 1, ptr elementtype(i32) getelementptr inbounds (%struct.rhashtable, ptr @zones_ht, i32 0, i32 8)) #12, !srcloc !178
  call fastcc void @rht_assign_unlock(ptr noundef %54, ptr noundef nonnull %cond.i8.i.i, ptr noundef nonnull %call7.i.i) #12
  %call.i.i.i42.i.i = call zeroext i1 @__kasan_check_read(ptr noundef getelementptr inbounds (%struct.rhashtable, ptr @zones_ht, i32 0, i32 8), i32 noundef 4) #12
  %92 = load volatile i32, ptr getelementptr inbounds (%struct.rhashtable, ptr @zones_ht, i32 0, i32 8), align 4
  %93 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %54, align 128
  %div1.i.i.i = lshr i32 %94, 2
  %mul.i.i.i = mul nuw i32 %div1.i.i.i, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %92, i32 %mul.i.i.i)
  %cmp.i43.i.i = icmp ugt i32 %92, %mul.i.i.i
  br i1 %cmp.i43.i.i, label %rht_grow_above_75.exit.i.i, label %rht_ptr.exit41.i.i.out.i.i_crit_edge

rht_ptr.exit41.i.i.out.i.i_crit_edge:             ; preds = %rht_ptr.exit41.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i.i

rht_grow_above_75.exit.i.i:                       ; preds = %rht_ptr.exit41.i.i
  %95 = load i32, ptr getelementptr inbounds (%struct.rhashtable, ptr @zones_ht, i32 0, i32 3, i32 4), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %tobool.not.i44.i.i = icmp eq i32 %95, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %94, i32 %95)
  %cmp4.i45.i.i = icmp ult i32 %94, %95
  %spec.select.i46.i.i = select i1 %tobool.not.i44.i.i, i1 true, i1 %cmp4.i45.i.i
  br i1 %spec.select.i46.i.i, label %if.then207.i.i, label %rht_grow_above_75.exit.i.i.out.i.i_crit_edge

rht_grow_above_75.exit.i.i.out.i.i_crit_edge:     ; preds = %rht_grow_above_75.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i.i

if.then207.i.i:                                   ; preds = %rht_grow_above_75.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %96 = load ptr, ptr @system_wq, align 4
  %call.i.i48.i.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %96, ptr noundef getelementptr inbounds (%struct.rhashtable, ptr @zones_ht, i32 0, i32 5)) #12
  br label %out.i.i

out.i.i:                                          ; preds = %out_unlock.i.i, %if.then207.i.i, %rht_grow_above_75.exit.i.i.out.i.i_crit_edge, %rht_ptr.exit41.i.i.out.i.i_crit_edge, %rht_bucket_insert.exit.i.i.out.i.i_crit_edge
  %data.2.i.i = phi ptr [ inttoptr (i32 -7 to ptr), %out_unlock.i.i ], [ inttoptr (i32 -12 to ptr), %rht_bucket_insert.exit.i.i.out.i.i_crit_edge ], [ null, %if.then207.i.i ], [ null, %rht_grow_above_75.exit.i.i.out.i.i_crit_edge ], [ null, %rht_ptr.exit41.i.i.out.i.i_crit_edge ]
  %call.i49.i.i = call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i49.i.i, label %out.i.i.rcu_read_unlock.exit59.i.i_crit_edge, label %land.lhs.true.i52.i.i

out.i.i.rcu_read_unlock.exit59.i.i_crit_edge:     ; preds = %out.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit59.i.i

land.lhs.true.i52.i.i:                            ; preds = %out.i.i
  %call1.i50.i.i = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i50.i.i)
  %tobool.not.i51.i.i = icmp eq i32 %call1.i50.i.i, 0
  br i1 %tobool.not.i51.i.i, label %land.lhs.true.i52.i.i.rcu_read_unlock.exit59.i.i_crit_edge, label %land.lhs.true2.i54.i.i

land.lhs.true.i52.i.i.rcu_read_unlock.exit59.i.i_crit_edge: ; preds = %land.lhs.true.i52.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit59.i.i

land.lhs.true2.i54.i.i:                           ; preds = %land.lhs.true.i52.i.i
  %.b4.i53.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i53.i.i, label %land.lhs.true2.i54.i.i.rcu_read_unlock.exit59.i.i_crit_edge, label %if.then.i55.i.i

land.lhs.true2.i54.i.i.rcu_read_unlock.exit59.i.i_crit_edge: ; preds = %land.lhs.true2.i54.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit59.i.i

if.then.i55.i.i:                                  ; preds = %land.lhs.true2.i54.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 724, ptr noundef nonnull @.str.15) #12
  br label %rcu_read_unlock.exit59.i.i

rcu_read_unlock.exit59.i.i:                       ; preds = %if.then.i55.i.i, %land.lhs.true2.i54.i.i.rcu_read_unlock.exit59.i.i_crit_edge, %land.lhs.true.i52.i.i.rcu_read_unlock.exit59.i.i_crit_edge, %out.i.i.rcu_read_unlock.exit59.i.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !160
  %97 = call i32 @llvm.read_register.i32(metadata !131) #12
  %and.i.i.i.i.i56.i.i = and i32 %97, -16384
  %98 = inttoptr i32 %and.i.i.i.i.i56.i.i to ptr
  %preempt_count.i.i.i.i57.i.i = getelementptr inbounds %struct.thread_info, ptr %98, i32 0, i32 1
  %99 = ptrtoint ptr %preempt_count.i.i.i.i57.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load volatile i32, ptr %preempt_count.i.i.i.i57.i.i, align 4
  %sub.i.i.i58.i.i = add i32 %100, -1
  store volatile i32 %sub.i.i.i58.i.i, ptr %preempt_count.i.i.i.i57.i.i, align 4
  call void @rcu_read_unlock_strict() #12
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  br label %rhashtable_insert_fast.exit

out_unlock.i.i:                                   ; preds = %if.end152.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call fastcc void @rht_unlock(ptr noundef %54, ptr noundef nonnull %cond.i8.i.i) #12
  br label %out.i.i

rhashtable_insert_fast.exit:                      ; preds = %rcu_read_unlock.exit59.i.i, %rcu_read_unlock.exit.i.i
  %retval.0.i.i = phi ptr [ %call29.i.i, %rcu_read_unlock.exit.i.i ], [ %data.2.i.i, %rcu_read_unlock.exit59.i.i ]
  %cmp.i.i = icmp ugt ptr %retval.0.i.i, inttoptr (i32 -4096 to ptr)
  %101 = ptrtoint ptr %retval.0.i.i to i32
  %cmp.i = icmp eq ptr %retval.0.i.i, null
  %cond.i = select i1 %cmp.i, i32 0, i32 -17
  %retval.0.i = select i1 %cmp.i.i, i32 %101, i32 %cond.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool10.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool10.not, label %if.end12, label %rhashtable_insert_fast.exit.err_insert_crit_edge

rhashtable_insert_fast.exit.err_insert_crit_edge: ; preds = %rhashtable_insert_fast.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_insert

if.end12:                                         ; preds = %rhashtable_insert_fast.exit
  %nf_ft = getelementptr inbounds %struct.tcf_ct_flow_table, ptr %call7.i.i, i32 0, i32 2
  %type = getelementptr inbounds %struct.tcf_ct_flow_table, ptr %call7.i.i, i32 0, i32 2, i32 3
  %102 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr @flowtable_ct, ptr %type, align 4
  %flags = getelementptr inbounds %struct.tcf_ct_flow_table, ptr %call7.i.i, i32 0, i32 2, i32 5
  %103 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %flags, align 4
  %or = or i32 %104, 3
  store i32 %or, ptr %flags, align 4
  %call15 = call i32 @nf_flow_table_init(ptr noundef %nf_ft) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %err_init

if.end18:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  call void @__module_get(ptr noundef null) #12
  br label %out_unlock

out_unlock:                                       ; preds = %if.end18, %refcount_inc_not_zero.exit.out_unlock_crit_edge
  %ct_ft.0 = phi ptr [ %cond.i.i, %refcount_inc_not_zero.exit.out_unlock_crit_edge ], [ %call7.i.i, %if.end18 ]
  %ct_ft19 = getelementptr inbounds %struct.tcf_ct_params, ptr %params, i32 0, i32 10
  %105 = ptrtoint ptr %ct_ft19 to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %ct_ft.0, ptr %ct_ft19, align 4
  %nf_ft20 = getelementptr inbounds %struct.tcf_ct_flow_table, ptr %ct_ft.0, i32 0, i32 2
  %nf_ft21 = getelementptr inbounds %struct.tcf_ct_params, ptr %params, i32 0, i32 11
  %106 = ptrtoint ptr %nf_ft21 to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %nf_ft20, ptr %nf_ft21, align 4
  br label %cleanup

err_init:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  call fastcc void @rhashtable_remove_fast(ptr noundef nonnull %call7.i.i, [7 x i32] [i32 2, i32 34078720, i32 0, i32 256, i32 0, i32 0, i32 0])
  br label %err_insert

err_insert:                                       ; preds = %err_init, %rhashtable_insert_fast.exit.err_insert_crit_edge
  %err.0 = phi i32 [ %retval.0.i, %rhashtable_insert_fast.exit.err_insert_crit_edge ], [ %call15, %err_init ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %err_insert, %out_unlock, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %out_unlock ], [ %err.0, %err_insert ], [ -12, %if.end.cleanup_crit_edge ]
  call void @mutex_unlock(ptr noundef nonnull @zones_mutex) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tcf_action_set_ctrlact(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcf_chain_put_by_act(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__nla_parse(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nf_ct_tmpl_alloc(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_memcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_flow_table_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__module_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rht_bucket_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rhashtable_insert_slow(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rht_bucket_nested_insert(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcf_ct_flow_table_fill_actions(ptr nocapture noundef readnone %net, ptr nocapture noundef readonly %flow, i32 noundef %tdir, ptr nocapture noundef readonly %flow_rule) #2 align 64 {
entry:
  %target.i1.i = alloca %struct.nf_conntrack_tuple, align 4
  %target.i.i = alloca %struct.nf_conntrack_tuple, align 4
  %target.i = alloca %struct.nf_conntrack_tuple, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %rule = getelementptr inbounds %struct.nf_flow_rule, ptr %flow_rule, i32 0, i32 1
  %0 = ptrtoint ptr %rule to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rule, align 4
  %action1 = getelementptr inbounds %struct.flow_rule, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %action1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %action1, align 8
  %ct3 = getelementptr inbounds %struct.flow_offload, ptr %flow, i32 0, i32 1
  %4 = ptrtoint ptr %ct3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ct3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %tdir)
  %switch = icmp ult i32 %tdir, 2
  br i1 %switch, label %sw.epilog, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.epilog:                                        ; preds = %entry
  %tuple1.i = getelementptr %struct.nf_conn, ptr %5, i32 0, i32 4, i32 %tdir, i32 1
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %target.i) #12
  %6 = call ptr @memset(ptr %target.i, i32 255, i32 40)
  %status.i = getelementptr inbounds %struct.nf_conn, ptr %5, i32 0, i32 5
  %7 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %status.i, align 8
  %and.i = and i32 %8, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %sw.epilog.if.end_crit_edge, label %if.end.i

sw.epilog.if.end_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end.i:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tdir)
  %tobool3.not.i = icmp eq i32 %tdir, 0
  %lnot.ext.i = zext i1 %tobool3.not.i to i32
  %tuple5.i = getelementptr %struct.nf_conn, ptr %5, i32 0, i32 4, i32 %lnot.ext.i, i32 1
  %call.i = call zeroext i1 @nf_ct_invert_tuple(ptr noundef nonnull %target.i, ptr noundef %tuple5.i) #12
  %l3num.i = getelementptr inbounds %struct.nf_conntrack_man, ptr %tuple1.i, i32 0, i32 2
  %9 = ptrtoint ptr %l3num.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %l3num.i, align 2
  %11 = zext i16 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.46)
  switch i16 %10, label %if.end.i.tcf_ct_flow_table_add_action_nat.exit_crit_edge [
    i16 2, label %sw.bb.i
    i16 10, label %sw.bb6.i
  ]

if.end.i.tcf_ct_flow_table_add_action_nat.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tcf_ct_flow_table_add_action_nat.exit

sw.bb.i:                                          ; preds = %if.end.i
  %12 = ptrtoint ptr %target.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %.fca.0.load.i = load i32, ptr %target.i, align 4
  %.fca.1.gep.i = getelementptr inbounds [10 x i32], ptr %target.i, i32 0, i32 1
  %13 = ptrtoint ptr %.fca.1.gep.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %.fca.1.load.i = load i32, ptr %.fca.1.gep.i, align 4
  %.fca.2.gep.i = getelementptr inbounds [10 x i32], ptr %target.i, i32 0, i32 2
  %14 = ptrtoint ptr %.fca.2.gep.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %.fca.2.load.i = load i32, ptr %.fca.2.gep.i, align 4
  %.fca.3.gep.i = getelementptr inbounds [10 x i32], ptr %target.i, i32 0, i32 3
  %15 = ptrtoint ptr %.fca.3.gep.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %.fca.3.load.i = load i32, ptr %.fca.3.gep.i, align 4
  %.fca.4.gep.i = getelementptr inbounds [10 x i32], ptr %target.i, i32 0, i32 4
  %16 = ptrtoint ptr %.fca.4.gep.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %.fca.4.load.i = load i32, ptr %.fca.4.gep.i, align 4
  %.fca.5.gep.i = getelementptr inbounds [10 x i32], ptr %target.i, i32 0, i32 5
  %17 = ptrtoint ptr %.fca.5.gep.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %.fca.5.load.i = load i32, ptr %.fca.5.gep.i, align 4
  %.fca.6.gep.i = getelementptr inbounds [10 x i32], ptr %target.i, i32 0, i32 6
  %18 = ptrtoint ptr %.fca.6.gep.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %.fca.6.load.i = load i32, ptr %.fca.6.gep.i, align 4
  %.fca.7.gep.i = getelementptr inbounds [10 x i32], ptr %target.i, i32 0, i32 7
  %19 = ptrtoint ptr %.fca.7.gep.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %.fca.7.load.i = load i32, ptr %.fca.7.gep.i, align 4
  %.fca.8.gep.i = getelementptr inbounds [10 x i32], ptr %target.i, i32 0, i32 8
  %20 = ptrtoint ptr %.fca.8.gep.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %.fca.8.load.i = load i32, ptr %.fca.8.gep.i, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %target.i.i) #12
  %21 = ptrtoint ptr %target.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %.fca.0.load.i, ptr %target.i.i, align 4
  %target.coerce.fca.1.gep.i.i = getelementptr inbounds [10 x i32], ptr %target.i.i, i32 0, i32 1
  %22 = ptrtoint ptr %target.coerce.fca.1.gep.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %.fca.1.load.i, ptr %target.coerce.fca.1.gep.i.i, align 4
  %target.coerce.fca.2.gep.i.i = getelementptr inbounds [10 x i32], ptr %target.i.i, i32 0, i32 2
  %23 = ptrtoint ptr %target.coerce.fca.2.gep.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %.fca.2.load.i, ptr %target.coerce.fca.2.gep.i.i, align 4
  %target.coerce.fca.3.gep.i.i = getelementptr inbounds [10 x i32], ptr %target.i.i, i32 0, i32 3
  %24 = ptrtoint ptr %target.coerce.fca.3.gep.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %.fca.3.load.i, ptr %target.coerce.fca.3.gep.i.i, align 4
  %target.coerce.fca.4.gep.i.i = getelementptr inbounds [10 x i32], ptr %target.i.i, i32 0, i32 4
  %25 = ptrtoint ptr %target.coerce.fca.4.gep.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %.fca.4.load.i, ptr %target.coerce.fca.4.gep.i.i, align 4
  %target.coerce.fca.5.gep.i.i = getelementptr inbounds [10 x i32], ptr %target.i.i, i32 0, i32 5
  %26 = ptrtoint ptr %target.coerce.fca.5.gep.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %.fca.5.load.i, ptr %target.coerce.fca.5.gep.i.i, align 4
  %target.coerce.fca.6.gep.i.i = getelementptr inbounds [10 x i32], ptr %target.i.i, i32 0, i32 6
  %27 = ptrtoint ptr %target.coerce.fca.6.gep.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %.fca.6.load.i, ptr %target.coerce.fca.6.gep.i.i, align 4
  %target.coerce.fca.7.gep.i.i = getelementptr inbounds [10 x i32], ptr %target.i.i, i32 0, i32 7
  %28 = ptrtoint ptr %target.coerce.fca.7.gep.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %.fca.7.load.i, ptr %target.coerce.fca.7.gep.i.i, align 4
  %target.coerce.fca.8.gep.i.i = getelementptr inbounds [10 x i32], ptr %target.i.i, i32 0, i32 8
  %29 = ptrtoint ptr %target.coerce.fca.8.gep.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %.fca.8.load.i, ptr %target.coerce.fca.8.gep.i.i, align 4
  %bcmp.i.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(16) %target.i.i, ptr noundef dereferenceable(16) %tuple1.i, i32 16) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %tobool.not.i.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %tobool.not.i.i, label %sw.bb.i.if.end.i.i_crit_edge, label %if.then.i.i

sw.bb.i.if.end.i.i_crit_edge:                     ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #14
  %30 = ptrtoint ptr %action1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %action1, align 8
  %inc.i.i.i.i = add i32 %31, 1
  store i32 %inc.i.i.i.i, ptr %action1, align 8
  %arrayidx.i.i.i.i = getelementptr %struct.flow_rule, ptr %1, i32 0, i32 1, i32 1, i32 %31
  %32 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 13, ptr %arrayidx.i.i.i.i, align 8
  %33 = getelementptr %struct.flow_rule, ptr %1, i32 0, i32 1, i32 1, i32 %31, i32 5
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 2, ptr %33, align 8
  %mask3.i.i.i = getelementptr %struct.flow_rule, ptr %1, i32 0, i32 1, i32 1, i32 %31, i32 5, i32 0, i32 1
  %35 = ptrtoint ptr %mask3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %mask3.i.i.i, align 8
  %offset4.i.i.i = getelementptr inbounds %struct.anon.193, ptr %33, i32 0, i32 1
  %36 = ptrtoint ptr %offset4.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 12, ptr %offset4.i.i.i, align 4
  %val5.i.i.i = getelementptr inbounds %struct.anon.193, ptr %33, i32 0, i32 3
  %37 = ptrtoint ptr %val5.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %.fca.0.load.i, ptr %val5.i.i.i, align 4
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %sw.bb.i.if.end.i.i_crit_edge
  %dst6.i.i = getelementptr %struct.nf_conn, ptr %5, i32 0, i32 4, i32 %tdir, i32 1, i32 1
  %bcmp16.i.i = call i32 @bcmp(ptr noundef dereferenceable(16) %target.coerce.fca.5.gep.i.i, ptr noundef dereferenceable(16) %dst6.i.i, i32 16) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp16.i.i)
  %tobool9.not.i.i = icmp eq i32 %bcmp16.i.i, 0
  br i1 %tobool9.not.i.i, label %if.end.i.i.tcf_ct_flow_table_add_action_nat_ipv4.exit.i_crit_edge, label %if.then10.i.i

if.end.i.i.tcf_ct_flow_table_add_action_nat_ipv4.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tcf_ct_flow_table_add_action_nat_ipv4.exit.i

if.then10.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %38 = ptrtoint ptr %action1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %action1, align 8
  %inc.i.i17.i.i = add i32 %39, 1
  store i32 %inc.i.i17.i.i, ptr %action1, align 8
  %arrayidx.i.i18.i.i = getelementptr %struct.flow_rule, ptr %1, i32 0, i32 1, i32 1, i32 %39
  %40 = ptrtoint ptr %arrayidx.i.i18.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 13, ptr %arrayidx.i.i18.i.i, align 8
  %41 = getelementptr %struct.flow_rule, ptr %1, i32 0, i32 1, i32 1, i32 %39, i32 5
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 2, ptr %41, align 8
  %mask3.i19.i.i = getelementptr %struct.flow_rule, ptr %1, i32 0, i32 1, i32 1, i32 %39, i32 5, i32 0, i32 1
  %43 = ptrtoint ptr %mask3.i19.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %mask3.i19.i.i, align 8
  %offset4.i20.i.i = getelementptr inbounds %struct.anon.193, ptr %41, i32 0, i32 1
  %44 = ptrtoint ptr %offset4.i20.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 16, ptr %offset4.i20.i.i, align 4
  %val5.i21.i.i = getelementptr inbounds %struct.anon.193, ptr %41, i32 0, i32 3
  %45 = ptrtoint ptr %val5.i21.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %.fca.5.load.i, ptr %val5.i21.i.i, align 4
  br label %tcf_ct_flow_table_add_action_nat_ipv4.exit.i

tcf_ct_flow_table_add_action_nat_ipv4.exit.i:     ; preds = %if.then10.i.i, %if.end.i.i.tcf_ct_flow_table_add_action_nat_ipv4.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %target.i.i) #12
  br label %sw.epilog.i

sw.bb6.i:                                         ; preds = %if.end.i
  %46 = ptrtoint ptr %target.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %.fca.0.load15.i = load i32, ptr %target.i, align 4
  %.fca.1.gep17.i = getelementptr inbounds [10 x i32], ptr %target.i, i32 0, i32 1
  %47 = ptrtoint ptr %.fca.1.gep17.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %.fca.1.load18.i = load i32, ptr %.fca.1.gep17.i, align 4
  %.fca.2.gep20.i = getelementptr inbounds [10 x i32], ptr %target.i, i32 0, i32 2
  %48 = ptrtoint ptr %.fca.2.gep20.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %.fca.2.load21.i = load i32, ptr %.fca.2.gep20.i, align 4
  %.fca.3.gep23.i = getelementptr inbounds [10 x i32], ptr %target.i, i32 0, i32 3
  %49 = ptrtoint ptr %.fca.3.gep23.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %.fca.3.load24.i = load i32, ptr %.fca.3.gep23.i, align 4
  %.fca.4.gep26.i = getelementptr inbounds [10 x i32], ptr %target.i, i32 0, i32 4
  %50 = ptrtoint ptr %.fca.4.gep26.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %.fca.4.load27.i = load i32, ptr %.fca.4.gep26.i, align 4
  %.fca.5.gep29.i = getelementptr inbounds [10 x i32], ptr %target.i, i32 0, i32 5
  %51 = ptrtoint ptr %.fca.5.gep29.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %.fca.5.load30.i = load i32, ptr %.fca.5.gep29.i, align 4
  %.fca.6.gep32.i = getelementptr inbounds [10 x i32], ptr %target.i, i32 0, i32 6
  %52 = ptrtoint ptr %.fca.6.gep32.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %.fca.6.load33.i = load i32, ptr %.fca.6.gep32.i, align 4
  %.fca.7.gep35.i = getelementptr inbounds [10 x i32], ptr %target.i, i32 0, i32 7
  %53 = ptrtoint ptr %.fca.7.gep35.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %.fca.7.load36.i = load i32, ptr %.fca.7.gep35.i, align 4
  %.fca.8.gep38.i = getelementptr inbounds [10 x i32], ptr %target.i, i32 0, i32 8
  %54 = ptrtoint ptr %.fca.8.gep38.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %.fca.8.load39.i = load i32, ptr %.fca.8.gep38.i, align 4
  %.fca.9.gep41.i = getelementptr inbounds [10 x i32], ptr %target.i, i32 0, i32 9
  %55 = ptrtoint ptr %.fca.9.gep41.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %.fca.9.load42.i = load i32, ptr %.fca.9.gep41.i, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %target.i1.i) #12
  %56 = ptrtoint ptr %target.i1.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %.fca.0.load15.i, ptr %target.i1.i, align 4
  %target.coerce.fca.1.gep.i2.i = getelementptr inbounds [10 x i32], ptr %target.i1.i, i32 0, i32 1
  %57 = ptrtoint ptr %target.coerce.fca.1.gep.i2.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %.fca.1.load18.i, ptr %target.coerce.fca.1.gep.i2.i, align 4
  %target.coerce.fca.2.gep.i3.i = getelementptr inbounds [10 x i32], ptr %target.i1.i, i32 0, i32 2
  %58 = ptrtoint ptr %target.coerce.fca.2.gep.i3.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %.fca.2.load21.i, ptr %target.coerce.fca.2.gep.i3.i, align 4
  %target.coerce.fca.3.gep.i4.i = getelementptr inbounds [10 x i32], ptr %target.i1.i, i32 0, i32 3
  %59 = ptrtoint ptr %target.coerce.fca.3.gep.i4.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %.fca.3.load24.i, ptr %target.coerce.fca.3.gep.i4.i, align 4
  %target.coerce.fca.4.gep.i5.i = getelementptr inbounds [10 x i32], ptr %target.i1.i, i32 0, i32 4
  %60 = ptrtoint ptr %target.coerce.fca.4.gep.i5.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %.fca.4.load27.i, ptr %target.coerce.fca.4.gep.i5.i, align 4
  %target.coerce.fca.5.gep.i6.i = getelementptr inbounds [10 x i32], ptr %target.i1.i, i32 0, i32 5
  %61 = ptrtoint ptr %target.coerce.fca.5.gep.i6.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %.fca.5.load30.i, ptr %target.coerce.fca.5.gep.i6.i, align 4
  %target.coerce.fca.6.gep.i7.i = getelementptr inbounds [10 x i32], ptr %target.i1.i, i32 0, i32 6
  %62 = ptrtoint ptr %target.coerce.fca.6.gep.i7.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %.fca.6.load33.i, ptr %target.coerce.fca.6.gep.i7.i, align 4
  %target.coerce.fca.7.gep.i8.i = getelementptr inbounds [10 x i32], ptr %target.i1.i, i32 0, i32 7
  %63 = ptrtoint ptr %target.coerce.fca.7.gep.i8.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %.fca.7.load36.i, ptr %target.coerce.fca.7.gep.i8.i, align 4
  %target.coerce.fca.8.gep.i9.i = getelementptr inbounds [10 x i32], ptr %target.i1.i, i32 0, i32 8
  %64 = ptrtoint ptr %target.coerce.fca.8.gep.i9.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %.fca.8.load39.i, ptr %target.coerce.fca.8.gep.i9.i, align 4
  %target.coerce.fca.9.gep.i10.i = getelementptr inbounds [10 x i32], ptr %target.i1.i, i32 0, i32 9
  %65 = ptrtoint ptr %target.coerce.fca.9.gep.i10.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %.fca.9.load42.i, ptr %target.coerce.fca.9.gep.i10.i, align 4
  %bcmp.i11.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(16) %target.i1.i, ptr noundef dereferenceable(16) %tuple1.i, i32 16) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i11.i)
  %tobool.not.i12.i = icmp eq i32 %bcmp.i11.i, 0
  br i1 %tobool.not.i12.i, label %sw.bb6.i.if.end.i17.i_crit_edge, label %if.then.i13.i

sw.bb6.i.if.end.i17.i_crit_edge:                  ; preds = %sw.bb6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i17.i

if.then.i13.i:                                    ; preds = %sw.bb6.i
  call void @__sanitizer_cov_trace_pc() #14
  %66 = ptrtoint ptr %action1 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %action1, align 8
  %inc.i.i.i.i.i = add i32 %67, 1
  store i32 %inc.i.i.i.i.i, ptr %action1, align 8
  %arrayidx.i.i.i.i.i = getelementptr %struct.flow_rule, ptr %1, i32 0, i32 1, i32 1, i32 %67
  %68 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 13, ptr %arrayidx.i.i.i.i.i, align 8
  %69 = getelementptr %struct.flow_rule, ptr %1, i32 0, i32 1, i32 1, i32 %67, i32 5
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 3, ptr %69, align 8
  %mask3.i.i.i.i = getelementptr %struct.flow_rule, ptr %1, i32 0, i32 1, i32 1, i32 %67, i32 5, i32 0, i32 1
  %71 = ptrtoint ptr %mask3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 0, ptr %mask3.i.i.i.i, align 8
  %offset4.i.i.i.i = getelementptr inbounds %struct.anon.193, ptr %69, i32 0, i32 1
  %72 = ptrtoint ptr %offset4.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 8, ptr %offset4.i.i.i.i, align 4
  %val5.i.i.i.i = getelementptr inbounds %struct.anon.193, ptr %69, i32 0, i32 3
  %73 = ptrtoint ptr %val5.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %.fca.0.load15.i, ptr %val5.i.i.i.i, align 4
  %74 = load i32, ptr %action1, align 8
  %inc.i.i.1.i.i.i = add i32 %74, 1
  store i32 %inc.i.i.1.i.i.i, ptr %action1, align 8
  %arrayidx.i.i.1.i.i.i = getelementptr %struct.flow_rule, ptr %1, i32 0, i32 1, i32 1, i32 %74
  %75 = ptrtoint ptr %arrayidx.i.i.1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 13, ptr %arrayidx.i.i.1.i.i.i, align 8
  %76 = getelementptr %struct.flow_rule, ptr %1, i32 0, i32 1, i32 1, i32 %74, i32 5
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 3, ptr %76, align 8
  %mask3.i.1.i.i.i = getelementptr %struct.flow_rule, ptr %1, i32 0, i32 1, i32 1, i32 %74, i32 5, i32 0, i32 1
  %78 = ptrtoint ptr %mask3.i.1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 0, ptr %mask3.i.1.i.i.i, align 8
  %offset4.i.1.i.i.i = getelementptr inbounds %struct.anon.193, ptr %76, i32 0, i32 1
  %79 = ptrtoint ptr %offset4.i.1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 12, ptr %offset4.i.1.i.i.i, align 4
  %val5.i.1.i.i.i = getelementptr inbounds %struct.anon.193, ptr %76, i32 0, i32 3
  %80 = ptrtoint ptr %val5.i.1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %.fca.1.load18.i, ptr %val5.i.1.i.i.i, align 4
  %81 = load i32, ptr %action1, align 8
  %inc.i.i.2.i.i.i = add i32 %81, 1
  store i32 %inc.i.i.2.i.i.i, ptr %action1, align 8
  %arrayidx.i.i.2.i.i.i = getelementptr %struct.flow_rule, ptr %1, i32 0, i32 1, i32 1, i32 %81
  %82 = ptrtoint ptr %arrayidx.i.i.2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 13, ptr %arrayidx.i.i.2.i.i.i, align 8
  %83 = getelementptr %struct.flow_rule, ptr %1, i32 0, i32 1, i32 1, i32 %81, i32 5
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 3, ptr %83, align 8
  %mask3.i.2.i.i.i = getelementptr %struct.flow_rule, ptr %1, i32 0, i32 1, i32 1, i32 %81, i32 5, i32 0, i32 1
  %85 = ptrtoint ptr %mask3.i.2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 0, ptr %mask3.i.2.i.i.i, align 8
  %offset4.i.2.i.i.i = getelementptr inbounds %struct.anon.193, ptr %83, i32 0, i32 1
  %86 = ptrtoint ptr %offset4.i.2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 16, ptr %offset4.i.2.i.i.i, align 4
  %val5.i.2.i.i.i = getelementptr inbounds %struct.anon.193, ptr %83, i32 0, i32 3
  %87 = ptrtoint ptr %val5.i.2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %.fca.2.load21.i, ptr %val5.i.2.i.i.i, align 4
  %88 = load i32, ptr %action1, align 8
  %inc.i.i.3.i.i.i = add i32 %88, 1
  store i32 %inc.i.i.3.i.i.i, ptr %action1, align 8
  %arrayidx.i.i.3.i.i.i = getelementptr %struct.flow_rule, ptr %1, i32 0, i32 1, i32 1, i32 %88
  %89 = ptrtoint ptr %arrayidx.i.i.3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 13, ptr %arrayidx.i.i.3.i.i.i, align 8
  %90 = getelementptr %struct.flow_rule, ptr %1, i32 0, i32 1, i32 1, i32 %88, i32 5
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 3, ptr %90, align 8
  %mask3.i.3.i.i.i = getelementptr %struct.flow_rule, ptr %1, i32 0, i32 1, i32 1, i32 %88, i32 5, i32 0, i32 1
  %92 = ptrtoint ptr %mask3.i.3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 0, ptr %mask3.i.3.i.i.i, align 8
  %offset4.i.3.i.i.i = getelementptr inbounds %struct.anon.193, ptr %90, i32 0, i32 1
  %93 = ptrtoint ptr %offset4.i.3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 20, ptr %offset4.i.3.i.i.i, align 4
  %val5.i.3.i.i.i = getelementptr inbounds %struct.anon.193, ptr %90, i32 0, i32 3
  %94 = ptrtoint ptr %val5.i.3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %.fca.3.load24.i, ptr %val5.i.3.i.i.i, align 4
  br label %if.end.i17.i

if.end.i17.i:                                     ; preds = %if.then.i13.i, %sw.bb6.i.if.end.i17.i_crit_edge
  %dst6.i14.i = getelementptr %struct.nf_conn, ptr %5, i32 0, i32 4, i32 %tdir, i32 1, i32 1
  %bcmp16.i15.i = call i32 @bcmp(ptr noundef dereferenceable(16) %target.coerce.fca.5.gep.i6.i, ptr noundef dereferenceable(16) %dst6.i14.i, i32 16) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp16.i15.i)
  %tobool9.not.i16.i = icmp eq i32 %bcmp16.i15.i, 0
  br i1 %tobool9.not.i16.i, label %if.end.i17.i.tcf_ct_flow_table_add_action_nat_ipv6.exit.i_crit_edge, label %if.then10.i18.i

if.end.i17.i.tcf_ct_flow_table_add_action_nat_ipv6.exit.i_crit_edge: ; preds = %if.end.i17.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tcf_ct_flow_table_add_action_nat_ipv6.exit.i

if.then10.i18.i:                                  ; preds = %if.end.i17.i
  call void @__sanitizer_cov_trace_pc() #14
  %95 = ptrtoint ptr %action1 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %action1, align 8
  %inc.i.i.i17.i.i = add i32 %96, 1
  store i32 %inc.i.i.i17.i.i, ptr %action1, align 8
  %arrayidx.i.i.i18.i.i = getelementptr %struct.flow_rule, ptr %1, i32 0, i32 1, i32 1, i32 %96
  %97 = ptrtoint ptr %arrayidx.i.i.i18.i.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 13, ptr %arrayidx.i.i.i18.i.i, align 8
  %98 = getelementptr %struct.flow_rule, ptr %1, i32 0, i32 1, i32 1, i32 %96, i32 5
  %99 = ptrtoint ptr %98 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 3, ptr %98, align 8
  %mask3.i.i19.i.i = getelementptr %struct.flow_rule, ptr %1, i32 0, i32 1, i32 1, i32 %96, i32 5, i32 0, i32 1
  %100 = ptrtoint ptr %mask3.i.i19.i.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 0, ptr %mask3.i.i19.i.i, align 8
  %offset4.i.i20.i.i = getelementptr inbounds %struct.anon.193, ptr %98, i32 0, i32 1
  %101 = ptrtoint ptr %offset4.i.i20.i.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 24, ptr %offset4.i.i20.i.i, align 4
  %val5.i.i21.i.i = getelementptr inbounds %struct.anon.193, ptr %98, i32 0, i32 3
  %102 = ptrtoint ptr %val5.i.i21.i.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %.fca.5.load30.i, ptr %val5.i.i21.i.i, align 4
  %103 = load i32, ptr %action1, align 8
  %inc.i.i.1.i23.i.i = add i32 %103, 1
  store i32 %inc.i.i.1.i23.i.i, ptr %action1, align 8
  %arrayidx.i.i.1.i24.i.i = getelementptr %struct.flow_rule, ptr %1, i32 0, i32 1, i32 1, i32 %103
  %104 = ptrtoint ptr %arrayidx.i.i.1.i24.i.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 13, ptr %arrayidx.i.i.1.i24.i.i, align 8
  %105 = getelementptr %struct.flow_rule, ptr %1, i32 0, i32 1, i32 1, i32 %103, i32 5
  %106 = ptrtoint ptr %105 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 3, ptr %105, align 8
  %mask3.i.1.i25.i.i = getelementptr %struct.flow_rule, ptr %1, i32 0, i32 1, i32 1, i32 %103, i32 5, i32 0, i32 1
  %107 = ptrtoint ptr %mask3.i.1.i25.i.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 0, ptr %mask3.i.1.i25.i.i, align 8
  %offset4.i.1.i26.i.i = getelementptr inbounds %struct.anon.193, ptr %105, i32 0, i32 1
  %108 = ptrtoint ptr %offset4.i.1.i26.i.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 28, ptr %offset4.i.1.i26.i.i, align 4
  %val5.i.1.i27.i.i = getelementptr inbounds %struct.anon.193, ptr %105, i32 0, i32 3
  %109 = ptrtoint ptr %val5.i.1.i27.i.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %.fca.6.load33.i, ptr %val5.i.1.i27.i.i, align 4
  %110 = load i32, ptr %action1, align 8
  %inc.i.i.2.i29.i.i = add i32 %110, 1
  store i32 %inc.i.i.2.i29.i.i, ptr %action1, align 8
  %arrayidx.i.i.2.i30.i.i = getelementptr %struct.flow_rule, ptr %1, i32 0, i32 1, i32 1, i32 %110
  %111 = ptrtoint ptr %arrayidx.i.i.2.i30.i.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 13, ptr %arrayidx.i.i.2.i30.i.i, align 8
  %112 = getelementptr %struct.flow_rule, ptr %1, i32 0, i32 1, i32 1, i32 %110, i32 5
  %113 = ptrtoint ptr %112 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 3, ptr %112, align 8
  %mask3.i.2.i31.i.i = getelementptr %struct.flow_rule, ptr %1, i32 0, i32 1, i32 1, i32 %110, i32 5, i32 0, i32 1
  %114 = ptrtoint ptr %mask3.i.2.i31.i.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 0, ptr %mask3.i.2.i31.i.i, align 8
  %offset4.i.2.i32.i.i = getelementptr inbounds %struct.anon.193, ptr %112, i32 0, i32 1
  %115 = ptrtoint ptr %offset4.i.2.i32.i.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 32, ptr %offset4.i.2.i32.i.i, align 4
  %val5.i.2.i33.i.i = getelementptr inbounds %struct.anon.193, ptr %112, i32 0, i32 3
  %116 = ptrtoint ptr %val5.i.2.i33.i.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %.fca.7.load36.i, ptr %val5.i.2.i33.i.i, align 4
  %117 = load i32, ptr %action1, align 8
  %inc.i.i.3.i35.i.i = add i32 %117, 1
  store i32 %inc.i.i.3.i35.i.i, ptr %action1, align 8
  %arrayidx.i.i.3.i36.i.i = getelementptr %struct.flow_rule, ptr %1, i32 0, i32 1, i32 1, i32 %117
  %118 = ptrtoint ptr %arrayidx.i.i.3.i36.i.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 13, ptr %arrayidx.i.i.3.i36.i.i, align 8
  %119 = getelementptr %struct.flow_rule, ptr %1, i32 0, i32 1, i32 1, i32 %117, i32 5
  %120 = ptrtoint ptr %119 to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 3, ptr %119, align 8
  %mask3.i.3.i37.i.i = getelementptr %struct.flow_rule, ptr %1, i32 0, i32 1, i32 1, i32 %117, i32 5, i32 0, i32 1
  %121 = ptrtoint ptr %mask3.i.3.i37.i.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 0, ptr %mask3.i.3.i37.i.i, align 8
  %offset4.i.3.i38.i.i = getelementptr inbounds %struct.anon.193, ptr %119, i32 0, i32 1
  %122 = ptrtoint ptr %offset4.i.3.i38.i.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 36, ptr %offset4.i.3.i38.i.i, align 4
  %val5.i.3.i39.i.i = getelementptr inbounds %struct.anon.193, ptr %119, i32 0, i32 3
  %123 = ptrtoint ptr %val5.i.3.i39.i.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %.fca.8.load39.i, ptr %val5.i.3.i39.i.i, align 4
  br label %tcf_ct_flow_table_add_action_nat_ipv6.exit.i

tcf_ct_flow_table_add_action_nat_ipv6.exit.i:     ; preds = %if.then10.i18.i, %if.end.i17.i.tcf_ct_flow_table_add_action_nat_ipv6.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %target.i1.i) #12
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %tcf_ct_flow_table_add_action_nat_ipv6.exit.i, %tcf_ct_flow_table_add_action_nat_ipv4.exit.i
  %protonum.i.i = getelementptr inbounds %struct.nf_conn, ptr %5, i32 0, i32 4, i32 0, i32 1, i32 1, i32 2
  %124 = ptrtoint ptr %protonum.i.i to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %protonum.i.i, align 2
  %126 = zext i8 %125 to i64
  call void @__sanitizer_cov_trace_switch(i64 %126, ptr @__sancov_gen_cov_switch_values.47)
  switch i8 %125, label %sw.epilog.i.tcf_ct_flow_table_add_action_nat.exit_crit_edge [
    i8 6, label %sw.bb9.i
    i8 17, label %sw.bb10.i
  ]

sw.epilog.i.tcf_ct_flow_table_add_action_nat.exit_crit_edge: ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tcf_ct_flow_table_add_action_nat.exit

sw.bb9.i:                                         ; preds = %sw.epilog.i
  %.fca.4.gep56.i = getelementptr inbounds [10 x i32], ptr %target.i, i32 0, i32 4
  %127 = ptrtoint ptr %.fca.4.gep56.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %.fca.4.load57.i = load i32, ptr %.fca.4.gep56.i, align 4
  %.fca.9.gep71.i = getelementptr inbounds [10 x i32], ptr %target.i, i32 0, i32 9
  %128 = ptrtoint ptr %.fca.9.gep71.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %.fca.9.load72.i = load i32, ptr %.fca.9.gep71.i, align 4
  %target.sroa.4.16.extract.shift.i.i = lshr i32 %.fca.4.load57.i, 16
  %target.sroa.10.36.extract.shift.i.i = lshr i32 %.fca.9.load72.i, 16
  %u4.i.i = getelementptr inbounds %struct.nf_conntrack_man, ptr %tuple1.i, i32 0, i32 1
  %129 = ptrtoint ptr %u4.i.i to i32
  call void @__asan_load2_noabort(i32 %129)
  %130 = load i16, ptr %u4.i.i, align 4
  %conv6.i.i = zext i16 %130 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %target.sroa.4.16.extract.shift.i.i, i32 %conv6.i.i)
  %cmp.not.i.i = icmp eq i32 %target.sroa.4.16.extract.shift.i.i, %conv6.i.i
  br i1 %cmp.not.i.i, label %sw.bb9.i.if.end.i25.i_crit_edge, label %if.then.i24.i

sw.bb9.i.if.end.i25.i_crit_edge:                  ; preds = %sw.bb9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i25.i

if.then.i24.i:                                    ; preds = %sw.bb9.i
  call void @__sanitizer_cov_trace_pc() #14
  %131 = ptrtoint ptr %action1 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %action1, align 8
  %inc.i.i.i19.i = add i32 %132, 1
  store i32 %inc.i.i.i19.i, ptr %action1, align 8
  %arrayidx.i.i.i20.i = getelementptr %struct.flow_rule, ptr %1, i32 0, i32 1, i32 1, i32 %132
  %133 = ptrtoint ptr %arrayidx.i.i.i20.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 13, ptr %arrayidx.i.i.i20.i, align 8
  %134 = getelementptr %struct.flow_rule, ptr %1, i32 0, i32 1, i32 1, i32 %132, i32 5
  %135 = ptrtoint ptr %134 to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 4, ptr %134, align 8
  %mask3.i.i21.i = getelementptr %struct.flow_rule, ptr %1, i32 0, i32 1, i32 1, i32 %132, i32 5, i32 0, i32 1
  %136 = ptrtoint ptr %mask3.i.i21.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 -65536, ptr %mask3.i.i21.i, align 8
  %offset4.i.i22.i = getelementptr inbounds %struct.anon.193, ptr %134, i32 0, i32 1
  %137 = ptrtoint ptr %offset4.i.i22.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 0, ptr %offset4.i.i22.i, align 4
  %val5.i.i23.i = getelementptr inbounds %struct.anon.193, ptr %134, i32 0, i32 3
  %138 = ptrtoint ptr %val5.i.i23.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 %target.sroa.4.16.extract.shift.i.i, ptr %val5.i.i23.i, align 4
  br label %if.end.i25.i

if.end.i25.i:                                     ; preds = %if.then.i24.i, %sw.bb9.i.if.end.i25.i_crit_edge
  %u11.i.i = getelementptr %struct.nf_conn, ptr %5, i32 0, i32 4, i32 %tdir, i32 1, i32 1, i32 1
  %139 = ptrtoint ptr %u11.i.i to i32
  call void @__asan_load2_noabort(i32 %139)
  %140 = load i16, ptr %u11.i.i, align 4
  %conv13.i.i = zext i16 %140 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %target.sroa.10.36.extract.shift.i.i, i32 %conv13.i.i)
  %cmp14.not.i.i = icmp eq i32 %target.sroa.10.36.extract.shift.i.i, %conv13.i.i
  br i1 %cmp14.not.i.i, label %if.end.i25.i.if.end_crit_edge, label %if.then16.i.i

if.end.i25.i.if.end_crit_edge:                    ; preds = %if.end.i25.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then16.i.i:                                    ; preds = %if.end.i25.i
  call void @__sanitizer_cov_trace_pc() #14
  %141 = ptrtoint ptr %action1 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %action1, align 8
  %inc.i.i23.i.i = add i32 %142, 1
  store i32 %inc.i.i23.i.i, ptr %action1, align 8
  %arrayidx.i.i24.i.i = getelementptr %struct.flow_rule, ptr %1, i32 0, i32 1, i32 1, i32 %142
  %143 = ptrtoint ptr %arrayidx.i.i24.i.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 13, ptr %arrayidx.i.i24.i.i, align 8
  %144 = getelementptr %struct.flow_rule, ptr %1, i32 0, i32 1, i32 1, i32 %142, i32 5
  %145 = ptrtoint ptr %144 to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 4, ptr %144, align 8
  br label %cleanup.sink.split.i

sw.bb10.i:                                        ; preds = %sw.epilog.i
  %.fca.4.gep86.i = getelementptr inbounds [10 x i32], ptr %target.i, i32 0, i32 4
  %146 = ptrtoint ptr %.fca.4.gep86.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %.fca.4.load87.i = load i32, ptr %.fca.4.gep86.i, align 4
  %.fca.9.gep101.i = getelementptr inbounds [10 x i32], ptr %target.i, i32 0, i32 9
  %147 = ptrtoint ptr %.fca.9.gep101.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %.fca.9.load102.i = load i32, ptr %.fca.9.gep101.i, align 4
  %target.sroa.4.16.extract.shift.i26.i = lshr i32 %.fca.4.load87.i, 16
  %target.sroa.10.36.extract.shift.i27.i = lshr i32 %.fca.9.load102.i, 16
  %u4.i28.i = getelementptr inbounds %struct.nf_conntrack_man, ptr %tuple1.i, i32 0, i32 1
  %148 = ptrtoint ptr %u4.i28.i to i32
  call void @__asan_load2_noabort(i32 %148)
  %149 = load i16, ptr %u4.i28.i, align 4
  %conv6.i29.i = zext i16 %149 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %target.sroa.4.16.extract.shift.i26.i, i32 %conv6.i29.i)
  %cmp.not.i30.i = icmp eq i32 %target.sroa.4.16.extract.shift.i26.i, %conv6.i29.i
  br i1 %cmp.not.i30.i, label %sw.bb10.i.if.end.i40.i_crit_edge, label %if.then.i36.i

sw.bb10.i.if.end.i40.i_crit_edge:                 ; preds = %sw.bb10.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i40.i

if.then.i36.i:                                    ; preds = %sw.bb10.i
  call void @__sanitizer_cov_trace_pc() #14
  %150 = ptrtoint ptr %action1 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %action1, align 8
  %inc.i.i.i31.i = add i32 %151, 1
  store i32 %inc.i.i.i31.i, ptr %action1, align 8
  %arrayidx.i.i.i32.i = getelementptr %struct.flow_rule, ptr %1, i32 0, i32 1, i32 1, i32 %151
  %152 = ptrtoint ptr %arrayidx.i.i.i32.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 13, ptr %arrayidx.i.i.i32.i, align 8
  %153 = getelementptr %struct.flow_rule, ptr %1, i32 0, i32 1, i32 1, i32 %151, i32 5
  %154 = ptrtoint ptr %153 to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 5, ptr %153, align 8
  %mask3.i.i33.i = getelementptr %struct.flow_rule, ptr %1, i32 0, i32 1, i32 1, i32 %151, i32 5, i32 0, i32 1
  %155 = ptrtoint ptr %mask3.i.i33.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 -65536, ptr %mask3.i.i33.i, align 8
  %offset4.i.i34.i = getelementptr inbounds %struct.anon.193, ptr %153, i32 0, i32 1
  %156 = ptrtoint ptr %offset4.i.i34.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 0, ptr %offset4.i.i34.i, align 4
  %val5.i.i35.i = getelementptr inbounds %struct.anon.193, ptr %153, i32 0, i32 3
  %157 = ptrtoint ptr %val5.i.i35.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 %target.sroa.4.16.extract.shift.i26.i, ptr %val5.i.i35.i, align 4
  br label %if.end.i40.i

if.end.i40.i:                                     ; preds = %if.then.i36.i, %sw.bb10.i.if.end.i40.i_crit_edge
  %u11.i37.i = getelementptr %struct.nf_conn, ptr %5, i32 0, i32 4, i32 %tdir, i32 1, i32 1, i32 1
  %158 = ptrtoint ptr %u11.i37.i to i32
  call void @__asan_load2_noabort(i32 %158)
  %159 = load i16, ptr %u11.i37.i, align 4
  %conv13.i38.i = zext i16 %159 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %target.sroa.10.36.extract.shift.i27.i, i32 %conv13.i38.i)
  %cmp14.not.i39.i = icmp eq i32 %target.sroa.10.36.extract.shift.i27.i, %conv13.i38.i
  br i1 %cmp14.not.i39.i, label %if.end.i40.i.if.end_crit_edge, label %if.then16.i46.i

if.end.i40.i.if.end_crit_edge:                    ; preds = %if.end.i40.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then16.i46.i:                                  ; preds = %if.end.i40.i
  call void @__sanitizer_cov_trace_pc() #14
  %160 = ptrtoint ptr %action1 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %action1, align 8
  %inc.i.i23.i41.i = add i32 %161, 1
  store i32 %inc.i.i23.i41.i, ptr %action1, align 8
  %arrayidx.i.i24.i42.i = getelementptr %struct.flow_rule, ptr %1, i32 0, i32 1, i32 1, i32 %161
  %162 = ptrtoint ptr %arrayidx.i.i24.i42.i to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 13, ptr %arrayidx.i.i24.i42.i, align 8
  %163 = getelementptr %struct.flow_rule, ptr %1, i32 0, i32 1, i32 1, i32 %161, i32 5
  %164 = ptrtoint ptr %163 to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 5, ptr %163, align 8
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.then16.i46.i, %if.then16.i.i
  %.sink48.i = phi i32 [ %161, %if.then16.i46.i ], [ %142, %if.then16.i.i ]
  %.sink47.i = phi ptr [ %163, %if.then16.i46.i ], [ %144, %if.then16.i.i ]
  %target.sroa.10.36.extract.shift.i27.sink.i = phi i32 [ %target.sroa.10.36.extract.shift.i27.i, %if.then16.i46.i ], [ %target.sroa.10.36.extract.shift.i.i, %if.then16.i.i ]
  %mask3.i25.i43.i = getelementptr %struct.flow_rule, ptr %1, i32 0, i32 1, i32 1, i32 %.sink48.i, i32 5, i32 0, i32 1
  %165 = ptrtoint ptr %mask3.i25.i43.i to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 -65536, ptr %mask3.i25.i43.i, align 8
  %offset4.i26.i44.i = getelementptr inbounds %struct.anon.193, ptr %.sink47.i, i32 0, i32 1
  %166 = ptrtoint ptr %offset4.i26.i44.i to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 2, ptr %offset4.i26.i44.i, align 4
  %val5.i27.i45.i = getelementptr inbounds %struct.anon.193, ptr %.sink47.i, i32 0, i32 3
  %167 = ptrtoint ptr %val5.i27.i45.i to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 %target.sroa.10.36.extract.shift.i27.sink.i, ptr %val5.i27.i45.i, align 4
  br label %if.end

tcf_ct_flow_table_add_action_nat.exit:            ; preds = %sw.epilog.i.tcf_ct_flow_table_add_action_nat.exit_crit_edge, %if.end.i.tcf_ct_flow_table_add_action_nat.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %target.i) #12
  %168 = ptrtoint ptr %action1 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %action1, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %169)
  %cmp28 = icmp ult i32 %3, %169
  br i1 %cmp28, label %for.body.lr.ph, label %tcf_ct_flow_table_add_action_nat.exit.for.end_crit_edge

tcf_ct_flow_table_add_action_nat.exit.for.end_crit_edge: ; preds = %tcf_ct_flow_table_add_action_nat.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %tcf_ct_flow_table_add_action_nat.exit
  %entries = getelementptr inbounds %struct.flow_rule, ptr %1, i32 1
  br label %for.body

if.end:                                           ; preds = %cleanup.sink.split.i, %if.end.i40.i.if.end_crit_edge, %if.end.i25.i.if.end_crit_edge, %sw.epilog.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %target.i) #12
  %170 = ptrtoint ptr %action1 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %action1, align 8
  %inc.i.i = add i32 %171, 1
  store i32 %inc.i.i, ptr %action1, align 8
  %arrayidx.i.i = getelementptr %struct.flow_rule, ptr %1, i32 0, i32 1, i32 1, i32 %171
  %172 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 24, ptr %arrayidx.i.i, align 8
  %mark.i = getelementptr inbounds %struct.nf_conn, ptr %5, i32 0, i32 11
  %173 = ptrtoint ptr %mark.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %mark.i, align 8
  %175 = getelementptr %struct.flow_rule, ptr %1, i32 0, i32 1, i32 1, i32 %171, i32 5
  %mark2.i = getelementptr inbounds %struct.anon.201, ptr %175, i32 0, i32 1
  %176 = ptrtoint ptr %mark2.i to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 %174, ptr %mark2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tdir)
  %cmp.i = icmp eq i32 %tdir, 0
  %cond.i = select i1 %cmp.i, i32 0, i32 3
  %177 = ptrtoint ptr %5 to i32
  %or.i = or i32 %cond.i, %177
  %178 = ptrtoint ptr %175 to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 %or.i, ptr %175, align 8
  %orig_dir.i = getelementptr %struct.flow_rule, ptr %1, i32 0, i32 1, i32 1, i32 %171, i32 5, i32 0, i32 3
  %frombool.i = zext i1 %cmp.i to i8
  %179 = ptrtoint ptr %orig_dir.i to i32
  call void @__asan_store1_noabort(i32 %179)
  store i8 %frombool.i, ptr %orig_dir.i, align 8
  %labels.i = getelementptr %struct.flow_rule, ptr %1, i32 0, i32 1, i32 1, i32 %171, i32 5, i32 0, i32 1
  %ext.i.i.i.i = getelementptr inbounds %struct.nf_conn, ptr %5, i32 0, i32 13
  %180 = ptrtoint ptr %ext.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %ext.i.i.i.i, align 8
  %tobool.not.i.i.i.i = icmp eq ptr %181, null
  br i1 %tobool.not.i.i.i.i, label %if.end.if.else.i_crit_edge, label %nf_ct_ext_exist.exit.i.i.i

if.end.if.else.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i

nf_ct_ext_exist.exit.i.i.i:                       ; preds = %if.end
  %arrayidx.i.i.i.i.i23 = getelementptr [10 x i8], ptr %181, i32 0, i32 7
  %182 = ptrtoint ptr %arrayidx.i.i.i.i.i23 to i32
  call void @__asan_load1_noabort(i32 %182)
  %183 = load i8, ptr %arrayidx.i.i.i.i.i23, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %183)
  %tobool.i.i.not.i.i.i = icmp eq i8 %183, 0
  br i1 %tobool.i.i.not.i.i.i, label %nf_ct_ext_exist.exit.i.i.i.if.else.i_crit_edge, label %nf_ct_labels_find.exit.i

nf_ct_ext_exist.exit.i.i.i.if.else.i_crit_edge:   ; preds = %nf_ct_ext_exist.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i

nf_ct_labels_find.exit.i:                         ; preds = %nf_ct_ext_exist.exit.i.i.i
  %conv.i.i.i = zext i8 %183 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %181, i32 %conv.i.i.i
  %tobool.not.i24 = icmp eq ptr %add.ptr.i.i.i, null
  br i1 %tobool.not.i24, label %nf_ct_labels_find.exit.i.if.else.i_crit_edge, label %if.then.i

nf_ct_labels_find.exit.i.if.else.i_crit_edge:     ; preds = %nf_ct_labels_find.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i

if.then.i:                                        ; preds = %nf_ct_labels_find.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %184 = call ptr @memcpy(ptr %labels.i, ptr %add.ptr.i.i.i, i32 16)
  br label %cleanup

if.else.i:                                        ; preds = %nf_ct_labels_find.exit.i.if.else.i_crit_edge, %nf_ct_ext_exist.exit.i.i.i.if.else.i_crit_edge, %if.end.if.else.i_crit_edge
  %185 = call ptr @memset(ptr %labels.i, i32 0, i32 16)
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.029 = phi i32 [ %3, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [0 x %struct.flow_action_entry], ptr %entries, i32 0, i32 %i.029
  %186 = call ptr @memset(ptr %arrayidx, i32 0, i32 72)
  %inc = add nuw i32 %i.029, 1
  %187 = ptrtoint ptr %action1 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %action1, align 8
  %cmp = icmp ult i32 %inc, %188
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %tcf_ct_flow_table_add_action_nat.exit.for.end_crit_edge
  %189 = ptrtoint ptr %action1 to i32
  call void @__asan_store4_noabort(i32 %189)
  store i32 %3, ptr %action1, align 8
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.else.i, %if.then.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %for.end ], [ -95, %entry.cleanup_crit_edge ], [ 0, %if.then.i ], [ 0, %if.else.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nf_ct_invert_tuple(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcf_generic_walker(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcf_action_update_stats(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ct_init_net(ptr noundef %net) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @ct_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0)
  %call1 = tail call i32 @nf_connlabels_get(ptr noundef %net, i32 noundef 127) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  %labels3 = getelementptr inbounds %struct.tc_ct_action_net, ptr %call, i32 0, i32 1
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %1 = ptrtoint ptr %labels3 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %labels3, align 4
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26) #17
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %2 = ptrtoint ptr %labels3 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %labels3, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3264, i32 noundef 156) #15
  %4 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call7.i.i, ptr %call, align 4
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %if.end.tc_action_net_init.exit_crit_edge, label %if.end.i

if.end.tc_action_net_init.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %tc_action_net_init.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %ops2.i = getelementptr inbounds %struct.tc_action_net, ptr %call, i32 0, i32 1
  %5 = ptrtoint ptr %ops2.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @act_ct_ops, ptr %ops2.i, align 4
  %net4.i = getelementptr inbounds %struct.tcf_idrinfo, ptr %call7.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %net4.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %net, ptr %net4.i, align 8
  tail call void @__mutex_init(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.28, ptr noundef nonnull @tc_action_net_init.__key) #12
  %7 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %call, align 4
  %action_idr.i = getelementptr inbounds %struct.tcf_idrinfo, ptr %8, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %action_idr.i, ptr noundef nonnull @.str.29, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #12
  %xa_flags.i.i.i.i = getelementptr inbounds %struct.tcf_idrinfo, ptr %8, i32 0, i32 1, i32 0, i32 1
  %9 = ptrtoint ptr %xa_flags.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 67108868, ptr %xa_flags.i.i.i.i, align 4
  %xa_head.i.i.i.i = getelementptr inbounds %struct.tcf_idrinfo, ptr %8, i32 0, i32 1, i32 0, i32 2
  %10 = ptrtoint ptr %xa_head.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %xa_head.i.i.i.i, align 4
  %idr_base.i.i.i = getelementptr inbounds %struct.tcf_idrinfo, ptr %8, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %idr_base.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %idr_base.i.i.i, align 4
  %idr_next.i.i.i = getelementptr inbounds %struct.tcf_idrinfo, ptr %8, i32 0, i32 1, i32 2
  %12 = ptrtoint ptr %idr_next.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %idr_next.i.i.i, align 4
  br label %tc_action_net_init.exit

tc_action_net_init.exit:                          ; preds = %if.end.i, %if.end.tc_action_net_init.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end.i ], [ -12, %if.end.tc_action_net_init.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ct_exit_net(ptr noundef readonly %net_list) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @rtnl_lock() #12
  %0 = ptrtoint ptr %net_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn11 = load ptr, ptr %net_list, align 4
  %cmp.not13 = icmp eq ptr %.pn11, %net_list
  br i1 %cmp.not13, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn14 = phi ptr [ %.pn, %if.end.for.body_crit_edge ], [ %.pn11, %entry.for.body_crit_edge ]
  %net.015 = getelementptr i8, ptr %.pn14, i32 -116
  %1 = load i32, ptr @ct_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %net.015, i32 noundef %1)
  %labels = getelementptr inbounds %struct.tc_ct_action_net, ptr %call, i32 0, i32 1
  %2 = ptrtoint ptr %labels to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %labels, align 4, !range !148
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %if.then

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @nf_connlabels_put(ptr noundef %net.015) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %4 = ptrtoint ptr %.pn14 to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn = load ptr, ptr %.pn14, align 4
  %cmp.not = icmp eq ptr %.pn, %net_list
  br i1 %cmp.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @rtnl_unlock() #12
  %5 = load i32, ptr @ct_net_id, align 4
  tail call void @rtnl_lock() #12
  %6 = ptrtoint ptr %net_list to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn12.i = load ptr, ptr %net_list, align 4
  %cmp.not13.i = icmp eq ptr %.pn12.i, %net_list
  br i1 %cmp.not13.i, label %for.end.tc_action_net_exit.exit_crit_edge, label %for.end.for.body.i_crit_edge

for.end.for.body.i_crit_edge:                     ; preds = %for.end
  br label %for.body.i

for.end.tc_action_net_exit.exit_crit_edge:        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %tc_action_net_exit.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.end.for.body.i_crit_edge
  %.pn14.i = phi ptr [ %.pn.i, %for.body.i.for.body.i_crit_edge ], [ %.pn12.i, %for.end.for.body.i_crit_edge ]
  %net.0.i = getelementptr i8, ptr %.pn14.i, i32 -116
  %call.i = tail call fastcc ptr @net_generic(ptr noundef %net.0.i, i32 noundef %5) #12
  %ops.i = getelementptr inbounds %struct.tc_action_net, ptr %call.i, i32 0, i32 1
  %7 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ops.i, align 4
  %9 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %call.i, align 4
  tail call void @tcf_idrinfo_destroy(ptr noundef %8, ptr noundef %10) #12
  %11 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %call.i, align 4
  tail call void @kfree(ptr noundef %12) #12
  %13 = ptrtoint ptr %.pn14.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pn.i = load ptr, ptr %.pn14.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %net_list
  br i1 %cmp.not.i, label %for.body.i.tc_action_net_exit.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.body.i.tc_action_net_exit.exit_crit_edge:     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tc_action_net_exit.exit

tc_action_net_exit.exit:                          ; preds = %for.body.i.tc_action_net_exit.exit_crit_edge, %for.end.tc_action_net_exit.exit_crit_edge
  tail call void @rtnl_unlock() #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_connlabels_get(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_connlabels_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcf_idrinfo_destroy(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rhashtable_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcf_register_action(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_ct_extend_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @static_key_slow_inc(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rhashtable_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #10

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { nounwind readonly }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { argmemonly nofree nounwind readonly willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { nobuiltin nounwind }
attributes #17 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !17, !19, !21, !23, !24, !25, !27, !28, !30, !32, !34, !35, !37, !39, !41, !42, !44, !45, !47, !49, !50, !51, !53, !55, !57, !59, !61, !63, !65, !66, !68, !70, !72, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !94, !95, !97, !99, !101, !103, !105, !107, !109, !111, !112, !114, !116, !118, !120, !121, !122, !123, !125, !126, !128, !129}
!llvm.named.register.sp = !{!131}
!llvm.module.flags = !{!132, !133, !134, !135, !136, !137, !138, !139}
!llvm.ident = !{!140}

!0 = !{ptr @__initcall__kmod_act_ct__672_1637_ct_init_module6, !1, !"__initcall__kmod_act_ct__672_1637_ct_init_module6", i1 false, i1 false}
!1 = !{!"../net/sched/act_ct.c", i32 1637, i32 1}
!2 = !{ptr @__exitcall_ct_cleanup_module, !3, !"__exitcall_ct_cleanup_module", i1 false, i1 false}
!3 = !{!"../net/sched/act_ct.c", i32 1638, i32 1}
!4 = !{ptr @__UNIQUE_ID_author673, !5, !"__UNIQUE_ID_author673", i1 false, i1 false}
!5 = !{!"../net/sched/act_ct.c", i32 1639, i32 1}
!6 = !{ptr @__UNIQUE_ID_author674, !7, !"__UNIQUE_ID_author674", i1 false, i1 false}
!7 = !{!"../net/sched/act_ct.c", i32 1640, i32 1}
!8 = !{ptr @__UNIQUE_ID_author675, !9, !"__UNIQUE_ID_author675", i1 false, i1 false}
!9 = !{!"../net/sched/act_ct.c", i32 1641, i32 1}
!10 = !{ptr @__UNIQUE_ID_description676, !11, !"__UNIQUE_ID_description676", i1 false, i1 false}
!11 = !{!"../net/sched/act_ct.c", i32 1642, i32 1}
!12 = !{ptr @__UNIQUE_ID_file677, !13, !"__UNIQUE_ID_file677", i1 false, i1 false}
!13 = !{!"../net/sched/act_ct.c", i32 1643, i32 1}
!14 = !{ptr @__UNIQUE_ID_license678, !13, !"__UNIQUE_ID_license678", i1 false, i1 false}
!15 = !{ptr @act_ct_wq, !16, !"act_ct_wq", i1 false, i1 false}
!16 = !{!"../net/sched/act_ct.c", i32 38, i32 33}
!17 = !{ptr @act_ct_extend, !18, !"act_ct_extend", i1 false, i1 false}
!18 = !{!"../net/sched/act_ct.c", i32 60, i32 30}
!19 = !{ptr @act_ct_ops, !20, !"act_ct_ops", i1 false, i1 false}
!20 = !{!"../net/sched/act_ct.c", i32 1542, i32 29}
!21 = distinct !{null, !22, !"__warned", i1 false, i1 false}
!22 = !{!"../net/sched/act_ct.c", i32 977, i32 6}
!23 = !{ptr @.str, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.1, !22, !"<string literal>", i1 false, i1 false}
!25 = distinct !{null, !26, !"__already_done", i1 false, i1 false}
!26 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!27 = !{ptr @.str.2, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.3, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../include/linux/if_vlan.h", i32 598, i32 8}
!30 = distinct !{null, !31, !"__already_done", i1 false, i1 false}
!31 = !{!"../net/sched/act_ct.c", i32 384, i32 3}
!32 = distinct !{null, !33, !"__warned", i1 false, i1 false}
!33 = !{!"../net/sched/act_ct.c", i32 1443, i32 6}
!34 = !{ptr @.str.4, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.5, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../include/net/netlink.h", i32 991, i32 3}
!37 = distinct !{null, !38, !"__warned", i1 false, i1 false}
!38 = !{!"../net/sched/act_ct.c", i32 1360, i32 11}
!39 = !{ptr @tcf_ct_flow_table_put.__key, !40, !"__key", i1 false, i1 false}
!40 = !{!"../net/sched/act_ct.c", i32 359, i32 3}
!41 = !{ptr @.str.6, !40, !"<string literal>", i1 false, i1 false}
!42 = distinct !{null, !43, !"__warned", i1 false, i1 false}
!43 = !{!"../include/linux/rhashtable.h", i32 1076, i32 8}
!44 = !{ptr @.str.7, !43, !"<string literal>", i1 false, i1 false}
!45 = distinct !{null, !46, !"__warned", i1 false, i1 false}
!46 = !{!"../include/linux/rhashtable.h", i32 1085, i32 16}
!47 = distinct !{null, !48, !"__warned", i1 false, i1 false}
!48 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!49 = !{ptr @.str.9, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.10, !48, !"<string literal>", i1 false, i1 false}
!51 = distinct !{null, !52, !"__warned", i1 false, i1 false}
!52 = !{!"../include/linux/rhashtable.h", i32 1019, i32 12}
!53 = distinct !{null, !54, !"__warned", i1 false, i1 false}
!54 = !{!"../include/linux/rhashtable.h", i32 1026, i32 11}
!55 = distinct !{null, !56, !"__warned", i1 false, i1 false}
!56 = !{!"../include/linux/rhashtable.h", i32 1032, i32 9}
!57 = distinct !{null, !58, !"__warned", i1 false, i1 false}
!58 = !{!"../include/linux/rhashtable.h", i32 1036, i32 11}
!59 = distinct !{null, !60, !"__warned", i1 false, i1 false}
!60 = !{!"../include/linux/rhashtable.h", i32 1004, i32 2}
!61 = distinct !{null, !62, !"__warned", i1 false, i1 false}
!62 = !{!"../include/linux/rhashtable.h", i32 377, i32 19}
!63 = distinct !{null, !64, !"__warned", i1 false, i1 false}
!64 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!65 = !{ptr @.str.15, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @zones_ht, !67, !"zones_ht", i1 false, i1 false}
!67 = !{!"../net/sched/act_ct.c", i32 39, i32 26}
!68 = !{ptr @zones_params, !69, !"zones_params", i1 false, i1 false}
!69 = !{!"../net/sched/act_ct.c", i32 53, i32 39}
!70 = distinct !{null, !71, !"__warned", i1 false, i1 false}
!71 = !{!"../include/net/netns/generic.h", i32 45, i32 7}
!72 = !{ptr @.str.16, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @ct_net_id, !74, !"ct_net_id", i1 false, i1 false}
!74 = !{!"../net/sched/act_ct.c", i32 590, i32 21}
!75 = !{ptr @tcf_ct_init.__msg, !76, !"__msg", i1 false, i1 false}
!76 = !{!"../net/sched/act_ct.c", i32 1279, i32 3}
!77 = !{ptr @tcf_ct_init.__msg.17, !78, !"__msg", i1 false, i1 false}
!78 = !{!"../net/sched/act_ct.c", i32 1288, i32 3}
!79 = distinct !{null, !80, !"__warned", i1 false, i1 false}
!80 = !{!"../net/sched/act_ct.c", i32 1336, i32 11}
!81 = !{ptr @nla_parse_nested.__msg, !82, !"__msg", i1 false, i1 false}
!82 = !{!"../include/net/netlink.h", i32 1208, i32 3}
!83 = !{ptr @ct_policy, !84, !"ct_policy", i1 false, i1 false}
!84 = !{!"../net/sched/act_ct.c", i32 1090, i32 32}
!85 = !{ptr @tcf_ct_fill_params.__msg, !86, !"__msg", i1 false, i1 false}
!86 = !{!"../net/sched/act_ct.c", i32 1230, i32 4}
!87 = !{ptr @tcf_ct_fill_params.__msg.19, !88, !"__msg", i1 false, i1 false}
!88 = !{!"../net/sched/act_ct.c", i32 1254, i32 3}
!89 = !{ptr @tcf_ct_fill_params_nat.__msg, !90, !"__msg", i1 false, i1 false}
!90 = !{!"../net/sched/act_ct.c", i32 1128, i32 3}
!91 = !{ptr @.str.20, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../net/sched/act_ct.c", i32 40, i32 8}
!93 = !{ptr @.str.21, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @zones_mutex, !92, !"zones_mutex", i1 false, i1 false}
!95 = distinct !{null, !96, !"__warned", i1 false, i1 false}
!96 = !{!"../include/linux/rhashtable.h", i32 594, i32 8}
!97 = distinct !{null, !98, !"__warned", i1 false, i1 false}
!98 = !{!"../include/linux/rhashtable.h", i32 614, i32 8}
!99 = distinct !{null, !100, !"__warned", i1 false, i1 false}
!100 = !{!"../include/linux/rhashtable.h", i32 369, i32 19}
!101 = distinct !{null, !102, !"__warned", i1 false, i1 false}
!102 = !{!"../include/linux/rhashtable.h", i32 715, i32 8}
!103 = distinct !{null, !104, !"__warned", i1 false, i1 false}
!104 = !{!"../include/linux/rhashtable.h", i32 755, i32 10}
!105 = distinct !{null, !106, !"__warned", i1 false, i1 false}
!106 = !{!"../include/linux/rhashtable.h", i32 732, i32 2}
!107 = !{ptr @flowtable_ct, !108, !"flowtable_ct", i1 false, i1 false}
!108 = !{!"../net/sched/act_ct.c", i32 281, i32 33}
!109 = distinct !{null, !110, !"__warned", i1 false, i1 false}
!110 = !{!"../include/net/tc_act/tc_ct.h", i32 51, i32 9}
!111 = !{ptr @.str.25, !110, !"<string literal>", i1 false, i1 false}
!112 = distinct !{null, !113, !"__warned", i1 false, i1 false}
!113 = !{!"../include/net/tc_act/tc_ct.h", i32 46, i32 9}
!114 = distinct !{null, !115, !"__warned", i1 false, i1 false}
!115 = !{!"../include/net/tc_act/tc_ct.h", i32 56, i32 9}
!116 = !{ptr @ct_net_ops, !117, !"ct_net_ops", i1 false, i1 false}
!117 = !{!"../net/sched/act_ct.c", i32 1588, i32 33}
!118 = !{ptr @.str.26, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../net/sched/act_ct.c", i32 1564, i32 3}
!120 = !{ptr @.str.27, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @ct_init_net._entry, !119, !"_entry", i1 false, i1 false}
!122 = !{ptr @ct_init_net._entry_ptr, !119, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @tc_action_net_init.__key, !124, !"__key", i1 false, i1 false}
!124 = !{!"../include/net/act_api.h", i32 156, i32 2}
!125 = !{ptr @.str.28, !124, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @xa_init_flags.__key, !127, !"__key", i1 false, i1 false}
!127 = !{!"../include/linux/xarray.h", i32 378, i32 2}
!128 = !{ptr @.str.29, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @.str.30, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../net/sched/act_ct.c", i32 1599, i32 14}
!131 = !{!"sp"}
!132 = !{i32 1, !"wchar_size", i32 2}
!133 = !{i32 1, !"min_enum_size", i32 4}
!134 = !{i32 8, !"branch-target-enforcement", i32 0}
!135 = !{i32 8, !"sign-return-address", i32 0}
!136 = !{i32 8, !"sign-return-address-all", i32 0}
!137 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!138 = !{i32 7, !"uwtable", i32 1}
!139 = !{i32 7, !"frame-pointer", i32 2}
!140 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!141 = !{!"branch_weights", i32 1, i32 2000}
!142 = !{i64 2148468657}
!143 = !{i64 2148383097, i64 2148383129, i64 2148383158, i64 2148383192, i64 2148383223, i64 2148383246}
!144 = !{!"branch_weights", i32 2000, i32 1}
!145 = !{i64 2149344771}
!146 = !{!"auto-init"}
!147 = !{i64 2148380632, i64 2148380664, i64 2148380693, i64 2148380727, i64 2148380758, i64 2148380781}
!148 = !{i8 0, i8 2}
!149 = !{i64 2158673743}
!150 = !{!"branch_weights", i32 2000, i32 2002}
!151 = !{i64 2149903260}
!152 = !{i64 2149908192}
!153 = !{i64 2149929904}
!154 = !{i64 2149934796}
!155 = !{i64 2150011253}
!156 = !{i64 2150011578}
!157 = !{i64 2149395261}
!158 = !{i64 2157146539}
!159 = !{i64 2148381567, i64 2148381593, i64 2148381622, i64 2148381656, i64 2148381687, i64 2148381710}
!160 = !{i64 2149395527}
!161 = !{i64 2152046595}
!162 = !{!"branch_weights", i32 2146410443, i32 1073205}
!163 = !{i64 2148387960, i64 2148387992, i64 2148388021, i64 2148388055, i64 2148388086, i64 2148388109}
!164 = !{i64 2148477065}
!165 = !{i64 2152046755}
!166 = !{i64 2152047032}
!167 = !{i64 2152046874}
!168 = !{i64 2152047237}
!169 = !{i64 2152048300, i64 2152048792, i64 2152048337, i64 2152048393, i64 2152048427, i64 2152048451, i64 2152048492, i64 2152048513, i64 2152048541, i64 2152048575}
!170 = !{i64 2148475952}
!171 = !{i64 2148386347, i64 2148386379, i64 2148386408, i64 2148386442, i64 2148386473, i64 2148386496}
!172 = !{i64 2152049695}
!173 = !{i64 2157072236}
!174 = !{i64 2157074535}
!175 = !{i64 2157079163}
!176 = !{i64 2157082597}
!177 = !{i64 863635, i64 863659, i64 863680, i64 863697, i64 863714}
!178 = !{i64 2148379102, i64 2148379128, i64 2148379157, i64 2148379191, i64 2148379222, i64 2148379245}
