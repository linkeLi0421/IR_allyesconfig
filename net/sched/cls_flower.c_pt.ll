; ModuleID = '/llk/IR_all_yes/net/sched/cls_flower.c_pt.bc'
source_filename = "../net/sched/cls_flower.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tcf_proto_ops = type { %struct.list_head, [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.lock_class_key = type { %union.anon.7 }
%union.anon.7 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.nla_policy = type { i8, i8, i16, %union.anon.28 }
%union.anon.28 = type { i32 }
%struct.fl_flow_key = type { %struct.flow_dissector_key_meta, %struct.flow_dissector_key_control, %struct.flow_dissector_key_control, %struct.flow_dissector_key_basic, %struct.flow_dissector_key_eth_addrs, %struct.flow_dissector_key_vlan, %struct.flow_dissector_key_vlan, %union.anon.163, %struct.flow_dissector_key_ports, %struct.flow_dissector_key_icmp, %struct.flow_dissector_key_arp, %struct.flow_dissector_key_keyid, %union.anon.167, %struct.flow_dissector_key_ports, %struct.flow_dissector_key_mpls, %struct.flow_dissector_key_tcp, %struct.flow_dissector_key_ip, %struct.flow_dissector_key_ip, %struct.flow_dissector_key_enc_opts, %union.anon.168, %struct.flow_dissector_key_ct, %struct.flow_dissector_key_hash }
%struct.flow_dissector_key_meta = type { i32, i16 }
%struct.flow_dissector_key_control = type { i16, i16, i32 }
%struct.flow_dissector_key_basic = type { i16, i8, i8 }
%struct.flow_dissector_key_eth_addrs = type { [6 x i8], [6 x i8] }
%struct.flow_dissector_key_vlan = type { %union.anon.161, i16 }
%union.anon.161 = type { %struct.anon.162 }
%struct.anon.162 = type { i16 }
%union.anon.163 = type { %struct.flow_dissector_key_ipv6_addrs }
%struct.flow_dissector_key_ipv6_addrs = type { %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.27 }
%union.anon.27 = type { [4 x i32] }
%struct.flow_dissector_key_icmp = type { %struct.anon.166, i16 }
%struct.anon.166 = type { i8, i8 }
%struct.flow_dissector_key_arp = type { i32, i32, i8, [6 x i8], [6 x i8] }
%struct.flow_dissector_key_keyid = type { i32 }
%union.anon.167 = type { %struct.flow_dissector_key_ipv6_addrs }
%struct.flow_dissector_key_ports = type { %union.anon.164 }
%union.anon.164 = type { i32 }
%struct.flow_dissector_key_mpls = type { [7 x %struct.flow_dissector_mpls_lse], i8 }
%struct.flow_dissector_mpls_lse = type { i32 }
%struct.flow_dissector_key_tcp = type { i16 }
%struct.flow_dissector_key_ip = type { i8, i8 }
%struct.flow_dissector_key_enc_opts = type { [255 x i8], i8, i16 }
%union.anon.168 = type { %struct.anon.169 }
%struct.anon.169 = type { %struct.flow_dissector_key_ports, %struct.flow_dissector_key_ports }
%struct.flow_dissector_key_ct = type { i16, i16, i32, [4 x i32] }
%struct.flow_dissector_key_hash = type { i32 }
%struct.tcf_proto = type { ptr, ptr, ptr, i16, i32, ptr, ptr, ptr, %struct.spinlock, i8, %struct.refcount_struct, %struct.callback_head, %struct.hlist_node }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.callback_head = type { ptr, ptr }
%struct.sk_buff = type { %union.anon, %union.anon.136, %union.anon.137, [48 x i8], %union.anon.138, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.140, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.136 = type { ptr }
%union.anon.137 = type { i64 }
%union.anon.138 = type { %struct.anon.139 }
%struct.anon.139 = type { i32, ptr }
%union.anon.140 = type { %struct.anon.141 }
%struct.anon.141 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.142, i32, i32, i32, i16, i16, %union.anon.144, i32, %union.anon.145, %union.anon.146, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.142 = type { i32 }
%union.anon.144 = type { i32 }
%union.anon.145 = type { i32 }
%union.anon.146 = type { i16 }
%struct.cls_fl_head = type { %struct.rhashtable, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.rcu_work, %struct.idr }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.rcu_work = type { %struct.work_struct, %struct.callback_head, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.cls_fl_filter = type { ptr, %struct.rhash_head, %struct.fl_flow_key, %struct.tcf_exts, %struct.tcf_result, %struct.fl_flow_key, %struct.list_head, %struct.list_head, i32, i32, i32, %struct.rcu_work, ptr, %struct.refcount_struct, i8 }
%struct.rhash_head = type { ptr }
%struct.tcf_exts = type { i32, i32, ptr, ptr, ptr, i32, i32 }
%struct.tcf_result = type { %union.anon.153 }
%union.anon.153 = type { %struct.anon.154 }
%struct.anon.154 = type { i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.tcf_chain = type { %struct.mutex, ptr, %struct.list_head, ptr, i32, i32, i32, i8, i8, ptr, ptr, %struct.callback_head }
%struct.fl_flow_mask = type { %struct.fl_flow_key, %struct.fl_flow_mask_range, i32, %struct.rhash_head, %struct.rhashtable, %struct.rhashtable_params, %struct.flow_dissector, %struct.list_head, %struct.rcu_work, %struct.list_head, %struct.refcount_struct }
%struct.fl_flow_mask_range = type { i16, i16 }
%struct.flow_dissector = type { i32, [28 x i16] }
%struct.fl_flow_tmplt = type { %struct.fl_flow_key, %struct.fl_flow_key, %struct.flow_dissector, ptr }
%struct.tcf_walker = type { i32, i32, i32, i8, i32, ptr }
%struct.flow_cls_offload = type { %struct.flow_cls_common_offload, i32, i32, ptr, %struct.flow_stats, i32 }
%struct.flow_cls_common_offload = type { i32, i16, i32, ptr }
%struct.flow_stats = type { i64, i64, i64, i64, i32, i8 }
%struct.flow_match = type { ptr, ptr, ptr }
%struct.flow_rule = type { %struct.flow_match, %struct.flow_action }
%struct.flow_action = type { i32, [0 x %struct.flow_action_entry] }
%struct.flow_action_entry = type { i32, i32, i32, ptr, ptr, %union.anon.170, ptr }
%union.anon.170 = type { %struct.anon.178 }
%struct.anon.178 = type { i32, i64, i64, i64, i32 }
%struct.Qdisc = type { ptr, ptr, i32, i32, ptr, ptr, %struct.hlist_node, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, [64 x i8], %struct.sk_buff_head, %struct.qdisc_skb_head, %struct.gnet_stats_basic_sync, %struct.gnet_stats_queue, i32, i32, ptr, %struct.sk_buff_head, [8 x i8], %struct.spinlock, %struct.spinlock, %struct.callback_head, ptr, [28 x i8], [0 x i32] }
%struct.qdisc_skb_head = type { ptr, ptr, i32, %struct.spinlock }
%struct.gnet_stats_basic_sync = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.gnet_stats_queue = type { i32, i32, i32, i32, i32 }
%struct.sk_buff_head = type { %union.anon.95, i32, %struct.spinlock }
%union.anon.95 = type { %struct.anon.96 }
%struct.anon.96 = type { ptr, ptr }
%struct.Qdisc_ops = type { ptr, ptr, [16 x i8], i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Qdisc_class_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tcmsg = type { i8, i8, i16, i32, i32, i32, i32 }
%struct.anon.165 = type { i16, i16 }
%struct.rhashtable_compare_arg = type { ptr, ptr }
%struct.bucket_table = type { i32, i32, i32, %struct.list_head, %struct.callback_head, ptr, %struct.lockdep_map, [68 x i8], [0 x ptr] }
%struct.tcf_block = type { %struct.mutex, %struct.list_head, i32, i32, %struct.refcount_struct, ptr, ptr, %struct.rw_semaphore, %struct.flow_block, %struct.list_head, i8, %struct.atomic_t, i32, i32, %struct.anon.134, %struct.callback_head, [128 x %struct.hlist_head], %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.flow_block = type { %struct.list_head }
%struct.anon.134 = type { ptr, %struct.list_head }
%struct.hlist_head = type { ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.llist_node = type { ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.19, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.19 = type { %struct.anon.20 }
%struct.anon.20 = type { ptr, i32, i32, i32 }
%struct.rb_root = type { ptr }
%struct.raw_notifier_head = type { ptr }
%struct.netns_core = type { ptr, i32, ptr }
%struct.netns_mib = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.netns_packet = type { %struct.mutex, %struct.hlist_head }
%struct.netns_unix = type { i32, ptr }
%struct.netns_nexthop = type { %struct.rb_root, ptr, i32, i32, %struct.blocking_notifier_head }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.netns_ipv4 = type { %struct.inet_timewait_death_row, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, ptr, ptr, ptr, i32, i8, i8, i8, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i32, i32, i32, i32, %struct.local_ports, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, [3 x i32], [3 x i32], i32, i32, i32, i32, ptr, ptr, i32, %struct.atomic_t, i32, i32, i32, i8, i8, i8, i32, i32, i32, %struct.ping_group_range, %struct.atomic_t, ptr, i32, %struct.list_head, ptr, i32, i8, i8, ptr, i32, ptr, i32, %struct.atomic_t, %struct.siphash_key_t, [96 x i8] }
%struct.inet_timewait_death_row = type { %struct.atomic_t, [124 x i8], ptr, i32 }
%struct.local_ports = type { %struct.seqlock_t, [2 x i32], i8 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
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
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [8 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_mpls = type { i32, i32, i32, ptr, ptr }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.netns_xdp = type { %struct.mutex, %struct.hlist_head }
%struct.netns_mctp = type { %struct.list_head, %struct.mutex, %struct.hlist_head, %struct.spinlock, %struct.hlist_head, i32, %struct.mutex, %struct.list_head }
%struct.netns_smc = type { ptr, %struct.mutex, ptr }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.netlink_ext_ack = type { ptr, ptr, ptr, [20 x i8], i8 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.1, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.135, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.1 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.possible_net_t = type { ptr }
%union.anon.135 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
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
%struct.nlattr = type { i16, i16 }
%struct.geneve_opt = type { i16, i8, i8, [0 x i8] }
%struct.erspan_metadata = type { i32, %union.anon.186 }
%union.anon.186 = type { %struct.erspan_md2 }
%struct.erspan_md2 = type { i32, i16, i16 }
%struct.flow_dissector_key = type { i32, i32 }
%struct.tc_action_ops = type { %struct.list_head, [16 x i8], i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tc_action = type { ptr, i32, ptr, i32, %struct.refcount_struct, %struct.atomic_t, i32, %struct.tcf_t, %struct.gnet_stats_basic_sync, %struct.gnet_stats_basic_sync, %struct.gnet_stats_queue, ptr, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, [12 x i8] }
%struct.tcf_t = type { i64, i64, i64, i64 }

@cls_fl_ops = internal global %struct.tcf_proto_ops { %struct.list_head zeroinitializer, [16 x i8] c"flower\00\00\00\00\00\00\00\00\00\00", ptr @fl_classify, ptr @fl_init, ptr @fl_destroy, ptr @fl_get, ptr @fl_put, ptr @fl_change, ptr @fl_delete, ptr @fl_delete_empty, ptr @fl_walk, ptr @fl_reoffload, ptr @fl_hw_add, ptr @fl_hw_del, ptr @fl_bind_class, ptr @fl_tmplt_create, ptr @fl_tmplt_destroy, ptr @fl_dump, ptr @fl_terse_dump, ptr @fl_tmplt_dump, ptr null, i32 1 }, section ".data..read_mostly", align 4
@__initcall__kmod_cls_flower__647_3241_cls_fl_init6 = internal global ptr @cls_fl_init, section ".initcall6.init", align 4
@__exitcall_cls_fl_exit = internal global ptr @cls_fl_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author648 = internal constant [48 x i8] c"cls_flower.author=Jiri Pirko <jiri@resnulli.us>\00", section ".modinfo", align 1
@__UNIQUE_ID_description649 = internal constant [41 x i8] c"cls_flower.description=Flower classifier\00", section ".modinfo", align 1
@__UNIQUE_ID_file650 = internal constant [37 x i8] c"cls_flower.file=net/sched/cls_flower\00", section ".modinfo", align 1
@__UNIQUE_ID_license651 = internal constant [26 x i8] c"cls_flower.license=GPL v2\00", section ".modinfo", align 1
@fl_classify.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"net/sched/cls_flower.c\00", [41 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@fl_classify.__warned.2 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.3 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@fl_ct_info_to_flower_map = internal global { [5 x i16], [22 x i8] } { [5 x i16] [i16 10, i16 12, i16 9, i16 42, i16 44], [22 x i8] zeroinitializer }, align 32
@fl_lookup_range.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@__rhashtable_lookup.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.7 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"include/linux/rhashtable.h\00", [37 x i8] zeroinitializer }, align 32
@__rhashtable_lookup.__warned.8 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rht_ptr_rcu.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.9 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@fl_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&head->masks_lock\00", [46 x i8] zeroinitializer }, align 32
@mask_ht_params = internal constant { %struct.rhashtable_params, [36 x i8] } { %struct.rhashtable_params { i16 0, i16 484, i16 0, i16 492, i32 0, i16 0, i8 1, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@xa_init_flags.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&xa->xa_lock\00", [19 x i8] zeroinitializer }, align 32
@__rhashtable_remove_fast.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__rhashtable_remove_fast.__warned.12 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.13 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@__rhashtable_remove_fast_one.__warned.15 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__rhashtable_remove_fast_one.__warned.17 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rht_ptr.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@fl_policy = internal constant { [102 x %struct.nla_policy], [208 x i8] } { [102 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.28 zeroinitializer }, %struct.nla_policy { i8 5, i8 0, i16 16, %union.anon.28 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 0, i8 0, i16 6, %union.anon.28 zeroinitializer }, %struct.nla_policy { i8 0, i8 0, i16 6, %union.anon.28 zeroinitializer }, %struct.nla_policy { i8 0, i8 0, i16 6, %union.anon.28 zeroinitializer }, %struct.nla_policy { i8 0, i8 0, i16 6, %union.anon.28 zeroinitializer }, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.28 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.28 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.28 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.28 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.28 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.28 zeroinitializer }, %struct.nla_policy { i8 0, i8 0, i16 16, %union.anon.28 zeroinitializer }, %struct.nla_policy { i8 0, i8 0, i16 16, %union.anon.28 zeroinitializer }, %struct.nla_policy { i8 0, i8 0, i16 16, %union.anon.28 zeroinitializer }, %struct.nla_policy { i8 0, i8 0, i16 16, %union.anon.28 zeroinitializer }, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.28 zeroinitializer }, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.28 zeroinitializer }, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.28 zeroinitializer }, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.28 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.28 zeroinitializer }, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.28 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.28 zeroinitializer }, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.28 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.28 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.28 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.28 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.28 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.28 zeroinitializer }, %struct.nla_policy { i8 0, i8 0, i16 16, %union.anon.28 zeroinitializer }, %struct.nla_policy { i8 0, i8 0, i16 16, %union.anon.28 zeroinitializer }, %struct.nla_policy { i8 0, i8 0, i16 16, %union.anon.28 zeroinitializer }, %struct.nla_policy { i8 0, i8 0, i16 16, %union.anon.28 zeroinitializer }, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.28 zeroinitializer }, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.28 zeroinitializer }, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.28 zeroinitializer }, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.28 zeroinitializer }, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.28 zeroinitializer }, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.28 zeroinitializer }, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.28 zeroinitializer }, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.28 zeroinitializer }, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.28 zeroinitializer }, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.28 zeroinitializer }, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.28 zeroinitializer }, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.28 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.28 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.28 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.28 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.28 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.28 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.28 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.28 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.28 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.28 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.28 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.28 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.28 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.28 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.28 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.28 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.28 zeroinitializer }, %struct.nla_policy { i8 0, i8 0, i16 6, %union.anon.28 zeroinitializer }, %struct.nla_policy { i8 0, i8 0, i16 6, %union.anon.28 zeroinitializer }, %struct.nla_policy { i8 0, i8 0, i16 6, %union.anon.28 zeroinitializer }, %struct.nla_policy { i8 0, i8 0, i16 6, %union.anon.28 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.28 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.28 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.28 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.28 zeroinitializer }, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.28 zeroinitializer }, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.28 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.28 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.28 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.28 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.28 zeroinitializer }, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.28 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.28 zeroinitializer }, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.28 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.28 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.28 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.28 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.28 zeroinitializer }, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon.28 zeroinitializer }, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon.28 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 2, i8 5, i16 0, %union.anon.28 { i32 63 } }, %struct.nla_policy { i8 2, i8 5, i16 0, %union.anon.28 { i32 63 } }, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.28 zeroinitializer }, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.28 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.28 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.28 zeroinitializer }, %struct.nla_policy { i8 11, i8 0, i16 16, %union.anon.28 zeroinitializer }, %struct.nla_policy { i8 11, i8 0, i16 16, %union.anon.28 zeroinitializer }, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon.28 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.28 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.28 zeroinitializer }], [208 x i8] zeroinitializer }, align 32
@fl_set_parms.__msg = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"cls_flower: Mask does not fit the template\00", [53 x i8] zeroinitializer }, align 32
@qdisc_root_sleeping_lock.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.18 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"include/net/sch_generic.h\00", [38 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"RTNL: assertion failed at %s (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@tcf_change_indev.__msg = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Interface name too long\00", [40 x i8] zeroinitializer }, align 32
@tcf_change_indev.__msg.20 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Network device not found\00", [39 x i8] zeroinitializer }, align 32
@fl_set_key_mpls.__msg = internal constant { [111 x i8], [49 x i8] } { [111 x i8] c"MPLS label, Traffic Class, Bottom Of Stack and Time To Live must be encapsulated in the MPLS options attribute\00", [49 x i8] zeroinitializer }, align 32
@fl_set_key_mpls.__msg.21 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Bottom Of Stack (BOS) must be 0 or 1\00", [59 x i8] zeroinitializer }, align 32
@fl_set_key_mpls.__msg.22 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Traffic Class (TC) must be between 0 and 7\00", [53 x i8] zeroinitializer }, align 32
@fl_set_key_mpls.__msg.23 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Label must be between 0 and 1048575\00", [60 x i8] zeroinitializer }, align 32
@fl_set_key_mpls_opts.__msg = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"NLA_F_NESTED is missing\00", [40 x i8] zeroinitializer }, align 32
@fl_set_key_mpls_opts.__msg.24 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Invalid MPLS option type\00", [39 x i8] zeroinitializer }, align 32
@fl_set_key_mpls_opts.__msg.25 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Bytes leftover after parsing MPLS options\00", [54 x i8] zeroinitializer }, align 32
@mpls_stack_entry_policy = internal constant { [6 x %struct.nla_policy], [48 x i8] } { [6 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.28 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.28 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.28 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.28 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.28 zeroinitializer }], [48 x i8] zeroinitializer }, align 32
@fl_set_key_mpls_lse.__msg = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Missing MPLS option \22depth\22\00", [36 x i8] zeroinitializer }, align 32
@fl_set_key_mpls_lse.__msg.26 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Invalid MPLS depth\00", [45 x i8] zeroinitializer }, align 32
@fl_set_key_mpls_lse.__msg.27 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Bottom Of Stack (BOS) must be 0 or 1\00", [59 x i8] zeroinitializer }, align 32
@fl_set_key_mpls_lse.__msg.28 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Traffic Class (TC) must be between 0 and 7\00", [53 x i8] zeroinitializer }, align 32
@fl_set_key_mpls_lse.__msg.29 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Label must be between 0 and 1048575\00", [60 x i8] zeroinitializer }, align 32
@nla_parse_nested.__msg = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"NLA_F_NESTED is missing\00", [40 x i8] zeroinitializer }, align 32
@fl_set_key_port_range.__msg = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"Invalid destination port range (min must be strictly smaller than max)\00", [57 x i8] zeroinitializer }, align 32
@fl_set_key_port_range.__msg.30 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"Invalid source port range (min must be strictly smaller than max)\00", [62 x i8] zeroinitializer }, align 32
@fl_set_enc_opt.__msg = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Invalid nested attribute for masks\00", [61 x i8] zeroinitializer }, align 32
@fl_set_enc_opt.__msg.31 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Duplicate type for geneve options\00", [62 x i8] zeroinitializer }, align 32
@fl_set_enc_opt.__msg.32 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Key and mask miss aligned\00", [38 x i8] zeroinitializer }, align 32
@fl_set_enc_opt.__msg.33 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Duplicate type for vxlan options\00", [63 x i8] zeroinitializer }, align 32
@fl_set_enc_opt.__msg.34 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Key and mask miss aligned\00", [38 x i8] zeroinitializer }, align 32
@fl_set_enc_opt.__msg.35 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Duplicate type for erspan options\00", [62 x i8] zeroinitializer }, align 32
@fl_set_enc_opt.__msg.36 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Key and mask miss aligned\00", [38 x i8] zeroinitializer }, align 32
@fl_set_enc_opt.__msg.37 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Unknown tunnel option type\00", [37 x i8] zeroinitializer }, align 32
@fl_set_enc_opt.__msg.38 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"A mask attribute is invalid\00", [36 x i8] zeroinitializer }, align 32
@enc_opts_policy = internal constant { <{ { i8, i8, i16, { i16, [2 x i8] } }, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy }>, [32 x i8] } { <{ { i8, i8, i16, { i16, [2 x i8] } }, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy }> <{ { i8, i8, i16, { i16, [2 x i8] } } { i8 0, i8 0, i16 0, { i16, [2 x i8] } { i16 2, [2 x i8] undef } }, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon.28 zeroinitializer }, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon.28 zeroinitializer }, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon.28 zeroinitializer } }>, [32 x i8] zeroinitializer }, align 32
@fl_set_geneve_opt.__msg = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Non-geneve option type for mask\00", [32 x i8] zeroinitializer }, align 32
@geneve_opt_policy = internal constant { [4 x %struct.nla_policy], [32 x i8] } { [4 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.28 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.28 zeroinitializer }, %struct.nla_policy { i8 11, i8 0, i16 128, %union.anon.28 zeroinitializer }], [32 x i8] zeroinitializer }, align 32
@fl_set_geneve_opt.__msg.40 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"Missing tunnel key geneve option class, type or data\00", [43 x i8] zeroinitializer }, align 32
@fl_set_geneve_opt.__msg.41 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"Tunnel key geneve option data is less than 4 bytes long\00", [40 x i8] zeroinitializer }, align 32
@fl_set_geneve_opt.__msg.42 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"Tunnel key geneve option data is not a multiple of 4 bytes long\00", [32 x i8] zeroinitializer }, align 32
@fl_set_geneve_opt.__msg.43 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Tunnel options exceeds max size\00", [32 x i8] zeroinitializer }, align 32
@fl_set_vxlan_opt.__msg = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Non-vxlan option type for mask\00", [33 x i8] zeroinitializer }, align 32
@vxlan_opt_policy = internal constant { [2 x %struct.nla_policy], [16 x i8] } { [2 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.28 zeroinitializer }], [16 x i8] zeroinitializer }, align 32
@fl_set_vxlan_opt.__msg.44 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Missing tunnel key vxlan option gbp\00", [60 x i8] zeroinitializer }, align 32
@fl_set_erspan_opt.__msg = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Non-erspan option type for mask\00", [32 x i8] zeroinitializer }, align 32
@erspan_opt_policy = internal constant { [5 x %struct.nla_policy], [56 x i8] } { [5 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.28 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.28 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.28 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.28 zeroinitializer }], [56 x i8] zeroinitializer }, align 32
@fl_set_erspan_opt.__msg.45 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Missing tunnel key erspan option ver\00", [59 x i8] zeroinitializer }, align 32
@fl_set_erspan_opt.__msg.46 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Missing tunnel key erspan option index\00", [57 x i8] zeroinitializer }, align 32
@fl_set_erspan_opt.__msg.47 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Missing tunnel key erspan option dir or hwid\00", [51 x i8] zeroinitializer }, align 32
@fl_set_erspan_opt.__msg.48 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Tunnel key erspan option ver is incorrect\00", [54 x i8] zeroinitializer }, align 32
@fl_validate_ct_state.__msg = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"no trk, so no other flag can be set\00", [60 x i8] zeroinitializer }, align 32
@fl_validate_ct_state.__msg.49 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"new and est are mutually exclusive\00", [61 x i8] zeroinitializer }, align 32
@fl_validate_ct_state.__msg.50 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"when inv is set, only trk may be set\00", [59 x i8] zeroinitializer }, align 32
@fl_validate_ct_state.__msg.51 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"new and rpl are mutually exclusive\00", [61 x i8] zeroinitializer }, align 32
@fl_set_key_flags.__msg = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Missing flags mask\00", [45 x i8] zeroinitializer }, align 32
@__rhashtable_insert_fast.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__rhashtable_insert_fast.__warned.53 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@fl_ht_params = internal constant { %struct.rhashtable_params, [36 x i8] } { %struct.rhashtable_params { i16 0, i16 0, i16 8, i16 4, i32 0, i16 0, i8 1, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@rhashtable_replace_fast.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rhashtable_replace_fast.__warned.54 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__rhashtable_replace_fast.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@fl_hw_replace_filter.__msg = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"cls_flower: Failed to setup flow action\00", [56 x i8] zeroinitializer }, align 32
@fl_reoffload.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@fl_reoffload.__msg = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"cls_flower: Failed to setup flow action\00", [56 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/netlink.h\00", [42 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values.56 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.57 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.58 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@__sancov_gen_cov_switch_values.59 = internal global [5 x i64] [i64 3, i64 8, i64 6, i64 17, i64 132]
@__sancov_gen_cov_switch_values.60 = internal global [7 x i64] [i64 5, i64 16, i64 2054, i64 32821, i64 34525, i64 34887, i64 34888]
@__sancov_gen_cov_switch_values.61 = internal global [5 x i64] [i64 3, i64 8, i64 6, i64 17, i64 132]
@__sancov_gen_cov_switch_values.62 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.63 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 2048]
@__sancov_gen_cov_switch_values.64 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.65 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.66 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@__sancov_gen_cov_switch_values.67 = internal global [4 x i64] [i64 2, i64 16, i64 2054, i64 32821]
@__sancov_gen_cov_switch_values.68 = internal global [5 x i64] [i64 3, i64 8, i64 6, i64 17, i64 132]
@__sancov_gen_cov_switch_values.69 = internal global [5 x i64] [i64 3, i64 16, i64 2048, i64 4096, i64 16384]
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 312, i32 29 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 319, i32 2 }
@___asan_gen_.79 = private unnamed_addr constant [25 x i8] c"fl_ct_info_to_flower_map\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 294, i32 12 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 695, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 594, i32 8 }
@___asan_gen_.92 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 723, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 354, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant [15 x i8] c"mask_ht_params\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 133, i32 39 }
@___asan_gen_.103 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.107 = private unnamed_addr constant [26 x i8] c"../include/linux/xarray.h\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 378, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant [30 x i8] c"../include/linux/rhashtable.h\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 1019, i32 12 }
@___asan_gen_.112 = private unnamed_addr constant [10 x i8] c"fl_policy\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 614, i32 32 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 1950, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant [29 x i8] c"../include/net/sch_generic.h\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 596, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 526, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant [25 x i8] c"../include/net/pkt_cls.h\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 532, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 941, i32 4 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 964, i32 4 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 978, i32 4 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 992, i32 4 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 903, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 910, i32 4 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 920, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant [24 x i8] c"mpls_stack_entry_policy\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 750, i32 1 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 826, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 836, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 857, i32 4 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 869, i32 4 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 881, i32 4 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 1208, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 791, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 799, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 1290, i32 4 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 1301, i32 5 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 1325, i32 5 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 1331, i32 5 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 1355, i32 5 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 1361, i32 5 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 1385, i32 5 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 1390, i32 4 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 1398, i32 4 }
@___asan_gen_.205 = private unnamed_addr constant [16 x i8] c"enc_opts_policy\00", align 1
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 720, i32 1 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 1102, i32 3 }
@___asan_gen_.211 = private unnamed_addr constant [18 x i8] c"geneve_opt_policy\00", align 1
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 729, i32 1 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 1119, i32 3 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 1132, i32 4 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 1136, i32 4 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 1143, i32 4 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 1178, i32 3 }
@___asan_gen_.229 = private unnamed_addr constant [17 x i8] c"vxlan_opt_policy\00", align 1
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 737, i32 1 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 1188, i32 3 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 1216, i32 3 }
@___asan_gen_.238 = private unnamed_addr constant [18 x i8] c"erspan_opt_policy\00", align 1
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 742, i32 1 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 1226, i32 3 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 1235, i32 4 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 1246, i32 4 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 1258, i32 3 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 1411, i32 3 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 1418, i32 3 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 1426, i32 3 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 1433, i32 3 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 1046, i32 3 }
@___asan_gen_.268 = private unnamed_addr constant [13 x i8] c"fl_ht_params\00", align 1
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 1729, i32 39 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 470, i32 4 }
@___asan_gen_.274 = private unnamed_addr constant [6 x i8] c"__msg\00", align 1
@___asan_gen_.275 = private constant [26 x i8] c"../net/sched/cls_flower.c\00", align 1
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 2278, i32 5 }
@___asan_gen_.277 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.278 = private unnamed_addr constant [25 x i8] c"../include/net/netlink.h\00", align 1
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 991, i32 3 }
@llvm.compiler.used = appending global [77 x ptr] [ptr @__UNIQUE_ID_author648, ptr @__UNIQUE_ID_description649, ptr @__UNIQUE_ID_file650, ptr @__UNIQUE_ID_license651, ptr @__exitcall_cls_fl_exit, ptr @__initcall__kmod_cls_flower__647_3241_cls_fl_init6, ptr @cls_fl_exit, ptr @.str, ptr @.str.1, ptr @.str.3, ptr @fl_ct_info_to_flower_map, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @fl_init.__key, ptr @.str.10, ptr @mask_ht_params, ptr @xa_init_flags.__key, ptr @.str.11, ptr @.str.13, ptr @fl_policy, ptr @fl_set_parms.__msg, ptr @.str.18, ptr @.str.19, ptr @tcf_change_indev.__msg, ptr @tcf_change_indev.__msg.20, ptr @fl_set_key_mpls.__msg, ptr @fl_set_key_mpls.__msg.21, ptr @fl_set_key_mpls.__msg.22, ptr @fl_set_key_mpls.__msg.23, ptr @fl_set_key_mpls_opts.__msg, ptr @fl_set_key_mpls_opts.__msg.24, ptr @fl_set_key_mpls_opts.__msg.25, ptr @mpls_stack_entry_policy, ptr @fl_set_key_mpls_lse.__msg, ptr @fl_set_key_mpls_lse.__msg.26, ptr @fl_set_key_mpls_lse.__msg.27, ptr @fl_set_key_mpls_lse.__msg.28, ptr @fl_set_key_mpls_lse.__msg.29, ptr @nla_parse_nested.__msg, ptr @fl_set_key_port_range.__msg, ptr @fl_set_key_port_range.__msg.30, ptr @fl_set_enc_opt.__msg, ptr @fl_set_enc_opt.__msg.31, ptr @fl_set_enc_opt.__msg.32, ptr @fl_set_enc_opt.__msg.33, ptr @fl_set_enc_opt.__msg.34, ptr @fl_set_enc_opt.__msg.35, ptr @fl_set_enc_opt.__msg.36, ptr @fl_set_enc_opt.__msg.37, ptr @fl_set_enc_opt.__msg.38, ptr @enc_opts_policy, ptr @fl_set_geneve_opt.__msg, ptr @geneve_opt_policy, ptr @fl_set_geneve_opt.__msg.40, ptr @fl_set_geneve_opt.__msg.41, ptr @fl_set_geneve_opt.__msg.42, ptr @fl_set_geneve_opt.__msg.43, ptr @fl_set_vxlan_opt.__msg, ptr @vxlan_opt_policy, ptr @fl_set_vxlan_opt.__msg.44, ptr @fl_set_erspan_opt.__msg, ptr @erspan_opt_policy, ptr @fl_set_erspan_opt.__msg.45, ptr @fl_set_erspan_opt.__msg.46, ptr @fl_set_erspan_opt.__msg.47, ptr @fl_set_erspan_opt.__msg.48, ptr @fl_validate_ct_state.__msg, ptr @fl_validate_ct_state.__msg.49, ptr @fl_validate_ct_state.__msg.50, ptr @fl_validate_ct_state.__msg.51, ptr @fl_set_key_flags.__msg, ptr @fl_ht_params, ptr @fl_hw_replace_filter.__msg, ptr @fl_reoffload.__msg, ptr @.str.55], section "llvm.metadata"
@0 = internal global [70 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fl_ct_info_to_flower_map to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fl_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mask_ht_params to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xa_init_flags.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fl_policy to i32), i32 816, i32 1024, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fl_set_parms.__msg to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcf_change_indev.__msg to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcf_change_indev.__msg.20 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fl_set_key_mpls.__msg to i32), i32 111, i32 160, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fl_set_key_mpls.__msg.21 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fl_set_key_mpls.__msg.22 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fl_set_key_mpls.__msg.23 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fl_set_key_mpls_opts.__msg to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fl_set_key_mpls_opts.__msg.24 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fl_set_key_mpls_opts.__msg.25 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpls_stack_entry_policy to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fl_set_key_mpls_lse.__msg to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fl_set_key_mpls_lse.__msg.26 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fl_set_key_mpls_lse.__msg.27 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fl_set_key_mpls_lse.__msg.28 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fl_set_key_mpls_lse.__msg.29 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nla_parse_nested.__msg to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fl_set_key_port_range.__msg to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fl_set_key_port_range.__msg.30 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fl_set_enc_opt.__msg to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fl_set_enc_opt.__msg.31 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fl_set_enc_opt.__msg.32 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fl_set_enc_opt.__msg.33 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fl_set_enc_opt.__msg.34 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fl_set_enc_opt.__msg.35 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fl_set_enc_opt.__msg.36 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fl_set_enc_opt.__msg.37 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fl_set_enc_opt.__msg.38 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enc_opts_policy to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fl_set_geneve_opt.__msg to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @geneve_opt_policy to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fl_set_geneve_opt.__msg.40 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fl_set_geneve_opt.__msg.41 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fl_set_geneve_opt.__msg.42 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fl_set_geneve_opt.__msg.43 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fl_set_vxlan_opt.__msg to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vxlan_opt_policy to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fl_set_vxlan_opt.__msg.44 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fl_set_erspan_opt.__msg to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @erspan_opt_policy to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fl_set_erspan_opt.__msg.45 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fl_set_erspan_opt.__msg.46 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fl_set_erspan_opt.__msg.47 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fl_set_erspan_opt.__msg.48 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fl_validate_ct_state.__msg to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fl_validate_ct_state.__msg.49 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fl_validate_ct_state.__msg.50 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fl_validate_ct_state.__msg.51 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fl_set_key_flags.__msg to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fl_ht_params to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fl_hw_replace_filter.__msg to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fl_reoffload.__msg to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cls_fl_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 @unregister_tcf_proto_ops(ptr noundef nonnull @cls_fl_ops) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_tcf_proto_ops(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cls_fl_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @register_tcf_proto_ops(ptr noundef nonnull @cls_fl_ops) #12
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fl_classify(ptr noundef %skb, ptr noundef %tp, ptr noundef %res) #2 align 64 {
entry:
  %skb_key = alloca %struct.fl_flow_key, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %root = getelementptr inbounds %struct.tcf_proto, ptr %tp, i32 0, i32 1
  %0 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %root, align 4
  %call = tail call i32 @rcu_read_lock_bh_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end7_crit_edge

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end7

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b85 = load i1, ptr @fl_classify.__warned, align 1
  br i1 %.b85, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @fl_classify.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 312, ptr noundef nonnull @.str.1) #12
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %entry.do.end7_crit_edge
  %post_ct10 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 30
  %2 = ptrtoint ptr %post_ct10 to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %post_ct10, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load)
  %tobool11 = icmp slt i8 %bf.load, 0
  %zone13 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 32
  %3 = ptrtoint ptr %zone13 to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %zone13, align 4
  call void @llvm.lifetime.start.p0(i64 484, ptr nonnull %skb_key) #12
  %5 = call ptr @memset(ptr %skb_key, i32 255, i32 484)
  %call15 = tail call i32 @rcu_read_lock_any_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %land.lhs.true17, label %do.end7.do.end25_crit_edge

do.end7.do.end25_crit_edge:                       ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end25

land.lhs.true17:                                  ; preds = %do.end7
  %call18 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %land.lhs.true17.do.end25_crit_edge, label %land.lhs.true20

land.lhs.true17.do.end25_crit_edge:               ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end25

land.lhs.true20:                                  ; preds = %land.lhs.true17
  %.b8384 = load i1, ptr @fl_classify.__warned.2, align 1
  br i1 %.b8384, label %land.lhs.true20.do.end25_crit_edge, label %if.then22

land.lhs.true20.do.end25_crit_edge:               ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end25

if.then22:                                        ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @fl_classify.__warned.2, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 319, ptr noundef nonnull @.str.3) #12
  br label %do.end25

do.end25:                                         ; preds = %if.then22, %land.lhs.true20.do.end25_crit_edge, %land.lhs.true17.do.end25_crit_edge, %do.end7.do.end25_crit_edge
  %masks = getelementptr inbounds %struct.cls_fl_head, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %masks to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn88 = load volatile ptr, ptr %masks, align 4
  %cmp.not89 = icmp eq ptr %.pn88, %masks
  br i1 %cmp.not89, label %do.end25.cleanup_crit_edge, label %for.body.lr.ph

do.end25.cleanup_crit_edge:                       ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.lr.ph:                                   ; preds = %do.end25
  %control = getelementptr inbounds %struct.fl_flow_key, ptr %skb_key, i32 0, i32 1
  %basic = getelementptr inbounds %struct.fl_flow_key, ptr %skb_key, i32 0, i32 3
  %vlan_present.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %vlan_proto.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 9
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn90 = phi ptr [ %.pn88, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %mask.0 = getelementptr i8, ptr %.pn90, i32 -876
  %7 = ptrtoint ptr %control to i32
  call void @__asan_storeN_noabort(i32 %7, i32 8)
  store i64 0, ptr %control, align 4
  %8 = ptrtoint ptr %basic to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %basic, align 4
  %range.i.i = getelementptr i8, ptr %.pn90, i32 -392
  %9 = ptrtoint ptr %range.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %range.i.i, align 4
  %conv.i.i = zext i16 %10 to i32
  %add.ptr.i.i = getelementptr i8, ptr %skb_key, i32 %conv.i.i
  %end.i.i = getelementptr i8, ptr %.pn90, i32 -390
  %11 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %end.i.i, align 2
  %sub.i.i = sub i16 %12, %10
  %conv.i = zext i16 %sub.i.i to i32
  %13 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %conv.i)
  %dissector = getelementptr i8, ptr %.pn90, i32 -124
  call void @skb_flow_dissect_meta(ptr noundef %skb, ptr noundef %dissector, ptr noundef nonnull %skb_key) #12
  %14 = ptrtoint ptr %vlan_present.i to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %bf.load.i = load i32, ptr %vlan_present.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.load.i)
  %tobool1.not2.i = icmp slt i32 %bf.load.i, 0
  %cond.in.in.i = select i1 %tobool1.not2.i, ptr %vlan_proto.i, ptr %protocol.i
  %15 = ptrtoint ptr %cond.in.in.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %cond.in1.i = load i16, ptr %cond.in.in.i, align 8
  %16 = ptrtoint ptr %basic to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %cond.in1.i, ptr %basic, align 4
  call void @skb_flow_dissect_tunnel_info(ptr noundef %skb, ptr noundef %dissector, ptr noundef nonnull %skb_key) #12
  call void @skb_flow_dissect_ct(ptr noundef %skb, ptr noundef %dissector, ptr noundef nonnull %skb_key, ptr noundef nonnull @fl_ct_info_to_flower_map, i32 noundef 5, i1 noundef zeroext %tobool11, i16 noundef zeroext %4) #12
  call void @skb_flow_dissect_hash(ptr noundef %skb, ptr noundef %dissector, ptr noundef nonnull %skb_key) #12
  %call.i = call zeroext i1 @__skb_flow_dissect(ptr noundef null, ptr noundef %skb, ptr noundef %dissector, ptr noundef nonnull %skb_key, ptr noundef null, i16 noundef zeroext 0, i32 noundef 0, i32 noundef 0, i32 noundef 8) #12
  %call40 = call fastcc ptr @fl_mask_lookup(ptr noundef %mask.0, ptr noundef nonnull %skb_key)
  %tobool41.not = icmp eq ptr %call40, null
  br i1 %tobool41.not, label %for.body.for.inc_crit_edge, label %land.lhs.true42

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true42:                                  ; preds = %for.body
  %flags = getelementptr inbounds %struct.cls_fl_filter, ptr %call40, i32 0, i32 9
  %17 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flags, align 4
  %and.i = and i32 %18, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.then44, label %land.lhs.true42.for.inc_crit_edge

land.lhs.true42.for.inc_crit_edge:                ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then44:                                        ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #14
  %res45 = getelementptr inbounds %struct.cls_fl_filter, ptr %call40, i32 0, i32 4
  %19 = ptrtoint ptr %res45 to i32
  call void @__asan_loadN_noabort(i32 %19, i32 8)
  %20 = load i64, ptr %res45, align 4
  %21 = ptrtoint ptr %res to i32
  call void @__asan_storeN_noabort(i32 %21, i32 8)
  store i64 %20, ptr %res, align 4
  %actions.i = getelementptr inbounds %struct.cls_fl_filter, ptr %call40, i32 0, i32 3, i32 2
  %22 = ptrtoint ptr %actions.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %actions.i, align 4
  %nr_actions.i = getelementptr inbounds %struct.cls_fl_filter, ptr %call40, i32 0, i32 3, i32 1
  %24 = ptrtoint ptr %nr_actions.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %nr_actions.i, align 4
  %call.i87 = call i32 @tcf_action_exec(ptr noundef %skb, ptr noundef %23, i32 noundef %25, ptr noundef %res) #12
  br label %cleanup

for.inc:                                          ; preds = %land.lhs.true42.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %26 = ptrtoint ptr %.pn90 to i32
  call void @__asan_load4_noabort(i32 %26)
  %.pn = load volatile ptr, ptr %.pn90, align 4
  %cmp.not = icmp eq ptr %.pn, %masks
  br i1 %cmp.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then44, %do.end25.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i87, %if.then44 ], [ -1, %do.end25.cleanup_crit_edge ], [ -1, %for.inc.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 484, ptr nonnull %skb_key) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fl_init(ptr noundef %tp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 404) #15
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %masks_lock = getelementptr inbounds %struct.cls_fl_head, ptr %call7.i.i, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %masks_lock, ptr noundef nonnull @.str.10, ptr noundef nonnull @fl_init.__key, i16 noundef signext 3) #12
  %masks = getelementptr inbounds %struct.cls_fl_head, ptr %call7.i.i, i32 0, i32 2
  %1 = ptrtoint ptr %masks to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %masks, ptr %masks, align 8
  %prev.i = getelementptr inbounds %struct.cls_fl_head, ptr %call7.i.i, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %masks, ptr %prev.i, align 4
  %hw_filters = getelementptr inbounds %struct.cls_fl_head, ptr %call7.i.i, i32 0, i32 3
  %3 = ptrtoint ptr %hw_filters to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %hw_filters, ptr %hw_filters, align 8
  %prev.i45 = getelementptr inbounds %struct.cls_fl_head, ptr %call7.i.i, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %prev.i45 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %hw_filters, ptr %prev.i45, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !201
  %root26 = getelementptr inbounds %struct.tcf_proto, ptr %tp, i32 0, i32 1
  %5 = ptrtoint ptr %root26 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %call7.i.i, ptr %root26, align 4
  %handle_idr = getelementptr inbounds %struct.cls_fl_head, ptr %call7.i.i, i32 0, i32 5
  tail call void @__raw_spin_lock_init(ptr noundef %handle_idr, ptr noundef nonnull @.str.11, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #12
  %xa_flags.i.i.i = getelementptr inbounds %struct.cls_fl_head, ptr %call7.i.i, i32 0, i32 5, i32 0, i32 1
  %6 = ptrtoint ptr %xa_flags.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 67108868, ptr %xa_flags.i.i.i, align 4
  %xa_head.i.i.i = getelementptr inbounds %struct.cls_fl_head, ptr %call7.i.i, i32 0, i32 5, i32 0, i32 2
  %7 = ptrtoint ptr %xa_head.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %xa_head.i.i.i, align 8
  %idr_base.i.i = getelementptr inbounds %struct.cls_fl_head, ptr %call7.i.i, i32 0, i32 5, i32 1
  %8 = ptrtoint ptr %idr_base.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %idr_base.i.i, align 4
  %idr_next.i.i = getelementptr inbounds %struct.cls_fl_head, ptr %call7.i.i, i32 0, i32 5, i32 2
  %9 = ptrtoint ptr %idr_next.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %idr_next.i.i, align 8
  %call38 = tail call i32 @rhashtable_init(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @mask_ht_params) #12
  br label %cleanup

cleanup:                                          ; preds = %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call38, %do.body ], [ -105, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fl_destroy(ptr noundef %tp, i1 noundef zeroext %rtnl_held, ptr noundef %extack) #2 align 64 {
entry:
  %last = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %root.i = getelementptr inbounds %struct.tcf_proto, ptr %tp, i32 0, i32 1
  %0 = ptrtoint ptr %root.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %root.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %last) #12
  %2 = ptrtoint ptr %last to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %last, align 1, !annotation !202
  %masks = getelementptr inbounds %struct.cls_fl_head, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %masks to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %masks, align 4
  %cmp.not53 = icmp eq ptr %4, %masks
  br i1 %cmp.not53, label %entry.for.end36_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end36_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end36

for.body:                                         ; preds = %for.inc30.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn.in54 = phi ptr [ %.pn55, %for.inc30.for.body_crit_edge ], [ %4, %entry.for.body_crit_edge ]
  %5 = ptrtoint ptr %.pn.in54 to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn55 = load ptr, ptr %.pn.in54, align 4
  %filters = getelementptr i8, ptr %.pn.in54, i32 -64
  %6 = ptrtoint ptr %filters to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %filters, align 4
  br label %for.cond17

for.cond17:                                       ; preds = %for.body22.for.cond17_crit_edge, %for.body
  %.pn49.in = phi ptr [ %7, %for.body ], [ %.pn49, %for.body22.for.cond17_crit_edge ]
  %cmp20.not = icmp eq ptr %.pn49.in, %filters
  br i1 %cmp20.not, label %for.cond17.for.inc30_crit_edge, label %for.body22

for.cond17.for.inc30_crit_edge:                   ; preds = %for.cond17
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc30

for.body22:                                       ; preds = %for.cond17
  %8 = ptrtoint ptr %.pn49.in to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn49 = load ptr, ptr %.pn49.in, align 4
  %f.0 = getelementptr i8, ptr %.pn49.in, i32 -1012
  %call23 = call fastcc i32 @__fl_delete(ptr noundef %tp, ptr noundef %f.0, ptr noundef nonnull %last, i1 noundef zeroext %rtnl_held, ptr noundef %extack)
  %9 = ptrtoint ptr %last to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %last, align 1, !range !203
  %tobool24.not = icmp eq i8 %10, 0
  br i1 %tobool24.not, label %for.body22.for.cond17_crit_edge, label %for.body22.for.inc30_crit_edge

for.body22.for.inc30_crit_edge:                   ; preds = %for.body22
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc30

for.body22.for.cond17_crit_edge:                  ; preds = %for.body22
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond17

for.inc30:                                        ; preds = %for.body22.for.inc30_crit_edge, %for.cond17.for.inc30_crit_edge
  %cmp.not = icmp eq ptr %.pn55, %masks
  br i1 %cmp.not, label %for.inc30.for.end36_crit_edge, label %for.inc30.for.body_crit_edge

for.inc30.for.body_crit_edge:                     ; preds = %for.inc30
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc30.for.end36_crit_edge:                    ; preds = %for.inc30
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end36

for.end36:                                        ; preds = %for.inc30.for.end36_crit_edge, %entry.for.end36_crit_edge
  %handle_idr = getelementptr inbounds %struct.cls_fl_head, ptr %1, i32 0, i32 5
  tail call void @idr_destroy(ptr noundef %handle_idr) #12
  tail call void @__module_get(ptr noundef null) #12
  %rwork = getelementptr inbounds %struct.cls_fl_head, ptr %1, i32 0, i32 4
  %call37 = tail call zeroext i1 @tcf_queue_work(ptr noundef %rwork, ptr noundef nonnull @fl_destroy_sleepable) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %last) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @fl_get(ptr noundef %tp, i32 noundef %handle) #2 align 64 {
entry:
  %old.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %root.i = getelementptr inbounds %struct.tcf_proto, ptr %tp, i32 0, i32 1
  %0 = ptrtoint ptr %root.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %root.i, align 4
  %2 = tail call i32 @llvm.read_register.i32(metadata !191) #12
  %and.i.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %5, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !204
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 696, ptr noundef nonnull @.str.6) #12
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %entry.rcu_read_lock.exit.i_crit_edge
  %handle_idr.i = getelementptr inbounds %struct.cls_fl_head, ptr %1, i32 0, i32 5
  %call.i = tail call ptr @idr_find(ptr noundef %handle_idr.i, i32 noundef %handle) #12
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %rcu_read_lock.exit.i.if.end.i_crit_edge, label %land.lhs.true.i

rcu_read_lock.exit.i.if.end.i_crit_edge:          ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %rcu_read_lock.exit.i
  %refcnt.i = getelementptr inbounds %struct.cls_fl_filter, ptr %call.i, i32 0, i32 13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i) #12
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcnt.i, i32 noundef 4) #12
  %6 = ptrtoint ptr %refcnt.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %refcnt.i, align 4
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, %land.lhs.true.i
  %8 = phi i32 [ %7, %land.lhs.true.i ], [ %asmresult3.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge ]
  %9 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %old.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i.i.i.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i.i.i.i, label %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %do.cond.i.i.i.i

do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i.i.i.i

do.cond.i.i.i.i:                                  ; preds = %do.body.i.i.i.i
  %add.i.i.i4.i = add i32 %8, 1
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #12
  %call.i3.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i, i32 noundef 4) #12
  %10 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %old.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #12
  br label %do.body.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i:                            ; preds = %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i
  %12 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 %11, i32 %add.i.i.i4.i, ptr elementtype(i32) %refcnt.i) #12, !srcloc !205
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %12, 0
  %tobool.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i:     ; preds = %do.body.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i = extractvalue { i32, i32 } %12, 1
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i, %11
  br i1 %cmp.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, !prof !206

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i.i.i.i

if.end4.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge
  %13 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %old.i.i.i.i, align 4
  %add5.i.i.i.i = add i32 %14, 1
  %15 = or i32 %add5.i.i.i.i, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %.not.i.i.i.i = icmp sgt i32 %15, -1
  br i1 %.not.i.i.i.i, label %if.end4.i.i.i.i.refcount_inc_not_zero.exit.i_crit_edge, label %if.then10.i.i.i.i, !prof !206

if.end4.i.i.i.i.refcount_inc_not_zero.exit.i_crit_edge: ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %refcount_inc_not_zero.exit.i

if.then10.i.i.i.i:                                ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 0) #12
  br label %refcount_inc_not_zero.exit.i

refcount_inc_not_zero.exit.i:                     ; preds = %if.then10.i.i.i.i, %if.end4.i.i.i.i.refcount_inc_not_zero.exit.i_crit_edge
  %16 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %old.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool12.i.i.i.not.i = icmp eq i32 %17, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i) #12
  %spec.select.i = select i1 %tobool12.i.i.i.not.i, ptr null, ptr %call.i
  br label %if.end.i

if.end.i:                                         ; preds = %refcount_inc_not_zero.exit.i, %rcu_read_lock.exit.i.if.end.i_crit_edge
  %f.0.i = phi ptr [ null, %rcu_read_lock.exit.i.if.end.i_crit_edge ], [ %spec.select.i, %refcount_inc_not_zero.exit.i ]
  %call.i5.i = call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i5.i, label %if.end.i.__fl_get.exit_crit_edge, label %land.lhs.true.i8.i

if.end.i.__fl_get.exit_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__fl_get.exit

land.lhs.true.i8.i:                               ; preds = %if.end.i
  %call1.i6.i = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i6.i)
  %tobool.not.i7.i = icmp eq i32 %call1.i6.i, 0
  br i1 %tobool.not.i7.i, label %land.lhs.true.i8.i.__fl_get.exit_crit_edge, label %land.lhs.true2.i10.i

land.lhs.true.i8.i.__fl_get.exit_crit_edge:       ; preds = %land.lhs.true.i8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__fl_get.exit

land.lhs.true2.i10.i:                             ; preds = %land.lhs.true.i8.i
  %.b4.i9.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i9.i, label %land.lhs.true2.i10.i.__fl_get.exit_crit_edge, label %if.then.i11.i

land.lhs.true2.i10.i.__fl_get.exit_crit_edge:     ; preds = %land.lhs.true2.i10.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__fl_get.exit

if.then.i11.i:                                    ; preds = %land.lhs.true2.i10.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 724, ptr noundef nonnull @.str.9) #12
  br label %__fl_get.exit

__fl_get.exit:                                    ; preds = %if.then.i11.i, %land.lhs.true2.i10.i.__fl_get.exit_crit_edge, %land.lhs.true.i8.i.__fl_get.exit_crit_edge, %if.end.i.__fl_get.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !207
  %18 = call i32 @llvm.read_register.i32(metadata !191) #12
  %and.i.i.i.i.i12.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i.i.i12.i to ptr
  %preempt_count.i.i.i.i13.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i.i.i13.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i.i.i13.i, align 4
  %sub.i.i.i.i = add i32 %21, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i13.i, align 4
  call void @rcu_read_unlock_strict() #12
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  ret ptr %f.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fl_put(ptr nocapture noundef readnone %tp, ptr noundef %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @__fl_put(ptr noundef %arg)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fl_change(ptr noundef %net, ptr nocapture noundef readnone %in_skb, ptr noundef %tp, i32 noundef %base, i32 noundef %handle, ptr nocapture noundef readonly %tca, ptr nocapture noundef %arg, i32 noundef %flags, ptr noundef %extack) #2 align 64 {
entry:
  %handle.addr = alloca i32, align 4
  %in_ht = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %handle.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %handle, ptr %handle.addr, align 4
  %root.i = getelementptr inbounds %struct.tcf_proto, ptr %tp, i32 0, i32 1
  %1 = ptrtoint ptr %root.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %root.i, align 4
  %and = and i32 %flags, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %3 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arg, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %in_ht) #12
  %5 = ptrtoint ptr %in_ht to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %in_ht, align 1, !annotation !202
  %arrayidx = getelementptr ptr, ptr %tca, i32 2
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %tobool1.not = icmp eq ptr %7, null
  br i1 %tobool1.not, label %entry.errout_fold_crit_edge, label %if.end

entry.errout_fold_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %errout_fold

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 888) #15
  %tobool3.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool3.not, label %if.end.errout_fold_crit_edge, label %if.end5

if.end.errout_fold_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %errout_fold

if.end5:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 408) #15
  %tobool7.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool7.not, label %if.end5.errout_mask_alloc_crit_edge, label %if.end9

if.end5.errout_mask_alloc_crit_edge:              ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %errout_mask_alloc

if.end9:                                          ; preds = %if.end5
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %11, align 2
  %conv.i.i = zext i16 %13 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -4
  %call2.i = tail call i32 @__nla_parse(ptr noundef nonnull %call7.i.i.i, i32 noundef 101, ptr noundef %add.ptr.i.i, i32 noundef %sub.i.i, ptr noundef nonnull @fl_policy, i32 noundef 0, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp = icmp slt i32 %call2.i, 0
  br i1 %cmp, label %if.end9.errout_tb_crit_edge, label %if.end13

if.end9.errout_tb_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %errout_tb

if.end13:                                         ; preds = %if.end9
  %tobool14.not = icmp eq ptr %4, null
  br i1 %tobool14.not, label %if.end13.if.end20_crit_edge, label %land.lhs.true

if.end13.if.end20_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20

land.lhs.true:                                    ; preds = %if.end13
  %14 = ptrtoint ptr %handle.addr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %handle.addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool15.not = icmp eq i32 %15, 0
  br i1 %tobool15.not, label %land.lhs.true.if.end20_crit_edge, label %land.lhs.true16

land.lhs.true.if.end20_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20

land.lhs.true16:                                  ; preds = %land.lhs.true
  %handle17 = getelementptr inbounds %struct.cls_fl_filter, ptr %4, i32 0, i32 8
  %16 = ptrtoint ptr %handle17 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %handle17, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %15)
  %cmp18.not = icmp eq i32 %17, %15
  br i1 %cmp18.not, label %land.lhs.true16.if.end20_crit_edge, label %land.lhs.true16.errout_tb_crit_edge

land.lhs.true16.errout_tb_crit_edge:              ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #14
  br label %errout_tb

land.lhs.true16.if.end20_crit_edge:               ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20

if.end20:                                         ; preds = %land.lhs.true16.if.end20_crit_edge, %land.lhs.true.if.end20_crit_edge, %if.end13.if.end20_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %18 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i293 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %18, i32 noundef 3520, i32 noundef 1108) #15
  %tobool22.not = icmp eq ptr %call7.i.i293, null
  br i1 %tobool22.not, label %if.end20.errout_tb_crit_edge, label %if.end24

if.end20.errout_tb_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  br label %errout_tb

if.end24:                                         ; preds = %if.end20
  %hw_list = getelementptr inbounds %struct.cls_fl_filter, ptr %call7.i.i293, i32 0, i32 7
  %19 = ptrtoint ptr %hw_list to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %hw_list, ptr %hw_list, align 4
  %prev.i = getelementptr inbounds %struct.cls_fl_filter, ptr %call7.i.i293, i32 0, i32 7, i32 1
  %20 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %hw_list, ptr %prev.i, align 8
  %refcnt = getelementptr inbounds %struct.cls_fl_filter, ptr %call7.i.i293, i32 0, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #12
  %21 = ptrtoint ptr %refcnt to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile i32 1, ptr %refcnt, align 4
  %exts = getelementptr inbounds %struct.cls_fl_filter, ptr %call7.i.i293, i32 0, i32 3
  %22 = ptrtoint ptr %exts to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %exts, align 4
  %nr_actions.i = getelementptr inbounds %struct.cls_fl_filter, ptr %call7.i.i293, i32 0, i32 3, i32 1
  %23 = ptrtoint ptr %nr_actions.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %nr_actions.i, align 8
  %net1.i = getelementptr inbounds %struct.cls_fl_filter, ptr %call7.i.i293, i32 0, i32 3, i32 3
  %24 = ptrtoint ptr %net1.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %net, ptr %net1.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %25 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %25, i32 noundef 3520, i32 noundef 128) #15
  %actions.i = getelementptr inbounds %struct.cls_fl_filter, ptr %call7.i.i293, i32 0, i32 3, i32 2
  %26 = ptrtoint ptr %actions.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call7.i.i.i.i, ptr %actions.i, align 4
  %tobool.not.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i, label %if.end24.errout_crit_edge, label %if.end28

if.end24.errout_crit_edge:                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  br label %errout

if.end28:                                         ; preds = %if.end24
  %action3.i = getelementptr inbounds %struct.cls_fl_filter, ptr %call7.i.i293, i32 0, i32 3, i32 5
  %27 = ptrtoint ptr %action3.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 3, ptr %action3.i, align 8
  %police4.i = getelementptr inbounds %struct.cls_fl_filter, ptr %call7.i.i293, i32 0, i32 3, i32 6
  %28 = ptrtoint ptr %police4.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %police4.i, align 4
  %arrayidx29 = getelementptr ptr, ptr %call7.i.i.i, i32 22
  %29 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx29, align 8
  %tobool30.not = icmp eq ptr %30, null
  br i1 %tobool30.not, label %if.end28.if.end39_crit_edge, label %if.then31

if.end28.if.end39_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end39

if.then31:                                        ; preds = %if.end28
  %add.ptr.i.i294 = getelementptr i8, ptr %30, i32 4
  %31 = ptrtoint ptr %add.ptr.i.i294 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %add.ptr.i.i294, align 4
  %flags34 = getelementptr inbounds %struct.cls_fl_filter, ptr %call7.i.i293, i32 0, i32 9
  %33 = ptrtoint ptr %flags34 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %flags34, align 8
  %and.i = and i32 %32, -20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i295 = icmp eq i32 %and.i, 0
  %and1.i = and i32 %32, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and1.i)
  %tobool2.not.i = icmp ne i32 %and1.i, 3
  %retval.0.i296 = and i1 %tobool.not.i295, %tobool2.not.i
  br i1 %retval.0.i296, label %if.then31.if.end39_crit_edge, label %if.then31.errout_crit_edge

if.then31.errout_crit_edge:                       ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #14
  br label %errout

if.then31.if.end39_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end39

if.end39:                                         ; preds = %if.then31.if.end39_crit_edge, %if.end28.if.end39_crit_edge
  %arrayidx40 = getelementptr ptr, ptr %tca, i32 5
  %34 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx40, align 4
  %chain = getelementptr inbounds %struct.tcf_proto, ptr %tp, i32 0, i32 7
  %36 = ptrtoint ptr %chain to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %chain, align 4
  %tmplt_priv = getelementptr inbounds %struct.tcf_chain, ptr %37, i32 0, i32 10
  %38 = ptrtoint ptr %tmplt_priv to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %tmplt_priv, align 4
  %flags41 = getelementptr inbounds %struct.cls_fl_filter, ptr %call7.i.i293, i32 0, i32 9
  %40 = ptrtoint ptr %flags41 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %flags41, align 8
  %call.i = tail call i32 @tcf_exts_validate_ex(ptr noundef %net, ptr noundef %tp, ptr noundef nonnull %call7.i.i.i, ptr noundef %35, ptr noundef %exts, i32 noundef %flags, i32 noundef %41, ptr noundef %extack) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end39.errout_crit_edge, label %if.end.i298

if.end39.errout_crit_edge:                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #14
  br label %errout

if.end.i298:                                      ; preds = %if.end39
  %arrayidx.i = getelementptr ptr, ptr %call7.i.i.i, i32 1
  %42 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i297 = icmp eq ptr %43, null
  br i1 %tobool.not.i297, label %if.end.i298.if.end12.i_crit_edge, label %if.then1.i

if.end.i298.if.end12.i_crit_edge:                 ; preds = %if.end.i298
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12.i

if.then1.i:                                       ; preds = %if.end.i298
  %add.ptr.i.i.i = getelementptr i8, ptr %43, i32 4
  %44 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %add.ptr.i.i.i, align 4
  %res.i = getelementptr inbounds %struct.cls_fl_filter, ptr %call7.i.i293, i32 0, i32 4
  %classid.i = getelementptr inbounds %struct.cls_fl_filter, ptr %call7.i.i293, i32 0, i32 4, i32 0, i32 0, i32 1
  %46 = ptrtoint ptr %classid.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %classid.i, align 4
  br i1 %tobool.not, label %if.end12.critedge.i, label %if.then5.i

if.then5.i:                                       ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @rtnl_lock() #12
  tail call fastcc void @tcf_bind_filter(ptr noundef %tp, ptr noundef %res.i, i32 noundef %base) #12
  tail call void @rtnl_unlock() #12
  br label %if.end12.i

if.end12.critedge.i:                              ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @tcf_bind_filter(ptr noundef %tp, ptr noundef %res.i, i32 noundef %base) #12
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.end12.critedge.i, %if.then5.i, %if.end.i298.if.end12.i_crit_edge
  %key.i = getelementptr inbounds %struct.cls_fl_filter, ptr %call7.i.i293, i32 0, i32 5
  %call14.i = tail call fastcc i32 @fl_set_key(ptr noundef %net, ptr noundef nonnull %call7.i.i.i, ptr noundef %key.i, ptr noundef nonnull %call7.i.i, ptr noundef %extack) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool15.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool15.not.i, label %if.end12.i.for.body.i.i_crit_edge, label %if.end12.i.errout_crit_edge

if.end12.i.errout_crit_edge:                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %errout

if.end12.i.for.body.i.i_crit_edge:                ; preds = %if.end12.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end12.i.for.body.i.i_crit_edge
  %i.033.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %if.end12.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr i8, ptr %call7.i.i, i32 %i.033.i.i
  %47 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool.not.i.i = icmp eq i8 %48, 0
  br i1 %tobool.not.i.i, label %for.inc.i.i, label %for.end.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc.i.i = add nuw nsw i32 %i.033.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 484
  br i1 %exitcond.not.i.i, label %for.inc.i.i.for.body3.preheader.i.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

for.inc.i.i.for.body3.preheader.i.i_crit_edge:    ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body3.preheader.i.i

for.end.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 483, i32 %i.033.i.i)
  %cmp2.not34.i.i = icmp eq i32 %i.033.i.i, 483
  br i1 %cmp2.not34.i.i, label %for.end.i.i.fl_mask_update_range.exit.i_crit_edge, label %for.end.i.i.for.body3.preheader.i.i_crit_edge

for.end.i.i.for.body3.preheader.i.i_crit_edge:    ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body3.preheader.i.i

for.end.i.i.fl_mask_update_range.exit.i_crit_edge: ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fl_mask_update_range.exit.i

for.body3.preheader.i.i:                          ; preds = %for.end.i.i.for.body3.preheader.i.i_crit_edge, %for.inc.i.i.for.body3.preheader.i.i_crit_edge
  %first.039.i.i = phi i32 [ %i.033.i.i, %for.end.i.i.for.body3.preheader.i.i_crit_edge ], [ 0, %for.inc.i.i.for.body3.preheader.i.i_crit_edge ]
  br label %for.body3.i.i

for.body3.i.i:                                    ; preds = %for.inc8.i.i.for.body3.i.i_crit_edge, %for.body3.preheader.i.i
  %i.135.i.i = phi i32 [ %dec.i.i, %for.inc8.i.i.for.body3.i.i_crit_edge ], [ 483, %for.body3.preheader.i.i ]
  %arrayidx4.i.i = getelementptr i8, ptr %call7.i.i, i32 %i.135.i.i
  %49 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx4.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool5.not.i.i = icmp eq i8 %50, 0
  br i1 %tobool5.not.i.i, label %for.inc8.i.i, label %for.body3.i.i.fl_mask_update_range.exit.i_crit_edge

for.body3.i.i.fl_mask_update_range.exit.i_crit_edge: ; preds = %for.body3.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fl_mask_update_range.exit.i

for.inc8.i.i:                                     ; preds = %for.body3.i.i
  %dec.i.i = add i32 %i.135.i.i, -1
  %cmp2.not.i.i = icmp eq i32 %dec.i.i, %first.039.i.i
  br i1 %cmp2.not.i.i, label %for.inc8.i.i.fl_mask_update_range.exit.i_crit_edge, label %for.inc8.i.i.for.body3.i.i_crit_edge

for.inc8.i.i.for.body3.i.i_crit_edge:             ; preds = %for.inc8.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body3.i.i

for.inc8.i.i.fl_mask_update_range.exit.i_crit_edge: ; preds = %for.inc8.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fl_mask_update_range.exit.i

fl_mask_update_range.exit.i:                      ; preds = %for.inc8.i.i.fl_mask_update_range.exit.i_crit_edge, %for.body3.i.i.fl_mask_update_range.exit.i_crit_edge, %for.end.i.i.fl_mask_update_range.exit.i_crit_edge
  %first.040.i.i = phi i32 [ 483, %for.end.i.i.fl_mask_update_range.exit.i_crit_edge ], [ %first.039.i.i, %for.body3.i.i.fl_mask_update_range.exit.i_crit_edge ], [ %first.039.i.i, %for.inc8.i.i.fl_mask_update_range.exit.i_crit_edge ]
  %last.0.i.i = phi i32 [ 483, %for.end.i.i.fl_mask_update_range.exit.i_crit_edge ], [ %first.039.i.i, %for.inc8.i.i.fl_mask_update_range.exit.i_crit_edge ], [ %i.135.i.i, %for.body3.i.i.fl_mask_update_range.exit.i_crit_edge ]
  %51 = trunc i32 %first.040.i.i to i16
  %conv.i.i300 = and i16 %51, -4
  %range.i.i = getelementptr inbounds %struct.fl_flow_mask, ptr %call7.i.i, i32 0, i32 1
  %52 = ptrtoint ptr %range.i.i to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %conv.i.i300, ptr %range.i.i, align 4
  %53 = trunc i32 %last.0.i.i to i16
  %54 = add i16 %53, 4
  %conv14.i.i = and i16 %54, -4
  %end.i.i = getelementptr inbounds %struct.fl_flow_mask, ptr %call7.i.i, i32 0, i32 1, i32 1
  %55 = ptrtoint ptr %end.i.i to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %conv14.i.i, ptr %end.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %conv14.i.i, i16 %conv.i.i300)
  %cmp22.not.i.i = icmp eq i16 %conv14.i.i, %conv.i.i300
  br i1 %cmp22.not.i.i, label %fl_mask_update_range.exit.i.fl_set_masked_key.exit.i_crit_edge, label %for.body.preheader.i.i

fl_mask_update_range.exit.i.fl_set_masked_key.exit.i_crit_edge: ; preds = %fl_mask_update_range.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fl_set_masked_key.exit.i

for.body.preheader.i.i:                           ; preds = %fl_mask_update_range.exit.i
  %mkey.i = getelementptr inbounds %struct.cls_fl_filter, ptr %call7.i.i293, i32 0, i32 2
  %conv.i.i.i = zext i16 %conv.i.i300 to i32
  %add.ptr.i18.i.i = getelementptr i8, ptr %mkey.i, i32 %conv.i.i.i
  %add.ptr.i15.i.i = getelementptr i8, ptr %call7.i.i, i32 %conv.i.i.i
  %add.ptr.i.i46.i = getelementptr i8, ptr %key.i, i32 %conv.i.i.i
  %56 = ptrtoint ptr %range.i.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %range.i.i, align 4
  %sub.i.i.i = sub i16 %conv14.i.i, %57
  %conv.i47.i = zext i16 %sub.i.i.i to i32
  br label %for.body.i48.i

for.body.i48.i:                                   ; preds = %for.body.i48.i.for.body.i48.i_crit_edge, %for.body.preheader.i.i
  %i.026.i.i = phi i32 [ %add.i.i, %for.body.i48.i.for.body.i48.i_crit_edge ], [ 0, %for.body.preheader.i.i ]
  %lmkey.025.i.i = phi ptr [ %incdec.ptr7.i.i, %for.body.i48.i.for.body.i48.i_crit_edge ], [ %add.ptr.i18.i.i, %for.body.preheader.i.i ]
  %lmask.024.i.i = phi ptr [ %incdec.ptr6.i.i, %for.body.i48.i.for.body.i48.i_crit_edge ], [ %add.ptr.i15.i.i, %for.body.preheader.i.i ]
  %lkey.023.i.i = phi ptr [ %incdec.ptr.i.i, %for.body.i48.i.for.body.i48.i_crit_edge ], [ %add.ptr.i.i46.i, %for.body.preheader.i.i ]
  %incdec.ptr.i.i = getelementptr i32, ptr %lkey.023.i.i, i32 1
  %58 = ptrtoint ptr %lkey.023.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %lkey.023.i.i, align 4
  %incdec.ptr6.i.i = getelementptr i32, ptr %lmask.024.i.i, i32 1
  %60 = ptrtoint ptr %lmask.024.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %lmask.024.i.i, align 4
  %and.i.i = and i32 %61, %59
  %incdec.ptr7.i.i = getelementptr i32, ptr %lmkey.025.i.i, i32 1
  %62 = ptrtoint ptr %lmkey.025.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %and.i.i, ptr %lmkey.025.i.i, align 4
  %add.i.i = add nuw nsw i32 %i.026.i.i, 4
  %cmp.i.i = icmp ult i32 %add.i.i, %conv.i47.i
  br i1 %cmp.i.i, label %for.body.i48.i.for.body.i48.i_crit_edge, label %for.body.i48.i.fl_set_masked_key.exit.i_crit_edge

for.body.i48.i.fl_set_masked_key.exit.i_crit_edge: ; preds = %for.body.i48.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fl_set_masked_key.exit.i

for.body.i48.i.for.body.i48.i_crit_edge:          ; preds = %for.body.i48.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i48.i

fl_set_masked_key.exit.i:                         ; preds = %for.body.i48.i.fl_set_masked_key.exit.i_crit_edge, %fl_mask_update_range.exit.i.fl_set_masked_key.exit.i_crit_edge
  %tobool.not.i50.i = icmp eq ptr %39, null
  br i1 %tobool.not.i50.i, label %fl_set_masked_key.exit.i.if.end45_crit_edge, label %if.end.i.i

fl_set_masked_key.exit.i.if.end45_crit_edge:      ; preds = %fl_set_masked_key.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end45

if.end.i.i:                                       ; preds = %fl_set_masked_key.exit.i
  %63 = ptrtoint ptr %range.i.i to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %range.i.i, align 4
  %sub.i.i53.i = sub i16 %conv14.i.i, %64
  %conv.i54.i = zext i16 %sub.i.i53.i to i32
  call void @__sanitizer_cov_trace_cmp2(i16 %conv14.i.i, i16 %64)
  %cmp20.not.i.i = icmp eq i16 %conv14.i.i, %64
  br i1 %cmp20.not.i.i, label %if.end.i.i.if.end45_crit_edge, label %for.body.preheader.i58.i

if.end.i.i.if.end45_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end45

for.body.preheader.i58.i:                         ; preds = %if.end.i.i
  %mask1.i.i = getelementptr inbounds %struct.fl_flow_tmplt, ptr %39, i32 0, i32 1
  %conv.i.i55.i = zext i16 %64 to i32
  %add.ptr.i18.i56.i = getelementptr i8, ptr %mask1.i.i, i32 %conv.i.i55.i
  %add.ptr.i.i57.i = getelementptr i8, ptr %call7.i.i, i32 %conv.i.i55.i
  br label %for.body.i60.i

for.body.i60.i:                                   ; preds = %for.inc.i64.i.for.body.i60.i_crit_edge, %for.body.preheader.i58.i
  %i.023.i.i = phi i32 [ %add.i62.i, %for.inc.i64.i.for.body.i60.i_crit_edge ], [ 0, %for.body.preheader.i58.i ]
  %ltmplt.022.i.i = phi ptr [ %incdec.ptr.i61.i, %for.inc.i64.i.for.body.i60.i_crit_edge ], [ %add.ptr.i18.i56.i, %for.body.preheader.i58.i ]
  %lmask.021.i.i = phi ptr [ %incdec.ptr5.i.i, %for.inc.i64.i.for.body.i60.i_crit_edge ], [ %add.ptr.i.i57.i, %for.body.preheader.i58.i ]
  %65 = ptrtoint ptr %ltmplt.022.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %ltmplt.022.i.i, align 4
  %neg.i.i = xor i32 %66, -1
  %67 = ptrtoint ptr %lmask.021.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %lmask.021.i.i, align 4
  %and.i59.i = and i32 %68, %neg.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i59.i)
  %tobool6.not.i.i = icmp eq i32 %and.i59.i, 0
  br i1 %tobool6.not.i.i, label %for.inc.i64.i, label %do.body.i

for.inc.i64.i:                                    ; preds = %for.body.i60.i
  %incdec.ptr5.i.i = getelementptr i32, ptr %lmask.021.i.i, i32 1
  %incdec.ptr.i61.i = getelementptr i32, ptr %ltmplt.022.i.i, i32 1
  %add.i62.i = add nuw nsw i32 %i.023.i.i, 4
  %cmp.i63.i = icmp ult i32 %add.i62.i, %conv.i54.i
  br i1 %cmp.i63.i, label %for.inc.i64.i.for.body.i60.i_crit_edge, label %for.inc.i64.i.if.end45_crit_edge

for.inc.i64.i.if.end45_crit_edge:                 ; preds = %for.inc.i64.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end45

for.inc.i64.i.for.body.i60.i_crit_edge:           ; preds = %for.inc.i64.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i60.i

do.body.i:                                        ; preds = %for.body.i60.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @fl_set_parms.__msg) #12
  %tobool21.not.i = icmp eq ptr %extack, null
  br i1 %tobool21.not.i, label %do.body.i.errout_crit_edge, label %if.then22.i

do.body.i.errout_crit_edge:                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %errout

if.then22.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %69 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr @fl_set_parms.__msg, ptr %extack, align 4
  br label %errout

if.end45:                                         ; preds = %for.inc.i64.i.if.end45_crit_edge, %if.end.i.i.if.end45_crit_edge, %fl_set_masked_key.exit.i.if.end45_crit_edge
  %call46 = tail call fastcc i32 @fl_check_assign_mask(ptr noundef %2, ptr noundef nonnull %call7.i.i293, ptr noundef %4, ptr noundef nonnull %call7.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.end49, label %if.end45.errout_crit_edge

if.end45.errout_crit_edge:                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #14
  br label %errout

if.end49:                                         ; preds = %if.end45
  %call50 = call fastcc i32 @fl_ht_insert_unique(ptr noundef nonnull %call7.i.i293, ptr noundef %4, ptr noundef nonnull %in_ht)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.end53, label %if.end49.errout_mask_crit_edge

if.end49.errout_mask_crit_edge:                   ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #14
  br label %errout_mask

if.end53:                                         ; preds = %if.end49
  %70 = ptrtoint ptr %flags41 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %flags41, align 8
  %and.i302 = and i32 %71, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i302)
  %tobool.i.not = icmp eq i32 %and.i302, 0
  br i1 %tobool.i.not, label %if.then56, label %if.end53.if.end62_crit_edge

if.end53.if.end62_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end62

if.then56:                                        ; preds = %if.end53
  %call58 = tail call fastcc i32 @fl_hw_replace_filter(ptr noundef %tp, ptr noundef nonnull %call7.i.i293, i1 noundef zeroext %tobool.not, ptr noundef %extack)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %if.then56.if.end62_crit_edge, label %errout_ht

if.then56.if.end62_crit_edge:                     ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end62

if.end62:                                         ; preds = %if.then56.if.end62_crit_edge, %if.end53.if.end62_crit_edge
  %72 = ptrtoint ptr %flags41 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %flags41, align 8
  %and.i303 = and i32 %73, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i303)
  %tobool.i304.not = icmp eq i32 %and.i303, 0
  br i1 %tobool.i304.not, label %if.then65, label %if.end62.if.end67_crit_edge

if.end62.if.end67_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end67

if.then65:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #14
  %or = or i32 %73, 8
  %74 = ptrtoint ptr %flags41 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %or, ptr %flags41, align 8
  br label %if.end67

if.end67:                                         ; preds = %if.then65, %if.end62.if.end67_crit_edge
  %lock = getelementptr inbounds %struct.tcf_proto, ptr %tp, i32 0, i32 8
  tail call void @_raw_spin_lock(ptr noundef %lock) #12
  %deleting = getelementptr inbounds %struct.tcf_proto, ptr %tp, i32 0, i32 9
  %75 = ptrtoint ptr %deleting to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %deleting, align 4, !range !203
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %76)
  %tobool68.not = icmp eq i8 %76, 0
  br i1 %tobool68.not, label %if.end70, label %if.end67.errout_hw_crit_edge

if.end67.errout_hw_crit_edge:                     ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #14
  br label %errout_hw

if.end70:                                         ; preds = %if.end67
  br i1 %tobool14.not, label %if.else, label %if.then72

if.then72:                                        ; preds = %if.end70
  %deleted = getelementptr inbounds %struct.cls_fl_filter, ptr %4, i32 0, i32 14
  %77 = ptrtoint ptr %deleted to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %deleted, align 4, !range !203
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %tobool73.not = icmp eq i8 %78, 0
  br i1 %tobool73.not, label %if.end75, label %if.then72.errout_hw_crit_edge

if.then72.errout_hw_crit_edge:                    ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #14
  br label %errout_hw

if.end75:                                         ; preds = %if.then72
  %79 = ptrtoint ptr %handle.addr to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %handle.addr, align 4
  %handle76 = getelementptr inbounds %struct.cls_fl_filter, ptr %call7.i.i293, i32 0, i32 8
  %81 = ptrtoint ptr %handle76 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %80, ptr %handle76, align 4
  %82 = ptrtoint ptr %in_ht to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %in_ht, align 1, !range !203
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %83)
  %tobool77.not = icmp eq i8 %83, 0
  br i1 %tobool77.not, label %if.then78, label %if.end75.if.end85_crit_edge

if.end75.if.end85_crit_edge:                      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end85

if.then78:                                        ; preds = %if.end75
  %84 = ptrtoint ptr %call7.i.i293 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %call7.i.i293, align 8
  %filter_ht_params = getelementptr inbounds %struct.fl_flow_mask, ptr %85, i32 0, i32 5
  %86 = ptrtoint ptr %filter_ht_params to i32
  call void @__asan_load4_noabort(i32 %86)
  %params.sroa.0.0.copyload159 = load i32, ptr %filter_ht_params, align 4
  %params.sroa.5.0.filter_ht_params.sroa_idx = getelementptr inbounds %struct.fl_flow_mask, ptr %85, i32 0, i32 5, i32 2
  %87 = ptrtoint ptr %params.sroa.5.0.filter_ht_params.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %87)
  %params.sroa.5.0.copyload160 = load i32, ptr %params.sroa.5.0.filter_ht_params.sroa_idx, align 4
  %params.sroa.6.0.filter_ht_params.sroa_idx = getelementptr inbounds %struct.fl_flow_mask, ptr %85, i32 0, i32 5, i32 4
  %88 = ptrtoint ptr %params.sroa.6.0.filter_ht_params.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %88)
  %params.sroa.6.0.copyload161 = load i32, ptr %params.sroa.6.0.filter_ht_params.sroa_idx, align 4
  %params.sroa.7.0.filter_ht_params.sroa_idx = getelementptr inbounds %struct.fl_flow_mask, ptr %85, i32 0, i32 5, i32 5
  %89 = ptrtoint ptr %params.sroa.7.0.filter_ht_params.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %89)
  %params.sroa.7.0.copyload162 = load i32, ptr %params.sroa.7.0.filter_ht_params.sroa_idx, align 4
  %params.sroa.8.0.filter_ht_params.sroa_idx = getelementptr inbounds %struct.fl_flow_mask, ptr %85, i32 0, i32 5, i32 7
  %90 = ptrtoint ptr %params.sroa.8.0.filter_ht_params.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %90)
  %params.sroa.8.0.copyload163 = load i32, ptr %params.sroa.8.0.filter_ht_params.sroa_idx, align 4
  %params.sroa.9.0.filter_ht_params.sroa_idx = getelementptr inbounds %struct.fl_flow_mask, ptr %85, i32 0, i32 5, i32 8
  %91 = ptrtoint ptr %params.sroa.9.0.filter_ht_params.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %91)
  %params.sroa.9.0.copyload164 = load i32, ptr %params.sroa.9.0.filter_ht_params.sroa_idx, align 4
  %params.sroa.10.0.filter_ht_params.sroa_idx = getelementptr inbounds %struct.fl_flow_mask, ptr %85, i32 0, i32 5, i32 9
  %92 = ptrtoint ptr %params.sroa.10.0.filter_ht_params.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %92)
  %params.sroa.10.0.copyload165 = load i32, ptr %params.sroa.10.0.filter_ht_params.sroa_idx, align 4
  %ht = getelementptr inbounds %struct.fl_flow_mask, ptr %85, i32 0, i32 4
  %ht_node = getelementptr inbounds %struct.cls_fl_filter, ptr %call7.i.i293, i32 0, i32 1
  %.fca.0.insert = insertvalue [7 x i32] poison, i32 %params.sroa.0.0.copyload159, 0
  %.fca.1.insert = insertvalue [7 x i32] %.fca.0.insert, i32 %params.sroa.5.0.copyload160, 1
  %.fca.2.insert = insertvalue [7 x i32] %.fca.1.insert, i32 %params.sroa.6.0.copyload161, 2
  %.fca.3.insert = insertvalue [7 x i32] %.fca.2.insert, i32 %params.sroa.7.0.copyload162, 3
  %.fca.4.insert = insertvalue [7 x i32] %.fca.3.insert, i32 %params.sroa.8.0.copyload163, 4
  %.fca.5.insert = insertvalue [7 x i32] %.fca.4.insert, i32 %params.sroa.9.0.copyload164, 5
  %.fca.6.insert = insertvalue [7 x i32] %.fca.5.insert, i32 %params.sroa.10.0.copyload165, 6
  %call.i305 = tail call fastcc ptr @__rhashtable_insert_fast(ptr noundef %ht, ptr noundef null, ptr noundef %ht_node, [7 x i32] %.fca.6.insert) #12
  %cmp.i.i306 = icmp ugt ptr %call.i305, inttoptr (i32 -4096 to ptr)
  %93 = ptrtoint ptr %call.i305 to i32
  %cmp.i307 = icmp eq ptr %call.i305, null
  %cond.i = select i1 %cmp.i307, i32 0, i32 -17
  %retval.0.i308 = select i1 %cmp.i.i306, i32 %93, i32 %cond.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i308)
  %tobool82.not = icmp eq i32 %retval.0.i308, 0
  br i1 %tobool82.not, label %cleanup.thread, label %if.then78.errout_hw_crit_edge

if.then78.errout_hw_crit_edge:                    ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #14
  br label %errout_hw

cleanup.thread:                                   ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #14
  %94 = ptrtoint ptr %in_ht to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 1, ptr %in_ht, align 1
  br label %if.end85

if.end85:                                         ; preds = %cleanup.thread, %if.end75.if.end85_crit_edge
  tail call fastcc void @refcount_inc(ptr noundef %refcnt)
  %95 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %4, align 4
  %ht88 = getelementptr inbounds %struct.fl_flow_mask, ptr %96, i32 0, i32 4
  %ht_node89 = getelementptr inbounds %struct.cls_fl_filter, ptr %4, i32 0, i32 1
  %filter_ht_params91 = getelementptr inbounds %struct.fl_flow_mask, ptr %96, i32 0, i32 5
  %97 = ptrtoint ptr %filter_ht_params91 to i32
  call void @__asan_load4_noabort(i32 %97)
  %.unpack279 = load i32, ptr %filter_ht_params91, align 4
  %98 = insertvalue [7 x i32] undef, i32 %.unpack279, 0
  %.elt280 = getelementptr inbounds %struct.fl_flow_mask, ptr %96, i32 0, i32 5, i32 2
  %99 = ptrtoint ptr %.elt280 to i32
  call void @__asan_load4_noabort(i32 %99)
  %.unpack281 = load i32, ptr %.elt280, align 4
  %100 = insertvalue [7 x i32] %98, i32 %.unpack281, 1
  %.elt282 = getelementptr inbounds %struct.fl_flow_mask, ptr %96, i32 0, i32 5, i32 4
  %101 = ptrtoint ptr %.elt282 to i32
  call void @__asan_load4_noabort(i32 %101)
  %.unpack283 = load i32, ptr %.elt282, align 4
  %102 = insertvalue [7 x i32] %100, i32 %.unpack283, 2
  %.elt284 = getelementptr inbounds %struct.fl_flow_mask, ptr %96, i32 0, i32 5, i32 5
  %103 = ptrtoint ptr %.elt284 to i32
  call void @__asan_load4_noabort(i32 %103)
  %.unpack285 = load i32, ptr %.elt284, align 4
  %104 = insertvalue [7 x i32] %102, i32 %.unpack285, 3
  %.elt286 = getelementptr inbounds %struct.fl_flow_mask, ptr %96, i32 0, i32 5, i32 7
  %105 = ptrtoint ptr %.elt286 to i32
  call void @__asan_load4_noabort(i32 %105)
  %.unpack287 = load i32, ptr %.elt286, align 4
  %106 = insertvalue [7 x i32] %104, i32 %.unpack287, 4
  %.elt288 = getelementptr inbounds %struct.fl_flow_mask, ptr %96, i32 0, i32 5, i32 8
  %107 = ptrtoint ptr %.elt288 to i32
  call void @__asan_load4_noabort(i32 %107)
  %.unpack289 = load i32, ptr %.elt288, align 4
  %108 = insertvalue [7 x i32] %106, i32 %.unpack289, 5
  %.elt290 = getelementptr inbounds %struct.fl_flow_mask, ptr %96, i32 0, i32 5, i32 9
  %109 = ptrtoint ptr %.elt290 to i32
  call void @__asan_load4_noabort(i32 %109)
  %.unpack291 = load i32, ptr %.elt290, align 4
  %110 = insertvalue [7 x i32] %108, i32 %.unpack291, 6
  tail call fastcc void @rhashtable_remove_fast(ptr noundef %ht88, ptr noundef %ht_node89, [7 x i32] %110)
  %handle_idr = getelementptr inbounds %struct.cls_fl_head, ptr %2, i32 0, i32 5
  %111 = ptrtoint ptr %handle76 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %handle76, align 4
  %call94 = tail call ptr @idr_replace(ptr noundef %handle_idr, ptr noundef nonnull %call7.i.i293, i32 noundef %112) #12
  %list = getelementptr inbounds %struct.cls_fl_filter, ptr %4, i32 0, i32 6
  %list95 = getelementptr inbounds %struct.cls_fl_filter, ptr %call7.i.i293, i32 0, i32 6
  %113 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %list, align 4
  %115 = ptrtoint ptr %list95 to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr %114, ptr %list95, align 4
  %prev.i309 = getelementptr inbounds %struct.cls_fl_filter, ptr %4, i32 0, i32 6, i32 1
  %116 = ptrtoint ptr %prev.i309 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %prev.i309, align 4
  %prev2.i = getelementptr inbounds %struct.cls_fl_filter, ptr %call7.i.i293, i32 0, i32 6, i32 1
  %118 = ptrtoint ptr %prev2.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %117, ptr %prev2.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !208
  %119 = ptrtoint ptr %prev2.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %prev2.i, align 8
  %121 = ptrtoint ptr %120 to i32
  call void @__asan_store4_noabort(i32 %121)
  store volatile ptr %list95, ptr %120, align 4
  %122 = ptrtoint ptr %list95 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %list95, align 4
  %prev38.i = getelementptr inbounds %struct.list_head, ptr %123, i32 0, i32 1
  %124 = ptrtoint ptr %prev38.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr %list95, ptr %prev38.i, align 4
  %125 = ptrtoint ptr %prev.i309 to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i309, align 4
  %126 = ptrtoint ptr %deleted to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 1, ptr %deleted, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock) #12
  %127 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %4, align 4
  %call99 = tail call fastcc zeroext i1 @fl_mask_put(ptr noundef %2, ptr noundef %128)
  %flags100 = getelementptr inbounds %struct.cls_fl_filter, ptr %4, i32 0, i32 9
  %129 = ptrtoint ptr %flags100 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %flags100, align 4
  %and.i310 = and i32 %130, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i310)
  %tobool.i311.not = icmp eq i32 %and.i310, 0
  br i1 %tobool.i311.not, label %if.then102, label %if.end85.if.end104_crit_edge

if.end85.if.end104_crit_edge:                     ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end104

if.then102:                                       ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @fl_hw_destroy_filter(ptr noundef %tp, ptr noundef nonnull %4, i1 noundef zeroext %tobool.not, ptr noundef null)
  br label %if.end104

if.end104:                                        ; preds = %if.then102, %if.end85.if.end104_crit_edge
  %res = getelementptr inbounds %struct.cls_fl_filter, ptr %4, i32 0, i32 4
  tail call fastcc void @tcf_unbind_filter(ptr noundef %tp, ptr noundef %res)
  %refcnt105 = getelementptr inbounds %struct.cls_fl_filter, ptr %4, i32 0, i32 13
  tail call fastcc void @refcount_dec(ptr noundef %refcnt105)
  tail call fastcc void @__fl_put(ptr noundef nonnull %4)
  br label %if.end125

if.else:                                          ; preds = %if.end70
  %131 = ptrtoint ptr %handle.addr to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %handle.addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %132)
  %tobool106.not = icmp eq i32 %132, 0
  br i1 %tobool106.not, label %if.else113, label %if.then107

if.then107:                                       ; preds = %if.else
  %handle_idr108 = getelementptr inbounds %struct.cls_fl_head, ptr %2, i32 0, i32 5
  %call109 = call i32 @idr_alloc_u32(ptr noundef %handle_idr108, ptr noundef nonnull %call7.i.i293, ptr noundef nonnull %handle.addr, i32 noundef %132, i32 noundef 2592) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -28, i32 %call109)
  %cmp110 = icmp eq i32 %call109, -28
  br i1 %cmp110, label %if.then107.errout_hw_crit_edge, label %if.then107.if.end116_crit_edge

if.then107.if.end116_crit_edge:                   ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end116

if.then107.errout_hw_crit_edge:                   ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #14
  br label %errout_hw

if.else113:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %133 = ptrtoint ptr %handle.addr to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 1, ptr %handle.addr, align 4
  %handle_idr114 = getelementptr inbounds %struct.cls_fl_head, ptr %2, i32 0, i32 5
  %call115 = call i32 @idr_alloc_u32(ptr noundef %handle_idr114, ptr noundef nonnull %call7.i.i293, ptr noundef nonnull %handle.addr, i32 noundef 2147483647, i32 noundef 2592) #12
  br label %if.end116

if.end116:                                        ; preds = %if.else113, %if.then107.if.end116_crit_edge
  %err.0 = phi i32 [ %call109, %if.then107.if.end116_crit_edge ], [ %call115, %if.else113 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool117.not = icmp eq i32 %err.0, 0
  br i1 %tobool117.not, label %if.end119, label %if.end116.errout_hw_crit_edge

if.end116.errout_hw_crit_edge:                    ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #14
  br label %errout_hw

if.end119:                                        ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #14
  call fastcc void @refcount_inc(ptr noundef %refcnt)
  %134 = ptrtoint ptr %handle.addr to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %handle.addr, align 4
  %handle121 = getelementptr inbounds %struct.cls_fl_filter, ptr %call7.i.i293, i32 0, i32 8
  %136 = ptrtoint ptr %handle121 to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %135, ptr %handle121, align 4
  %list122 = getelementptr inbounds %struct.cls_fl_filter, ptr %call7.i.i293, i32 0, i32 6
  %137 = ptrtoint ptr %call7.i.i293 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %call7.i.i293, align 8
  %filters = getelementptr inbounds %struct.fl_flow_mask, ptr %138, i32 0, i32 7
  call fastcc void @list_add_tail_rcu(ptr noundef %list122, ptr noundef %filters)
  call void @_raw_spin_unlock(ptr noundef %lock) #12
  br label %if.end125

if.end125:                                        ; preds = %if.end119, %if.end104
  %139 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr %call7.i.i293, ptr %arg, align 4
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #12
  %rwork = getelementptr inbounds %struct.fl_flow_mask, ptr %call7.i.i, i32 0, i32 8
  %call126 = call zeroext i1 @tcf_queue_work(ptr noundef %rwork, ptr noundef nonnull @fl_uninit_mask_free_work) #12
  br label %cleanup151

errout_ht:                                        ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #14
  %lock127 = getelementptr inbounds %struct.tcf_proto, ptr %tp, i32 0, i32 8
  tail call void @_raw_spin_lock(ptr noundef %lock127) #12
  br label %errout_hw

errout_hw:                                        ; preds = %errout_ht, %if.end116.errout_hw_crit_edge, %if.then107.errout_hw_crit_edge, %if.then78.errout_hw_crit_edge, %if.then72.errout_hw_crit_edge, %if.end67.errout_hw_crit_edge
  %err.1 = phi i32 [ %err.0, %if.end116.errout_hw_crit_edge ], [ %call58, %errout_ht ], [ -11, %if.end67.errout_hw_crit_edge ], [ -11, %if.then72.errout_hw_crit_edge ], [ %retval.0.i308, %if.then78.errout_hw_crit_edge ], [ -11, %if.then107.errout_hw_crit_edge ]
  %deleted128 = getelementptr inbounds %struct.cls_fl_filter, ptr %call7.i.i293, i32 0, i32 14
  %140 = ptrtoint ptr %deleted128 to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 1, ptr %deleted128, align 8
  %lock129 = getelementptr inbounds %struct.tcf_proto, ptr %tp, i32 0, i32 8
  call void @_raw_spin_unlock(ptr noundef %lock129) #12
  %141 = ptrtoint ptr %flags41 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %flags41, align 8
  %and.i312 = and i32 %142, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i312)
  %tobool.i313.not = icmp eq i32 %and.i312, 0
  br i1 %tobool.i313.not, label %if.then132, label %errout_hw.if.end134_crit_edge

errout_hw.if.end134_crit_edge:                    ; preds = %errout_hw
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end134

if.then132:                                       ; preds = %errout_hw
  call void @__sanitizer_cov_trace_pc() #14
  call fastcc void @fl_hw_destroy_filter(ptr noundef %tp, ptr noundef nonnull %call7.i.i293, i1 noundef zeroext %tobool.not, ptr noundef null)
  br label %if.end134

if.end134:                                        ; preds = %if.then132, %errout_hw.if.end134_crit_edge
  %143 = ptrtoint ptr %in_ht to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %in_ht, align 1, !range !203
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %144)
  %tobool135.not = icmp eq i8 %144, 0
  br i1 %tobool135.not, label %if.end134.errout_mask_crit_edge, label %if.then136

if.end134.errout_mask_crit_edge:                  ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #14
  br label %errout_mask

if.then136:                                       ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #14
  %145 = ptrtoint ptr %call7.i.i293 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %call7.i.i293, align 8
  %ht138 = getelementptr inbounds %struct.fl_flow_mask, ptr %146, i32 0, i32 4
  %ht_node139 = getelementptr inbounds %struct.cls_fl_filter, ptr %call7.i.i293, i32 0, i32 1
  %filter_ht_params141 = getelementptr inbounds %struct.fl_flow_mask, ptr %146, i32 0, i32 5
  %147 = ptrtoint ptr %filter_ht_params141 to i32
  call void @__asan_load4_noabort(i32 %147)
  %.unpack = load i32, ptr %filter_ht_params141, align 4
  %148 = insertvalue [7 x i32] undef, i32 %.unpack, 0
  %.elt267 = getelementptr inbounds %struct.fl_flow_mask, ptr %146, i32 0, i32 5, i32 2
  %149 = ptrtoint ptr %.elt267 to i32
  call void @__asan_load4_noabort(i32 %149)
  %.unpack268 = load i32, ptr %.elt267, align 4
  %150 = insertvalue [7 x i32] %148, i32 %.unpack268, 1
  %.elt269 = getelementptr inbounds %struct.fl_flow_mask, ptr %146, i32 0, i32 5, i32 4
  %151 = ptrtoint ptr %.elt269 to i32
  call void @__asan_load4_noabort(i32 %151)
  %.unpack270 = load i32, ptr %.elt269, align 4
  %152 = insertvalue [7 x i32] %150, i32 %.unpack270, 2
  %.elt271 = getelementptr inbounds %struct.fl_flow_mask, ptr %146, i32 0, i32 5, i32 5
  %153 = ptrtoint ptr %.elt271 to i32
  call void @__asan_load4_noabort(i32 %153)
  %.unpack272 = load i32, ptr %.elt271, align 4
  %154 = insertvalue [7 x i32] %152, i32 %.unpack272, 3
  %.elt273 = getelementptr inbounds %struct.fl_flow_mask, ptr %146, i32 0, i32 5, i32 7
  %155 = ptrtoint ptr %.elt273 to i32
  call void @__asan_load4_noabort(i32 %155)
  %.unpack274 = load i32, ptr %.elt273, align 4
  %156 = insertvalue [7 x i32] %154, i32 %.unpack274, 4
  %.elt275 = getelementptr inbounds %struct.fl_flow_mask, ptr %146, i32 0, i32 5, i32 8
  %157 = ptrtoint ptr %.elt275 to i32
  call void @__asan_load4_noabort(i32 %157)
  %.unpack276 = load i32, ptr %.elt275, align 4
  %158 = insertvalue [7 x i32] %156, i32 %.unpack276, 5
  %.elt277 = getelementptr inbounds %struct.fl_flow_mask, ptr %146, i32 0, i32 5, i32 9
  %159 = ptrtoint ptr %.elt277 to i32
  call void @__asan_load4_noabort(i32 %159)
  %.unpack278 = load i32, ptr %.elt277, align 4
  %160 = insertvalue [7 x i32] %158, i32 %.unpack278, 6
  call fastcc void @rhashtable_remove_fast(ptr noundef %ht138, ptr noundef %ht_node139, [7 x i32] %160)
  br label %errout_mask

errout_mask:                                      ; preds = %if.then136, %if.end134.errout_mask_crit_edge, %if.end49.errout_mask_crit_edge
  %err.2 = phi i32 [ %call50, %if.end49.errout_mask_crit_edge ], [ %err.1, %if.then136 ], [ %err.1, %if.end134.errout_mask_crit_edge ]
  %161 = ptrtoint ptr %call7.i.i293 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %call7.i.i293, align 8
  %call145 = call fastcc zeroext i1 @fl_mask_put(ptr noundef %2, ptr noundef %162)
  br label %errout

errout:                                           ; preds = %errout_mask, %if.end45.errout_crit_edge, %if.then22.i, %do.body.i.errout_crit_edge, %if.end12.i.errout_crit_edge, %if.end39.errout_crit_edge, %if.then31.errout_crit_edge, %if.end24.errout_crit_edge
  %err.3 = phi i32 [ %call46, %if.end45.errout_crit_edge ], [ %err.2, %errout_mask ], [ -22, %if.then31.errout_crit_edge ], [ -12, %if.end24.errout_crit_edge ], [ -22, %do.body.i.errout_crit_edge ], [ -22, %if.then22.i ], [ %call14.i, %if.end12.i.errout_crit_edge ], [ %call.i, %if.end39.errout_crit_edge ]
  call fastcc void @__fl_put(ptr noundef nonnull %call7.i.i293)
  br label %errout_tb

errout_tb:                                        ; preds = %errout, %if.end20.errout_tb_crit_edge, %land.lhs.true16.errout_tb_crit_edge, %if.end9.errout_tb_crit_edge
  %err.4 = phi i32 [ %call2.i, %if.end9.errout_tb_crit_edge ], [ %err.3, %errout ], [ -22, %land.lhs.true16.errout_tb_crit_edge ], [ -105, %if.end20.errout_tb_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #12
  br label %errout_mask_alloc

errout_mask_alloc:                                ; preds = %errout_tb, %if.end5.errout_mask_alloc_crit_edge
  %err.5 = phi i32 [ %err.4, %errout_tb ], [ -105, %if.end5.errout_mask_alloc_crit_edge ]
  %rwork146 = getelementptr inbounds %struct.fl_flow_mask, ptr %call7.i.i, i32 0, i32 8
  %call147 = call zeroext i1 @tcf_queue_work(ptr noundef %rwork146, ptr noundef nonnull @fl_uninit_mask_free_work) #12
  br label %errout_fold

errout_fold:                                      ; preds = %errout_mask_alloc, %if.end.errout_fold_crit_edge, %entry.errout_fold_crit_edge
  %err.6 = phi i32 [ %err.5, %errout_mask_alloc ], [ -22, %entry.errout_fold_crit_edge ], [ -105, %if.end.errout_fold_crit_edge ]
  %tobool148.not = icmp eq ptr %4, null
  br i1 %tobool148.not, label %errout_fold.cleanup151_crit_edge, label %if.then149

errout_fold.cleanup151_crit_edge:                 ; preds = %errout_fold
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup151

if.then149:                                       ; preds = %errout_fold
  call void @__sanitizer_cov_trace_pc() #14
  call fastcc void @__fl_put(ptr noundef nonnull %4)
  br label %cleanup151

cleanup151:                                       ; preds = %if.then149, %errout_fold.cleanup151_crit_edge, %if.end125
  %retval.0 = phi i32 [ 0, %if.end125 ], [ %err.6, %if.then149 ], [ %err.6, %errout_fold.cleanup151_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %in_ht) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fl_delete(ptr noundef %tp, ptr noundef %arg, ptr nocapture noundef writeonly %last, i1 noundef zeroext %rtnl_held, ptr noundef %extack) #2 align 64 {
entry:
  %last_on_mask = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %root.i = getelementptr inbounds %struct.tcf_proto, ptr %tp, i32 0, i32 1
  %0 = ptrtoint ptr %root.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %root.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %last_on_mask) #12
  %call1 = call fastcc i32 @__fl_delete(ptr noundef %tp, ptr noundef %arg, ptr noundef nonnull %last_on_mask, i1 noundef zeroext %rtnl_held, ptr noundef %extack)
  %masks = getelementptr inbounds %struct.cls_fl_head, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %masks to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %masks, align 4
  %cmp.i = icmp eq ptr %3, %masks
  %frombool4 = zext i1 %cmp.i to i8
  %4 = ptrtoint ptr %last to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %frombool4, ptr %last, align 1
  tail call fastcc void @__fl_put(ptr noundef %arg)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %last_on_mask) #12
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @fl_delete_empty(ptr noundef %tp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %root.i = getelementptr inbounds %struct.tcf_proto, ptr %tp, i32 0, i32 1
  %0 = ptrtoint ptr %root.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %root.i, align 4
  %lock = getelementptr inbounds %struct.tcf_proto, ptr %tp, i32 0, i32 8
  tail call void @_raw_spin_lock(ptr noundef %lock) #12
  %xa_head.i.i = getelementptr inbounds %struct.cls_fl_head, ptr %1, i32 0, i32 5, i32 0, i32 2
  %2 = ptrtoint ptr %xa_head.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %xa_head.i.i, align 4
  %cmp.i.i = icmp eq ptr %3, null
  br i1 %cmp.i.i, label %land.rhs.i, label %entry.idr_is_empty.exit_crit_edge

entry.idr_is_empty.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %idr_is_empty.exit

land.rhs.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %handle_idr = getelementptr inbounds %struct.cls_fl_head, ptr %1, i32 0, i32 5
  %call2.i = tail call i32 @radix_tree_tagged(ptr noundef %handle_idr, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.i = icmp ne i32 %call2.i, 0
  br label %idr_is_empty.exit

idr_is_empty.exit:                                ; preds = %land.rhs.i, %entry.idr_is_empty.exit_crit_edge
  %4 = phi i1 [ false, %entry.idr_is_empty.exit_crit_edge ], [ %tobool.i, %land.rhs.i ]
  %deleting = getelementptr inbounds %struct.tcf_proto, ptr %tp, i32 0, i32 9
  %frombool = zext i1 %4 to i8
  %5 = ptrtoint ptr %deleting to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %frombool, ptr %deleting, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock) #12
  %6 = ptrtoint ptr %deleting to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %deleting, align 4, !range !203
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool = icmp ne i8 %7, 0
  ret i1 %tobool
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fl_walk(ptr noundef %tp, ptr noundef %arg, i1 noundef zeroext %rtnl_held) #2 align 64 {
entry:
  %old.i.i.i = alloca i32, align 4
  %id = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %root.i = getelementptr inbounds %struct.tcf_proto, ptr %tp, i32 0, i32 1
  %0 = ptrtoint ptr %root.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %root.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %id) #12
  %cookie = getelementptr inbounds %struct.tcf_walker, ptr %arg, i32 0, i32 4
  %2 = ptrtoint ptr %cookie to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cookie, align 4
  %4 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %id, align 4
  %skip = getelementptr inbounds %struct.tcf_walker, ptr %arg, i32 0, i32 1
  %5 = ptrtoint ptr %skip to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %skip, align 4
  %count = getelementptr inbounds %struct.tcf_walker, ptr %arg, i32 0, i32 2
  %7 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %count, align 4
  %8 = tail call i32 @llvm.read_register.i32(metadata !191) #12
  %and.i.i.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %11, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !204
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i, label %entry.land.rhs.lr.ph_crit_edge, label %land.lhs.true.i

entry.land.rhs.lr.ph_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs.lr.ph

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.land.rhs.lr.ph_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.land.rhs.lr.ph_crit_edge:         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs.lr.ph

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.land.rhs.lr.ph_crit_edge, label %if.then.i

land.lhs.true2.i.land.rhs.lr.ph_crit_edge:        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs.lr.ph

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 696, ptr noundef nonnull @.str.6) #12
  br label %land.rhs.lr.ph

land.rhs.lr.ph:                                   ; preds = %if.then.i, %land.lhs.true2.i.land.rhs.lr.ph_crit_edge, %land.lhs.true.i.land.rhs.lr.ph_crit_edge, %entry.land.rhs.lr.ph_crit_edge
  %handle_idr = getelementptr inbounds %struct.cls_fl_head, ptr %1, i32 0, i32 5
  %fn = getelementptr inbounds %struct.tcf_walker, ptr %arg, i32 0, i32 5
  br label %land.rhs

land.rhs:                                         ; preds = %for.inc.land.rhs_crit_edge, %land.rhs.lr.ph
  %call1 = call ptr @idr_get_next_ul(ptr noundef %handle_idr, ptr noundef nonnull %id) #12
  %cmp2.not = icmp eq ptr %call1, null
  br i1 %cmp2.not, label %land.rhs.for.end_crit_edge, label %for.body

land.rhs.for.end_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %land.rhs
  %refcnt = getelementptr inbounds %struct.cls_fl_filter, ptr %call1, i32 0, i32 13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i) #12
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %refcnt, i32 noundef 4) #12
  %12 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %refcnt, align 4
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge, %for.body
  %14 = phi i32 [ %13, %for.body ], [ %asmresult3.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge ]
  %15 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %old.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i.i.i = icmp eq i32 %14, 0
  br i1 %tobool.not.i.i.i, label %do.body.i.i.i.if.end4.i.i.i_crit_edge, label %do.cond.i.i.i

do.body.i.i.i.if.end4.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i.i.i

do.cond.i.i.i:                                    ; preds = %do.body.i.i.i
  %add.i.i.i44 = add i32 %14, 1
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #12
  %call.i3.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i, i32 noundef 4) #12
  %16 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %old.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %refcnt, i32 1, i32 3, i32 1) #12
  br label %do.body.i.i.i.i.i.i

do.body.i.i.i.i.i.i:                              ; preds = %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i
  %18 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %refcnt, ptr %refcnt, i32 %17, i32 %add.i.i.i44, ptr elementtype(i32) %refcnt) #12, !srcloc !205
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %18, 0
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i, label %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i:       ; preds = %do.body.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i = extractvalue { i32, i32 } %18, 1
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i, %17
  br i1 %cmp.not.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge, !prof !206

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i.i.i

if.end4.i.i.i:                                    ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, %do.body.i.i.i.if.end4.i.i.i_crit_edge
  %19 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %old.i.i.i, align 4
  %add5.i.i.i = add i32 %20, 1
  %21 = or i32 %add5.i.i.i, %20
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %21)
  %.not.i.i.i = icmp sgt i32 %21, -1
  br i1 %.not.i.i.i, label %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge, label %if.then10.i.i.i, !prof !206

if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge: ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %refcount_inc_not_zero.exit

if.then10.i.i.i:                                  ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @refcount_warn_saturate(ptr noundef %refcnt, i32 noundef 0) #12
  %22 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %.pr = load i32, ptr %old.i.i.i, align 4
  br label %refcount_inc_not_zero.exit

refcount_inc_not_zero.exit:                       ; preds = %if.then10.i.i.i, %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge
  %23 = phi i32 [ %20, %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge ], [ %.pr, %if.then10.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool12.i.i.i.not = icmp eq i32 %23, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i) #12
  br i1 %tobool12.i.i.i.not, label %refcount_inc_not_zero.exit.for.inc_crit_edge, label %if.end

refcount_inc_not_zero.exit.for.inc_crit_edge:     ; preds = %refcount_inc_not_zero.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end:                                           ; preds = %refcount_inc_not_zero.exit
  %call.i45 = call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i45, label %if.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i48

if.end.rcu_read_unlock.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true.i48:                                ; preds = %if.end
  %call1.i46 = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i46)
  %tobool.not.i47 = icmp eq i32 %call1.i46, 0
  br i1 %tobool.not.i47, label %land.lhs.true.i48.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i50

land.lhs.true.i48.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i48
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true2.i50:                               ; preds = %land.lhs.true.i48
  %.b4.i49 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i49, label %land.lhs.true2.i50.rcu_read_unlock.exit_crit_edge, label %if.then.i51

land.lhs.true2.i50.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i50
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

if.then.i51:                                      ; preds = %land.lhs.true2.i50
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 724, ptr noundef nonnull @.str.9) #12
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i51, %land.lhs.true2.i50.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i48.rcu_read_unlock.exit_crit_edge, %if.end.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !207
  %24 = call i32 @llvm.read_register.i32(metadata !191) #12
  %and.i.i.i.i.i52 = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i.i.i.i52 to ptr
  %preempt_count.i.i.i.i53 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %preempt_count.i.i.i.i53 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %preempt_count.i.i.i.i53, align 4
  %sub.i.i.i = add i32 %27, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i53, align 4
  call void @rcu_read_unlock_strict() #12
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  %28 = ptrtoint ptr %fn to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %fn, align 4
  %call4 = call i32 %29(ptr noundef %tp, ptr noundef nonnull %call1, ptr noundef %arg) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  call fastcc void @__fl_put(ptr noundef nonnull %call1)
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %rcu_read_unlock.exit
  %30 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 1, ptr %arg, align 4
  %31 = call i32 @llvm.read_register.i32(metadata !191) #12
  %and.i.i.i.i.i22 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i.i22 to ptr
  %preempt_count.i.i.i.i23 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i.i23 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i.i23, align 4
  %add.i.i.i24 = add i32 %34, 1
  store volatile i32 %add.i.i.i24, ptr %preempt_count.i.i.i.i23, align 4
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !204
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i25 = call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i25, label %if.then6.for.end_crit_edge, label %land.lhs.true.i28

if.then6.for.end_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

land.lhs.true.i28:                                ; preds = %if.then6
  %call1.i26 = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i26)
  %tobool.not.i27 = icmp eq i32 %call1.i26, 0
  br i1 %tobool.not.i27, label %land.lhs.true.i28.for.end_crit_edge, label %land.lhs.true2.i30

land.lhs.true.i28.for.end_crit_edge:              ; preds = %land.lhs.true.i28
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

land.lhs.true2.i30:                               ; preds = %land.lhs.true.i28
  %.b4.i29 = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i29, label %land.lhs.true2.i30.for.end_crit_edge, label %if.then.i31

land.lhs.true2.i30.for.end_crit_edge:             ; preds = %land.lhs.true2.i30
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.then.i31:                                      ; preds = %land.lhs.true2.i30
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 696, ptr noundef nonnull @.str.6) #12
  br label %for.end

if.end7:                                          ; preds = %rcu_read_unlock.exit
  %35 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %count, align 4
  %inc = add i32 %36, 1
  store i32 %inc, ptr %count, align 4
  %37 = call i32 @llvm.read_register.i32(metadata !191) #12
  %and.i.i.i.i.i33 = and i32 %37, -16384
  %38 = inttoptr i32 %and.i.i.i.i.i33 to ptr
  %preempt_count.i.i.i.i34 = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %preempt_count.i.i.i.i34 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %preempt_count.i.i.i.i34, align 4
  %add.i.i.i35 = add i32 %40, 1
  store volatile i32 %add.i.i.i35, ptr %preempt_count.i.i.i.i34, align 4
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !204
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i36 = call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i36, label %if.end7.for.inc_crit_edge, label %land.lhs.true.i39

if.end7.for.inc_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true.i39:                                ; preds = %if.end7
  %call1.i37 = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i37)
  %tobool.not.i38 = icmp eq i32 %call1.i37, 0
  br i1 %tobool.not.i38, label %land.lhs.true.i39.for.inc_crit_edge, label %land.lhs.true2.i41

land.lhs.true.i39.for.inc_crit_edge:              ; preds = %land.lhs.true.i39
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true2.i41:                               ; preds = %land.lhs.true.i39
  %.b4.i40 = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i40, label %land.lhs.true2.i41.for.inc_crit_edge, label %if.then.i42

land.lhs.true2.i41.for.inc_crit_edge:             ; preds = %land.lhs.true2.i41
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then.i42:                                      ; preds = %land.lhs.true2.i41
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 696, ptr noundef nonnull @.str.6) #12
  br label %for.inc

for.inc:                                          ; preds = %if.then.i42, %land.lhs.true2.i41.for.inc_crit_edge, %land.lhs.true.i39.for.inc_crit_edge, %if.end7.for.inc_crit_edge, %refcount_inc_not_zero.exit.for.inc_crit_edge
  %41 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %id, align 4
  %inc9 = add i32 %42, 1
  store i32 %inc9, ptr %id, align 4
  %cmp.not = icmp eq i32 %42, -1
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.land.rhs_crit_edge

for.inc.land.rhs_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then.i31, %land.lhs.true2.i30.for.end_crit_edge, %land.lhs.true.i28.for.end_crit_edge, %if.then6.for.end_crit_edge, %land.rhs.for.end_crit_edge
  %call.i54 = call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i54, label %for.end.rcu_read_unlock.exit64_crit_edge, label %land.lhs.true.i57

for.end.rcu_read_unlock.exit64_crit_edge:         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit64

land.lhs.true.i57:                                ; preds = %for.end
  %call1.i55 = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i55)
  %tobool.not.i56 = icmp eq i32 %call1.i55, 0
  br i1 %tobool.not.i56, label %land.lhs.true.i57.rcu_read_unlock.exit64_crit_edge, label %land.lhs.true2.i59

land.lhs.true.i57.rcu_read_unlock.exit64_crit_edge: ; preds = %land.lhs.true.i57
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit64

land.lhs.true2.i59:                               ; preds = %land.lhs.true.i57
  %.b4.i58 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i58, label %land.lhs.true2.i59.rcu_read_unlock.exit64_crit_edge, label %if.then.i60

land.lhs.true2.i59.rcu_read_unlock.exit64_crit_edge: ; preds = %land.lhs.true2.i59
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit64

if.then.i60:                                      ; preds = %land.lhs.true2.i59
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 724, ptr noundef nonnull @.str.9) #12
  br label %rcu_read_unlock.exit64

rcu_read_unlock.exit64:                           ; preds = %if.then.i60, %land.lhs.true2.i59.rcu_read_unlock.exit64_crit_edge, %land.lhs.true.i57.rcu_read_unlock.exit64_crit_edge, %for.end.rcu_read_unlock.exit64_crit_edge
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !207
  %43 = call i32 @llvm.read_register.i32(metadata !191) #12
  %and.i.i.i.i.i61 = and i32 %43, -16384
  %44 = inttoptr i32 %and.i.i.i.i.i61 to ptr
  %preempt_count.i.i.i.i62 = getelementptr inbounds %struct.thread_info, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %preempt_count.i.i.i.i62 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %preempt_count.i.i.i.i62, align 4
  %sub.i.i.i63 = add i32 %46, -1
  store volatile i32 %sub.i.i.i63, ptr %preempt_count.i.i.i.i62, align 4
  call void @rcu_read_unlock_strict() #12
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  %47 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %id, align 4
  %49 = ptrtoint ptr %cookie to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %cookie, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fl_reoffload(ptr noundef %tp, i1 noundef zeroext %add, ptr noundef %cb, ptr noundef %cb_priv, ptr noundef %extack) #2 align 64 {
entry:
  %old.i.i.i.i = alloca i32, align 4
  %cls_flower = alloca %struct.flow_cls_offload, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %chain = getelementptr inbounds %struct.tcf_proto, ptr %tp, i32 0, i32 7
  %0 = ptrtoint ptr %chain to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chain, align 4
  %block1 = getelementptr inbounds %struct.tcf_chain, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %block1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %block1, align 4
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %cls_flower) #12
  %4 = call ptr @memset(ptr %cls_flower, i32 0, i32 80)
  %call = tail call i32 @rtnl_is_locked() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.rhs, label %entry.if.end31_crit_edge

entry.if.end31_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end31

land.rhs:                                         ; preds = %entry
  %.b115 = load i1, ptr @fl_reoffload.__already_done, align 1
  br i1 %.b115, label %land.rhs.if.end31_crit_edge, label %if.then, !prof !206

land.rhs.if.end31_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end31

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @fl_reoffload.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2255, i32 noundef 9, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str, i32 noundef 2255) #12
  br label %if.end31

if.end31:                                         ; preds = %if.then, %land.rhs.if.end31_crit_edge, %entry.if.end31_crit_edge
  %root.i.i = getelementptr inbounds %struct.tcf_proto, ptr %tp, i32 0, i32 1
  %lock.i = getelementptr inbounds %struct.tcf_proto, ptr %tp, i32 0, i32 8
  %5 = ptrtoint ptr %root.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %root.i.i, align 4
  call void @_raw_spin_lock(ptr noundef %lock.i) #12
  %hw_filters.i134 = getelementptr inbounds %struct.cls_fl_head, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %hw_filters.i134 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %hw_filters.i134, align 4
  %cmp.i.not.i135 = icmp eq ptr %8, %hw_filters.i134
  br i1 %cmp.i.not.i135, label %if.end31.if.then.i_crit_edge, label %if.end.i.lr.ph

if.end31.if.then.i_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

if.end.i.lr.ph:                                   ; preds = %if.end31
  %rule = getelementptr inbounds %struct.flow_cls_offload, ptr %cls_flower, i32 0, i32 3
  %protocol.i = getelementptr inbounds %struct.tcf_proto, ptr %tp, i32 0, i32 3
  %protocol1.i = getelementptr inbounds %struct.flow_cls_common_offload, ptr %cls_flower, i32 0, i32 1
  %prio.i = getelementptr inbounds %struct.tcf_proto, ptr %tp, i32 0, i32 4
  %prio2.i = getelementptr inbounds %struct.flow_cls_common_offload, ptr %cls_flower, i32 0, i32 2
  %extack3.i = getelementptr inbounds %struct.flow_cls_common_offload, ptr %cls_flower, i32 0, i32 3
  %not.add = xor i1 %add, true
  %cond = zext i1 %not.add to i32
  %command = getelementptr inbounds %struct.flow_cls_offload, ptr %cls_flower, i32 0, i32 1
  %cookie = getelementptr inbounds %struct.flow_cls_offload, ptr %cls_flower, i32 0, i32 2
  %classid75 = getelementptr inbounds %struct.flow_cls_offload, ptr %cls_flower, i32 0, i32 5
  br label %if.end.i

if.then.i:                                        ; preds = %next_flow.if.then.i_crit_edge, %if.end31.if.then.i_crit_edge
  call void @_raw_spin_unlock(ptr noundef %lock.i) #12
  br label %cleanup

if.end.i:                                         ; preds = %next_flow.if.end.i_crit_edge, %if.end.i.lr.ph
  %hw_filters.i137 = phi ptr [ %hw_filters.i134, %if.end.i.lr.ph ], [ %hw_filters.i, %next_flow.if.end.i_crit_edge ]
  %9 = phi ptr [ %6, %if.end.i.lr.ph ], [ %69, %next_flow.if.end.i_crit_edge ]
  %f.0136 = phi ptr [ null, %if.end.i.lr.ph ], [ %f.addr.1.le.i, %next_flow.if.end.i_crit_edge ]
  %tobool3.not.i = icmp eq ptr %f.0136, null
  %add.ptr.i = getelementptr %struct.cls_fl_head, ptr %9, i32 -2, i32 0, i32 5, i32 3, i32 1, i32 1
  %spec.select.i = select i1 %tobool3.not.i, ptr %add.ptr.i, ptr %f.0136
  %hw_list.i = getelementptr inbounds %struct.cls_fl_filter, ptr %spec.select.i, i32 0, i32 7
  %10 = ptrtoint ptr %hw_list.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn38.i = load ptr, ptr %hw_list.i, align 4
  %cmp.not39.i = icmp eq ptr %.pn38.i, %hw_filters.i137
  br i1 %cmp.not39.i, label %if.end.i.for.end.i_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %.pn40.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn38.i, %if.end.i.for.body.i_crit_edge ]
  br i1 %add, label %land.lhs.true.i, label %for.body.i.land.lhs.true14.i_crit_edge

for.body.i.land.lhs.true14.i_crit_edge:           ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true14.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %deleted.i = getelementptr i8, ptr %.pn40.i, i32 84
  %11 = ptrtoint ptr %deleted.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %deleted.i, align 4, !range !203
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool13.not.i = icmp eq i8 %12, 0
  br i1 %tobool13.not.i, label %land.lhs.true.i.land.lhs.true14.i_crit_edge, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

land.lhs.true.i.land.lhs.true14.i_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true14.i

land.lhs.true14.i:                                ; preds = %land.lhs.true.i.land.lhs.true14.i_crit_edge, %for.body.i.land.lhs.true14.i_crit_edge
  %refcnt.i = getelementptr i8, ptr %.pn40.i, i32 80
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i) #12
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %refcnt.i, i32 noundef 4) #12
  %13 = ptrtoint ptr %refcnt.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %refcnt.i, align 4
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, %land.lhs.true14.i
  %15 = phi i32 [ %14, %land.lhs.true14.i ], [ %asmresult3.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge ]
  %16 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %old.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i.i.i.i = icmp eq i32 %15, 0
  br i1 %tobool.not.i.i.i.i, label %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %do.cond.i.i.i.i

do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i.i.i.i

do.cond.i.i.i.i:                                  ; preds = %do.body.i.i.i.i
  %add.i.i.i.i = add i32 %15, 1
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #12
  %call.i3.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i, i32 noundef 4) #12
  %17 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %old.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #12
  br label %do.body.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i:                            ; preds = %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i
  %19 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 %18, i32 %add.i.i.i.i, ptr elementtype(i32) %refcnt.i) #12, !srcloc !205
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %19, 0
  %tobool.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i:     ; preds = %do.body.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i = extractvalue { i32, i32 } %19, 1
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i, %18
  br i1 %cmp.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, !prof !206

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i.i.i.i

if.end4.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge
  %20 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %old.i.i.i.i, align 4
  %add5.i.i.i.i = add i32 %21, 1
  %22 = or i32 %add5.i.i.i.i, %21
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %22)
  %.not.i.i.i.i = icmp sgt i32 %22, -1
  br i1 %.not.i.i.i.i, label %if.end4.i.i.i.i.refcount_inc_not_zero.exit.i_crit_edge, label %if.then10.i.i.i.i, !prof !206

if.end4.i.i.i.i.refcount_inc_not_zero.exit.i_crit_edge: ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %refcount_inc_not_zero.exit.i

if.then10.i.i.i.i:                                ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 0) #12
  %23 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %.pr.i = load i32, ptr %old.i.i.i.i, align 4
  br label %refcount_inc_not_zero.exit.i

refcount_inc_not_zero.exit.i:                     ; preds = %if.then10.i.i.i.i, %if.end4.i.i.i.i.refcount_inc_not_zero.exit.i_crit_edge
  %24 = phi i32 [ %21, %if.end4.i.i.i.i.refcount_inc_not_zero.exit.i_crit_edge ], [ %.pr.i, %if.then10.i.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool12.i.i.i.not.i = icmp eq i32 %24, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i) #12
  br i1 %tobool12.i.i.i.not.i, label %refcount_inc_not_zero.exit.i.for.inc.i_crit_edge, label %fl_get_next_hw_filter.exit

refcount_inc_not_zero.exit.i.for.inc.i_crit_edge: ; preds = %refcount_inc_not_zero.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

for.inc.i:                                        ; preds = %refcount_inc_not_zero.exit.i.for.inc.i_crit_edge, %land.lhs.true.i.for.inc.i_crit_edge
  %25 = ptrtoint ptr %.pn40.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %.pn.i = load ptr, ptr %.pn40.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %hw_filters.i137
  br i1 %cmp.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end.i.for.end.i_crit_edge
  call void @_raw_spin_unlock(ptr noundef %lock.i) #12
  br label %cleanup

fl_get_next_hw_filter.exit:                       ; preds = %refcount_inc_not_zero.exit.i
  %f.addr.1.le.i = getelementptr i8, ptr %.pn40.i, i32 -1020
  call void @_raw_spin_unlock(ptr noundef %lock.i) #12
  %tobool41.not = icmp eq ptr %f.addr.1.le.i, null
  br i1 %tobool41.not, label %fl_get_next_hw_filter.exit.cleanup_crit_edge, label %while.body

fl_get_next_hw_filter.exit.cleanup_crit_edge:     ; preds = %fl_get_next_hw_filter.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

while.body:                                       ; preds = %fl_get_next_hw_filter.exit
  %exts = getelementptr i8, ptr %.pn40.i, i32 -528
  %call42 = call i32 @tcf_exts_num_actions(ptr noundef %exts) #12
  %call43 = call ptr @flow_rule_alloc(i32 noundef %call42) #12
  %26 = ptrtoint ptr %rule to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call43, ptr %rule, align 8
  %tobool45.not = icmp eq ptr %call43, null
  br i1 %tobool45.not, label %if.then46, label %if.end47

if.then46:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  call fastcc void @__fl_put(ptr noundef nonnull %f.addr.1.le.i)
  br label %cleanup

if.end47:                                         ; preds = %while.body
  %flags = getelementptr i8, ptr %.pn40.i, i32 12
  %27 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %flags, align 4
  %29 = ptrtoint ptr %chain to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %chain, align 4
  %index.i = getelementptr inbounds %struct.tcf_chain, ptr %30, i32 0, i32 4
  %31 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %index.i, align 4
  %33 = ptrtoint ptr %cls_flower to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %cls_flower, align 8
  %34 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %protocol.i, align 4
  %36 = ptrtoint ptr %protocol1.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %35, ptr %protocol1.i, align 4
  %37 = ptrtoint ptr %prio.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %prio.i, align 4
  %shr.i = lshr i32 %38, 16
  %39 = ptrtoint ptr %prio2.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %shr.i, ptr %prio2.i, align 8
  %40 = and i32 %28, 18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %if.end47.tc_cls_common_offload_init.exit_crit_edge, label %if.then.i116

if.end47.tc_cls_common_offload_init.exit_crit_edge: ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #14
  br label %tc_cls_common_offload_init.exit

if.then.i116:                                     ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #14
  %42 = ptrtoint ptr %extack3.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %extack, ptr %extack3.i, align 4
  br label %tc_cls_common_offload_init.exit

tc_cls_common_offload_init.exit:                  ; preds = %if.then.i116, %if.end47.tc_cls_common_offload_init.exit_crit_edge
  %43 = ptrtoint ptr %command to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %cond, ptr %command, align 8
  %44 = ptrtoint ptr %f.addr.1.le.i to i32
  %45 = ptrtoint ptr %cookie to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %cookie, align 4
  %46 = ptrtoint ptr %f.addr.1.le.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %f.addr.1.le.i, align 4
  %dissector = getelementptr inbounds %struct.fl_flow_mask, ptr %47, i32 0, i32 6
  %48 = ptrtoint ptr %call43 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %dissector, ptr %call43, align 8
  %49 = load ptr, ptr %f.addr.1.le.i, align 4
  %50 = ptrtoint ptr %rule to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %rule, align 8
  %mask54 = getelementptr inbounds %struct.flow_match, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %mask54 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %49, ptr %mask54, align 4
  %mkey = getelementptr i8, ptr %.pn40.i, i32 -1012
  %53 = load ptr, ptr %rule, align 8
  %key57 = getelementptr inbounds %struct.flow_match, ptr %53, i32 0, i32 2
  %54 = ptrtoint ptr %key57 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %mkey, ptr %key57, align 8
  %55 = load ptr, ptr %rule, align 8
  %action = getelementptr inbounds %struct.flow_rule, ptr %55, i32 0, i32 1
  %call60 = call i32 @tc_setup_offload_action(ptr noundef %action, ptr noundef %exts) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %if.end74, label %if.then62

if.then62:                                        ; preds = %tc_cls_common_offload_init.exit
  %56 = ptrtoint ptr %rule to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %rule, align 8
  call void @kfree(ptr noundef %57) #12
  %58 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %flags, align 4
  %and.i = and i32 %59, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.then62.next_flow_crit_edge, label %do.body67

if.then62.next_flow_crit_edge:                    ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #14
  br label %next_flow

do.body67:                                        ; preds = %if.then62
  call void @do_trace_netlink_extack(ptr noundef nonnull @fl_reoffload.__msg) #12
  %tobool68.not = icmp eq ptr %extack, null
  br i1 %tobool68.not, label %do.body67.if.end70_crit_edge, label %if.then69

do.body67.if.end70_crit_edge:                     ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end70

if.then69:                                        ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #14
  %60 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr @fl_reoffload.__msg, ptr %extack, align 4
  br label %if.end70

if.end70:                                         ; preds = %if.then69, %do.body67.if.end70_crit_edge
  call fastcc void @__fl_put(ptr noundef nonnull %f.addr.1.le.i)
  br label %cleanup

if.end74:                                         ; preds = %tc_cls_common_offload_init.exit
  %classid = getelementptr i8, ptr %.pn40.i, i32 -496
  %61 = ptrtoint ptr %classid to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %classid, align 4
  %63 = ptrtoint ptr %classid75 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %classid75, align 8
  %in_hw_count = getelementptr i8, ptr %.pn40.i, i32 16
  %call78 = call i32 @tc_setup_cb_reoffload(ptr noundef %3, ptr noundef %tp, i1 noundef zeroext %add, ptr noundef %cb, i32 noundef 2, ptr noundef nonnull %cls_flower, ptr noundef %cb_priv, ptr noundef %flags, ptr noundef %in_hw_count) #12
  %64 = ptrtoint ptr %rule to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %rule, align 8
  %action80 = getelementptr inbounds %struct.flow_rule, ptr %65, i32 0, i32 1
  call void @tc_cleanup_offload_action(ptr noundef %action80) #12
  %66 = ptrtoint ptr %rule to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %rule, align 8
  call void @kfree(ptr noundef %67) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %tobool82.not = icmp eq i32 %call78, 0
  br i1 %tobool82.not, label %if.end74.next_flow_crit_edge, label %if.then83

if.end74.next_flow_crit_edge:                     ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #14
  br label %next_flow

if.then83:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #14
  call fastcc void @__fl_put(ptr noundef nonnull %f.addr.1.le.i)
  br label %cleanup

next_flow:                                        ; preds = %if.end74.next_flow_crit_edge, %if.then62.next_flow_crit_edge
  call fastcc void @__fl_put(ptr noundef nonnull %f.addr.1.le.i)
  %68 = ptrtoint ptr %root.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile ptr, ptr %root.i.i, align 4
  call void @_raw_spin_lock(ptr noundef %lock.i) #12
  %hw_filters.i = getelementptr inbounds %struct.cls_fl_head, ptr %69, i32 0, i32 3
  %70 = ptrtoint ptr %hw_filters.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load volatile ptr, ptr %hw_filters.i, align 4
  %cmp.i.not.i = icmp eq ptr %71, %hw_filters.i
  br i1 %cmp.i.not.i, label %next_flow.if.then.i_crit_edge, label %next_flow.if.end.i_crit_edge

next_flow.if.end.i_crit_edge:                     ; preds = %next_flow
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

next_flow.if.then.i_crit_edge:                    ; preds = %next_flow
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

cleanup:                                          ; preds = %if.then83, %if.end70, %if.then46, %fl_get_next_hw_filter.exit.cleanup_crit_edge, %for.end.i, %if.then.i
  %retval.0 = phi i32 [ %call60, %if.end70 ], [ %call78, %if.then83 ], [ -12, %if.then46 ], [ 0, %if.then.i ], [ 0, %for.end.i ], [ 0, %fl_get_next_hw_filter.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %cls_flower) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fl_hw_add(ptr noundef %tp, ptr nocapture noundef readonly %type_data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %cookie = getelementptr inbounds %struct.flow_cls_offload, ptr %type_data, i32 0, i32 2
  %0 = ptrtoint ptr %cookie to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cookie, align 4
  %2 = inttoptr i32 %1 to ptr
  %root.i = getelementptr inbounds %struct.tcf_proto, ptr %tp, i32 0, i32 1
  %3 = ptrtoint ptr %root.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %root.i, align 4
  %lock = getelementptr inbounds %struct.tcf_proto, ptr %tp, i32 0, i32 8
  tail call void @_raw_spin_lock(ptr noundef %lock) #12
  %hw_list = getelementptr inbounds %struct.cls_fl_filter, ptr %2, i32 0, i32 7
  %hw_filters = getelementptr inbounds %struct.cls_fl_head, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %hw_filters to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hw_filters, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %hw_list, ptr noundef %hw_filters, ptr noundef %6) #12
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add.exit_crit_edge

entry.list_add.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %hw_list, ptr %prev1.i.i, align 4
  %8 = ptrtoint ptr %hw_list to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %6, ptr %hw_list, align 4
  %prev3.i.i = getelementptr inbounds %struct.cls_fl_filter, ptr %2, i32 0, i32 7, i32 1
  %9 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %hw_filters, ptr %prev3.i.i, align 4
  %10 = ptrtoint ptr %hw_filters to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %hw_list, ptr %hw_filters, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %entry.list_add.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fl_hw_del(ptr noundef %tp, ptr nocapture noundef readonly %type_data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %cookie = getelementptr inbounds %struct.flow_cls_offload, ptr %type_data, i32 0, i32 2
  %0 = ptrtoint ptr %cookie to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cookie, align 4
  %2 = inttoptr i32 %1 to ptr
  %lock = getelementptr inbounds %struct.tcf_proto, ptr %tp, i32 0, i32 8
  tail call void @_raw_spin_lock(ptr noundef %lock) #12
  %hw_list = getelementptr inbounds %struct.cls_fl_filter, ptr %2, i32 0, i32 7
  %3 = ptrtoint ptr %hw_list to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %hw_list, align 4
  %cmp.i.not = icmp eq ptr %4, %hw_list
  br i1 %cmp.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %hw_list) #12
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del_init.exit_crit_edge

if.then.list_del_init.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.cls_fl_filter, ptr %2, i32 0, i32 7, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i, align 4
  %7 = ptrtoint ptr %hw_list to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hw_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then.list_del_init.exit_crit_edge
  %11 = ptrtoint ptr %hw_list to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %hw_list, ptr %hw_list, align 4
  %prev.i3.i = getelementptr inbounds %struct.cls_fl_filter, ptr %2, i32 0, i32 7, i32 1
  %12 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %hw_list, ptr %prev.i3.i, align 4
  br label %if.end

if.end:                                           ; preds = %list_del_init.exit, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fl_bind_class(ptr noundef %fh, i32 noundef %classid, i32 noundef %cl, ptr noundef %q, i32 noundef %base) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %fh, null
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %land.lhs.true

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

land.lhs.true:                                    ; preds = %entry
  %res = getelementptr inbounds %struct.cls_fl_filter, ptr %fh, i32 0, i32 4
  %classid1 = getelementptr inbounds %struct.cls_fl_filter, ptr %fh, i32 0, i32 4, i32 0, i32 0, i32 1
  %0 = ptrtoint ptr %classid1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %classid1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %classid)
  %cmp = icmp eq i32 %1, %classid
  br i1 %cmp, label %if.then, label %land.lhs.true.if.end6_crit_edge

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cl)
  %tobool2.not = icmp eq i32 %cl, 0
  br i1 %tobool2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.then
  %ops.i = getelementptr inbounds %struct.Qdisc, ptr %q, i32 0, i32 4
  %2 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops.i, align 16
  %cl_ops.i = getelementptr inbounds %struct.Qdisc_ops, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %cl_ops.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cl_ops.i, align 4
  %bind_tcf.i = getelementptr inbounds %struct.Qdisc_class_ops, ptr %5, i32 0, i32 10
  %6 = ptrtoint ptr %bind_tcf.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bind_tcf.i, align 4
  %8 = ptrtoint ptr %classid1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %classid1, align 4
  %call.i = tail call i32 %7(ptr noundef %q, i32 noundef %base, i32 noundef %9) #12
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %res, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !209
  tail call void @llvm.prefetch.p0(ptr %res, i32 1, i32 3, i32 1) #12
  %10 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 %call.i, ptr %res) #12, !srcloc !210
  %asmresult.i.i.i = extractvalue { i32, i32 } %10, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !211
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %tobool.not.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %tobool.not.i, label %if.then3.if.end6_crit_edge, label %if.then3.if.end6.sink.split_crit_edge

if.then3.if.end6.sink.split_crit_edge:            ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6.sink.split

if.then3.if.end6_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

if.else:                                          ; preds = %if.then
  %call.i.i.i11 = tail call zeroext i1 @__kasan_check_write(ptr noundef %res, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !209
  tail call void @llvm.prefetch.p0(ptr %res, i32 1, i32 3, i32 1) #12
  %11 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %res) #12, !srcloc !210
  %asmresult.i.i.i12 = extractvalue { i32, i32 } %11, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !211
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i12)
  %cmp.not.i = icmp eq i32 %asmresult.i.i.i12, 0
  br i1 %cmp.not.i, label %if.else.if.end6_crit_edge, label %if.then.i16

if.else.if.end6_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

if.then.i16:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %ops.i13 = getelementptr inbounds %struct.Qdisc, ptr %q, i32 0, i32 4
  br label %if.end6.sink.split

if.end6.sink.split:                               ; preds = %if.then.i16, %if.then3.if.end6.sink.split_crit_edge
  %ops.i13.sink = phi ptr [ %ops.i13, %if.then.i16 ], [ %ops.i, %if.then3.if.end6.sink.split_crit_edge ]
  %asmresult.i.i.i12.sink = phi i32 [ %asmresult.i.i.i12, %if.then.i16 ], [ %asmresult.i.i.i, %if.then3.if.end6.sink.split_crit_edge ]
  %12 = ptrtoint ptr %ops.i13.sink to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops.i13.sink, align 16
  %cl_ops.i14 = getelementptr inbounds %struct.Qdisc_ops, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %cl_ops.i14 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cl_ops.i14, align 4
  %unbind_tcf.i15 = getelementptr inbounds %struct.Qdisc_class_ops, ptr %15, i32 0, i32 11
  %16 = ptrtoint ptr %unbind_tcf.i15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %unbind_tcf.i15, align 4
  tail call void %17(ptr noundef %q, i32 noundef %asmresult.i.i.i12.sink) #12
  br label %if.end6

if.end6:                                          ; preds = %if.end6.sink.split, %if.else.if.end6_crit_edge, %if.then3.if.end6_crit_edge, %land.lhs.true.if.end6_crit_edge, %entry.if.end6_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @fl_tmplt_create(ptr noundef %net, ptr noundef %chain, ptr nocapture noundef readonly %tca, ptr noundef %extack) #2 align 64 {
entry:
  %cls_flower.i = alloca %struct.flow_cls_offload, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr ptr, ptr %tca, i32 2
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 408) #15
  %tobool2.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %4, align 2
  %conv.i.i = zext i16 %6 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -4
  %call2.i = tail call i32 @__nla_parse(ptr noundef nonnull %call7.i.i.i, i32 noundef 101, ptr noundef %add.ptr.i.i, i32 noundef %sub.i.i, ptr noundef nonnull @fl_policy, i32 noundef 0, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool8.not = icmp eq i32 %call2.i, 0
  br i1 %tobool8.not, label %if.end10, label %if.end5.errout_tb_crit_edge

if.end5.errout_tb_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %errout_tb

if.end10:                                         ; preds = %if.end5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 1032) #15
  %tobool12.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool12.not, label %if.end10.errout_tb_crit_edge, label %if.end14

if.end10.errout_tb_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %errout_tb

if.end14:                                         ; preds = %if.end10
  %chain15 = getelementptr inbounds %struct.fl_flow_tmplt, ptr %call7.i.i, i32 0, i32 3
  %8 = ptrtoint ptr %chain15 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %chain, ptr %chain15, align 4
  %mask = getelementptr inbounds %struct.fl_flow_tmplt, ptr %call7.i.i, i32 0, i32 1
  %call16 = tail call fastcc i32 @fl_set_key(ptr noundef %net, ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull %call7.i.i, ptr noundef %mask, ptr noundef %extack)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.end14.errout_tmplt_crit_edge

if.end14.errout_tmplt_crit_edge:                  ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %errout_tmplt

if.end19:                                         ; preds = %if.end14
  %dissector = getelementptr inbounds %struct.fl_flow_tmplt, ptr %call7.i.i, i32 0, i32 2
  tail call fastcc void @fl_init_dissector(ptr noundef %dissector, ptr noundef %mask)
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %cls_flower.i) #12
  %9 = call ptr @memset(ptr %cls_flower.i, i32 0, i32 80)
  %block1.i = getelementptr inbounds %struct.tcf_chain, ptr %chain, i32 0, i32 3
  %10 = ptrtoint ptr %block1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %block1.i, align 4
  %call.i = tail call ptr @flow_rule_alloc(i32 noundef 0) #12
  %rule.i = getelementptr inbounds %struct.flow_cls_offload, ptr %cls_flower.i, i32 0, i32 3
  %12 = ptrtoint ptr %rule.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i, ptr %rule.i, align 8
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %fl_hw_create_tmplt.exit, label %if.end24

fl_hw_create_tmplt.exit:                          ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %cls_flower.i) #12
  br label %errout_tmplt

if.end24:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  %index.i = getelementptr inbounds %struct.tcf_chain, ptr %chain, i32 0, i32 4
  %13 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %index.i, align 4
  %15 = ptrtoint ptr %cls_flower.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %cls_flower.i, align 8
  %command.i = getelementptr inbounds %struct.flow_cls_offload, ptr %cls_flower.i, i32 0, i32 1
  %16 = ptrtoint ptr %command.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 3, ptr %command.i, align 8
  %17 = ptrtoint ptr %call7.i.i to i32
  %cookie.i = getelementptr inbounds %struct.flow_cls_offload, ptr %cls_flower.i, i32 0, i32 2
  %18 = ptrtoint ptr %cookie.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %cookie.i, align 4
  %19 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %dissector, ptr %call.i, align 8
  %20 = ptrtoint ptr %rule.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rule.i, align 8
  %mask7.i = getelementptr inbounds %struct.flow_match, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %mask7.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %mask, ptr %mask7.i, align 4
  %23 = load ptr, ptr %rule.i, align 8
  %key.i = getelementptr inbounds %struct.flow_match, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %key.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call7.i.i, ptr %key.i, align 8
  %call10.i = call i32 @tc_setup_cb_call(ptr noundef %11, i32 noundef 2, ptr noundef nonnull %cls_flower.i, i1 noundef zeroext false, i1 noundef zeroext true) #12
  %25 = ptrtoint ptr %rule.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rule.i, align 8
  call void @kfree(ptr noundef %26) #12
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %cls_flower.i) #12
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #12
  br label %cleanup

errout_tmplt:                                     ; preds = %fl_hw_create_tmplt.exit, %if.end14.errout_tmplt_crit_edge
  %err.0 = phi i32 [ %call16, %if.end14.errout_tmplt_crit_edge ], [ -12, %fl_hw_create_tmplt.exit ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %errout_tb

errout_tb:                                        ; preds = %errout_tmplt, %if.end10.errout_tb_crit_edge, %if.end5.errout_tb_crit_edge
  %err.1 = phi i32 [ %call2.i, %if.end5.errout_tb_crit_edge ], [ %err.0, %errout_tmplt ], [ -12, %if.end10.errout_tb_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #12
  %27 = inttoptr i32 %err.1 to ptr
  br label %cleanup

cleanup:                                          ; preds = %errout_tb, %if.end24, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %27, %errout_tb ], [ %call7.i.i, %if.end24 ], [ inttoptr (i32 -22 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -105 to ptr), %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fl_tmplt_destroy(ptr noundef %tmplt_priv) #2 align 64 {
entry:
  %cls_flower.i = alloca %struct.flow_cls_offload, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %chain = getelementptr inbounds %struct.fl_flow_tmplt, ptr %tmplt_priv, i32 0, i32 3
  %0 = ptrtoint ptr %chain to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chain, align 4
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %cls_flower.i) #12
  %2 = call ptr @memset(ptr %cls_flower.i, i32 0, i32 80)
  %block1.i = getelementptr inbounds %struct.tcf_chain, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %block1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %block1.i, align 4
  %index.i = getelementptr inbounds %struct.tcf_chain, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %index.i, align 4
  %7 = ptrtoint ptr %cls_flower.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %cls_flower.i, align 8
  %command.i = getelementptr inbounds %struct.flow_cls_offload, ptr %cls_flower.i, i32 0, i32 1
  %8 = ptrtoint ptr %command.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 4, ptr %command.i, align 8
  %9 = ptrtoint ptr %tmplt_priv to i32
  %cookie.i = getelementptr inbounds %struct.flow_cls_offload, ptr %cls_flower.i, i32 0, i32 2
  %10 = ptrtoint ptr %cookie.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %cookie.i, align 4
  %call.i = call i32 @tc_setup_cb_call(ptr noundef %4, i32 noundef 2, ptr noundef nonnull %cls_flower.i, i1 noundef zeroext false, i1 noundef zeroext true) #12
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %cls_flower.i) #12
  call void @kfree(ptr noundef %tmplt_priv) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fl_dump(ptr noundef %net, ptr noundef %tp, ptr noundef %fh, ptr noundef %skb, ptr nocapture noundef writeonly %t, i1 noundef zeroext %rtnl_held) #2 align 64 {
entry:
  %tmp.i82 = alloca i32, align 4
  %tmp.i80 = alloca i32, align 4
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %fh, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %handle = getelementptr inbounds %struct.cls_fl_filter, ptr %fh, i32 0, i32 8
  %2 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %handle, align 4
  %tcm_handle = getelementptr inbounds %struct.tcmsg, ptr %t, i32 0, i32 4
  %4 = ptrtoint ptr %tcm_handle to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %tcm_handle, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %5 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tail.i.i, align 8
  %call1.i = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 0, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  %tobool1.not85 = icmp eq ptr %6, null
  %tobool1.not = select i1 %cmp.i, i1 true, i1 %tobool1.not85
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %lock = getelementptr inbounds %struct.tcf_proto, ptr %tp, i32 0, i32 8
  tail call void @_raw_spin_lock(ptr noundef %lock) #12
  %classid = getelementptr inbounds %struct.cls_fl_filter, ptr %fh, i32 0, i32 4, i32 0, i32 0, i32 1
  %7 = ptrtoint ptr %classid to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %classid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool4.not = icmp eq i32 %8, 0
  br i1 %tobool4.not, label %if.end3.if.end10_crit_edge, label %land.lhs.true

if.end3.if.end10_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

land.lhs.true:                                    ; preds = %if.end3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #12
  %9 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %tmp.i, align 4
  %call.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %tmp.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool8.not = icmp eq i32 %call.i, 0
  br i1 %tobool8.not, label %land.lhs.true.if.end10_crit_edge, label %land.lhs.true.nla_put_failure_locked_crit_edge

land.lhs.true.nla_put_failure_locked_crit_edge:   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %nla_put_failure_locked

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

if.end10:                                         ; preds = %land.lhs.true.if.end10_crit_edge, %if.end3.if.end10_crit_edge
  %key11 = getelementptr inbounds %struct.cls_fl_filter, ptr %fh, i32 0, i32 5
  %10 = ptrtoint ptr %fh to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fh, align 4
  %flags = getelementptr inbounds %struct.cls_fl_filter, ptr %fh, i32 0, i32 9
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags, align 4
  %and.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  %call16 = call fastcc i32 @fl_dump_key(ptr noundef %skb, ptr noundef %net, ptr noundef %key11, ptr noundef %11)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.end10.nla_put_failure_locked_crit_edge

if.end10.nla_put_failure_locked_crit_edge:        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %nla_put_failure_locked

if.end19:                                         ; preds = %if.end10
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool21.not = icmp eq i32 %15, 0
  br i1 %tobool21.not, label %if.end19.if.end27_crit_edge, label %land.lhs.true22

if.end19.if.end27_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27

land.lhs.true22:                                  ; preds = %if.end19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i80) #12
  %16 = ptrtoint ptr %tmp.i80 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %tmp.i80, align 4
  %call.i81 = call i32 @nla_put(ptr noundef %skb, i32 noundef 22, i32 noundef 4, ptr noundef nonnull %tmp.i80) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i80) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i81)
  %tobool25.not = icmp eq i32 %call.i81, 0
  br i1 %tobool25.not, label %land.lhs.true22.if.end27_crit_edge, label %land.lhs.true22.nla_put_failure_locked_crit_edge

land.lhs.true22.nla_put_failure_locked_crit_edge: ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #14
  br label %nla_put_failure_locked

land.lhs.true22.if.end27_crit_edge:               ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27

if.end27:                                         ; preds = %land.lhs.true22.if.end27_crit_edge, %if.end19.if.end27_crit_edge
  call void @_raw_spin_unlock(ptr noundef %lock) #12
  br i1 %tobool.i.not, label %if.then30, label %if.end27.if.end32_crit_edge

if.end27.if.end32_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end32

if.then30:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  call fastcc void @fl_hw_update_stats(ptr noundef %tp, ptr noundef nonnull %fh, i1 noundef zeroext %rtnl_held)
  br label %if.end32

if.end32:                                         ; preds = %if.then30, %if.end27.if.end32_crit_edge
  %in_hw_count = getelementptr inbounds %struct.cls_fl_filter, ptr %fh, i32 0, i32 10
  %17 = ptrtoint ptr %in_hw_count to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %in_hw_count, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i82) #12
  %19 = ptrtoint ptr %tmp.i82 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %tmp.i82, align 4
  %call.i83 = call i32 @nla_put(ptr noundef %skb, i32 noundef 86, i32 noundef 4, ptr noundef nonnull %tmp.i82) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i82) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i83)
  %tobool34.not = icmp eq i32 %call.i83, 0
  br i1 %tobool34.not, label %if.end36, label %if.end32.if.then.i.i_crit_edge

if.end32.if.then.i.i_crit_edge:                   ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i

if.end36:                                         ; preds = %if.end32
  %exts = getelementptr inbounds %struct.cls_fl_filter, ptr %fh, i32 0, i32 3
  %call37 = call i32 @tcf_exts_dump(ptr noundef %skb, ptr noundef %exts) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end40, label %if.end36.if.then.i.i_crit_edge

if.end36.if.then.i.i_crit_edge:                   ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i

if.end40:                                         ; preds = %if.end36
  %20 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %21 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %6 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %22 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %conv.i, ptr %6, align 2
  %call43 = call i32 @tcf_exts_dump_stats(ptr noundef %skb, ptr noundef %exts) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %cmp = icmp slt i32 %call43, 0
  br i1 %cmp, label %if.end40.if.then.i.i_crit_edge, label %if.end45

if.end40.if.then.i.i_crit_edge:                   ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i

if.end45:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #14
  %len46 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %23 = ptrtoint ptr %len46 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %len46, align 4
  br label %cleanup

nla_put_failure_locked:                           ; preds = %land.lhs.true22.nla_put_failure_locked_crit_edge, %if.end10.nla_put_failure_locked_crit_edge, %land.lhs.true.nla_put_failure_locked_crit_edge
  call void @_raw_spin_unlock(ptr noundef %lock) #12
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %nla_put_failure_locked, %if.end40.if.then.i.i_crit_edge, %if.end36.if.then.i.i_crit_edge, %if.end32.if.then.i.i_crit_edge
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %25 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %data.i.i, align 4
  %cmp.i.i = icmp ugt ptr %26, %6
  br i1 %cmp.i.i, label %do.end.i.i, label %if.then.i.i.if.end.i.i_crit_edge, !prof !212

if.then.i.i.if.end.i.i_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.55, i32 noundef 991, i32 noundef 9, ptr noundef null) #12
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end.i.i, %if.then.i.i.if.end.i.i_crit_edge
  %27 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %6 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %28 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %if.end45, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %24, %if.end45 ], [ %1, %if.then ], [ -1, %if.end.cleanup_crit_edge ], [ -1, %if.end.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fl_terse_dump(ptr nocapture noundef readnone %net, ptr noundef %tp, ptr noundef %fh, ptr noundef %skb, ptr nocapture noundef writeonly %t, i1 noundef zeroext %rtnl_held) #2 align 64 {
entry:
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %fh, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %handle = getelementptr inbounds %struct.cls_fl_filter, ptr %fh, i32 0, i32 8
  %2 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %handle, align 4
  %tcm_handle = getelementptr inbounds %struct.tcmsg, ptr %t, i32 0, i32 4
  %4 = ptrtoint ptr %tcm_handle to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %tcm_handle, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %5 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tail.i.i, align 8
  %call1.i = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 0, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  %tobool1.not45 = icmp eq ptr %6, null
  %tobool1.not = select i1 %cmp.i, i1 true, i1 %tobool1.not45
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %lock = getelementptr inbounds %struct.tcf_proto, ptr %tp, i32 0, i32 8
  tail call void @_raw_spin_lock(ptr noundef %lock) #12
  %flags = getelementptr inbounds %struct.cls_fl_filter, ptr %fh, i32 0, i32 9
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags, align 4
  %and.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool7.not = icmp eq i32 %8, 0
  br i1 %tobool7.not, label %if.end3.if.end12_crit_edge, label %land.lhs.true

if.end3.if.end12_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

land.lhs.true:                                    ; preds = %if.end3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #12
  %9 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %tmp.i, align 4
  %call.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 22, i32 noundef 4, ptr noundef nonnull %tmp.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool10.not = icmp eq i32 %call.i, 0
  br i1 %tobool10.not, label %land.lhs.true.if.end12_crit_edge, label %nla_put_failure_locked

land.lhs.true.if.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

if.end12:                                         ; preds = %land.lhs.true.if.end12_crit_edge, %if.end3.if.end12_crit_edge
  call void @_raw_spin_unlock(ptr noundef %lock) #12
  br i1 %tobool.i.not, label %if.then15, label %if.end12.if.end17_crit_edge

if.end12.if.end17_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  call fastcc void @fl_hw_update_stats(ptr noundef %tp, ptr noundef nonnull %fh, i1 noundef zeroext %rtnl_held)
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %if.end12.if.end17_crit_edge
  %exts = getelementptr inbounds %struct.cls_fl_filter, ptr %fh, i32 0, i32 3
  %call18 = call i32 @tcf_exts_terse_dump(ptr noundef %skb, ptr noundef %exts) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %if.end17.if.then.i.i_crit_edge

if.end17.if.then.i.i_crit_edge:                   ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i

if.end21:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  %10 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %11 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %6 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %12 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv.i, ptr %6, align 2
  %len23 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %13 = ptrtoint ptr %len23 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %len23, align 4
  br label %cleanup

nla_put_failure_locked:                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  call void @_raw_spin_unlock(ptr noundef %lock) #12
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %nla_put_failure_locked, %if.end17.if.then.i.i_crit_edge
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %15 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data.i.i, align 4
  %cmp.i.i = icmp ugt ptr %16, %6
  br i1 %cmp.i.i, label %do.end.i.i, label %if.then.i.i.if.end.i.i_crit_edge, !prof !212

if.then.i.i.if.end.i.i_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.55, i32 noundef 991, i32 noundef 9, ptr noundef null) #12
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end.i.i, %if.then.i.i.if.end.i.i_crit_edge
  %17 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %6 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %18 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %if.end21, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %14, %if.end21 ], [ %1, %if.then ], [ -1, %if.end.cleanup_crit_edge ], [ -1, %if.end.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fl_tmplt_dump(ptr noundef %skb, ptr noundef %net, ptr noundef %tmplt_priv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %0 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tail.i.i, align 8
  %call1.i = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 0, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  %tobool.not18 = icmp eq ptr %1, null
  %tobool.not = select i1 %cmp.i, i1 true, i1 %tobool.not18
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %mask1 = getelementptr inbounds %struct.fl_flow_tmplt, ptr %tmplt_priv, i32 0, i32 1
  %call2 = tail call fastcc i32 @fl_dump_key(ptr noundef %skb, ptr noundef %net, ptr noundef %tmplt_priv, ptr noundef %mask1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.then.i.i

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %2 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %3 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %1 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %conv.i, ptr %1, align 2
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %5 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %len, align 4
  br label %cleanup

if.then.i.i:                                      ; preds = %if.end
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %7 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data.i.i, align 4
  %cmp.i.i = icmp ugt ptr %8, %1
  br i1 %cmp.i.i, label %do.end.i.i, label %if.then.i.i.if.end.i.i_crit_edge, !prof !212

if.then.i.i.if.end.i.i_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.55, i32 noundef 991, i32 noundef 9, ptr noundef null) #12
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end.i.i, %if.then.i.i.if.end.i.i_crit_edge
  %9 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %1 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %10 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  tail call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %if.end5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %6, %if.end5 ], [ -90, %if.end.i.i ], [ -90, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_bh_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_flow_dissect_meta(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_flow_dissect_tunnel_info(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_flow_dissect_ct(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_flow_dissect_hash(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @fl_mask_lookup(ptr noundef %mask, ptr nocapture noundef readonly %key) unnamed_addr #4 align 64 {
entry:
  %mkey = alloca %struct.fl_flow_key, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 484, ptr nonnull %mkey) #12
  %0 = call ptr @memset(ptr %mkey, i32 255, i32 484)
  %range.i.i = getelementptr inbounds %struct.fl_flow_mask, ptr %mask, i32 0, i32 1
  %1 = ptrtoint ptr %range.i.i to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %range.i.i, align 4
  %end.i.i = getelementptr inbounds %struct.fl_flow_mask, ptr %mask, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %end.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %4, i16 %2)
  %cmp22.not.i = icmp eq i16 %4, %2
  br i1 %cmp22.not.i, label %entry.fl_set_masked_key.exit_crit_edge, label %for.body.preheader.i

entry.fl_set_masked_key.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %fl_set_masked_key.exit

for.body.preheader.i:                             ; preds = %entry
  %conv.i.i = zext i16 %2 to i32
  %add.ptr.i18.i = getelementptr i8, ptr %mkey, i32 %conv.i.i
  %add.ptr.i15.i = getelementptr i8, ptr %mask, i32 %conv.i.i
  %add.ptr.i.i = getelementptr i8, ptr %key, i32 %conv.i.i
  %sub.i.i = sub i16 %4, %2
  %conv.i = zext i16 %sub.i.i to i32
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.preheader.i
  %i.026.i = phi i32 [ %add.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %lmkey.025.i = phi ptr [ %incdec.ptr7.i, %for.body.i.for.body.i_crit_edge ], [ %add.ptr.i18.i, %for.body.preheader.i ]
  %lmask.024.i = phi ptr [ %incdec.ptr6.i, %for.body.i.for.body.i_crit_edge ], [ %add.ptr.i15.i, %for.body.preheader.i ]
  %lkey.023.i = phi ptr [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ], [ %add.ptr.i.i, %for.body.preheader.i ]
  %incdec.ptr.i = getelementptr i32, ptr %lkey.023.i, i32 1
  %5 = ptrtoint ptr %lkey.023.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %lkey.023.i, align 4
  %incdec.ptr6.i = getelementptr i32, ptr %lmask.024.i, i32 1
  %7 = ptrtoint ptr %lmask.024.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %lmask.024.i, align 4
  %and.i = and i32 %8, %6
  %incdec.ptr7.i = getelementptr i32, ptr %lmkey.025.i, i32 1
  %9 = ptrtoint ptr %lmkey.025.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %and.i, ptr %lmkey.025.i, align 4
  %add.i = add nuw nsw i32 %i.026.i, 4
  %cmp.i = icmp ult i32 %add.i, %conv.i
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.fl_set_masked_key.exit_crit_edge

for.body.i.fl_set_masked_key.exit_crit_edge:      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fl_set_masked_key.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

fl_set_masked_key.exit:                           ; preds = %for.body.i.fl_set_masked_key.exit_crit_edge, %entry.fl_set_masked_key.exit_crit_edge
  %flags = getelementptr inbounds %struct.fl_flow_mask, ptr %mask, i32 0, i32 2
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags, align 4
  %and = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %fl_set_masked_key.exit
  %call.i = tail call i32 @rcu_read_lock_any_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.then.do.end.i_crit_edge

if.then.do.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %if.then
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true3.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %.b39.i = load i1, ptr @fl_lookup_range.__warned, align 1
  br i1 %.b39.i, label %land.lhs.true3.i.do.end.i_crit_edge, label %if.then.i

land.lhs.true3.i.do.end.i_crit_edge:              ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

if.then.i:                                        ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @fl_lookup_range.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 268, ptr noundef nonnull @.str.3) #12
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %land.lhs.true3.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %if.then.do.end.i_crit_edge
  %filters.i = getelementptr inbounds %struct.fl_flow_mask, ptr %mask, i32 0, i32 7
  %12 = ptrtoint ptr %filters.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn60.i = load volatile ptr, ptr %filters.i, align 4
  %cmp.not62.i = icmp eq ptr %.pn60.i, %filters.i
  br i1 %cmp.not62.i, label %do.end.i.cleanup_crit_edge, label %for.body.lr.ph.i

do.end.i.cleanup_crit_edge:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %do.end.i
  %tp_range16.i.i = getelementptr inbounds %struct.fl_flow_key, ptr %key, i32 0, i32 19
  %dst17.i.i = getelementptr inbounds %struct.anon.165, ptr %tp_range16.i.i, i32 0, i32 1
  %tp_range32.i.i = getelementptr inbounds %struct.fl_flow_key, ptr %mkey, i32 0, i32 19
  %dst34.i.i = getelementptr inbounds %struct.anon.165, ptr %tp_range32.i.i, i32 0, i32 1
  %tp_max40.i.i = getelementptr inbounds %struct.fl_flow_key, ptr %mkey, i32 0, i32 19, i32 0, i32 1
  %dst41.i.i = getelementptr inbounds %struct.anon.165, ptr %tp_max40.i.i, i32 0, i32 1
  br label %for.body.i6

for.body.i6:                                      ; preds = %for.inc.i.for.body.i6_crit_edge, %for.body.lr.ph.i
  %.pn63.i = phi ptr [ %.pn60.i, %for.body.lr.ph.i ], [ %.pn.i, %for.inc.i.for.body.i6_crit_edge ]
  %filter.064.i = getelementptr i8, ptr %.pn63.i, i32 -1012
  %13 = ptrtoint ptr %filter.064.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %filter.064.i, align 4
  %tp_range.i.i = getelementptr inbounds %struct.fl_flow_key, ptr %14, i32 0, i32 19
  %dst.i.i = getelementptr inbounds %struct.anon.165, ptr %tp_range.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %dst.i.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %dst.i.i, align 2
  %tp_range7.i.i = getelementptr i8, ptr %.pn63.i, i32 -36
  %dst9.i.i = getelementptr i8, ptr %.pn63.i, i32 -34
  %17 = ptrtoint ptr %dst9.i.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %dst9.i.i, align 2
  %tp_max12.i.i = getelementptr i8, ptr %.pn63.i, i32 -32
  %dst13.i.i = getelementptr i8, ptr %.pn63.i, i32 -30
  %19 = ptrtoint ptr %dst13.i.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %dst13.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %tobool.not.i.i = icmp eq i16 %16, 0
  br i1 %tobool.not.i.i, label %for.body.i6.if.end12.i_crit_edge, label %land.lhs.true.i.i

for.body.i6.if.end12.i_crit_edge:                 ; preds = %for.body.i6
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12.i

land.lhs.true.i.i:                                ; preds = %for.body.i6
  %tp_max.i.i = getelementptr inbounds %struct.fl_flow_key, ptr %14, i32 0, i32 19, i32 0, i32 1
  %dst5.i.i = getelementptr inbounds %struct.anon.165, ptr %tp_max.i.i, i32 0, i32 1
  %21 = ptrtoint ptr %dst5.i.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %dst5.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %tobool15.not.i.i = icmp eq i16 %22, 0
  br i1 %tobool15.not.i.i, label %land.lhs.true.i.i.if.end12.i_crit_edge, label %if.then.i.i

land.lhs.true.i.i.if.end12.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  %23 = ptrtoint ptr %dst17.i.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %dst17.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %24, i16 %18)
  %cmp.i.i = icmp ult i16 %24, %18
  call void @__sanitizer_cov_trace_cmp2(i16 %24, i16 %20)
  %cmp25.i.i = icmp ugt i16 %24, %20
  %or.cond.i.i = select i1 %cmp.i.i, i1 true, i1 %cmp25.i.i
  br i1 %or.cond.i.i, label %if.then.i.i.for.inc.i_crit_edge, label %if.end.i.i

if.then.i.i.for.inc.i_crit_edge:                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %dst31.i.i = getelementptr i8, ptr %.pn63.i, i32 -554
  %25 = ptrtoint ptr %dst31.i.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %dst31.i.i, align 2
  %27 = ptrtoint ptr %dst34.i.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %26, ptr %dst34.i.i, align 2
  %dst38.i.i = getelementptr i8, ptr %.pn63.i, i32 -550
  %28 = ptrtoint ptr %dst38.i.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %dst38.i.i, align 2
  %30 = ptrtoint ptr %dst41.i.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %29, ptr %dst41.i.i, align 2
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.end.i.i, %land.lhs.true.i.i.if.end12.i_crit_edge, %for.body.i6.if.end12.i_crit_edge
  %31 = ptrtoint ptr %filter.064.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %filter.064.i, align 4
  %tp_range.i40.i = getelementptr inbounds %struct.fl_flow_key, ptr %32, i32 0, i32 19
  %33 = ptrtoint ptr %tp_range.i40.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %tp_range.i40.i, align 4
  %35 = ptrtoint ptr %tp_range7.i.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %tp_range7.i.i, align 4
  %37 = ptrtoint ptr %tp_max12.i.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %tp_max12.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %34)
  %tobool.not.i43.i = icmp eq i16 %34, 0
  br i1 %tobool.not.i43.i, label %if.end12.i.if.end15.i_crit_edge, label %land.lhs.true.i46.i

if.end12.i.if.end15.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.i

land.lhs.true.i46.i:                              ; preds = %if.end12.i
  %tp_max.i44.i = getelementptr inbounds %struct.fl_flow_key, ptr %32, i32 0, i32 19, i32 0, i32 1
  %39 = ptrtoint ptr %tp_max.i44.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %tp_max.i44.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %40)
  %tobool15.not.i45.i = icmp eq i16 %40, 0
  br i1 %tobool15.not.i45.i, label %land.lhs.true.i46.i.if.end15.i_crit_edge, label %if.then.i51.i

land.lhs.true.i46.i.if.end15.i_crit_edge:         ; preds = %land.lhs.true.i46.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.i

if.then.i51.i:                                    ; preds = %land.lhs.true.i46.i
  %41 = ptrtoint ptr %tp_range16.i.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %tp_range16.i.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %42, i16 %36)
  %cmp.i48.i = icmp ult i16 %42, %36
  call void @__sanitizer_cov_trace_cmp2(i16 %42, i16 %38)
  %cmp25.i49.i = icmp ugt i16 %42, %38
  %or.cond.i50.i = select i1 %cmp.i48.i, i1 true, i1 %cmp25.i49.i
  br i1 %or.cond.i50.i, label %if.then.i51.i.for.inc.i_crit_edge, label %if.end.i56.i

if.then.i51.i.for.inc.i_crit_edge:                ; preds = %if.then.i51.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.end.i56.i:                                     ; preds = %if.then.i51.i
  call void @__sanitizer_cov_trace_pc() #14
  %tp_range29.i52.i = getelementptr i8, ptr %.pn63.i, i32 -556
  %43 = ptrtoint ptr %tp_range29.i52.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %tp_range29.i52.i, align 4
  %45 = ptrtoint ptr %tp_range32.i.i to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %44, ptr %tp_range32.i.i, align 4
  %tp_max37.i54.i = getelementptr i8, ptr %.pn63.i, i32 -552
  %46 = ptrtoint ptr %tp_max37.i54.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %tp_max37.i54.i, align 4
  %48 = ptrtoint ptr %tp_max40.i.i to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %47, ptr %tp_max40.i.i, align 4
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.end.i56.i, %land.lhs.true.i46.i.if.end15.i_crit_edge, %if.end12.i.if.end15.i_crit_edge
  %call16.i = call fastcc ptr @__fl_lookup(ptr noundef %mask, ptr noundef nonnull %mkey) #12
  %tobool17.not.i = icmp eq ptr %call16.i, null
  br i1 %tobool17.not.i, label %if.end15.i.for.inc.i_crit_edge, label %if.end15.i.cleanup_crit_edge

if.end15.i.cleanup_crit_edge:                     ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end15.i.for.inc.i_crit_edge:                   ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end15.i.for.inc.i_crit_edge, %if.then.i51.i.for.inc.i_crit_edge, %if.then.i.i.for.inc.i_crit_edge
  %49 = ptrtoint ptr %.pn63.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %.pn.i = load volatile ptr, ptr %.pn63.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %filters.i
  br i1 %cmp.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i6_crit_edge

for.inc.i.for.body.i6_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i6

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %fl_set_masked_key.exit
  call void @__sanitizer_cov_trace_pc() #14
  %call1 = call fastcc ptr @__fl_lookup(ptr noundef %mask, ptr noundef nonnull %mkey)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %for.inc.i.cleanup_crit_edge, %if.end15.i.cleanup_crit_edge, %do.end.i.cleanup_crit_edge
  %retval.0 = phi ptr [ %call1, %if.end ], [ null, %do.end.i.cleanup_crit_edge ], [ %call16.i, %if.end15.i.cleanup_crit_edge ], [ null, %for.inc.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 484, ptr nonnull %mkey) #12
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__skb_flow_dissect(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @__fl_lookup(ptr noundef %mask, ptr noundef %mkey) unnamed_addr #2 align 64 {
entry:
  %arg.i.i.i = alloca %struct.rhashtable_compare_arg, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ht = getelementptr inbounds %struct.fl_flow_mask, ptr %mask, i32 0, i32 4
  %range.i = getelementptr inbounds %struct.fl_flow_mask, ptr %mask, i32 0, i32 1
  %0 = ptrtoint ptr %range.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %range.i, align 4
  %conv.i = zext i16 %1 to i32
  %add.ptr.i = getelementptr i8, ptr %mkey, i32 %conv.i
  %.elt14 = getelementptr inbounds %struct.fl_flow_mask, ptr %mask, i32 0, i32 5, i32 9
  %2 = ptrtoint ptr %.elt14 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.unpack15 = load i32, ptr %.elt14, align 4
  %3 = tail call i32 @llvm.read_register.i32(metadata !191) #12
  %and.i.i.i.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %6, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !204
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 696, ptr noundef nonnull @.str.6) #12
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %entry.rcu_read_lock.exit.i_crit_edge
  %7 = inttoptr i32 %.unpack15 to ptr
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %arg.i.i.i) #12
  %8 = getelementptr inbounds %struct.rhashtable_compare_arg, ptr %arg.i.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %arg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %ht, ptr %arg.i.i.i, align 4
  %10 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %add.ptr.i, ptr %8, align 4
  %11 = ptrtoint ptr %ht to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %ht, align 4
  %call.i.i.i = tail call i32 @lockdep_rht_mutex_is_held(ptr noundef %ht) #12
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
  %.b92.i.i.i = load i1, ptr @__rhashtable_lookup.__warned, align 1
  br i1 %.b92.i.i.i, label %land.lhs.true9.i.i.i.do.end12.i.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true9.i.i.i.do.end12.i.i.i_crit_edge:    ; preds = %land.lhs.true9.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end12.i.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true9.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__rhashtable_lookup.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 594, ptr noundef nonnull @.str.1) #12
  br label %do.end12.i.i.i

do.end12.i.i.i:                                   ; preds = %if.then.i.i.i, %land.lhs.true9.i.i.i.do.end12.i.i.i_crit_edge, %land.lhs.true.i.i.i.do.end12.i.i.i_crit_edge, %lor.lhs.false.i.i.i.do.end12.i.i.i_crit_edge, %rcu_read_lock.exit.i.do.end12.i.i.i_crit_edge
  %hashfn.i.i.i.i.i = getelementptr inbounds %struct.fl_flow_mask, ptr %mask, i32 0, i32 4, i32 3, i32 7
  %key_len1.i.i.i.i.i = getelementptr inbounds %struct.fl_flow_mask, ptr %mask, i32 0, i32 4, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.unpack15)
  %tobool19.not.i.i.i = icmp eq i32 %.unpack15, 0
  %head_offset.i.i.i.i = getelementptr inbounds %struct.fl_flow_mask, ptr %mask, i32 0, i32 4, i32 3, i32 3
  br label %if.then.i.i.i.i.i

if.then.i.i.i.i.i:                                ; preds = %do.end60.i.i.i.if.then.i.i.i.i.i_crit_edge, %do.end12.i.i.i
  %tbl.0.i.i.i = phi ptr [ %12, %do.end12.i.i.i ], [ %43, %do.end60.i.i.i.if.then.i.i.i.i.i_crit_edge ]
  %hash_rnd.i.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i.i.i, i32 0, i32 2
  %13 = ptrtoint ptr %hash_rnd.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %hash_rnd.i.i.i.i, align 8
  %15 = ptrtoint ptr %hashfn.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hashfn.i.i.i.i.i, align 4
  %17 = ptrtoint ptr %key_len1.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %key_len1.i.i.i.i.i, align 4
  %call.i.i.i.i.i = call i32 %16(ptr noundef %add.ptr.i, i32 noundef %18, i32 noundef %14) #12
  %19 = ptrtoint ptr %tbl.0.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tbl.0.i.i.i, align 128
  %sub.i.i.i.i.i = add i32 %20, -1
  %and.i3.i.i.i.i = and i32 %sub.i.i.i.i.i, %call.i.i.i.i.i
  %nest.i.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i.i.i, i32 0, i32 1
  %21 = ptrtoint ptr %nest.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %nest.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i.i.i.i = icmp eq i32 %22, 0
  br i1 %tobool.not.i.i.i.i, label %cond.false.i.i.i.i, label %cond.true.i.i.i.i, !prof !206

cond.true.i.i.i.i:                                ; preds = %if.then.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i.i = call ptr @rht_bucket_nested(ptr noundef %tbl.0.i.i.i, i32 noundef %and.i3.i.i.i.i) #12
  br label %rht_bucket.exit.i.i.i

cond.false.i.i.i.i:                               ; preds = %if.then.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i.i.i.i = getelementptr %struct.bucket_table, ptr %tbl.0.i.i.i, i32 0, i32 8, i32 %and.i3.i.i.i.i
  br label %rht_bucket.exit.i.i.i

rht_bucket.exit.i.i.i:                            ; preds = %cond.false.i.i.i.i, %cond.true.i.i.i.i
  %cond.i.i.i.i = phi ptr [ %call.i.i.i.i, %cond.true.i.i.i.i ], [ %arrayidx.i.i.i.i, %cond.false.i.i.i.i ]
  %23 = ptrtoint ptr %cond.i.i.i.i to i32
  %or.i.i.i.i.i = or i32 %23, 1
  %24 = inttoptr i32 %or.i.i.i.i.i to ptr
  br label %do.body16.i.i.i

do.body16.i.i.i:                                  ; preds = %do.cond34.i.i.i.do.body16.i.i.i_crit_edge, %rht_bucket.exit.i.i.i
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !213
  %25 = ptrtoint ptr %cond.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile ptr, ptr %cond.i.i.i.i, align 4
  %call.i93.i.i.i = call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i93.i.i.i)
  %tobool.not.i94.i.i.i = icmp eq i32 %call.i93.i.i.i, 0
  br i1 %tobool.not.i94.i.i.i, label %land.lhs.true.i.i.i.i, label %do.body16.i.i.i.rht_ptr_rcu.exit.i.i.i_crit_edge

do.body16.i.i.i.rht_ptr_rcu.exit.i.i.i_crit_edge: ; preds = %do.body16.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rht_ptr_rcu.exit.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %do.body16.i.i.i
  %call2.i.i.i.i = call i32 @debug_lockdep_rcu_enabled() #12
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
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 369, ptr noundef nonnull @.str.1) #12
  br label %rht_ptr_rcu.exit.i.i.i

rht_ptr_rcu.exit.i.i.i:                           ; preds = %if.then.i.i.i.i, %land.lhs.true4.i.i.i.i.rht_ptr_rcu.exit.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.rht_ptr_rcu.exit.i.i.i_crit_edge, %do.body16.i.i.i.rht_ptr_rcu.exit.i.i.i_crit_edge
  %27 = ptrtoint ptr %26 to i32
  %and.i.i95.i.i.i = and i32 %27, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i95.i.i.i)
  %tobool.not.i.i96.i.i.i = icmp eq i32 %and.i.i95.i.i.i, 0
  %cond.i.i.i.i.i = select i1 %tobool.not.i.i96.i.i.i, i32 %or.i.i.i.i.i, i32 %and.i.i95.i.i.i
  %28 = inttoptr i32 %cond.i.i.i.i.i to ptr
  %and.i106.i.i.i = and i32 %cond.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i106.i.i.i)
  %tobool.i.not107.i.i.i = icmp eq i32 %and.i106.i.i.i, 0
  br i1 %tobool.i.not107.i.i.i, label %rht_ptr_rcu.exit.i.i.i.for.body.i.i.i_crit_edge, label %rht_ptr_rcu.exit.i.i.i.do.cond34.i.i.i_crit_edge

rht_ptr_rcu.exit.i.i.i.do.cond34.i.i.i_crit_edge: ; preds = %rht_ptr_rcu.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.cond34.i.i.i

rht_ptr_rcu.exit.i.i.i.for.body.i.i.i_crit_edge:  ; preds = %rht_ptr_rcu.exit.i.i.i
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %rht_ptr_rcu.exit.i.i.i.for.body.i.i.i_crit_edge
  %he.0108.i.i.i = phi ptr [ %40, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ %28, %rht_ptr_rcu.exit.i.i.i.for.body.i.i.i_crit_edge ]
  %29 = ptrtoint ptr %head_offset.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %head_offset.i.i.i.i, align 2
  %conv.i98.i.i.i = zext i16 %30 to i32
  %idx.neg.i99.i.i.i = sub nsw i32 0, %conv.i98.i.i.i
  %add.ptr.i100.i.i.i = getelementptr i8, ptr %he.0108.i.i.i, i32 %idx.neg.i99.i.i.i
  br i1 %tobool19.not.i.i.i, label %cond.false.i.i.i, label %cond.true.i.i.i

cond.true.i.i.i:                                  ; preds = %for.body.i.i.i
  %call22.i.i.i = call i32 %7(ptr noundef nonnull %arg.i.i.i, ptr noundef %add.ptr.i100.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i.i.i)
  %tobool23.not.i.i.i = icmp eq i32 %call22.i.i.i, 0
  br i1 %tobool23.not.i.i.i, label %cond.true.i.i.i.__rhashtable_lookup.exit.i.i_crit_edge, label %cond.true.i.i.i.for.inc.i.i.i_crit_edge

cond.true.i.i.i.for.inc.i.i.i_crit_edge:          ; preds = %cond.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i.i

cond.true.i.i.i.__rhashtable_lookup.exit.i.i_crit_edge: ; preds = %cond.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__rhashtable_lookup.exit.i.i

cond.false.i.i.i:                                 ; preds = %for.body.i.i.i
  %31 = ptrtoint ptr %arg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arg.i.i.i, align 4
  %key_offset.i.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %32, i32 0, i32 3, i32 2
  %33 = ptrtoint ptr %key_offset.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %key_offset.i.i.i.i, align 4
  %conv.i101.i.i.i = zext i16 %34 to i32
  %add.ptr.i102.i.i.i = getelementptr i8, ptr %add.ptr.i100.i.i.i, i32 %conv.i101.i.i.i
  %35 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %8, align 4
  %key_len.i.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %32, i32 0, i32 3, i32 1
  %37 = ptrtoint ptr %key_len.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %key_len.i.i.i.i, align 2
  %conv3.i.i.i.i = zext i16 %38 to i32
  %bcmp.i.i.i = call i32 @bcmp(ptr %add.ptr.i102.i.i.i, ptr %36, i32 %conv3.i.i.i.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i.i)
  %tobool26.not.i.i.i = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %tobool26.not.i.i.i, label %cond.false.i.i.i.__rhashtable_lookup.exit.i.i_crit_edge, label %cond.false.i.i.i.for.inc.i.i.i_crit_edge

cond.false.i.i.i.for.inc.i.i.i_crit_edge:         ; preds = %cond.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i.i

cond.false.i.i.i.__rhashtable_lookup.exit.i.i_crit_edge: ; preds = %cond.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__rhashtable_lookup.exit.i.i

for.inc.i.i.i:                                    ; preds = %cond.false.i.i.i.for.inc.i.i.i_crit_edge, %cond.true.i.i.i.for.inc.i.i.i_crit_edge
  %39 = ptrtoint ptr %he.0108.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile ptr, ptr %he.0108.i.i.i, align 4
  %41 = ptrtoint ptr %40 to i32
  %and.i.i.i.i = and i32 %41, 1
  %tobool.i.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i, label %for.inc.i.i.i.for.body.i.i.i_crit_edge, label %for.inc.i.i.i.do.cond34.i.i.i_crit_edge

for.inc.i.i.i.do.cond34.i.i.i_crit_edge:          ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.cond34.i.i.i

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i.i

do.cond34.i.i.i:                                  ; preds = %for.inc.i.i.i.do.cond34.i.i.i_crit_edge, %rht_ptr_rcu.exit.i.i.i.do.cond34.i.i.i_crit_edge
  %he.0.lcssa.i.i.i = phi ptr [ %28, %rht_ptr_rcu.exit.i.i.i.do.cond34.i.i.i_crit_edge ], [ %40, %for.inc.i.i.i.do.cond34.i.i.i_crit_edge ]
  %cmp.not.i.i.i = icmp eq ptr %he.0.lcssa.i.i.i, %24
  br i1 %cmp.not.i.i.i, label %do.end39.i.i.i, label %do.cond34.i.i.i.do.body16.i.i.i_crit_edge

do.cond34.i.i.i.do.body16.i.i.i_crit_edge:        ; preds = %do.cond34.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body16.i.i.i

do.end39.i.i.i:                                   ; preds = %do.cond34.i.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !214
  %future_tbl.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i.i.i, i32 0, i32 5
  %42 = ptrtoint ptr %future_tbl.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile ptr, ptr %future_tbl.i.i.i, align 4
  %call47.i.i.i = call i32 @lockdep_rht_mutex_is_held(ptr noundef %ht) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47.i.i.i)
  %tobool48.not.i.i.i = icmp eq i32 %call47.i.i.i, 0
  br i1 %tobool48.not.i.i.i, label %lor.lhs.false49.i.i.i, label %do.end39.i.i.i.do.end60.i.i.i_crit_edge

do.end39.i.i.i.do.end60.i.i.i_crit_edge:          ; preds = %do.end39.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end60.i.i.i

lor.lhs.false49.i.i.i:                            ; preds = %do.end39.i.i.i
  %call50.i.i.i = call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50.i.i.i)
  %tobool51.not.i.i.i = icmp eq i32 %call50.i.i.i, 0
  br i1 %tobool51.not.i.i.i, label %land.lhs.true52.i.i.i, label %lor.lhs.false49.i.i.i.do.end60.i.i.i_crit_edge

lor.lhs.false49.i.i.i.do.end60.i.i.i_crit_edge:   ; preds = %lor.lhs.false49.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end60.i.i.i

land.lhs.true52.i.i.i:                            ; preds = %lor.lhs.false49.i.i.i
  %call53.i.i.i = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53.i.i.i)
  %tobool54.not.i.i.i = icmp eq i32 %call53.i.i.i, 0
  br i1 %tobool54.not.i.i.i, label %land.lhs.true52.i.i.i.do.end60.i.i.i_crit_edge, label %land.lhs.true55.i.i.i

land.lhs.true52.i.i.i.do.end60.i.i.i_crit_edge:   ; preds = %land.lhs.true52.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end60.i.i.i

land.lhs.true55.i.i.i:                            ; preds = %land.lhs.true52.i.i.i
  %.b9091.i.i.i = load i1, ptr @__rhashtable_lookup.__warned.8, align 1
  br i1 %.b9091.i.i.i, label %land.lhs.true55.i.i.i.do.end60.i.i.i_crit_edge, label %if.then57.i.i.i

land.lhs.true55.i.i.i.do.end60.i.i.i_crit_edge:   ; preds = %land.lhs.true55.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end60.i.i.i

if.then57.i.i.i:                                  ; preds = %land.lhs.true55.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__rhashtable_lookup.__warned.8, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 614, ptr noundef nonnull @.str.1) #12
  br label %do.end60.i.i.i

do.end60.i.i.i:                                   ; preds = %if.then57.i.i.i, %land.lhs.true55.i.i.i.do.end60.i.i.i_crit_edge, %land.lhs.true52.i.i.i.do.end60.i.i.i_crit_edge, %lor.lhs.false49.i.i.i.do.end60.i.i.i_crit_edge, %do.end39.i.i.i.do.end60.i.i.i_crit_edge
  %tobool62.not.i.i.i = icmp eq ptr %43, null
  br i1 %tobool62.not.i.i.i, label %__rhashtable_lookup.exit.thread.i.i, label %do.end60.i.i.i.if.then.i.i.i.i.i_crit_edge, !prof !206

do.end60.i.i.i.if.then.i.i.i.i.i_crit_edge:       ; preds = %do.end60.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i.i.i.i

__rhashtable_lookup.exit.thread.i.i:              ; preds = %do.end60.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %arg.i.i.i) #12
  br label %rhashtable_lookup.exit.i

__rhashtable_lookup.exit.i.i:                     ; preds = %cond.false.i.i.i.__rhashtable_lookup.exit.i.i_crit_edge, %cond.true.i.i.i.__rhashtable_lookup.exit.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %arg.i.i.i) #12
  %tobool.not.i1.i = icmp eq ptr %he.0108.i.i.i, null
  br i1 %tobool.not.i1.i, label %__rhashtable_lookup.exit.i.i.rhashtable_lookup.exit.i_crit_edge, label %cond.true.i.i

__rhashtable_lookup.exit.i.i.rhashtable_lookup.exit.i_crit_edge: ; preds = %__rhashtable_lookup.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rhashtable_lookup.exit.i

cond.true.i.i:                                    ; preds = %__rhashtable_lookup.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %44 = ptrtoint ptr %head_offset.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %head_offset.i.i.i.i, align 2
  %conv.i.i.i = zext i16 %45 to i32
  %idx.neg.i.i.i = sub nsw i32 0, %conv.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %he.0108.i.i.i, i32 %idx.neg.i.i.i
  br label %rhashtable_lookup.exit.i

rhashtable_lookup.exit.i:                         ; preds = %cond.true.i.i, %__rhashtable_lookup.exit.i.i.rhashtable_lookup.exit.i_crit_edge, %__rhashtable_lookup.exit.thread.i.i
  %cond.i.i = phi ptr [ %add.ptr.i.i.i, %cond.true.i.i ], [ null, %__rhashtable_lookup.exit.i.i.rhashtable_lookup.exit.i_crit_edge ], [ null, %__rhashtable_lookup.exit.thread.i.i ]
  %call.i2.i = call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i2.i, label %rhashtable_lookup.exit.i.rhashtable_lookup_fast.exit_crit_edge, label %land.lhs.true.i5.i

rhashtable_lookup.exit.i.rhashtable_lookup_fast.exit_crit_edge: ; preds = %rhashtable_lookup.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rhashtable_lookup_fast.exit

land.lhs.true.i5.i:                               ; preds = %rhashtable_lookup.exit.i
  %call1.i3.i = call i32 @debug_lockdep_rcu_enabled() #12
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
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 724, ptr noundef nonnull @.str.9) #12
  br label %rhashtable_lookup_fast.exit

rhashtable_lookup_fast.exit:                      ; preds = %if.then.i8.i, %land.lhs.true2.i7.i.rhashtable_lookup_fast.exit_crit_edge, %land.lhs.true.i5.i.rhashtable_lookup_fast.exit_crit_edge, %rhashtable_lookup.exit.i.rhashtable_lookup_fast.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !207
  %46 = call i32 @llvm.read_register.i32(metadata !191) #12
  %and.i.i.i.i.i9.i = and i32 %46, -16384
  %47 = inttoptr i32 %and.i.i.i.i.i9.i to ptr
  %preempt_count.i.i.i.i10.i = getelementptr inbounds %struct.thread_info, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %preempt_count.i.i.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %preempt_count.i.i.i.i10.i, align 4
  %sub.i.i.i.i = add i32 %49, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i10.i, align 4
  call void @rcu_read_unlock_strict() #12
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  ret ptr %cond.i.i
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #5 align 64 {
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

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lockdep_rht_mutex_is_held(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rht_bucket_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #5 align 64 {
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
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcf_action_exec(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rhashtable_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__fl_delete(ptr noundef %tp, ptr noundef %f, ptr nocapture noundef writeonly %last, i1 noundef zeroext %rtnl_held, ptr noundef %extack) unnamed_addr #2 align 64 {
entry:
  %cls_flower.i = alloca %struct.flow_cls_offload, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %root.i = getelementptr inbounds %struct.tcf_proto, ptr %tp, i32 0, i32 1
  %0 = ptrtoint ptr %root.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %root.i, align 4
  %2 = ptrtoint ptr %last to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %last, align 1
  %lock = getelementptr inbounds %struct.tcf_proto, ptr %tp, i32 0, i32 8
  tail call void @_raw_spin_lock(ptr noundef %lock) #12
  %deleted = getelementptr inbounds %struct.cls_fl_filter, ptr %f, i32 0, i32 14
  %3 = ptrtoint ptr %deleted to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %deleted, align 4, !range !203
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_raw_spin_unlock(ptr noundef %lock) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %deleted to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %deleted, align 4
  %6 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %f, align 4
  %ht = getelementptr inbounds %struct.fl_flow_mask, ptr %7, i32 0, i32 4
  %ht_node = getelementptr inbounds %struct.cls_fl_filter, ptr %f, i32 0, i32 1
  %filter_ht_params = getelementptr inbounds %struct.fl_flow_mask, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %filter_ht_params to i32
  call void @__asan_load4_noabort(i32 %8)
  %.unpack = load i32, ptr %filter_ht_params, align 4
  %9 = insertvalue [7 x i32] undef, i32 %.unpack, 0
  %.elt32 = getelementptr inbounds %struct.fl_flow_mask, ptr %7, i32 0, i32 5, i32 2
  %10 = ptrtoint ptr %.elt32 to i32
  call void @__asan_load4_noabort(i32 %10)
  %.unpack33 = load i32, ptr %.elt32, align 4
  %11 = insertvalue [7 x i32] %9, i32 %.unpack33, 1
  %.elt34 = getelementptr inbounds %struct.fl_flow_mask, ptr %7, i32 0, i32 5, i32 4
  %12 = ptrtoint ptr %.elt34 to i32
  call void @__asan_load4_noabort(i32 %12)
  %.unpack35 = load i32, ptr %.elt34, align 4
  %13 = insertvalue [7 x i32] %11, i32 %.unpack35, 2
  %.elt36 = getelementptr inbounds %struct.fl_flow_mask, ptr %7, i32 0, i32 5, i32 5
  %14 = ptrtoint ptr %.elt36 to i32
  call void @__asan_load4_noabort(i32 %14)
  %.unpack37 = load i32, ptr %.elt36, align 4
  %15 = insertvalue [7 x i32] %13, i32 %.unpack37, 3
  %.elt38 = getelementptr inbounds %struct.fl_flow_mask, ptr %7, i32 0, i32 5, i32 7
  %16 = ptrtoint ptr %.elt38 to i32
  call void @__asan_load4_noabort(i32 %16)
  %.unpack39 = load i32, ptr %.elt38, align 4
  %17 = insertvalue [7 x i32] %15, i32 %.unpack39, 4
  %.elt40 = getelementptr inbounds %struct.fl_flow_mask, ptr %7, i32 0, i32 5, i32 8
  %18 = ptrtoint ptr %.elt40 to i32
  call void @__asan_load4_noabort(i32 %18)
  %.unpack41 = load i32, ptr %.elt40, align 4
  %19 = insertvalue [7 x i32] %17, i32 %.unpack41, 5
  %.elt42 = getelementptr inbounds %struct.fl_flow_mask, ptr %7, i32 0, i32 5, i32 9
  %20 = ptrtoint ptr %.elt42 to i32
  call void @__asan_load4_noabort(i32 %20)
  %.unpack43 = load i32, ptr %.elt42, align 4
  %21 = insertvalue [7 x i32] %19, i32 %.unpack43, 6
  tail call fastcc void @rhashtable_remove_fast(ptr noundef %ht, ptr noundef %ht_node, [7 x i32] %21)
  %handle_idr = getelementptr inbounds %struct.cls_fl_head, ptr %1, i32 0, i32 5
  %handle = getelementptr inbounds %struct.cls_fl_filter, ptr %f, i32 0, i32 8
  %22 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %handle, align 4
  %call5 = tail call ptr @idr_remove(ptr noundef %handle_idr, i32 noundef %23) #12
  %list = getelementptr inbounds %struct.cls_fl_filter, ptr %f, i32 0, i32 6
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #12
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del_rcu.exit_crit_edge

if.end.list_del_rcu.exit_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del_rcu.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.cls_fl_filter, ptr %f, i32 0, i32 6, i32 1
  %24 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %prev.i.i, align 4
  %26 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %25, ptr %prev1.i.i.i, align 4
  %29 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %27, ptr %25, align 4
  br label %list_del_rcu.exit

list_del_rcu.exit:                                ; preds = %if.end.i.i, %if.end.list_del_rcu.exit_crit_edge
  %prev.i = getelementptr inbounds %struct.cls_fl_filter, ptr %f, i32 0, i32 6, i32 1
  %30 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock) #12
  %31 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %f, align 4
  %call8 = tail call fastcc zeroext i1 @fl_mask_put(ptr noundef %1, ptr noundef %32)
  %frombool9 = zext i1 %call8 to i8
  %33 = ptrtoint ptr %last to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %frombool9, ptr %last, align 1
  %flags = getelementptr inbounds %struct.cls_fl_filter, ptr %f, i32 0, i32 9
  %34 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %flags, align 4
  %and.i = and i32 %35, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.then11, label %list_del_rcu.exit.if.end13_crit_edge

list_del_rcu.exit.if.end13_crit_edge:             ; preds = %list_del_rcu.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

if.then11:                                        ; preds = %list_del_rcu.exit
  %chain.i = getelementptr inbounds %struct.tcf_proto, ptr %tp, i32 0, i32 7
  %36 = ptrtoint ptr %chain.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %chain.i, align 4
  %block1.i = getelementptr inbounds %struct.tcf_chain, ptr %37, i32 0, i32 3
  %38 = ptrtoint ptr %block1.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %block1.i, align 4
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %cls_flower.i) #12
  %40 = call ptr @memset(ptr %cls_flower.i, i32 0, i32 80)
  %index.i.i = getelementptr inbounds %struct.tcf_chain, ptr %37, i32 0, i32 4
  %41 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %index.i.i, align 4
  %43 = ptrtoint ptr %cls_flower.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %cls_flower.i, align 8
  %protocol.i.i = getelementptr inbounds %struct.tcf_proto, ptr %tp, i32 0, i32 3
  %44 = ptrtoint ptr %protocol.i.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %protocol.i.i, align 4
  %protocol1.i.i = getelementptr inbounds %struct.flow_cls_common_offload, ptr %cls_flower.i, i32 0, i32 1
  %46 = ptrtoint ptr %protocol1.i.i to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %45, ptr %protocol1.i.i, align 4
  %prio.i.i = getelementptr inbounds %struct.tcf_proto, ptr %tp, i32 0, i32 4
  %47 = ptrtoint ptr %prio.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %prio.i.i, align 4
  %shr.i.i = lshr i32 %48, 16
  %prio2.i.i = getelementptr inbounds %struct.flow_cls_common_offload, ptr %cls_flower.i, i32 0, i32 2
  %49 = ptrtoint ptr %prio2.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %shr.i.i, ptr %prio2.i.i, align 8
  %50 = and i32 %35, 18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %if.then11.fl_hw_destroy_filter.exit_crit_edge, label %if.then.i.i

if.then11.fl_hw_destroy_filter.exit_crit_edge:    ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #14
  br label %fl_hw_destroy_filter.exit

if.then.i.i:                                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #14
  %extack3.i.i = getelementptr inbounds %struct.flow_cls_common_offload, ptr %cls_flower.i, i32 0, i32 3
  %52 = ptrtoint ptr %extack3.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %extack, ptr %extack3.i.i, align 4
  br label %fl_hw_destroy_filter.exit

fl_hw_destroy_filter.exit:                        ; preds = %if.then.i.i, %if.then11.fl_hw_destroy_filter.exit_crit_edge
  %command.i = getelementptr inbounds %struct.flow_cls_offload, ptr %cls_flower.i, i32 0, i32 1
  %53 = ptrtoint ptr %command.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 1, ptr %command.i, align 8
  %54 = ptrtoint ptr %f to i32
  %cookie.i = getelementptr inbounds %struct.flow_cls_offload, ptr %cls_flower.i, i32 0, i32 2
  %55 = ptrtoint ptr %cookie.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %cookie.i, align 4
  %in_hw_count.i = getelementptr inbounds %struct.cls_fl_filter, ptr %f, i32 0, i32 10
  %call.i = call i32 @tc_setup_cb_destroy(ptr noundef %39, ptr noundef %tp, i32 noundef 2, ptr noundef nonnull %cls_flower.i, i1 noundef zeroext false, ptr noundef %flags, ptr noundef %in_hw_count.i, i1 noundef zeroext %rtnl_held) #12
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %cls_flower.i) #12
  br label %if.end13

if.end13:                                         ; preds = %fl_hw_destroy_filter.exit, %list_del_rcu.exit.if.end13_crit_edge
  %chain.i44 = getelementptr inbounds %struct.tcf_proto, ptr %tp, i32 0, i32 7
  %56 = ptrtoint ptr %chain.i44 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %chain.i44, align 4
  %block.i = getelementptr inbounds %struct.tcf_chain, ptr %57, i32 0, i32 3
  %58 = ptrtoint ptr %block.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %block.i, align 4
  %q1.i = getelementptr inbounds %struct.tcf_block, ptr %59, i32 0, i32 6
  %60 = ptrtoint ptr %q1.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %q1.i, align 4
  %tobool.not.i = icmp eq ptr %61, null
  br i1 %tobool.not.i, label %if.end13.tcf_unbind_filter.exit_crit_edge, label %if.end.i

if.end13.tcf_unbind_filter.exit_crit_edge:        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %tcf_unbind_filter.exit

if.end.i:                                         ; preds = %if.end13
  %res = getelementptr inbounds %struct.cls_fl_filter, ptr %f, i32 0, i32 4
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %res, i32 noundef 4) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !209
  call void @llvm.prefetch.p0(ptr %res, i32 1, i32 3, i32 1) #12
  %62 = call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %res) #12, !srcloc !210
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %62, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !211
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i, label %if.end.i.tcf_unbind_filter.exit_crit_edge, label %if.then.i.i45

if.end.i.tcf_unbind_filter.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tcf_unbind_filter.exit

if.then.i.i45:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %ops.i.i = getelementptr inbounds %struct.Qdisc, ptr %61, i32 0, i32 4
  %63 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %ops.i.i, align 16
  %cl_ops.i.i = getelementptr inbounds %struct.Qdisc_ops, ptr %64, i32 0, i32 1
  %65 = ptrtoint ptr %cl_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %cl_ops.i.i, align 4
  %unbind_tcf.i.i = getelementptr inbounds %struct.Qdisc_class_ops, ptr %66, i32 0, i32 11
  %67 = ptrtoint ptr %unbind_tcf.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %unbind_tcf.i.i, align 4
  call void %68(ptr noundef nonnull %61, i32 noundef %asmresult.i.i.i.i) #12
  br label %tcf_unbind_filter.exit

tcf_unbind_filter.exit:                           ; preds = %if.then.i.i45, %if.end.i.tcf_unbind_filter.exit_crit_edge, %if.end13.tcf_unbind_filter.exit_crit_edge
  call fastcc void @__fl_put(ptr noundef %f)
  br label %cleanup

cleanup:                                          ; preds = %tcf_unbind_filter.exit, %if.then
  %retval.0 = phi i32 [ -2, %if.then ], [ 0, %tcf_unbind_filter.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @idr_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__module_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @tcf_queue_work(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fl_destroy_sleepable(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -288
  tail call void @rhashtable_destroy(ptr noundef %add.ptr) #12
  tail call void @kfree(ptr noundef %add.ptr) #12
  tail call void @module_put(ptr noundef null) #12
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rhashtable_remove_fast(ptr noundef %ht, ptr noundef %obj, [7 x i32] %params.coerce) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %0 = tail call i32 @llvm.read_register.i32(metadata !191) #12
  %and.i.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !204
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 696, ptr noundef nonnull @.str.6) #12
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %entry.rcu_read_lock.exit.i_crit_edge
  %4 = ptrtoint ptr %ht to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %ht, align 4
  %call.i = tail call i32 @lockdep_rht_mutex_is_held(ptr noundef %ht) #12
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
  %6 = inttoptr i32 %params.coerce.fca.5.extract.i.i.i to ptr
  %head_offset.i.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %params.coerce.fca.5.extract.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %params.coerce.fca.5.extract.i.i.i, 0
  %conv.i.i.i = and i32 %params.coerce.fca.0.extract.i.i.i, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %conv.i.i.i, 0
  %key_len6.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 1
  %params.coerce.fca.1.extract.i.i.i = extractvalue [7 x i32] %params.coerce, 1
  %params.sroa.3.4.extract.shift.i.i.i = lshr i32 %params.coerce.fca.1.extract.i.i.i, 16
  %hashfn.i.i.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 7
  %key_len1.i.i.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 1
  br label %while.cond.i

while.cond.i:                                     ; preds = %do.end33.i.while.cond.i_crit_edge, %do.end10.i
  %tbl.0.i = phi ptr [ %5, %do.end10.i ], [ %45, %do.end33.i.while.cond.i_crit_edge ]
  %7 = ptrtoint ptr %head_offset.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %head_offset.i.i.i.i, align 2
  %conv.i.i.i.i = zext i16 %8 to i32
  %idx.neg.i.i.i.i = sub nsw i32 0, %conv.i.i.i.i
  %add.ptr.i.i.i.i = getelementptr i8, ptr %obj, i32 %idx.neg.i.i.i.i
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i.i.i, label %cond.true.i.i.i, !prof !212

cond.true.i.i.i:                                  ; preds = %while.cond.i
  br i1 %tobool4.not.i.i.i, label %cond.false.i.i.i, label %cond.true.i.i.i.cond.end.i.i.i_crit_edge

cond.true.i.i.i.cond.end.i.i.i_crit_edge:         ; preds = %cond.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end.i.i.i

cond.false.i.i.i:                                 ; preds = %cond.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %9 = ptrtoint ptr %key_len6.i.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %key_len6.i.i.i, align 2
  %conv7.i.i.i = zext i16 %10 to i32
  br label %cond.end.i.i.i

cond.end.i.i.i:                                   ; preds = %cond.false.i.i.i, %cond.true.i.i.i.cond.end.i.i.i_crit_edge
  %cond.i.i.i = phi i32 [ %conv7.i.i.i, %cond.false.i.i.i ], [ %conv.i.i.i, %cond.true.i.i.i.cond.end.i.i.i_crit_edge ]
  %hash_rnd.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i, i32 0, i32 2
  %11 = ptrtoint ptr %hash_rnd.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %hash_rnd.i.i.i, align 8
  %call8.i.i.i = tail call i32 %6(ptr noundef %add.ptr.i.i.i.i, i32 noundef %cond.i.i.i, i32 noundef %12) #12
  br label %rht_head_hashfn.exit.i.i

if.then.i.i.i.i.i:                                ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  %hash_rnd.i.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i, i32 0, i32 2
  %13 = ptrtoint ptr %hash_rnd.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %hash_rnd.i.i.i.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i, i32 %params.sroa.3.4.extract.shift.i.i.i
  %15 = ptrtoint ptr %hashfn.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hashfn.i.i.i.i.i, align 4
  %17 = ptrtoint ptr %key_len1.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %key_len1.i.i.i.i.i, align 4
  %call.i.i.i.i.i = tail call i32 %16(ptr noundef %add.ptr.i.i.i, i32 noundef %18, i32 noundef %14) #12
  br label %rht_head_hashfn.exit.i.i

rht_head_hashfn.exit.i.i:                         ; preds = %if.then.i.i.i.i.i, %cond.end.i.i.i
  %hash.2.i.i.sink.i.i.i = phi i32 [ %call8.i.i.i, %cond.end.i.i.i ], [ %call.i.i.i.i.i, %if.then.i.i.i.i.i ]
  %19 = ptrtoint ptr %tbl.0.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tbl.0.i, align 128
  %sub.i.i.i.i.i = add i32 %20, -1
  %and.i3.i.i.i.i = and i32 %sub.i.i.i.i.i, %hash.2.i.i.sink.i.i.i
  %nest.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i, i32 0, i32 1
  %21 = ptrtoint ptr %nest.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %nest.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i3.i.i = icmp eq i32 %22, 0
  br i1 %tobool.not.i3.i.i, label %cond.false.i5.i.i, label %cond.true.i4.i.i, !prof !206

cond.true.i4.i.i:                                 ; preds = %rht_head_hashfn.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i = tail call ptr @__rht_bucket_nested(ptr noundef %tbl.0.i, i32 noundef %and.i3.i.i.i.i) #12
  br label %rht_bucket_var.exit.i.i

cond.false.i5.i.i:                                ; preds = %rht_head_hashfn.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i.i.i = getelementptr %struct.bucket_table, ptr %tbl.0.i, i32 0, i32 8, i32 %and.i3.i.i.i.i
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
  %call.i8.i.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %tbl.0.i, i32 noundef %and.i3.i.i.i.i) #12
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 377, ptr noundef nonnull @.str.13) #12
  br label %rht_ptr.exit.i.i

rht_ptr.exit.i.i:                                 ; preds = %if.then.i.i.i, %land.lhs.true3.i.i.i.rht_ptr.exit.i.i_crit_edge, %land.lhs.true.i.i.i.rht_ptr.exit.i.i_crit_edge, %if.end.i.i.rht_ptr.exit.i.i_crit_edge
  %23 = ptrtoint ptr %cond.i6.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cond.i6.i.i, align 4
  %25 = ptrtoint ptr %24 to i32
  %and.i.i.i.i = and i32 %25, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  %26 = ptrtoint ptr %cond.i6.i.i to i32
  %or.i.i.i.i = or i32 %26, 1
  %cond.i.i.i.i = select i1 %tobool.not.i.i.i.i, i32 %or.i.i.i.i, i32 %and.i.i.i.i
  %and.i20.i.i = and i32 %cond.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i20.i.i)
  %tobool.i.not21.i.i = icmp eq i32 %and.i20.i.i, 0
  br i1 %tobool.i.not21.i.i, label %for.body.preheader.i.i, label %rht_ptr.exit.i.i.unlocked.i.i_crit_edge

rht_ptr.exit.i.i.unlocked.i.i_crit_edge:          ; preds = %rht_ptr.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlocked.i.i

for.body.preheader.i.i:                           ; preds = %rht_ptr.exit.i.i
  %27 = inttoptr i32 %cond.i.i.i.i to ptr
  %cmp.not.i20.i = icmp eq ptr %27, %obj
  br i1 %cmp.not.i20.i, label %for.body.preheader.i.i.do.body54.i.i_crit_edge, label %for.body.preheader.i.i.do.body145.i.i_crit_edge

for.body.preheader.i.i.do.body145.i.i_crit_edge:  ; preds = %for.body.preheader.i.i
  br label %do.body145.i.i

for.body.preheader.i.i.do.body54.i.i_crit_edge:   ; preds = %for.body.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body54.i.i

for.body.i.i:                                     ; preds = %do.end156.i.i
  %cmp.not.i.i = icmp eq ptr %32, %obj
  br i1 %cmp.not.i.i, label %for.body.i.i.do.body54.i.i_crit_edge, label %for.body.i.i.do.body145.i.i_crit_edge

for.body.i.i.do.body145.i.i_crit_edge:            ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body145.i.i

for.body.i.i.do.body54.i.i_crit_edge:             ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body54.i.i

do.body54.i.i:                                    ; preds = %for.body.i.i.do.body54.i.i_crit_edge, %for.body.preheader.i.i.do.body54.i.i_crit_edge
  %pprev.023.i.lcssa.i = phi ptr [ %he.022.i21.i, %for.body.i.i.do.body54.i.i_crit_edge ], [ null, %for.body.preheader.i.i.do.body54.i.i_crit_edge ]
  %call55.i.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %tbl.0.i, i32 noundef %and.i3.i.i.i.i) #12
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
  %.b2.i.i = load i1, ptr @__rhashtable_remove_fast_one.__warned.15, align 1
  br i1 %.b2.i.i, label %land.lhs.true60.i.i.do.end65.i.i_crit_edge, label %if.then62.i.i

land.lhs.true60.i.i.do.end65.i.i_crit_edge:       ; preds = %land.lhs.true60.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end65.i.i

if.then62.i.i:                                    ; preds = %land.lhs.true60.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__rhashtable_remove_fast_one.__warned.15, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 1032, ptr noundef nonnull @.str.13) #12
  br label %do.end65.i.i

do.end65.i.i:                                     ; preds = %if.then62.i.i, %land.lhs.true60.i.i.do.end65.i.i_crit_edge, %land.lhs.true57.i.i.do.end65.i.i_crit_edge, %do.body54.i.i.do.end65.i.i_crit_edge
  %28 = ptrtoint ptr %obj to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %obj, align 4
  %tobool103.not.i.i = icmp eq ptr %pprev.023.i.lcssa.i, null
  br i1 %tobool103.not.i.i, label %if.else142.i.i, label %do.body105.i.i

do.body105.i.i:                                   ; preds = %do.end65.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !215
  %30 = ptrtoint ptr %pprev.023.i.lcssa.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %29, ptr %pprev.023.i.lcssa.i, align 4
  tail call fastcc void @rht_unlock(ptr noundef %tbl.0.i, ptr noundef nonnull %cond.i6.i.i) #12
  br label %if.then160.i.i

if.else142.i.i:                                   ; preds = %do.end65.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @rht_assign_unlock(ptr noundef %tbl.0.i, ptr noundef nonnull %cond.i6.i.i, ptr noundef %29) #12
  br label %if.then160.i.i

do.body145.i.i:                                   ; preds = %for.body.i.i.do.body145.i.i_crit_edge, %for.body.preheader.i.i.do.body145.i.i_crit_edge
  %he.022.i21.i = phi ptr [ %32, %for.body.i.i.do.body145.i.i_crit_edge ], [ %27, %for.body.preheader.i.i.do.body145.i.i_crit_edge ]
  %call146.i.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %tbl.0.i, i32 noundef %and.i3.i.i.i.i) #12
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
  %.b2281.i.i = load i1, ptr @__rhashtable_remove_fast_one.__warned.17, align 1
  br i1 %.b2281.i.i, label %land.lhs.true151.i.i.do.end156.i.i_crit_edge, label %if.then153.i.i

land.lhs.true151.i.i.do.end156.i.i_crit_edge:     ; preds = %land.lhs.true151.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end156.i.i

if.then153.i.i:                                   ; preds = %land.lhs.true151.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__rhashtable_remove_fast_one.__warned.17, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 1004, ptr noundef nonnull @.str.13) #12
  br label %do.end156.i.i

do.end156.i.i:                                    ; preds = %if.then153.i.i, %land.lhs.true151.i.i.do.end156.i.i_crit_edge, %land.lhs.true148.i.i.do.end156.i.i_crit_edge, %do.body145.i.i.do.end156.i.i_crit_edge
  %31 = ptrtoint ptr %he.022.i21.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %he.022.i21.i, align 4
  %33 = ptrtoint ptr %32 to i32
  %and.i.i.i = and i32 %33, 1
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
  %nelems.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 8
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %nelems.i.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %nelems.i.i, i32 1, i32 3, i32 1) #12
  %34 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nelems.i.i, ptr %nelems.i.i, i32 1, ptr elementtype(i32) %nelems.i.i) #12, !srcloc !216
  %automatic_shrinking.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 6
  %35 = ptrtoint ptr %automatic_shrinking.i.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %automatic_shrinking.i.i, align 2, !range !203
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool161.not.i.i = icmp eq i8 %36, 0
  br i1 %tobool161.not.i.i, label %if.then160.i.i.while.end.i_crit_edge, label %land.rhs162.i.i

if.then160.i.i.while.end.i_crit_edge:             ; preds = %if.then160.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i

land.rhs162.i.i:                                  ; preds = %if.then160.i.i
  %call.i.i.i10.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %nelems.i.i, i32 noundef 4) #12
  %37 = ptrtoint ptr %nelems.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %nelems.i.i, align 4
  %39 = ptrtoint ptr %tbl.0.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %tbl.0.i, align 128
  %mul.i.i.i = mul i32 %40, 3
  %div.i.i.i = udiv i32 %mul.i.i.i, 10
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %div.i.i.i)
  %cmp.i.i.i = icmp ult i32 %38, %div.i.i.i
  br i1 %cmp.i.i.i, label %rht_shrink_below_30.exit.i.i, label %land.rhs162.i.i.while.end.i_crit_edge

land.rhs162.i.i.while.end.i_crit_edge:            ; preds = %land.rhs162.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i

rht_shrink_below_30.exit.i.i:                     ; preds = %land.rhs162.i.i
  %min_size.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 5
  %41 = ptrtoint ptr %min_size.i.i.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %min_size.i.i.i, align 4
  %conv.i11.i.i = zext i16 %42 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %conv.i11.i.i)
  %cmp2.i.i.i = icmp ugt i32 %40, %conv.i11.i.i
  br i1 %cmp2.i.i.i, label %if.then168.i.i, label %rht_shrink_below_30.exit.i.i.while.end.i_crit_edge, !prof !212

rht_shrink_below_30.exit.i.i.while.end.i_crit_edge: ; preds = %rht_shrink_below_30.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i

if.then168.i.i:                                   ; preds = %rht_shrink_below_30.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %run_work.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %43 = load ptr, ptr @system_wq, align 4
  %call.i.i12.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %43, ptr noundef %run_work.i.i) #12
  br label %while.end.i

land.rhs.i:                                       ; preds = %unlocked.i.i, %rht_bucket_var.exit.i.i.land.rhs.i_crit_edge
  %future_tbl.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i, i32 0, i32 5
  %44 = ptrtoint ptr %future_tbl.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile ptr, ptr %future_tbl.i, align 4
  %call20.i = tail call i32 @lockdep_rht_mutex_is_held(ptr noundef %ht) #12
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
  %.b401.i = load i1, ptr @__rhashtable_remove_fast.__warned.12, align 1
  br i1 %.b401.i, label %land.lhs.true28.i.do.end33.i_crit_edge, label %if.then30.i

land.lhs.true28.i.do.end33.i_crit_edge:           ; preds = %land.lhs.true28.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end33.i

if.then30.i:                                      ; preds = %land.lhs.true28.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__rhashtable_remove_fast.__warned.12, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 1085, ptr noundef nonnull @.str.1) #12
  br label %do.end33.i

do.end33.i:                                       ; preds = %if.then30.i, %land.lhs.true28.i.do.end33.i_crit_edge, %land.lhs.true25.i.do.end33.i_crit_edge, %lor.lhs.false22.i.do.end33.i_crit_edge, %land.rhs.i.do.end33.i_crit_edge
  %tobool35.not.i = icmp eq ptr %45, null
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 724, ptr noundef nonnull @.str.9) #12
  br label %__rhashtable_remove_fast.exit

__rhashtable_remove_fast.exit:                    ; preds = %if.then.i10.i, %land.lhs.true2.i9.i.__rhashtable_remove_fast.exit_crit_edge, %land.lhs.true.i7.i.__rhashtable_remove_fast.exit_crit_edge, %while.end.i.__rhashtable_remove_fast.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !207
  %46 = tail call i32 @llvm.read_register.i32(metadata !191) #12
  %and.i.i.i.i.i11.i = and i32 %46, -16384
  %47 = inttoptr i32 %and.i.i.i.i.i11.i to ptr
  %preempt_count.i.i.i.i12.i = getelementptr inbounds %struct.thread_info, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %preempt_count.i.i.i.i12.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %preempt_count.i.i.i.i12.i, align 4
  %sub.i.i.i.i = add i32 %49, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i12.i, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_remove(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @fl_mask_put(ptr noundef %head, ptr noundef %mask) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %refcnt = getelementptr inbounds %struct.fl_flow_mask, ptr %mask, i32 0, i32 10
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !217
  tail call void @llvm.prefetch.p0(ptr %refcnt, i32 1, i32 3, i32 1) #12
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt, ptr %refcnt, i32 1, ptr elementtype(i32) %refcnt) #12, !srcloc !218
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.end, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.return_crit_edge, label %if.then10.i.i.i, !prof !206

if.end5.i.i.i.return_crit_edge:                   ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %refcnt, i32 noundef 3) #12
  br label %return

if.end:                                           ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !219
  %ht_node = getelementptr inbounds %struct.fl_flow_mask, ptr %mask, i32 0, i32 3
  tail call fastcc void @rhashtable_remove_fast(ptr noundef %head, ptr noundef %ht_node, [7 x i32] [i32 484, i32 492, i32 0, i32 256, i32 0, i32 0, i32 0])
  %masks_lock = getelementptr inbounds %struct.cls_fl_head, ptr %head, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %masks_lock) #12
  %list = getelementptr inbounds %struct.fl_flow_mask, ptr %mask, i32 0, i32 9
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #12
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del_rcu.exit_crit_edge

if.end.list_del_rcu.exit_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del_rcu.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.fl_flow_mask, ptr %mask, i32 0, i32 9, i32 1
  %1 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %prev.i.i, align 4
  %3 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %2, ptr %prev1.i.i.i, align 4
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %4, ptr %2, align 4
  br label %list_del_rcu.exit

list_del_rcu.exit:                                ; preds = %if.end.i.i, %if.end.list_del_rcu.exit_crit_edge
  %prev.i = getelementptr inbounds %struct.fl_flow_mask, ptr %mask, i32 0, i32 9, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %masks_lock) #12
  %rwork = getelementptr inbounds %struct.fl_flow_mask, ptr %mask, i32 0, i32 8
  %call3 = tail call zeroext i1 @tcf_queue_work(ptr noundef %rwork, ptr noundef nonnull @fl_mask_free_work) #12
  br label %return

return:                                           ; preds = %list_del_rcu.exit, %if.then10.i.i.i, %if.end5.i.i.i.return_crit_edge
  ret i1 %cmp.i.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fl_hw_destroy_filter(ptr noundef %tp, ptr noundef %f, i1 noundef zeroext %rtnl_held, ptr noundef %extack) unnamed_addr #2 align 64 {
entry:
  %cls_flower = alloca %struct.flow_cls_offload, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %chain = getelementptr inbounds %struct.tcf_proto, ptr %tp, i32 0, i32 7
  %0 = ptrtoint ptr %chain to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chain, align 4
  %block1 = getelementptr inbounds %struct.tcf_chain, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %block1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %block1, align 4
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %cls_flower) #12
  %4 = call ptr @memset(ptr %cls_flower, i32 0, i32 80)
  %flags = getelementptr inbounds %struct.cls_fl_filter, ptr %f, i32 0, i32 9
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags, align 4
  %index.i = getelementptr inbounds %struct.tcf_chain, ptr %1, i32 0, i32 4
  %7 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %index.i, align 4
  %9 = ptrtoint ptr %cls_flower to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %cls_flower, align 8
  %protocol.i = getelementptr inbounds %struct.tcf_proto, ptr %tp, i32 0, i32 3
  %10 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %protocol.i, align 4
  %protocol1.i = getelementptr inbounds %struct.flow_cls_common_offload, ptr %cls_flower, i32 0, i32 1
  %12 = ptrtoint ptr %protocol1.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %protocol1.i, align 4
  %prio.i = getelementptr inbounds %struct.tcf_proto, ptr %tp, i32 0, i32 4
  %13 = ptrtoint ptr %prio.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %prio.i, align 4
  %shr.i = lshr i32 %14, 16
  %prio2.i = getelementptr inbounds %struct.flow_cls_common_offload, ptr %cls_flower, i32 0, i32 2
  %15 = ptrtoint ptr %prio2.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %shr.i, ptr %prio2.i, align 8
  %16 = and i32 %6, 18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %entry.tc_cls_common_offload_init.exit_crit_edge, label %if.then.i

entry.tc_cls_common_offload_init.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %tc_cls_common_offload_init.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %extack3.i = getelementptr inbounds %struct.flow_cls_common_offload, ptr %cls_flower, i32 0, i32 3
  %18 = ptrtoint ptr %extack3.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %extack, ptr %extack3.i, align 4
  br label %tc_cls_common_offload_init.exit

tc_cls_common_offload_init.exit:                  ; preds = %if.then.i, %entry.tc_cls_common_offload_init.exit_crit_edge
  %command = getelementptr inbounds %struct.flow_cls_offload, ptr %cls_flower, i32 0, i32 1
  %19 = ptrtoint ptr %command to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %command, align 8
  %20 = ptrtoint ptr %f to i32
  %cookie = getelementptr inbounds %struct.flow_cls_offload, ptr %cls_flower, i32 0, i32 2
  %21 = ptrtoint ptr %cookie to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %cookie, align 4
  %in_hw_count = getelementptr inbounds %struct.cls_fl_filter, ptr %f, i32 0, i32 10
  %call = call i32 @tc_setup_cb_destroy(ptr noundef %3, ptr noundef %tp, i32 noundef 2, ptr noundef nonnull %cls_flower, i1 noundef zeroext false, ptr noundef %flags, ptr noundef %in_hw_count, i1 noundef zeroext %rtnl_held) #12
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %cls_flower) #12
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tcf_unbind_filter(ptr nocapture noundef readonly %tp, ptr noundef %r) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %chain = getelementptr inbounds %struct.tcf_proto, ptr %tp, i32 0, i32 7
  %0 = ptrtoint ptr %chain to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chain, align 4
  %block = getelementptr inbounds %struct.tcf_chain, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %block to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %block, align 4
  %q1 = getelementptr inbounds %struct.tcf_block, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %q1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %q1, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %r, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !209
  tail call void @llvm.prefetch.p0(ptr %r, i32 1, i32 3, i32 1) #12
  %6 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %r) #12, !srcloc !210
  %asmresult.i.i.i = extractvalue { i32, i32 } %6, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !211
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.not.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.not.i, label %if.end.cleanup_crit_edge, label %if.then.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %ops.i = getelementptr inbounds %struct.Qdisc, ptr %5, i32 0, i32 4
  %7 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ops.i, align 16
  %cl_ops.i = getelementptr inbounds %struct.Qdisc_ops, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %cl_ops.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cl_ops.i, align 4
  %unbind_tcf.i = getelementptr inbounds %struct.Qdisc_class_ops, ptr %10, i32 0, i32 11
  %11 = ptrtoint ptr %unbind_tcf.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %unbind_tcf.i, align 4
  tail call void %12(ptr noundef nonnull %5, i32 noundef %asmresult.i.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__fl_put(ptr noundef %f) unnamed_addr #2 align 64 {
entry:
  %old.i.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %refcnt = getelementptr inbounds %struct.cls_fl_filter, ptr %f, i32 0, i32 13
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !217
  tail call void @llvm.prefetch.p0(ptr %refcnt, i32 1, i32 3, i32 1) #12
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt, ptr %refcnt, i32 1, ptr elementtype(i32) %refcnt) #12, !srcloc !218
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.end, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.if.end4_crit_edge, label %if.then10.i.i.i, !prof !206

if.end5.i.i.i.if.end4_crit_edge:                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %refcnt, i32 noundef 3) #12
  br label %if.end4

if.end:                                           ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !219
  %net.i = getelementptr inbounds %struct.cls_fl_filter, ptr %f, i32 0, i32 3, i32 3
  %1 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %net.i, align 4
  %count.i.i = getelementptr inbounds %struct.net, ptr %2, i32 0, i32 14, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i.i) #12
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %count.i.i, i32 noundef 4) #12
  %3 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %count.i.i, align 4
  br label %do.body.i.i.i.i.i

do.body.i.i.i.i.i:                                ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, %if.end
  %5 = phi i32 [ %4, %if.end ], [ %asmresult3.i.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge ]
  %6 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %old.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i.i.i.i.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i.i.i.i.i, label %do.body.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, label %do.cond.i.i.i.i.i

do.body.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge:    ; preds = %do.body.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i.i.i.i.i

do.cond.i.i.i.i.i:                                ; preds = %do.body.i.i.i.i.i
  %add.i.i.i.i.i = add i32 %5, 1
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %count.i.i, i32 noundef 4) #12
  %call.i3.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i.i, i32 noundef 4) #12
  %7 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %old.i.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %count.i.i, i32 1, i32 3, i32 1) #12
  br label %do.body.i.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i.i:                          ; preds = %do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i.i
  %9 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %count.i.i, ptr %count.i.i, i32 %8, i32 %add.i.i.i.i.i, ptr elementtype(i32) %count.i.i) #12, !srcloc !205
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %9, 0
  %tobool.not.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i:   ; preds = %do.body.i.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %9, 1
  %cmp.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i.i, %8
  br i1 %cmp.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, !prof !206

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i.i.i.i.i

if.end4.i.i.i.i.i:                                ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, %do.body.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge
  %10 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %old.i.i.i.i.i, align 4
  %add5.i.i.i.i.i = add i32 %11, 1
  %12 = or i32 %add5.i.i.i.i.i, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %12)
  %.not.i.i.i.i.i = icmp sgt i32 %12, -1
  br i1 %.not.i.i.i.i.i, label %if.end4.i.i.i.i.i.maybe_get_net.exit.i_crit_edge, label %if.then10.i.i.i.i.i, !prof !206

if.end4.i.i.i.i.i.maybe_get_net.exit.i_crit_edge: ; preds = %if.end4.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %maybe_get_net.exit.i

if.then10.i.i.i.i.i:                              ; preds = %if.end4.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @refcount_warn_saturate(ptr noundef %count.i.i, i32 noundef 0) #12
  br label %maybe_get_net.exit.i

maybe_get_net.exit.i:                             ; preds = %if.then10.i.i.i.i.i, %if.end4.i.i.i.i.i.maybe_get_net.exit.i_crit_edge
  %13 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %old.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool12.i.i.i.not.i.i = icmp eq i32 %14, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i.i) #12
  %spec.select.i.i = select i1 %tobool12.i.i.i.not.i.i, ptr null, ptr %2
  %15 = ptrtoint ptr %net.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %spec.select.i.i, ptr %net.i, align 4
  %tobool.not.i = icmp eq ptr %spec.select.i.i, null
  br i1 %tobool.not.i, label %maybe_get_net.exit.i.if.else_crit_edge, label %tcf_exts_get_net.exit

maybe_get_net.exit.i.if.else_crit_edge:           ; preds = %maybe_get_net.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

tcf_exts_get_net.exit:                            ; preds = %maybe_get_net.exit.i
  %ns_tracker.i = getelementptr inbounds %struct.cls_fl_filter, ptr %f, i32 0, i32 3, i32 4
  %refcnt_tracker.i.i = getelementptr inbounds %struct.net, ptr %spec.select.i.i, i32 0, i32 15
  %call.i.i = call i32 @ref_tracker_alloc(ptr noundef %refcnt_tracker.i.i, ptr noundef %ns_tracker.i, i32 noundef 3264) #12
  %16 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pr = load ptr, ptr %net.i, align 4
  %cmp.i.not = icmp eq ptr %.pr, null
  br i1 %cmp.i.not, label %tcf_exts_get_net.exit.if.else_crit_edge, label %if.then2

tcf_exts_get_net.exit.if.else_crit_edge:          ; preds = %tcf_exts_get_net.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

if.then2:                                         ; preds = %tcf_exts_get_net.exit
  call void @__sanitizer_cov_trace_pc() #14
  %rwork = getelementptr inbounds %struct.cls_fl_filter, ptr %f, i32 0, i32 11
  %call3 = call zeroext i1 @tcf_queue_work(ptr noundef %rwork, ptr noundef nonnull @fl_destroy_filter_work) #12
  br label %if.end4

if.else:                                          ; preds = %tcf_exts_get_net.exit.if.else_crit_edge, %maybe_get_net.exit.i.if.else_crit_edge
  call fastcc void @__fl_destroy_filter(ptr noundef %f)
  br label %if.end4

if.end4:                                          ; preds = %if.else, %if.then2, %if.then10.i.i.i, %if.end5.i.i.i.if.end4_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rht_lock(ptr noundef %tbl, ptr noundef %bkt) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @local_bh_disable()
  %0 = tail call i32 @llvm.read_register.i32(metadata !191) #12
  %and.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %3, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !220
  br label %while.cond.i

while.cond.i:                                     ; preds = %do.body14.i, %entry
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %bkt, i32 noundef 4) #12
  %4 = ptrtoint ptr %bkt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %bkt, align 4
  %and.i.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %test_and_set_bit_lock.exit.i, label %while.cond.i.do.body2.i_crit_edge, !prof !221

while.cond.i.do.body2.i_crit_edge:                ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body2.i

test_and_set_bit_lock.exit.i:                     ; preds = %while.cond.i
  tail call void @llvm.prefetch.p0(ptr %bkt, i32 1, i32 3, i32 1) #12
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %bkt, ptr %bkt, i32 1, ptr elementtype(i32) %bkt) #12, !srcloc !222
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !223
  %and1.i.i.i = and i32 %asmresult.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %phi.cmp.i.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %phi.cmp.i.not.i, label %__here, label %test_and_set_bit_lock.exit.i.do.body2.i_crit_edge, !prof !206

test_and_set_bit_lock.exit.i.do.body2.i_crit_edge: ; preds = %test_and_set_bit_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body2.i

do.body2.i:                                       ; preds = %test_and_set_bit_lock.exit.i.do.body2.i_crit_edge, %while.cond.i.do.body2.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !224
  %7 = tail call i32 @llvm.read_register.i32(metadata !191) #12
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !225
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #12, !srcloc !226
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
  %13 = tail call i32 @llvm.read_register.i32(metadata !191) #12
  %and.i.i.i3.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i3.i to ptr
  %preempt_count.i.i4.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i4.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i4.i, align 4
  %add.i5.i = add i32 %16, 1
  store volatile i32 %add.i5.i, ptr %preempt_count.i.i4.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !227
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
define internal fastcc void @rht_unlock(ptr noundef %tbl, ptr noundef %bkt) #5 align 64 {
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
  br i1 %tobool.not.i, label %do.body4.i, label %bit_spin_unlock.exit, !prof !212

do.body4.i:                                       ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/bit_spinlock.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 60, 0\0A.popsection", ""() #12, !srcloc !228
  unreachable

bit_spin_unlock.exit:                             ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %bkt, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !229
  tail call void @llvm.prefetch.p0(ptr %bkt, i32 1, i32 3, i32 1) #12
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %bkt, ptr %bkt, i32 1, ptr elementtype(i32) %bkt) #12, !srcloc !230
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !231
  %3 = tail call i32 @llvm.read_register.i32(metadata !191) #12
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
define internal fastcc void @rht_assign_unlock(ptr noundef %tbl, ptr noundef %bkt, ptr noundef %obj) #5 align 64 {
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !232
  %1 = ptrtoint ptr %bkt to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %spec.select, ptr %bkt, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !233
  %2 = tail call i32 @llvm.read_register.i32(metadata !191) #12
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

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fl_mask_free_work(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %filters.i = getelementptr i8, ptr %work, i32 -8
  %0 = ptrtoint ptr %filters.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %filters.i, align 4
  %cmp.i.not.i = icmp eq ptr %1, %filters.i
  br i1 %cmp.i.not.i, label %entry.fl_mask_free.exit_crit_edge, label %do.end.i, !prof !206

entry.fl_mask_free.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %fl_mask_free.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 367, i32 noundef 9, ptr noundef null) #12
  br label %fl_mask_free.exit

fl_mask_free.exit:                                ; preds = %do.end.i, %entry.fl_mask_free.exit_crit_edge
  %add.ptr = getelementptr i8, ptr %work, i32 -820
  %ht.i = getelementptr i8, ptr %work, i32 -324
  tail call void @rhashtable_destroy(ptr noundef %ht.i) #12
  tail call void @kfree(ptr noundef %add.ptr) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rhashtable_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tc_setup_cb_destroy(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fl_destroy_filter_work(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -1040
  tail call fastcc void @__fl_destroy_filter(ptr noundef %add.ptr)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__fl_destroy_filter(ptr noundef %f) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %exts = getelementptr inbounds %struct.cls_fl_filter, ptr %f, i32 0, i32 3
  tail call void @tcf_exts_destroy(ptr noundef %exts) #12
  %net.i = getelementptr inbounds %struct.cls_fl_filter, ptr %f, i32 0, i32 3, i32 3
  %0 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.tcf_exts_put_net.exit_crit_edge, label %if.then.i

entry.tcf_exts_put_net.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %tcf_exts_put_net.exit

if.then.i:                                        ; preds = %entry
  %ns_tracker.i = getelementptr inbounds %struct.cls_fl_filter, ptr %f, i32 0, i32 3, i32 4
  %refcnt_tracker.i.i.i = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 15
  %call.i.i.i = tail call i32 @ref_tracker_free(ptr noundef %refcnt_tracker.i.i.i, ptr noundef %ns_tracker.i) #12
  %count.i.i.i = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 14, i32 3
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i.i.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !217
  tail call void @llvm.prefetch.p0(ptr %count.i.i.i, i32 1, i32 3, i32 1) #12
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i.i.i, ptr %count.i.i.i, i32 1, ptr elementtype(i32) %count.i.i.i) #12, !srcloc !218
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.tcf_exts_put_net.exit_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !206

if.end5.i.i.i.i.i.i.tcf_exts_put_net.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tcf_exts_put_net.exit

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %count.i.i.i, i32 noundef 3) #12
  br label %tcf_exts_put_net.exit

if.then.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !219
  tail call void @__put_net(ptr noundef nonnull %1) #12
  br label %tcf_exts_put_net.exit

tcf_exts_put_net.exit:                            ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.tcf_exts_put_net.exit_crit_edge, %entry.tcf_exts_put_net.exit_crit_edge
  tail call void @kfree(ptr noundef %f) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ref_tracker_alloc(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcf_exts_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ref_tracker_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_net(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_find(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fl_check_assign_mask(ptr noundef %head, ptr nocapture noundef %fnew, ptr noundef readonly %fold, ptr noundef %mask) unnamed_addr #2 align 64 {
entry:
  %old.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !191) #12
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !204
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 696, ptr noundef nonnull @.str.6) #12
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %ht_node = getelementptr inbounds %struct.fl_flow_mask, ptr %mask, i32 0, i32 3
  %obj_hashfn.i = getelementptr inbounds %struct.rhashtable, ptr %head, i32 0, i32 3, i32 8
  %4 = ptrtoint ptr %obj_hashfn.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %obj_hashfn.i, align 4
  %tobool.not.i60 = icmp eq ptr %5, null
  br i1 %tobool.not.i60, label %rhashtable_lookup_get_insert_fast.exit, label %do.body3.i, !prof !206

do.body3.i:                                       ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/rhashtable.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 929, 0\0A.popsection", ""() #12, !srcloc !234
  unreachable

rhashtable_lookup_get_insert_fast.exit:           ; preds = %rcu_read_lock.exit
  %head_offset.i.i = getelementptr inbounds %struct.rhashtable, ptr %head, i32 0, i32 3, i32 3
  %6 = ptrtoint ptr %head_offset.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %head_offset.i.i, align 2
  %conv.i.i = zext i16 %7 to i32
  %idx.neg.i.i = sub nsw i32 0, %conv.i.i
  %add.ptr.i.i = getelementptr i8, ptr %ht_node, i32 %idx.neg.i.i
  %key_offset.i = getelementptr inbounds %struct.rhashtable, ptr %head, i32 0, i32 3, i32 2
  %8 = ptrtoint ptr %key_offset.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %key_offset.i, align 4
  %conv.i = zext i16 %9 to i32
  %add.ptr.i = getelementptr i8, ptr %add.ptr.i.i, i32 %conv.i
  %call10.i = tail call fastcc ptr @__rhashtable_insert_fast(ptr noundef %head, ptr noundef %add.ptr.i, ptr noundef %ht_node, [7 x i32] [i32 484, i32 492, i32 0, i32 256, i32 0, i32 0, i32 0]) #12
  %10 = ptrtoint ptr %fnew to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call10.i, ptr %fnew, align 4
  %tobool.not = icmp eq ptr %call10.i, null
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %rhashtable_lookup_get_insert_fast.exit
  %call.i61 = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i61, label %if.then.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i64

if.then.rcu_read_unlock.exit_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true.i64:                                ; preds = %if.then
  %call1.i62 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i62)
  %tobool.not.i63 = icmp eq i32 %call1.i62, 0
  br i1 %tobool.not.i63, label %land.lhs.true.i64.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i66

land.lhs.true.i64.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i64
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true2.i66:                               ; preds = %land.lhs.true.i64
  %.b4.i65 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i65, label %land.lhs.true2.i66.rcu_read_unlock.exit_crit_edge, label %if.then.i67

land.lhs.true2.i66.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i66
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

if.then.i67:                                      ; preds = %land.lhs.true2.i66
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 724, ptr noundef nonnull @.str.9) #12
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i67, %land.lhs.true2.i66.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i64.rcu_read_unlock.exit_crit_edge, %if.then.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !207
  %11 = tail call i32 @llvm.read_register.i32(metadata !191) #12
  %and.i.i.i.i.i68 = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i.i.i68 to ptr
  %preempt_count.i.i.i.i69 = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %preempt_count.i.i.i.i69 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %preempt_count.i.i.i.i69, align 4
  %sub.i.i.i = add i32 %14, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i69, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  %tobool3.not = icmp eq ptr %fold, null
  br i1 %tobool3.not, label %if.end, label %rcu_read_unlock.exit.errout_cleanup_crit_edge

rcu_read_unlock.exit.errout_cleanup_crit_edge:    ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %errout_cleanup

if.end:                                           ; preds = %rcu_read_unlock.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %15 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %15, i32 noundef 3520, i32 noundef 888) #15
  %tobool.not.i70 = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i70, label %if.end.if.then7_crit_edge, label %if.end.i

if.end.if.then7_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then7

if.end.i:                                         ; preds = %if.end
  %range.i.i.i = getelementptr inbounds %struct.fl_flow_mask, ptr %mask, i32 0, i32 1
  %16 = ptrtoint ptr %range.i.i.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %range.i.i.i, align 4
  %conv.i.i.i = zext i16 %17 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %mask, i32 %conv.i.i.i
  %add.ptr.i12.i.i = getelementptr i8, ptr %call7.i.i.i, i32 %conv.i.i.i
  %end.i.i.i = getelementptr inbounds %struct.fl_flow_mask, ptr %mask, i32 0, i32 1, i32 1
  %18 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %end.i.i.i, align 2
  %sub.i.i.i71 = sub i16 %19, %17
  %conv.i.i72 = zext i16 %sub.i.i.i71 to i32
  %20 = call ptr @memcpy(ptr %add.ptr.i12.i.i, ptr %add.ptr.i.i.i, i32 %conv.i.i72)
  %range.i.i = getelementptr inbounds %struct.fl_flow_mask, ptr %call7.i.i.i, i32 0, i32 1
  %21 = load i32, ptr %range.i.i.i, align 4
  %22 = ptrtoint ptr %range.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %range.i.i, align 4
  %tp_range.i = getelementptr inbounds %struct.fl_flow_key, ptr %call7.i.i.i, i32 0, i32 19
  %dst.i = getelementptr inbounds %struct.anon.165, ptr %tp_range.i, i32 0, i32 1
  %23 = ptrtoint ptr %dst.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %dst.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %tobool2.not.i = icmp eq i16 %24, 0
  br i1 %tobool2.not.i, label %if.end.i.lor.lhs.false.i_crit_edge, label %land.lhs.true.i73

if.end.i.lor.lhs.false.i_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false.i

land.lhs.true.i73:                                ; preds = %if.end.i
  %tp_max.i = getelementptr inbounds %struct.fl_flow_key, ptr %call7.i.i.i, i32 0, i32 19, i32 0, i32 1
  %dst5.i = getelementptr inbounds %struct.anon.165, ptr %tp_max.i, i32 0, i32 1
  %25 = ptrtoint ptr %dst5.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %dst5.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %26)
  %tobool7.not.i = icmp eq i16 %26, 0
  br i1 %tobool7.not.i, label %land.lhs.true.i73.lor.lhs.false.i_crit_edge, label %land.lhs.true.i73.if.then20.i_crit_edge

land.lhs.true.i73.if.then20.i_crit_edge:          ; preds = %land.lhs.true.i73
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then20.i

land.lhs.true.i73.lor.lhs.false.i_crit_edge:      ; preds = %land.lhs.true.i73
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %land.lhs.true.i73.lor.lhs.false.i_crit_edge, %if.end.i.lor.lhs.false.i_crit_edge
  %27 = ptrtoint ptr %tp_range.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %tp_range.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %28)
  %tobool12.not.i = icmp eq i16 %28, 0
  br i1 %tobool12.not.i, label %lor.lhs.false.i.if.end21.i_crit_edge, label %land.lhs.true13.i

lor.lhs.false.i.if.end21.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21.i

land.lhs.true13.i:                                ; preds = %lor.lhs.false.i
  %tp_max16.i = getelementptr inbounds %struct.fl_flow_key, ptr %call7.i.i.i, i32 0, i32 19, i32 0, i32 1
  %29 = ptrtoint ptr %tp_max16.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %tp_max16.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %30)
  %tobool19.not.i = icmp eq i16 %30, 0
  br i1 %tobool19.not.i, label %land.lhs.true13.i.if.end21.i_crit_edge, label %land.lhs.true13.i.if.then20.i_crit_edge

land.lhs.true13.i.if.then20.i_crit_edge:          ; preds = %land.lhs.true13.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then20.i

land.lhs.true13.i.if.end21.i_crit_edge:           ; preds = %land.lhs.true13.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21.i

if.then20.i:                                      ; preds = %land.lhs.true13.i.if.then20.i_crit_edge, %land.lhs.true.i73.if.then20.i_crit_edge
  %flags.i = getelementptr inbounds %struct.fl_flow_mask, ptr %call7.i.i.i, i32 0, i32 2
  %31 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %flags.i, align 8
  %or.i = or i32 %32, 1
  store i32 %or.i, ptr %flags.i, align 8
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.then20.i, %land.lhs.true13.i.if.end21.i_crit_edge, %lor.lhs.false.i.if.end21.i_crit_edge
  %filter_ht_params.i.i = getelementptr inbounds %struct.fl_flow_mask, ptr %call7.i.i.i, i32 0, i32 5
  %33 = call ptr @memcpy(ptr %filter_ht_params.i.i, ptr @fl_ht_params, i32 28)
  %end.i.i65.i = getelementptr inbounds %struct.fl_flow_mask, ptr %call7.i.i.i, i32 0, i32 1, i32 1
  %34 = ptrtoint ptr %end.i.i65.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %end.i.i65.i, align 2
  %36 = ptrtoint ptr %range.i.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %range.i.i, align 4
  %sub.i.i66.i = sub i16 %35, %37
  %key_len.i.i = getelementptr inbounds %struct.fl_flow_mask, ptr %call7.i.i.i, i32 0, i32 5, i32 1
  %38 = ptrtoint ptr %key_len.i.i to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %sub.i.i66.i, ptr %key_len.i.i, align 2
  %key_offset.i.i = getelementptr inbounds %struct.fl_flow_mask, ptr %call7.i.i.i, i32 0, i32 5, i32 2
  %add.i.i = add i16 %37, 8
  %39 = ptrtoint ptr %key_offset.i.i to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %add.i.i, ptr %key_offset.i.i, align 8
  %ht.i.i = getelementptr inbounds %struct.fl_flow_mask, ptr %call7.i.i.i, i32 0, i32 4
  %call6.i.i = tail call i32 @rhashtable_init(ptr noundef %ht.i.i, ptr noundef %filter_ht_params.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i)
  %tobool23.not.i = icmp eq i32 %call6.i.i, 0
  br i1 %tobool23.not.i, label %if.end25.i, label %if.end21.i.errout_free.i_crit_edge

if.end21.i.errout_free.i_crit_edge:               ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %errout_free.i

if.end25.i:                                       ; preds = %if.end21.i
  %dissector.i = getelementptr inbounds %struct.fl_flow_mask, ptr %call7.i.i.i, i32 0, i32 6
  tail call fastcc void @fl_init_dissector(ptr noundef %dissector.i, ptr noundef nonnull %call7.i.i.i) #12
  %filters.i = getelementptr inbounds %struct.fl_flow_mask, ptr %call7.i.i.i, i32 0, i32 7
  %40 = ptrtoint ptr %filters.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %filters.i, ptr %filters.i, align 4
  %prev.i.i = getelementptr inbounds %struct.fl_flow_mask, ptr %call7.i.i.i, i32 0, i32 7, i32 1
  %41 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %filters.i, ptr %prev.i.i, align 8
  %refcnt.i = getelementptr inbounds %struct.fl_flow_mask, ptr %call7.i.i.i, i32 0, i32 10
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #12
  %42 = ptrtoint ptr %refcnt.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile i32 1, ptr %refcnt.i, align 4
  %ht_node27.i = getelementptr inbounds %struct.fl_flow_mask, ptr %call7.i.i.i, i32 0, i32 3
  %43 = tail call i32 @llvm.read_register.i32(metadata !191) #12
  %and.i.i.i.i.i.i.i = and i32 %43, -16384
  %44 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %46, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !204
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i.i.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i.i.i, label %if.end25.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true.i.i.i

if.end25.i.rcu_read_lock.exit.i.i_crit_edge:      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end25.i
  %call1.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true2.i.i.i

land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i.i

land.lhs.true2.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b4.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i, label %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 696, ptr noundef nonnull @.str.6) #12
  br label %rcu_read_lock.exit.i.i

rcu_read_lock.exit.i.i:                           ; preds = %if.then.i.i.i, %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %if.end25.i.rcu_read_lock.exit.i.i_crit_edge
  %47 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile ptr, ptr %head, align 4
  %call.i.i = tail call i32 @lockdep_rht_mutex_is_held(ptr noundef %head) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.i, label %rcu_read_lock.exit.i.i.do.end10.i.i_crit_edge

rcu_read_lock.exit.i.i.do.end10.i.i_crit_edge:    ; preds = %rcu_read_lock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10.i.i

lor.lhs.false.i.i:                                ; preds = %rcu_read_lock.exit.i.i
  %call3.i.i = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool4.not.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool4.not.i.i, label %land.lhs.true.i.i, label %lor.lhs.false.i.i.do.end10.i.i_crit_edge

lor.lhs.false.i.i.do.end10.i.i_crit_edge:         ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10.i.i

land.lhs.true.i.i:                                ; preds = %lor.lhs.false.i.i
  %call5.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %tobool6.not.i.i = icmp eq i32 %call5.i.i, 0
  br i1 %tobool6.not.i.i, label %land.lhs.true.i.i.do.end10.i.i_crit_edge, label %land.lhs.true7.i.i

land.lhs.true.i.i.do.end10.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10.i.i

land.lhs.true7.i.i:                               ; preds = %land.lhs.true.i.i
  %.b41.i.i = load i1, ptr @rhashtable_replace_fast.__warned, align 1
  br i1 %.b41.i.i, label %land.lhs.true7.i.i.do.end10.i.i_crit_edge, label %if.then.i.i

land.lhs.true7.i.i.do.end10.i.i_crit_edge:        ; preds = %land.lhs.true7.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10.i.i

if.then.i.i:                                      ; preds = %land.lhs.true7.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rhashtable_replace_fast.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 1210, ptr noundef nonnull @.str.1) #12
  br label %do.end10.i.i

do.end10.i.i:                                     ; preds = %if.then.i.i, %land.lhs.true7.i.i.do.end10.i.i_crit_edge, %land.lhs.true.i.i.do.end10.i.i_crit_edge, %lor.lhs.false.i.i.do.end10.i.i_crit_edge, %rcu_read_lock.exit.i.i.do.end10.i.i_crit_edge
  %uglygep86.i = getelementptr i8, ptr %mask, i32 972
  %uglygep90.i = getelementptr i8, ptr %call7.i.i.i, i32 972
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %do.end32.i.i.while.cond.i.i_crit_edge, %do.end10.i.i
  %tbl.0.i.i = phi ptr [ %48, %do.end10.i.i ], [ %86, %do.end32.i.i.while.cond.i.i_crit_edge ]
  %49 = ptrtoint ptr %head_offset.i.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %head_offset.i.i, align 2
  %conv.i.i.i.i.i = zext i16 %50 to i32
  %idx.neg.i.i.i.i.i = sub nsw i32 0, %conv.i.i.i.i.i
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %ht_node, i32 %idx.neg.i.i.i.i.i
  %hash_rnd.i.i.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i.i, i32 0, i32 2
  %51 = ptrtoint ptr %hash_rnd.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %hash_rnd.i.i.i.i.i, align 8
  %add1.i.i.i.i.i.i.i = add i32 %52, -559038253
  br label %while.body.i.i.i.i.i.i.i

while.body.i.i.i.i.i.i.i:                         ; preds = %while.body.i.i.i.i.i.i.i.while.body.i.i.i.i.i.i.i_crit_edge, %while.cond.i.i
  %c.0152.i.i.i.i.i.i.i = phi i32 [ %xor26.i.i.i.i.i.i.i, %while.body.i.i.i.i.i.i.i.while.body.i.i.i.i.i.i.i_crit_edge ], [ %add1.i.i.i.i.i.i.i, %while.cond.i.i ]
  %b.0151.i.i.i.i.i.i.i = phi i32 [ %add27.i.i.i.i.i.i.i, %while.body.i.i.i.i.i.i.i.while.body.i.i.i.i.i.i.i_crit_edge ], [ %add1.i.i.i.i.i.i.i, %while.cond.i.i ]
  %a.0150.i.i.i.i.i.i.i = phi i32 [ %add23.i.i.i.i.i.i.i, %while.body.i.i.i.i.i.i.i.while.body.i.i.i.i.i.i.i_crit_edge ], [ %add1.i.i.i.i.i.i.i, %while.cond.i.i ]
  %k.addr.0149.i.i.i.i.i.i.i = phi ptr [ %add.ptr.i.i.i.i.i.i.i, %while.body.i.i.i.i.i.i.i.while.body.i.i.i.i.i.i.i_crit_edge ], [ %add.ptr.i.i.i.i.i, %while.cond.i.i ]
  %length.addr.0148.i.i.i.i.i.i.i = phi i32 [ %sub28.i.i.i.i.i.i.i, %while.body.i.i.i.i.i.i.i.while.body.i.i.i.i.i.i.i_crit_edge ], [ 121, %while.cond.i.i ]
  %53 = ptrtoint ptr %k.addr.0149.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %k.addr.0149.i.i.i.i.i.i.i, align 4
  %add2.i.i.i.i.i.i.i = add i32 %54, %a.0150.i.i.i.i.i.i.i
  %arrayidx3.i.i.i.i.i.i.i = getelementptr i32, ptr %k.addr.0149.i.i.i.i.i.i.i, i32 1
  %55 = ptrtoint ptr %arrayidx3.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx3.i.i.i.i.i.i.i, align 4
  %add4.i.i.i.i.i.i.i = add i32 %56, %b.0151.i.i.i.i.i.i.i
  %arrayidx5.i.i.i.i.i.i.i = getelementptr i32, ptr %k.addr.0149.i.i.i.i.i.i.i, i32 2
  %57 = ptrtoint ptr %arrayidx5.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx5.i.i.i.i.i.i.i, align 4
  %add6.i.i.i.i.i.i.i = add i32 %58, %c.0152.i.i.i.i.i.i.i
  %sub.i.i.i.i.i.i.i = sub i32 %add2.i.i.i.i.i.i.i, %add6.i.i.i.i.i.i.i
  %or.i.i.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %add6.i.i.i.i.i.i.i, i32 %add6.i.i.i.i.i.i.i, i32 4) #12
  %xor.i.i.i.i.i.i.i = xor i32 %sub.i.i.i.i.i.i.i, %or.i.i.i.i.i.i.i.i
  %add7.i.i.i.i.i.i.i = add i32 %add6.i.i.i.i.i.i.i, %add4.i.i.i.i.i.i.i
  %sub8.i.i.i.i.i.i.i = sub i32 %add4.i.i.i.i.i.i.i, %xor.i.i.i.i.i.i.i
  %or.i135.i.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %xor.i.i.i.i.i.i.i, i32 %xor.i.i.i.i.i.i.i, i32 6) #12
  %xor10.i.i.i.i.i.i.i = xor i32 %sub8.i.i.i.i.i.i.i, %or.i135.i.i.i.i.i.i.i
  %add11.i.i.i.i.i.i.i = add i32 %xor.i.i.i.i.i.i.i, %add7.i.i.i.i.i.i.i
  %sub12.i.i.i.i.i.i.i = sub i32 %add7.i.i.i.i.i.i.i, %xor10.i.i.i.i.i.i.i
  %or.i136.i.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %xor10.i.i.i.i.i.i.i, i32 %xor10.i.i.i.i.i.i.i, i32 8) #12
  %xor14.i.i.i.i.i.i.i = xor i32 %sub12.i.i.i.i.i.i.i, %or.i136.i.i.i.i.i.i.i
  %add15.i.i.i.i.i.i.i = add i32 %xor10.i.i.i.i.i.i.i, %add11.i.i.i.i.i.i.i
  %sub16.i.i.i.i.i.i.i = sub i32 %add11.i.i.i.i.i.i.i, %xor14.i.i.i.i.i.i.i
  %or.i137.i.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %xor14.i.i.i.i.i.i.i, i32 %xor14.i.i.i.i.i.i.i, i32 16) #12
  %xor18.i.i.i.i.i.i.i = xor i32 %sub16.i.i.i.i.i.i.i, %or.i137.i.i.i.i.i.i.i
  %add19.i.i.i.i.i.i.i = add i32 %xor14.i.i.i.i.i.i.i, %add15.i.i.i.i.i.i.i
  %sub20.i.i.i.i.i.i.i = sub i32 %add15.i.i.i.i.i.i.i, %xor18.i.i.i.i.i.i.i
  %or.i138.i.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %xor18.i.i.i.i.i.i.i, i32 %xor18.i.i.i.i.i.i.i, i32 19) #12
  %xor22.i.i.i.i.i.i.i = xor i32 %sub20.i.i.i.i.i.i.i, %or.i138.i.i.i.i.i.i.i
  %add23.i.i.i.i.i.i.i = add i32 %xor18.i.i.i.i.i.i.i, %add19.i.i.i.i.i.i.i
  %sub24.i.i.i.i.i.i.i = sub i32 %add19.i.i.i.i.i.i.i, %xor22.i.i.i.i.i.i.i
  %or.i139.i.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %xor22.i.i.i.i.i.i.i, i32 %xor22.i.i.i.i.i.i.i, i32 4) #12
  %xor26.i.i.i.i.i.i.i = xor i32 %sub24.i.i.i.i.i.i.i, %or.i139.i.i.i.i.i.i.i
  %add27.i.i.i.i.i.i.i = add i32 %xor22.i.i.i.i.i.i.i, %add23.i.i.i.i.i.i.i
  %sub28.i.i.i.i.i.i.i = add nsw i32 %length.addr.0148.i.i.i.i.i.i.i, -3
  %add.ptr.i.i.i.i.i.i.i = getelementptr i32, ptr %k.addr.0149.i.i.i.i.i.i.i, i32 3
  %cmp.i.i.i.i.i.i.i = icmp ugt i32 %sub28.i.i.i.i.i.i.i, 3
  br i1 %cmp.i.i.i.i.i.i.i, label %while.body.i.i.i.i.i.i.i.while.body.i.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i190.i.i.i

while.body.i.i.i.i.i.i.i.while.body.i.i.i.i.i.i.i_crit_edge: ; preds = %while.body.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i.i.i.i.i.i.i

if.else.i.i.i190.i.i.i:                           ; preds = %while.body.i.i.i.i.i.i.i
  %uglygep87.i = getelementptr i8, ptr %uglygep86.i, i32 %idx.neg.i.i.i.i.i
  %59 = ptrtoint ptr %uglygep87.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %uglygep87.i, align 4
  %add36.i.i.i.i.i.i.i = add i32 %60, %add23.i.i.i.i.i.i.i
  %xor37.i.i.i.i.i.i.i = xor i32 %xor26.i.i.i.i.i.i.i, %add27.i.i.i.i.i.i.i
  %or.i140.i.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %add27.i.i.i.i.i.i.i, i32 %add27.i.i.i.i.i.i.i, i32 14) #12
  %sub39.i.i.i.i.i.i.i = sub i32 %xor37.i.i.i.i.i.i.i, %or.i140.i.i.i.i.i.i.i
  %xor40.i.i.i.i.i.i.i = xor i32 %add36.i.i.i.i.i.i.i, %sub39.i.i.i.i.i.i.i
  %or.i141.i.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub39.i.i.i.i.i.i.i, i32 %sub39.i.i.i.i.i.i.i, i32 11) #12
  %sub42.i.i.i.i.i.i.i = sub i32 %xor40.i.i.i.i.i.i.i, %or.i141.i.i.i.i.i.i.i
  %xor43.i.i.i.i.i.i.i = xor i32 %sub42.i.i.i.i.i.i.i, %add27.i.i.i.i.i.i.i
  %or.i142.i.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub42.i.i.i.i.i.i.i, i32 %sub42.i.i.i.i.i.i.i, i32 25) #12
  %sub45.i.i.i.i.i.i.i = sub i32 %xor43.i.i.i.i.i.i.i, %or.i142.i.i.i.i.i.i.i
  %xor46.i.i.i.i.i.i.i = xor i32 %sub45.i.i.i.i.i.i.i, %sub39.i.i.i.i.i.i.i
  %or.i143.i.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub45.i.i.i.i.i.i.i, i32 %sub45.i.i.i.i.i.i.i, i32 16) #12
  %sub48.i.i.i.i.i.i.i = sub i32 %xor46.i.i.i.i.i.i.i, %or.i143.i.i.i.i.i.i.i
  %xor49.i.i.i.i.i.i.i = xor i32 %sub48.i.i.i.i.i.i.i, %sub42.i.i.i.i.i.i.i
  %or.i144.i.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub48.i.i.i.i.i.i.i, i32 %sub48.i.i.i.i.i.i.i, i32 4) #12
  %sub51.i.i.i.i.i.i.i = sub i32 %xor49.i.i.i.i.i.i.i, %or.i144.i.i.i.i.i.i.i
  %xor52.i.i.i.i.i.i.i = xor i32 %sub51.i.i.i.i.i.i.i, %sub45.i.i.i.i.i.i.i
  %or.i145.i.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub51.i.i.i.i.i.i.i, i32 %sub51.i.i.i.i.i.i.i, i32 14) #12
  %sub54.i.i.i.i.i.i.i = sub i32 %xor52.i.i.i.i.i.i.i, %or.i145.i.i.i.i.i.i.i
  %or.i146.i.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub54.i.i.i.i.i.i.i, i32 %sub54.i.i.i.i.i.i.i, i32 24) #12
  %61 = ptrtoint ptr %tbl.0.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %tbl.0.i.i, align 128
  %add.ptr.i181.i.i.i = getelementptr i8, ptr %ht_node27.i, i32 %idx.neg.i.i.i.i.i
  br label %while.body.i.i.i.i244.i.i.i

while.body.i.i.i.i244.i.i.i:                      ; preds = %while.body.i.i.i.i244.i.i.i.while.body.i.i.i.i244.i.i.i_crit_edge, %if.else.i.i.i190.i.i.i
  %c.0152.i.i.i.i207.i.i.i = phi i32 [ %xor26.i.i.i.i239.i.i.i, %while.body.i.i.i.i244.i.i.i.while.body.i.i.i.i244.i.i.i_crit_edge ], [ %add1.i.i.i.i.i.i.i, %if.else.i.i.i190.i.i.i ]
  %b.0151.i.i.i.i208.i.i.i = phi i32 [ %add27.i.i.i.i240.i.i.i, %while.body.i.i.i.i244.i.i.i.while.body.i.i.i.i244.i.i.i_crit_edge ], [ %add1.i.i.i.i.i.i.i, %if.else.i.i.i190.i.i.i ]
  %a.0150.i.i.i.i209.i.i.i = phi i32 [ %add23.i.i.i.i236.i.i.i, %while.body.i.i.i.i244.i.i.i.while.body.i.i.i.i244.i.i.i_crit_edge ], [ %add1.i.i.i.i.i.i.i, %if.else.i.i.i190.i.i.i ]
  %k.addr.0149.i.i.i.i210.i.i.i = phi ptr [ %add.ptr.i.i.i.i242.i.i.i, %while.body.i.i.i.i244.i.i.i.while.body.i.i.i.i244.i.i.i_crit_edge ], [ %add.ptr.i181.i.i.i, %if.else.i.i.i190.i.i.i ]
  %length.addr.0148.i.i.i.i211.i.i.i = phi i32 [ %sub28.i.i.i.i241.i.i.i, %while.body.i.i.i.i244.i.i.i.while.body.i.i.i.i244.i.i.i_crit_edge ], [ 121, %if.else.i.i.i190.i.i.i ]
  %63 = ptrtoint ptr %k.addr.0149.i.i.i.i210.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %k.addr.0149.i.i.i.i210.i.i.i, align 4
  %add2.i.i.i.i212.i.i.i = add i32 %64, %a.0150.i.i.i.i209.i.i.i
  %arrayidx3.i.i.i.i213.i.i.i = getelementptr i32, ptr %k.addr.0149.i.i.i.i210.i.i.i, i32 1
  %65 = ptrtoint ptr %arrayidx3.i.i.i.i213.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx3.i.i.i.i213.i.i.i, align 4
  %add4.i.i.i.i214.i.i.i = add i32 %66, %b.0151.i.i.i.i208.i.i.i
  %arrayidx5.i.i.i.i215.i.i.i = getelementptr i32, ptr %k.addr.0149.i.i.i.i210.i.i.i, i32 2
  %67 = ptrtoint ptr %arrayidx5.i.i.i.i215.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx5.i.i.i.i215.i.i.i, align 4
  %add6.i.i.i.i216.i.i.i = add i32 %68, %c.0152.i.i.i.i207.i.i.i
  %sub.i.i.i.i217.i.i.i = sub i32 %add2.i.i.i.i212.i.i.i, %add6.i.i.i.i216.i.i.i
  %or.i.i.i.i.i218.i.i.i = tail call i32 @llvm.fshl.i32(i32 %add6.i.i.i.i216.i.i.i, i32 %add6.i.i.i.i216.i.i.i, i32 4) #12
  %xor.i.i.i.i219.i.i.i = xor i32 %sub.i.i.i.i217.i.i.i, %or.i.i.i.i.i218.i.i.i
  %add7.i.i.i.i220.i.i.i = add i32 %add6.i.i.i.i216.i.i.i, %add4.i.i.i.i214.i.i.i
  %sub8.i.i.i.i221.i.i.i = sub i32 %add4.i.i.i.i214.i.i.i, %xor.i.i.i.i219.i.i.i
  %or.i135.i.i.i.i222.i.i.i = tail call i32 @llvm.fshl.i32(i32 %xor.i.i.i.i219.i.i.i, i32 %xor.i.i.i.i219.i.i.i, i32 6) #12
  %xor10.i.i.i.i223.i.i.i = xor i32 %sub8.i.i.i.i221.i.i.i, %or.i135.i.i.i.i222.i.i.i
  %add11.i.i.i.i224.i.i.i = add i32 %xor.i.i.i.i219.i.i.i, %add7.i.i.i.i220.i.i.i
  %sub12.i.i.i.i225.i.i.i = sub i32 %add7.i.i.i.i220.i.i.i, %xor10.i.i.i.i223.i.i.i
  %or.i136.i.i.i.i226.i.i.i = tail call i32 @llvm.fshl.i32(i32 %xor10.i.i.i.i223.i.i.i, i32 %xor10.i.i.i.i223.i.i.i, i32 8) #12
  %xor14.i.i.i.i227.i.i.i = xor i32 %sub12.i.i.i.i225.i.i.i, %or.i136.i.i.i.i226.i.i.i
  %add15.i.i.i.i228.i.i.i = add i32 %xor10.i.i.i.i223.i.i.i, %add11.i.i.i.i224.i.i.i
  %sub16.i.i.i.i229.i.i.i = sub i32 %add11.i.i.i.i224.i.i.i, %xor14.i.i.i.i227.i.i.i
  %or.i137.i.i.i.i230.i.i.i = tail call i32 @llvm.fshl.i32(i32 %xor14.i.i.i.i227.i.i.i, i32 %xor14.i.i.i.i227.i.i.i, i32 16) #12
  %xor18.i.i.i.i231.i.i.i = xor i32 %sub16.i.i.i.i229.i.i.i, %or.i137.i.i.i.i230.i.i.i
  %add19.i.i.i.i232.i.i.i = add i32 %xor14.i.i.i.i227.i.i.i, %add15.i.i.i.i228.i.i.i
  %sub20.i.i.i.i233.i.i.i = sub i32 %add15.i.i.i.i228.i.i.i, %xor18.i.i.i.i231.i.i.i
  %or.i138.i.i.i.i234.i.i.i = tail call i32 @llvm.fshl.i32(i32 %xor18.i.i.i.i231.i.i.i, i32 %xor18.i.i.i.i231.i.i.i, i32 19) #12
  %xor22.i.i.i.i235.i.i.i = xor i32 %sub20.i.i.i.i233.i.i.i, %or.i138.i.i.i.i234.i.i.i
  %add23.i.i.i.i236.i.i.i = add i32 %xor18.i.i.i.i231.i.i.i, %add19.i.i.i.i232.i.i.i
  %sub24.i.i.i.i237.i.i.i = sub i32 %add19.i.i.i.i232.i.i.i, %xor22.i.i.i.i235.i.i.i
  %or.i139.i.i.i.i238.i.i.i = tail call i32 @llvm.fshl.i32(i32 %xor22.i.i.i.i235.i.i.i, i32 %xor22.i.i.i.i235.i.i.i, i32 4) #12
  %xor26.i.i.i.i239.i.i.i = xor i32 %sub24.i.i.i.i237.i.i.i, %or.i139.i.i.i.i238.i.i.i
  %add27.i.i.i.i240.i.i.i = add i32 %xor22.i.i.i.i235.i.i.i, %add23.i.i.i.i236.i.i.i
  %sub28.i.i.i.i241.i.i.i = add nsw i32 %length.addr.0148.i.i.i.i211.i.i.i, -3
  %add.ptr.i.i.i.i242.i.i.i = getelementptr i32, ptr %k.addr.0149.i.i.i.i210.i.i.i, i32 3
  %cmp.i.i.i.i243.i.i.i = icmp ugt i32 %sub28.i.i.i.i241.i.i.i, 3
  br i1 %cmp.i.i.i.i243.i.i.i, label %while.body.i.i.i.i244.i.i.i.while.body.i.i.i.i244.i.i.i_crit_edge, label %rht_head_hashfn.exit294.i.i.i

while.body.i.i.i.i244.i.i.i.while.body.i.i.i.i244.i.i.i_crit_edge: ; preds = %while.body.i.i.i.i244.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i.i.i.i244.i.i.i

rht_head_hashfn.exit294.i.i.i:                    ; preds = %while.body.i.i.i.i244.i.i.i
  %xor55.i.i.i.i.i.i.i = xor i32 %sub54.i.i.i.i.i.i.i, %sub48.i.i.i.i.i.i.i
  %sub57.i.i.i.i.i.i.i = sub i32 %xor55.i.i.i.i.i.i.i, %or.i146.i.i.i.i.i.i.i
  %sub.i.i.i.i.i.i = add i32 %62, -1
  %and.i3.i.i.i.i.i = and i32 %sub57.i.i.i.i.i.i.i, %sub.i.i.i.i.i.i
  %uglygep91.i = getelementptr i8, ptr %uglygep90.i, i32 %idx.neg.i.i.i.i.i
  %69 = ptrtoint ptr %uglygep91.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %uglygep91.i, align 4
  %add36.i.i.i.i260.i.i.i = add i32 %70, %add23.i.i.i.i236.i.i.i
  %xor37.i.i.i.i261.i.i.i = xor i32 %xor26.i.i.i.i239.i.i.i, %add27.i.i.i.i240.i.i.i
  %or.i140.i.i.i.i262.i.i.i = tail call i32 @llvm.fshl.i32(i32 %add27.i.i.i.i240.i.i.i, i32 %add27.i.i.i.i240.i.i.i, i32 14) #12
  %sub39.i.i.i.i263.i.i.i = sub i32 %xor37.i.i.i.i261.i.i.i, %or.i140.i.i.i.i262.i.i.i
  %xor40.i.i.i.i264.i.i.i = xor i32 %add36.i.i.i.i260.i.i.i, %sub39.i.i.i.i263.i.i.i
  %or.i141.i.i.i.i265.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub39.i.i.i.i263.i.i.i, i32 %sub39.i.i.i.i263.i.i.i, i32 11) #12
  %sub42.i.i.i.i266.i.i.i = sub i32 %xor40.i.i.i.i264.i.i.i, %or.i141.i.i.i.i265.i.i.i
  %xor43.i.i.i.i267.i.i.i = xor i32 %sub42.i.i.i.i266.i.i.i, %add27.i.i.i.i240.i.i.i
  %or.i142.i.i.i.i268.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub42.i.i.i.i266.i.i.i, i32 %sub42.i.i.i.i266.i.i.i, i32 25) #12
  %sub45.i.i.i.i269.i.i.i = sub i32 %xor43.i.i.i.i267.i.i.i, %or.i142.i.i.i.i268.i.i.i
  %xor46.i.i.i.i270.i.i.i = xor i32 %sub45.i.i.i.i269.i.i.i, %sub39.i.i.i.i263.i.i.i
  %or.i143.i.i.i.i271.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub45.i.i.i.i269.i.i.i, i32 %sub45.i.i.i.i269.i.i.i, i32 16) #12
  %sub48.i.i.i.i272.i.i.i = sub i32 %xor46.i.i.i.i270.i.i.i, %or.i143.i.i.i.i271.i.i.i
  %xor49.i.i.i.i273.i.i.i = xor i32 %sub48.i.i.i.i272.i.i.i, %sub42.i.i.i.i266.i.i.i
  %or.i144.i.i.i.i274.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub48.i.i.i.i272.i.i.i, i32 %sub48.i.i.i.i272.i.i.i, i32 4) #12
  %sub51.i.i.i.i275.i.i.i = sub i32 %xor49.i.i.i.i273.i.i.i, %or.i144.i.i.i.i274.i.i.i
  %xor52.i.i.i.i276.i.i.i = xor i32 %sub51.i.i.i.i275.i.i.i, %sub45.i.i.i.i269.i.i.i
  %or.i145.i.i.i.i277.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub51.i.i.i.i275.i.i.i, i32 %sub51.i.i.i.i275.i.i.i, i32 14) #12
  %sub54.i.i.i.i278.i.i.i = sub i32 %xor52.i.i.i.i276.i.i.i, %or.i145.i.i.i.i277.i.i.i
  %xor55.i.i.i.i279.i.i.i = xor i32 %sub54.i.i.i.i278.i.i.i, %sub48.i.i.i.i272.i.i.i
  %or.i146.i.i.i.i280.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub54.i.i.i.i278.i.i.i, i32 %sub54.i.i.i.i278.i.i.i, i32 24) #12
  %sub57.i.i.i.i281.i.i.i = sub i32 %xor55.i.i.i.i279.i.i.i, %or.i146.i.i.i.i280.i.i.i
  %and.i3.i.i293.i.i.i = and i32 %sub57.i.i.i.i281.i.i.i, %sub.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i3.i.i.i.i.i, i32 %and.i3.i.i293.i.i.i)
  %cmp.not.i.i.i = icmp eq i32 %and.i3.i.i.i.i.i, %and.i3.i.i293.i.i.i
  br i1 %cmp.not.i.i.i, label %if.end.i.i.i, label %rht_head_hashfn.exit294.i.i.i.land.rhs.i.i_crit_edge

rht_head_hashfn.exit294.i.i.i.land.rhs.i.i_crit_edge: ; preds = %rht_head_hashfn.exit294.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs.i.i

if.end.i.i.i:                                     ; preds = %rht_head_hashfn.exit294.i.i.i
  %nest.i.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i.i, i32 0, i32 1
  %71 = ptrtoint ptr %nest.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %nest.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool.not.i295.i.i.i = icmp eq i32 %72, 0
  br i1 %tobool.not.i295.i.i.i, label %cond.false.i297.i.i.i, label %cond.true.i296.i.i.i, !prof !206

cond.true.i296.i.i.i:                             ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i67.i = tail call ptr @__rht_bucket_nested(ptr noundef %tbl.0.i.i, i32 noundef %and.i3.i.i.i.i.i) #12
  br label %rht_bucket_var.exit.i.i.i

cond.false.i297.i.i.i:                            ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i.i.i.i = getelementptr %struct.bucket_table, ptr %tbl.0.i.i, i32 0, i32 8, i32 %and.i3.i.i.i.i.i
  br label %rht_bucket_var.exit.i.i.i

rht_bucket_var.exit.i.i.i:                        ; preds = %cond.false.i297.i.i.i, %cond.true.i296.i.i.i
  %cond.i298.i.i.i = phi ptr [ %call.i.i.i67.i, %cond.true.i296.i.i.i ], [ %arrayidx.i.i.i.i, %cond.false.i297.i.i.i ]
  %tobool.not.i42.i.i = icmp eq ptr %cond.i298.i.i.i, null
  br i1 %tobool.not.i42.i.i, label %rht_bucket_var.exit.i.i.i.land.rhs.i.i_crit_edge, label %if.end4.i.i.i

rht_bucket_var.exit.i.i.i.land.rhs.i.i_crit_edge: ; preds = %rht_bucket_var.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs.i.i

if.end4.i.i.i:                                    ; preds = %rht_bucket_var.exit.i.i.i
  tail call fastcc void @rht_lock(ptr noundef %tbl.0.i.i, ptr noundef nonnull %cond.i298.i.i.i) #12
  %call.i300.i.i.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %tbl.0.i.i, i32 noundef %and.i3.i.i.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i300.i.i.i)
  %tobool.not.i301.i.i.i = icmp eq i32 %call.i300.i.i.i, 0
  br i1 %tobool.not.i301.i.i.i, label %land.lhs.true.i.i.i.i, label %if.end4.i.i.i.rht_ptr.exit.i.i.i_crit_edge

if.end4.i.i.i.rht_ptr.exit.i.i.i_crit_edge:       ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rht_ptr.exit.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.end4.i.i.i
  %call1.i.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool2.not.i.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool2.not.i.i.i.i, label %land.lhs.true.i.i.i.i.rht_ptr.exit.i.i.i_crit_edge, label %land.lhs.true3.i.i.i.i

land.lhs.true.i.i.i.i.rht_ptr.exit.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rht_ptr.exit.i.i.i

land.lhs.true3.i.i.i.i:                           ; preds = %land.lhs.true.i.i.i.i
  %.b7.i.i.i.i = load i1, ptr @rht_ptr.__warned, align 1
  br i1 %.b7.i.i.i.i, label %land.lhs.true3.i.i.i.i.rht_ptr.exit.i.i.i_crit_edge, label %if.then.i.i.i.i

land.lhs.true3.i.i.i.i.rht_ptr.exit.i.i.i_crit_edge: ; preds = %land.lhs.true3.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rht_ptr.exit.i.i.i

if.then.i.i.i.i:                                  ; preds = %land.lhs.true3.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rht_ptr.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 377, ptr noundef nonnull @.str.13) #12
  br label %rht_ptr.exit.i.i.i

rht_ptr.exit.i.i.i:                               ; preds = %if.then.i.i.i.i, %land.lhs.true3.i.i.i.i.rht_ptr.exit.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.rht_ptr.exit.i.i.i_crit_edge, %if.end4.i.i.i.rht_ptr.exit.i.i.i_crit_edge
  %73 = ptrtoint ptr %cond.i298.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %cond.i298.i.i.i, align 4
  %75 = ptrtoint ptr %74 to i32
  %and.i.i.i.i.i74 = and i32 %75, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i74)
  %tobool.not.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i74, 0
  %76 = ptrtoint ptr %cond.i298.i.i.i to i32
  %or.i.i.i.i.i = or i32 %76, 1
  %cond.i.i.i.i.i = select i1 %tobool.not.i.i.i.i.i, i32 %or.i.i.i.i.i, i32 %and.i.i.i.i.i74
  %and.i321.i.i.i = and i32 %cond.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i321.i.i.i)
  %tobool.i.not322.i.i.i = icmp eq i32 %and.i321.i.i.i, 0
  br i1 %tobool.i.not322.i.i.i, label %for.body.preheader.i.i.i, label %rht_ptr.exit.i.i.i.for.end.i.i.i_crit_edge

rht_ptr.exit.i.i.i.for.end.i.i.i_crit_edge:       ; preds = %rht_ptr.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i.i.i

for.body.preheader.i.i.i:                         ; preds = %rht_ptr.exit.i.i.i
  %77 = inttoptr i32 %cond.i.i.i.i.i to ptr
  %cmp7.not.i75.i.i = icmp eq ptr %ht_node, %77
  br i1 %cmp7.not.i75.i.i, label %for.body.preheader.i.i.i.do.body.i.i.i_crit_edge, label %for.body.preheader.i.i.i.if.then8.i.i.i_crit_edge

for.body.preheader.i.i.i.if.then8.i.i.i_crit_edge: ; preds = %for.body.preheader.i.i.i
  br label %if.then8.i.i.i

for.body.preheader.i.i.i.do.body.i.i.i_crit_edge: ; preds = %for.body.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i.i

for.body.i.i.i:                                   ; preds = %do.end100.i.i.i
  %cmp7.not.i.i.i = icmp eq ptr %83, %ht_node
  br i1 %cmp7.not.i.i.i, label %for.body.i.i.i.do.body.i.i.i_crit_edge, label %for.body.i.i.i.if.then8.i.i.i_crit_edge

for.body.i.i.i.if.then8.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then8.i.i.i

for.body.i.i.i.do.body.i.i.i_crit_edge:           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i.i

if.then8.i.i.i:                                   ; preds = %for.body.i.i.i.if.then8.i.i.i_crit_edge, %for.body.preheader.i.i.i.if.then8.i.i.i_crit_edge
  %he.0323.i76.i.i = phi ptr [ %83, %for.body.i.i.i.if.then8.i.i.i_crit_edge ], [ %77, %for.body.preheader.i.i.i.if.then8.i.i.i_crit_edge ]
  %call90.i.i.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %tbl.0.i.i, i32 noundef %and.i3.i.i.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90.i.i.i)
  %tobool91.not.i.i.i = icmp eq i32 %call90.i.i.i, 0
  br i1 %tobool91.not.i.i.i, label %land.lhs.true92.i.i.i, label %if.then8.i.i.i.do.end100.i.i.i_crit_edge

if.then8.i.i.i.do.end100.i.i.i_crit_edge:         ; preds = %if.then8.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end100.i.i.i

do.body.i.i.i:                                    ; preds = %for.body.i.i.i.do.body.i.i.i_crit_edge, %for.body.preheader.i.i.i.do.body.i.i.i_crit_edge
  %pprev.0324.i.lcssa.i.i = phi ptr [ %he.0323.i76.i.i, %for.body.i.i.i.do.body.i.i.i_crit_edge ], [ null, %for.body.preheader.i.i.i.do.body.i.i.i_crit_edge ]
  %78 = ptrtoint ptr %ht_node to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %ht_node, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !235
  %80 = ptrtoint ptr %ht_node27.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store volatile ptr %79, ptr %ht_node27.i, align 4
  %tobool46.not.i.i.i = icmp eq ptr %pprev.0324.i.lcssa.i.i, null
  br i1 %tobool46.not.i.i.i, label %if.else87.i.i.i, label %do.body48.i.i.i

do.body48.i.i.i:                                  ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !236
  %81 = ptrtoint ptr %pprev.0324.i.lcssa.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store volatile ptr %ht_node27.i, ptr %pprev.0324.i.lcssa.i.i, align 4
  tail call fastcc void @rht_unlock(ptr noundef %tbl.0.i.i, ptr noundef nonnull %cond.i298.i.i.i) #12
  br label %while.end.i.i

if.else87.i.i.i:                                  ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @rht_assign_unlock(ptr noundef %tbl.0.i.i, ptr noundef nonnull %cond.i298.i.i.i, ptr noundef %ht_node27.i) #12
  br label %while.end.i.i

land.lhs.true92.i.i.i:                            ; preds = %if.then8.i.i.i
  %call93.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93.i.i.i)
  %tobool94.not.i.i.i = icmp eq i32 %call93.i.i.i, 0
  br i1 %tobool94.not.i.i.i, label %land.lhs.true92.i.i.i.do.end100.i.i.i_crit_edge, label %land.lhs.true95.i.i.i

land.lhs.true92.i.i.i.do.end100.i.i.i_crit_edge:  ; preds = %land.lhs.true92.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end100.i.i.i

land.lhs.true95.i.i.i:                            ; preds = %land.lhs.true92.i.i.i
  %.b160.i.i.i = load i1, ptr @__rhashtable_replace_fast.__warned, align 1
  br i1 %.b160.i.i.i, label %land.lhs.true95.i.i.i.do.end100.i.i.i_crit_edge, label %if.then97.i.i.i

land.lhs.true95.i.i.i.do.end100.i.i.i_crit_edge:  ; preds = %land.lhs.true95.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end100.i.i.i

if.then97.i.i.i:                                  ; preds = %land.lhs.true95.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__rhashtable_replace_fast.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 1163, ptr noundef nonnull @.str.13) #12
  br label %do.end100.i.i.i

do.end100.i.i.i:                                  ; preds = %if.then97.i.i.i, %land.lhs.true95.i.i.i.do.end100.i.i.i_crit_edge, %land.lhs.true92.i.i.i.do.end100.i.i.i_crit_edge, %if.then8.i.i.i.do.end100.i.i.i_crit_edge
  %82 = ptrtoint ptr %he.0323.i76.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %he.0323.i76.i.i, align 4
  %84 = ptrtoint ptr %83 to i32
  %and.i.i.i.i = and i32 %84, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.i.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i, label %for.body.i.i.i, label %do.end100.i.i.i.for.end.i.i.i_crit_edge

do.end100.i.i.i.for.end.i.i.i_crit_edge:          ; preds = %do.end100.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i.i.i

for.end.i.i.i:                                    ; preds = %do.end100.i.i.i.for.end.i.i.i_crit_edge, %rht_ptr.exit.i.i.i.for.end.i.i.i_crit_edge
  tail call fastcc void @rht_unlock(ptr noundef %tbl.0.i.i, ptr noundef nonnull %cond.i298.i.i.i) #12
  br label %land.rhs.i.i

land.rhs.i.i:                                     ; preds = %for.end.i.i.i, %rht_bucket_var.exit.i.i.i.land.rhs.i.i_crit_edge, %rht_head_hashfn.exit294.i.i.i.land.rhs.i.i_crit_edge
  %retval.0.i.ph.i.i = phi i32 [ -2, %for.end.i.i.i ], [ -2, %rht_bucket_var.exit.i.i.i.land.rhs.i.i_crit_edge ], [ -22, %rht_head_hashfn.exit294.i.i.i.land.rhs.i.i_crit_edge ]
  %future_tbl.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i.i, i32 0, i32 5
  %85 = ptrtoint ptr %future_tbl.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load volatile ptr, ptr %future_tbl.i.i, align 4
  %call19.i.i = tail call i32 @lockdep_rht_mutex_is_held(ptr noundef %head) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i.i)
  %tobool20.not.i.i = icmp eq i32 %call19.i.i, 0
  br i1 %tobool20.not.i.i, label %lor.lhs.false21.i.i, label %land.rhs.i.i.do.end32.i.i_crit_edge

land.rhs.i.i.do.end32.i.i_crit_edge:              ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end32.i.i

lor.lhs.false21.i.i:                              ; preds = %land.rhs.i.i
  %call22.i.i = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i.i)
  %tobool23.not.i.i = icmp eq i32 %call22.i.i, 0
  br i1 %tobool23.not.i.i, label %land.lhs.true24.i.i, label %lor.lhs.false21.i.i.do.end32.i.i_crit_edge

lor.lhs.false21.i.i.do.end32.i.i_crit_edge:       ; preds = %lor.lhs.false21.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end32.i.i

land.lhs.true24.i.i:                              ; preds = %lor.lhs.false21.i.i
  %call25.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i.i)
  %tobool26.not.i.i = icmp eq i32 %call25.i.i, 0
  br i1 %tobool26.not.i.i, label %land.lhs.true24.i.i.do.end32.i.i_crit_edge, label %land.lhs.true27.i.i

land.lhs.true24.i.i.do.end32.i.i_crit_edge:       ; preds = %land.lhs.true24.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end32.i.i

land.lhs.true27.i.i:                              ; preds = %land.lhs.true24.i.i
  %.b3940.i.i = load i1, ptr @rhashtable_replace_fast.__warned.54, align 1
  br i1 %.b3940.i.i, label %land.lhs.true27.i.i.do.end32.i.i_crit_edge, label %if.then29.i.i

land.lhs.true27.i.i.do.end32.i.i_crit_edge:       ; preds = %land.lhs.true27.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end32.i.i

if.then29.i.i:                                    ; preds = %land.lhs.true27.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rhashtable_replace_fast.__warned.54, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 1219, ptr noundef nonnull @.str.1) #12
  br label %do.end32.i.i

do.end32.i.i:                                     ; preds = %if.then29.i.i, %land.lhs.true27.i.i.do.end32.i.i_crit_edge, %land.lhs.true24.i.i.do.end32.i.i_crit_edge, %lor.lhs.false21.i.i.do.end32.i.i_crit_edge, %land.rhs.i.i.do.end32.i.i_crit_edge
  %tobool34.not.i.i = icmp eq ptr %86, null
  br i1 %tobool34.not.i.i, label %do.end32.i.i.while.end.i.i_crit_edge, label %do.end32.i.i.while.cond.i.i_crit_edge

do.end32.i.i.while.cond.i.i_crit_edge:            ; preds = %do.end32.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i.i

do.end32.i.i.while.end.i.i_crit_edge:             ; preds = %do.end32.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i.i

while.end.i.i:                                    ; preds = %do.end32.i.i.while.end.i.i_crit_edge, %if.else87.i.i.i, %do.body48.i.i.i
  %retval.0.i72.i.i = phi i32 [ 0, %if.else87.i.i.i ], [ 0, %do.body48.i.i.i ], [ %retval.0.i.ph.i.i, %do.end32.i.i.while.end.i.i_crit_edge ]
  %call.i43.i.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i43.i.i, label %while.end.i.i.rhashtable_replace_fast.exit.i_crit_edge, label %land.lhs.true.i46.i.i

while.end.i.i.rhashtable_replace_fast.exit.i_crit_edge: ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rhashtable_replace_fast.exit.i

land.lhs.true.i46.i.i:                            ; preds = %while.end.i.i
  %call1.i44.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i44.i.i)
  %tobool.not.i45.i.i = icmp eq i32 %call1.i44.i.i, 0
  br i1 %tobool.not.i45.i.i, label %land.lhs.true.i46.i.i.rhashtable_replace_fast.exit.i_crit_edge, label %land.lhs.true2.i48.i.i

land.lhs.true.i46.i.i.rhashtable_replace_fast.exit.i_crit_edge: ; preds = %land.lhs.true.i46.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rhashtable_replace_fast.exit.i

land.lhs.true2.i48.i.i:                           ; preds = %land.lhs.true.i46.i.i
  %.b4.i47.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i47.i.i, label %land.lhs.true2.i48.i.i.rhashtable_replace_fast.exit.i_crit_edge, label %if.then.i49.i.i

land.lhs.true2.i48.i.i.rhashtable_replace_fast.exit.i_crit_edge: ; preds = %land.lhs.true2.i48.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rhashtable_replace_fast.exit.i

if.then.i49.i.i:                                  ; preds = %land.lhs.true2.i48.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 724, ptr noundef nonnull @.str.9) #12
  br label %rhashtable_replace_fast.exit.i

rhashtable_replace_fast.exit.i:                   ; preds = %if.then.i49.i.i, %land.lhs.true2.i48.i.i.rhashtable_replace_fast.exit.i_crit_edge, %land.lhs.true.i46.i.i.rhashtable_replace_fast.exit.i_crit_edge, %while.end.i.i.rhashtable_replace_fast.exit.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !207
  %87 = tail call i32 @llvm.read_register.i32(metadata !191) #12
  %and.i.i.i.i.i50.i.i = and i32 %87, -16384
  %88 = inttoptr i32 %and.i.i.i.i.i50.i.i to ptr
  %preempt_count.i.i.i.i51.i.i = getelementptr inbounds %struct.thread_info, ptr %88, i32 0, i32 1
  %89 = ptrtoint ptr %preempt_count.i.i.i.i51.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load volatile i32, ptr %preempt_count.i.i.i.i51.i.i, align 4
  %sub.i.i.i.i.i = add i32 %90, -1
  store volatile i32 %sub.i.i.i.i.i, ptr %preempt_count.i.i.i.i51.i.i, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i72.i.i)
  %tobool29.not.i = icmp eq i32 %retval.0.i72.i.i, 0
  br i1 %tobool29.not.i, label %if.end31.i, label %errout_destroy.i

if.end31.i:                                       ; preds = %rhashtable_replace_fast.exit.i
  %masks_lock.i = getelementptr inbounds %struct.cls_fl_head, ptr %head, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %masks_lock.i) #12
  %list.i = getelementptr inbounds %struct.fl_flow_mask, ptr %call7.i.i.i, i32 0, i32 9
  %masks.i = getelementptr inbounds %struct.cls_fl_head, ptr %head, i32 0, i32 2
  %prev.i68.i = getelementptr inbounds %struct.cls_fl_head, ptr %head, i32 0, i32 2, i32 1
  %91 = ptrtoint ptr %prev.i68.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %prev.i68.i, align 4
  %call.i.i69.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list.i, ptr noundef %92, ptr noundef %masks.i) #12
  br i1 %call.i.i69.i, label %if.end.i.i70.i, label %if.end31.i.list_add_tail_rcu.exit.i_crit_edge

if.end31.i.list_add_tail_rcu.exit.i_crit_edge:    ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail_rcu.exit.i

if.end.i.i70.i:                                   ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #14
  %93 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %masks.i, ptr %list.i, align 4
  %prev2.i.i.i = getelementptr inbounds %struct.fl_flow_mask, ptr %call7.i.i.i, i32 0, i32 9, i32 1
  %94 = ptrtoint ptr %prev2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %92, ptr %prev2.i.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !237
  %95 = ptrtoint ptr %92 to i32
  call void @__asan_store4_noabort(i32 %95)
  store volatile ptr %list.i, ptr %92, align 4
  %96 = ptrtoint ptr %prev.i68.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %list.i, ptr %prev.i68.i, align 4
  br label %list_add_tail_rcu.exit.i

list_add_tail_rcu.exit.i:                         ; preds = %if.end.i.i70.i, %if.end31.i.list_add_tail_rcu.exit.i_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %masks_lock.i) #12
  br label %fl_create_new_mask.exit

errout_destroy.i:                                 ; preds = %rhashtable_replace_fast.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @rhashtable_destroy(ptr noundef %ht.i.i) #12
  br label %errout_free.i

errout_free.i:                                    ; preds = %errout_destroy.i, %if.end21.i.errout_free.i_crit_edge
  %err.0.i = phi i32 [ %call6.i.i, %if.end21.i.errout_free.i_crit_edge ], [ %retval.0.i72.i.i, %errout_destroy.i ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #12
  %97 = inttoptr i32 %err.0.i to ptr
  br label %fl_create_new_mask.exit

fl_create_new_mask.exit:                          ; preds = %errout_free.i, %list_add_tail_rcu.exit.i
  %retval.0.i = phi ptr [ %97, %errout_free.i ], [ %call7.i.i.i, %list_add_tail_rcu.exit.i ]
  %cmp.i = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %fl_create_new_mask.exit.if.then7_crit_edge, label %if.end9

fl_create_new_mask.exit.if.then7_crit_edge:       ; preds = %fl_create_new_mask.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then7

if.then7:                                         ; preds = %fl_create_new_mask.exit.if.then7_crit_edge, %if.end.if.then7_crit_edge
  %retval.0.i93 = phi ptr [ %retval.0.i, %fl_create_new_mask.exit.if.then7_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.if.then7_crit_edge ]
  %98 = ptrtoint ptr %retval.0.i93 to i32
  br label %errout_cleanup

if.end9:                                          ; preds = %fl_create_new_mask.exit
  call void @__sanitizer_cov_trace_pc() #14
  %99 = ptrtoint ptr %fnew to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %retval.0.i, ptr %fnew, align 4
  br label %cleanup

if.else:                                          ; preds = %rhashtable_lookup_get_insert_fast.exit
  %cmp.i75 = icmp ugt ptr %call10.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i75, label %if.then13, label %if.else16

if.then13:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %100 = ptrtoint ptr %call10.i to i32
  br label %if.end28

if.else16:                                        ; preds = %if.else
  %tobool17.not = icmp eq ptr %fold, null
  br i1 %tobool17.not, label %if.else16.if.else21_crit_edge, label %land.lhs.true

if.else16.if.else21_crit_edge:                    ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else21

land.lhs.true:                                    ; preds = %if.else16
  %101 = ptrtoint ptr %fold to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %fold, align 4
  %cmp.not = icmp eq ptr %102, %call10.i
  br i1 %cmp.not, label %land.lhs.true.if.else21_crit_edge, label %land.lhs.true.if.end28_crit_edge

land.lhs.true.if.end28_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28

land.lhs.true.if.else21_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else21

if.else21:                                        ; preds = %land.lhs.true.if.else21_crit_edge, %if.else16.if.else21_crit_edge
  %refcnt = getelementptr inbounds %struct.fl_flow_mask, ptr %call10.i, i32 0, i32 10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i) #12
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcnt, i32 noundef 4) #12
  %103 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load volatile i32, ptr %refcnt, align 4
  br label %do.body.i.i.i77

do.body.i.i.i77:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i77_crit_edge, %if.else21
  %105 = phi i32 [ %104, %if.else21 ], [ %asmresult3.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i77_crit_edge ]
  %106 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %105, ptr %old.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %105)
  %tobool.not.i.i.i76 = icmp eq i32 %105, 0
  br i1 %tobool.not.i.i.i76, label %do.body.i.i.i77.if.end4.i.i.i79_crit_edge, label %do.cond.i.i.i

do.body.i.i.i77.if.end4.i.i.i79_crit_edge:        ; preds = %do.body.i.i.i77
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i.i.i79

do.cond.i.i.i:                                    ; preds = %do.body.i.i.i77
  %add.i.i.i78 = add i32 %105, 1
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #12
  %call.i3.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i, i32 noundef 4) #12
  %107 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %old.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %refcnt, i32 1, i32 3, i32 1) #12
  br label %do.body.i.i.i.i.i.i

do.body.i.i.i.i.i.i:                              ; preds = %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i
  %109 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %refcnt, ptr %refcnt, i32 %108, i32 %add.i.i.i78, ptr elementtype(i32) %refcnt) #12, !srcloc !205
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %109, 0
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i, label %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i:       ; preds = %do.body.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i = extractvalue { i32, i32 } %109, 1
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i, %108
  br i1 %cmp.not.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i79_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i77_crit_edge, !prof !206

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i77_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i.i77

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i79_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i.i.i79

if.end4.i.i.i79:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i79_crit_edge, %do.body.i.i.i77.if.end4.i.i.i79_crit_edge
  %110 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %old.i.i.i, align 4
  %add5.i.i.i = add i32 %111, 1
  %112 = or i32 %add5.i.i.i, %111
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %112)
  %.not.i.i.i = icmp sgt i32 %112, -1
  br i1 %.not.i.i.i, label %if.end4.i.i.i79.refcount_inc_not_zero.exit_crit_edge, label %if.then10.i.i.i, !prof !206

if.end4.i.i.i79.refcount_inc_not_zero.exit_crit_edge: ; preds = %if.end4.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %refcount_inc_not_zero.exit

if.then10.i.i.i:                                  ; preds = %if.end4.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  call void @refcount_warn_saturate(ptr noundef %refcnt, i32 noundef 0) #12
  br label %refcount_inc_not_zero.exit

refcount_inc_not_zero.exit:                       ; preds = %if.then10.i.i.i, %if.end4.i.i.i79.refcount_inc_not_zero.exit_crit_edge
  %113 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %old.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %114)
  %tobool12.i.i.i.not = icmp eq i32 %114, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i) #12
  %spec.select = select i1 %tobool12.i.i.i.not, i32 -11, i32 0
  br label %if.end28

if.end28:                                         ; preds = %refcount_inc_not_zero.exit, %land.lhs.true.if.end28_crit_edge, %if.then13
  %ret.0 = phi i32 [ %100, %if.then13 ], [ -22, %land.lhs.true.if.end28_crit_edge ], [ %spec.select, %refcount_inc_not_zero.exit ]
  %call.i80 = call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i80, label %if.end28.rcu_read_unlock.exit90_crit_edge, label %land.lhs.true.i83

if.end28.rcu_read_unlock.exit90_crit_edge:        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit90

land.lhs.true.i83:                                ; preds = %if.end28
  %call1.i81 = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i81)
  %tobool.not.i82 = icmp eq i32 %call1.i81, 0
  br i1 %tobool.not.i82, label %land.lhs.true.i83.rcu_read_unlock.exit90_crit_edge, label %land.lhs.true2.i85

land.lhs.true.i83.rcu_read_unlock.exit90_crit_edge: ; preds = %land.lhs.true.i83
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit90

land.lhs.true2.i85:                               ; preds = %land.lhs.true.i83
  %.b4.i84 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i84, label %land.lhs.true2.i85.rcu_read_unlock.exit90_crit_edge, label %if.then.i86

land.lhs.true2.i85.rcu_read_unlock.exit90_crit_edge: ; preds = %land.lhs.true2.i85
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit90

if.then.i86:                                      ; preds = %land.lhs.true2.i85
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 724, ptr noundef nonnull @.str.9) #12
  br label %rcu_read_unlock.exit90

rcu_read_unlock.exit90:                           ; preds = %if.then.i86, %land.lhs.true2.i85.rcu_read_unlock.exit90_crit_edge, %land.lhs.true.i83.rcu_read_unlock.exit90_crit_edge, %if.end28.rcu_read_unlock.exit90_crit_edge
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !207
  %115 = call i32 @llvm.read_register.i32(metadata !191) #12
  %and.i.i.i.i.i87 = and i32 %115, -16384
  %116 = inttoptr i32 %and.i.i.i.i.i87 to ptr
  %preempt_count.i.i.i.i88 = getelementptr inbounds %struct.thread_info, ptr %116, i32 0, i32 1
  %117 = ptrtoint ptr %preempt_count.i.i.i.i88 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load volatile i32, ptr %preempt_count.i.i.i.i88, align 4
  %sub.i.i.i89 = add i32 %118, -1
  store volatile i32 %sub.i.i.i89, ptr %preempt_count.i.i.i.i88, align 4
  call void @rcu_read_unlock_strict() #12
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  br label %cleanup

errout_cleanup:                                   ; preds = %if.then7, %rcu_read_unlock.exit.errout_cleanup_crit_edge
  %ret.1 = phi i32 [ %98, %if.then7 ], [ -22, %rcu_read_unlock.exit.errout_cleanup_crit_edge ]
  tail call fastcc void @rhashtable_remove_fast(ptr noundef %head, ptr noundef %ht_node, [7 x i32] [i32 484, i32 492, i32 0, i32 256, i32 0, i32 0, i32 0])
  br label %cleanup

cleanup:                                          ; preds = %errout_cleanup, %rcu_read_unlock.exit90, %if.end9
  %retval.0 = phi i32 [ %ret.0, %rcu_read_unlock.exit90 ], [ %ret.1, %errout_cleanup ], [ 0, %if.end9 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fl_ht_insert_unique(ptr noundef %fnew, ptr noundef readnone %fold, ptr nocapture noundef writeonly %in_ht) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fnew to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fnew, align 4
  %obj_hashfn.i = getelementptr inbounds %struct.fl_flow_mask, ptr %1, i32 0, i32 4, i32 3, i32 8
  %2 = ptrtoint ptr %obj_hashfn.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %obj_hashfn.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %rhashtable_lookup_insert_fast.exit, label %do.body3.i, !prof !206

do.body3.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/rhashtable.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 903, 0\0A.popsection", ""() #12, !srcloc !238
  unreachable

rhashtable_lookup_insert_fast.exit:               ; preds = %entry
  %ht = getelementptr inbounds %struct.fl_flow_mask, ptr %1, i32 0, i32 4
  %filter_ht_params = getelementptr inbounds %struct.fl_flow_mask, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %filter_ht_params to i32
  call void @__asan_load4_noabort(i32 %4)
  %.unpack = load i32, ptr %filter_ht_params, align 4
  %5 = insertvalue [7 x i32] undef, i32 %.unpack, 0
  %.elt9 = getelementptr inbounds %struct.fl_flow_mask, ptr %1, i32 0, i32 5, i32 2
  %6 = ptrtoint ptr %.elt9 to i32
  call void @__asan_load4_noabort(i32 %6)
  %.unpack10 = load i32, ptr %.elt9, align 4
  %7 = insertvalue [7 x i32] %5, i32 %.unpack10, 1
  %.elt11 = getelementptr inbounds %struct.fl_flow_mask, ptr %1, i32 0, i32 5, i32 4
  %8 = ptrtoint ptr %.elt11 to i32
  call void @__asan_load4_noabort(i32 %8)
  %.unpack12 = load i32, ptr %.elt11, align 4
  %9 = insertvalue [7 x i32] %7, i32 %.unpack12, 2
  %.elt13 = getelementptr inbounds %struct.fl_flow_mask, ptr %1, i32 0, i32 5, i32 5
  %10 = ptrtoint ptr %.elt13 to i32
  call void @__asan_load4_noabort(i32 %10)
  %.unpack14 = load i32, ptr %.elt13, align 4
  %11 = insertvalue [7 x i32] %9, i32 %.unpack14, 3
  %.elt15 = getelementptr inbounds %struct.fl_flow_mask, ptr %1, i32 0, i32 5, i32 7
  %12 = ptrtoint ptr %.elt15 to i32
  call void @__asan_load4_noabort(i32 %12)
  %.unpack16 = load i32, ptr %.elt15, align 4
  %13 = insertvalue [7 x i32] %11, i32 %.unpack16, 4
  %.elt17 = getelementptr inbounds %struct.fl_flow_mask, ptr %1, i32 0, i32 5, i32 8
  %14 = ptrtoint ptr %.elt17 to i32
  call void @__asan_load4_noabort(i32 %14)
  %.unpack18 = load i32, ptr %.elt17, align 4
  %15 = insertvalue [7 x i32] %13, i32 %.unpack18, 5
  %.elt19 = getelementptr inbounds %struct.fl_flow_mask, ptr %1, i32 0, i32 5, i32 9
  %16 = ptrtoint ptr %.elt19 to i32
  call void @__asan_load4_noabort(i32 %16)
  %.unpack20 = load i32, ptr %.elt19, align 4
  %17 = insertvalue [7 x i32] %15, i32 %.unpack20, 6
  %ht_node = getelementptr inbounds %struct.cls_fl_filter, ptr %fnew, i32 0, i32 1
  %head_offset.i.i = getelementptr inbounds %struct.fl_flow_mask, ptr %1, i32 0, i32 4, i32 3, i32 3
  %18 = ptrtoint ptr %head_offset.i.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %head_offset.i.i, align 2
  %conv.i.i = zext i16 %19 to i32
  %idx.neg.i.i = sub nsw i32 0, %conv.i.i
  %add.ptr.i.i = getelementptr i8, ptr %ht_node, i32 %idx.neg.i.i
  %key_offset.i = getelementptr inbounds %struct.fl_flow_mask, ptr %1, i32 0, i32 4, i32 3, i32 2
  %20 = ptrtoint ptr %key_offset.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %key_offset.i, align 4
  %conv.i = zext i16 %21 to i32
  %add.ptr.i = getelementptr i8, ptr %add.ptr.i.i, i32 %conv.i
  %call10.i = tail call fastcc ptr @__rhashtable_insert_fast(ptr noundef %ht, ptr noundef %add.ptr.i, ptr noundef %ht_node, [7 x i32] %17) #12
  %cmp.i.i = icmp ugt ptr %call10.i, inttoptr (i32 -4096 to ptr)
  %22 = ptrtoint ptr %call10.i to i32
  %cmp.i = icmp eq ptr %call10.i, null
  %cond.i = select i1 %cmp.i, i32 0, i32 -17
  %retval.0.i = select i1 %cmp.i.i, i32 %22, i32 %cond.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %rhashtable_lookup_insert_fast.exit
  call void @__sanitizer_cov_trace_pc() #14
  %23 = ptrtoint ptr %in_ht to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %in_ht, align 1
  %tobool2.not = icmp ne ptr %fold, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 -17, i32 %retval.0.i)
  %cmp = icmp eq i32 %retval.0.i, -17
  %or.cond = select i1 %tobool2.not, i1 %cmp, i1 false
  %cond = select i1 %or.cond, i32 0, i32 %retval.0.i
  br label %cleanup

if.end:                                           ; preds = %rhashtable_lookup_insert_fast.exit
  call void @__sanitizer_cov_trace_pc() #14
  %24 = ptrtoint ptr %in_ht to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %in_ht, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %cond, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fl_hw_replace_filter(ptr noundef %tp, ptr noundef %f, i1 noundef zeroext %rtnl_held, ptr noundef %extack) unnamed_addr #2 align 64 {
entry:
  %cls_flower.i = alloca %struct.flow_cls_offload, align 8
  %cls_flower = alloca %struct.flow_cls_offload, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %chain = getelementptr inbounds %struct.tcf_proto, ptr %tp, i32 0, i32 7
  %0 = ptrtoint ptr %chain to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chain, align 4
  %block1 = getelementptr inbounds %struct.tcf_chain, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %block1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %block1, align 4
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %cls_flower) #12
  %4 = call ptr @memset(ptr %cls_flower, i32 0, i32 80)
  %flags = getelementptr inbounds %struct.cls_fl_filter, ptr %f, i32 0, i32 9
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags, align 4
  %and.i = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i = icmp ne i32 %and.i, 0
  %exts = getelementptr inbounds %struct.cls_fl_filter, ptr %f, i32 0, i32 3
  %call3 = tail call i32 @tcf_exts_num_actions(ptr noundef %exts) #12
  %call4 = tail call ptr @flow_rule_alloc(i32 noundef %call3) #12
  %rule = getelementptr inbounds %struct.flow_cls_offload, ptr %cls_flower, i32 0, i32 3
  %7 = ptrtoint ptr %rule to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call4, ptr %rule, align 8
  %tobool.not = icmp eq ptr %call4, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags, align 4
  %10 = ptrtoint ptr %chain to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %chain, align 4
  %index.i = getelementptr inbounds %struct.tcf_chain, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %index.i, align 4
  %14 = ptrtoint ptr %cls_flower to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %cls_flower, align 8
  %protocol.i = getelementptr inbounds %struct.tcf_proto, ptr %tp, i32 0, i32 3
  %15 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %protocol.i, align 4
  %protocol1.i = getelementptr inbounds %struct.flow_cls_common_offload, ptr %cls_flower, i32 0, i32 1
  %17 = ptrtoint ptr %protocol1.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %protocol1.i, align 4
  %prio.i = getelementptr inbounds %struct.tcf_proto, ptr %tp, i32 0, i32 4
  %18 = ptrtoint ptr %prio.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %prio.i, align 4
  %shr.i = lshr i32 %19, 16
  %prio2.i = getelementptr inbounds %struct.flow_cls_common_offload, ptr %cls_flower, i32 0, i32 2
  %20 = ptrtoint ptr %prio2.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %shr.i, ptr %prio2.i, align 8
  %21 = and i32 %9, 18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %if.end.tc_cls_common_offload_init.exit_crit_edge, label %if.then.i

if.end.tc_cls_common_offload_init.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %tc_cls_common_offload_init.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %extack3.i = getelementptr inbounds %struct.flow_cls_common_offload, ptr %cls_flower, i32 0, i32 3
  %23 = ptrtoint ptr %extack3.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %extack, ptr %extack3.i, align 4
  br label %tc_cls_common_offload_init.exit

tc_cls_common_offload_init.exit:                  ; preds = %if.then.i, %if.end.tc_cls_common_offload_init.exit_crit_edge
  %command = getelementptr inbounds %struct.flow_cls_offload, ptr %cls_flower, i32 0, i32 1
  %24 = ptrtoint ptr %command to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %command, align 8
  %25 = ptrtoint ptr %f to i32
  %cookie = getelementptr inbounds %struct.flow_cls_offload, ptr %cls_flower, i32 0, i32 2
  %26 = ptrtoint ptr %cookie to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %cookie, align 4
  %27 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %f, align 4
  %dissector = getelementptr inbounds %struct.fl_flow_mask, ptr %28, i32 0, i32 6
  %29 = ptrtoint ptr %call4 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %dissector, ptr %call4, align 8
  %30 = load ptr, ptr %f, align 4
  %31 = ptrtoint ptr %rule to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %rule, align 8
  %mask12 = getelementptr inbounds %struct.flow_match, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %mask12 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %30, ptr %mask12, align 4
  %mkey = getelementptr inbounds %struct.cls_fl_filter, ptr %f, i32 0, i32 2
  %34 = load ptr, ptr %rule, align 8
  %key15 = getelementptr inbounds %struct.flow_match, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %key15 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %mkey, ptr %key15, align 8
  %classid = getelementptr inbounds %struct.cls_fl_filter, ptr %f, i32 0, i32 4, i32 0, i32 0, i32 1
  %36 = ptrtoint ptr %classid to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %classid, align 4
  %classid16 = getelementptr inbounds %struct.flow_cls_offload, ptr %cls_flower, i32 0, i32 5
  %38 = ptrtoint ptr %classid16 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %classid16, align 8
  %39 = load ptr, ptr %rule, align 8
  %action = getelementptr inbounds %struct.flow_rule, ptr %39, i32 0, i32 1
  %call19 = tail call i32 @tc_setup_offload_action(ptr noundef %action, ptr noundef %exts) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end29, label %if.then21

if.then21:                                        ; preds = %tc_cls_common_offload_init.exit
  %40 = ptrtoint ptr %rule to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %rule, align 8
  tail call void @kfree(ptr noundef %41) #12
  br i1 %tobool.i, label %do.body, label %if.then21.cleanup_crit_edge

if.then21.cleanup_crit_edge:                      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body:                                          ; preds = %if.then21
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @fl_hw_replace_filter.__msg) #12
  %tobool25.not = icmp eq ptr %extack, null
  br i1 %tobool25.not, label %do.body.cleanup_crit_edge, label %if.then26

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then26:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %42 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @fl_hw_replace_filter.__msg, ptr %extack, align 4
  br label %cleanup

if.end29:                                         ; preds = %tc_cls_common_offload_init.exit
  %in_hw_count = getelementptr inbounds %struct.cls_fl_filter, ptr %f, i32 0, i32 10
  %call33 = call i32 @tc_setup_cb_add(ptr noundef %3, ptr noundef %tp, i32 noundef 2, ptr noundef nonnull %cls_flower, i1 noundef zeroext %tobool.i, ptr noundef %flags, ptr noundef %in_hw_count, i1 noundef zeroext %rtnl_held) #12
  %43 = ptrtoint ptr %rule to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %rule, align 8
  %action35 = getelementptr inbounds %struct.flow_rule, ptr %44, i32 0, i32 1
  call void @tc_cleanup_offload_action(ptr noundef %action35) #12
  %45 = ptrtoint ptr %rule to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %rule, align 8
  call void @kfree(ptr noundef %46) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool37.not = icmp eq i32 %call33, 0
  br i1 %tobool37.not, label %if.end40, label %if.then38

if.then38:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  %47 = ptrtoint ptr %chain to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %chain, align 4
  %block1.i = getelementptr inbounds %struct.tcf_chain, ptr %48, i32 0, i32 3
  %49 = ptrtoint ptr %block1.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %block1.i, align 4
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %cls_flower.i) #12
  %51 = call ptr @memset(ptr %cls_flower.i, i32 0, i32 80)
  %index.i.i = getelementptr inbounds %struct.tcf_chain, ptr %48, i32 0, i32 4
  %52 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %index.i.i, align 4
  %54 = ptrtoint ptr %cls_flower.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %cls_flower.i, align 8
  %55 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %protocol.i, align 4
  %protocol1.i.i = getelementptr inbounds %struct.flow_cls_common_offload, ptr %cls_flower.i, i32 0, i32 1
  %57 = ptrtoint ptr %protocol1.i.i to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %56, ptr %protocol1.i.i, align 4
  %58 = ptrtoint ptr %prio.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %prio.i, align 4
  %shr.i.i = lshr i32 %59, 16
  %prio2.i.i = getelementptr inbounds %struct.flow_cls_common_offload, ptr %cls_flower.i, i32 0, i32 2
  %60 = ptrtoint ptr %prio2.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %shr.i.i, ptr %prio2.i.i, align 8
  %command.i = getelementptr inbounds %struct.flow_cls_offload, ptr %cls_flower.i, i32 0, i32 1
  %61 = ptrtoint ptr %command.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 1, ptr %command.i, align 8
  %cookie.i = getelementptr inbounds %struct.flow_cls_offload, ptr %cls_flower.i, i32 0, i32 2
  %62 = ptrtoint ptr %cookie.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %25, ptr %cookie.i, align 4
  %call.i = call i32 @tc_setup_cb_destroy(ptr noundef %50, ptr noundef %tp, i32 noundef 2, ptr noundef nonnull %cls_flower.i, i1 noundef zeroext false, ptr noundef %flags, ptr noundef %in_hw_count, i1 noundef zeroext %rtnl_held) #12
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %cls_flower.i) #12
  br label %cleanup

if.end40:                                         ; preds = %if.end29
  br i1 %tobool.i, label %land.lhs.true, label %if.end40.if.end45_crit_edge

if.end40.if.end45_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end45

land.lhs.true:                                    ; preds = %if.end40
  %63 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %flags, align 4
  %and = and i32 %64, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool43.not = icmp eq i32 %and, 0
  br i1 %tobool43.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end45_crit_edge

land.lhs.true.if.end45_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end45

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end45:                                         ; preds = %land.lhs.true.if.end45_crit_edge, %if.end40.if.end45_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end45, %land.lhs.true.cleanup_crit_edge, %if.then38, %if.then26, %do.body.cleanup_crit_edge, %if.then21.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call33, %if.then38 ], [ 0, %if.end45 ], [ -12, %entry.cleanup_crit_edge ], [ %call19, %if.then26 ], [ %call19, %do.body.cleanup_crit_edge ], [ 0, %if.then21.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %cls_flower) #12
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @refcount_inc(ptr noundef %r) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %r, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %r, i32 1, i32 3, i32 1) #12
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %r, ptr %r, i32 1, ptr elementtype(i32) %r) #12, !srcloc !239
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %tobool1.not.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %tobool1.not.i.i, label %entry.if.end15.sink.split.i.i_crit_edge, label %if.else.i.i, !prof !212

entry.if.end15.sink.split.i.i_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i

if.else.i.i:                                      ; preds = %entry
  %add.i.i = add i32 %asmresult.i.i.i.i, 1
  %1 = or i32 %add.i.i, %asmresult.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i, label %if.else.i.i.__refcount_inc.exit_crit_edge, label %if.else.i.i.if.end15.sink.split.i.i_crit_edge, !prof !206

if.else.i.i.if.end15.sink.split.i.i_crit_edge:    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i

if.else.i.i.__refcount_inc.exit_crit_edge:        ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__refcount_inc.exit

if.end15.sink.split.i.i:                          ; preds = %if.else.i.i.if.end15.sink.split.i.i_crit_edge, %entry.if.end15.sink.split.i.i_crit_edge
  %.sink.i.i = phi i32 [ 2, %entry.if.end15.sink.split.i.i_crit_edge ], [ 1, %if.else.i.i.if.end15.sink.split.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %r, i32 noundef %.sink.i.i) #12
  br label %__refcount_inc.exit

__refcount_inc.exit:                              ; preds = %if.end15.sink.split.i.i, %if.else.i.i.__refcount_inc.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_replace(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @refcount_dec(ptr noundef %r) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %r, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !217
  tail call void @llvm.prefetch.p0(ptr %r, i32 1, i32 3, i32 1) #12
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %r, ptr %r, i32 1, ptr elementtype(i32) %r) #12, !srcloc !218
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %asmresult.i.i.i.i)
  %cmp.i = icmp slt i32 %asmresult.i.i.i.i, 2
  br i1 %cmp.i, label %if.then3.i, label %entry.__refcount_dec.exit_crit_edge, !prof !212

entry.__refcount_dec.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %__refcount_dec.exit

if.then3.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %r, i32 noundef 4) #12
  br label %__refcount_dec.exit

__refcount_dec.exit:                              ; preds = %if.then3.i, %entry.__refcount_dec.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @idr_alloc_u32(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @list_add_tail_rcu(ptr noundef %new, ptr noundef %head) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %prev = getelementptr inbounds %struct.list_head, ptr %head, i32 0, i32 1
  %0 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev, align 4
  %call.i = tail call zeroext i1 @__list_add_valid(ptr noundef %new, ptr noundef %1, ptr noundef %head) #12
  br i1 %call.i, label %if.end.i, label %entry.__list_add_rcu.exit_crit_edge

entry.__list_add_rcu.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %__list_add_rcu.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %2 = ptrtoint ptr %new to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %head, ptr %new, align 4
  %prev2.i = getelementptr inbounds %struct.list_head, ptr %new, i32 0, i32 1
  %3 = ptrtoint ptr %prev2.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %1, ptr %prev2.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !237
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %new, ptr %1, align 4
  %5 = ptrtoint ptr %prev to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %new, ptr %prev, align 4
  br label %__list_add_rcu.exit

__list_add_rcu.exit:                              ; preds = %if.end.i, %entry.__list_add_rcu.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fl_uninit_mask_free_work(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -820
  tail call void @kfree(ptr noundef %add.ptr) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__nla_parse(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcf_exts_validate_ex(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tcf_bind_filter(ptr nocapture noundef readonly %tp, ptr noundef %r, i32 noundef %base) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %chain = getelementptr inbounds %struct.tcf_proto, ptr %tp, i32 0, i32 7
  %0 = ptrtoint ptr %chain to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chain, align 4
  %block = getelementptr inbounds %struct.tcf_chain, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %block to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %block, align 4
  %q1 = getelementptr inbounds %struct.tcf_block, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %q1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %q1, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags.i = getelementptr inbounds %struct.Qdisc, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %7, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.end.sch_tree_lock.exit_crit_edge

if.end.sch_tree_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sch_tree_lock.exit

if.else.i:                                        ; preds = %if.end
  %dev_queue.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %5, i32 0, i32 9
  %8 = ptrtoint ptr %dev_queue.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev_queue.i.i.i, align 8
  %qdisc_sleeping.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %qdisc_sleeping.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %qdisc_sleeping.i.i.i, align 4
  %call1.i.i = tail call i32 @rtnl_is_locked() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.rhs.i.i, label %if.else.i.sch_tree_lock.exit_crit_edge

if.else.i.sch_tree_lock.exit_crit_edge:           ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sch_tree_lock.exit

land.rhs.i.i:                                     ; preds = %if.else.i
  %.b41.i.i = load i1, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  br i1 %.b41.i.i, label %land.rhs.i.i.sch_tree_lock.exit_crit_edge, label %if.then.i.i, !prof !206

land.rhs.i.i.sch_tree_lock.exit_crit_edge:        ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sch_tree_lock.exit

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 596, i32 noundef 9, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.18, i32 noundef 596) #12
  br label %sch_tree_lock.exit

sch_tree_lock.exit:                               ; preds = %if.then.i.i, %land.rhs.i.i.sch_tree_lock.exit_crit_edge, %if.else.i.sch_tree_lock.exit_crit_edge, %if.end.sch_tree_lock.exit_crit_edge
  %.sink.i = phi ptr [ %5, %if.end.sch_tree_lock.exit_crit_edge ], [ %11, %if.else.i.sch_tree_lock.exit_crit_edge ], [ %11, %land.rhs.i.i.sch_tree_lock.exit_crit_edge ], [ %11, %if.then.i.i ]
  %lock.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %.sink.i, i32 0, i32 17, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i.i.i) #12
  %ops.i = getelementptr inbounds %struct.Qdisc, ptr %5, i32 0, i32 4
  %12 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops.i, align 16
  %cl_ops.i = getelementptr inbounds %struct.Qdisc_ops, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %cl_ops.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cl_ops.i, align 4
  %bind_tcf.i = getelementptr inbounds %struct.Qdisc_class_ops, ptr %15, i32 0, i32 10
  %16 = ptrtoint ptr %bind_tcf.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bind_tcf.i, align 4
  %classid.i = getelementptr inbounds %struct.anon.154, ptr %r, i32 0, i32 1
  %18 = ptrtoint ptr %classid.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %classid.i, align 4
  %call.i = tail call i32 %17(ptr noundef nonnull %5, i32 noundef %base, i32 noundef %19) #12
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %r, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !209
  tail call void @llvm.prefetch.p0(ptr %r, i32 1, i32 3, i32 1) #12
  %20 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 %call.i, ptr %r) #12, !srcloc !210
  %asmresult.i.i.i = extractvalue { i32, i32 } %20, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !211
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %tobool.not.i5 = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %tobool.not.i5, label %sch_tree_lock.exit.__tcf_bind_filter.exit_crit_edge, label %if.then.i

sch_tree_lock.exit.__tcf_bind_filter.exit_crit_edge: ; preds = %sch_tree_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %__tcf_bind_filter.exit

if.then.i:                                        ; preds = %sch_tree_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  %21 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ops.i, align 16
  %cl_ops3.i = getelementptr inbounds %struct.Qdisc_ops, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %cl_ops3.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cl_ops3.i, align 4
  %unbind_tcf.i = getelementptr inbounds %struct.Qdisc_class_ops, ptr %24, i32 0, i32 11
  %25 = ptrtoint ptr %unbind_tcf.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %unbind_tcf.i, align 4
  tail call void %26(ptr noundef nonnull %5, i32 noundef %asmresult.i.i.i) #12
  br label %__tcf_bind_filter.exit

__tcf_bind_filter.exit:                           ; preds = %if.then.i, %sch_tree_lock.exit.__tcf_bind_filter.exit_crit_edge
  %27 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %flags.i, align 8
  %and.i7 = and i32 %28, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i7)
  %tobool.not.i8 = icmp eq i32 %and.i7, 0
  br i1 %tobool.not.i8, label %if.else.i13, label %__tcf_bind_filter.exit.sch_tree_unlock.exit_crit_edge

__tcf_bind_filter.exit.sch_tree_unlock.exit_crit_edge: ; preds = %__tcf_bind_filter.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %sch_tree_unlock.exit

if.else.i13:                                      ; preds = %__tcf_bind_filter.exit
  %dev_queue.i.i.i9 = getelementptr inbounds %struct.Qdisc, ptr %5, i32 0, i32 9
  %29 = ptrtoint ptr %dev_queue.i.i.i9 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev_queue.i.i.i9, align 8
  %qdisc_sleeping.i.i.i10 = getelementptr inbounds %struct.netdev_queue, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %qdisc_sleeping.i.i.i10 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %qdisc_sleeping.i.i.i10, align 4
  %call1.i.i11 = tail call i32 @rtnl_is_locked() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i11)
  %tobool.not.i.i12 = icmp eq i32 %call1.i.i11, 0
  br i1 %tobool.not.i.i12, label %land.rhs.i.i15, label %if.else.i13.sch_tree_unlock.exit_crit_edge

if.else.i13.sch_tree_unlock.exit_crit_edge:       ; preds = %if.else.i13
  call void @__sanitizer_cov_trace_pc() #14
  br label %sch_tree_unlock.exit

land.rhs.i.i15:                                   ; preds = %if.else.i13
  %.b41.i.i14 = load i1, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  br i1 %.b41.i.i14, label %land.rhs.i.i15.sch_tree_unlock.exit_crit_edge, label %if.then.i.i16, !prof !206

land.rhs.i.i15.sch_tree_unlock.exit_crit_edge:    ; preds = %land.rhs.i.i15
  call void @__sanitizer_cov_trace_pc() #14
  br label %sch_tree_unlock.exit

if.then.i.i16:                                    ; preds = %land.rhs.i.i15
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 596, i32 noundef 9, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.18, i32 noundef 596) #12
  br label %sch_tree_unlock.exit

sch_tree_unlock.exit:                             ; preds = %if.then.i.i16, %land.rhs.i.i15.sch_tree_unlock.exit_crit_edge, %if.else.i13.sch_tree_unlock.exit_crit_edge, %__tcf_bind_filter.exit.sch_tree_unlock.exit_crit_edge
  %.sink.i17 = phi ptr [ %5, %__tcf_bind_filter.exit.sch_tree_unlock.exit_crit_edge ], [ %32, %if.else.i13.sch_tree_unlock.exit_crit_edge ], [ %32, %land.rhs.i.i15.sch_tree_unlock.exit_crit_edge ], [ %32, %if.then.i.i16 ]
  %lock.i.i.i18 = getelementptr inbounds %struct.Qdisc, ptr %.sink.i17, i32 0, i32 17, i32 3
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i.i.i18) #12
  br label %cleanup

cleanup:                                          ; preds = %sch_tree_unlock.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fl_set_key(ptr noundef %net, ptr noundef readonly %tb, ptr noundef %key, ptr noundef %mask, ptr noundef %extack) unnamed_addr #2 align 64 {
entry:
  %indev.i = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr ptr, ptr %tb, i32 2
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %indev.i) #12
  %2 = call ptr @memset(ptr %indev.i, i32 255, i32 16)
  %call.i = call i32 @nla_strscpy(ptr noundef nonnull %indev.i, ptr noundef nonnull %1, i32 noundef 16) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.body.i, label %if.end2.i

do.body.i:                                        ; preds = %if.then
  call void @do_trace_netlink_extack(ptr noundef nonnull @tcf_change_indev.__msg) #12
  %tobool.not.i = icmp eq ptr %extack, null
  br i1 %tobool.not.i, label %do.body.i.tcf_change_indev.exit.thread_crit_edge, label %do.body.i.tcf_change_indev.exit.thread.sink.split_crit_edge

do.body.i.tcf_change_indev.exit.thread.sink.split_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tcf_change_indev.exit.thread.sink.split

do.body.i.tcf_change_indev.exit.thread_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tcf_change_indev.exit.thread

if.end2.i:                                        ; preds = %if.then
  %call4.i = call ptr @__dev_get_by_name(ptr noundef %net, ptr noundef nonnull %indev.i) #12
  %tobool5.not.i = icmp eq ptr %call4.i, null
  br i1 %tobool5.not.i, label %do.body7.i, label %tcf_change_indev.exit

do.body7.i:                                       ; preds = %if.end2.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @tcf_change_indev.__msg.20) #12
  %tobool9.not.i = icmp eq ptr %extack, null
  br i1 %tobool9.not.i, label %do.body7.i.tcf_change_indev.exit.thread_crit_edge, label %do.body7.i.tcf_change_indev.exit.thread.sink.split_crit_edge

do.body7.i.tcf_change_indev.exit.thread.sink.split_crit_edge: ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tcf_change_indev.exit.thread.sink.split

do.body7.i.tcf_change_indev.exit.thread_crit_edge: ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tcf_change_indev.exit.thread

tcf_change_indev.exit.thread.sink.split:          ; preds = %do.body7.i.tcf_change_indev.exit.thread.sink.split_crit_edge, %do.body.i.tcf_change_indev.exit.thread.sink.split_crit_edge
  %tcf_change_indev.__msg.sink = phi ptr [ @tcf_change_indev.__msg, %do.body.i.tcf_change_indev.exit.thread.sink.split_crit_edge ], [ @tcf_change_indev.__msg.20, %do.body7.i.tcf_change_indev.exit.thread.sink.split_crit_edge ]
  %retval.0.i.ph.ph = phi i32 [ -22, %do.body.i.tcf_change_indev.exit.thread.sink.split_crit_edge ], [ -19, %do.body7.i.tcf_change_indev.exit.thread.sink.split_crit_edge ]
  %3 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %tcf_change_indev.__msg.sink, ptr %extack, align 4
  %bad_attr.i = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 1
  %4 = ptrtoint ptr %bad_attr.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %bad_attr.i, align 4
  %policy.i = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 2
  %5 = ptrtoint ptr %policy.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %policy.i, align 4
  br label %tcf_change_indev.exit.thread

tcf_change_indev.exit.thread:                     ; preds = %tcf_change_indev.exit.thread.sink.split, %do.body7.i.tcf_change_indev.exit.thread_crit_edge, %do.body.i.tcf_change_indev.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -19, %do.body7.i.tcf_change_indev.exit.thread_crit_edge ], [ -22, %do.body.i.tcf_change_indev.exit.thread_crit_edge ], [ %retval.0.i.ph.ph, %tcf_change_indev.exit.thread.sink.split ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %indev.i) #12
  br label %cleanup315

tcf_change_indev.exit:                            ; preds = %if.end2.i
  %ifindex.i = getelementptr inbounds %struct.net_device, ptr %call4.i, i32 0, i32 17
  %6 = ptrtoint ptr %ifindex.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ifindex.i, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %indev.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp slt i32 %7, 0
  br i1 %cmp, label %tcf_change_indev.exit.cleanup315_crit_edge, label %if.end

tcf_change_indev.exit.cleanup315_crit_edge:       ; preds = %tcf_change_indev.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup315

if.end:                                           ; preds = %tcf_change_indev.exit
  call void @__sanitizer_cov_trace_pc() #14
  %8 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %key, align 4
  %9 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %mask, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.end, %entry.if.end5_crit_edge
  %eth6 = getelementptr inbounds %struct.fl_flow_key, ptr %mask, i32 0, i32 4
  %arrayidx.i = getelementptr ptr, ptr %tb, i32 4
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i505 = icmp eq ptr %11, null
  br i1 %tobool.not.i505, label %if.end5.fl_set_key_val.exit_crit_edge, label %if.end.i

if.end5.fl_set_key_val.exit_crit_edge:            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %fl_set_key_val.exit

if.end.i:                                         ; preds = %if.end5
  %eth = getelementptr inbounds %struct.fl_flow_key, ptr %key, i32 0, i32 4
  %call.i506 = call i32 @nla_memcpy(ptr noundef %eth, ptr noundef nonnull %11, i32 noundef 6) #12
  %arrayidx2.i = getelementptr ptr, ptr %tb, i32 5
  %12 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx2.i, align 4
  %tobool3.not.i = icmp eq ptr %13, null
  br i1 %tobool3.not.i, label %if.then4.i, label %if.else.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %14 = call ptr @memset(ptr %eth6, i32 255, i32 6)
  br label %fl_set_key_val.exit

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %call6.i = call i32 @nla_memcpy(ptr noundef %eth6, ptr noundef nonnull %13, i32 noundef 6) #12
  br label %fl_set_key_val.exit

fl_set_key_val.exit:                              ; preds = %if.else.i, %if.then4.i, %if.end5.fl_set_key_val.exit_crit_edge
  %src12 = getelementptr inbounds %struct.fl_flow_key, ptr %mask, i32 0, i32 4, i32 1
  %arrayidx.i507 = getelementptr ptr, ptr %tb, i32 6
  %15 = ptrtoint ptr %arrayidx.i507 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.i507, align 4
  %tobool.not.i508 = icmp eq ptr %16, null
  br i1 %tobool.not.i508, label %fl_set_key_val.exit.fl_set_key_val.exit516_crit_edge, label %if.end.i510

fl_set_key_val.exit.fl_set_key_val.exit516_crit_edge: ; preds = %fl_set_key_val.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %fl_set_key_val.exit516

if.end.i510:                                      ; preds = %fl_set_key_val.exit
  %src = getelementptr inbounds %struct.fl_flow_key, ptr %key, i32 0, i32 4, i32 1
  %call.i509 = call i32 @nla_memcpy(ptr noundef %src, ptr noundef nonnull %16, i32 noundef 6) #12
  %arrayidx2.i511 = getelementptr ptr, ptr %tb, i32 7
  %17 = ptrtoint ptr %arrayidx2.i511 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx2.i511, align 4
  %tobool3.not.i512 = icmp eq ptr %18, null
  br i1 %tobool3.not.i512, label %if.then4.i513, label %if.else.i515

if.then4.i513:                                    ; preds = %if.end.i510
  call void @__sanitizer_cov_trace_pc() #14
  %19 = call ptr @memset(ptr %src12, i32 255, i32 6)
  br label %fl_set_key_val.exit516

if.else.i515:                                     ; preds = %if.end.i510
  call void @__sanitizer_cov_trace_pc() #14
  %call6.i514 = call i32 @nla_memcpy(ptr noundef %src12, ptr noundef nonnull %18, i32 noundef 6) #12
  br label %fl_set_key_val.exit516

fl_set_key_val.exit516:                           ; preds = %if.else.i515, %if.then4.i513, %fl_set_key_val.exit.fl_set_key_val.exit516_crit_edge
  %arrayidx14 = getelementptr ptr, ptr %tb, i32 8
  %20 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx14, align 4
  %tobool15.not = icmp eq ptr %21, null
  br i1 %tobool15.not, label %fl_set_key_val.exit516.if.end44_crit_edge, label %if.then16

fl_set_key_val.exit516.if.end44_crit_edge:        ; preds = %fl_set_key_val.exit516
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end44

if.then16:                                        ; preds = %fl_set_key_val.exit516
  %add.ptr.i.i = getelementptr i8, ptr %21, i32 4
  %22 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %add.ptr.i.i, align 2
  %24 = zext i16 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.56)
  switch i16 %23, label %if.else38 [
    i16 -30552, label %if.then16.if.then20_crit_edge
    i16 -32512, label %if.then16.if.then20_crit_edge938
  ]

if.then16.if.then20_crit_edge938:                 ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then20

if.then16.if.then20_crit_edge:                    ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then20

if.then20:                                        ; preds = %if.then16.if.then20_crit_edge, %if.then16.if.then20_crit_edge938
  %vlan = getelementptr inbounds %struct.fl_flow_key, ptr %key, i32 0, i32 5
  %vlan21 = getelementptr inbounds %struct.fl_flow_key, ptr %mask, i32 0, i32 5
  %arrayidx.i517 = getelementptr ptr, ptr %tb, i32 23
  %25 = ptrtoint ptr %arrayidx.i517 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx.i517, align 4
  %tobool.not.i518 = icmp eq ptr %26, null
  br i1 %tobool.not.i518, label %if.then20.if.end.i519_crit_edge, label %if.then.i

if.then20.if.end.i519_crit_edge:                  ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i519

if.then.i:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i.i.i = getelementptr i8, ptr %26, i32 4
  %27 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %add.ptr.i.i.i, align 2
  %29 = ptrtoint ptr %vlan to i32
  call void @__asan_load2_noabort(i32 %29)
  %bf.load.i = load i16, ptr %vlan, align 2
  %bf.shl.i = shl i16 %28, 4
  %bf.clear.i = and i16 %bf.load.i, 15
  %bf.set.i = or i16 %bf.clear.i, %bf.shl.i
  store i16 %bf.set.i, ptr %vlan, align 2
  %30 = ptrtoint ptr %vlan21 to i32
  call void @__asan_load2_noabort(i32 %30)
  %bf.load3.i = load i16, ptr %vlan21, align 2
  %bf.set5.i = or i16 %bf.load3.i, -16
  store i16 %bf.set5.i, ptr %vlan21, align 2
  br label %if.end.i519

if.end.i519:                                      ; preds = %if.then.i, %if.then20.if.end.i519_crit_edge
  %arrayidx6.i = getelementptr ptr, ptr %tb, i32 24
  %31 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx6.i, align 4
  %tobool7.not.i = icmp eq ptr %32, null
  br i1 %tobool7.not.i, label %if.end.i519.fl_set_key_vlan.exit_crit_edge, label %if.then8.i

if.end.i519.fl_set_key_vlan.exit_crit_edge:       ; preds = %if.end.i519
  call void @__sanitizer_cov_trace_pc() #14
  br label %fl_set_key_vlan.exit

if.then8.i:                                       ; preds = %if.end.i519
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i.i33.i = getelementptr i8, ptr %32, i32 4
  %33 = ptrtoint ptr %add.ptr.i.i33.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %add.ptr.i.i33.i, align 1
  %35 = ptrtoint ptr %vlan to i32
  call void @__asan_load2_noabort(i32 %35)
  %bf.load14.i = load i16, ptr %vlan, align 2
  %36 = and i8 %34, 7
  %bf.value15.i = zext i8 %36 to i16
  %bf.clear16.i = and i16 %bf.load14.i, -8
  %bf.set17.i = or i16 %bf.clear16.i, %bf.value15.i
  store i16 %bf.set17.i, ptr %vlan, align 2
  %37 = ptrtoint ptr %vlan21 to i32
  call void @__asan_load2_noabort(i32 %37)
  %bf.load18.i = load i16, ptr %vlan21, align 2
  %bf.set20.i = or i16 %bf.load18.i, 7
  store i16 %bf.set20.i, ptr %vlan21, align 2
  br label %fl_set_key_vlan.exit

fl_set_key_vlan.exit:                             ; preds = %if.then8.i, %if.end.i519.fl_set_key_vlan.exit_crit_edge
  %vlan_tpid.i = getelementptr inbounds %struct.fl_flow_key, ptr %key, i32 0, i32 5, i32 1
  %38 = ptrtoint ptr %vlan_tpid.i to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %23, ptr %vlan_tpid.i, align 2
  %vlan_tpid22.i = getelementptr inbounds %struct.fl_flow_key, ptr %mask, i32 0, i32 5, i32 1
  %39 = ptrtoint ptr %vlan_tpid22.i to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 -1, ptr %vlan_tpid22.i, align 2
  %arrayidx22 = getelementptr ptr, ptr %tb, i32 25
  %40 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx22, align 4
  %tobool23.not = icmp eq ptr %41, null
  br i1 %tobool23.not, label %fl_set_key_vlan.exit.if.end44_crit_edge, label %if.then24

fl_set_key_vlan.exit.if.end44_crit_edge:          ; preds = %fl_set_key_vlan.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end44

if.then24:                                        ; preds = %fl_set_key_vlan.exit
  %add.ptr.i.i520 = getelementptr i8, ptr %41, i32 4
  %42 = ptrtoint ptr %add.ptr.i.i520 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %add.ptr.i.i520, align 2
  %44 = zext i16 %43 to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values.57)
  switch i16 %43, label %if.else [
    i16 -30552, label %if.then24.if.then28_crit_edge
    i16 -32512, label %if.then24.if.then28_crit_edge939
  ]

if.then24.if.then28_crit_edge939:                 ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then28

if.then24.if.then28_crit_edge:                    ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then28

if.then28:                                        ; preds = %if.then24.if.then28_crit_edge, %if.then24.if.then28_crit_edge939
  %cvlan = getelementptr inbounds %struct.fl_flow_key, ptr %key, i32 0, i32 6
  %cvlan29 = getelementptr inbounds %struct.fl_flow_key, ptr %mask, i32 0, i32 6
  %arrayidx.i524 = getelementptr ptr, ptr %tb, i32 77
  %45 = ptrtoint ptr %arrayidx.i524 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx.i524, align 4
  %tobool.not.i525 = icmp eq ptr %46, null
  br i1 %tobool.not.i525, label %if.then28.if.end.i536_crit_edge, label %if.then.i533

if.then28.if.end.i536_crit_edge:                  ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i536

if.then.i533:                                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i.i.i526 = getelementptr i8, ptr %46, i32 4
  %47 = ptrtoint ptr %add.ptr.i.i.i526 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %add.ptr.i.i.i526, align 2
  %49 = ptrtoint ptr %cvlan to i32
  call void @__asan_load2_noabort(i32 %49)
  %bf.load.i527 = load i16, ptr %cvlan, align 2
  %bf.shl.i528 = shl i16 %48, 4
  %bf.clear.i529 = and i16 %bf.load.i527, 15
  %bf.set.i530 = or i16 %bf.clear.i529, %bf.shl.i528
  store i16 %bf.set.i530, ptr %cvlan, align 2
  %50 = ptrtoint ptr %cvlan29 to i32
  call void @__asan_load2_noabort(i32 %50)
  %bf.load3.i531 = load i16, ptr %cvlan29, align 2
  %bf.set5.i532 = or i16 %bf.load3.i531, -16
  store i16 %bf.set5.i532, ptr %cvlan29, align 2
  br label %if.end.i536

if.end.i536:                                      ; preds = %if.then.i533, %if.then28.if.end.i536_crit_edge
  %arrayidx6.i534 = getelementptr ptr, ptr %tb, i32 78
  %51 = ptrtoint ptr %arrayidx6.i534 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx6.i534, align 4
  %tobool7.not.i535 = icmp eq ptr %52, null
  br i1 %tobool7.not.i535, label %if.end.i536.fl_set_key_vlan.exit547_crit_edge, label %if.then8.i544

if.end.i536.fl_set_key_vlan.exit547_crit_edge:    ; preds = %if.end.i536
  call void @__sanitizer_cov_trace_pc() #14
  br label %fl_set_key_vlan.exit547

if.then8.i544:                                    ; preds = %if.end.i536
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i.i33.i537 = getelementptr i8, ptr %52, i32 4
  %53 = ptrtoint ptr %add.ptr.i.i33.i537 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %add.ptr.i.i33.i537, align 1
  %55 = ptrtoint ptr %cvlan to i32
  call void @__asan_load2_noabort(i32 %55)
  %bf.load14.i538 = load i16, ptr %cvlan, align 2
  %56 = and i8 %54, 7
  %bf.value15.i539 = zext i8 %56 to i16
  %bf.clear16.i540 = and i16 %bf.load14.i538, -8
  %bf.set17.i541 = or i16 %bf.clear16.i540, %bf.value15.i539
  store i16 %bf.set17.i541, ptr %cvlan, align 2
  %57 = ptrtoint ptr %cvlan29 to i32
  call void @__asan_load2_noabort(i32 %57)
  %bf.load18.i542 = load i16, ptr %cvlan29, align 2
  %bf.set20.i543 = or i16 %bf.load18.i542, 7
  store i16 %bf.set20.i543, ptr %cvlan29, align 2
  br label %fl_set_key_vlan.exit547

fl_set_key_vlan.exit547:                          ; preds = %if.then8.i544, %if.end.i536.fl_set_key_vlan.exit547_crit_edge
  %vlan_tpid.i545 = getelementptr inbounds %struct.fl_flow_key, ptr %key, i32 0, i32 6, i32 1
  %58 = ptrtoint ptr %vlan_tpid.i545 to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 %43, ptr %vlan_tpid.i545, align 2
  %vlan_tpid22.i546 = getelementptr inbounds %struct.fl_flow_key, ptr %mask, i32 0, i32 6, i32 1
  %59 = ptrtoint ptr %vlan_tpid22.i546 to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 -1, ptr %vlan_tpid22.i546, align 2
  %arrayidx.i548 = getelementptr ptr, ptr %tb, i32 79
  %60 = ptrtoint ptr %arrayidx.i548 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %arrayidx.i548, align 4
  %tobool.not.i549 = icmp eq ptr %61, null
  br i1 %tobool.not.i549, label %fl_set_key_vlan.exit547.if.end44_crit_edge, label %if.end.i551

fl_set_key_vlan.exit547.if.end44_crit_edge:       ; preds = %fl_set_key_vlan.exit547
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end44

if.end.i551:                                      ; preds = %fl_set_key_vlan.exit547
  call void @__sanitizer_cov_trace_pc() #14
  %basic30 = getelementptr inbounds %struct.fl_flow_key, ptr %mask, i32 0, i32 3
  %basic = getelementptr inbounds %struct.fl_flow_key, ptr %key, i32 0, i32 3
  %call.i550 = call i32 @nla_memcpy(ptr noundef %basic, ptr noundef nonnull %61, i32 noundef 2) #12
  %62 = ptrtoint ptr %basic30 to i32
  call void @__asan_storeN_noabort(i32 %62, i32 2)
  store i16 -1, ptr %basic30, align 1
  br label %if.end44

if.else:                                          ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #14
  %basic32 = getelementptr inbounds %struct.fl_flow_key, ptr %key, i32 0, i32 3
  %63 = ptrtoint ptr %basic32 to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 %43, ptr %basic32, align 4
  %basic34 = getelementptr inbounds %struct.fl_flow_key, ptr %mask, i32 0, i32 3
  %64 = ptrtoint ptr %basic34 to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 -1, ptr %basic34, align 4
  br label %if.end44

if.else38:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #14
  %basic39 = getelementptr inbounds %struct.fl_flow_key, ptr %key, i32 0, i32 3
  %65 = ptrtoint ptr %basic39 to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %23, ptr %basic39, align 4
  %basic41 = getelementptr inbounds %struct.fl_flow_key, ptr %mask, i32 0, i32 3
  %66 = ptrtoint ptr %basic41 to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 -1, ptr %basic41, align 4
  br label %if.end44

if.end44:                                         ; preds = %if.else38, %if.else, %if.end.i551, %fl_set_key_vlan.exit547.if.end44_crit_edge, %fl_set_key_vlan.exit.if.end44_crit_edge, %fl_set_key_val.exit516.if.end44_crit_edge
  %basic45 = getelementptr inbounds %struct.fl_flow_key, ptr %key, i32 0, i32 3
  %67 = ptrtoint ptr %basic45 to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %basic45, align 4
  %69 = zext i16 %68 to i64
  call void @__sanitizer_cov_trace_switch(i64 %69, ptr @__sancov_gen_cov_switch_values.58)
  switch i16 %68, label %if.end44.if.end59_crit_edge [
    i16 2048, label %if.end44.if.then54_crit_edge
    i16 -31011, label %if.end44.if.then54_crit_edge940
  ]

if.end44.if.then54_crit_edge940:                  ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then54

if.end44.if.then54_crit_edge:                     ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then54

if.end44.if.end59_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end59

if.then54:                                        ; preds = %if.end44.if.then54_crit_edge, %if.end44.if.then54_crit_edge940
  %arrayidx.i554 = getelementptr ptr, ptr %tb, i32 9
  %70 = ptrtoint ptr %arrayidx.i554 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %arrayidx.i554, align 4
  %tobool.not.i555 = icmp eq ptr %71, null
  br i1 %tobool.not.i555, label %if.then54.fl_set_key_val.exit559_crit_edge, label %if.end.i557

if.then54.fl_set_key_val.exit559_crit_edge:       ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #14
  br label %fl_set_key_val.exit559

if.end.i557:                                      ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #14
  %ip_proto57 = getelementptr inbounds %struct.fl_flow_key, ptr %mask, i32 0, i32 3, i32 1
  %ip_proto = getelementptr inbounds %struct.fl_flow_key, ptr %key, i32 0, i32 3, i32 1
  %call.i556 = call i32 @nla_memcpy(ptr noundef %ip_proto, ptr noundef nonnull %71, i32 noundef 1) #12
  %72 = ptrtoint ptr %ip_proto57 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 -1, ptr %ip_proto57, align 1
  br label %fl_set_key_val.exit559

fl_set_key_val.exit559:                           ; preds = %if.end.i557, %if.then54.fl_set_key_val.exit559_crit_edge
  %ip58 = getelementptr inbounds %struct.fl_flow_key, ptr %mask, i32 0, i32 16
  %arrayidx.i.i = getelementptr ptr, ptr %tb, i32 73
  %73 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %74, null
  br i1 %tobool.not.i.i, label %fl_set_key_val.exit559.fl_set_key_val.exit.i_crit_edge, label %if.end.i.i

fl_set_key_val.exit559.fl_set_key_val.exit.i_crit_edge: ; preds = %fl_set_key_val.exit559
  call void @__sanitizer_cov_trace_pc() #14
  br label %fl_set_key_val.exit.i

if.end.i.i:                                       ; preds = %fl_set_key_val.exit559
  %ip = getelementptr inbounds %struct.fl_flow_key, ptr %key, i32 0, i32 16
  %call.i.i = call i32 @nla_memcpy(ptr noundef %ip, ptr noundef nonnull %74, i32 noundef 1) #12
  %arrayidx2.i.i = getelementptr ptr, ptr %tb, i32 74
  %75 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %arrayidx2.i.i, align 4
  %tobool3.not.i.i = icmp eq ptr %76, null
  br i1 %tobool3.not.i.i, label %if.then4.i.i, label %if.else.i.i

if.then4.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %77 = ptrtoint ptr %ip58 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 -1, ptr %ip58, align 1
  br label %fl_set_key_val.exit.i

if.else.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call6.i.i = call i32 @nla_memcpy(ptr noundef %ip58, ptr noundef nonnull %76, i32 noundef 1) #12
  br label %fl_set_key_val.exit.i

fl_set_key_val.exit.i:                            ; preds = %if.else.i.i, %if.then4.i.i, %fl_set_key_val.exit559.fl_set_key_val.exit.i_crit_edge
  %ttl8.i = getelementptr inbounds %struct.fl_flow_key, ptr %mask, i32 0, i32 16, i32 1
  %arrayidx.i15.i = getelementptr ptr, ptr %tb, i32 75
  %78 = ptrtoint ptr %arrayidx.i15.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %arrayidx.i15.i, align 4
  %tobool.not.i16.i = icmp eq ptr %79, null
  br i1 %tobool.not.i16.i, label %fl_set_key_val.exit.i.if.end59_crit_edge, label %if.end.i18.i

fl_set_key_val.exit.i.if.end59_crit_edge:         ; preds = %fl_set_key_val.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end59

if.end.i18.i:                                     ; preds = %fl_set_key_val.exit.i
  %ttl.i = getelementptr inbounds %struct.fl_flow_key, ptr %key, i32 0, i32 16, i32 1
  %call.i17.i = call i32 @nla_memcpy(ptr noundef %ttl.i, ptr noundef nonnull %79, i32 noundef 1) #12
  %arrayidx2.i19.i = getelementptr ptr, ptr %tb, i32 76
  %80 = ptrtoint ptr %arrayidx2.i19.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %arrayidx2.i19.i, align 4
  %tobool3.not.i20.i = icmp eq ptr %81, null
  br i1 %tobool3.not.i20.i, label %if.then4.i21.i, label %if.else.i23.i

if.then4.i21.i:                                   ; preds = %if.end.i18.i
  call void @__sanitizer_cov_trace_pc() #14
  %82 = ptrtoint ptr %ttl8.i to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 -1, ptr %ttl8.i, align 1
  br label %if.end59

if.else.i23.i:                                    ; preds = %if.end.i18.i
  call void @__sanitizer_cov_trace_pc() #14
  %call6.i22.i = call i32 @nla_memcpy(ptr noundef %ttl8.i, ptr noundef nonnull %81, i32 noundef 1) #12
  br label %if.end59

if.end59:                                         ; preds = %if.else.i23.i, %if.then4.i21.i, %fl_set_key_val.exit.i.if.end59_crit_edge, %if.end44.if.end59_crit_edge
  %arrayidx60 = getelementptr ptr, ptr %tb, i32 10
  %83 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %arrayidx60, align 4
  %tobool61.not = icmp eq ptr %84, null
  br i1 %tobool61.not, label %lor.lhs.false62, label %if.end59.if.then65_crit_edge

if.end59.if.then65_crit_edge:                     ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then65

lor.lhs.false62:                                  ; preds = %if.end59
  %arrayidx63 = getelementptr ptr, ptr %tb, i32 12
  %85 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %arrayidx63, align 4
  %tobool64.not = icmp eq ptr %86, null
  br i1 %tobool64.not, label %if.else72, label %lor.lhs.false62.if.then65_crit_edge

lor.lhs.false62.if.then65_crit_edge:              ; preds = %lor.lhs.false62
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then65

if.then65:                                        ; preds = %lor.lhs.false62.if.then65_crit_edge, %if.end59.if.then65_crit_edge
  %addr_type = getelementptr inbounds %struct.fl_flow_key, ptr %key, i32 0, i32 1, i32 1
  %87 = ptrtoint ptr %addr_type to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 2, ptr %addr_type, align 2
  %addr_type67 = getelementptr inbounds %struct.fl_flow_key, ptr %mask, i32 0, i32 1, i32 1
  %88 = ptrtoint ptr %addr_type67 to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 -1, ptr %addr_type67, align 2
  %89 = getelementptr inbounds %struct.fl_flow_key, ptr %mask, i32 0, i32 7
  %90 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %arrayidx60, align 4
  %tobool.not.i561 = icmp eq ptr %91, null
  br i1 %tobool.not.i561, label %if.then65.fl_set_key_val.exit569_crit_edge, label %if.end.i563

if.then65.fl_set_key_val.exit569_crit_edge:       ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #14
  br label %fl_set_key_val.exit569

if.end.i563:                                      ; preds = %if.then65
  %92 = getelementptr inbounds %struct.fl_flow_key, ptr %key, i32 0, i32 7
  %call.i562 = call i32 @nla_memcpy(ptr noundef %92, ptr noundef nonnull %91, i32 noundef 4) #12
  %arrayidx2.i564 = getelementptr ptr, ptr %tb, i32 11
  %93 = ptrtoint ptr %arrayidx2.i564 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %arrayidx2.i564, align 4
  %tobool3.not.i565 = icmp eq ptr %94, null
  br i1 %tobool3.not.i565, label %if.then4.i566, label %if.else.i568

if.then4.i566:                                    ; preds = %if.end.i563
  call void @__sanitizer_cov_trace_pc() #14
  %95 = ptrtoint ptr %89 to i32
  call void @__asan_storeN_noabort(i32 %95, i32 4)
  store i32 -1, ptr %89, align 1
  br label %fl_set_key_val.exit569

if.else.i568:                                     ; preds = %if.end.i563
  call void @__sanitizer_cov_trace_pc() #14
  %call6.i567 = call i32 @nla_memcpy(ptr noundef %89, ptr noundef nonnull %94, i32 noundef 4) #12
  br label %fl_set_key_val.exit569

fl_set_key_val.exit569:                           ; preds = %if.else.i568, %if.then4.i566, %if.then65.fl_set_key_val.exit569_crit_edge
  %dst71 = getelementptr inbounds %struct.fl_flow_key, ptr %mask, i32 0, i32 7, i32 0, i32 0, i32 0, i32 0, i32 1
  %arrayidx.i570 = getelementptr ptr, ptr %tb, i32 12
  %96 = ptrtoint ptr %arrayidx.i570 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %arrayidx.i570, align 4
  %tobool.not.i571 = icmp eq ptr %97, null
  br i1 %tobool.not.i571, label %fl_set_key_val.exit569.if.end88_crit_edge, label %if.end.i573

fl_set_key_val.exit569.if.end88_crit_edge:        ; preds = %fl_set_key_val.exit569
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end88

if.end.i573:                                      ; preds = %fl_set_key_val.exit569
  %dst70 = getelementptr inbounds %struct.fl_flow_key, ptr %key, i32 0, i32 7, i32 0, i32 0, i32 0, i32 0, i32 1
  %call.i572 = call i32 @nla_memcpy(ptr noundef %dst70, ptr noundef nonnull %97, i32 noundef 4) #12
  %arrayidx2.i574 = getelementptr ptr, ptr %tb, i32 13
  %98 = ptrtoint ptr %arrayidx2.i574 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %arrayidx2.i574, align 4
  %tobool3.not.i575 = icmp eq ptr %99, null
  br i1 %tobool3.not.i575, label %if.then4.i576, label %if.else.i578

if.then4.i576:                                    ; preds = %if.end.i573
  call void @__sanitizer_cov_trace_pc() #14
  %100 = ptrtoint ptr %dst71 to i32
  call void @__asan_storeN_noabort(i32 %100, i32 4)
  store i32 -1, ptr %dst71, align 1
  br label %if.end88

if.else.i578:                                     ; preds = %if.end.i573
  call void @__sanitizer_cov_trace_pc() #14
  %call6.i577 = call i32 @nla_memcpy(ptr noundef %dst71, ptr noundef nonnull %99, i32 noundef 4) #12
  br label %if.end88

if.else72:                                        ; preds = %lor.lhs.false62
  %arrayidx73 = getelementptr ptr, ptr %tb, i32 14
  %101 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %arrayidx73, align 4
  %tobool74.not = icmp eq ptr %102, null
  br i1 %tobool74.not, label %lor.lhs.false75, label %if.else72.if.then78_crit_edge

if.else72.if.then78_crit_edge:                    ; preds = %if.else72
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then78

lor.lhs.false75:                                  ; preds = %if.else72
  %arrayidx76 = getelementptr ptr, ptr %tb, i32 16
  %103 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %arrayidx76, align 4
  %tobool77.not = icmp eq ptr %104, null
  br i1 %tobool77.not, label %lor.lhs.false75.if.end88_crit_edge, label %lor.lhs.false75.if.then78_crit_edge

lor.lhs.false75.if.then78_crit_edge:              ; preds = %lor.lhs.false75
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then78

lor.lhs.false75.if.end88_crit_edge:               ; preds = %lor.lhs.false75
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end88

if.then78:                                        ; preds = %lor.lhs.false75.if.then78_crit_edge, %if.else72.if.then78_crit_edge
  %addr_type80 = getelementptr inbounds %struct.fl_flow_key, ptr %key, i32 0, i32 1, i32 1
  %105 = ptrtoint ptr %addr_type80 to i32
  call void @__asan_store2_noabort(i32 %105)
  store i16 3, ptr %addr_type80, align 2
  %addr_type82 = getelementptr inbounds %struct.fl_flow_key, ptr %mask, i32 0, i32 1, i32 1
  %106 = ptrtoint ptr %addr_type82 to i32
  call void @__asan_store2_noabort(i32 %106)
  store i16 -1, ptr %addr_type82, align 2
  %107 = getelementptr inbounds %struct.fl_flow_key, ptr %mask, i32 0, i32 7
  %108 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %arrayidx73, align 4
  %tobool.not.i581 = icmp eq ptr %109, null
  br i1 %tobool.not.i581, label %if.then78.fl_set_key_val.exit589_crit_edge, label %if.end.i583

if.then78.fl_set_key_val.exit589_crit_edge:       ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #14
  br label %fl_set_key_val.exit589

if.end.i583:                                      ; preds = %if.then78
  %110 = getelementptr inbounds %struct.fl_flow_key, ptr %key, i32 0, i32 7
  %call.i582 = call i32 @nla_memcpy(ptr noundef %110, ptr noundef nonnull %109, i32 noundef 16) #12
  %arrayidx2.i584 = getelementptr ptr, ptr %tb, i32 15
  %111 = ptrtoint ptr %arrayidx2.i584 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %arrayidx2.i584, align 4
  %tobool3.not.i585 = icmp eq ptr %112, null
  br i1 %tobool3.not.i585, label %if.then4.i586, label %if.else.i588

if.then4.i586:                                    ; preds = %if.end.i583
  call void @__sanitizer_cov_trace_pc() #14
  %113 = call ptr @memset(ptr %107, i32 255, i32 16)
  br label %fl_set_key_val.exit589

if.else.i588:                                     ; preds = %if.end.i583
  call void @__sanitizer_cov_trace_pc() #14
  %call6.i587 = call i32 @nla_memcpy(ptr noundef %107, ptr noundef nonnull %112, i32 noundef 16) #12
  br label %fl_set_key_val.exit589

fl_set_key_val.exit589:                           ; preds = %if.else.i588, %if.then4.i586, %if.then78.fl_set_key_val.exit589_crit_edge
  %dst86 = getelementptr inbounds %struct.fl_flow_key, ptr %mask, i32 0, i32 7, i32 0, i32 1
  %arrayidx.i590 = getelementptr ptr, ptr %tb, i32 16
  %114 = ptrtoint ptr %arrayidx.i590 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %arrayidx.i590, align 4
  %tobool.not.i591 = icmp eq ptr %115, null
  br i1 %tobool.not.i591, label %fl_set_key_val.exit589.if.end88_crit_edge, label %if.end.i593

fl_set_key_val.exit589.if.end88_crit_edge:        ; preds = %fl_set_key_val.exit589
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end88

if.end.i593:                                      ; preds = %fl_set_key_val.exit589
  %dst85 = getelementptr inbounds %struct.fl_flow_key, ptr %key, i32 0, i32 7, i32 0, i32 1
  %call.i592 = call i32 @nla_memcpy(ptr noundef %dst85, ptr noundef nonnull %115, i32 noundef 16) #12
  %arrayidx2.i594 = getelementptr ptr, ptr %tb, i32 17
  %116 = ptrtoint ptr %arrayidx2.i594 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %arrayidx2.i594, align 4
  %tobool3.not.i595 = icmp eq ptr %117, null
  br i1 %tobool3.not.i595, label %if.then4.i596, label %if.else.i598

if.then4.i596:                                    ; preds = %if.end.i593
  call void @__sanitizer_cov_trace_pc() #14
  %118 = call ptr @memset(ptr %dst86, i32 255, i32 16)
  br label %if.end88

if.else.i598:                                     ; preds = %if.end.i593
  call void @__sanitizer_cov_trace_pc() #14
  %call6.i597 = call i32 @nla_memcpy(ptr noundef %dst86, ptr noundef nonnull %117, i32 noundef 16) #12
  br label %if.end88

if.end88:                                         ; preds = %if.else.i598, %if.then4.i596, %fl_set_key_val.exit589.if.end88_crit_edge, %lor.lhs.false75.if.end88_crit_edge, %if.else.i578, %if.then4.i576, %fl_set_key_val.exit569.if.end88_crit_edge
  %ip_proto90 = getelementptr inbounds %struct.fl_flow_key, ptr %key, i32 0, i32 3, i32 1
  %119 = ptrtoint ptr %ip_proto90 to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %ip_proto90, align 2
  %121 = zext i8 %120 to i64
  call void @__sanitizer_cov_trace_switch(i64 %121, ptr @__sancov_gen_cov_switch_values.59)
  switch i8 %120, label %if.else134 [
    i8 6, label %if.then94
    i8 17, label %if.then110
    i8 -124, label %if.then125
  ]

if.then94:                                        ; preds = %if.end88
  %tp = getelementptr inbounds %struct.fl_flow_key, ptr %key, i32 0, i32 8
  %tp96 = getelementptr inbounds %struct.fl_flow_key, ptr %mask, i32 0, i32 8
  %arrayidx.i600 = getelementptr ptr, ptr %tb, i32 18
  %122 = ptrtoint ptr %arrayidx.i600 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %arrayidx.i600, align 4
  %tobool.not.i601 = icmp eq ptr %123, null
  br i1 %tobool.not.i601, label %if.then94.fl_set_key_val.exit609_crit_edge, label %if.end.i603

if.then94.fl_set_key_val.exit609_crit_edge:       ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #14
  br label %fl_set_key_val.exit609

if.end.i603:                                      ; preds = %if.then94
  %call.i602 = call i32 @nla_memcpy(ptr noundef %tp, ptr noundef nonnull %123, i32 noundef 2) #12
  %arrayidx2.i604 = getelementptr ptr, ptr %tb, i32 35
  %124 = ptrtoint ptr %arrayidx2.i604 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %arrayidx2.i604, align 4
  %tobool3.not.i605 = icmp eq ptr %125, null
  br i1 %tobool3.not.i605, label %if.then4.i606, label %if.else.i608

if.then4.i606:                                    ; preds = %if.end.i603
  call void @__sanitizer_cov_trace_pc() #14
  %126 = ptrtoint ptr %tp96 to i32
  call void @__asan_storeN_noabort(i32 %126, i32 2)
  store i16 -1, ptr %tp96, align 1
  br label %fl_set_key_val.exit609

if.else.i608:                                     ; preds = %if.end.i603
  call void @__sanitizer_cov_trace_pc() #14
  %call6.i607 = call i32 @nla_memcpy(ptr noundef %tp96, ptr noundef nonnull %125, i32 noundef 2) #12
  br label %fl_set_key_val.exit609

fl_set_key_val.exit609:                           ; preds = %if.else.i608, %if.then4.i606, %if.then94.fl_set_key_val.exit609_crit_edge
  %dst101 = getelementptr inbounds %struct.anon.165, ptr %tp96, i32 0, i32 1
  %arrayidx.i610 = getelementptr ptr, ptr %tb, i32 19
  %127 = ptrtoint ptr %arrayidx.i610 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %arrayidx.i610, align 4
  %tobool.not.i611 = icmp eq ptr %128, null
  br i1 %tobool.not.i611, label %fl_set_key_val.exit609.fl_set_key_val.exit619_crit_edge, label %if.end.i613

fl_set_key_val.exit609.fl_set_key_val.exit619_crit_edge: ; preds = %fl_set_key_val.exit609
  call void @__sanitizer_cov_trace_pc() #14
  br label %fl_set_key_val.exit619

if.end.i613:                                      ; preds = %fl_set_key_val.exit609
  %dst99 = getelementptr inbounds %struct.anon.165, ptr %tp, i32 0, i32 1
  %call.i612 = call i32 @nla_memcpy(ptr noundef %dst99, ptr noundef nonnull %128, i32 noundef 2) #12
  %arrayidx2.i614 = getelementptr ptr, ptr %tb, i32 36
  %129 = ptrtoint ptr %arrayidx2.i614 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %arrayidx2.i614, align 4
  %tobool3.not.i615 = icmp eq ptr %130, null
  br i1 %tobool3.not.i615, label %if.then4.i616, label %if.else.i618

if.then4.i616:                                    ; preds = %if.end.i613
  call void @__sanitizer_cov_trace_pc() #14
  %131 = ptrtoint ptr %dst101 to i32
  call void @__asan_storeN_noabort(i32 %131, i32 2)
  store i16 -1, ptr %dst101, align 1
  br label %fl_set_key_val.exit619

if.else.i618:                                     ; preds = %if.end.i613
  call void @__sanitizer_cov_trace_pc() #14
  %call6.i617 = call i32 @nla_memcpy(ptr noundef %dst101, ptr noundef nonnull %130, i32 noundef 2) #12
  br label %fl_set_key_val.exit619

fl_set_key_val.exit619:                           ; preds = %if.else.i618, %if.then4.i616, %fl_set_key_val.exit609.fl_set_key_val.exit619_crit_edge
  %tcp102 = getelementptr inbounds %struct.fl_flow_key, ptr %mask, i32 0, i32 15
  %arrayidx.i620 = getelementptr ptr, ptr %tb, i32 71
  %132 = ptrtoint ptr %arrayidx.i620 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %arrayidx.i620, align 4
  %tobool.not.i621 = icmp eq ptr %133, null
  br i1 %tobool.not.i621, label %fl_set_key_val.exit619.if.end227_crit_edge, label %if.end.i623

fl_set_key_val.exit619.if.end227_crit_edge:       ; preds = %fl_set_key_val.exit619
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end227

if.end.i623:                                      ; preds = %fl_set_key_val.exit619
  %tcp = getelementptr inbounds %struct.fl_flow_key, ptr %key, i32 0, i32 15
  %call.i622 = call i32 @nla_memcpy(ptr noundef %tcp, ptr noundef nonnull %133, i32 noundef 2) #12
  %arrayidx2.i624 = getelementptr ptr, ptr %tb, i32 72
  %134 = ptrtoint ptr %arrayidx2.i624 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %arrayidx2.i624, align 4
  %tobool3.not.i625 = icmp eq ptr %135, null
  br i1 %tobool3.not.i625, label %if.then4.i626, label %if.else.i628

if.then4.i626:                                    ; preds = %if.end.i623
  call void @__sanitizer_cov_trace_pc() #14
  %136 = ptrtoint ptr %tcp102 to i32
  call void @__asan_storeN_noabort(i32 %136, i32 2)
  store i16 -1, ptr %tcp102, align 1
  br label %if.end227

if.else.i628:                                     ; preds = %if.end.i623
  call void @__sanitizer_cov_trace_pc() #14
  %call6.i627 = call i32 @nla_memcpy(ptr noundef %tcp102, ptr noundef nonnull %135, i32 noundef 2) #12
  br label %if.end227

if.then110:                                       ; preds = %if.end88
  %tp111 = getelementptr inbounds %struct.fl_flow_key, ptr %key, i32 0, i32 8
  %tp113 = getelementptr inbounds %struct.fl_flow_key, ptr %mask, i32 0, i32 8
  %arrayidx.i630 = getelementptr ptr, ptr %tb, i32 20
  %137 = ptrtoint ptr %arrayidx.i630 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %arrayidx.i630, align 4
  %tobool.not.i631 = icmp eq ptr %138, null
  br i1 %tobool.not.i631, label %if.then110.fl_set_key_val.exit639_crit_edge, label %if.end.i633

if.then110.fl_set_key_val.exit639_crit_edge:      ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #14
  br label %fl_set_key_val.exit639

if.end.i633:                                      ; preds = %if.then110
  %call.i632 = call i32 @nla_memcpy(ptr noundef %tp111, ptr noundef nonnull %138, i32 noundef 2) #12
  %arrayidx2.i634 = getelementptr ptr, ptr %tb, i32 37
  %139 = ptrtoint ptr %arrayidx2.i634 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %arrayidx2.i634, align 4
  %tobool3.not.i635 = icmp eq ptr %140, null
  br i1 %tobool3.not.i635, label %if.then4.i636, label %if.else.i638

if.then4.i636:                                    ; preds = %if.end.i633
  call void @__sanitizer_cov_trace_pc() #14
  %141 = ptrtoint ptr %tp113 to i32
  call void @__asan_storeN_noabort(i32 %141, i32 2)
  store i16 -1, ptr %tp113, align 1
  br label %fl_set_key_val.exit639

if.else.i638:                                     ; preds = %if.end.i633
  call void @__sanitizer_cov_trace_pc() #14
  %call6.i637 = call i32 @nla_memcpy(ptr noundef %tp113, ptr noundef nonnull %140, i32 noundef 2) #12
  br label %fl_set_key_val.exit639

fl_set_key_val.exit639:                           ; preds = %if.else.i638, %if.then4.i636, %if.then110.fl_set_key_val.exit639_crit_edge
  %dst118 = getelementptr inbounds %struct.anon.165, ptr %tp113, i32 0, i32 1
  %arrayidx.i640 = getelementptr ptr, ptr %tb, i32 21
  %142 = ptrtoint ptr %arrayidx.i640 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %arrayidx.i640, align 4
  %tobool.not.i641 = icmp eq ptr %143, null
  br i1 %tobool.not.i641, label %fl_set_key_val.exit639.if.end227_crit_edge, label %if.end.i643

fl_set_key_val.exit639.if.end227_crit_edge:       ; preds = %fl_set_key_val.exit639
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end227

if.end.i643:                                      ; preds = %fl_set_key_val.exit639
  %dst116 = getelementptr inbounds %struct.anon.165, ptr %tp111, i32 0, i32 1
  %call.i642 = call i32 @nla_memcpy(ptr noundef %dst116, ptr noundef nonnull %143, i32 noundef 2) #12
  %arrayidx2.i644 = getelementptr ptr, ptr %tb, i32 38
  %144 = ptrtoint ptr %arrayidx2.i644 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %arrayidx2.i644, align 4
  %tobool3.not.i645 = icmp eq ptr %145, null
  br i1 %tobool3.not.i645, label %if.then4.i646, label %if.else.i648

if.then4.i646:                                    ; preds = %if.end.i643
  call void @__sanitizer_cov_trace_pc() #14
  %146 = ptrtoint ptr %dst118 to i32
  call void @__asan_storeN_noabort(i32 %146, i32 2)
  store i16 -1, ptr %dst118, align 1
  br label %if.end227

if.else.i648:                                     ; preds = %if.end.i643
  call void @__sanitizer_cov_trace_pc() #14
  %call6.i647 = call i32 @nla_memcpy(ptr noundef %dst118, ptr noundef nonnull %145, i32 noundef 2) #12
  br label %if.end227

if.then125:                                       ; preds = %if.end88
  %tp126 = getelementptr inbounds %struct.fl_flow_key, ptr %key, i32 0, i32 8
  %tp128 = getelementptr inbounds %struct.fl_flow_key, ptr %mask, i32 0, i32 8
  %arrayidx.i650 = getelementptr ptr, ptr %tb, i32 41
  %147 = ptrtoint ptr %arrayidx.i650 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %arrayidx.i650, align 4
  %tobool.not.i651 = icmp eq ptr %148, null
  br i1 %tobool.not.i651, label %if.then125.fl_set_key_val.exit659_crit_edge, label %if.end.i653

if.then125.fl_set_key_val.exit659_crit_edge:      ; preds = %if.then125
  call void @__sanitizer_cov_trace_pc() #14
  br label %fl_set_key_val.exit659

if.end.i653:                                      ; preds = %if.then125
  %call.i652 = call i32 @nla_memcpy(ptr noundef %tp126, ptr noundef nonnull %148, i32 noundef 2) #12
  %arrayidx2.i654 = getelementptr ptr, ptr %tb, i32 39
  %149 = ptrtoint ptr %arrayidx2.i654 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %arrayidx2.i654, align 4
  %tobool3.not.i655 = icmp eq ptr %150, null
  br i1 %tobool3.not.i655, label %if.then4.i656, label %if.else.i658

if.then4.i656:                                    ; preds = %if.end.i653
  call void @__sanitizer_cov_trace_pc() #14
  %151 = ptrtoint ptr %tp128 to i32
  call void @__asan_storeN_noabort(i32 %151, i32 2)
  store i16 -1, ptr %tp128, align 1
  br label %fl_set_key_val.exit659

if.else.i658:                                     ; preds = %if.end.i653
  call void @__sanitizer_cov_trace_pc() #14
  %call6.i657 = call i32 @nla_memcpy(ptr noundef %tp128, ptr noundef nonnull %150, i32 noundef 2) #12
  br label %fl_set_key_val.exit659

fl_set_key_val.exit659:                           ; preds = %if.else.i658, %if.then4.i656, %if.then125.fl_set_key_val.exit659_crit_edge
  %dst133 = getelementptr inbounds %struct.anon.165, ptr %tp128, i32 0, i32 1
  %arrayidx.i660 = getelementptr ptr, ptr %tb, i32 42
  %152 = ptrtoint ptr %arrayidx.i660 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %arrayidx.i660, align 4
  %tobool.not.i661 = icmp eq ptr %153, null
  br i1 %tobool.not.i661, label %fl_set_key_val.exit659.if.end227_crit_edge, label %if.end.i663

fl_set_key_val.exit659.if.end227_crit_edge:       ; preds = %fl_set_key_val.exit659
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end227

if.end.i663:                                      ; preds = %fl_set_key_val.exit659
  %dst131 = getelementptr inbounds %struct.anon.165, ptr %tp126, i32 0, i32 1
  %call.i662 = call i32 @nla_memcpy(ptr noundef %dst131, ptr noundef nonnull %153, i32 noundef 2) #12
  %arrayidx2.i664 = getelementptr ptr, ptr %tb, i32 40
  %154 = ptrtoint ptr %arrayidx2.i664 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %arrayidx2.i664, align 4
  %tobool3.not.i665 = icmp eq ptr %155, null
  br i1 %tobool3.not.i665, label %if.then4.i666, label %if.else.i668

if.then4.i666:                                    ; preds = %if.end.i663
  call void @__sanitizer_cov_trace_pc() #14
  %156 = ptrtoint ptr %dst133 to i32
  call void @__asan_storeN_noabort(i32 %156, i32 2)
  store i16 -1, ptr %dst133, align 1
  br label %if.end227

if.else.i668:                                     ; preds = %if.end.i663
  call void @__sanitizer_cov_trace_pc() #14
  %call6.i667 = call i32 @nla_memcpy(ptr noundef %dst133, ptr noundef nonnull %155, i32 noundef 2) #12
  br label %if.end227

if.else134:                                       ; preds = %if.end88
  %157 = ptrtoint ptr %basic45 to i32
  call void @__asan_load2_noabort(i32 %157)
  %158 = load i16, ptr %basic45, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %158)
  %cmp138 = icmp eq i16 %158, 2048
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %120)
  %cmp143 = icmp eq i8 %120, 1
  %or.cond = select i1 %cmp138, i1 %cmp143, i1 false
  br i1 %or.cond, label %if.then145, label %if.else151

if.then145:                                       ; preds = %if.else134
  %icmp146 = getelementptr inbounds %struct.fl_flow_key, ptr %mask, i32 0, i32 9
  %arrayidx.i670 = getelementptr ptr, ptr %tb, i32 51
  %159 = ptrtoint ptr %arrayidx.i670 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %arrayidx.i670, align 4
  %tobool.not.i671 = icmp eq ptr %160, null
  br i1 %tobool.not.i671, label %if.then145.fl_set_key_val.exit679_crit_edge, label %if.end.i673

if.then145.fl_set_key_val.exit679_crit_edge:      ; preds = %if.then145
  call void @__sanitizer_cov_trace_pc() #14
  br label %fl_set_key_val.exit679

if.end.i673:                                      ; preds = %if.then145
  %icmp = getelementptr inbounds %struct.fl_flow_key, ptr %key, i32 0, i32 9
  %call.i672 = call i32 @nla_memcpy(ptr noundef %icmp, ptr noundef nonnull %160, i32 noundef 1) #12
  %arrayidx2.i674 = getelementptr ptr, ptr %tb, i32 52
  %161 = ptrtoint ptr %arrayidx2.i674 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %arrayidx2.i674, align 4
  %tobool3.not.i675 = icmp eq ptr %162, null
  br i1 %tobool3.not.i675, label %if.then4.i676, label %if.else.i678

if.then4.i676:                                    ; preds = %if.end.i673
  call void @__sanitizer_cov_trace_pc() #14
  %163 = ptrtoint ptr %icmp146 to i32
  call void @__asan_store1_noabort(i32 %163)
  store i8 -1, ptr %icmp146, align 1
  br label %fl_set_key_val.exit679

if.else.i678:                                     ; preds = %if.end.i673
  call void @__sanitizer_cov_trace_pc() #14
  %call6.i677 = call i32 @nla_memcpy(ptr noundef %icmp146, ptr noundef nonnull %162, i32 noundef 1) #12
  br label %fl_set_key_val.exit679

fl_set_key_val.exit679:                           ; preds = %if.else.i678, %if.then4.i676, %if.then145.fl_set_key_val.exit679_crit_edge
  %code150 = getelementptr inbounds %struct.fl_flow_key, ptr %mask, i32 0, i32 9, i32 0, i32 1
  %arrayidx.i680 = getelementptr ptr, ptr %tb, i32 49
  %164 = ptrtoint ptr %arrayidx.i680 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %arrayidx.i680, align 4
  %tobool.not.i681 = icmp eq ptr %165, null
  br i1 %tobool.not.i681, label %fl_set_key_val.exit679.if.end227_crit_edge, label %if.end.i683

fl_set_key_val.exit679.if.end227_crit_edge:       ; preds = %fl_set_key_val.exit679
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end227

if.end.i683:                                      ; preds = %fl_set_key_val.exit679
  %code = getelementptr inbounds %struct.fl_flow_key, ptr %key, i32 0, i32 9, i32 0, i32 1
  %call.i682 = call i32 @nla_memcpy(ptr noundef %code, ptr noundef nonnull %165, i32 noundef 1) #12
  %arrayidx2.i684 = getelementptr ptr, ptr %tb, i32 50
  %166 = ptrtoint ptr %arrayidx2.i684 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %arrayidx2.i684, align 4
  %tobool3.not.i685 = icmp eq ptr %167, null
  br i1 %tobool3.not.i685, label %if.then4.i686, label %if.else.i688

if.then4.i686:                                    ; preds = %if.end.i683
  call void @__sanitizer_cov_trace_pc() #14
  %168 = ptrtoint ptr %code150 to i32
  call void @__asan_store1_noabort(i32 %168)
  store i8 -1, ptr %code150, align 1
  br label %if.end227

if.else.i688:                                     ; preds = %if.end.i683
  call void @__sanitizer_cov_trace_pc() #14
  %call6.i687 = call i32 @nla_memcpy(ptr noundef %code150, ptr noundef nonnull %167, i32 noundef 1) #12
  br label %if.end227

if.else151:                                       ; preds = %if.else134
  %169 = zext i16 %158 to i64
  call void @__sanitizer_cov_trace_switch(i64 %169, ptr @__sancov_gen_cov_switch_values.60)
  switch i16 %158, label %if.else151.if.end227_crit_edge [
    i16 -31011, label %land.lhs.true157
    i16 -30649, label %if.else151.if.then184_crit_edge
    i16 -30648, label %if.else151.if.then184_crit_edge941
    i16 2054, label %if.else151.if.then202_crit_edge
    i16 -32715, label %if.else151.if.then202_crit_edge942
  ]

if.else151.if.then202_crit_edge942:               ; preds = %if.else151
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then202

if.else151.if.then202_crit_edge:                  ; preds = %if.else151
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then202

if.else151.if.then184_crit_edge941:               ; preds = %if.else151
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then184

if.else151.if.then184_crit_edge:                  ; preds = %if.else151
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then184

if.else151.if.end227_crit_edge:                   ; preds = %if.else151
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end227

land.lhs.true157:                                 ; preds = %if.else151
  call void @__sanitizer_cov_trace_const_cmp1(i8 58, i8 %120)
  %cmp161 = icmp eq i8 %120, 58
  br i1 %cmp161, label %if.then163, label %land.lhs.true157.if.end227_crit_edge

land.lhs.true157.if.end227_crit_edge:             ; preds = %land.lhs.true157
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end227

if.then163:                                       ; preds = %land.lhs.true157
  %icmp166 = getelementptr inbounds %struct.fl_flow_key, ptr %mask, i32 0, i32 9
  %arrayidx.i690 = getelementptr ptr, ptr %tb, i32 55
  %170 = ptrtoint ptr %arrayidx.i690 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %arrayidx.i690, align 4
  %tobool.not.i691 = icmp eq ptr %171, null
  br i1 %tobool.not.i691, label %if.then163.fl_set_key_val.exit699_crit_edge, label %if.end.i693

if.then163.fl_set_key_val.exit699_crit_edge:      ; preds = %if.then163
  call void @__sanitizer_cov_trace_pc() #14
  br label %fl_set_key_val.exit699

if.end.i693:                                      ; preds = %if.then163
  %icmp164 = getelementptr inbounds %struct.fl_flow_key, ptr %key, i32 0, i32 9
  %call.i692 = call i32 @nla_memcpy(ptr noundef %icmp164, ptr noundef nonnull %171, i32 noundef 1) #12
  %arrayidx2.i694 = getelementptr ptr, ptr %tb, i32 56
  %172 = ptrtoint ptr %arrayidx2.i694 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %arrayidx2.i694, align 4
  %tobool3.not.i695 = icmp eq ptr %173, null
  br i1 %tobool3.not.i695, label %if.then4.i696, label %if.else.i698

if.then4.i696:                                    ; preds = %if.end.i693
  call void @__sanitizer_cov_trace_pc() #14
  %174 = ptrtoint ptr %icmp166 to i32
  call void @__asan_store1_noabort(i32 %174)
  store i8 -1, ptr %icmp166, align 1
  br label %fl_set_key_val.exit699

if.else.i698:                                     ; preds = %if.end.i693
  call void @__sanitizer_cov_trace_pc() #14
  %call6.i697 = call i32 @nla_memcpy(ptr noundef %icmp166, ptr noundef nonnull %173, i32 noundef 1) #12
  br label %fl_set_key_val.exit699

fl_set_key_val.exit699:                           ; preds = %if.else.i698, %if.then4.i696, %if.then163.fl_set_key_val.exit699_crit_edge
  %code171 = getelementptr inbounds %struct.fl_flow_key, ptr %mask, i32 0, i32 9, i32 0, i32 1
  %arrayidx.i700 = getelementptr ptr, ptr %tb, i32 53
  %175 = ptrtoint ptr %arrayidx.i700 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %arrayidx.i700, align 4
  %tobool.not.i701 = icmp eq ptr %176, null
  br i1 %tobool.not.i701, label %fl_set_key_val.exit699.if.end227_crit_edge, label %if.end.i703

fl_set_key_val.exit699.if.end227_crit_edge:       ; preds = %fl_set_key_val.exit699
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end227

if.end.i703:                                      ; preds = %fl_set_key_val.exit699
  %code169 = getelementptr inbounds %struct.fl_flow_key, ptr %key, i32 0, i32 9, i32 0, i32 1
  %call.i702 = call i32 @nla_memcpy(ptr noundef %code169, ptr noundef nonnull %176, i32 noundef 1) #12
  %arrayidx2.i704 = getelementptr ptr, ptr %tb, i32 54
  %177 = ptrtoint ptr %arrayidx2.i704 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %arrayidx2.i704, align 4
  %tobool3.not.i705 = icmp eq ptr %178, null
  br i1 %tobool3.not.i705, label %if.then4.i706, label %if.else.i708

if.then4.i706:                                    ; preds = %if.end.i703
  call void @__sanitizer_cov_trace_pc() #14
  %179 = ptrtoint ptr %code171 to i32
  call void @__asan_store1_noabort(i32 %179)
  store i8 -1, ptr %code171, align 1
  br label %if.end227

if.else.i708:                                     ; preds = %if.end.i703
  call void @__sanitizer_cov_trace_pc() #14
  %call6.i707 = call i32 @nla_memcpy(ptr noundef %code171, ptr noundef nonnull %178, i32 noundef 1) #12
  br label %if.end227

if.then184:                                       ; preds = %if.else151.if.then184_crit_edge, %if.else151.if.then184_crit_edge941
  %mpls = getelementptr inbounds %struct.fl_flow_key, ptr %key, i32 0, i32 14
  %mpls185 = getelementptr inbounds %struct.fl_flow_key, ptr %mask, i32 0, i32 14
  %arrayidx.i710 = getelementptr ptr, ptr %tb, i32 99
  %180 = ptrtoint ptr %arrayidx.i710 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %arrayidx.i710, align 4
  %tobool.not.i711 = icmp eq ptr %181, null
  %arrayidx21.i = getelementptr ptr, ptr %tb, i32 67
  %182 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %arrayidx21.i, align 4
  %tobool22.not.i = icmp eq ptr %183, null
  br i1 %tobool.not.i711, label %if.end17.i719, label %if.then.i712

if.then.i712:                                     ; preds = %if.then184
  br i1 %tobool22.not.i, label %lor.lhs.false.i, label %if.then.i712.do.body.i715_crit_edge

if.then.i712.do.body.i715_crit_edge:              ; preds = %if.then.i712
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i715

lor.lhs.false.i:                                  ; preds = %if.then.i712
  %arrayidx3.i = getelementptr ptr, ptr %tb, i32 68
  %184 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %arrayidx3.i, align 4
  %tobool4.not.i = icmp eq ptr %185, null
  br i1 %tobool4.not.i, label %lor.lhs.false5.i, label %lor.lhs.false.i.do.body.i715_crit_edge

lor.lhs.false.i.do.body.i715_crit_edge:           ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i715

lor.lhs.false5.i:                                 ; preds = %lor.lhs.false.i
  %arrayidx6.i713 = getelementptr ptr, ptr %tb, i32 69
  %186 = ptrtoint ptr %arrayidx6.i713 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %arrayidx6.i713, align 4
  %tobool7.not.i714 = icmp eq ptr %187, null
  br i1 %tobool7.not.i714, label %lor.lhs.false8.i, label %lor.lhs.false5.i.do.body.i715_crit_edge

lor.lhs.false5.i.do.body.i715_crit_edge:          ; preds = %lor.lhs.false5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i715

lor.lhs.false8.i:                                 ; preds = %lor.lhs.false5.i
  %arrayidx9.i = getelementptr ptr, ptr %tb, i32 70
  %188 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %arrayidx9.i, align 4
  %tobool10.not.i = icmp eq ptr %189, null
  br i1 %tobool10.not.i, label %fl_set_key_mpls.exit, label %lor.lhs.false8.i.do.body.i715_crit_edge

lor.lhs.false8.i.do.body.i715_crit_edge:          ; preds = %lor.lhs.false8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i715

do.body.i715:                                     ; preds = %lor.lhs.false8.i.do.body.i715_crit_edge, %lor.lhs.false5.i.do.body.i715_crit_edge, %lor.lhs.false.i.do.body.i715_crit_edge, %if.then.i712.do.body.i715_crit_edge
  call void @do_trace_netlink_extack(ptr noundef nonnull @fl_set_key_mpls.__msg) #12
  %tobool12.not.i = icmp eq ptr %extack, null
  br i1 %tobool12.not.i, label %do.body.i715.cleanup315_crit_edge, label %if.then13.i

do.body.i715.cleanup315_crit_edge:                ; preds = %do.body.i715
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup315

if.then13.i:                                      ; preds = %do.body.i715
  call void @__sanitizer_cov_trace_pc() #14
  %190 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %190)
  store ptr @fl_set_key_mpls.__msg, ptr %extack, align 4
  %191 = ptrtoint ptr %arrayidx.i710 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %arrayidx.i710, align 4
  %bad_attr.i716 = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 1
  %193 = ptrtoint ptr %bad_attr.i716 to i32
  call void @__asan_store4_noabort(i32 %193)
  store ptr %192, ptr %bad_attr.i716, align 4
  %policy.i717 = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 2
  %194 = ptrtoint ptr %policy.i717 to i32
  call void @__asan_store4_noabort(i32 %194)
  store ptr null, ptr %policy.i717, align 4
  br label %cleanup315

if.end17.i719:                                    ; preds = %if.then184
  br i1 %tobool22.not.i, label %if.end17.i719.if.end29.i_crit_edge, label %if.then23.i

if.end17.i719.if.end29.i_crit_edge:               ; preds = %if.end17.i719
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29.i

if.then23.i:                                      ; preds = %if.end17.i719
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i.i.i720 = getelementptr i8, ptr %183, i32 4
  %195 = ptrtoint ptr %add.ptr.i.i.i720 to i32
  call void @__asan_load1_noabort(i32 %195)
  %196 = load i8, ptr %add.ptr.i.i.i720, align 1
  %conv.i = zext i8 %196 to i32
  %197 = ptrtoint ptr %mpls to i32
  call void @__asan_load4_noabort(i32 %197)
  %bf.load.i721 = load i32, ptr %mpls, align 4
  %bf.shl.i722 = shl nuw i32 %conv.i, 24
  %bf.clear.i723 = and i32 %bf.load.i721, 16777215
  %bf.set.i724 = or i32 %bf.clear.i723, %bf.shl.i722
  store i32 %bf.set.i724, ptr %mpls, align 4
  %198 = ptrtoint ptr %mpls185 to i32
  call void @__asan_load4_noabort(i32 %198)
  %bf.load26.i = load i32, ptr %mpls185, align 4
  %bf.set28.i = or i32 %bf.load26.i, -16777216
  store i32 %bf.set28.i, ptr %mpls185, align 4
  %used_lses.i.i = getelementptr inbounds %struct.fl_flow_key, ptr %key, i32 0, i32 14, i32 1
  %199 = ptrtoint ptr %used_lses.i.i to i32
  call void @__asan_load1_noabort(i32 %199)
  %200 = load i8, ptr %used_lses.i.i, align 4
  %conv1.i.i = or i8 %200, 1
  store i8 %conv1.i.i, ptr %used_lses.i.i, align 4
  %used_lses.i192.i = getelementptr inbounds %struct.fl_flow_key, ptr %mask, i32 0, i32 14, i32 1
  %201 = ptrtoint ptr %used_lses.i192.i to i32
  call void @__asan_load1_noabort(i32 %201)
  %202 = load i8, ptr %used_lses.i192.i, align 4
  %conv1.i193.i = or i8 %202, 1
  store i8 %conv1.i193.i, ptr %used_lses.i192.i, align 4
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.then23.i, %if.end17.i719.if.end29.i_crit_edge
  %arrayidx30.i = getelementptr ptr, ptr %tb, i32 68
  %203 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %arrayidx30.i, align 4
  %tobool31.not.i = icmp eq ptr %204, null
  br i1 %tobool31.not.i, label %if.end29.i.if.end59.i_crit_edge, label %if.then32.i

if.end29.i.if.end59.i_crit_edge:                  ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end59.i

if.then32.i:                                      ; preds = %if.end29.i
  %add.ptr.i.i194.i = getelementptr i8, ptr %204, i32 4
  %205 = ptrtoint ptr %add.ptr.i.i194.i to i32
  call void @__asan_load1_noabort(i32 %205)
  %206 = load i8, ptr %add.ptr.i.i194.i, align 1
  %conv35.i = zext i8 %206 to i32
  %and.i = and i32 %conv35.i, 254
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool36.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool36.not.i, label %if.end49.i, label %do.body38.i

do.body38.i:                                      ; preds = %if.then32.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @fl_set_key_mpls.__msg.21) #12
  %tobool40.not.i = icmp eq ptr %extack, null
  br i1 %tobool40.not.i, label %do.body38.i.cleanup315_crit_edge, label %if.then41.i

do.body38.i.cleanup315_crit_edge:                 ; preds = %do.body38.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup315

if.then41.i:                                      ; preds = %do.body38.i
  call void @__sanitizer_cov_trace_pc() #14
  %207 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %207)
  store ptr @fl_set_key_mpls.__msg.21, ptr %extack, align 4
  %208 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %arrayidx30.i, align 4
  %bad_attr44.i = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 1
  %210 = ptrtoint ptr %bad_attr44.i to i32
  call void @__asan_store4_noabort(i32 %210)
  store ptr %209, ptr %bad_attr44.i, align 4
  %policy45.i = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 2
  %211 = ptrtoint ptr %policy45.i to i32
  call void @__asan_store4_noabort(i32 %211)
  store ptr null, ptr %policy45.i, align 4
  br label %cleanup315

if.end49.i:                                       ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #14
  %212 = ptrtoint ptr %mpls to i32
  call void @__asan_load4_noabort(i32 %212)
  %bf.load51.i = load i32, ptr %mpls, align 4
  %bf.value52.i = shl nuw nsw i32 %conv35.i, 23
  %bf.shl53.i = and i32 %bf.value52.i, 8388608
  %bf.clear54.i = and i32 %bf.load51.i, -8388609
  %bf.set55.i = or i32 %bf.clear54.i, %bf.shl53.i
  store i32 %bf.set55.i, ptr %mpls, align 4
  %213 = ptrtoint ptr %mpls185 to i32
  call void @__asan_load4_noabort(i32 %213)
  %bf.load56.i = load i32, ptr %mpls185, align 4
  %bf.set58.i = or i32 %bf.load56.i, 8388608
  store i32 %bf.set58.i, ptr %mpls185, align 4
  %used_lses.i195.i = getelementptr inbounds %struct.fl_flow_key, ptr %key, i32 0, i32 14, i32 1
  %214 = ptrtoint ptr %used_lses.i195.i to i32
  call void @__asan_load1_noabort(i32 %214)
  %215 = load i8, ptr %used_lses.i195.i, align 4
  %conv1.i196.i = or i8 %215, 1
  store i8 %conv1.i196.i, ptr %used_lses.i195.i, align 4
  %used_lses.i197.i = getelementptr inbounds %struct.fl_flow_key, ptr %mask, i32 0, i32 14, i32 1
  %216 = ptrtoint ptr %used_lses.i197.i to i32
  call void @__asan_load1_noabort(i32 %216)
  %217 = load i8, ptr %used_lses.i197.i, align 4
  %conv1.i198.i = or i8 %217, 1
  store i8 %conv1.i198.i, ptr %used_lses.i197.i, align 4
  br label %if.end59.i

if.end59.i:                                       ; preds = %if.end49.i, %if.end29.i.if.end59.i_crit_edge
  %arrayidx60.i = getelementptr ptr, ptr %tb, i32 69
  %218 = ptrtoint ptr %arrayidx60.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %arrayidx60.i, align 4
  %tobool61.not.i = icmp eq ptr %219, null
  br i1 %tobool61.not.i, label %if.end59.i.if.end93.i_crit_edge, label %if.then62.i

if.end59.i.if.end93.i_crit_edge:                  ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end93.i

if.then62.i:                                      ; preds = %if.end59.i
  %add.ptr.i.i199.i = getelementptr i8, ptr %219, i32 4
  %220 = ptrtoint ptr %add.ptr.i.i199.i to i32
  call void @__asan_load1_noabort(i32 %220)
  %221 = load i8, ptr %add.ptr.i.i199.i, align 1
  %conv65.i = zext i8 %221 to i32
  %and66.i = and i32 %conv65.i, 248
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66.i)
  %tobool67.not.i = icmp eq i32 %and66.i, 0
  br i1 %tobool67.not.i, label %if.end80.i, label %do.body69.i

do.body69.i:                                      ; preds = %if.then62.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @fl_set_key_mpls.__msg.22) #12
  %tobool71.not.i = icmp eq ptr %extack, null
  br i1 %tobool71.not.i, label %do.body69.i.cleanup315_crit_edge, label %if.then72.i

do.body69.i.cleanup315_crit_edge:                 ; preds = %do.body69.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup315

if.then72.i:                                      ; preds = %do.body69.i
  call void @__sanitizer_cov_trace_pc() #14
  %222 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %222)
  store ptr @fl_set_key_mpls.__msg.22, ptr %extack, align 4
  %223 = ptrtoint ptr %arrayidx60.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %arrayidx60.i, align 4
  %bad_attr75.i = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 1
  %225 = ptrtoint ptr %bad_attr75.i to i32
  call void @__asan_store4_noabort(i32 %225)
  store ptr %224, ptr %bad_attr75.i, align 4
  %policy76.i = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 2
  %226 = ptrtoint ptr %policy76.i to i32
  call void @__asan_store4_noabort(i32 %226)
  store ptr null, ptr %policy76.i, align 4
  br label %cleanup315

if.end80.i:                                       ; preds = %if.then62.i
  call void @__sanitizer_cov_trace_pc() #14
  %227 = ptrtoint ptr %mpls to i32
  call void @__asan_load4_noabort(i32 %227)
  %bf.load82.i = load i32, ptr %mpls, align 4
  %bf.value83.i = shl nuw nsw i32 %conv65.i, 20
  %bf.shl84.i = and i32 %bf.value83.i, 7340032
  %bf.clear85.i = and i32 %bf.load82.i, -7340033
  %bf.set86.i = or i32 %bf.clear85.i, %bf.shl84.i
  store i32 %bf.set86.i, ptr %mpls, align 4
  %228 = ptrtoint ptr %mpls185 to i32
  call void @__asan_load4_noabort(i32 %228)
  %bf.load87.i = load i32, ptr %mpls185, align 4
  %bf.set89.i = or i32 %bf.load87.i, 7340032
  store i32 %bf.set89.i, ptr %mpls185, align 4
  %used_lses.i200.i = getelementptr inbounds %struct.fl_flow_key, ptr %key, i32 0, i32 14, i32 1
  %229 = ptrtoint ptr %used_lses.i200.i to i32
  call void @__asan_load1_noabort(i32 %229)
  %230 = load i8, ptr %used_lses.i200.i, align 4
  %conv1.i201.i = or i8 %230, 1
  store i8 %conv1.i201.i, ptr %used_lses.i200.i, align 4
  %used_lses.i202.i = getelementptr inbounds %struct.fl_flow_key, ptr %mask, i32 0, i32 14, i32 1
  %231 = ptrtoint ptr %used_lses.i202.i to i32
  call void @__asan_load1_noabort(i32 %231)
  %232 = load i8, ptr %used_lses.i202.i, align 4
  %conv1.i203.i = or i8 %232, 1
  store i8 %conv1.i203.i, ptr %used_lses.i202.i, align 4
  br label %if.end93.i

if.end93.i:                                       ; preds = %if.end80.i, %if.end59.i.if.end93.i_crit_edge
  %arrayidx94.i = getelementptr ptr, ptr %tb, i32 70
  %233 = ptrtoint ptr %arrayidx94.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %arrayidx94.i, align 4
  %tobool95.not.i = icmp eq ptr %234, null
  br i1 %tobool95.not.i, label %if.end93.i.if.end227_crit_edge, label %if.then96.i

if.end93.i.if.end227_crit_edge:                   ; preds = %if.end93.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end227

if.then96.i:                                      ; preds = %if.end93.i
  %add.ptr.i.i204.i = getelementptr i8, ptr %234, i32 4
  %235 = ptrtoint ptr %add.ptr.i.i204.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %add.ptr.i.i204.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048576, i32 %236)
  %tobool100.not.i = icmp ult i32 %236, 1048576
  br i1 %tobool100.not.i, label %if.end113.i, label %do.body102.i

do.body102.i:                                     ; preds = %if.then96.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @fl_set_key_mpls.__msg.23) #12
  %tobool104.not.i = icmp eq ptr %extack, null
  br i1 %tobool104.not.i, label %do.body102.i.cleanup315_crit_edge, label %if.then105.i

do.body102.i.cleanup315_crit_edge:                ; preds = %do.body102.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup315

if.then105.i:                                     ; preds = %do.body102.i
  call void @__sanitizer_cov_trace_pc() #14
  %237 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %237)
  store ptr @fl_set_key_mpls.__msg.23, ptr %extack, align 4
  %238 = ptrtoint ptr %arrayidx94.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %arrayidx94.i, align 4
  %bad_attr108.i = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 1
  %240 = ptrtoint ptr %bad_attr108.i to i32
  call void @__asan_store4_noabort(i32 %240)
  store ptr %239, ptr %bad_attr108.i, align 4
  %policy109.i = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 2
  %241 = ptrtoint ptr %policy109.i to i32
  call void @__asan_store4_noabort(i32 %241)
  store ptr null, ptr %policy109.i, align 4
  br label %cleanup315

if.end113.i:                                      ; preds = %if.then96.i
  call void @__sanitizer_cov_trace_pc() #14
  %242 = ptrtoint ptr %mpls to i32
  call void @__asan_load4_noabort(i32 %242)
  %bf.load114.i = load i32, ptr %mpls, align 4
  %bf.clear116.i = and i32 %bf.load114.i, -1048576
  %bf.set117.i = or i32 %bf.clear116.i, %236
  store i32 %bf.set117.i, ptr %mpls, align 4
  %243 = ptrtoint ptr %mpls185 to i32
  call void @__asan_load4_noabort(i32 %243)
  %bf.load118.i = load i32, ptr %mpls185, align 4
  %bf.set120.i = or i32 %bf.load118.i, 1048575
  store i32 %bf.set120.i, ptr %mpls185, align 4
  %used_lses.i205.i = getelementptr inbounds %struct.fl_flow_key, ptr %key, i32 0, i32 14, i32 1
  %244 = ptrtoint ptr %used_lses.i205.i to i32
  call void @__asan_load1_noabort(i32 %244)
  %245 = load i8, ptr %used_lses.i205.i, align 4
  %conv1.i206.i = or i8 %245, 1
  store i8 %conv1.i206.i, ptr %used_lses.i205.i, align 4
  %used_lses.i207.i = getelementptr inbounds %struct.fl_flow_key, ptr %mask, i32 0, i32 14, i32 1
  %246 = ptrtoint ptr %used_lses.i207.i to i32
  call void @__asan_load1_noabort(i32 %246)
  %247 = load i8, ptr %used_lses.i207.i, align 4
  %conv1.i208.i = or i8 %247, 1
  store i8 %conv1.i208.i, ptr %used_lses.i207.i, align 4
  br label %if.end227

fl_set_key_mpls.exit:                             ; preds = %lor.lhs.false8.i
  %call.i718 = call fastcc i32 @fl_set_key_mpls_opts(ptr noundef nonnull %181, ptr noundef %mpls, ptr noundef %mpls185, ptr noundef %extack) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i718)
  %tobool187.not = icmp eq i32 %call.i718, 0
  br i1 %tobool187.not, label %fl_set_key_mpls.exit.if.end227_crit_edge, label %fl_set_key_mpls.exit.cleanup315_crit_edge

fl_set_key_mpls.exit.cleanup315_crit_edge:        ; preds = %fl_set_key_mpls.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup315

fl_set_key_mpls.exit.if.end227_crit_edge:         ; preds = %fl_set_key_mpls.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end227

if.then202:                                       ; preds = %if.else151.if.then202_crit_edge, %if.else151.if.then202_crit_edge942
  %arp203 = getelementptr inbounds %struct.fl_flow_key, ptr %mask, i32 0, i32 10
  %arrayidx.i725 = getelementptr ptr, ptr %tb, i32 57
  %248 = ptrtoint ptr %arrayidx.i725 to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %arrayidx.i725, align 4
  %tobool.not.i726 = icmp eq ptr %249, null
  br i1 %tobool.not.i726, label %if.then202.fl_set_key_val.exit735_crit_edge, label %if.end.i728

if.then202.fl_set_key_val.exit735_crit_edge:      ; preds = %if.then202
  call void @__sanitizer_cov_trace_pc() #14
  br label %fl_set_key_val.exit735

if.end.i728:                                      ; preds = %if.then202
  %arp = getelementptr inbounds %struct.fl_flow_key, ptr %key, i32 0, i32 10
  %call.i727 = call i32 @nla_memcpy(ptr noundef %arp, ptr noundef nonnull %249, i32 noundef 4) #12
  %arrayidx2.i729 = getelementptr ptr, ptr %tb, i32 58
  %250 = ptrtoint ptr %arrayidx2.i729 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %arrayidx2.i729, align 4
  %tobool3.not.i730 = icmp eq ptr %251, null
  br i1 %tobool3.not.i730, label %if.then4.i732, label %if.else.i734

if.then4.i732:                                    ; preds = %if.end.i728
  call void @__sanitizer_cov_trace_pc() #14
  %252 = ptrtoint ptr %arp203 to i32
  call void @__asan_storeN_noabort(i32 %252, i32 4)
  store i32 -1, ptr %arp203, align 1
  br label %fl_set_key_val.exit735

if.else.i734:                                     ; preds = %if.end.i728
  call void @__sanitizer_cov_trace_pc() #14
  %call6.i733 = call i32 @nla_memcpy(ptr noundef %arp203, ptr noundef nonnull %251, i32 noundef 4) #12
  br label %fl_set_key_val.exit735

fl_set_key_val.exit735:                           ; preds = %if.else.i734, %if.then4.i732, %if.then202.fl_set_key_val.exit735_crit_edge
  %tip207 = getelementptr inbounds %struct.fl_flow_key, ptr %mask, i32 0, i32 10, i32 1
  %arrayidx.i736 = getelementptr ptr, ptr %tb, i32 59
  %253 = ptrtoint ptr %arrayidx.i736 to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %arrayidx.i736, align 4
  %tobool.not.i737 = icmp eq ptr %254, null
  br i1 %tobool.not.i737, label %fl_set_key_val.exit735.fl_set_key_val.exit746_crit_edge, label %if.end.i739

fl_set_key_val.exit735.fl_set_key_val.exit746_crit_edge: ; preds = %fl_set_key_val.exit735
  call void @__sanitizer_cov_trace_pc() #14
  br label %fl_set_key_val.exit746

if.end.i739:                                      ; preds = %fl_set_key_val.exit735
  %tip = getelementptr inbounds %struct.fl_flow_key, ptr %key, i32 0, i32 10, i32 1
  %call.i738 = call i32 @nla_memcpy(ptr noundef %tip, ptr noundef nonnull %254, i32 noundef 4) #12
  %arrayidx2.i740 = getelementptr ptr, ptr %tb, i32 60
  %255 = ptrtoint ptr %arrayidx2.i740 to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %arrayidx2.i740, align 4
  %tobool3.not.i741 = icmp eq ptr %256, null
  br i1 %tobool3.not.i741, label %if.then4.i743, label %if.else.i745

if.then4.i743:                                    ; preds = %if.end.i739
  call void @__sanitizer_cov_trace_pc() #14
  %257 = ptrtoint ptr %tip207 to i32
  call void @__asan_storeN_noabort(i32 %257, i32 4)
  store i32 -1, ptr %tip207, align 1
  br label %fl_set_key_val.exit746

if.else.i745:                                     ; preds = %if.end.i739
  call void @__sanitizer_cov_trace_pc() #14
  %call6.i744 = call i32 @nla_memcpy(ptr noundef %tip207, ptr noundef nonnull %256, i32 noundef 4) #12
  br label %fl_set_key_val.exit746

fl_set_key_val.exit746:                           ; preds = %if.else.i745, %if.then4.i743, %fl_set_key_val.exit735.fl_set_key_val.exit746_crit_edge
  %op210 = getelementptr inbounds %struct.fl_flow_key, ptr %mask, i32 0, i32 10, i32 2
  %arrayidx.i747 = getelementptr ptr, ptr %tb, i32 61
  %258 = ptrtoint ptr %arrayidx.i747 to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %arrayidx.i747, align 4
  %tobool.not.i748 = icmp eq ptr %259, null
  br i1 %tobool.not.i748, label %fl_set_key_val.exit746.fl_set_key_val.exit757_crit_edge, label %if.end.i750

fl_set_key_val.exit746.fl_set_key_val.exit757_crit_edge: ; preds = %fl_set_key_val.exit746
  call void @__sanitizer_cov_trace_pc() #14
  br label %fl_set_key_val.exit757

if.end.i750:                                      ; preds = %fl_set_key_val.exit746
  %op = getelementptr inbounds %struct.fl_flow_key, ptr %key, i32 0, i32 10, i32 2
  %call.i749 = call i32 @nla_memcpy(ptr noundef %op, ptr noundef nonnull %259, i32 noundef 1) #12
  %arrayidx2.i751 = getelementptr ptr, ptr %tb, i32 62
  %260 = ptrtoint ptr %arrayidx2.i751 to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %arrayidx2.i751, align 4
  %tobool3.not.i752 = icmp eq ptr %261, null
  br i1 %tobool3.not.i752, label %if.then4.i754, label %if.else.i756

if.then4.i754:                                    ; preds = %if.end.i750
  call void @__sanitizer_cov_trace_pc() #14
  %262 = ptrtoint ptr %op210 to i32
  call void @__asan_store1_noabort(i32 %262)
  store i8 -1, ptr %op210, align 1
  br label %fl_set_key_val.exit757

if.else.i756:                                     ; preds = %if.end.i750
  call void @__sanitizer_cov_trace_pc() #14
  %call6.i755 = call i32 @nla_memcpy(ptr noundef %op210, ptr noundef nonnull %261, i32 noundef 1) #12
  br label %fl_set_key_val.exit757

fl_set_key_val.exit757:                           ; preds = %if.else.i756, %if.then4.i754, %fl_set_key_val.exit746.fl_set_key_val.exit757_crit_edge
  %sha214 = getelementptr inbounds %struct.fl_flow_key, ptr %mask, i32 0, i32 10, i32 3
  %arrayidx.i758 = getelementptr ptr, ptr %tb, i32 63
  %263 = ptrtoint ptr %arrayidx.i758 to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %arrayidx.i758, align 4
  %tobool.not.i759 = icmp eq ptr %264, null
  br i1 %tobool.not.i759, label %fl_set_key_val.exit757.fl_set_key_val.exit768_crit_edge, label %if.end.i761

fl_set_key_val.exit757.fl_set_key_val.exit768_crit_edge: ; preds = %fl_set_key_val.exit757
  call void @__sanitizer_cov_trace_pc() #14
  br label %fl_set_key_val.exit768

if.end.i761:                                      ; preds = %fl_set_key_val.exit757
  %sha = getelementptr inbounds %struct.fl_flow_key, ptr %key, i32 0, i32 10, i32 3
  %call.i760 = call i32 @nla_memcpy(ptr noundef %sha, ptr noundef nonnull %264, i32 noundef 6) #12
  %arrayidx2.i762 = getelementptr ptr, ptr %tb, i32 64
  %265 = ptrtoint ptr %arrayidx2.i762 to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %arrayidx2.i762, align 4
  %tobool3.not.i763 = icmp eq ptr %266, null
  br i1 %tobool3.not.i763, label %if.then4.i765, label %if.else.i767

if.then4.i765:                                    ; preds = %if.end.i761
  call void @__sanitizer_cov_trace_pc() #14
  %267 = call ptr @memset(ptr %sha214, i32 255, i32 6)
  br label %fl_set_key_val.exit768

if.else.i767:                                     ; preds = %if.end.i761
  call void @__sanitizer_cov_trace_pc() #14
  %call6.i766 = call i32 @nla_memcpy(ptr noundef %sha214, ptr noundef nonnull %266, i32 noundef 6) #12
  br label %fl_set_key_val.exit768

fl_set_key_val.exit768:                           ; preds = %if.else.i767, %if.then4.i765, %fl_set_key_val.exit757.fl_set_key_val.exit768_crit_edge
  %tha219 = getelementptr inbounds %struct.fl_flow_key, ptr %mask, i32 0, i32 10, i32 4
  %arrayidx.i769 = getelementptr ptr, ptr %tb, i32 65
  %268 = ptrtoint ptr %arrayidx.i769 to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %arrayidx.i769, align 4
  %tobool.not.i770 = icmp eq ptr %269, null
  br i1 %tobool.not.i770, label %fl_set_key_val.exit768.if.end227_crit_edge, label %if.end.i772

fl_set_key_val.exit768.if.end227_crit_edge:       ; preds = %fl_set_key_val.exit768
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end227

if.end.i772:                                      ; preds = %fl_set_key_val.exit768
  %tha = getelementptr inbounds %struct.fl_flow_key, ptr %key, i32 0, i32 10, i32 4
  %call.i771 = call i32 @nla_memcpy(ptr noundef %tha, ptr noundef nonnull %269, i32 noundef 6) #12
  %arrayidx2.i773 = getelementptr ptr, ptr %tb, i32 66
  %270 = ptrtoint ptr %arrayidx2.i773 to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %arrayidx2.i773, align 4
  %tobool3.not.i774 = icmp eq ptr %271, null
  br i1 %tobool3.not.i774, label %if.then4.i776, label %if.else.i778

if.then4.i776:                                    ; preds = %if.end.i772
  call void @__sanitizer_cov_trace_pc() #14
  %272 = call ptr @memset(ptr %tha219, i32 255, i32 6)
  br label %if.end227

if.else.i778:                                     ; preds = %if.end.i772
  call void @__sanitizer_cov_trace_pc() #14
  %call6.i777 = call i32 @nla_memcpy(ptr noundef %tha219, ptr noundef nonnull %271, i32 noundef 6) #12
  br label %if.end227

if.end227:                                        ; preds = %if.else.i778, %if.then4.i776, %fl_set_key_val.exit768.if.end227_crit_edge, %fl_set_key_mpls.exit.if.end227_crit_edge, %if.end113.i, %if.end93.i.if.end227_crit_edge, %if.else.i708, %if.then4.i706, %fl_set_key_val.exit699.if.end227_crit_edge, %land.lhs.true157.if.end227_crit_edge, %if.else151.if.end227_crit_edge, %if.else.i688, %if.then4.i686, %fl_set_key_val.exit679.if.end227_crit_edge, %if.else.i668, %if.then4.i666, %fl_set_key_val.exit659.if.end227_crit_edge, %if.else.i648, %if.then4.i646, %fl_set_key_val.exit639.if.end227_crit_edge, %if.else.i628, %if.then4.i626, %fl_set_key_val.exit619.if.end227_crit_edge
  %273 = ptrtoint ptr %ip_proto90 to i32
  call void @__asan_load1_noabort(i32 %273)
  %274 = load i8, ptr %ip_proto90, align 2
  %275 = zext i8 %274 to i64
  call void @__sanitizer_cov_trace_switch(i64 %275, ptr @__sancov_gen_cov_switch_values.61)
  switch i8 %274, label %if.end227.if.end250_crit_edge [
    i8 6, label %if.end227.if.then245_crit_edge
    i8 17, label %if.end227.if.then245_crit_edge943
    i8 -124, label %if.end227.if.then245_crit_edge944
  ]

if.end227.if.then245_crit_edge944:                ; preds = %if.end227
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then245

if.end227.if.then245_crit_edge943:                ; preds = %if.end227
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then245

if.end227.if.then245_crit_edge:                   ; preds = %if.end227
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then245

if.end227.if.end250_crit_edge:                    ; preds = %if.end227
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end250

if.then245:                                       ; preds = %if.end227.if.then245_crit_edge, %if.end227.if.then245_crit_edge943, %if.end227.if.then245_crit_edge944
  %tp_range.i = getelementptr inbounds %struct.fl_flow_key, ptr %key, i32 0, i32 19
  %dst.i = getelementptr inbounds %struct.anon.165, ptr %tp_range.i, i32 0, i32 1
  %tp_range1.i = getelementptr inbounds %struct.fl_flow_key, ptr %mask, i32 0, i32 19
  %dst3.i = getelementptr inbounds %struct.anon.165, ptr %tp_range1.i, i32 0, i32 1
  %arrayidx.i.i780 = getelementptr ptr, ptr %tb, i32 89
  %276 = ptrtoint ptr %arrayidx.i.i780 to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %arrayidx.i.i780, align 4
  %tobool.not.i.i781 = icmp eq ptr %277, null
  br i1 %tobool.not.i.i781, label %if.then245.fl_set_key_val.exit.i784_crit_edge, label %if.end.i.i783

if.then245.fl_set_key_val.exit.i784_crit_edge:    ; preds = %if.then245
  call void @__sanitizer_cov_trace_pc() #14
  br label %fl_set_key_val.exit.i784

if.end.i.i783:                                    ; preds = %if.then245
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i782 = call i32 @nla_memcpy(ptr noundef %dst.i, ptr noundef nonnull %277, i32 noundef 2) #12
  %278 = ptrtoint ptr %dst3.i to i32
  call void @__asan_storeN_noabort(i32 %278, i32 2)
  store i16 -1, ptr %dst3.i, align 1
  br label %fl_set_key_val.exit.i784

fl_set_key_val.exit.i784:                         ; preds = %if.end.i.i783, %if.then245.fl_set_key_val.exit.i784_crit_edge
  %tp_max.i = getelementptr inbounds %struct.fl_flow_key, ptr %key, i32 0, i32 19, i32 0, i32 1
  %dst5.i = getelementptr inbounds %struct.anon.165, ptr %tp_max.i, i32 0, i32 1
  %tp_max7.i = getelementptr inbounds %struct.fl_flow_key, ptr %mask, i32 0, i32 19, i32 0, i32 1
  %dst8.i = getelementptr inbounds %struct.anon.165, ptr %tp_max7.i, i32 0, i32 1
  %arrayidx.i101.i = getelementptr ptr, ptr %tb, i32 90
  %279 = ptrtoint ptr %arrayidx.i101.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %arrayidx.i101.i, align 4
  %tobool.not.i102.i = icmp eq ptr %280, null
  br i1 %tobool.not.i102.i, label %fl_set_key_val.exit.i784.fl_set_key_val.exit105.i_crit_edge, label %if.end.i104.i

fl_set_key_val.exit.i784.fl_set_key_val.exit105.i_crit_edge: ; preds = %fl_set_key_val.exit.i784
  call void @__sanitizer_cov_trace_pc() #14
  br label %fl_set_key_val.exit105.i

if.end.i104.i:                                    ; preds = %fl_set_key_val.exit.i784
  call void @__sanitizer_cov_trace_pc() #14
  %call.i103.i = call i32 @nla_memcpy(ptr noundef %dst5.i, ptr noundef nonnull %280, i32 noundef 2) #12
  %281 = ptrtoint ptr %dst8.i to i32
  call void @__asan_storeN_noabort(i32 %281, i32 2)
  store i16 -1, ptr %dst8.i, align 1
  br label %fl_set_key_val.exit105.i

fl_set_key_val.exit105.i:                         ; preds = %if.end.i104.i, %fl_set_key_val.exit.i784.fl_set_key_val.exit105.i_crit_edge
  %arrayidx.i106.i = getelementptr ptr, ptr %tb, i32 87
  %282 = ptrtoint ptr %arrayidx.i106.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %arrayidx.i106.i, align 4
  %tobool.not.i107.i = icmp eq ptr %283, null
  br i1 %tobool.not.i107.i, label %fl_set_key_val.exit105.i.fl_set_key_val.exit110.i_crit_edge, label %if.end.i109.i

fl_set_key_val.exit105.i.fl_set_key_val.exit110.i_crit_edge: ; preds = %fl_set_key_val.exit105.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fl_set_key_val.exit110.i

if.end.i109.i:                                    ; preds = %fl_set_key_val.exit105.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i108.i = call i32 @nla_memcpy(ptr noundef %tp_range.i, ptr noundef nonnull %283, i32 noundef 2) #12
  %284 = ptrtoint ptr %tp_range1.i to i32
  call void @__asan_storeN_noabort(i32 %284, i32 2)
  store i16 -1, ptr %tp_range1.i, align 1
  br label %fl_set_key_val.exit110.i

fl_set_key_val.exit110.i:                         ; preds = %if.end.i109.i, %fl_set_key_val.exit105.i.fl_set_key_val.exit110.i_crit_edge
  %arrayidx.i111.i = getelementptr ptr, ptr %tb, i32 88
  %285 = ptrtoint ptr %arrayidx.i111.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %arrayidx.i111.i, align 4
  %tobool.not.i112.i = icmp eq ptr %286, null
  br i1 %tobool.not.i112.i, label %fl_set_key_val.exit110.i.fl_set_key_val.exit115.i_crit_edge, label %if.end.i114.i

fl_set_key_val.exit110.i.fl_set_key_val.exit115.i_crit_edge: ; preds = %fl_set_key_val.exit110.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fl_set_key_val.exit115.i

if.end.i114.i:                                    ; preds = %fl_set_key_val.exit110.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i113.i = call i32 @nla_memcpy(ptr noundef %tp_max.i, ptr noundef nonnull %286, i32 noundef 2) #12
  %287 = ptrtoint ptr %tp_max7.i to i32
  call void @__asan_storeN_noabort(i32 %287, i32 2)
  store i16 -1, ptr %tp_max7.i, align 1
  br label %fl_set_key_val.exit115.i

fl_set_key_val.exit115.i:                         ; preds = %if.end.i114.i, %fl_set_key_val.exit110.i.fl_set_key_val.exit115.i_crit_edge
  %288 = ptrtoint ptr %dst3.i to i32
  call void @__asan_load2_noabort(i32 %288)
  %289 = load i16, ptr %dst3.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %289)
  %tobool.not.i785 = icmp eq i16 %289, 0
  br i1 %tobool.not.i785, label %fl_set_key_val.exit115.i.if.end40.i_crit_edge, label %land.lhs.true.i

fl_set_key_val.exit115.i.if.end40.i_crit_edge:    ; preds = %fl_set_key_val.exit115.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end40.i

land.lhs.true.i:                                  ; preds = %fl_set_key_val.exit115.i
  %290 = ptrtoint ptr %dst8.i to i32
  call void @__asan_load2_noabort(i32 %290)
  %291 = load i16, ptr %dst8.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %291)
  %tobool27.not.i = icmp eq i16 %291, 0
  br i1 %tobool27.not.i, label %land.lhs.true.i.if.end40.i_crit_edge, label %land.lhs.true28.i

land.lhs.true.i.if.end40.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end40.i

land.lhs.true28.i:                                ; preds = %land.lhs.true.i
  %292 = ptrtoint ptr %dst5.i to i32
  call void @__asan_load2_noabort(i32 %292)
  %293 = load i16, ptr %dst5.i, align 2
  %294 = ptrtoint ptr %dst.i to i32
  call void @__asan_load2_noabort(i32 %294)
  %295 = load i16, ptr %dst.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %293, i16 %295)
  %cmp.not.i = icmp ugt i16 %293, %295
  br i1 %cmp.not.i, label %land.lhs.true28.i.if.end40.i_crit_edge, label %do.body.i786

land.lhs.true28.i.if.end40.i_crit_edge:           ; preds = %land.lhs.true28.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end40.i

do.body.i786:                                     ; preds = %land.lhs.true28.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @fl_set_key_port_range.__msg) #12
  %tobool38.not.i = icmp eq ptr %extack, null
  br i1 %tobool38.not.i, label %do.body.i786.cleanup315_crit_edge, label %do.body.i786.return.sink.split.i_crit_edge

do.body.i786.return.sink.split.i_crit_edge:       ; preds = %do.body.i786
  call void @__sanitizer_cov_trace_pc() #14
  br label %return.sink.split.i

do.body.i786.cleanup315_crit_edge:                ; preds = %do.body.i786
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup315

if.end40.i:                                       ; preds = %land.lhs.true28.i.if.end40.i_crit_edge, %land.lhs.true.i.if.end40.i_crit_edge, %fl_set_key_val.exit115.i.if.end40.i_crit_edge
  %296 = ptrtoint ptr %tp_range1.i to i32
  call void @__asan_load2_noabort(i32 %296)
  %297 = load i16, ptr %tp_range1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %297)
  %tobool45.not.i = icmp eq i16 %297, 0
  br i1 %tobool45.not.i, label %if.end40.i.if.end250_crit_edge, label %land.lhs.true46.i

if.end40.i.if.end250_crit_edge:                   ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end250

land.lhs.true46.i:                                ; preds = %if.end40.i
  %298 = ptrtoint ptr %tp_max7.i to i32
  call void @__asan_load2_noabort(i32 %298)
  %299 = load i16, ptr %tp_max7.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %299)
  %tobool51.not.i = icmp eq i16 %299, 0
  br i1 %tobool51.not.i, label %land.lhs.true46.i.if.end250_crit_edge, label %land.lhs.true52.i

land.lhs.true46.i.if.end250_crit_edge:            ; preds = %land.lhs.true46.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end250

land.lhs.true52.i:                                ; preds = %land.lhs.true46.i
  %300 = ptrtoint ptr %tp_max.i to i32
  call void @__asan_load2_noabort(i32 %300)
  %301 = load i16, ptr %tp_max.i, align 4
  %302 = ptrtoint ptr %tp_range.i to i32
  call void @__asan_load2_noabort(i32 %302)
  %303 = load i16, ptr %tp_range.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %301, i16 %303)
  %cmp61.not.i = icmp ugt i16 %301, %303
  br i1 %cmp61.not.i, label %land.lhs.true52.i.if.end250_crit_edge, label %do.body64.i

land.lhs.true52.i.if.end250_crit_edge:            ; preds = %land.lhs.true52.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end250

do.body64.i:                                      ; preds = %land.lhs.true52.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @fl_set_key_port_range.__msg.30) #12
  %tobool66.not.i = icmp eq ptr %extack, null
  br i1 %tobool66.not.i, label %do.body64.i.cleanup315_crit_edge, label %do.body64.i.return.sink.split.i_crit_edge

do.body64.i.return.sink.split.i_crit_edge:        ; preds = %do.body64.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %return.sink.split.i

do.body64.i.cleanup315_crit_edge:                 ; preds = %do.body64.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup315

return.sink.split.i:                              ; preds = %do.body64.i.return.sink.split.i_crit_edge, %do.body.i786.return.sink.split.i_crit_edge
  %fl_set_key_port_range.__msg.30.sink.i = phi ptr [ @fl_set_key_port_range.__msg, %do.body.i786.return.sink.split.i_crit_edge ], [ @fl_set_key_port_range.__msg.30, %do.body64.i.return.sink.split.i_crit_edge ]
  %arrayidx.i106.sink.i = phi ptr [ %arrayidx.i.i780, %do.body.i786.return.sink.split.i_crit_edge ], [ %arrayidx.i106.i, %do.body64.i.return.sink.split.i_crit_edge ]
  %304 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %304)
  store ptr %fl_set_key_port_range.__msg.30.sink.i, ptr %extack, align 4
  %305 = ptrtoint ptr %arrayidx.i106.sink.i to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load ptr, ptr %arrayidx.i106.sink.i, align 4
  %bad_attr70.i = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 1
  %307 = ptrtoint ptr %bad_attr70.i to i32
  call void @__asan_store4_noabort(i32 %307)
  store ptr %306, ptr %bad_attr70.i, align 4
  %policy71.i = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 2
  %308 = ptrtoint ptr %policy71.i to i32
  call void @__asan_store4_noabort(i32 %308)
  store ptr null, ptr %policy71.i, align 4
  br label %cleanup315

if.end250:                                        ; preds = %land.lhs.true52.i.if.end250_crit_edge, %land.lhs.true46.i.if.end250_crit_edge, %if.end40.i.if.end250_crit_edge, %if.end227.if.end250_crit_edge
  %arrayidx251 = getelementptr ptr, ptr %tb, i32 27
  %309 = ptrtoint ptr %arrayidx251 to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load ptr, ptr %arrayidx251, align 4
  %tobool252.not = icmp eq ptr %310, null
  br i1 %tobool252.not, label %lor.lhs.false253, label %if.end250.if.then256_crit_edge

if.end250.if.then256_crit_edge:                   ; preds = %if.end250
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then256

lor.lhs.false253:                                 ; preds = %if.end250
  %arrayidx254 = getelementptr ptr, ptr %tb, i32 29
  %311 = ptrtoint ptr %arrayidx254 to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %arrayidx254, align 4
  %tobool255.not = icmp eq ptr %312, null
  br i1 %tobool255.not, label %lor.lhs.false253.if.end264_crit_edge, label %lor.lhs.false253.if.then256_crit_edge

lor.lhs.false253.if.then256_crit_edge:            ; preds = %lor.lhs.false253
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then256

lor.lhs.false253.if.end264_crit_edge:             ; preds = %lor.lhs.false253
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end264

if.then256:                                       ; preds = %lor.lhs.false253.if.then256_crit_edge, %if.end250.if.then256_crit_edge
  %addr_type257 = getelementptr inbounds %struct.fl_flow_key, ptr %key, i32 0, i32 2, i32 1
  %313 = ptrtoint ptr %addr_type257 to i32
  call void @__asan_store2_noabort(i32 %313)
  store i16 2, ptr %addr_type257, align 2
  %addr_type259 = getelementptr inbounds %struct.fl_flow_key, ptr %mask, i32 0, i32 2, i32 1
  %314 = ptrtoint ptr %addr_type259 to i32
  call void @__asan_store2_noabort(i32 %314)
  store i16 -1, ptr %addr_type259, align 2
  %315 = getelementptr inbounds %struct.fl_flow_key, ptr %mask, i32 0, i32 12
  %316 = ptrtoint ptr %arrayidx251 to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load ptr, ptr %arrayidx251, align 4
  %tobool.not.i789 = icmp eq ptr %317, null
  br i1 %tobool.not.i789, label %if.then256.fl_set_key_val.exit798_crit_edge, label %if.end.i791

if.then256.fl_set_key_val.exit798_crit_edge:      ; preds = %if.then256
  call void @__sanitizer_cov_trace_pc() #14
  br label %fl_set_key_val.exit798

if.end.i791:                                      ; preds = %if.then256
  %318 = getelementptr inbounds %struct.fl_flow_key, ptr %key, i32 0, i32 12
  %call.i790 = call i32 @nla_memcpy(ptr noundef %318, ptr noundef nonnull %317, i32 noundef 4) #12
  %arrayidx2.i792 = getelementptr ptr, ptr %tb, i32 28
  %319 = ptrtoint ptr %arrayidx2.i792 to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load ptr, ptr %arrayidx2.i792, align 4
  %tobool3.not.i793 = icmp eq ptr %320, null
  br i1 %tobool3.not.i793, label %if.then4.i795, label %if.else.i797

if.then4.i795:                                    ; preds = %if.end.i791
  call void @__sanitizer_cov_trace_pc() #14
  %321 = ptrtoint ptr %315 to i32
  call void @__asan_storeN_noabort(i32 %321, i32 4)
  store i32 -1, ptr %315, align 1
  br label %fl_set_key_val.exit798

if.else.i797:                                     ; preds = %if.end.i791
  call void @__sanitizer_cov_trace_pc() #14
  %call6.i796 = call i32 @nla_memcpy(ptr noundef %315, ptr noundef nonnull %320, i32 noundef 4) #12
  br label %fl_set_key_val.exit798

fl_set_key_val.exit798:                           ; preds = %if.else.i797, %if.then4.i795, %if.then256.fl_set_key_val.exit798_crit_edge
  %dst263 = getelementptr inbounds %struct.fl_flow_key, ptr %mask, i32 0, i32 12, i32 0, i32 0, i32 0, i32 0, i32 1
  %arrayidx.i799 = getelementptr ptr, ptr %tb, i32 29
  %322 = ptrtoint ptr %arrayidx.i799 to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load ptr, ptr %arrayidx.i799, align 4
  %tobool.not.i800 = icmp eq ptr %323, null
  br i1 %tobool.not.i800, label %fl_set_key_val.exit798.if.end264_crit_edge, label %if.end.i802

fl_set_key_val.exit798.if.end264_crit_edge:       ; preds = %fl_set_key_val.exit798
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end264

if.end.i802:                                      ; preds = %fl_set_key_val.exit798
  %dst262 = getelementptr inbounds %struct.fl_flow_key, ptr %key, i32 0, i32 12, i32 0, i32 0, i32 0, i32 0, i32 1
  %call.i801 = call i32 @nla_memcpy(ptr noundef %dst262, ptr noundef nonnull %323, i32 noundef 4) #12
  %arrayidx2.i803 = getelementptr ptr, ptr %tb, i32 30
  %324 = ptrtoint ptr %arrayidx2.i803 to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load ptr, ptr %arrayidx2.i803, align 4
  %tobool3.not.i804 = icmp eq ptr %325, null
  br i1 %tobool3.not.i804, label %if.then4.i806, label %if.else.i808

if.then4.i806:                                    ; preds = %if.end.i802
  call void @__sanitizer_cov_trace_pc() #14
  %326 = ptrtoint ptr %dst263 to i32
  call void @__asan_storeN_noabort(i32 %326, i32 4)
  store i32 -1, ptr %dst263, align 1
  br label %if.end264

if.else.i808:                                     ; preds = %if.end.i802
  call void @__sanitizer_cov_trace_pc() #14
  %call6.i807 = call i32 @nla_memcpy(ptr noundef %dst263, ptr noundef nonnull %325, i32 noundef 4) #12
  br label %if.end264

if.end264:                                        ; preds = %if.else.i808, %if.then4.i806, %fl_set_key_val.exit798.if.end264_crit_edge, %lor.lhs.false253.if.end264_crit_edge
  %arrayidx265 = getelementptr ptr, ptr %tb, i32 31
  %327 = ptrtoint ptr %arrayidx265 to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load ptr, ptr %arrayidx265, align 4
  %tobool266.not = icmp eq ptr %328, null
  br i1 %tobool266.not, label %lor.lhs.false267, label %if.end264.if.then270_crit_edge

if.end264.if.then270_crit_edge:                   ; preds = %if.end264
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then270

lor.lhs.false267:                                 ; preds = %if.end264
  %arrayidx268 = getelementptr ptr, ptr %tb, i32 33
  %329 = ptrtoint ptr %arrayidx268 to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load ptr, ptr %arrayidx268, align 4
  %tobool269.not = icmp eq ptr %330, null
  br i1 %tobool269.not, label %lor.lhs.false267.if.end279_crit_edge, label %lor.lhs.false267.if.then270_crit_edge

lor.lhs.false267.if.then270_crit_edge:            ; preds = %lor.lhs.false267
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then270

lor.lhs.false267.if.end279_crit_edge:             ; preds = %lor.lhs.false267
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end279

if.then270:                                       ; preds = %lor.lhs.false267.if.then270_crit_edge, %if.end264.if.then270_crit_edge
  %addr_type272 = getelementptr inbounds %struct.fl_flow_key, ptr %key, i32 0, i32 2, i32 1
  %331 = ptrtoint ptr %addr_type272 to i32
  call void @__asan_store2_noabort(i32 %331)
  store i16 3, ptr %addr_type272, align 2
  %addr_type274 = getelementptr inbounds %struct.fl_flow_key, ptr %mask, i32 0, i32 2, i32 1
  %332 = ptrtoint ptr %addr_type274 to i32
  call void @__asan_store2_noabort(i32 %332)
  store i16 -1, ptr %addr_type274, align 2
  %333 = getelementptr inbounds %struct.fl_flow_key, ptr %mask, i32 0, i32 12
  %334 = ptrtoint ptr %arrayidx265 to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load ptr, ptr %arrayidx265, align 4
  %tobool.not.i811 = icmp eq ptr %335, null
  br i1 %tobool.not.i811, label %if.then270.fl_set_key_val.exit820_crit_edge, label %if.end.i813

if.then270.fl_set_key_val.exit820_crit_edge:      ; preds = %if.then270
  call void @__sanitizer_cov_trace_pc() #14
  br label %fl_set_key_val.exit820

if.end.i813:                                      ; preds = %if.then270
  %336 = getelementptr inbounds %struct.fl_flow_key, ptr %key, i32 0, i32 12
  %call.i812 = call i32 @nla_memcpy(ptr noundef %336, ptr noundef nonnull %335, i32 noundef 16) #12
  %arrayidx2.i814 = getelementptr ptr, ptr %tb, i32 32
  %337 = ptrtoint ptr %arrayidx2.i814 to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load ptr, ptr %arrayidx2.i814, align 4
  %tobool3.not.i815 = icmp eq ptr %338, null
  br i1 %tobool3.not.i815, label %if.then4.i817, label %if.else.i819

if.then4.i817:                                    ; preds = %if.end.i813
  call void @__sanitizer_cov_trace_pc() #14
  %339 = call ptr @memset(ptr %333, i32 255, i32 16)
  br label %fl_set_key_val.exit820

if.else.i819:                                     ; preds = %if.end.i813
  call void @__sanitizer_cov_trace_pc() #14
  %call6.i818 = call i32 @nla_memcpy(ptr noundef %333, ptr noundef nonnull %338, i32 noundef 16) #12
  br label %fl_set_key_val.exit820

fl_set_key_val.exit820:                           ; preds = %if.else.i819, %if.then4.i817, %if.then270.fl_set_key_val.exit820_crit_edge
  %dst278 = getelementptr inbounds %struct.fl_flow_key, ptr %mask, i32 0, i32 12, i32 0, i32 1
  %arrayidx.i821 = getelementptr ptr, ptr %tb, i32 33
  %340 = ptrtoint ptr %arrayidx.i821 to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load ptr, ptr %arrayidx.i821, align 4
  %tobool.not.i822 = icmp eq ptr %341, null
  br i1 %tobool.not.i822, label %fl_set_key_val.exit820.if.end279_crit_edge, label %if.end.i824

fl_set_key_val.exit820.if.end279_crit_edge:       ; preds = %fl_set_key_val.exit820
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end279

if.end.i824:                                      ; preds = %fl_set_key_val.exit820
  %dst277 = getelementptr inbounds %struct.fl_flow_key, ptr %key, i32 0, i32 12, i32 0, i32 1
  %call.i823 = call i32 @nla_memcpy(ptr noundef %dst277, ptr noundef nonnull %341, i32 noundef 16) #12
  %arrayidx2.i825 = getelementptr ptr, ptr %tb, i32 34
  %342 = ptrtoint ptr %arrayidx2.i825 to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load ptr, ptr %arrayidx2.i825, align 4
  %tobool3.not.i826 = icmp eq ptr %343, null
  br i1 %tobool3.not.i826, label %if.then4.i828, label %if.else.i830

if.then4.i828:                                    ; preds = %if.end.i824
  call void @__sanitizer_cov_trace_pc() #14
  %344 = call ptr @memset(ptr %dst278, i32 255, i32 16)
  br label %if.end279

if.else.i830:                                     ; preds = %if.end.i824
  call void @__sanitizer_cov_trace_pc() #14
  %call6.i829 = call i32 @nla_memcpy(ptr noundef %dst278, ptr noundef nonnull %343, i32 noundef 16) #12
  br label %if.end279

if.end279:                                        ; preds = %if.else.i830, %if.then4.i828, %fl_set_key_val.exit820.if.end279_crit_edge, %lor.lhs.false267.if.end279_crit_edge
  %arrayidx.i832 = getelementptr ptr, ptr %tb, i32 26
  %345 = ptrtoint ptr %arrayidx.i832 to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load ptr, ptr %arrayidx.i832, align 4
  %tobool.not.i833 = icmp eq ptr %346, null
  br i1 %tobool.not.i833, label %if.end279.fl_set_key_val.exit837_crit_edge, label %if.end.i835

if.end279.fl_set_key_val.exit837_crit_edge:       ; preds = %if.end279
  call void @__sanitizer_cov_trace_pc() #14
  br label %fl_set_key_val.exit837

if.end.i835:                                      ; preds = %if.end279
  call void @__sanitizer_cov_trace_pc() #14
  %enc_key_id280 = getelementptr inbounds %struct.fl_flow_key, ptr %mask, i32 0, i32 11
  %enc_key_id = getelementptr inbounds %struct.fl_flow_key, ptr %key, i32 0, i32 11
  %call.i834 = call i32 @nla_memcpy(ptr noundef %enc_key_id, ptr noundef nonnull %346, i32 noundef 4) #12
  %347 = ptrtoint ptr %enc_key_id280 to i32
  call void @__asan_storeN_noabort(i32 %347, i32 4)
  store i32 -1, ptr %enc_key_id280, align 1
  br label %fl_set_key_val.exit837

fl_set_key_val.exit837:                           ; preds = %if.end.i835, %if.end279.fl_set_key_val.exit837_crit_edge
  %enc_tp = getelementptr inbounds %struct.fl_flow_key, ptr %key, i32 0, i32 13
  %enc_tp283 = getelementptr inbounds %struct.fl_flow_key, ptr %mask, i32 0, i32 13
  %arrayidx.i838 = getelementptr ptr, ptr %tb, i32 43
  %348 = ptrtoint ptr %arrayidx.i838 to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load ptr, ptr %arrayidx.i838, align 4
  %tobool.not.i839 = icmp eq ptr %349, null
  br i1 %tobool.not.i839, label %fl_set_key_val.exit837.fl_set_key_val.exit848_crit_edge, label %if.end.i841

fl_set_key_val.exit837.fl_set_key_val.exit848_crit_edge: ; preds = %fl_set_key_val.exit837
  call void @__sanitizer_cov_trace_pc() #14
  br label %fl_set_key_val.exit848

if.end.i841:                                      ; preds = %fl_set_key_val.exit837
  %call.i840 = call i32 @nla_memcpy(ptr noundef %enc_tp, ptr noundef nonnull %349, i32 noundef 2) #12
  %arrayidx2.i842 = getelementptr ptr, ptr %tb, i32 44
  %350 = ptrtoint ptr %arrayidx2.i842 to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load ptr, ptr %arrayidx2.i842, align 4
  %tobool3.not.i843 = icmp eq ptr %351, null
  br i1 %tobool3.not.i843, label %if.then4.i845, label %if.else.i847

if.then4.i845:                                    ; preds = %if.end.i841
  call void @__sanitizer_cov_trace_pc() #14
  %352 = ptrtoint ptr %enc_tp283 to i32
  call void @__asan_storeN_noabort(i32 %352, i32 2)
  store i16 -1, ptr %enc_tp283, align 1
  br label %fl_set_key_val.exit848

if.else.i847:                                     ; preds = %if.end.i841
  call void @__sanitizer_cov_trace_pc() #14
  %call6.i846 = call i32 @nla_memcpy(ptr noundef %enc_tp283, ptr noundef nonnull %351, i32 noundef 2) #12
  br label %fl_set_key_val.exit848

fl_set_key_val.exit848:                           ; preds = %if.else.i847, %if.then4.i845, %fl_set_key_val.exit837.fl_set_key_val.exit848_crit_edge
  %dst288 = getelementptr inbounds %struct.anon.165, ptr %enc_tp283, i32 0, i32 1
  %arrayidx.i849 = getelementptr ptr, ptr %tb, i32 45
  %353 = ptrtoint ptr %arrayidx.i849 to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load ptr, ptr %arrayidx.i849, align 4
  %tobool.not.i850 = icmp eq ptr %354, null
  br i1 %tobool.not.i850, label %fl_set_key_val.exit848.fl_set_key_val.exit859_crit_edge, label %if.end.i852

fl_set_key_val.exit848.fl_set_key_val.exit859_crit_edge: ; preds = %fl_set_key_val.exit848
  call void @__sanitizer_cov_trace_pc() #14
  br label %fl_set_key_val.exit859

if.end.i852:                                      ; preds = %fl_set_key_val.exit848
  %dst286 = getelementptr inbounds %struct.anon.165, ptr %enc_tp, i32 0, i32 1
  %call.i851 = call i32 @nla_memcpy(ptr noundef %dst286, ptr noundef nonnull %354, i32 noundef 2) #12
  %arrayidx2.i853 = getelementptr ptr, ptr %tb, i32 46
  %355 = ptrtoint ptr %arrayidx2.i853 to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load ptr, ptr %arrayidx2.i853, align 4
  %tobool3.not.i854 = icmp eq ptr %356, null
  br i1 %tobool3.not.i854, label %if.then4.i856, label %if.else.i858

if.then4.i856:                                    ; preds = %if.end.i852
  call void @__sanitizer_cov_trace_pc() #14
  %357 = ptrtoint ptr %dst288 to i32
  call void @__asan_storeN_noabort(i32 %357, i32 2)
  store i16 -1, ptr %dst288, align 1
  br label %fl_set_key_val.exit859

if.else.i858:                                     ; preds = %if.end.i852
  call void @__sanitizer_cov_trace_pc() #14
  %call6.i857 = call i32 @nla_memcpy(ptr noundef %dst288, ptr noundef nonnull %356, i32 noundef 2) #12
  br label %fl_set_key_val.exit859

fl_set_key_val.exit859:                           ; preds = %if.else.i858, %if.then4.i856, %fl_set_key_val.exit848.fl_set_key_val.exit859_crit_edge
  %enc_ip289 = getelementptr inbounds %struct.fl_flow_key, ptr %mask, i32 0, i32 17
  %arrayidx.i.i860 = getelementptr ptr, ptr %tb, i32 80
  %358 = ptrtoint ptr %arrayidx.i.i860 to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load ptr, ptr %arrayidx.i.i860, align 4
  %tobool.not.i.i861 = icmp eq ptr %359, null
  br i1 %tobool.not.i.i861, label %fl_set_key_val.exit859.fl_set_key_val.exit.i872_crit_edge, label %if.end.i.i865

fl_set_key_val.exit859.fl_set_key_val.exit.i872_crit_edge: ; preds = %fl_set_key_val.exit859
  call void @__sanitizer_cov_trace_pc() #14
  br label %fl_set_key_val.exit.i872

if.end.i.i865:                                    ; preds = %fl_set_key_val.exit859
  %enc_ip = getelementptr inbounds %struct.fl_flow_key, ptr %key, i32 0, i32 17
  %call.i.i862 = call i32 @nla_memcpy(ptr noundef %enc_ip, ptr noundef nonnull %359, i32 noundef 1) #12
  %arrayidx2.i.i863 = getelementptr ptr, ptr %tb, i32 81
  %360 = ptrtoint ptr %arrayidx2.i.i863 to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load ptr, ptr %arrayidx2.i.i863, align 4
  %tobool3.not.i.i864 = icmp eq ptr %361, null
  br i1 %tobool3.not.i.i864, label %if.then4.i.i866, label %if.else.i.i868

if.then4.i.i866:                                  ; preds = %if.end.i.i865
  call void @__sanitizer_cov_trace_pc() #14
  %362 = ptrtoint ptr %enc_ip289 to i32
  call void @__asan_store1_noabort(i32 %362)
  store i8 -1, ptr %enc_ip289, align 1
  br label %fl_set_key_val.exit.i872

if.else.i.i868:                                   ; preds = %if.end.i.i865
  call void @__sanitizer_cov_trace_pc() #14
  %call6.i.i867 = call i32 @nla_memcpy(ptr noundef %enc_ip289, ptr noundef nonnull %361, i32 noundef 1) #12
  br label %fl_set_key_val.exit.i872

fl_set_key_val.exit.i872:                         ; preds = %if.else.i.i868, %if.then4.i.i866, %fl_set_key_val.exit859.fl_set_key_val.exit.i872_crit_edge
  %ttl8.i869 = getelementptr inbounds %struct.fl_flow_key, ptr %mask, i32 0, i32 17, i32 1
  %arrayidx.i15.i870 = getelementptr ptr, ptr %tb, i32 82
  %363 = ptrtoint ptr %arrayidx.i15.i870 to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load ptr, ptr %arrayidx.i15.i870, align 4
  %tobool.not.i16.i871 = icmp eq ptr %364, null
  br i1 %tobool.not.i16.i871, label %fl_set_key_val.exit.i872.fl_set_key_ip.exit881_crit_edge, label %if.end.i18.i877

fl_set_key_val.exit.i872.fl_set_key_ip.exit881_crit_edge: ; preds = %fl_set_key_val.exit.i872
  call void @__sanitizer_cov_trace_pc() #14
  br label %fl_set_key_ip.exit881

if.end.i18.i877:                                  ; preds = %fl_set_key_val.exit.i872
  %ttl.i873 = getelementptr inbounds %struct.fl_flow_key, ptr %key, i32 0, i32 17, i32 1
  %call.i17.i874 = call i32 @nla_memcpy(ptr noundef %ttl.i873, ptr noundef nonnull %364, i32 noundef 1) #12
  %arrayidx2.i19.i875 = getelementptr ptr, ptr %tb, i32 83
  %365 = ptrtoint ptr %arrayidx2.i19.i875 to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load ptr, ptr %arrayidx2.i19.i875, align 4
  %tobool3.not.i20.i876 = icmp eq ptr %366, null
  br i1 %tobool3.not.i20.i876, label %if.then4.i21.i878, label %if.else.i23.i880

if.then4.i21.i878:                                ; preds = %if.end.i18.i877
  call void @__sanitizer_cov_trace_pc() #14
  %367 = ptrtoint ptr %ttl8.i869 to i32
  call void @__asan_store1_noabort(i32 %367)
  store i8 -1, ptr %ttl8.i869, align 1
  br label %fl_set_key_ip.exit881

if.else.i23.i880:                                 ; preds = %if.end.i18.i877
  call void @__sanitizer_cov_trace_pc() #14
  %call6.i22.i879 = call i32 @nla_memcpy(ptr noundef %ttl8.i869, ptr noundef nonnull %366, i32 noundef 1) #12
  br label %fl_set_key_ip.exit881

fl_set_key_ip.exit881:                            ; preds = %if.else.i23.i880, %if.then4.i21.i878, %fl_set_key_val.exit.i872.fl_set_key_ip.exit881_crit_edge
  %hash291 = getelementptr inbounds %struct.fl_flow_key, ptr %mask, i32 0, i32 21
  %arrayidx.i882 = getelementptr ptr, ptr %tb, i32 100
  %368 = ptrtoint ptr %arrayidx.i882 to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load ptr, ptr %arrayidx.i882, align 4
  %tobool.not.i883 = icmp eq ptr %369, null
  br i1 %tobool.not.i883, label %fl_set_key_ip.exit881.fl_set_key_val.exit892_crit_edge, label %if.end.i885

fl_set_key_ip.exit881.fl_set_key_val.exit892_crit_edge: ; preds = %fl_set_key_ip.exit881
  call void @__sanitizer_cov_trace_pc() #14
  br label %fl_set_key_val.exit892

if.end.i885:                                      ; preds = %fl_set_key_ip.exit881
  %hash = getelementptr inbounds %struct.fl_flow_key, ptr %key, i32 0, i32 21
  %call.i884 = call i32 @nla_memcpy(ptr noundef %hash, ptr noundef nonnull %369, i32 noundef 4) #12
  %arrayidx2.i886 = getelementptr ptr, ptr %tb, i32 101
  %370 = ptrtoint ptr %arrayidx2.i886 to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load ptr, ptr %arrayidx2.i886, align 4
  %tobool3.not.i887 = icmp eq ptr %371, null
  br i1 %tobool3.not.i887, label %if.then4.i889, label %if.else.i891

if.then4.i889:                                    ; preds = %if.end.i885
  call void @__sanitizer_cov_trace_pc() #14
  %372 = ptrtoint ptr %hash291 to i32
  call void @__asan_storeN_noabort(i32 %372, i32 4)
  store i32 -1, ptr %hash291, align 1
  br label %fl_set_key_val.exit892

if.else.i891:                                     ; preds = %if.end.i885
  call void @__sanitizer_cov_trace_pc() #14
  %call6.i890 = call i32 @nla_memcpy(ptr noundef %hash291, ptr noundef nonnull %371, i32 noundef 4) #12
  br label %fl_set_key_val.exit892

fl_set_key_val.exit892:                           ; preds = %if.else.i891, %if.then4.i889, %fl_set_key_ip.exit881.fl_set_key_val.exit892_crit_edge
  %arrayidx293 = getelementptr ptr, ptr %tb, i32 84
  %373 = ptrtoint ptr %arrayidx293 to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load ptr, ptr %arrayidx293, align 4
  %tobool294.not = icmp eq ptr %374, null
  br i1 %tobool294.not, label %fl_set_key_val.exit892.if.end300_crit_edge, label %if.then295

fl_set_key_val.exit892.if.end300_crit_edge:       ; preds = %fl_set_key_val.exit892
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end300

if.then295:                                       ; preds = %fl_set_key_val.exit892
  %add.ptr.i.i.i.i = getelementptr i8, ptr %374, i32 4
  %375 = ptrtoint ptr %374 to i32
  call void @__asan_load2_noabort(i32 %375)
  %376 = load i16, ptr %374, align 2
  %conv.i.i.i.i = zext i16 %376 to i32
  %sub.i.i.i.i = add nsw i32 %conv.i.i.i.i, -4
  %call2.i.i.i = call i32 @__nla_validate(ptr noundef %add.ptr.i.i.i.i, i32 noundef %sub.i.i.i.i, i32 noundef 3, ptr noundef nonnull @enc_opts_policy, i32 noundef 0, ptr noundef %extack) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i)
  %tobool.not.i894 = icmp eq i32 %call2.i.i.i, 0
  br i1 %tobool.not.i894, label %if.end.i898, label %if.then295.cleanup315_crit_edge

if.then295.cleanup315_crit_edge:                  ; preds = %if.then295
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup315

if.end.i898:                                      ; preds = %if.then295
  %377 = ptrtoint ptr %arrayidx293 to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load ptr, ptr %arrayidx293, align 4
  %add.ptr.i.i895 = getelementptr i8, ptr %378, i32 4
  %arrayidx3.i896 = getelementptr ptr, ptr %tb, i32 85
  %379 = ptrtoint ptr %arrayidx3.i896 to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load ptr, ptr %arrayidx3.i896, align 4
  %tobool4.not.i897 = icmp eq ptr %380, null
  br i1 %tobool4.not.i897, label %if.end.i898.if.end22.i_crit_edge, label %if.then5.i

if.end.i898.if.end22.i_crit_edge:                 ; preds = %if.end.i898
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22.i

if.then5.i:                                       ; preds = %if.end.i898
  %add.ptr.i.i.i320.i = getelementptr i8, ptr %380, i32 4
  %381 = ptrtoint ptr %380 to i32
  call void @__asan_load2_noabort(i32 %381)
  %382 = load i16, ptr %380, align 2
  %conv.i.i.i321.i = zext i16 %382 to i32
  %sub.i.i.i322.i = add nsw i32 %conv.i.i.i321.i, -4
  %call2.i.i323.i = call i32 @__nla_validate(ptr noundef %add.ptr.i.i.i320.i, i32 noundef %sub.i.i.i322.i, i32 noundef 3, ptr noundef nonnull @enc_opts_policy, i32 noundef 0, ptr noundef %extack) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i323.i)
  %tobool8.not.i = icmp eq i32 %call2.i.i323.i, 0
  br i1 %tobool8.not.i, label %if.end10.i, label %if.then5.i.cleanup315_crit_edge

if.then5.i.cleanup315_crit_edge:                  ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup315

if.end10.i:                                       ; preds = %if.then5.i
  %383 = ptrtoint ptr %arrayidx3.i896 to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load ptr, ptr %arrayidx3.i896, align 4
  %385 = ptrtoint ptr %384 to i32
  call void @__asan_load2_noabort(i32 %385)
  %386 = load i16, ptr %384, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 7, i16 %386)
  %cmp.i.i = icmp ugt i16 %386, 7
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %if.end10.i.do.body.i899_crit_edge

if.end10.i.do.body.i899_crit_edge:                ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i899

land.lhs.true.i.i:                                ; preds = %if.end10.i
  %conv.i.i = zext i16 %386 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -4
  %add.ptr.i324.i = getelementptr i8, ptr %384, i32 4
  %387 = ptrtoint ptr %add.ptr.i324.i to i32
  call void @__asan_load2_noabort(i32 %387)
  %388 = load i16, ptr %add.ptr.i324.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %388)
  %cmp1.i.i = icmp ult i16 %388, 4
  %conv.i325.i = zext i16 %388 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i, i32 %conv.i325.i)
  %cmp5.i.not.i = icmp ult i32 %sub.i.i, %conv.i325.i
  %or.cond.i = select i1 %cmp1.i.i, i1 true, i1 %cmp5.i.not.i
  br i1 %or.cond.i, label %land.lhs.true.i.i.do.body.i899_crit_edge, label %land.lhs.true.i.i.if.end22.i_crit_edge

land.lhs.true.i.i.if.end22.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22.i

land.lhs.true.i.i.do.body.i899_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i899

do.body.i899:                                     ; preds = %land.lhs.true.i.i.do.body.i899_crit_edge, %if.end10.i.do.body.i899_crit_edge
  call void @do_trace_netlink_extack(ptr noundef nonnull @fl_set_enc_opt.__msg) #12
  %tobool18.not.i = icmp eq ptr %extack, null
  br i1 %tobool18.not.i, label %do.body.i899.cleanup315_crit_edge, label %do.body.i899.cleanup.sink.split.i_crit_edge

do.body.i899.cleanup.sink.split.i_crit_edge:      ; preds = %do.body.i899
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split.i

do.body.i899.cleanup315_crit_edge:                ; preds = %do.body.i899
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup315

if.end22.i:                                       ; preds = %land.lhs.true.i.i.if.end22.i_crit_edge, %if.end.i898.if.end22.i_crit_edge
  %msk_depth.0.i = phi i32 [ 0, %if.end.i898.if.end22.i_crit_edge ], [ %sub.i.i, %land.lhs.true.i.i.if.end22.i_crit_edge ]
  %nla_opt_msk.0.i = phi ptr [ null, %if.end.i898.if.end22.i_crit_edge ], [ %add.ptr.i324.i, %land.lhs.true.i.i.if.end22.i_crit_edge ]
  %389 = ptrtoint ptr %arrayidx293 to i32
  call void @__asan_load4_noabort(i32 %389)
  %390 = load ptr, ptr %arrayidx293, align 4
  %391 = ptrtoint ptr %390 to i32
  call void @__asan_load2_noabort(i32 %391)
  %392 = load i16, ptr %390, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 7, i16 %392)
  %cmp.i328366.i = icmp ugt i16 %392, 7
  br i1 %cmp.i328366.i, label %land.lhs.true.i330.lr.ph.i, label %if.end22.i.if.end300_crit_edge

if.end22.i.if.end300_crit_edge:                   ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end300

land.lhs.true.i330.lr.ph.i:                       ; preds = %if.end22.i
  %conv.i326.i = zext i16 %392 to i32
  %sub.i327.i = add nsw i32 %conv.i326.i, -4
  %dst_opt_type141.i = getelementptr inbounds %struct.fl_flow_key, ptr %key, i32 0, i32 18, i32 2
  %len161.i = getelementptr inbounds %struct.fl_flow_key, ptr %key, i32 0, i32 18, i32 1
  %dst_opt_type166.i = getelementptr inbounds %struct.fl_flow_key, ptr %mask, i32 0, i32 18, i32 2
  %len173.i = getelementptr inbounds %struct.fl_flow_key, ptr %mask, i32 0, i32 18, i32 1
  br label %land.lhs.true.i330.i

land.lhs.true.i330.i:                             ; preds = %for.inc.i.land.lhs.true.i330.i_crit_edge, %land.lhs.true.i330.lr.ph.i
  %nla_opt_msk.1371.i = phi ptr [ %nla_opt_msk.0.i, %land.lhs.true.i330.lr.ph.i ], [ %nla_opt_msk.2.i, %for.inc.i.land.lhs.true.i330.i_crit_edge ]
  %nla_opt_key.0370.i = phi ptr [ %add.ptr.i.i895, %land.lhs.true.i330.lr.ph.i ], [ %add.ptr.i352.i, %for.inc.i.land.lhs.true.i330.i_crit_edge ]
  %msk_depth.1369.i = phi i32 [ %msk_depth.0.i, %land.lhs.true.i330.lr.ph.i ], [ %msk_depth.2.i, %for.inc.i.land.lhs.true.i330.i_crit_edge ]
  %key_depth.0367.i = phi i32 [ %sub.i327.i, %land.lhs.true.i330.lr.ph.i ], [ %sub1.i351.i, %for.inc.i.land.lhs.true.i330.i_crit_edge ]
  %393 = ptrtoint ptr %nla_opt_key.0370.i to i32
  call void @__asan_load2_noabort(i32 %393)
  %394 = load i16, ptr %nla_opt_key.0370.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %394)
  %cmp1.i329.i = icmp ult i16 %394, 4
  %conv.i331.i = zext i16 %394 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %key_depth.0367.i, i32 %conv.i331.i)
  %cmp5.i332.not.i = icmp ult i32 %key_depth.0367.i, %conv.i331.i
  %or.cond364.i = select i1 %cmp1.i329.i, i1 true, i1 %cmp5.i332.not.i
  br i1 %or.cond364.i, label %land.lhs.true.i330.i.if.end300_crit_edge, label %for.body.i

land.lhs.true.i330.i.if.end300_crit_edge:         ; preds = %land.lhs.true.i330.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end300

for.body.i:                                       ; preds = %land.lhs.true.i330.i
  %nla_type.i.i = getelementptr inbounds %struct.nlattr, ptr %nla_opt_key.0370.i, i32 0, i32 1
  %395 = ptrtoint ptr %nla_type.i.i to i32
  call void @__asan_load2_noabort(i32 %395)
  %396 = load i16, ptr %nla_type.i.i, align 2
  %397 = and i16 %396, 16383
  %and.i.i = zext i16 %397 to i32
  %398 = zext i32 %and.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %398, ptr @__sancov_gen_cov_switch_values.62)
  switch i32 %and.i.i, label %do.body195.i [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb83.i
    i32 3, label %sw.bb139.i
  ]

sw.bb.i:                                          ; preds = %for.body.i
  %399 = ptrtoint ptr %dst_opt_type141.i to i32
  call void @__asan_load2_noabort(i32 %399)
  %400 = load i16, ptr %dst_opt_type141.i, align 2
  %401 = zext i16 %400 to i64
  call void @__sanitizer_cov_trace_switch(i64 %401, ptr @__sancov_gen_cov_switch_values.63)
  switch i16 %400, label %do.body34.i [
    i16 0, label %sw.bb.i.if.end42.i_crit_edge
    i16 2048, label %sw.bb.i.if.end42.i_crit_edge945
  ]

sw.bb.i.if.end42.i_crit_edge945:                  ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end42.i

sw.bb.i.if.end42.i_crit_edge:                     ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end42.i

do.body34.i:                                      ; preds = %sw.bb.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @fl_set_enc_opt.__msg.31) #12
  %tobool36.not.i900 = icmp eq ptr %extack, null
  br i1 %tobool36.not.i900, label %do.body34.i.cleanup315_crit_edge, label %do.body34.i.cleanup.sink.split.i_crit_edge

do.body34.i.cleanup.sink.split.i_crit_edge:       ; preds = %do.body34.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split.i

do.body34.i.cleanup315_crit_edge:                 ; preds = %do.body34.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup315

if.end42.i:                                       ; preds = %sw.bb.i.if.end42.i_crit_edge, %sw.bb.i.if.end42.i_crit_edge945
  %402 = ptrtoint ptr %dst_opt_type141.i to i32
  call void @__asan_store2_noabort(i32 %402)
  store i16 2048, ptr %dst_opt_type141.i, align 2
  %call45.i = call fastcc i32 @fl_set_geneve_opt(ptr noundef %nla_opt_key.0370.i, ptr noundef %key, i32 noundef %key_depth.0367.i, i32 noundef 0, ptr noundef %extack) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45.i)
  %cmp46.i = icmp slt i32 %call45.i, 0
  br i1 %cmp46.i, label %if.end42.i.cleanup315_crit_edge, label %if.end49.i901

if.end42.i.cleanup315_crit_edge:                  ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup315

if.end49.i901:                                    ; preds = %if.end42.i
  %403 = ptrtoint ptr %len161.i to i32
  call void @__asan_load1_noabort(i32 %403)
  %404 = load i8, ptr %len161.i, align 1
  %405 = trunc i32 %call45.i to i8
  %conv52.i = add i8 %404, %405
  store i8 %conv52.i, ptr %len161.i, align 1
  %406 = ptrtoint ptr %dst_opt_type166.i to i32
  call void @__asan_store2_noabort(i32 %406)
  store i16 2048, ptr %dst_opt_type166.i, align 2
  %call55.i = call fastcc i32 @fl_set_geneve_opt(ptr noundef %nla_opt_msk.1371.i, ptr noundef %mask, i32 noundef %msk_depth.1369.i, i32 noundef %call45.i, ptr noundef %extack) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55.i)
  %cmp56.i = icmp slt i32 %call55.i, 0
  br i1 %cmp56.i, label %if.end49.i901.cleanup315_crit_edge, label %if.end59.i902

if.end49.i901.cleanup315_crit_edge:               ; preds = %if.end49.i901
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup315

if.end59.i902:                                    ; preds = %if.end49.i901
  %407 = ptrtoint ptr %len173.i to i32
  call void @__asan_load1_noabort(i32 %407)
  %408 = load i8, ptr %len173.i, align 1
  %409 = trunc i32 %call55.i to i8
  %conv64.i = add i8 %408, %409
  store i8 %conv64.i, ptr %len173.i, align 1
  %410 = ptrtoint ptr %len161.i to i32
  call void @__asan_load1_noabort(i32 %410)
  %411 = load i8, ptr %len161.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %411, i8 %conv64.i)
  %cmp71.not.i = icmp eq i8 %411, %conv64.i
  br i1 %cmp71.not.i, label %if.end59.i902.sw.epilog.i_crit_edge, label %do.body74.i

if.end59.i902.sw.epilog.i_crit_edge:              ; preds = %if.end59.i902
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i

do.body74.i:                                      ; preds = %if.end59.i902
  call void @do_trace_netlink_extack(ptr noundef nonnull @fl_set_enc_opt.__msg.32) #12
  %tobool76.not.i = icmp eq ptr %extack, null
  br i1 %tobool76.not.i, label %do.body74.i.cleanup315_crit_edge, label %do.body74.i.cleanup.sink.split.i_crit_edge

do.body74.i.cleanup.sink.split.i_crit_edge:       ; preds = %do.body74.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split.i

do.body74.i.cleanup315_crit_edge:                 ; preds = %do.body74.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup315

sw.bb83.i:                                        ; preds = %for.body.i
  %412 = ptrtoint ptr %dst_opt_type141.i to i32
  call void @__asan_load2_noabort(i32 %412)
  %413 = load i16, ptr %dst_opt_type141.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %413)
  %tobool86.not.i = icmp eq i16 %413, 0
  br i1 %tobool86.not.i, label %if.end96.i, label %do.body88.i

do.body88.i:                                      ; preds = %sw.bb83.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @fl_set_enc_opt.__msg.33) #12
  %tobool90.not.i = icmp eq ptr %extack, null
  br i1 %tobool90.not.i, label %do.body88.i.cleanup315_crit_edge, label %do.body88.i.cleanup.sink.split.i_crit_edge

do.body88.i.cleanup.sink.split.i_crit_edge:       ; preds = %do.body88.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split.i

do.body88.i.cleanup315_crit_edge:                 ; preds = %do.body88.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup315

if.end96.i:                                       ; preds = %sw.bb83.i
  %414 = ptrtoint ptr %dst_opt_type141.i to i32
  call void @__asan_store2_noabort(i32 %414)
  store i16 4096, ptr %dst_opt_type141.i, align 2
  %call99.i = call fastcc i32 @fl_set_vxlan_opt(ptr noundef %nla_opt_key.0370.i, ptr noundef %key, i32 noundef %key_depth.0367.i, i32 noundef 0, ptr noundef %extack) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call99.i)
  %cmp100.i = icmp slt i32 %call99.i, 0
  br i1 %cmp100.i, label %if.end96.i.cleanup315_crit_edge, label %if.end103.i

if.end96.i.cleanup315_crit_edge:                  ; preds = %if.end96.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup315

if.end103.i:                                      ; preds = %if.end96.i
  %415 = ptrtoint ptr %len161.i to i32
  call void @__asan_load1_noabort(i32 %415)
  %416 = load i8, ptr %len161.i, align 1
  %417 = trunc i32 %call99.i to i8
  %conv108.i = add i8 %416, %417
  store i8 %conv108.i, ptr %len161.i, align 1
  %418 = ptrtoint ptr %dst_opt_type166.i to i32
  call void @__asan_store2_noabort(i32 %418)
  store i16 4096, ptr %dst_opt_type166.i, align 2
  %call111.i = call fastcc i32 @fl_set_vxlan_opt(ptr noundef %nla_opt_msk.1371.i, ptr noundef %mask, i32 noundef %msk_depth.1369.i, i32 noundef %call99.i, ptr noundef %extack) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call111.i)
  %cmp112.i = icmp slt i32 %call111.i, 0
  br i1 %cmp112.i, label %if.end103.i.cleanup315_crit_edge, label %if.end115.i

if.end103.i.cleanup315_crit_edge:                 ; preds = %if.end103.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup315

if.end115.i:                                      ; preds = %if.end103.i
  %419 = ptrtoint ptr %len173.i to i32
  call void @__asan_load1_noabort(i32 %419)
  %420 = load i8, ptr %len173.i, align 1
  %421 = trunc i32 %call111.i to i8
  %conv120.i = add i8 %420, %421
  store i8 %conv120.i, ptr %len173.i, align 1
  %422 = ptrtoint ptr %len161.i to i32
  call void @__asan_load1_noabort(i32 %422)
  %423 = load i8, ptr %len161.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %423, i8 %conv120.i)
  %cmp127.not.i = icmp eq i8 %423, %conv120.i
  br i1 %cmp127.not.i, label %if.end115.i.sw.epilog.i_crit_edge, label %do.body130.i

if.end115.i.sw.epilog.i_crit_edge:                ; preds = %if.end115.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i

do.body130.i:                                     ; preds = %if.end115.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @fl_set_enc_opt.__msg.34) #12
  %tobool132.not.i = icmp eq ptr %extack, null
  br i1 %tobool132.not.i, label %do.body130.i.cleanup315_crit_edge, label %do.body130.i.cleanup.sink.split.i_crit_edge

do.body130.i.cleanup.sink.split.i_crit_edge:      ; preds = %do.body130.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split.i

do.body130.i.cleanup315_crit_edge:                ; preds = %do.body130.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup315

sw.bb139.i:                                       ; preds = %for.body.i
  %424 = ptrtoint ptr %dst_opt_type141.i to i32
  call void @__asan_load2_noabort(i32 %424)
  %425 = load i16, ptr %dst_opt_type141.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %425)
  %tobool142.not.i = icmp eq i16 %425, 0
  br i1 %tobool142.not.i, label %if.end152.i, label %do.body144.i

do.body144.i:                                     ; preds = %sw.bb139.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @fl_set_enc_opt.__msg.35) #12
  %tobool146.not.i = icmp eq ptr %extack, null
  br i1 %tobool146.not.i, label %do.body144.i.cleanup315_crit_edge, label %do.body144.i.cleanup.sink.split.i_crit_edge

do.body144.i.cleanup.sink.split.i_crit_edge:      ; preds = %do.body144.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split.i

do.body144.i.cleanup315_crit_edge:                ; preds = %do.body144.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup315

if.end152.i:                                      ; preds = %sw.bb139.i
  %426 = ptrtoint ptr %dst_opt_type141.i to i32
  call void @__asan_store2_noabort(i32 %426)
  store i16 16384, ptr %dst_opt_type141.i, align 2
  %call155.i = call fastcc i32 @fl_set_erspan_opt(ptr noundef %nla_opt_key.0370.i, ptr noundef %key, i32 noundef %key_depth.0367.i, i32 noundef 0, ptr noundef %extack) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call155.i)
  %cmp156.i = icmp slt i32 %call155.i, 0
  br i1 %cmp156.i, label %if.end152.i.cleanup315_crit_edge, label %if.end159.i

if.end152.i.cleanup315_crit_edge:                 ; preds = %if.end152.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup315

if.end159.i:                                      ; preds = %if.end152.i
  %427 = ptrtoint ptr %len161.i to i32
  call void @__asan_load1_noabort(i32 %427)
  %428 = load i8, ptr %len161.i, align 1
  %429 = trunc i32 %call155.i to i8
  %conv164.i = add i8 %428, %429
  store i8 %conv164.i, ptr %len161.i, align 1
  %430 = ptrtoint ptr %dst_opt_type166.i to i32
  call void @__asan_store2_noabort(i32 %430)
  store i16 16384, ptr %dst_opt_type166.i, align 2
  %call167.i = call fastcc i32 @fl_set_erspan_opt(ptr noundef %nla_opt_msk.1371.i, ptr noundef %mask, i32 noundef %msk_depth.1369.i, i32 noundef %call155.i, ptr noundef %extack) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call167.i)
  %cmp168.i = icmp slt i32 %call167.i, 0
  br i1 %cmp168.i, label %if.end159.i.cleanup315_crit_edge, label %if.end171.i

if.end159.i.cleanup315_crit_edge:                 ; preds = %if.end159.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup315

if.end171.i:                                      ; preds = %if.end159.i
  %431 = ptrtoint ptr %len173.i to i32
  call void @__asan_load1_noabort(i32 %431)
  %432 = load i8, ptr %len173.i, align 1
  %433 = trunc i32 %call167.i to i8
  %conv176.i = add i8 %432, %433
  store i8 %conv176.i, ptr %len173.i, align 1
  %434 = ptrtoint ptr %len161.i to i32
  call void @__asan_load1_noabort(i32 %434)
  %435 = load i8, ptr %len161.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %435, i8 %conv176.i)
  %cmp183.not.i = icmp eq i8 %435, %conv176.i
  br i1 %cmp183.not.i, label %if.end171.i.sw.epilog.i_crit_edge, label %do.body186.i

if.end171.i.sw.epilog.i_crit_edge:                ; preds = %if.end171.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i

do.body186.i:                                     ; preds = %if.end171.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @fl_set_enc_opt.__msg.36) #12
  %tobool188.not.i = icmp eq ptr %extack, null
  br i1 %tobool188.not.i, label %do.body186.i.cleanup315_crit_edge, label %do.body186.i.cleanup.sink.split.i_crit_edge

do.body186.i.cleanup.sink.split.i_crit_edge:      ; preds = %do.body186.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split.i

do.body186.i.cleanup315_crit_edge:                ; preds = %do.body186.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup315

do.body195.i:                                     ; preds = %for.body.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @fl_set_enc_opt.__msg.37) #12
  %tobool197.not.i = icmp eq ptr %extack, null
  br i1 %tobool197.not.i, label %do.body195.i.cleanup315_crit_edge, label %do.body195.i.cleanup.sink.split.i_crit_edge

do.body195.i.cleanup.sink.split.i_crit_edge:      ; preds = %do.body195.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split.i

do.body195.i.cleanup315_crit_edge:                ; preds = %do.body195.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup315

sw.epilog.i:                                      ; preds = %if.end171.i.sw.epilog.i_crit_edge, %if.end115.i.sw.epilog.i_crit_edge, %if.end59.i902.sw.epilog.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %msk_depth.1369.i)
  %tobool203.not.i = icmp eq i32 %msk_depth.1369.i, 0
  br i1 %tobool203.not.i, label %sw.epilog.i.for.inc.i_crit_edge, label %if.end205.i

sw.epilog.i.for.inc.i_crit_edge:                  ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.end205.i:                                      ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %msk_depth.1369.i)
  %cmp.i336.i = icmp sgt i32 %msk_depth.1369.i, 3
  br i1 %cmp.i336.i, label %land.lhs.true.i338.i, label %if.end205.i.do.body209.i_crit_edge

if.end205.i.do.body209.i_crit_edge:               ; preds = %if.end205.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body209.i

land.lhs.true.i338.i:                             ; preds = %if.end205.i
  %436 = ptrtoint ptr %nla_opt_msk.1371.i to i32
  call void @__asan_load2_noabort(i32 %436)
  %437 = load i16, ptr %nla_opt_msk.1371.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %437)
  %cmp1.i337.i = icmp ult i16 %437, 4
  %conv.i339.i = zext i16 %437 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %msk_depth.1369.i, i32 %conv.i339.i)
  %cmp5.i340.not.i = icmp ult i32 %msk_depth.1369.i, %conv.i339.i
  %or.cond365.i = select i1 %cmp1.i337.i, i1 true, i1 %cmp5.i340.not.i
  br i1 %or.cond365.i, label %land.lhs.true.i338.i.do.body209.i_crit_edge, label %if.end217.i

land.lhs.true.i338.i.do.body209.i_crit_edge:      ; preds = %land.lhs.true.i338.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body209.i

do.body209.i:                                     ; preds = %land.lhs.true.i338.i.do.body209.i_crit_edge, %if.end205.i.do.body209.i_crit_edge
  call void @do_trace_netlink_extack(ptr noundef nonnull @fl_set_enc_opt.__msg.38) #12
  %tobool211.not.i = icmp eq ptr %extack, null
  br i1 %tobool211.not.i, label %do.body209.i.cleanup315_crit_edge, label %do.body209.i.cleanup.sink.split.i_crit_edge

do.body209.i.cleanup.sink.split.i_crit_edge:      ; preds = %do.body209.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split.i

do.body209.i.cleanup315_crit_edge:                ; preds = %do.body209.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup315

if.end217.i:                                      ; preds = %land.lhs.true.i338.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i345.i = add nuw nsw i32 %conv.i339.i, 3
  %and.i346.i = and i32 %sub.i345.i, 131068
  %sub1.i.i = sub nsw i32 %msk_depth.1369.i, %and.i346.i
  %add.ptr.i347.i = getelementptr i8, ptr %nla_opt_msk.1371.i, i32 %and.i346.i
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end217.i, %sw.epilog.i.for.inc.i_crit_edge
  %msk_depth.2.i = phi i32 [ 0, %sw.epilog.i.for.inc.i_crit_edge ], [ %sub1.i.i, %if.end217.i ]
  %nla_opt_msk.2.i = phi ptr [ %nla_opt_msk.1371.i, %sw.epilog.i.for.inc.i_crit_edge ], [ %add.ptr.i347.i, %if.end217.i ]
  %438 = ptrtoint ptr %nla_opt_key.0370.i to i32
  call void @__asan_load2_noabort(i32 %438)
  %439 = load i16, ptr %nla_opt_key.0370.i, align 2
  %conv.i348.i = zext i16 %439 to i32
  %sub.i349.i = add nuw nsw i32 %conv.i348.i, 3
  %and.i350.i = and i32 %sub.i349.i, 131068
  %sub1.i351.i = sub nsw i32 %key_depth.0367.i, %and.i350.i
  %add.ptr.i352.i = getelementptr i8, ptr %nla_opt_key.0370.i, i32 %and.i350.i
  %cmp.i328.i = icmp sgt i32 %sub1.i351.i, 3
  br i1 %cmp.i328.i, label %for.inc.i.land.lhs.true.i330.i_crit_edge, label %for.inc.i.if.end300_crit_edge

for.inc.i.if.end300_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end300

for.inc.i.land.lhs.true.i330.i_crit_edge:         ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true.i330.i

cleanup.sink.split.i:                             ; preds = %do.body209.i.cleanup.sink.split.i_crit_edge, %do.body195.i.cleanup.sink.split.i_crit_edge, %do.body186.i.cleanup.sink.split.i_crit_edge, %do.body144.i.cleanup.sink.split.i_crit_edge, %do.body130.i.cleanup.sink.split.i_crit_edge, %do.body88.i.cleanup.sink.split.i_crit_edge, %do.body74.i.cleanup.sink.split.i_crit_edge, %do.body34.i.cleanup.sink.split.i_crit_edge, %do.body.i899.cleanup.sink.split.i_crit_edge
  %fl_set_enc_opt.__msg.38.sink.i = phi ptr [ @fl_set_enc_opt.__msg, %do.body.i899.cleanup.sink.split.i_crit_edge ], [ @fl_set_enc_opt.__msg.31, %do.body34.i.cleanup.sink.split.i_crit_edge ], [ @fl_set_enc_opt.__msg.32, %do.body74.i.cleanup.sink.split.i_crit_edge ], [ @fl_set_enc_opt.__msg.33, %do.body88.i.cleanup.sink.split.i_crit_edge ], [ @fl_set_enc_opt.__msg.34, %do.body130.i.cleanup.sink.split.i_crit_edge ], [ @fl_set_enc_opt.__msg.35, %do.body144.i.cleanup.sink.split.i_crit_edge ], [ @fl_set_enc_opt.__msg.36, %do.body186.i.cleanup.sink.split.i_crit_edge ], [ @fl_set_enc_opt.__msg.37, %do.body195.i.cleanup.sink.split.i_crit_edge ], [ @fl_set_enc_opt.__msg.38, %do.body209.i.cleanup.sink.split.i_crit_edge ]
  %440 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %440)
  store ptr %fl_set_enc_opt.__msg.38.sink.i, ptr %extack, align 4
  br label %cleanup315

if.end300:                                        ; preds = %for.inc.i.if.end300_crit_edge, %land.lhs.true.i330.i.if.end300_crit_edge, %if.end22.i.if.end300_crit_edge, %fl_set_key_val.exit892.if.end300_crit_edge
  %ct = getelementptr inbounds %struct.fl_flow_key, ptr %key, i32 0, i32 20
  %ct301 = getelementptr inbounds %struct.fl_flow_key, ptr %mask, i32 0, i32 20
  %arrayidx.i904 = getelementptr ptr, ptr %tb, i32 91
  %441 = ptrtoint ptr %arrayidx.i904 to i32
  call void @__asan_load4_noabort(i32 %441)
  %442 = load ptr, ptr %arrayidx.i904, align 4
  %tobool.not.i905 = icmp eq ptr %442, null
  br i1 %tobool.not.i905, label %if.end300.if.end9.i_crit_edge, label %if.end.i.i909

if.end300.if.end9.i_crit_edge:                    ; preds = %if.end300
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9.i

if.end.i.i909:                                    ; preds = %if.end300
  %call.i.i906 = call i32 @nla_memcpy(ptr noundef %ct, ptr noundef nonnull %442, i32 noundef 2) #12
  %arrayidx2.i.i907 = getelementptr ptr, ptr %tb, i32 92
  %443 = ptrtoint ptr %arrayidx2.i.i907 to i32
  call void @__asan_load4_noabort(i32 %443)
  %444 = load ptr, ptr %arrayidx2.i.i907, align 4
  %tobool3.not.i.i908 = icmp eq ptr %444, null
  br i1 %tobool3.not.i.i908, label %if.then4.i.i910, label %if.else.i.i912

if.then4.i.i910:                                  ; preds = %if.end.i.i909
  call void @__sanitizer_cov_trace_pc() #14
  %445 = ptrtoint ptr %ct301 to i32
  call void @__asan_storeN_noabort(i32 %445, i32 2)
  store i16 -1, ptr %ct301, align 1
  br label %fl_set_key_val.exit.i915

if.else.i.i912:                                   ; preds = %if.end.i.i909
  call void @__sanitizer_cov_trace_pc() #14
  %call6.i.i911 = call i32 @nla_memcpy(ptr noundef %ct301, ptr noundef nonnull %444, i32 noundef 2) #12
  br label %fl_set_key_val.exit.i915

fl_set_key_val.exit.i915:                         ; preds = %if.else.i.i912, %if.then4.i.i910
  %446 = ptrtoint ptr %ct to i32
  call void @__asan_load2_noabort(i32 %446)
  %447 = load i16, ptr %ct, align 4
  %448 = ptrtoint ptr %ct301 to i32
  call void @__asan_load2_noabort(i32 %448)
  %449 = load i16, ptr %ct301, align 4
  %and43.i = and i16 %449, %447
  %450 = ptrtoint ptr %arrayidx2.i.i907 to i32
  call void @__asan_load4_noabort(i32 %450)
  %451 = load ptr, ptr %arrayidx2.i.i907, align 4
  %conv.i.i913 = zext i16 %and43.i to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and43.i)
  %tobool.not.i44.i = icmp ne i16 %and43.i, 0
  %and.i.i914 = and i32 %conv.i.i913, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i914)
  %tobool2.not.i.i = icmp eq i32 %and.i.i914, 0
  %or.cond.i.i = and i1 %tobool.not.i44.i, %tobool2.not.i.i
  br i1 %or.cond.i.i, label %do.body.i.i, label %if.end5.i.i

do.body.i.i:                                      ; preds = %fl_set_key_val.exit.i915
  call void @do_trace_netlink_extack(ptr noundef nonnull @fl_validate_ct_state.__msg) #12
  %tobool3.not.i45.i = icmp eq ptr %extack, null
  br i1 %tobool3.not.i45.i, label %do.body.i.i.cleanup315_crit_edge, label %do.body.i.i.return.sink.split.i.i_crit_edge

do.body.i.i.return.sink.split.i.i_crit_edge:      ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %return.sink.split.i.i

do.body.i.i.cleanup315_crit_edge:                 ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup315

if.end5.i.i:                                      ; preds = %fl_set_key_val.exit.i915
  %452 = and i32 %conv.i.i913, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %452)
  %.not.i.i = icmp eq i32 %452, 3
  br i1 %.not.i.i, label %do.body14.i.i, label %if.end23.i.i

do.body14.i.i:                                    ; preds = %if.end5.i.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @fl_validate_ct_state.__msg.49) #12
  %tobool16.not.i.i = icmp eq ptr %extack, null
  br i1 %tobool16.not.i.i, label %do.body14.i.i.cleanup315_crit_edge, label %do.body14.i.i.return.sink.split.i.i_crit_edge

do.body14.i.i.return.sink.split.i.i_crit_edge:    ; preds = %do.body14.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %return.sink.split.i.i

do.body14.i.i.cleanup315_crit_edge:               ; preds = %do.body14.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup315

if.end23.i.i:                                     ; preds = %if.end5.i.i
  %and25.i.i = and i32 %conv.i.i913, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i.i)
  %tobool26.not.i.i = icmp eq i32 %and25.i.i, 0
  %and29.i.i = and i32 %conv.i.i913, 65511
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i.i)
  %tobool30.not.i.i = icmp eq i32 %and29.i.i, 0
  %or.cond86.i.i = or i1 %tobool26.not.i.i, %tobool30.not.i.i
  br i1 %or.cond86.i.i, label %if.end41.i.i, label %do.body32.i.i

do.body32.i.i:                                    ; preds = %if.end23.i.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @fl_validate_ct_state.__msg.50) #12
  %tobool34.not.i.i = icmp eq ptr %extack, null
  br i1 %tobool34.not.i.i, label %do.body32.i.i.cleanup315_crit_edge, label %do.body32.i.i.return.sink.split.i.i_crit_edge

do.body32.i.i.return.sink.split.i.i_crit_edge:    ; preds = %do.body32.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %return.sink.split.i.i

do.body32.i.i.cleanup315_crit_edge:               ; preds = %do.body32.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup315

if.end41.i.i:                                     ; preds = %if.end23.i.i
  %453 = and i32 %conv.i.i913, 33
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %453)
  %.not88.i.i = icmp eq i32 %453, 33
  br i1 %.not88.i.i, label %do.body50.i.i, label %if.end41.i.i.if.end9.i_crit_edge

if.end41.i.i.if.end9.i_crit_edge:                 ; preds = %if.end41.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9.i

do.body50.i.i:                                    ; preds = %if.end41.i.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @fl_validate_ct_state.__msg.51) #12
  %tobool52.not.i.i = icmp eq ptr %extack, null
  br i1 %tobool52.not.i.i, label %do.body50.i.i.cleanup315_crit_edge, label %do.body50.i.i.return.sink.split.i.i_crit_edge

do.body50.i.i.return.sink.split.i.i_crit_edge:    ; preds = %do.body50.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %return.sink.split.i.i

do.body50.i.i.cleanup315_crit_edge:               ; preds = %do.body50.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup315

return.sink.split.i.i:                            ; preds = %do.body50.i.i.return.sink.split.i.i_crit_edge, %do.body32.i.i.return.sink.split.i.i_crit_edge, %do.body14.i.i.return.sink.split.i.i_crit_edge, %do.body.i.i.return.sink.split.i.i_crit_edge
  %fl_validate_ct_state.__msg.51.sink.i.i = phi ptr [ @fl_validate_ct_state.__msg, %do.body.i.i.return.sink.split.i.i_crit_edge ], [ @fl_validate_ct_state.__msg.49, %do.body14.i.i.return.sink.split.i.i_crit_edge ], [ @fl_validate_ct_state.__msg.50, %do.body32.i.i.return.sink.split.i.i_crit_edge ], [ @fl_validate_ct_state.__msg.51, %do.body50.i.i.return.sink.split.i.i_crit_edge ]
  %454 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %454)
  store ptr %fl_validate_ct_state.__msg.51.sink.i.i, ptr %extack, align 4
  %bad_attr55.i.i = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 1
  %455 = ptrtoint ptr %bad_attr55.i.i to i32
  call void @__asan_store4_noabort(i32 %455)
  store ptr %451, ptr %bad_attr55.i.i, align 4
  %policy56.i.i = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 2
  %456 = ptrtoint ptr %policy56.i.i to i32
  call void @__asan_store4_noabort(i32 %456)
  store ptr null, ptr %policy56.i.i, align 4
  br label %cleanup315

if.end9.i:                                        ; preds = %if.end41.i.i.if.end9.i_crit_edge, %if.end300.if.end9.i_crit_edge
  %arrayidx10.i = getelementptr ptr, ptr %tb, i32 93
  %457 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %457)
  %458 = load ptr, ptr %arrayidx10.i, align 4
  %tobool11.not.i = icmp eq ptr %458, null
  br i1 %tobool11.not.i, label %if.end9.i.if.end14.i_crit_edge, label %if.end.i49.i

if.end9.i.if.end14.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14.i

if.end.i49.i:                                     ; preds = %if.end9.i
  %ct_zone.i = getelementptr inbounds %struct.fl_flow_key, ptr %key, i32 0, i32 20, i32 1
  %ct_zone13.i = getelementptr inbounds %struct.fl_flow_key, ptr %mask, i32 0, i32 20, i32 1
  %call.i48.i = call i32 @nla_memcpy(ptr noundef %ct_zone.i, ptr noundef nonnull %458, i32 noundef 2) #12
  %arrayidx2.i50.i = getelementptr ptr, ptr %tb, i32 94
  %459 = ptrtoint ptr %arrayidx2.i50.i to i32
  call void @__asan_load4_noabort(i32 %459)
  %460 = load ptr, ptr %arrayidx2.i50.i, align 4
  %tobool3.not.i51.i = icmp eq ptr %460, null
  br i1 %tobool3.not.i51.i, label %if.then4.i52.i, label %if.else.i54.i

if.then4.i52.i:                                   ; preds = %if.end.i49.i
  call void @__sanitizer_cov_trace_pc() #14
  %461 = ptrtoint ptr %ct_zone13.i to i32
  call void @__asan_storeN_noabort(i32 %461, i32 2)
  store i16 -1, ptr %ct_zone13.i, align 1
  br label %if.end14.i

if.else.i54.i:                                    ; preds = %if.end.i49.i
  call void @__sanitizer_cov_trace_pc() #14
  %call6.i53.i = call i32 @nla_memcpy(ptr noundef %ct_zone13.i, ptr noundef nonnull %460, i32 noundef 2) #12
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.else.i54.i, %if.then4.i52.i, %if.end9.i.if.end14.i_crit_edge
  %arrayidx15.i = getelementptr ptr, ptr %tb, i32 95
  %462 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load4_noabort(i32 %462)
  %463 = load ptr, ptr %arrayidx15.i, align 4
  %tobool16.not.i = icmp eq ptr %463, null
  br i1 %tobool16.not.i, label %if.end14.i.if.end19.i_crit_edge, label %if.end.i59.i

if.end14.i.if.end19.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19.i

if.end.i59.i:                                     ; preds = %if.end14.i
  %ct_mark.i = getelementptr inbounds %struct.fl_flow_key, ptr %key, i32 0, i32 20, i32 2
  %ct_mark18.i = getelementptr inbounds %struct.fl_flow_key, ptr %mask, i32 0, i32 20, i32 2
  %call.i58.i = call i32 @nla_memcpy(ptr noundef %ct_mark.i, ptr noundef nonnull %463, i32 noundef 4) #12
  %arrayidx2.i60.i = getelementptr ptr, ptr %tb, i32 96
  %464 = ptrtoint ptr %arrayidx2.i60.i to i32
  call void @__asan_load4_noabort(i32 %464)
  %465 = load ptr, ptr %arrayidx2.i60.i, align 4
  %tobool3.not.i61.i = icmp eq ptr %465, null
  br i1 %tobool3.not.i61.i, label %if.then4.i62.i, label %if.else.i64.i

if.then4.i62.i:                                   ; preds = %if.end.i59.i
  call void @__sanitizer_cov_trace_pc() #14
  %466 = ptrtoint ptr %ct_mark18.i to i32
  call void @__asan_storeN_noabort(i32 %466, i32 4)
  store i32 -1, ptr %ct_mark18.i, align 1
  br label %if.end19.i

if.else.i64.i:                                    ; preds = %if.end.i59.i
  call void @__sanitizer_cov_trace_pc() #14
  %call6.i63.i = call i32 @nla_memcpy(ptr noundef %ct_mark18.i, ptr noundef nonnull %465, i32 noundef 4) #12
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.else.i64.i, %if.then4.i62.i, %if.end14.i.if.end19.i_crit_edge
  %arrayidx20.i = getelementptr ptr, ptr %tb, i32 97
  %467 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load4_noabort(i32 %467)
  %468 = load ptr, ptr %arrayidx20.i, align 4
  %tobool21.not.i = icmp eq ptr %468, null
  br i1 %tobool21.not.i, label %if.end19.i.if.end305_crit_edge, label %if.end.i69.i

if.end19.i.if.end305_crit_edge:                   ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end305

if.end.i69.i:                                     ; preds = %if.end19.i
  %ct_labels.i = getelementptr inbounds %struct.fl_flow_key, ptr %key, i32 0, i32 20, i32 3
  %ct_labels23.i = getelementptr inbounds %struct.fl_flow_key, ptr %mask, i32 0, i32 20, i32 3
  %call.i68.i = call i32 @nla_memcpy(ptr noundef %ct_labels.i, ptr noundef nonnull %468, i32 noundef 16) #12
  %arrayidx2.i70.i = getelementptr ptr, ptr %tb, i32 98
  %469 = ptrtoint ptr %arrayidx2.i70.i to i32
  call void @__asan_load4_noabort(i32 %469)
  %470 = load ptr, ptr %arrayidx2.i70.i, align 4
  %tobool3.not.i71.i = icmp eq ptr %470, null
  br i1 %tobool3.not.i71.i, label %if.then4.i72.i, label %if.else.i74.i

if.then4.i72.i:                                   ; preds = %if.end.i69.i
  call void @__sanitizer_cov_trace_pc() #14
  %471 = call ptr @memset(ptr %ct_labels23.i, i32 255, i32 16)
  br label %if.end305

if.else.i74.i:                                    ; preds = %if.end.i69.i
  call void @__sanitizer_cov_trace_pc() #14
  %call6.i73.i = call i32 @nla_memcpy(ptr noundef %ct_labels23.i, ptr noundef nonnull %470, i32 noundef 16) #12
  br label %if.end305

if.end305:                                        ; preds = %if.else.i74.i, %if.then4.i72.i, %if.end19.i.if.end305_crit_edge
  %arrayidx306 = getelementptr ptr, ptr %tb, i32 47
  %472 = ptrtoint ptr %arrayidx306 to i32
  call void @__asan_load4_noabort(i32 %472)
  %473 = load ptr, ptr %arrayidx306, align 4
  %tobool307.not = icmp eq ptr %473, null
  br i1 %tobool307.not, label %if.end305.cleanup315_crit_edge, label %if.then308

if.end305.cleanup315_crit_edge:                   ; preds = %if.end305
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup315

if.then308:                                       ; preds = %if.end305
  %flags310 = getelementptr inbounds %struct.fl_flow_key, ptr %key, i32 0, i32 1, i32 2
  %flags312 = getelementptr inbounds %struct.fl_flow_key, ptr %mask, i32 0, i32 1, i32 2
  %arrayidx.i916 = getelementptr ptr, ptr %tb, i32 48
  %474 = ptrtoint ptr %arrayidx.i916 to i32
  call void @__asan_load4_noabort(i32 %474)
  %475 = load ptr, ptr %arrayidx.i916, align 4
  %tobool.not.i917 = icmp eq ptr %475, null
  br i1 %tobool.not.i917, label %do.body.i918, label %if.end3.i

do.body.i918:                                     ; preds = %if.then308
  call void @do_trace_netlink_extack(ptr noundef nonnull @fl_set_key_flags.__msg) #12
  %tobool1.not.i = icmp eq ptr %extack, null
  br i1 %tobool1.not.i, label %do.body.i918.cleanup315_crit_edge, label %if.then2.i

do.body.i918.cleanup315_crit_edge:                ; preds = %do.body.i918
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup315

if.then2.i:                                       ; preds = %do.body.i918
  call void @__sanitizer_cov_trace_pc() #14
  %476 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %476)
  store ptr @fl_set_key_flags.__msg, ptr %extack, align 4
  br label %cleanup315

if.end3.i:                                        ; preds = %if.then308
  %add.ptr.i.i.i919 = getelementptr i8, ptr %473, i32 4
  %477 = ptrtoint ptr %add.ptr.i.i.i919 to i32
  call void @__asan_load4_noabort(i32 %477)
  %478 = load i32, ptr %add.ptr.i.i.i919, align 4
  %add.ptr.i.i17.i = getelementptr i8, ptr %475, i32 4
  %479 = ptrtoint ptr %add.ptr.i.i17.i to i32
  call void @__asan_load4_noabort(i32 %479)
  %480 = load i32, ptr %add.ptr.i.i17.i, align 4
  %481 = ptrtoint ptr %flags310 to i32
  call void @__asan_store4_noabort(i32 %481)
  store i32 0, ptr %flags310, align 4
  %482 = ptrtoint ptr %flags312 to i32
  call void @__asan_store4_noabort(i32 %482)
  store i32 0, ptr %flags312, align 4
  %and.i.i920 = and i32 %480, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i920)
  %tobool.not.i.i921 = icmp eq i32 %and.i.i920, 0
  br i1 %tobool.not.i.i921, label %if.end3.i.fl_set_key_flag.exit.i_crit_edge, label %if.then.i.i

if.end3.i.fl_set_key_flag.exit.i_crit_edge:       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fl_set_key_flag.exit.i

if.then.i.i:                                      ; preds = %if.end3.i
  %483 = ptrtoint ptr %flags312 to i32
  call void @__asan_store4_noabort(i32 %483)
  store i32 1, ptr %flags312, align 4
  %and1.i.i = and i32 %478, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool2.not.i.i922 = icmp eq i32 %and1.i.i, 0
  br i1 %tobool2.not.i.i922, label %if.then.i.i.fl_set_key_flag.exit.i_crit_edge, label %if.then3.i.i

if.then.i.i.fl_set_key_flag.exit.i_crit_edge:     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fl_set_key_flag.exit.i

if.then3.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %484 = ptrtoint ptr %flags310 to i32
  call void @__asan_load4_noabort(i32 %484)
  %485 = load i32, ptr %flags310, align 4
  %or4.i.i = or i32 %485, 1
  store i32 %or4.i.i, ptr %flags310, align 4
  br label %fl_set_key_flag.exit.i

fl_set_key_flag.exit.i:                           ; preds = %if.then3.i.i, %if.then.i.i.fl_set_key_flag.exit.i_crit_edge, %if.end3.i.fl_set_key_flag.exit.i_crit_edge
  %and.i18.i = and i32 %480, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i18.i)
  %tobool.not.i19.i = icmp eq i32 %and.i18.i, 0
  br i1 %tobool.not.i19.i, label %fl_set_key_flag.exit.i.cleanup315_crit_edge, label %if.then.i23.i

fl_set_key_flag.exit.i.cleanup315_crit_edge:      ; preds = %fl_set_key_flag.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup315

if.then.i23.i:                                    ; preds = %fl_set_key_flag.exit.i
  %486 = ptrtoint ptr %flags312 to i32
  call void @__asan_load4_noabort(i32 %486)
  %487 = load i32, ptr %flags312, align 4
  %or.i20.i = or i32 %487, 2
  store i32 %or.i20.i, ptr %flags312, align 4
  %and1.i21.i = and i32 %478, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i21.i)
  %tobool2.not.i22.i = icmp eq i32 %and1.i21.i, 0
  br i1 %tobool2.not.i22.i, label %if.then.i23.i.cleanup315_crit_edge, label %if.then3.i25.i

if.then.i23.i.cleanup315_crit_edge:               ; preds = %if.then.i23.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup315

if.then3.i25.i:                                   ; preds = %if.then.i23.i
  call void @__sanitizer_cov_trace_pc() #14
  %488 = ptrtoint ptr %flags310 to i32
  call void @__asan_load4_noabort(i32 %488)
  %489 = load i32, ptr %flags310, align 4
  %or4.i24.i = or i32 %489, 2
  store i32 %or4.i24.i, ptr %flags310, align 4
  br label %cleanup315

cleanup315:                                       ; preds = %if.then3.i25.i, %if.then.i23.i.cleanup315_crit_edge, %fl_set_key_flag.exit.i.cleanup315_crit_edge, %if.then2.i, %do.body.i918.cleanup315_crit_edge, %if.end305.cleanup315_crit_edge, %return.sink.split.i.i, %do.body50.i.i.cleanup315_crit_edge, %do.body32.i.i.cleanup315_crit_edge, %do.body14.i.i.cleanup315_crit_edge, %do.body.i.i.cleanup315_crit_edge, %cleanup.sink.split.i, %do.body209.i.cleanup315_crit_edge, %do.body195.i.cleanup315_crit_edge, %do.body186.i.cleanup315_crit_edge, %if.end159.i.cleanup315_crit_edge, %if.end152.i.cleanup315_crit_edge, %do.body144.i.cleanup315_crit_edge, %do.body130.i.cleanup315_crit_edge, %if.end103.i.cleanup315_crit_edge, %if.end96.i.cleanup315_crit_edge, %do.body88.i.cleanup315_crit_edge, %do.body74.i.cleanup315_crit_edge, %if.end49.i901.cleanup315_crit_edge, %if.end42.i.cleanup315_crit_edge, %do.body34.i.cleanup315_crit_edge, %do.body.i899.cleanup315_crit_edge, %if.then5.i.cleanup315_crit_edge, %if.then295.cleanup315_crit_edge, %return.sink.split.i, %do.body64.i.cleanup315_crit_edge, %do.body.i786.cleanup315_crit_edge, %fl_set_key_mpls.exit.cleanup315_crit_edge, %if.then105.i, %do.body102.i.cleanup315_crit_edge, %if.then72.i, %do.body69.i.cleanup315_crit_edge, %if.then41.i, %do.body38.i.cleanup315_crit_edge, %if.then13.i, %do.body.i715.cleanup315_crit_edge, %tcf_change_indev.exit.cleanup315_crit_edge, %tcf_change_indev.exit.thread
  %retval.1 = phi i32 [ %call.i718, %fl_set_key_mpls.exit.cleanup315_crit_edge ], [ 0, %if.end305.cleanup315_crit_edge ], [ %7, %tcf_change_indev.exit.cleanup315_crit_edge ], [ %retval.0.i.ph, %tcf_change_indev.exit.thread ], [ -22, %do.body.i786.cleanup315_crit_edge ], [ -22, %do.body64.i.cleanup315_crit_edge ], [ -22, %return.sink.split.i ], [ -22, %if.then2.i ], [ -22, %do.body.i918.cleanup315_crit_edge ], [ 0, %fl_set_key_flag.exit.i.cleanup315_crit_edge ], [ 0, %if.then.i23.i.cleanup315_crit_edge ], [ 0, %if.then3.i25.i ], [ -22, %do.body102.i.cleanup315_crit_edge ], [ -22, %do.body69.i.cleanup315_crit_edge ], [ -22, %do.body38.i.cleanup315_crit_edge ], [ -22, %if.then105.i ], [ -22, %if.then72.i ], [ -22, %if.then41.i ], [ -74, %do.body.i715.cleanup315_crit_edge ], [ -74, %if.then13.i ], [ -22, %cleanup.sink.split.i ], [ -22, %do.body209.i.cleanup315_crit_edge ], [ -22, %do.body195.i.cleanup315_crit_edge ], [ -22, %do.body186.i.cleanup315_crit_edge ], [ -22, %do.body144.i.cleanup315_crit_edge ], [ -22, %do.body130.i.cleanup315_crit_edge ], [ -22, %do.body88.i.cleanup315_crit_edge ], [ -22, %do.body74.i.cleanup315_crit_edge ], [ -22, %do.body34.i.cleanup315_crit_edge ], [ -22, %do.body.i899.cleanup315_crit_edge ], [ %call2.i.i323.i, %if.then5.i.cleanup315_crit_edge ], [ %call2.i.i.i, %if.then295.cleanup315_crit_edge ], [ -22, %do.body.i.i.cleanup315_crit_edge ], [ -22, %do.body14.i.i.cleanup315_crit_edge ], [ -22, %do.body32.i.i.cleanup315_crit_edge ], [ -22, %do.body50.i.i.cleanup315_crit_edge ], [ -22, %return.sink.split.i.i ], [ %call45.i, %if.end42.i.cleanup315_crit_edge ], [ %call55.i, %if.end49.i901.cleanup315_crit_edge ], [ %call99.i, %if.end96.i.cleanup315_crit_edge ], [ %call111.i, %if.end103.i.cleanup315_crit_edge ], [ %call155.i, %if.end152.i.cleanup315_crit_edge ], [ %call167.i, %if.end159.i.cleanup315_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_is_locked() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__dev_get_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_memcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fl_set_key_mpls_opts(ptr noundef %nla_mpls_opts, ptr nocapture noundef %key_val, ptr nocapture noundef %key_mask, ptr noundef %extack) unnamed_addr #2 align 64 {
entry:
  %tb.i = alloca [6 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %nla_type = getelementptr inbounds %struct.nlattr, ptr %nla_mpls_opts, i32 0, i32 1
  %0 = ptrtoint ptr %nla_type to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %nla_type, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %1)
  %tobool.not = icmp sgt i16 %1, -1
  br i1 %tobool.not, label %do.body, label %if.end3

do.body:                                          ; preds = %entry
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @fl_set_key_mpls_opts.__msg) #12
  %tobool1.not = icmp eq ptr %extack, null
  br i1 %tobool1.not, label %do.body.cleanup_crit_edge, label %if.then2

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then2:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %2 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @fl_set_key_mpls_opts.__msg, ptr %extack, align 4
  %bad_attr = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 1
  %3 = ptrtoint ptr %bad_attr to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %nla_mpls_opts, ptr %bad_attr, align 4
  %policy = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 2
  %4 = ptrtoint ptr %policy to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %policy, align 4
  br label %cleanup

if.end3:                                          ; preds = %entry
  %5 = ptrtoint ptr %nla_mpls_opts to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %nla_mpls_opts, align 2
  %conv.i = zext i16 %6 to i32
  %sub.i = add nsw i32 %conv.i, -4
  call void @__sanitizer_cov_trace_const_cmp2(i16 7, i16 %6)
  %cmp.i124 = icmp ugt i16 %6, 7
  br i1 %cmp.i124, label %land.lhs.true.i.lr.ph, label %if.end3.for.end_crit_edge

if.end3.for.end_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

land.lhs.true.i.lr.ph:                            ; preds = %if.end3
  %add.ptr.i = getelementptr i8, ptr %nla_mpls_opts, i32 4
  %7 = getelementptr inbounds [6 x ptr], ptr %tb.i, i32 0, i32 1
  %8 = getelementptr inbounds [6 x ptr], ptr %tb.i, i32 0, i32 2
  %9 = getelementptr inbounds [6 x ptr], ptr %tb.i, i32 0, i32 3
  %10 = getelementptr inbounds [6 x ptr], ptr %tb.i, i32 0, i32 4
  %11 = getelementptr inbounds [6 x ptr], ptr %tb.i, i32 0, i32 5
  %used_lses.i.i = getelementptr inbounds %struct.flow_dissector_key_mpls, ptr %key_val, i32 0, i32 1
  %used_lses.i193.i = getelementptr inbounds %struct.flow_dissector_key_mpls, ptr %key_mask, i32 0, i32 1
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %for.inc.land.lhs.true.i_crit_edge, %land.lhs.true.i.lr.ph
  %nla_lse.0126 = phi ptr [ %add.ptr.i, %land.lhs.true.i.lr.ph ], [ %add.ptr.i65, %for.inc.land.lhs.true.i_crit_edge ]
  %rem.0125 = phi i32 [ %sub.i, %land.lhs.true.i.lr.ph ], [ %sub1.i, %for.inc.land.lhs.true.i_crit_edge ]
  %12 = ptrtoint ptr %nla_lse.0126 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %nla_lse.0126, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %13)
  %cmp1.i = icmp ult i16 %13, 4
  %conv.i58 = zext i16 %13 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %rem.0125, i32 %conv.i58)
  %cmp5.i.not = icmp ult i32 %rem.0125, %conv.i58
  %or.cond = select i1 %cmp1.i, i1 true, i1 %cmp5.i.not
  br i1 %or.cond, label %land.lhs.true.i.do.body29_crit_edge, label %for.body

land.lhs.true.i.do.body29_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body29

for.body:                                         ; preds = %land.lhs.true.i
  %nla_type.i = getelementptr inbounds %struct.nlattr, ptr %nla_lse.0126, i32 0, i32 1
  %14 = ptrtoint ptr %nla_type.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %nla_type.i, align 2
  %16 = and i16 %15, 16383
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %16)
  %cmp.not = icmp eq i16 %16, 1
  br i1 %cmp.not, label %if.end20, label %do.body10

do.body10:                                        ; preds = %for.body
  call void @do_trace_netlink_extack(ptr noundef nonnull @fl_set_key_mpls_opts.__msg.24) #12
  %tobool12.not = icmp eq ptr %extack, null
  br i1 %tobool12.not, label %do.body10.cleanup_crit_edge, label %if.then13

do.body10.cleanup_crit_edge:                      ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then13:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #14
  %17 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @fl_set_key_mpls_opts.__msg.24, ptr %extack, align 4
  %bad_attr15 = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 1
  %18 = ptrtoint ptr %bad_attr15 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %nla_lse.0126, ptr %bad_attr15, align 4
  %policy16 = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 2
  %19 = ptrtoint ptr %policy16 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %policy16, align 4
  br label %cleanup

if.end20:                                         ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tb.i) #12
  %20 = call ptr @memset(ptr %tb.i, i32 255, i32 24)
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %15)
  %tobool.not.i.i = icmp sgt i16 %15, -1
  br i1 %tobool.not.i.i, label %do.body.i.i, label %nla_parse_nested.exit.i

do.body.i.i:                                      ; preds = %if.end20
  call void @do_trace_netlink_extack(ptr noundef nonnull @nla_parse_nested.__msg) #12
  %tobool1.not.i.i = icmp eq ptr %extack, null
  br i1 %tobool1.not.i.i, label %do.body.i.i.fl_set_key_mpls_lse.exit.thread_crit_edge, label %if.then2.i.i

do.body.i.i.fl_set_key_mpls_lse.exit.thread_crit_edge: ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fl_set_key_mpls_lse.exit.thread

if.then2.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %21 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @nla_parse_nested.__msg, ptr %extack, align 4
  %bad_attr.i.i = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 1
  %22 = ptrtoint ptr %bad_attr.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %nla_lse.0126, ptr %bad_attr.i.i, align 4
  %policy3.i.i = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 2
  %23 = ptrtoint ptr %policy3.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %policy3.i.i, align 4
  br label %fl_set_key_mpls_lse.exit.thread

nla_parse_nested.exit.i:                          ; preds = %if.end20
  %add.ptr.i.i.i = getelementptr i8, ptr %nla_lse.0126, i32 4
  %24 = ptrtoint ptr %nla_lse.0126 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %nla_lse.0126, align 2
  %conv.i.i.i = zext i16 %25 to i32
  %sub.i.i.i = add nsw i32 %conv.i.i.i, -4
  %call6.i.i = call i32 @__nla_parse(ptr noundef nonnull %tb.i, i32 noundef 5, ptr noundef %add.ptr.i.i.i, i32 noundef %sub.i.i.i, ptr noundef nonnull @mpls_stack_entry_policy, i32 noundef 31, ptr noundef %extack) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i)
  %cmp.i59 = icmp slt i32 %call6.i.i, 0
  br i1 %cmp.i59, label %nla_parse_nested.exit.i.fl_set_key_mpls_lse.exit.thread_crit_edge, label %if.end.i

nla_parse_nested.exit.i.fl_set_key_mpls_lse.exit.thread_crit_edge: ; preds = %nla_parse_nested.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fl_set_key_mpls_lse.exit.thread

if.end.i:                                         ; preds = %nla_parse_nested.exit.i
  %26 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %7, align 4
  %tobool.not.i = icmp eq ptr %27, null
  br i1 %tobool.not.i, label %do.body.i, label %if.end5.i

do.body.i:                                        ; preds = %if.end.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @fl_set_key_mpls_lse.__msg) #12
  %tobool2.not.i = icmp eq ptr %extack, null
  br i1 %tobool2.not.i, label %do.body.i.fl_set_key_mpls_lse.exit.thread_crit_edge, label %if.then3.i

do.body.i.fl_set_key_mpls_lse.exit.thread_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fl_set_key_mpls_lse.exit.thread

if.then3.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %28 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @fl_set_key_mpls_lse.__msg, ptr %extack, align 4
  br label %fl_set_key_mpls_lse.exit.thread

if.end5.i:                                        ; preds = %if.end.i
  %add.ptr.i.i191.i = getelementptr i8, ptr %27, i32 4
  %29 = ptrtoint ptr %add.ptr.i.i191.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %add.ptr.i.i191.i, align 1
  %31 = add i8 %30, -8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -7, i8 %31)
  %32 = icmp ult i8 %31, -7
  br i1 %32, label %do.body14.i, label %if.end23.i

do.body14.i:                                      ; preds = %if.end5.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @fl_set_key_mpls_lse.__msg.26) #12
  %tobool16.not.i = icmp eq ptr %extack, null
  br i1 %tobool16.not.i, label %do.body14.i.fl_set_key_mpls_lse.exit.thread_crit_edge, label %if.then17.i

do.body14.i.fl_set_key_mpls_lse.exit.thread_crit_edge: ; preds = %do.body14.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fl_set_key_mpls_lse.exit.thread

if.then17.i:                                      ; preds = %do.body14.i
  call void @__sanitizer_cov_trace_pc() #14
  %33 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @fl_set_key_mpls_lse.__msg.26, ptr %extack, align 4
  %34 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %7, align 4
  %bad_attr.i = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 1
  %36 = ptrtoint ptr %bad_attr.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %35, ptr %bad_attr.i, align 4
  %policy.i = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 2
  %37 = ptrtoint ptr %policy.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %policy.i, align 4
  br label %fl_set_key_mpls_lse.exit.thread

if.end23.i:                                       ; preds = %if.end5.i
  %sub.i60 = add nsw i8 %30, -1
  %conv26.i = zext i8 %sub.i60 to i32
  %shl.i.i = shl nuw nsw i32 1, %conv26.i
  %38 = ptrtoint ptr %used_lses.i.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %used_lses.i.i, align 4
  %40 = trunc i32 %shl.i.i to i8
  %conv1.i.i = or i8 %39, %40
  store i8 %conv1.i.i, ptr %used_lses.i.i, align 4
  %41 = ptrtoint ptr %used_lses.i193.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %used_lses.i193.i, align 4
  %conv1.i194.i = or i8 %42, %40
  store i8 %conv1.i194.i, ptr %used_lses.i193.i, align 4
  %arrayidx28.i = getelementptr [7 x %struct.flow_dissector_mpls_lse], ptr %key_val, i32 0, i32 %conv26.i
  %arrayidx31.i = getelementptr [7 x %struct.flow_dissector_mpls_lse], ptr %key_mask, i32 0, i32 %conv26.i
  %43 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %8, align 4
  %tobool33.not.i = icmp eq ptr %44, null
  br i1 %tobool33.not.i, label %if.end23.i.if.end41.i_crit_edge, label %if.then34.i

if.end23.i.if.end41.i_crit_edge:                  ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end41.i

if.then34.i:                                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i.i195.i = getelementptr i8, ptr %44, i32 4
  %45 = ptrtoint ptr %add.ptr.i.i195.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %add.ptr.i.i195.i, align 1
  %conv37.i = zext i8 %46 to i32
  %47 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %bf.load.i = load i32, ptr %arrayidx28.i, align 4
  %bf.shl.i = shl nuw i32 %conv37.i, 24
  %bf.clear.i = and i32 %bf.load.i, 16777215
  %bf.set.i = or i32 %bf.clear.i, %bf.shl.i
  store i32 %bf.set.i, ptr %arrayidx28.i, align 4
  %48 = ptrtoint ptr %arrayidx31.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %bf.load38.i = load i32, ptr %arrayidx31.i, align 4
  %bf.set40.i = or i32 %bf.load38.i, -16777216
  store i32 %bf.set40.i, ptr %arrayidx31.i, align 4
  br label %if.end41.i

if.end41.i:                                       ; preds = %if.then34.i, %if.end23.i.if.end41.i_crit_edge
  %49 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %9, align 4
  %tobool43.not.i = icmp eq ptr %50, null
  br i1 %tobool43.not.i, label %if.end41.i.if.end71.i_crit_edge, label %if.then44.i

if.end41.i.if.end71.i_crit_edge:                  ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end71.i

if.then44.i:                                      ; preds = %if.end41.i
  %add.ptr.i.i196.i = getelementptr i8, ptr %50, i32 4
  %51 = ptrtoint ptr %add.ptr.i.i196.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %add.ptr.i.i196.i, align 1
  %conv47.i = zext i8 %52 to i32
  %and.i61 = and i32 %conv47.i, 254
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i61)
  %tobool48.not.i = icmp eq i32 %and.i61, 0
  br i1 %tobool48.not.i, label %if.end61.i, label %do.body50.i

do.body50.i:                                      ; preds = %if.then44.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @fl_set_key_mpls_lse.__msg.27) #12
  %tobool52.not.i = icmp eq ptr %extack, null
  br i1 %tobool52.not.i, label %do.body50.i.fl_set_key_mpls_lse.exit.thread_crit_edge, label %if.then53.i

do.body50.i.fl_set_key_mpls_lse.exit.thread_crit_edge: ; preds = %do.body50.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fl_set_key_mpls_lse.exit.thread

if.then53.i:                                      ; preds = %do.body50.i
  call void @__sanitizer_cov_trace_pc() #14
  %53 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @fl_set_key_mpls_lse.__msg.27, ptr %extack, align 4
  %54 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %9, align 4
  %bad_attr56.i = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 1
  %56 = ptrtoint ptr %bad_attr56.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %55, ptr %bad_attr56.i, align 4
  %policy57.i = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 2
  %57 = ptrtoint ptr %policy57.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr null, ptr %policy57.i, align 4
  br label %fl_set_key_mpls_lse.exit.thread

if.end61.i:                                       ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #14
  %58 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %bf.load63.i = load i32, ptr %arrayidx28.i, align 4
  %bf.value64.i = shl nuw nsw i32 %conv47.i, 23
  %bf.shl65.i = and i32 %bf.value64.i, 8388608
  %bf.clear66.i = and i32 %bf.load63.i, -8388609
  %bf.set67.i = or i32 %bf.clear66.i, %bf.shl65.i
  store i32 %bf.set67.i, ptr %arrayidx28.i, align 4
  %59 = ptrtoint ptr %arrayidx31.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %bf.load68.i = load i32, ptr %arrayidx31.i, align 4
  %bf.set70.i = or i32 %bf.load68.i, 8388608
  store i32 %bf.set70.i, ptr %arrayidx31.i, align 4
  br label %if.end71.i

if.end71.i:                                       ; preds = %if.end61.i, %if.end41.i.if.end71.i_crit_edge
  %60 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %10, align 4
  %tobool73.not.i = icmp eq ptr %61, null
  br i1 %tobool73.not.i, label %if.end71.i.if.end105.i_crit_edge, label %if.then74.i

if.end71.i.if.end105.i_crit_edge:                 ; preds = %if.end71.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end105.i

if.then74.i:                                      ; preds = %if.end71.i
  %add.ptr.i.i197.i = getelementptr i8, ptr %61, i32 4
  %62 = ptrtoint ptr %add.ptr.i.i197.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %add.ptr.i.i197.i, align 1
  %conv77.i = zext i8 %63 to i32
  %and78.i = and i32 %conv77.i, 248
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and78.i)
  %tobool79.not.i = icmp eq i32 %and78.i, 0
  br i1 %tobool79.not.i, label %if.end92.i, label %do.body81.i

do.body81.i:                                      ; preds = %if.then74.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @fl_set_key_mpls_lse.__msg.28) #12
  %tobool83.not.i = icmp eq ptr %extack, null
  br i1 %tobool83.not.i, label %do.body81.i.fl_set_key_mpls_lse.exit.thread_crit_edge, label %if.then84.i

do.body81.i.fl_set_key_mpls_lse.exit.thread_crit_edge: ; preds = %do.body81.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fl_set_key_mpls_lse.exit.thread

if.then84.i:                                      ; preds = %do.body81.i
  call void @__sanitizer_cov_trace_pc() #14
  %64 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr @fl_set_key_mpls_lse.__msg.28, ptr %extack, align 4
  %65 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %10, align 4
  %bad_attr87.i = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 1
  %67 = ptrtoint ptr %bad_attr87.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %66, ptr %bad_attr87.i, align 4
  %policy88.i = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 2
  %68 = ptrtoint ptr %policy88.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr null, ptr %policy88.i, align 4
  br label %fl_set_key_mpls_lse.exit.thread

if.end92.i:                                       ; preds = %if.then74.i
  call void @__sanitizer_cov_trace_pc() #14
  %69 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %bf.load94.i = load i32, ptr %arrayidx28.i, align 4
  %bf.value95.i = shl nuw nsw i32 %conv77.i, 20
  %bf.shl96.i = and i32 %bf.value95.i, 7340032
  %bf.clear97.i = and i32 %bf.load94.i, -7340033
  %bf.set98.i = or i32 %bf.clear97.i, %bf.shl96.i
  store i32 %bf.set98.i, ptr %arrayidx28.i, align 4
  %70 = ptrtoint ptr %arrayidx31.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %bf.load99.i = load i32, ptr %arrayidx31.i, align 4
  %bf.set101.i = or i32 %bf.load99.i, 7340032
  store i32 %bf.set101.i, ptr %arrayidx31.i, align 4
  br label %if.end105.i

if.end105.i:                                      ; preds = %if.end92.i, %if.end71.i.if.end105.i_crit_edge
  %71 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %11, align 4
  %tobool107.not.i = icmp eq ptr %72, null
  br i1 %tobool107.not.i, label %if.end105.i.for.inc_crit_edge, label %if.then108.i

if.end105.i.for.inc_crit_edge:                    ; preds = %if.end105.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then108.i:                                     ; preds = %if.end105.i
  %add.ptr.i.i198.i = getelementptr i8, ptr %72, i32 4
  %73 = ptrtoint ptr %add.ptr.i.i198.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %add.ptr.i.i198.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048576, i32 %74)
  %tobool112.not.i = icmp ult i32 %74, 1048576
  br i1 %tobool112.not.i, label %if.end125.i, label %do.body114.i

do.body114.i:                                     ; preds = %if.then108.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @fl_set_key_mpls_lse.__msg.29) #12
  %tobool116.not.i = icmp eq ptr %extack, null
  br i1 %tobool116.not.i, label %do.body114.i.fl_set_key_mpls_lse.exit.thread_crit_edge, label %if.then117.i

do.body114.i.fl_set_key_mpls_lse.exit.thread_crit_edge: ; preds = %do.body114.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fl_set_key_mpls_lse.exit.thread

if.then117.i:                                     ; preds = %do.body114.i
  call void @__sanitizer_cov_trace_pc() #14
  %75 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr @fl_set_key_mpls_lse.__msg.29, ptr %extack, align 4
  %76 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %11, align 4
  %bad_attr120.i = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 1
  %78 = ptrtoint ptr %bad_attr120.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %77, ptr %bad_attr120.i, align 4
  %policy121.i = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 2
  %79 = ptrtoint ptr %policy121.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr null, ptr %policy121.i, align 4
  br label %fl_set_key_mpls_lse.exit.thread

if.end125.i:                                      ; preds = %if.then108.i
  call void @__sanitizer_cov_trace_pc() #14
  %80 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %bf.load126.i = load i32, ptr %arrayidx28.i, align 4
  %bf.clear128.i = and i32 %bf.load126.i, -1048576
  %bf.set129.i = or i32 %bf.clear128.i, %74
  store i32 %bf.set129.i, ptr %arrayidx28.i, align 4
  %81 = ptrtoint ptr %arrayidx31.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %bf.load130.i = load i32, ptr %arrayidx31.i, align 4
  %bf.set132.i = or i32 %bf.load130.i, 1048575
  store i32 %bf.set132.i, ptr %arrayidx31.i, align 4
  br label %for.inc

fl_set_key_mpls_lse.exit.thread:                  ; preds = %if.then117.i, %do.body114.i.fl_set_key_mpls_lse.exit.thread_crit_edge, %if.then84.i, %do.body81.i.fl_set_key_mpls_lse.exit.thread_crit_edge, %if.then53.i, %do.body50.i.fl_set_key_mpls_lse.exit.thread_crit_edge, %if.then17.i, %do.body14.i.fl_set_key_mpls_lse.exit.thread_crit_edge, %if.then3.i, %do.body.i.fl_set_key_mpls_lse.exit.thread_crit_edge, %nla_parse_nested.exit.i.fl_set_key_mpls_lse.exit.thread_crit_edge, %if.then2.i.i, %do.body.i.i.fl_set_key_mpls_lse.exit.thread_crit_edge
  %retval.5.i.ph = phi i32 [ -22, %do.body.i.i.fl_set_key_mpls_lse.exit.thread_crit_edge ], [ -22, %if.then2.i.i ], [ -22, %do.body114.i.fl_set_key_mpls_lse.exit.thread_crit_edge ], [ -22, %do.body81.i.fl_set_key_mpls_lse.exit.thread_crit_edge ], [ -22, %do.body50.i.fl_set_key_mpls_lse.exit.thread_crit_edge ], [ -22, %if.then117.i ], [ -22, %if.then84.i ], [ -22, %if.then53.i ], [ -22, %do.body14.i.fl_set_key_mpls_lse.exit.thread_crit_edge ], [ -22, %if.then17.i ], [ -22, %do.body.i.fl_set_key_mpls_lse.exit.thread_crit_edge ], [ -22, %if.then3.i ], [ %call6.i.i, %nla_parse_nested.exit.i.fl_set_key_mpls_lse.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tb.i) #12
  br label %cleanup

for.inc:                                          ; preds = %if.end125.i, %if.end105.i.for.inc_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tb.i) #12
  %82 = ptrtoint ptr %nla_lse.0126 to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %nla_lse.0126, align 2
  %conv.i62 = zext i16 %83 to i32
  %sub.i63 = add nuw nsw i32 %conv.i62, 3
  %and.i64 = and i32 %sub.i63, 131068
  %sub1.i = sub nsw i32 %rem.0125, %and.i64
  %add.ptr.i65 = getelementptr i8, ptr %nla_lse.0126, i32 %and.i64
  %cmp.i = icmp sgt i32 %sub1.i, 3
  br i1 %cmp.i, label %for.inc.land.lhs.true.i_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.inc.land.lhs.true.i_crit_edge:                ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true.i

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end3.for.end_crit_edge
  %rem.0.lcssa = phi i32 [ %sub.i, %if.end3.for.end_crit_edge ], [ %sub1.i, %for.inc.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.0.lcssa)
  %tobool27.not = icmp eq i32 %rem.0.lcssa, 0
  br i1 %tobool27.not, label %for.end.cleanup_crit_edge, label %for.end.do.body29_crit_edge

for.end.do.body29_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body29

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body29:                                        ; preds = %for.end.do.body29_crit_edge, %land.lhs.true.i.do.body29_crit_edge
  call void @do_trace_netlink_extack(ptr noundef nonnull @fl_set_key_mpls_opts.__msg.25) #12
  %tobool31.not = icmp eq ptr %extack, null
  br i1 %tobool31.not, label %do.body29.cleanup_crit_edge, label %if.then32

do.body29.cleanup_crit_edge:                      ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then32:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #14
  %84 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr @fl_set_key_mpls_opts.__msg.25, ptr %extack, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then32, %do.body29.cleanup_crit_edge, %for.end.cleanup_crit_edge, %fl_set_key_mpls_lse.exit.thread, %if.then13, %do.body10.cleanup_crit_edge, %if.then2, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then2 ], [ -22, %do.body.cleanup_crit_edge ], [ -22, %if.then13 ], [ -22, %do.body10.cleanup_crit_edge ], [ -22, %if.then32 ], [ -22, %do.body29.cleanup_crit_edge ], [ 0, %for.end.cleanup_crit_edge ], [ %retval.5.i.ph, %fl_set_key_mpls_lse.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fl_set_geneve_opt(ptr noundef %nla, ptr nocapture noundef %key, i32 noundef %depth, i32 noundef %option_len, ptr noundef %extack) unnamed_addr #2 align 64 {
entry:
  %tb = alloca [4 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tb) #12
  %0 = getelementptr inbounds [4 x ptr], ptr %tb, i32 0, i32 1
  %1 = getelementptr inbounds [4 x ptr], ptr %tb, i32 0, i32 2
  %2 = getelementptr inbounds [4 x ptr], ptr %tb, i32 0, i32 3
  %3 = tail call i32 @llvm.usub.sat.i32(i32 %option_len, i32 4)
  %enc_opts = getelementptr inbounds %struct.fl_flow_key, ptr %key, i32 0, i32 18
  %len = getelementptr inbounds %struct.fl_flow_key, ptr %key, i32 0, i32 18, i32 1
  %4 = call ptr @memset(ptr %tb, i32 255, i32 16)
  %5 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %len, align 1
  %idxprom = zext i8 %6 to i32
  %arrayidx = getelementptr [255 x i8], ptr %enc_opts, i32 0, i32 %idxprom
  %7 = call ptr @memset(ptr %arrayidx, i32 255, i32 %option_len)
  %div = sdiv i32 %3, 4
  %conv = trunc i32 %div to i8
  %length = getelementptr inbounds %struct.geneve_opt, ptr %arrayidx, i32 0, i32 2
  %bf.value = and i8 %conv, 31
  %8 = ptrtoint ptr %length to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %bf.value, ptr %length, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %depth)
  %tobool.not = icmp eq i32 %depth, 0
  br i1 %tobool.not, label %if.then12, label %if.end13

if.then12:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %add = add nuw i32 %3, 4
  br label %cleanup116

if.end13:                                         ; preds = %entry
  %nla_type.i = getelementptr inbounds %struct.nlattr, ptr %nla, i32 0, i32 1
  %9 = ptrtoint ptr %nla_type.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %nla_type.i, align 2
  %11 = and i16 %10, 16383
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %11)
  %cmp14.not = icmp eq i16 %11, 1
  br i1 %cmp14.not, label %if.end20, label %do.body

do.body:                                          ; preds = %if.end13
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @fl_set_geneve_opt.__msg) #12
  %tobool17.not = icmp eq ptr %extack, null
  br i1 %tobool17.not, label %do.body.cleanup116_crit_edge, label %if.then18

do.body.cleanup116_crit_edge:                     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup116

if.then18:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %12 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @fl_set_geneve_opt.__msg, ptr %extack, align 4
  br label %cleanup116

if.end20:                                         ; preds = %if.end13
  %add.ptr.i.i = getelementptr i8, ptr %nla, i32 4
  %13 = ptrtoint ptr %nla to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %nla, align 2
  %conv.i.i = zext i16 %14 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -4
  %call2.i = call i32 @__nla_parse(ptr noundef nonnull %tb, i32 noundef 3, ptr noundef %add.ptr.i.i, i32 noundef %sub.i.i, ptr noundef nonnull @geneve_opt_policy, i32 noundef 0, ptr noundef %extack) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp22 = icmp slt i32 %call2.i, 0
  br i1 %cmp22, label %if.end20.cleanup116_crit_edge, label %if.end25

if.end20.cleanup116_crit_edge:                    ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup116

if.end25:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %option_len)
  %tobool26.not = icmp eq i32 %option_len, 0
  br i1 %tobool26.not, label %land.lhs.true, label %if.end43

land.lhs.true:                                    ; preds = %if.end25
  %15 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %0, align 4
  %tobool28.not = icmp eq ptr %16, null
  br i1 %tobool28.not, label %land.lhs.true.do.body35_crit_edge, label %lor.lhs.false

land.lhs.true.do.body35_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body35

lor.lhs.false:                                    ; preds = %land.lhs.true
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 4
  %tobool30.not = icmp eq ptr %18, null
  br i1 %tobool30.not, label %lor.lhs.false.do.body35_crit_edge, label %lor.lhs.false31

lor.lhs.false.do.body35_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body35

lor.lhs.false31:                                  ; preds = %lor.lhs.false
  %19 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %2, align 4
  %tobool33.not = icmp eq ptr %20, null
  br i1 %tobool33.not, label %lor.lhs.false31.do.body35_crit_edge, label %lor.lhs.false31.if.then46_crit_edge

lor.lhs.false31.if.then46_crit_edge:              ; preds = %lor.lhs.false31
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then46

lor.lhs.false31.do.body35_crit_edge:              ; preds = %lor.lhs.false31
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body35

do.body35:                                        ; preds = %lor.lhs.false31.do.body35_crit_edge, %lor.lhs.false.do.body35_crit_edge, %land.lhs.true.do.body35_crit_edge
  call void @do_trace_netlink_extack(ptr noundef nonnull @fl_set_geneve_opt.__msg.40) #12
  %tobool37.not = icmp eq ptr %extack, null
  br i1 %tobool37.not, label %do.body35.cleanup116_crit_edge, label %if.then38

do.body35.cleanup116_crit_edge:                   ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup116

if.then38:                                        ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #14
  %21 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @fl_set_geneve_opt.__msg.40, ptr %extack, align 4
  br label %cleanup116

if.end43:                                         ; preds = %if.end25
  %22 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %.pr = load ptr, ptr %2, align 4
  %tobool45.not = icmp eq ptr %.pr, null
  br i1 %tobool45.not, label %if.end43.if.end101_crit_edge, label %if.end43.if.then46_crit_edge

if.end43.if.then46_crit_edge:                     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then46

if.end43.if.end101_crit_edge:                     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end101

if.then46:                                        ; preds = %if.end43.if.then46_crit_edge, %lor.lhs.false31.if.then46_crit_edge
  %23 = phi ptr [ %.pr, %if.end43.if.then46_crit_edge ], [ %20, %lor.lhs.false31.if.then46_crit_edge ]
  %24 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %len, align 1
  %conv49 = zext i8 %25 to i32
  %26 = ptrtoint ptr %23 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %23, align 2
  %conv.i = zext i16 %27 to i32
  %sub.i = add nsw i32 %conv.i, -4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %27)
  %cmp52 = icmp ult i16 %27, 8
  br i1 %cmp52, label %do.body55, label %if.end63

do.body55:                                        ; preds = %if.then46
  call void @do_trace_netlink_extack(ptr noundef nonnull @fl_set_geneve_opt.__msg.41) #12
  %tobool57.not = icmp eq ptr %extack, null
  br i1 %tobool57.not, label %do.body55.cleanup116_crit_edge, label %if.then58

do.body55.cleanup116_crit_edge:                   ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup116

if.then58:                                        ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #14
  %28 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @fl_set_geneve_opt.__msg.41, ptr %extack, align 4
  br label %cleanup116

if.end63:                                         ; preds = %if.then46
  %29 = and i32 %conv.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool64.not = icmp eq i32 %29, 0
  br i1 %tobool64.not, label %if.end74, label %do.body66

do.body66:                                        ; preds = %if.end63
  call void @do_trace_netlink_extack(ptr noundef nonnull @fl_set_geneve_opt.__msg.42) #12
  %tobool68.not = icmp eq ptr %extack, null
  br i1 %tobool68.not, label %do.body66.cleanup116_crit_edge, label %if.then69

do.body66.cleanup116_crit_edge:                   ; preds = %do.body66
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup116

if.then69:                                        ; preds = %do.body66
  call void @__sanitizer_cov_trace_pc() #14
  %30 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @fl_set_geneve_opt.__msg.42, ptr %extack, align 4
  br label %cleanup116

if.end74:                                         ; preds = %if.end63
  %add76 = add nuw nsw i32 %conv.i, %conv49
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %add76)
  %cmp80 = icmp ugt i32 %add76, 255
  br i1 %cmp80, label %do.body83, label %if.end91

do.body83:                                        ; preds = %if.end74
  call void @do_trace_netlink_extack(ptr noundef nonnull @fl_set_geneve_opt.__msg.43) #12
  %tobool85.not = icmp eq ptr %extack, null
  br i1 %tobool85.not, label %do.body83.cleanup116_crit_edge, label %if.then86

do.body83.cleanup116_crit_edge:                   ; preds = %do.body83
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup116

if.then86:                                        ; preds = %do.body83
  call void @__sanitizer_cov_trace_pc() #14
  %31 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @fl_set_geneve_opt.__msg.43, ptr %extack, align 4
  br label %cleanup116

if.end91:                                         ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #14
  %32 = trunc i32 %sub.i to i8
  %33 = lshr i8 %32, 2
  %34 = ptrtoint ptr %length to i32
  call void @__asan_load1_noabort(i32 %34)
  %bf.load95 = load i8, ptr %length, align 1
  %bf.value96 = and i8 %33, 31
  %bf.clear97 = and i8 %bf.load95, -32
  %bf.set98 = or i8 %bf.clear97, %bf.value96
  store i8 %bf.set98, ptr %length, align 1
  %opt_data = getelementptr inbounds %struct.geneve_opt, ptr %arrayidx, i32 0, i32 3
  %add.ptr.i = getelementptr i8, ptr %23, i32 4
  %35 = call ptr @memcpy(ptr %opt_data, ptr %add.ptr.i, i32 %sub.i)
  br label %if.end101

if.end101:                                        ; preds = %if.end91, %if.end43.if.end101_crit_edge
  %data_len.1 = phi i32 [ %3, %if.end43.if.end101_crit_edge ], [ %sub.i, %if.end91 ]
  %36 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %0, align 4
  %tobool103.not = icmp eq ptr %37, null
  br i1 %tobool103.not, label %if.end101.if.end107_crit_edge, label %if.then104

if.end101.if.end107_crit_edge:                    ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end107

if.then104:                                       ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i.i159 = getelementptr i8, ptr %37, i32 4
  %38 = ptrtoint ptr %add.ptr.i.i159 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %add.ptr.i.i159, align 2
  %40 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %39, ptr %arrayidx, align 2
  br label %if.end107

if.end107:                                        ; preds = %if.then104, %if.end101.if.end107_crit_edge
  %41 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %1, align 4
  %tobool109.not = icmp eq ptr %42, null
  br i1 %tobool109.not, label %if.end107.if.end114_crit_edge, label %if.then110

if.end107.if.end114_crit_edge:                    ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end114

if.then110:                                       ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i.i160 = getelementptr i8, ptr %42, i32 4
  %43 = ptrtoint ptr %add.ptr.i.i160 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %add.ptr.i.i160, align 1
  %type113 = getelementptr inbounds %struct.geneve_opt, ptr %arrayidx, i32 0, i32 1
  %45 = ptrtoint ptr %type113 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %44, ptr %type113, align 2
  br label %if.end114

if.end114:                                        ; preds = %if.then110, %if.end107.if.end114_crit_edge
  %add115 = add nuw i32 %data_len.1, 4
  br label %cleanup116

cleanup116:                                       ; preds = %if.end114, %if.then86, %do.body83.cleanup116_crit_edge, %if.then69, %do.body66.cleanup116_crit_edge, %if.then58, %do.body55.cleanup116_crit_edge, %if.then38, %do.body35.cleanup116_crit_edge, %if.end20.cleanup116_crit_edge, %if.then18, %do.body.cleanup116_crit_edge, %if.then12
  %retval.1 = phi i32 [ %add115, %if.end114 ], [ %add, %if.then12 ], [ -22, %if.then18 ], [ -22, %do.body.cleanup116_crit_edge ], [ %call2.i, %if.end20.cleanup116_crit_edge ], [ -22, %if.then38 ], [ -22, %do.body35.cleanup116_crit_edge ], [ -34, %do.body83.cleanup116_crit_edge ], [ -34, %if.then86 ], [ -34, %do.body66.cleanup116_crit_edge ], [ -34, %if.then69 ], [ -34, %do.body55.cleanup116_crit_edge ], [ -34, %if.then58 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tb) #12
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fl_set_vxlan_opt(ptr noundef %nla, ptr nocapture noundef %key, i32 noundef %depth, i32 noundef %option_len, ptr noundef %extack) unnamed_addr #2 align 64 {
entry:
  %tb = alloca [2 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tb) #12
  %0 = ptrtoint ptr %tb to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %tb, align 4, !annotation !202
  %1 = getelementptr inbounds [2 x ptr], ptr %tb, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %1, align 4, !annotation !202
  %enc_opts = getelementptr inbounds %struct.fl_flow_key, ptr %key, i32 0, i32 18
  %len = getelementptr inbounds %struct.fl_flow_key, ptr %key, i32 0, i32 18, i32 1
  %3 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %len, align 1
  %idxprom = zext i8 %4 to i32
  %arrayidx = getelementptr [255 x i8], ptr %enc_opts, i32 0, i32 %idxprom
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %depth)
  %tobool.not = icmp eq i32 %depth, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %nla_type.i = getelementptr inbounds %struct.nlattr, ptr %nla, i32 0, i32 1
  %6 = ptrtoint ptr %nla_type.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %nla_type.i, align 2
  %8 = and i16 %7, 16383
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %8)
  %cmp.not = icmp eq i16 %8, 2
  br i1 %cmp.not, label %if.end6, label %do.body

do.body:                                          ; preds = %if.end
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @fl_set_vxlan_opt.__msg) #12
  %tobool3.not = icmp eq ptr %extack, null
  br i1 %tobool3.not, label %do.body.cleanup_crit_edge, label %if.then4

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %9 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @fl_set_vxlan_opt.__msg, ptr %extack, align 4
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %7)
  %tobool.not.i = icmp sgt i16 %7, -1
  br i1 %tobool.not.i, label %do.body.i, label %nla_parse_nested.exit

do.body.i:                                        ; preds = %if.end6
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nla_parse_nested.__msg) #12
  %tobool1.not.i = icmp eq ptr %extack, null
  br i1 %tobool1.not.i, label %do.body.i.cleanup_crit_edge, label %if.then2.i

do.body.i.cleanup_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then2.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %10 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @nla_parse_nested.__msg, ptr %extack, align 4
  %bad_attr.i = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 1
  %11 = ptrtoint ptr %bad_attr.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %nla, ptr %bad_attr.i, align 4
  %policy3.i = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 2
  %12 = ptrtoint ptr %policy3.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %policy3.i, align 4
  br label %cleanup

nla_parse_nested.exit:                            ; preds = %if.end6
  %add.ptr.i.i = getelementptr i8, ptr %nla, i32 4
  %13 = ptrtoint ptr %nla to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %nla, align 2
  %conv.i.i = zext i16 %14 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -4
  %call6.i = call i32 @__nla_parse(ptr noundef nonnull %tb, i32 noundef 1, ptr noundef %add.ptr.i.i, i32 noundef %sub.i.i, ptr noundef nonnull @vxlan_opt_policy, i32 noundef 31, ptr noundef %extack) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp8 = icmp slt i32 %call6.i, 0
  br i1 %cmp8, label %nla_parse_nested.exit.cleanup_crit_edge, label %if.end10

nla_parse_nested.exit.cleanup_crit_edge:          ; preds = %nla_parse_nested.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end10:                                         ; preds = %nla_parse_nested.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %option_len)
  %tobool11.not = icmp eq i32 %option_len, 0
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  %tobool13.not = icmp eq ptr %16, null
  br i1 %tobool11.not, label %land.lhs.true, label %if.end23

land.lhs.true:                                    ; preds = %if.end10
  br i1 %tobool13.not, label %do.body15, label %land.lhs.true.if.then26_crit_edge

land.lhs.true.if.then26_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then26

do.body15:                                        ; preds = %land.lhs.true
  call void @do_trace_netlink_extack(ptr noundef nonnull @fl_set_vxlan_opt.__msg.44) #12
  %tobool17.not = icmp eq ptr %extack, null
  br i1 %tobool17.not, label %do.body15.cleanup_crit_edge, label %if.then18

do.body15.cleanup_crit_edge:                      ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then18:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #14
  %17 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @fl_set_vxlan_opt.__msg.44, ptr %extack, align 4
  br label %cleanup

if.end23:                                         ; preds = %if.end10
  br i1 %tobool13.not, label %if.end23.cleanup_crit_edge, label %if.end23.if.then26_crit_edge

if.end23.if.then26_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then26

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then26:                                        ; preds = %if.end23.if.then26_crit_edge, %land.lhs.true.if.then26_crit_edge
  %add.ptr.i.i43 = getelementptr i8, ptr %16, i32 4
  %18 = ptrtoint ptr %add.ptr.i.i43 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %add.ptr.i.i43, align 4
  %and = and i32 %19, 4784127
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %and, ptr %arrayidx, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then26, %if.end23.cleanup_crit_edge, %if.then18, %do.body15.cleanup_crit_edge, %nla_parse_nested.exit.cleanup_crit_edge, %if.then2.i, %do.body.i.cleanup_crit_edge, %if.then4, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 4, %entry.cleanup_crit_edge ], [ -22, %if.then4 ], [ -22, %do.body.cleanup_crit_edge ], [ %call6.i, %nla_parse_nested.exit.cleanup_crit_edge ], [ -22, %if.then18 ], [ -22, %do.body15.cleanup_crit_edge ], [ 4, %if.then26 ], [ 4, %if.end23.cleanup_crit_edge ], [ -22, %if.then2.i ], [ -22, %do.body.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tb) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fl_set_erspan_opt(ptr noundef %nla, ptr nocapture noundef %key, i32 noundef %depth, i32 noundef %option_len, ptr noundef %extack) unnamed_addr #2 align 64 {
entry:
  %tb = alloca [5 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %tb) #12
  %0 = getelementptr inbounds [5 x ptr], ptr %tb, i32 0, i32 1
  %1 = getelementptr inbounds [5 x ptr], ptr %tb, i32 0, i32 2
  %2 = getelementptr inbounds [5 x ptr], ptr %tb, i32 0, i32 3
  %3 = getelementptr inbounds [5 x ptr], ptr %tb, i32 0, i32 4
  %enc_opts = getelementptr inbounds %struct.fl_flow_key, ptr %key, i32 0, i32 18
  %len = getelementptr inbounds %struct.fl_flow_key, ptr %key, i32 0, i32 18, i32 1
  %4 = call ptr @memset(ptr %tb, i32 255, i32 20)
  %5 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %len, align 1
  %idxprom = zext i8 %6 to i32
  %arrayidx = getelementptr [255 x i8], ptr %enc_opts, i32 0, i32 %idxprom
  %7 = getelementptr inbounds i8, ptr %arrayidx, i32 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_storeN_noabort(i32 %8, i32 8)
  store i64 -1, ptr %7, align 4
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %depth)
  %tobool.not = icmp eq i32 %depth, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %nla_type.i = getelementptr inbounds %struct.nlattr, ptr %nla, i32 0, i32 1
  %10 = ptrtoint ptr %nla_type.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %nla_type.i, align 2
  %12 = and i16 %11, 16383
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %12)
  %cmp.not = icmp eq i16 %12, 3
  br i1 %cmp.not, label %if.end6, label %do.body

do.body:                                          ; preds = %if.end
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @fl_set_erspan_opt.__msg) #12
  %tobool3.not = icmp eq ptr %extack, null
  br i1 %tobool3.not, label %do.body.cleanup_crit_edge, label %if.then4

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %13 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @fl_set_erspan_opt.__msg, ptr %extack, align 4
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %11)
  %tobool.not.i = icmp sgt i16 %11, -1
  br i1 %tobool.not.i, label %do.body.i, label %nla_parse_nested.exit

do.body.i:                                        ; preds = %if.end6
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nla_parse_nested.__msg) #12
  %tobool1.not.i = icmp eq ptr %extack, null
  br i1 %tobool1.not.i, label %do.body.i.cleanup_crit_edge, label %if.then2.i

do.body.i.cleanup_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then2.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %14 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @nla_parse_nested.__msg, ptr %extack, align 4
  %bad_attr.i = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 1
  %15 = ptrtoint ptr %bad_attr.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %nla, ptr %bad_attr.i, align 4
  %policy3.i = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 2
  %16 = ptrtoint ptr %policy3.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %policy3.i, align 4
  br label %cleanup

nla_parse_nested.exit:                            ; preds = %if.end6
  %add.ptr.i.i = getelementptr i8, ptr %nla, i32 4
  %17 = ptrtoint ptr %nla to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %nla, align 2
  %conv.i.i = zext i16 %18 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -4
  %call6.i = call i32 @__nla_parse(ptr noundef nonnull %tb, i32 noundef 4, ptr noundef %add.ptr.i.i, i32 noundef %sub.i.i, ptr noundef nonnull @erspan_opt_policy, i32 noundef 31, ptr noundef %extack) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp8 = icmp slt i32 %call6.i, 0
  br i1 %cmp8, label %nla_parse_nested.exit.cleanup_crit_edge, label %if.end10

nla_parse_nested.exit.cleanup_crit_edge:          ; preds = %nla_parse_nested.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end10:                                         ; preds = %nla_parse_nested.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %option_len)
  %tobool11.not = icmp eq i32 %option_len, 0
  %19 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %0, align 4
  %tobool13.not = icmp eq ptr %20, null
  br i1 %tobool11.not, label %land.lhs.true, label %if.end23

land.lhs.true:                                    ; preds = %if.end10
  br i1 %tobool13.not, label %do.body15, label %land.lhs.true.if.then26_crit_edge

land.lhs.true.if.then26_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then26

do.body15:                                        ; preds = %land.lhs.true
  call void @do_trace_netlink_extack(ptr noundef nonnull @fl_set_erspan_opt.__msg.45) #12
  %tobool17.not = icmp eq ptr %extack, null
  br i1 %tobool17.not, label %do.body15.cleanup_crit_edge, label %if.then18

do.body15.cleanup_crit_edge:                      ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then18:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #14
  %21 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @fl_set_erspan_opt.__msg.45, ptr %extack, align 4
  br label %cleanup

if.end23:                                         ; preds = %if.end10
  br i1 %tobool13.not, label %if.end30thread-pre-split, label %if.end23.if.then26_crit_edge

if.end23.if.then26_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then26

if.then26:                                        ; preds = %if.end23.if.then26_crit_edge, %land.lhs.true.if.then26_crit_edge
  %add.ptr.i.i134 = getelementptr i8, ptr %20, i32 4
  %22 = ptrtoint ptr %add.ptr.i.i134 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %add.ptr.i.i134, align 1
  %conv = zext i8 %23 to i32
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %conv, ptr %arrayidx, align 4
  br label %if.end30

if.end30thread-pre-split:                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %25)
  %.pr141 = load i32, ptr %arrayidx, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.end30thread-pre-split, %if.then26
  %26 = phi i32 [ %.pr141, %if.end30thread-pre-split ], [ %conv, %if.then26 ]
  %27 = zext i32 %26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.64)
  switch i32 %26, label %do.body91 [
    i32 1, label %if.then34
    i32 2, label %if.then59
  ]

if.then34:                                        ; preds = %if.end30
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 4
  %tobool38.not = icmp eq ptr %29, null
  br i1 %tobool11.not, label %land.lhs.true36, label %if.end48

land.lhs.true36:                                  ; preds = %if.then34
  br i1 %tobool38.not, label %do.body40, label %land.lhs.true36.if.then51_crit_edge

land.lhs.true36.if.then51_crit_edge:              ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then51

do.body40:                                        ; preds = %land.lhs.true36
  call void @do_trace_netlink_extack(ptr noundef nonnull @fl_set_erspan_opt.__msg.46) #12
  %tobool42.not = icmp eq ptr %extack, null
  br i1 %tobool42.not, label %do.body40.cleanup_crit_edge, label %if.then43

do.body40.cleanup_crit_edge:                      ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then43:                                        ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #14
  %30 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @fl_set_erspan_opt.__msg.46, ptr %extack, align 4
  br label %cleanup

if.end48:                                         ; preds = %if.then34
  br i1 %tobool38.not, label %if.end48.cleanup_crit_edge, label %if.end48.if.then51_crit_edge

if.end48.if.then51_crit_edge:                     ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then51

if.end48.cleanup_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then51:                                        ; preds = %if.end48.if.then51_crit_edge, %land.lhs.true36.if.then51_crit_edge
  %u = getelementptr inbounds %struct.erspan_metadata, ptr %arrayidx, i32 0, i32 1
  %31 = ptrtoint ptr %u to i32
  call void @__asan_storeN_noabort(i32 %31, i32 8)
  store i64 0, ptr %u, align 4
  %add.ptr.i.i135 = getelementptr i8, ptr %29, i32 4
  %32 = ptrtoint ptr %add.ptr.i.i135 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %add.ptr.i.i135, align 4
  store i32 %33, ptr %u, align 4
  br label %cleanup

if.then59:                                        ; preds = %if.end30
  %34 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %2, align 4
  %tobool63.not = icmp eq ptr %35, null
  br i1 %tobool11.not, label %land.lhs.true61, label %if.end75

land.lhs.true61:                                  ; preds = %if.then59
  br i1 %tobool63.not, label %land.lhs.true61.do.body67_crit_edge, label %lor.lhs.false

land.lhs.true61.do.body67_crit_edge:              ; preds = %land.lhs.true61
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body67

lor.lhs.false:                                    ; preds = %land.lhs.true61
  %36 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %3, align 4
  %tobool65.not = icmp eq ptr %37, null
  br i1 %tobool65.not, label %lor.lhs.false.do.body67_crit_edge, label %lor.lhs.false.if.then78_crit_edge

lor.lhs.false.if.then78_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then78

lor.lhs.false.do.body67_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body67

do.body67:                                        ; preds = %lor.lhs.false.do.body67_crit_edge, %land.lhs.true61.do.body67_crit_edge
  call void @do_trace_netlink_extack(ptr noundef nonnull @fl_set_erspan_opt.__msg.47) #12
  %tobool69.not = icmp eq ptr %extack, null
  br i1 %tobool69.not, label %do.body67.cleanup_crit_edge, label %if.then70

do.body67.cleanup_crit_edge:                      ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then70:                                        ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #14
  %38 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @fl_set_erspan_opt.__msg.47, ptr %extack, align 4
  br label %cleanup

if.end75:                                         ; preds = %if.then59
  br i1 %tobool63.not, label %if.end75.if.end82_crit_edge, label %if.end75.if.then78_crit_edge

if.end75.if.then78_crit_edge:                     ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then78

if.end75.if.end82_crit_edge:                      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end82

if.then78:                                        ; preds = %if.end75.if.then78_crit_edge, %lor.lhs.false.if.then78_crit_edge
  %add.ptr.i.i136 = getelementptr i8, ptr %35, i32 4
  %39 = ptrtoint ptr %add.ptr.i.i136 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %add.ptr.i.i136, align 1
  %dir = getelementptr inbounds %struct.erspan_metadata, ptr %arrayidx, i32 0, i32 1, i32 0, i32 2
  %41 = ptrtoint ptr %dir to i32
  call void @__asan_load2_noabort(i32 %41)
  %bf.load = load i16, ptr %dir, align 2
  %42 = shl i8 %40, 3
  %43 = and i8 %42, 8
  %bf.shl = zext i8 %43 to i16
  %bf.clear = and i16 %bf.load, -9
  %bf.set = or i16 %bf.clear, %bf.shl
  store i16 %bf.set, ptr %dir, align 2
  br label %if.end82

if.end82:                                         ; preds = %if.then78, %if.end75.if.end82_crit_edge
  %44 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %3, align 4
  %tobool84.not = icmp eq ptr %45, null
  br i1 %tobool84.not, label %if.end82.cleanup_crit_edge, label %if.then85

if.end82.cleanup_crit_edge:                       ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then85:                                        ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i.i137 = getelementptr i8, ptr %45, i32 4
  %46 = ptrtoint ptr %add.ptr.i.i137 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %add.ptr.i.i137, align 1
  %hwid2.i = getelementptr inbounds %struct.erspan_metadata, ptr %arrayidx, i32 0, i32 1, i32 0, i32 2
  %48 = ptrtoint ptr %hwid2.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %bf.load.i = load i16, ptr %hwid2.i, align 2
  %49 = shl i8 %47, 4
  %bf.shl.i = zext i8 %49 to i16
  %bf.clear.i = and i16 %bf.load.i, -1009
  %bf.set.i = or i16 %bf.clear.i, %bf.shl.i
  %50 = lshr i8 %47, 4
  %51 = and i8 %50, 3
  %bf.value7.i = zext i8 %51 to i16
  %bf.shl8.i = shl nuw nsw i16 %bf.value7.i, 8
  %bf.set10.i = or i16 %bf.shl8.i, %bf.set.i
  store i16 %bf.set10.i, ptr %hwid2.i, align 2
  br label %cleanup

do.body91:                                        ; preds = %if.end30
  call void @do_trace_netlink_extack(ptr noundef nonnull @fl_set_erspan_opt.__msg.48) #12
  %tobool93.not = icmp eq ptr %extack, null
  br i1 %tobool93.not, label %do.body91.cleanup_crit_edge, label %if.then94

do.body91.cleanup_crit_edge:                      ; preds = %do.body91
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then94:                                        ; preds = %do.body91
  call void @__sanitizer_cov_trace_pc() #14
  %52 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @fl_set_erspan_opt.__msg.48, ptr %extack, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then94, %do.body91.cleanup_crit_edge, %if.then85, %if.end82.cleanup_crit_edge, %if.then70, %do.body67.cleanup_crit_edge, %if.then51, %if.end48.cleanup_crit_edge, %if.then43, %do.body40.cleanup_crit_edge, %if.then18, %do.body15.cleanup_crit_edge, %nla_parse_nested.exit.cleanup_crit_edge, %if.then2.i, %do.body.i.cleanup_crit_edge, %if.then4, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 12, %entry.cleanup_crit_edge ], [ -22, %if.then4 ], [ -22, %do.body.cleanup_crit_edge ], [ %call6.i, %nla_parse_nested.exit.cleanup_crit_edge ], [ -22, %if.then18 ], [ -22, %do.body15.cleanup_crit_edge ], [ -22, %if.then43 ], [ -22, %do.body40.cleanup_crit_edge ], [ -22, %if.then70 ], [ -22, %do.body67.cleanup_crit_edge ], [ -22, %if.then94 ], [ -22, %do.body91.cleanup_crit_edge ], [ 12, %if.then85 ], [ 12, %if.end82.cleanup_crit_edge ], [ 12, %if.end48.cleanup_crit_edge ], [ 12, %if.then51 ], [ -22, %if.then2.i ], [ -22, %do.body.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %tb) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__nla_validate(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @__rhashtable_insert_fast(ptr noundef %ht, ptr noundef %key, ptr noundef %obj, [7 x i32] %params.coerce) unnamed_addr #5 align 64 {
entry:
  %arg = alloca %struct.rhashtable_compare_arg, align 4
  call void @__sanitizer_cov_trace_pc() #14
  %params.coerce.fca.6.extract = extractvalue [7 x i32] %params.coerce, 6
  %0 = inttoptr i32 %params.coerce.fca.6.extract to ptr
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %arg) #12
  %1 = getelementptr inbounds %struct.rhashtable_compare_arg, ptr %arg, i32 0, i32 1
  %2 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %ht, ptr %arg, align 4
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %key, ptr %1, align 4
  %4 = tail call i32 @llvm.read_register.i32(metadata !191) #12
  %and.i.i.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %7, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !204
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 696, ptr noundef nonnull @.str.6) #12
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %8 = ptrtoint ptr %ht to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %ht, align 4
  %call = tail call i32 @lockdep_rht_mutex_is_held(ptr noundef %ht) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %lor.lhs.false, label %rcu_read_lock.exit.do.end12_crit_edge

rcu_read_lock.exit.do.end12_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end12

lor.lhs.false:                                    ; preds = %rcu_read_lock.exit
  %call5 = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %land.lhs.true, label %lor.lhs.false.do.end12_crit_edge

lor.lhs.false.do.end12_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end12

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call7 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %land.lhs.true.do.end12_crit_edge, label %land.lhs.true9

land.lhs.true.do.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end12

land.lhs.true9:                                   ; preds = %land.lhs.true
  %.b2 = load i1, ptr @__rhashtable_insert_fast.__warned, align 1
  br i1 %.b2, label %land.lhs.true9.do.end12_crit_edge, label %if.then

land.lhs.true9.do.end12_crit_edge:                ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end12

if.then:                                          ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__rhashtable_insert_fast.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 715, ptr noundef nonnull @.str.1) #12
  br label %do.end12

do.end12:                                         ; preds = %if.then, %land.lhs.true9.do.end12_crit_edge, %land.lhs.true.do.end12_crit_edge, %lor.lhs.false.do.end12_crit_edge, %rcu_read_lock.exit.do.end12_crit_edge
  %params.coerce.fca.5.extract.i = extractvalue [7 x i32] %params.coerce, 5
  %10 = inttoptr i32 %params.coerce.fca.5.extract.i to ptr
  %head_offset.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 3
  %11 = ptrtoint ptr %head_offset.i.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %head_offset.i.i, align 2
  %conv.i.i = zext i16 %12 to i32
  %idx.neg.i.i = sub nsw i32 0, %conv.i.i
  %add.ptr.i.i = getelementptr i8, ptr %obj, i32 %idx.neg.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %params.coerce.fca.5.extract.i)
  %tobool.not.i4 = icmp eq i32 %params.coerce.fca.5.extract.i, 0
  br i1 %tobool.not.i4, label %if.then.i.i.i, label %cond.true.i, !prof !212

cond.true.i:                                      ; preds = %do.end12
  %params.coerce.fca.0.extract.i = extractvalue [7 x i32] %params.coerce, 0
  %conv.i = and i32 %params.coerce.fca.0.extract.i, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i)
  %tobool4.not.i = icmp eq i32 %conv.i, 0
  br i1 %tobool4.not.i, label %cond.false.i, label %cond.true.i.cond.end.i_crit_edge

cond.true.i.cond.end.i_crit_edge:                 ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end.i

cond.false.i:                                     ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #14
  %key_len6.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 1
  %13 = ptrtoint ptr %key_len6.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %key_len6.i, align 2
  %conv7.i = zext i16 %14 to i32
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %cond.true.i.cond.end.i_crit_edge
  %cond.i = phi i32 [ %conv7.i, %cond.false.i ], [ %conv.i, %cond.true.i.cond.end.i_crit_edge ]
  %hash_rnd.i = getelementptr inbounds %struct.bucket_table, ptr %9, i32 0, i32 2
  %15 = ptrtoint ptr %hash_rnd.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %hash_rnd.i, align 8
  %call8.i = tail call i32 %10(ptr noundef %add.ptr.i.i, i32 noundef %cond.i, i32 noundef %16) #12
  br label %rht_head_hashfn.exit

if.then.i.i.i:                                    ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #14
  %hash_rnd.i.i = getelementptr inbounds %struct.bucket_table, ptr %9, i32 0, i32 2
  %17 = ptrtoint ptr %hash_rnd.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %hash_rnd.i.i, align 8
  %params.coerce.fca.1.extract.i = extractvalue [7 x i32] %params.coerce, 1
  %params.sroa.3.4.extract.shift.i = lshr i32 %params.coerce.fca.1.extract.i, 16
  %add.ptr.i = getelementptr i8, ptr %add.ptr.i.i, i32 %params.sroa.3.4.extract.shift.i
  %hashfn.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 7
  %19 = ptrtoint ptr %hashfn.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hashfn.i.i.i, align 4
  %key_len1.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 1
  %21 = ptrtoint ptr %key_len1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %key_len1.i.i.i, align 4
  %call.i.i.i = tail call i32 %20(ptr noundef %add.ptr.i, i32 noundef %22, i32 noundef %18) #12
  br label %rht_head_hashfn.exit

rht_head_hashfn.exit:                             ; preds = %if.then.i.i.i, %cond.end.i
  %hash.2.i.i.sink.i = phi i32 [ %call8.i, %cond.end.i ], [ %call.i.i.i, %if.then.i.i.i ]
  %23 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %9, align 128
  %sub.i.i.i = add i32 %24, -1
  %and.i3.i.i = and i32 %sub.i.i.i, %hash.2.i.i.sink.i
  %nest.i = getelementptr inbounds %struct.bucket_table, ptr %9, i32 0, i32 1
  %25 = ptrtoint ptr %nest.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %nest.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.i5 = icmp eq i32 %26, 0
  br i1 %tobool.not.i5, label %cond.false.i8, label %cond.true.i7, !prof !206

cond.true.i7:                                     ; preds = %rht_head_hashfn.exit
  call void @__sanitizer_cov_trace_pc() #14
  %call.i6 = tail call ptr @rht_bucket_nested_insert(ptr noundef %ht, ptr noundef %9, i32 noundef %and.i3.i.i) #12
  br label %rht_bucket_insert.exit

cond.false.i8:                                    ; preds = %rht_head_hashfn.exit
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i = getelementptr %struct.bucket_table, ptr %9, i32 0, i32 8, i32 %and.i3.i.i
  br label %rht_bucket_insert.exit

rht_bucket_insert.exit:                           ; preds = %cond.false.i8, %cond.true.i7
  %cond.i9 = phi ptr [ %call.i6, %cond.true.i7 ], [ %arrayidx.i, %cond.false.i8 ]
  %tobool17.not = icmp eq ptr %cond.i9, null
  br i1 %tobool17.not, label %rht_bucket_insert.exit.out_crit_edge, label %if.end19

rht_bucket_insert.exit.out_crit_edge:             ; preds = %rht_bucket_insert.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end19:                                         ; preds = %rht_bucket_insert.exit
  tail call fastcc void @rht_lock(ptr noundef %9, ptr noundef nonnull %cond.i9)
  %future_tbl = getelementptr inbounds %struct.bucket_table, ptr %9, i32 0, i32 5
  %27 = ptrtoint ptr %future_tbl to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile ptr, ptr %future_tbl, align 4
  %tobool25.not = icmp eq ptr %28, null
  br i1 %tobool25.not, label %if.end30, label %if.end19.slow_path_crit_edge, !prof !206

if.end19.slow_path_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  br label %slow_path

slow_path:                                        ; preds = %rht_grow_above_100.exit.slow_path_crit_edge, %for.end.slow_path_crit_edge, %if.end19.slow_path_crit_edge
  call fastcc void @rht_unlock(ptr noundef %9, ptr noundef nonnull %cond.i9)
  %call.i11 = call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i11, label %slow_path.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i14

slow_path.rcu_read_unlock.exit_crit_edge:         ; preds = %slow_path
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true.i14:                                ; preds = %slow_path
  %call1.i12 = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i12)
  %tobool.not.i13 = icmp eq i32 %call1.i12, 0
  br i1 %tobool.not.i13, label %land.lhs.true.i14.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i16

land.lhs.true.i14.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i14
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true2.i16:                               ; preds = %land.lhs.true.i14
  %.b4.i15 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i15, label %land.lhs.true2.i16.rcu_read_unlock.exit_crit_edge, label %if.then.i17

land.lhs.true2.i16.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i16
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

if.then.i17:                                      ; preds = %land.lhs.true2.i16
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 724, ptr noundef nonnull @.str.9) #12
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i17, %land.lhs.true2.i16.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i14.rcu_read_unlock.exit_crit_edge, %slow_path.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !207
  %29 = call i32 @llvm.read_register.i32(metadata !191) #12
  %and.i.i.i.i.i18 = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i.i.i.i18 to ptr
  %preempt_count.i.i.i.i19 = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %preempt_count.i.i.i.i19 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %preempt_count.i.i.i.i19, align 4
  %sub.i.i.i20 = add i32 %32, -1
  store volatile i32 %sub.i.i.i20, ptr %preempt_count.i.i.i.i19, align 4
  call void @rcu_read_unlock_strict() #12
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  %call29 = call ptr @rhashtable_insert_slow(ptr noundef %ht, ptr noundef %key, ptr noundef %obj) #12
  br label %cleanup210

if.end30:                                         ; preds = %if.end19
  %call.i21 = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %9, i32 noundef %and.i3.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i21)
  %tobool.not.i22 = icmp eq i32 %call.i21, 0
  br i1 %tobool.not.i22, label %land.lhs.true.i24, label %if.end30.rht_ptr.exit_crit_edge

if.end30.rht_ptr.exit_crit_edge:                  ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  br label %rht_ptr.exit

land.lhs.true.i24:                                ; preds = %if.end30
  %call1.i23 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i23)
  %tobool2.not.i = icmp eq i32 %call1.i23, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i24.rht_ptr.exit_crit_edge, label %land.lhs.true3.i

land.lhs.true.i24.rht_ptr.exit_crit_edge:         ; preds = %land.lhs.true.i24
  call void @__sanitizer_cov_trace_pc() #14
  br label %rht_ptr.exit

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i24
  %.b7.i = load i1, ptr @rht_ptr.__warned, align 1
  br i1 %.b7.i, label %land.lhs.true3.i.rht_ptr.exit_crit_edge, label %if.then.i25

land.lhs.true3.i.rht_ptr.exit_crit_edge:          ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rht_ptr.exit

if.then.i25:                                      ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rht_ptr.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 377, ptr noundef nonnull @.str.13) #12
  br label %rht_ptr.exit

rht_ptr.exit:                                     ; preds = %if.then.i25, %land.lhs.true3.i.rht_ptr.exit_crit_edge, %land.lhs.true.i24.rht_ptr.exit_crit_edge, %if.end30.rht_ptr.exit_crit_edge
  %33 = ptrtoint ptr %cond.i9 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cond.i9, align 4
  %35 = ptrtoint ptr %34 to i32
  %and.i.i = and i32 %35, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %36 = ptrtoint ptr %cond.i9 to i32
  %or.i.i = or i32 %36, 1
  %cond.i.i = select i1 %tobool.not.i.i, i32 %or.i.i, i32 %and.i.i
  %and.i84 = and i32 %cond.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i84)
  %tobool.i.not85 = icmp eq i32 %and.i84, 0
  br i1 %tobool.i.not85, label %for.body.lr.ph, label %rht_ptr.exit.if.end152_crit_edge

rht_ptr.exit.if.end152_crit_edge:                 ; preds = %rht_ptr.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end152

for.body.lr.ph:                                   ; preds = %rht_ptr.exit
  %37 = inttoptr i32 %cond.i.i to ptr
  %tobool35.not = icmp eq ptr %key, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %params.coerce.fca.6.extract)
  %tobool37.not = icmp eq i32 %params.coerce.fca.6.extract, 0
  br label %for.body

for.body:                                         ; preds = %do.end147.for.body_crit_edge, %for.body.lr.ph
  %head.087 = phi ptr [ %37, %for.body.lr.ph ], [ %51, %do.end147.for.body_crit_edge ]
  %elasticity.086 = phi i32 [ 16, %for.body.lr.ph ], [ %dec, %do.end147.for.body_crit_edge ]
  %dec = add i32 %elasticity.086, -1
  br i1 %tobool35.not, label %for.body.do.body136_crit_edge, label %lor.lhs.false36

for.body.do.body136_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body136

lor.lhs.false36:                                  ; preds = %for.body
  %38 = ptrtoint ptr %head_offset.i.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %head_offset.i.i, align 2
  %conv.i29 = zext i16 %39 to i32
  %idx.neg.i30 = sub nsw i32 0, %conv.i29
  %add.ptr.i31 = getelementptr i8, ptr %head.087, i32 %idx.neg.i30
  br i1 %tobool37.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %lor.lhs.false36
  %call40 = call i32 %0(ptr noundef nonnull %arg, ptr noundef %add.ptr.i31) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %cond.true.cleanup_crit_edge, label %cond.true.do.body136_crit_edge

cond.true.do.body136_crit_edge:                   ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body136

cond.true.cleanup_crit_edge:                      ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cond.false:                                       ; preds = %lor.lhs.false36
  %40 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arg, align 4
  %key_offset.i = getelementptr inbounds %struct.rhashtable, ptr %41, i32 0, i32 3, i32 2
  %42 = ptrtoint ptr %key_offset.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %key_offset.i, align 4
  %conv.i32 = zext i16 %43 to i32
  %add.ptr.i33 = getelementptr i8, ptr %add.ptr.i31, i32 %conv.i32
  %44 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %1, align 4
  %key_len.i = getelementptr inbounds %struct.rhashtable, ptr %41, i32 0, i32 3, i32 1
  %46 = ptrtoint ptr %key_len.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %key_len.i, align 2
  %conv3.i = zext i16 %47 to i32
  %bcmp = call i32 @bcmp(ptr %add.ptr.i33, ptr %45, i32 %conv3.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool44.not = icmp eq i32 %bcmp, 0
  br i1 %tobool44.not, label %cond.false.cleanup_crit_edge, label %cond.false.do.body136_crit_edge

cond.false.do.body136_crit_edge:                  ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body136

cond.false.cleanup_crit_edge:                     ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %cond.false.cleanup_crit_edge, %cond.true.cleanup_crit_edge
  %48 = ptrtoint ptr %head_offset.i.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %head_offset.i.i, align 2
  %conv.i36 = zext i16 %49 to i32
  %idx.neg.i37 = sub nsw i32 0, %conv.i36
  %add.ptr.i38 = getelementptr i8, ptr %head.087, i32 %idx.neg.i37
  br label %out_unlock

do.body136:                                       ; preds = %cond.false.do.body136_crit_edge, %cond.true.do.body136_crit_edge, %for.body.do.body136_crit_edge
  %call137 = call i32 @lockdep_rht_bucket_is_held(ptr noundef %9, i32 noundef %and.i3.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call137)
  %tobool138.not = icmp eq i32 %call137, 0
  br i1 %tobool138.not, label %land.lhs.true139, label %do.body136.do.end147_crit_edge

do.body136.do.end147_crit_edge:                   ; preds = %do.body136
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end147

land.lhs.true139:                                 ; preds = %do.body136
  %call140 = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call140)
  %tobool141.not = icmp eq i32 %call140, 0
  br i1 %tobool141.not, label %land.lhs.true139.do.end147_crit_edge, label %land.lhs.true142

land.lhs.true139.do.end147_crit_edge:             ; preds = %land.lhs.true139
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end147

land.lhs.true142:                                 ; preds = %land.lhs.true139
  %.b2811 = load i1, ptr @__rhashtable_insert_fast.__warned.53, align 1
  br i1 %.b2811, label %land.lhs.true142.do.end147_crit_edge, label %if.then144

land.lhs.true142.do.end147_crit_edge:             ; preds = %land.lhs.true142
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end147

if.then144:                                       ; preds = %land.lhs.true142
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__rhashtable_insert_fast.__warned.53, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 732, ptr noundef nonnull @.str.13) #12
  br label %do.end147

do.end147:                                        ; preds = %if.then144, %land.lhs.true142.do.end147_crit_edge, %land.lhs.true139.do.end147_crit_edge, %do.body136.do.end147_crit_edge
  %50 = ptrtoint ptr %head.087 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %head.087, align 4
  %52 = ptrtoint ptr %51 to i32
  %and.i = and i32 %52, 1
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %do.end147.for.body_crit_edge, label %for.end

do.end147.for.body_crit_edge:                     ; preds = %do.end147
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %do.end147
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec)
  %phi.cmp = icmp slt i32 %dec, 1
  br i1 %phi.cmp, label %for.end.slow_path_crit_edge, label %for.end.if.end152_crit_edge

for.end.if.end152_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end152

for.end.slow_path_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %slow_path

if.end152:                                        ; preds = %for.end.if.end152_crit_edge, %rht_ptr.exit.if.end152_crit_edge
  %nelems.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 8
  %call.i.i.i39 = call zeroext i1 @__kasan_check_read(ptr noundef %nelems.i, i32 noundef 4) #12
  %53 = ptrtoint ptr %nelems.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %nelems.i, align 4
  %max_elems.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 2
  %55 = ptrtoint ptr %max_elems.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %max_elems.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %54, i32 %56)
  %cmp.i.not = icmp ult i32 %54, %56
  br i1 %cmp.i.not, label %if.end162, label %if.end152.out_unlock_crit_edge, !prof !206

if.end152.out_unlock_crit_edge:                   ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_unlock

if.end162:                                        ; preds = %if.end152
  %call.i.i.i41 = call zeroext i1 @__kasan_check_read(ptr noundef %nelems.i, i32 noundef 4) #12
  %57 = ptrtoint ptr %nelems.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile i32, ptr %nelems.i, align 4
  %59 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %9, align 128
  call void @__sanitizer_cov_trace_cmp4(i32 %58, i32 %60)
  %cmp.i42 = icmp ugt i32 %58, %60
  br i1 %cmp.i42, label %rht_grow_above_100.exit, label %if.end162.if.end171_crit_edge

if.end162.if.end171_crit_edge:                    ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end171

rht_grow_above_100.exit:                          ; preds = %if.end162
  %max_size.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 4
  %61 = ptrtoint ptr %max_size.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %max_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool.not.i43 = icmp eq i32 %62, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %60, i32 %62)
  %cmp4.i = icmp ult i32 %60, %62
  %spec.select.i = select i1 %tobool.not.i43, i1 true, i1 %cmp4.i
  br i1 %spec.select.i, label %rht_grow_above_100.exit.slow_path_crit_edge, label %rht_grow_above_100.exit.if.end171_crit_edge, !prof !212

rht_grow_above_100.exit.if.end171_crit_edge:      ; preds = %rht_grow_above_100.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end171

rht_grow_above_100.exit.slow_path_crit_edge:      ; preds = %rht_grow_above_100.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %slow_path

if.end171:                                        ; preds = %rht_grow_above_100.exit.if.end171_crit_edge, %if.end162.if.end171_crit_edge
  %call.i44 = call i32 @lockdep_rht_bucket_is_held(ptr noundef %9, i32 noundef %and.i3.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i44)
  %tobool.not.i45 = icmp eq i32 %call.i44, 0
  br i1 %tobool.not.i45, label %land.lhs.true.i48, label %if.end171.rht_ptr.exit56_crit_edge

if.end171.rht_ptr.exit56_crit_edge:               ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #14
  br label %rht_ptr.exit56

land.lhs.true.i48:                                ; preds = %if.end171
  %call1.i46 = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i46)
  %tobool2.not.i47 = icmp eq i32 %call1.i46, 0
  br i1 %tobool2.not.i47, label %land.lhs.true.i48.rht_ptr.exit56_crit_edge, label %land.lhs.true3.i50

land.lhs.true.i48.rht_ptr.exit56_crit_edge:       ; preds = %land.lhs.true.i48
  call void @__sanitizer_cov_trace_pc() #14
  br label %rht_ptr.exit56

land.lhs.true3.i50:                               ; preds = %land.lhs.true.i48
  %.b7.i49 = load i1, ptr @rht_ptr.__warned, align 1
  br i1 %.b7.i49, label %land.lhs.true3.i50.rht_ptr.exit56_crit_edge, label %if.then.i51

land.lhs.true3.i50.rht_ptr.exit56_crit_edge:      ; preds = %land.lhs.true3.i50
  call void @__sanitizer_cov_trace_pc() #14
  br label %rht_ptr.exit56

if.then.i51:                                      ; preds = %land.lhs.true3.i50
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rht_ptr.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 377, ptr noundef nonnull @.str.13) #12
  br label %rht_ptr.exit56

rht_ptr.exit56:                                   ; preds = %if.then.i51, %land.lhs.true3.i50.rht_ptr.exit56_crit_edge, %land.lhs.true.i48.rht_ptr.exit56_crit_edge, %if.end171.rht_ptr.exit56_crit_edge
  %63 = ptrtoint ptr %cond.i9 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %cond.i9, align 4
  %65 = ptrtoint ptr %64 to i32
  %and.i.i52 = and i32 %65, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i52)
  %tobool.not.i.i53 = icmp eq i32 %and.i.i52, 0
  %cond.i.i55 = select i1 %tobool.not.i.i53, i32 %or.i.i, i32 %and.i.i52
  %66 = inttoptr i32 %cond.i.i55 to ptr
  %67 = ptrtoint ptr %obj to i32
  call void @__asan_store4_noabort(i32 %67)
  store volatile ptr %66, ptr %obj, align 4
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %nelems.i, i32 noundef 4) #12
  call void @llvm.prefetch.p0(ptr %nelems.i, i32 1, i32 3, i32 1) #12
  %68 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nelems.i, ptr %nelems.i, i32 1, ptr elementtype(i32) %nelems.i) #12, !srcloc !240
  call fastcc void @rht_assign_unlock(ptr noundef %9, ptr noundef nonnull %cond.i9, ptr noundef %obj)
  %call.i.i.i58 = call zeroext i1 @__kasan_check_read(ptr noundef %nelems.i, i32 noundef 4) #12
  %69 = ptrtoint ptr %nelems.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load volatile i32, ptr %nelems.i, align 4
  %71 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %9, align 128
  %div8.i = lshr i32 %72, 2
  %mul.i = mul nuw i32 %div8.i, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %70, i32 %mul.i)
  %cmp.i59 = icmp ugt i32 %70, %mul.i
  br i1 %cmp.i59, label %rht_grow_above_75.exit, label %rht_ptr.exit56.out_crit_edge

rht_ptr.exit56.out_crit_edge:                     ; preds = %rht_ptr.exit56
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

rht_grow_above_75.exit:                           ; preds = %rht_ptr.exit56
  %max_size.i60 = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 4
  %73 = ptrtoint ptr %max_size.i60 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %max_size.i60, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool.not.i61 = icmp eq i32 %74, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %72, i32 %74)
  %cmp4.i62 = icmp ult i32 %72, %74
  %spec.select.i63 = select i1 %tobool.not.i61, i1 true, i1 %cmp4.i62
  br i1 %spec.select.i63, label %if.then207, label %rht_grow_above_75.exit.out_crit_edge

rht_grow_above_75.exit.out_crit_edge:             ; preds = %rht_grow_above_75.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.then207:                                       ; preds = %rht_grow_above_75.exit
  call void @__sanitizer_cov_trace_pc() #14
  %run_work = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %75 = load ptr, ptr @system_wq, align 4
  %call.i.i65 = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %75, ptr noundef %run_work) #12
  br label %out

out:                                              ; preds = %out_unlock, %if.then207, %rht_grow_above_75.exit.out_crit_edge, %rht_ptr.exit56.out_crit_edge, %rht_bucket_insert.exit.out_crit_edge
  %data.2 = phi ptr [ %data.3, %out_unlock ], [ inttoptr (i32 -12 to ptr), %rht_bucket_insert.exit.out_crit_edge ], [ null, %if.then207 ], [ null, %rht_grow_above_75.exit.out_crit_edge ], [ null, %rht_ptr.exit56.out_crit_edge ]
  %call.i66 = call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i66, label %out.rcu_read_unlock.exit76_crit_edge, label %land.lhs.true.i69

out.rcu_read_unlock.exit76_crit_edge:             ; preds = %out
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit76

land.lhs.true.i69:                                ; preds = %out
  %call1.i67 = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i67)
  %tobool.not.i68 = icmp eq i32 %call1.i67, 0
  br i1 %tobool.not.i68, label %land.lhs.true.i69.rcu_read_unlock.exit76_crit_edge, label %land.lhs.true2.i71

land.lhs.true.i69.rcu_read_unlock.exit76_crit_edge: ; preds = %land.lhs.true.i69
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit76

land.lhs.true2.i71:                               ; preds = %land.lhs.true.i69
  %.b4.i70 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i70, label %land.lhs.true2.i71.rcu_read_unlock.exit76_crit_edge, label %if.then.i72

land.lhs.true2.i71.rcu_read_unlock.exit76_crit_edge: ; preds = %land.lhs.true2.i71
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit76

if.then.i72:                                      ; preds = %land.lhs.true2.i71
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 724, ptr noundef nonnull @.str.9) #12
  br label %rcu_read_unlock.exit76

rcu_read_unlock.exit76:                           ; preds = %if.then.i72, %land.lhs.true2.i71.rcu_read_unlock.exit76_crit_edge, %land.lhs.true.i69.rcu_read_unlock.exit76_crit_edge, %out.rcu_read_unlock.exit76_crit_edge
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !207
  %76 = call i32 @llvm.read_register.i32(metadata !191) #12
  %and.i.i.i.i.i73 = and i32 %76, -16384
  %77 = inttoptr i32 %and.i.i.i.i.i73 to ptr
  %preempt_count.i.i.i.i74 = getelementptr inbounds %struct.thread_info, ptr %77, i32 0, i32 1
  %78 = ptrtoint ptr %preempt_count.i.i.i.i74 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load volatile i32, ptr %preempt_count.i.i.i.i74, align 4
  %sub.i.i.i75 = add i32 %79, -1
  store volatile i32 %sub.i.i.i75, ptr %preempt_count.i.i.i.i74, align 4
  call void @rcu_read_unlock_strict() #12
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  br label %cleanup210

out_unlock:                                       ; preds = %if.end152.out_unlock_crit_edge, %cleanup
  %data.3 = phi ptr [ %add.ptr.i38, %cleanup ], [ inttoptr (i32 -7 to ptr), %if.end152.out_unlock_crit_edge ]
  call fastcc void @rht_unlock(ptr noundef %9, ptr noundef nonnull %cond.i9)
  br label %out

cleanup210:                                       ; preds = %rcu_read_unlock.exit76, %rcu_read_unlock.exit
  %retval.0 = phi ptr [ %call29, %rcu_read_unlock.exit ], [ %data.2, %rcu_read_unlock.exit76 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %arg) #12
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rhashtable_insert_slow(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rht_bucket_nested_insert(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fl_init_dissector(ptr noundef %dissector, ptr noundef %mask) unnamed_addr #2 align 64 {
entry:
  %keys = alloca [28 x %struct.flow_dissector_key], align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 224, ptr nonnull %keys) #12
  %0 = call ptr @memset(ptr %keys, i32 255, i32 224)
  %call = tail call ptr @memchr_inv(ptr noundef %mask, i32 noundef 0, i32 noundef 8) #12
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.do.body5_crit_edge, label %do.body1

entry.do.body5_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body5

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %1 = ptrtoint ptr %keys to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 25, ptr %keys, align 4
  %offset = getelementptr inbounds %struct.flow_dissector_key, ptr %keys, i32 0, i32 1
  %2 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %offset, align 4
  br label %do.body5

do.body5:                                         ; preds = %do.body1, %entry.do.body5_crit_edge
  %cnt.0 = phi i32 [ 1, %do.body1 ], [ 0, %entry.do.body5_crit_edge ]
  %arrayidx6 = getelementptr [28 x %struct.flow_dissector_key], ptr %keys, i32 0, i32 %cnt.0
  %3 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %arrayidx6, align 4
  %offset9 = getelementptr [28 x %struct.flow_dissector_key], ptr %keys, i32 0, i32 %cnt.0, i32 1
  %4 = ptrtoint ptr %offset9 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 8, ptr %offset9, align 4
  %inc10 = add nuw nsw i32 %cnt.0, 1
  %arrayidx14 = getelementptr [28 x %struct.flow_dissector_key], ptr %keys, i32 0, i32 %inc10
  %5 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %arrayidx14, align 4
  %offset17 = getelementptr [28 x %struct.flow_dissector_key], ptr %keys, i32 0, i32 %inc10, i32 1
  %6 = ptrtoint ptr %offset17 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 24, ptr %offset17, align 4
  %inc18 = or i32 %cnt.0, 2
  %add.ptr22 = getelementptr i8, ptr %mask, i32 28
  %call23 = tail call ptr @memchr_inv(ptr noundef %add.ptr22, i32 noundef 0, i32 noundef 12) #12
  %tobool24.not = icmp eq ptr %call23, null
  br i1 %tobool24.not, label %do.body5.do.body37_crit_edge, label %do.body26

do.body5.do.body37_crit_edge:                     ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body37

do.body26:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx27 = getelementptr [28 x %struct.flow_dissector_key], ptr %keys, i32 0, i32 %inc18
  %7 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 7, ptr %arrayidx27, align 4
  %offset30 = getelementptr [28 x %struct.flow_dissector_key], ptr %keys, i32 0, i32 %inc18, i32 1
  %8 = ptrtoint ptr %offset30 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 28, ptr %offset30, align 4
  %inc31 = add nuw nsw i32 %cnt.0, 3
  br label %do.body37

do.body37:                                        ; preds = %do.body26, %do.body5.do.body37_crit_edge
  %cnt.1 = phi i32 [ %inc31, %do.body26 ], [ %inc18, %do.body5.do.body37_crit_edge ]
  %add.ptr38 = getelementptr i8, ptr %mask, i32 48
  %call39 = tail call ptr @memchr_inv(ptr noundef %add.ptr38, i32 noundef 0, i32 noundef 8) #12
  %tobool40.not = icmp eq ptr %call39, null
  br i1 %tobool40.not, label %do.body37.do.body53_crit_edge, label %do.body42

do.body37.do.body53_crit_edge:                    ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body53

do.body42:                                        ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx43 = getelementptr [28 x %struct.flow_dissector_key], ptr %keys, i32 0, i32 %cnt.1
  %9 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 2, ptr %arrayidx43, align 4
  %offset46 = getelementptr [28 x %struct.flow_dissector_key], ptr %keys, i32 0, i32 %cnt.1, i32 1
  %10 = ptrtoint ptr %offset46 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 48, ptr %offset46, align 4
  %inc47 = add nsw i32 %cnt.1, 1
  br label %do.body53

do.body53:                                        ; preds = %do.body42, %do.body37.do.body53_crit_edge
  %cnt.2 = phi i32 [ %inc47, %do.body42 ], [ %cnt.1, %do.body37.do.body53_crit_edge ]
  %call55 = tail call ptr @memchr_inv(ptr noundef %add.ptr38, i32 noundef 0, i32 noundef 32) #12
  %tobool56.not = icmp eq ptr %call55, null
  br i1 %tobool56.not, label %do.body53.do.body69_crit_edge, label %do.body58

do.body53.do.body69_crit_edge:                    ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body69

do.body58:                                        ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx59 = getelementptr [28 x %struct.flow_dissector_key], ptr %keys, i32 0, i32 %cnt.2
  %11 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 3, ptr %arrayidx59, align 4
  %offset62 = getelementptr [28 x %struct.flow_dissector_key], ptr %keys, i32 0, i32 %cnt.2, i32 1
  %12 = ptrtoint ptr %offset62 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 48, ptr %offset62, align 4
  %inc63 = add nsw i32 %cnt.2, 1
  br label %do.body69

do.body69:                                        ; preds = %do.body58, %do.body53.do.body69_crit_edge
  %cnt.3 = phi i32 [ %inc63, %do.body58 ], [ %cnt.2, %do.body53.do.body69_crit_edge ]
  %add.ptr70 = getelementptr i8, ptr %mask, i32 80
  %call71 = tail call ptr @memchr_inv(ptr noundef %add.ptr70, i32 noundef 0, i32 noundef 4) #12
  %tobool72.not = icmp eq ptr %call71, null
  br i1 %tobool72.not, label %do.body69.do.body85_crit_edge, label %do.body74

do.body69.do.body85_crit_edge:                    ; preds = %do.body69
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body85

do.body74:                                        ; preds = %do.body69
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx75 = getelementptr [28 x %struct.flow_dissector_key], ptr %keys, i32 0, i32 %cnt.3
  %13 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 4, ptr %arrayidx75, align 4
  %offset78 = getelementptr [28 x %struct.flow_dissector_key], ptr %keys, i32 0, i32 %cnt.3, i32 1
  %14 = ptrtoint ptr %offset78 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 80, ptr %offset78, align 4
  %inc79 = add i32 %cnt.3, 1
  br label %do.body85

do.body85:                                        ; preds = %do.body74, %do.body69.do.body85_crit_edge
  %cnt.4 = phi i32 [ %inc79, %do.body74 ], [ %cnt.3, %do.body69.do.body85_crit_edge ]
  %add.ptr86 = getelementptr i8, ptr %mask, i32 448
  %call87 = tail call ptr @memchr_inv(ptr noundef %add.ptr86, i32 noundef 0, i32 noundef 8) #12
  %tobool88.not = icmp eq ptr %call87, null
  br i1 %tobool88.not, label %do.body85.do.body101_crit_edge, label %do.body90

do.body85.do.body101_crit_edge:                   ; preds = %do.body85
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body101

do.body90:                                        ; preds = %do.body85
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx91 = getelementptr [28 x %struct.flow_dissector_key], ptr %keys, i32 0, i32 %cnt.4
  %15 = ptrtoint ptr %arrayidx91 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 5, ptr %arrayidx91, align 4
  %offset94 = getelementptr [28 x %struct.flow_dissector_key], ptr %keys, i32 0, i32 %cnt.4, i32 1
  %16 = ptrtoint ptr %offset94 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 448, ptr %offset94, align 4
  %inc95 = add i32 %cnt.4, 1
  br label %do.body101

do.body101:                                       ; preds = %do.body90, %do.body85.do.body101_crit_edge
  %cnt.5 = phi i32 [ %inc95, %do.body90 ], [ %cnt.4, %do.body85.do.body101_crit_edge ]
  %add.ptr102 = getelementptr i8, ptr %mask, i32 186
  %call103 = tail call ptr @memchr_inv(ptr noundef %add.ptr102, i32 noundef 0, i32 noundef 2) #12
  %tobool104.not = icmp eq ptr %call103, null
  br i1 %tobool104.not, label %do.body101.do.body117_crit_edge, label %do.body106

do.body101.do.body117_crit_edge:                  ; preds = %do.body101
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body117

do.body106:                                       ; preds = %do.body101
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx107 = getelementptr [28 x %struct.flow_dissector_key], ptr %keys, i32 0, i32 %cnt.5
  %17 = ptrtoint ptr %arrayidx107 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 21, ptr %arrayidx107, align 4
  %offset110 = getelementptr [28 x %struct.flow_dissector_key], ptr %keys, i32 0, i32 %cnt.5, i32 1
  %18 = ptrtoint ptr %offset110 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 186, ptr %offset110, align 4
  %inc111 = add i32 %cnt.5, 1
  br label %do.body117

do.body117:                                       ; preds = %do.body106, %do.body101.do.body117_crit_edge
  %cnt.6 = phi i32 [ %inc111, %do.body106 ], [ %cnt.5, %do.body101.do.body117_crit_edge ]
  %add.ptr118 = getelementptr i8, ptr %mask, i32 184
  %call119 = tail call ptr @memchr_inv(ptr noundef %add.ptr118, i32 noundef 0, i32 noundef 2) #12
  %tobool120.not = icmp eq ptr %call119, null
  br i1 %tobool120.not, label %do.body117.do.body133_crit_edge, label %do.body122

do.body117.do.body133_crit_edge:                  ; preds = %do.body117
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body133

do.body122:                                       ; preds = %do.body117
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx123 = getelementptr [28 x %struct.flow_dissector_key], ptr %keys, i32 0, i32 %cnt.6
  %19 = ptrtoint ptr %arrayidx123 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 20, ptr %arrayidx123, align 4
  %offset126 = getelementptr [28 x %struct.flow_dissector_key], ptr %keys, i32 0, i32 %cnt.6, i32 1
  %20 = ptrtoint ptr %offset126 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 184, ptr %offset126, align 4
  %inc127 = add i32 %cnt.6, 1
  br label %do.body133

do.body133:                                       ; preds = %do.body122, %do.body117.do.body133_crit_edge
  %cnt.7 = phi i32 [ %inc127, %do.body122 ], [ %cnt.6, %do.body117.do.body133_crit_edge ]
  %add.ptr134 = getelementptr i8, ptr %mask, i32 84
  %call135 = tail call ptr @memchr_inv(ptr noundef %add.ptr134, i32 noundef 0, i32 noundef 4) #12
  %tobool136.not = icmp eq ptr %call135, null
  br i1 %tobool136.not, label %do.body133.do.body149_crit_edge, label %do.body138

do.body133.do.body149_crit_edge:                  ; preds = %do.body133
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body149

do.body138:                                       ; preds = %do.body133
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx139 = getelementptr [28 x %struct.flow_dissector_key], ptr %keys, i32 0, i32 %cnt.7
  %21 = ptrtoint ptr %arrayidx139 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 6, ptr %arrayidx139, align 4
  %offset142 = getelementptr [28 x %struct.flow_dissector_key], ptr %keys, i32 0, i32 %cnt.7, i32 1
  %22 = ptrtoint ptr %offset142 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 84, ptr %offset142, align 4
  %inc143 = add i32 %cnt.7, 1
  br label %do.body149

do.body149:                                       ; preds = %do.body138, %do.body133.do.body149_crit_edge
  %cnt.8 = phi i32 [ %inc143, %do.body138 ], [ %cnt.7, %do.body133.do.body149_crit_edge ]
  %add.ptr150 = getelementptr i8, ptr %mask, i32 88
  %call151 = tail call ptr @memchr_inv(ptr noundef %add.ptr150, i32 noundef 0, i32 noundef 24) #12
  %tobool152.not = icmp eq ptr %call151, null
  br i1 %tobool152.not, label %do.body149.do.body165_crit_edge, label %do.body154

do.body149.do.body165_crit_edge:                  ; preds = %do.body149
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body165

do.body154:                                       ; preds = %do.body149
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx155 = getelementptr [28 x %struct.flow_dissector_key], ptr %keys, i32 0, i32 %cnt.8
  %23 = ptrtoint ptr %arrayidx155 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 9, ptr %arrayidx155, align 4
  %offset158 = getelementptr [28 x %struct.flow_dissector_key], ptr %keys, i32 0, i32 %cnt.8, i32 1
  %24 = ptrtoint ptr %offset158 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 88, ptr %offset158, align 4
  %inc159 = add i32 %cnt.8, 1
  br label %do.body165

do.body165:                                       ; preds = %do.body154, %do.body149.do.body165_crit_edge
  %cnt.9 = phi i32 [ %inc159, %do.body154 ], [ %cnt.8, %do.body149.do.body165_crit_edge ]
  %add.ptr166 = getelementptr i8, ptr %mask, i32 152
  %call167 = tail call ptr @memchr_inv(ptr noundef %add.ptr166, i32 noundef 0, i32 noundef 32) #12
  %tobool168.not = icmp eq ptr %call167, null
  br i1 %tobool168.not, label %do.body165.do.body181_crit_edge, label %do.body170

do.body165.do.body181_crit_edge:                  ; preds = %do.body165
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body181

do.body170:                                       ; preds = %do.body165
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx171 = getelementptr [28 x %struct.flow_dissector_key], ptr %keys, i32 0, i32 %cnt.9
  %25 = ptrtoint ptr %arrayidx171 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 19, ptr %arrayidx171, align 4
  %offset174 = getelementptr [28 x %struct.flow_dissector_key], ptr %keys, i32 0, i32 %cnt.9, i32 1
  %26 = ptrtoint ptr %offset174 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 152, ptr %offset174, align 4
  %inc175 = add i32 %cnt.9, 1
  br label %do.body181

do.body181:                                       ; preds = %do.body170, %do.body165.do.body181_crit_edge
  %cnt.10 = phi i32 [ %inc175, %do.body170 ], [ %cnt.9, %do.body165.do.body181_crit_edge ]
  %add.ptr182 = getelementptr i8, ptr %mask, i32 40
  %call183 = tail call ptr @memchr_inv(ptr noundef %add.ptr182, i32 noundef 0, i32 noundef 4) #12
  %tobool184.not = icmp eq ptr %call183, null
  br i1 %tobool184.not, label %do.body181.do.body197_crit_edge, label %do.body186

do.body181.do.body197_crit_edge:                  ; preds = %do.body181
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body197

do.body186:                                       ; preds = %do.body181
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx187 = getelementptr [28 x %struct.flow_dissector_key], ptr %keys, i32 0, i32 %cnt.10
  %27 = ptrtoint ptr %arrayidx187 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 10, ptr %arrayidx187, align 4
  %offset190 = getelementptr [28 x %struct.flow_dissector_key], ptr %keys, i32 0, i32 %cnt.10, i32 1
  %28 = ptrtoint ptr %offset190 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 40, ptr %offset190, align 4
  %inc191 = add i32 %cnt.10, 1
  br label %do.body197

do.body197:                                       ; preds = %do.body186, %do.body181.do.body197_crit_edge
  %cnt.11 = phi i32 [ %inc191, %do.body186 ], [ %cnt.10, %do.body181.do.body197_crit_edge ]
  %add.ptr198 = getelementptr i8, ptr %mask, i32 44
  %call199 = tail call ptr @memchr_inv(ptr noundef %add.ptr198, i32 noundef 0, i32 noundef 4) #12
  %tobool200.not = icmp eq ptr %call199, null
  br i1 %tobool200.not, label %do.body197.do.body213_crit_edge, label %do.body202

do.body197.do.body213_crit_edge:                  ; preds = %do.body197
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body213

do.body202:                                       ; preds = %do.body197
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx203 = getelementptr [28 x %struct.flow_dissector_key], ptr %keys, i32 0, i32 %cnt.11
  %29 = ptrtoint ptr %arrayidx203 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 22, ptr %arrayidx203, align 4
  %offset206 = getelementptr [28 x %struct.flow_dissector_key], ptr %keys, i32 0, i32 %cnt.11, i32 1
  %30 = ptrtoint ptr %offset206 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 44, ptr %offset206, align 4
  %inc207 = add i32 %cnt.11, 1
  br label %do.body213

do.body213:                                       ; preds = %do.body202, %do.body197.do.body213_crit_edge
  %cnt.12 = phi i32 [ %inc207, %do.body202 ], [ %cnt.11, %do.body197.do.body213_crit_edge ]
  %add.ptr214 = getelementptr i8, ptr %mask, i32 112
  %call215 = tail call ptr @memchr_inv(ptr noundef %add.ptr214, i32 noundef 0, i32 noundef 4) #12
  %tobool216.not = icmp eq ptr %call215, null
  br i1 %tobool216.not, label %do.body213.do.body229_crit_edge, label %do.body218

do.body213.do.body229_crit_edge:                  ; preds = %do.body213
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body229

do.body218:                                       ; preds = %do.body213
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx219 = getelementptr [28 x %struct.flow_dissector_key], ptr %keys, i32 0, i32 %cnt.12
  %31 = ptrtoint ptr %arrayidx219 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 14, ptr %arrayidx219, align 4
  %offset222 = getelementptr [28 x %struct.flow_dissector_key], ptr %keys, i32 0, i32 %cnt.12, i32 1
  %32 = ptrtoint ptr %offset222 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 112, ptr %offset222, align 4
  %inc223 = add i32 %cnt.12, 1
  br label %do.body229

do.body229:                                       ; preds = %do.body218, %do.body213.do.body229_crit_edge
  %cnt.13 = phi i32 [ %inc223, %do.body218 ], [ %cnt.12, %do.body213.do.body229_crit_edge ]
  %add.ptr230 = getelementptr i8, ptr %mask, i32 116
  %call231 = tail call ptr @memchr_inv(ptr noundef %add.ptr230, i32 noundef 0, i32 noundef 8) #12
  %tobool232.not = icmp eq ptr %call231, null
  br i1 %tobool232.not, label %do.body229.do.body245_crit_edge, label %do.body234

do.body229.do.body245_crit_edge:                  ; preds = %do.body229
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body245

do.body234:                                       ; preds = %do.body229
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx235 = getelementptr [28 x %struct.flow_dissector_key], ptr %keys, i32 0, i32 %cnt.13
  %33 = ptrtoint ptr %arrayidx235 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 15, ptr %arrayidx235, align 4
  %offset238 = getelementptr [28 x %struct.flow_dissector_key], ptr %keys, i32 0, i32 %cnt.13, i32 1
  %34 = ptrtoint ptr %offset238 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 116, ptr %offset238, align 4
  %inc239 = add i32 %cnt.13, 1
  br label %do.body245

do.body245:                                       ; preds = %do.body234, %do.body229.do.body245_crit_edge
  %cnt.14 = phi i32 [ %inc239, %do.body234 ], [ %cnt.13, %do.body229.do.body245_crit_edge ]
  %call247 = tail call ptr @memchr_inv(ptr noundef %add.ptr230, i32 noundef 0, i32 noundef 32) #12
  %tobool248.not = icmp eq ptr %call247, null
  br i1 %tobool248.not, label %do.body245.do.end260_crit_edge, label %do.body250

do.body245.do.end260_crit_edge:                   ; preds = %do.body245
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end260

do.body250:                                       ; preds = %do.body245
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx251 = getelementptr [28 x %struct.flow_dissector_key], ptr %keys, i32 0, i32 %cnt.14
  %35 = ptrtoint ptr %arrayidx251 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 16, ptr %arrayidx251, align 4
  %offset254 = getelementptr [28 x %struct.flow_dissector_key], ptr %keys, i32 0, i32 %cnt.14, i32 1
  %36 = ptrtoint ptr %offset254 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 116, ptr %offset254, align 4
  %inc255 = add i32 %cnt.14, 1
  br label %do.end260

do.end260:                                        ; preds = %do.body250, %do.body245.do.end260_crit_edge
  %cnt.15 = phi i32 [ %inc255, %do.body250 ], [ %cnt.14, %do.body245.do.end260_crit_edge ]
  %call262 = tail call ptr @memchr_inv(ptr noundef %add.ptr230, i32 noundef 0, i32 noundef 8) #12
  %tobool263.not = icmp eq ptr %call262, null
  br i1 %tobool263.not, label %lor.lhs.false, label %do.end260.do.body268_crit_edge

do.end260.do.body268_crit_edge:                   ; preds = %do.end260
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body268

lor.lhs.false:                                    ; preds = %do.end260
  %call265 = tail call ptr @memchr_inv(ptr noundef %add.ptr230, i32 noundef 0, i32 noundef 32) #12
  %tobool266.not = icmp eq ptr %call265, null
  br i1 %tobool266.not, label %lor.lhs.false.do.body277_crit_edge, label %lor.lhs.false.do.body268_crit_edge

lor.lhs.false.do.body268_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body268

lor.lhs.false.do.body277_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body277

do.body268:                                       ; preds = %lor.lhs.false.do.body268_crit_edge, %do.end260.do.body268_crit_edge
  %arrayidx269 = getelementptr [28 x %struct.flow_dissector_key], ptr %keys, i32 0, i32 %cnt.15
  %37 = ptrtoint ptr %arrayidx269 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 17, ptr %arrayidx269, align 4
  %offset272 = getelementptr [28 x %struct.flow_dissector_key], ptr %keys, i32 0, i32 %cnt.15, i32 1
  %38 = ptrtoint ptr %offset272 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 16, ptr %offset272, align 4
  %inc273 = add i32 %cnt.15, 1
  br label %do.body277

do.body277:                                       ; preds = %do.body268, %lor.lhs.false.do.body277_crit_edge
  %cnt.16 = phi i32 [ %inc273, %do.body268 ], [ %cnt.15, %lor.lhs.false.do.body277_crit_edge ]
  %add.ptr278 = getelementptr i8, ptr %mask, i32 148
  %call279 = tail call ptr @memchr_inv(ptr noundef %add.ptr278, i32 noundef 0, i32 noundef 4) #12
  %tobool280.not = icmp eq ptr %call279, null
  br i1 %tobool280.not, label %do.body277.do.body293_crit_edge, label %do.body282

do.body277.do.body293_crit_edge:                  ; preds = %do.body277
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body293

do.body282:                                       ; preds = %do.body277
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx283 = getelementptr [28 x %struct.flow_dissector_key], ptr %keys, i32 0, i32 %cnt.16
  %39 = ptrtoint ptr %arrayidx283 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 18, ptr %arrayidx283, align 4
  %offset286 = getelementptr [28 x %struct.flow_dissector_key], ptr %keys, i32 0, i32 %cnt.16, i32 1
  %40 = ptrtoint ptr %offset286 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 148, ptr %offset286, align 4
  %inc287 = add i32 %cnt.16, 1
  br label %do.body293

do.body293:                                       ; preds = %do.body282, %do.body277.do.body293_crit_edge
  %cnt.17 = phi i32 [ %inc287, %do.body282 ], [ %cnt.16, %do.body277.do.body293_crit_edge ]
  %add.ptr294 = getelementptr i8, ptr %mask, i32 188
  %call295 = tail call ptr @memchr_inv(ptr noundef %add.ptr294, i32 noundef 0, i32 noundef 2) #12
  %tobool296.not = icmp eq ptr %call295, null
  br i1 %tobool296.not, label %do.body293.do.body309_crit_edge, label %do.body298

do.body293.do.body309_crit_edge:                  ; preds = %do.body293
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body309

do.body298:                                       ; preds = %do.body293
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx299 = getelementptr [28 x %struct.flow_dissector_key], ptr %keys, i32 0, i32 %cnt.17
  %41 = ptrtoint ptr %arrayidx299 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 23, ptr %arrayidx299, align 4
  %offset302 = getelementptr [28 x %struct.flow_dissector_key], ptr %keys, i32 0, i32 %cnt.17, i32 1
  %42 = ptrtoint ptr %offset302 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 188, ptr %offset302, align 4
  %inc303 = add i32 %cnt.17, 1
  br label %do.body309

do.body309:                                       ; preds = %do.body298, %do.body293.do.body309_crit_edge
  %cnt.18 = phi i32 [ %inc303, %do.body298 ], [ %cnt.17, %do.body293.do.body309_crit_edge ]
  %add.ptr310 = getelementptr i8, ptr %mask, i32 190
  %call311 = tail call ptr @memchr_inv(ptr noundef %add.ptr310, i32 noundef 0, i32 noundef 258) #12
  %tobool312.not = icmp eq ptr %call311, null
  br i1 %tobool312.not, label %do.body309.do.body325_crit_edge, label %do.body314

do.body309.do.body325_crit_edge:                  ; preds = %do.body309
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body325

do.body314:                                       ; preds = %do.body309
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx315 = getelementptr [28 x %struct.flow_dissector_key], ptr %keys, i32 0, i32 %cnt.18
  %43 = ptrtoint ptr %arrayidx315 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 24, ptr %arrayidx315, align 4
  %offset318 = getelementptr [28 x %struct.flow_dissector_key], ptr %keys, i32 0, i32 %cnt.18, i32 1
  %44 = ptrtoint ptr %offset318 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 190, ptr %offset318, align 4
  %inc319 = add i32 %cnt.18, 1
  br label %do.body325

do.body325:                                       ; preds = %do.body314, %do.body309.do.body325_crit_edge
  %cnt.19 = phi i32 [ %inc319, %do.body314 ], [ %cnt.18, %do.body309.do.body325_crit_edge ]
  %add.ptr326 = getelementptr i8, ptr %mask, i32 456
  %call327 = tail call ptr @memchr_inv(ptr noundef %add.ptr326, i32 noundef 0, i32 noundef 24) #12
  %tobool328.not = icmp eq ptr %call327, null
  br i1 %tobool328.not, label %do.body325.do.body341_crit_edge, label %do.body330

do.body325.do.body341_crit_edge:                  ; preds = %do.body325
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body341

do.body330:                                       ; preds = %do.body325
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx331 = getelementptr [28 x %struct.flow_dissector_key], ptr %keys, i32 0, i32 %cnt.19
  %45 = ptrtoint ptr %arrayidx331 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 26, ptr %arrayidx331, align 4
  %offset334 = getelementptr [28 x %struct.flow_dissector_key], ptr %keys, i32 0, i32 %cnt.19, i32 1
  %46 = ptrtoint ptr %offset334 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 456, ptr %offset334, align 4
  %inc335 = add i32 %cnt.19, 1
  br label %do.body341

do.body341:                                       ; preds = %do.body330, %do.body325.do.body341_crit_edge
  %cnt.20 = phi i32 [ %inc335, %do.body330 ], [ %cnt.19, %do.body325.do.body341_crit_edge ]
  %add.ptr342 = getelementptr i8, ptr %mask, i32 480
  %call343 = tail call ptr @memchr_inv(ptr noundef %add.ptr342, i32 noundef 0, i32 noundef 4) #12
  %tobool344.not = icmp eq ptr %call343, null
  br i1 %tobool344.not, label %do.body341.do.end356_crit_edge, label %do.body346

do.body341.do.end356_crit_edge:                   ; preds = %do.body341
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end356

do.body346:                                       ; preds = %do.body341
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx347 = getelementptr [28 x %struct.flow_dissector_key], ptr %keys, i32 0, i32 %cnt.20
  %47 = ptrtoint ptr %arrayidx347 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 27, ptr %arrayidx347, align 4
  %offset350 = getelementptr [28 x %struct.flow_dissector_key], ptr %keys, i32 0, i32 %cnt.20, i32 1
  %48 = ptrtoint ptr %offset350 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 480, ptr %offset350, align 4
  %inc351 = add i32 %cnt.20, 1
  br label %do.end356

do.end356:                                        ; preds = %do.body346, %do.body341.do.end356_crit_edge
  %cnt.21 = phi i32 [ %inc351, %do.body346 ], [ %cnt.20, %do.body341.do.end356_crit_edge ]
  call void @skb_flow_dissector_init(ptr noundef %dissector, ptr noundef nonnull %keys, i32 noundef %cnt.21) #12
  call void @llvm.lifetime.end.p0(i64 224, ptr nonnull %keys) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memchr_inv(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_flow_dissector_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @flow_rule_alloc(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcf_exts_num_actions(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tc_setup_offload_action(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tc_setup_cb_add(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tc_cleanup_offload_action(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radix_tree_tagged(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_get_next_ul(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tc_setup_cb_reoffload(ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tc_setup_cb_call(ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fl_dump_key(ptr noundef %skb, ptr noundef %net, ptr noundef %key, ptr noundef %mask) unnamed_addr #2 align 64 {
entry:
  %tmp.i582 = alloca i16, align 2
  %tmp.i580 = alloca i16, align 2
  %tmp.i = alloca i16, align 2
  %tmp.i104.i = alloca i8, align 1
  %tmp.i102.i = alloca i32, align 4
  %tmp.i100.i = alloca i8, align 1
  %tmp.i.i = alloca i8, align 1
  %tmp.i82.i.i.i = alloca i32, align 4
  %tmp.i80.i.i.i = alloca i8, align 1
  %tmp.i78.i.i.i = alloca i8, align 1
  %tmp.i76.i.i.i = alloca i8, align 1
  %tmp.i.i.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end7_crit_edge, label %if.then

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %key, align 4
  %call = tail call ptr @__dev_get_by_index(ptr noundef %net, i32 noundef %3) #12
  %tobool3.not = icmp eq ptr %call, null
  br i1 %tobool3.not, label %if.then.if.end7_crit_edge, label %land.lhs.true

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

land.lhs.true:                                    ; preds = %if.then
  %call.i = tail call i32 @strlen(ptr noundef nonnull %call) #16
  %add.i = add i32 %call.i, 1
  %call1.i = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef %add.i, ptr noundef nonnull %call) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool5.not = icmp eq i32 %call1.i, 0
  br i1 %tobool5.not, label %land.lhs.true.if.end7_crit_edge, label %land.lhs.true.nla_put_failure_crit_edge

land.lhs.true.nla_put_failure_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %nla_put_failure

land.lhs.true.if.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

if.end7:                                          ; preds = %land.lhs.true.if.end7_crit_edge, %if.then.if.end7_crit_edge, %entry.if.end7_crit_edge
  %eth9 = getelementptr inbounds %struct.fl_flow_key, ptr %mask, i32 0, i32 4
  %call.i556 = tail call ptr @memchr_inv(ptr noundef %eth9, i32 noundef 0, i32 noundef 6) #12
  %tobool.not.i = icmp eq ptr %call.i556, null
  br i1 %tobool.not.i, label %if.end7.lor.lhs.false_crit_edge, label %if.end.i

if.end7.lor.lhs.false_crit_edge:                  ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false

if.end.i:                                         ; preds = %if.end7
  %eth = getelementptr inbounds %struct.fl_flow_key, ptr %key, i32 0, i32 4
  %call1.i557 = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 4, i32 noundef 6, ptr noundef %eth) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i557)
  %tobool2.not.i = icmp eq i32 %call1.i557, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %if.end.i.nla_put_failure_crit_edge

if.end.i.nla_put_failure_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nla_put_failure

if.end4.i:                                        ; preds = %if.end.i
  %call6.i = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 5, i32 noundef 6, ptr noundef %eth9) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %if.end4.i.lor.lhs.false_crit_edge, label %if.end4.i.nla_put_failure_crit_edge

if.end4.i.nla_put_failure_crit_edge:              ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nla_put_failure

if.end4.i.lor.lhs.false_crit_edge:                ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end4.i.lor.lhs.false_crit_edge, %if.end7.lor.lhs.false_crit_edge
  %src17 = getelementptr inbounds %struct.fl_flow_key, ptr %mask, i32 0, i32 4, i32 1
  %call.i558 = tail call ptr @memchr_inv(ptr noundef %src17, i32 noundef 0, i32 noundef 6) #12
  %tobool.not.i559 = icmp eq ptr %call.i558, null
  br i1 %tobool.not.i559, label %lor.lhs.false.lor.lhs.false21_crit_edge, label %if.end.i562

lor.lhs.false.lor.lhs.false21_crit_edge:          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false21

if.end.i562:                                      ; preds = %lor.lhs.false
  %src = getelementptr inbounds %struct.fl_flow_key, ptr %key, i32 0, i32 4, i32 1
  %call1.i560 = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 6, i32 noundef 6, ptr noundef %src) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i560)
  %tobool2.not.i561 = icmp eq i32 %call1.i560, 0
  br i1 %tobool2.not.i561, label %if.end4.i563, label %if.end.i562.nla_put_failure_crit_edge

if.end.i562.nla_put_failure_crit_edge:            ; preds = %if.end.i562
  call void @__sanitizer_cov_trace_pc() #14
  br label %nla_put_failure

if.end4.i563:                                     ; preds = %if.end.i562
  %call6.i564 = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 7, i32 noundef 6, ptr noundef %src17) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i564)
  %tobool7.not.i565 = icmp eq i32 %call6.i564, 0
  br i1 %tobool7.not.i565, label %if.end4.i563.lor.lhs.false21_crit_edge, label %if.end4.i563.nla_put_failure_crit_edge

if.end4.i563.nla_put_failure_crit_edge:           ; preds = %if.end4.i563
  call void @__sanitizer_cov_trace_pc() #14
  br label %nla_put_failure

if.end4.i563.lor.lhs.false21_crit_edge:           ; preds = %if.end4.i563
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false21

lor.lhs.false21:                                  ; preds = %if.end4.i563.lor.lhs.false21_crit_edge, %lor.lhs.false.lor.lhs.false21_crit_edge
  %basic = getelementptr inbounds %struct.fl_flow_key, ptr %key, i32 0, i32 3
  %basic22 = getelementptr inbounds %struct.fl_flow_key, ptr %mask, i32 0, i32 3
  %call.i569 = tail call ptr @memchr_inv(ptr noundef %basic22, i32 noundef 0, i32 noundef 2) #12
  %tobool.not.i570 = icmp eq ptr %call.i569, null
  br i1 %tobool.not.i570, label %lor.lhs.false21.if.end27_crit_edge, label %if.end.i573

lor.lhs.false21.if.end27_crit_edge:               ; preds = %lor.lhs.false21
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27

if.end.i573:                                      ; preds = %lor.lhs.false21
  %call1.i571 = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 8, i32 noundef 2, ptr noundef %basic) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i571)
  %tobool2.not.i572 = icmp eq i32 %call1.i571, 0
  br i1 %tobool2.not.i572, label %if.end.i573.if.end27_crit_edge, label %if.end.i573.nla_put_failure_crit_edge

if.end.i573.nla_put_failure_crit_edge:            ; preds = %if.end.i573
  call void @__sanitizer_cov_trace_pc() #14
  br label %nla_put_failure

if.end.i573.if.end27_crit_edge:                   ; preds = %if.end.i573
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27

if.end27:                                         ; preds = %if.end.i573.if.end27_crit_edge, %lor.lhs.false21.if.end27_crit_edge
  %mpls = getelementptr inbounds %struct.fl_flow_key, ptr %key, i32 0, i32 14
  %mpls28 = getelementptr inbounds %struct.fl_flow_key, ptr %mask, i32 0, i32 14
  %used_lses.i = getelementptr inbounds %struct.fl_flow_key, ptr %mask, i32 0, i32 14, i32 1
  %4 = ptrtoint ptr %used_lses.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %used_lses.i, align 4
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.65)
  switch i8 %5, label %if.end27.if.then18.i_crit_edge [
    i8 0, label %if.end27.if.end32_crit_edge
    i8 1, label %lor.lhs.false.i
  ]

if.end27.if.end32_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end32

if.end27.if.then18.i_crit_edge:                   ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then18.i

lor.lhs.false.i:                                  ; preds = %if.end27
  %7 = ptrtoint ptr %mpls28 to i32
  call void @__asan_load4_noabort(i32 %7)
  %bf.load.i = load i32, ptr %mpls28, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.load.i)
  %8 = icmp eq i32 %bf.load.i, 0
  br i1 %8, label %lor.lhs.false.i.if.then18.i_crit_edge, label %if.end19.i

lor.lhs.false.i.if.then18.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then18.i

if.then18.i:                                      ; preds = %lor.lhs.false.i.if.then18.i_crit_edge, %if.end27.if.then18.i_crit_edge
  %tail.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %9 = ptrtoint ptr %tail.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tail.i.i.i.i.i, align 8
  %call1.i.i.i.i = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 32867, i32 noundef 0, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %cmp.i.i.i.i = icmp slt i32 %call1.i.i.i.i, 0
  %tobool.not62.i.i = icmp eq ptr %10, null
  %tobool.not.i.i = select i1 %cmp.i.i.i.i, i1 true, i1 %tobool.not62.i.i
  br i1 %tobool.not.i.i, label %if.then18.i.nla_put_failure_crit_edge, label %if.then18.i.for.body.i.i_crit_edge

if.then18.i.for.body.i.i_crit_edge:               ; preds = %if.then18.i
  br label %for.body.i.i

if.then18.i.nla_put_failure_crit_edge:            ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nla_put_failure

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.then18.i.for.body.i.i_crit_edge
  %indvars.iv.i.i = phi i32 [ %indvars.iv.next.pre-phi.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %if.then18.i.for.body.i.i_crit_edge ]
  %11 = ptrtoint ptr %used_lses.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %used_lses.i, align 4
  %conv2.i.i = zext i8 %12 to i32
  %shl.i.i = shl nuw nsw i32 1, %indvars.iv.i.i
  %and.i.i = and i32 %shl.i.i, %conv2.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool4.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool4.not.i.i, label %for.body.for.inc_crit_edge.i.i, label %if.end6.i.i

for.body.for.inc_crit_edge.i.i:                   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %.pre.i.i = add nuw nsw i32 %indvars.iv.i.i, 1
  br label %for.inc.i.i

if.end6.i.i:                                      ; preds = %for.body.i.i
  %13 = ptrtoint ptr %tail.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %tail.i.i.i.i.i, align 8
  %call1.i.i36.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 32769, i32 noundef 0, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i36.i.i)
  %cmp.i.i37.i.i = icmp slt i32 %call1.i.i36.i.i, 0
  %tobool8.not58.i.i = icmp eq ptr %14, null
  %tobool8.not.i.i = select i1 %cmp.i.i37.i.i, i1 true, i1 %tobool8.not58.i.i
  br i1 %tobool8.not.i.i, label %if.end6.i.i.if.then.i.i48.i.i_crit_edge, label %if.end10.i.i

if.end6.i.i.if.then.i.i48.i.i_crit_edge:          ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i48.i.i

if.end10.i.i:                                     ; preds = %if.end6.i.i
  %arrayidx.i.i.i = getelementptr [7 x %struct.flow_dissector_mpls_lse], ptr %mpls28, i32 0, i32 %indvars.iv.i.i
  %arrayidx3.i.i.i = getelementptr [7 x %struct.flow_dissector_mpls_lse], ptr %mpls, i32 0, i32 %indvars.iv.i.i
  %15 = add nuw nsw i32 %indvars.iv.i.i, 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i.i.i.i) #12
  %16 = trunc i32 %15 to i8
  %17 = ptrtoint ptr %tmp.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %tmp.i.i.i.i, align 1
  %call.i.i.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 1, ptr noundef nonnull %tmp.i.i.i.i) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.end10.i.i.if.then.i.i.i.i_crit_edge

if.end10.i.i.if.then.i.i.i.i_crit_edge:           ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i.i.i

if.end.i.i.i:                                     ; preds = %if.end10.i.i
  %18 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %bf.load.i.i.i = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %bf.load.i.i.i)
  %tobool5.not.i.i.i = icmp ult i32 %bf.load.i.i.i, 16777216
  br i1 %tobool5.not.i.i.i, label %if.end.i.i.i.if.end14.i.i.i_crit_edge, label %if.then6.i.i.i

if.end.i.i.i.if.end14.i.i.i_crit_edge:            ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14.i.i.i

if.then6.i.i.i:                                   ; preds = %if.end.i.i.i
  %19 = ptrtoint ptr %arrayidx3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %bf.load7.i.i.i = load i32, ptr %arrayidx3.i.i.i, align 4
  %bf.lshr8.i.i.i = lshr i32 %bf.load7.i.i.i, 24
  %conv9.i.i.i = trunc i32 %bf.lshr8.i.i.i to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i76.i.i.i) #12
  %20 = ptrtoint ptr %tmp.i76.i.i.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv9.i.i.i, ptr %tmp.i76.i.i.i, align 1
  %call.i77.i.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 1, ptr noundef nonnull %tmp.i76.i.i.i) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i76.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i77.i.i.i)
  %tobool11.not.i.i.i = icmp eq i32 %call.i77.i.i.i, 0
  br i1 %tobool11.not.i.i.i, label %if.then6.i.i.i.if.end14.i.i.i_crit_edge, label %if.then6.i.i.i.if.then.i.i.i.i_crit_edge

if.then6.i.i.i.if.then.i.i.i.i_crit_edge:         ; preds = %if.then6.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i.i.i

if.then6.i.i.i.if.end14.i.i.i_crit_edge:          ; preds = %if.then6.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14.i.i.i

if.end14.i.i.i:                                   ; preds = %if.then6.i.i.i.if.end14.i.i.i_crit_edge, %if.end.i.i.i.if.end14.i.i.i_crit_edge
  %21 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %bf.load15.i.i.i = load i32, ptr %arrayidx.i.i.i, align 4
  %22 = and i32 %bf.load15.i.i.i, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool17.not.i.i.i = icmp eq i32 %22, 0
  br i1 %tobool17.not.i.i.i, label %if.end14.i.i.i.if.end27.i.i.i_crit_edge, label %if.then18.i.i.i

if.end14.i.i.i.if.end27.i.i.i_crit_edge:          ; preds = %if.end14.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27.i.i.i

if.then18.i.i.i:                                  ; preds = %if.end14.i.i.i
  %23 = ptrtoint ptr %arrayidx3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %bf.load19.i.i.i = load i32, ptr %arrayidx3.i.i.i, align 4
  %bf.lshr20.i.i.i = lshr i32 %bf.load19.i.i.i, 23
  %24 = trunc i32 %bf.lshr20.i.i.i to i8
  %conv22.i.i.i = and i8 %24, 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i78.i.i.i) #12
  %25 = ptrtoint ptr %tmp.i78.i.i.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv22.i.i.i, ptr %tmp.i78.i.i.i, align 1
  %call.i79.i.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 1, ptr noundef nonnull %tmp.i78.i.i.i) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i78.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i79.i.i.i)
  %tobool24.not.i.i.i = icmp eq i32 %call.i79.i.i.i, 0
  br i1 %tobool24.not.i.i.i, label %if.then18.i.i.i.if.end27.i.i.i_crit_edge, label %if.then18.i.i.i.if.then.i.i.i.i_crit_edge

if.then18.i.i.i.if.then.i.i.i.i_crit_edge:        ; preds = %if.then18.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i.i.i

if.then18.i.i.i.if.end27.i.i.i_crit_edge:         ; preds = %if.then18.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27.i.i.i

if.end27.i.i.i:                                   ; preds = %if.then18.i.i.i.if.end27.i.i.i_crit_edge, %if.end14.i.i.i.if.end27.i.i.i_crit_edge
  %26 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %bf.load28.i.i.i = load i32, ptr %arrayidx.i.i.i, align 4
  %27 = and i32 %bf.load28.i.i.i, 7340032
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool31.not.i.i.i = icmp eq i32 %27, 0
  br i1 %tobool31.not.i.i.i, label %if.end27.i.i.i.if.end41.i.i.i_crit_edge, label %if.then32.i.i.i

if.end27.i.i.i.if.end41.i.i.i_crit_edge:          ; preds = %if.end27.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end41.i.i.i

if.then32.i.i.i:                                  ; preds = %if.end27.i.i.i
  %28 = ptrtoint ptr %arrayidx3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %bf.load33.i.i.i = load i32, ptr %arrayidx3.i.i.i, align 4
  %bf.lshr34.i.i.i = lshr i32 %bf.load33.i.i.i, 20
  %29 = trunc i32 %bf.lshr34.i.i.i to i8
  %conv36.i.i.i = and i8 %29, 7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i80.i.i.i) #12
  %30 = ptrtoint ptr %tmp.i80.i.i.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv36.i.i.i, ptr %tmp.i80.i.i.i, align 1
  %call.i81.i.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 4, i32 noundef 1, ptr noundef nonnull %tmp.i80.i.i.i) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i80.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i81.i.i.i)
  %tobool38.not.i.i.i = icmp eq i32 %call.i81.i.i.i, 0
  br i1 %tobool38.not.i.i.i, label %if.then32.i.i.i.if.end41.i.i.i_crit_edge, label %if.then32.i.i.i.if.then.i.i.i.i_crit_edge

if.then32.i.i.i.if.then.i.i.i.i_crit_edge:        ; preds = %if.then32.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i.i.i

if.then32.i.i.i.if.end41.i.i.i_crit_edge:         ; preds = %if.then32.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end41.i.i.i

if.end41.i.i.i:                                   ; preds = %if.then32.i.i.i.if.end41.i.i.i_crit_edge, %if.end27.i.i.i.if.end41.i.i.i_crit_edge
  %31 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %bf.load42.i.i.i = load i32, ptr %arrayidx.i.i.i, align 4
  %bf.clear43.i.i.i = and i32 %bf.load42.i.i.i, 1048575
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.clear43.i.i.i)
  %tobool44.not.i.i.i = icmp eq i32 %bf.clear43.i.i.i, 0
  br i1 %tobool44.not.i.i.i, label %if.end41.i.i.i.if.end14.i.i_crit_edge, label %if.then45.i.i.i

if.end41.i.i.i.if.end14.i.i_crit_edge:            ; preds = %if.end41.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14.i.i

if.then45.i.i.i:                                  ; preds = %if.end41.i.i.i
  %32 = ptrtoint ptr %arrayidx3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %bf.load46.i.i.i = load i32, ptr %arrayidx3.i.i.i, align 4
  %bf.clear47.i.i.i = and i32 %bf.load46.i.i.i, 1048575
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i82.i.i.i) #12
  %33 = ptrtoint ptr %tmp.i82.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %bf.clear47.i.i.i, ptr %tmp.i82.i.i.i, align 4
  %call.i83.i.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 5, i32 noundef 4, ptr noundef nonnull %tmp.i82.i.i.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i82.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i83.i.i.i)
  %tobool49.not.i.i.i = icmp eq i32 %call.i83.i.i.i, 0
  br i1 %tobool49.not.i.i.i, label %if.then45.i.i.i.if.end14.i.i_crit_edge, label %if.then45.i.i.i.if.then.i.i.i.i_crit_edge

if.then45.i.i.i.if.then.i.i.i.i_crit_edge:        ; preds = %if.then45.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i.i.i

if.then45.i.i.i.if.end14.i.i_crit_edge:           ; preds = %if.then45.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14.i.i

if.end14.i.i:                                     ; preds = %if.then45.i.i.i.if.end14.i.i_crit_edge, %if.end41.i.i.i.if.end14.i.i_crit_edge
  %34 = ptrtoint ptr %tail.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %tail.i.i.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %35 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %14 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %conv.i.i.i = trunc i32 %sub.ptr.sub.i.i.i to i16
  %36 = ptrtoint ptr %14 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %conv.i.i.i, ptr %14, align 2
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.end14.i.i, %for.body.for.inc_crit_edge.i.i
  %indvars.iv.next.pre-phi.i.i = phi i32 [ %.pre.i.i, %for.body.for.inc_crit_edge.i.i ], [ %15, %if.end14.i.i ]
  %exitcond.not.i.i = icmp eq i32 %indvars.iv.next.pre-phi.i.i, 7
  br i1 %exitcond.not.i.i, label %for.end.i.i, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %37 = ptrtoint ptr %tail.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %tail.i.i.i.i.i, align 8
  %sub.ptr.lhs.cast.i40.i.i = ptrtoint ptr %38 to i32
  %sub.ptr.rhs.cast.i41.i.i = ptrtoint ptr %10 to i32
  %sub.ptr.sub.i42.i.i = sub i32 %sub.ptr.lhs.cast.i40.i.i, %sub.ptr.rhs.cast.i41.i.i
  %conv.i43.i.i = trunc i32 %sub.ptr.sub.i42.i.i to i16
  %39 = ptrtoint ptr %10 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %conv.i43.i.i, ptr %10, align 2
  br label %if.end32

if.then.i.i.i.i:                                  ; preds = %if.then45.i.i.i.if.then.i.i.i.i_crit_edge, %if.then32.i.i.i.if.then.i.i.i.i_crit_edge, %if.then18.i.i.i.if.then.i.i.i.i_crit_edge, %if.then6.i.i.i.if.then.i.i.i.i_crit_edge, %if.end10.i.i.if.then.i.i.i.i_crit_edge
  %data.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %40 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %data.i.i.i.i, align 4
  %cmp.i.i44.i.i = icmp ugt ptr %41, %14
  br i1 %cmp.i.i44.i.i, label %do.end.i.i.i.i, label %if.then.i.i.i.i.nla_nest_cancel.exit.i.i_crit_edge, !prof !212

if.then.i.i.i.i.nla_nest_cancel.exit.i.i_crit_edge: ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nla_nest_cancel.exit.i.i

do.end.i.i.i.i:                                   ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.55, i32 noundef 991, i32 noundef 9, ptr noundef null) #12
  br label %nla_nest_cancel.exit.i.i

nla_nest_cancel.exit.i.i:                         ; preds = %do.end.i.i.i.i, %if.then.i.i.i.i.nla_nest_cancel.exit.i.i_crit_edge
  %42 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %data.i.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i.i = ptrtoint ptr %14 to i32
  %sub.ptr.rhs.cast.i.i.i.i = ptrtoint ptr %43 to i32
  %sub.ptr.sub.i.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i.i, %sub.ptr.rhs.cast.i.i.i.i
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i.i.i) #12
  br label %if.then.i.i48.i.i

if.then.i.i48.i.i:                                ; preds = %nla_nest_cancel.exit.i.i, %if.end6.i.i.if.then.i.i48.i.i_crit_edge
  %data.i.i46.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %44 = ptrtoint ptr %data.i.i46.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %data.i.i46.i.i, align 4
  %cmp.i.i47.i.i = icmp ugt ptr %45, %10
  br i1 %cmp.i.i47.i.i, label %do.end.i.i49.i.i, label %if.then.i.i48.i.i.nla_nest_cancel.exit54.i.i_crit_edge, !prof !212

if.then.i.i48.i.i.nla_nest_cancel.exit54.i.i_crit_edge: ; preds = %if.then.i.i48.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nla_nest_cancel.exit54.i.i

do.end.i.i49.i.i:                                 ; preds = %if.then.i.i48.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.55, i32 noundef 991, i32 noundef 9, ptr noundef null) #12
  br label %nla_nest_cancel.exit54.i.i

nla_nest_cancel.exit54.i.i:                       ; preds = %do.end.i.i49.i.i, %if.then.i.i48.i.i.nla_nest_cancel.exit54.i.i_crit_edge
  %46 = ptrtoint ptr %data.i.i46.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %data.i.i46.i.i, align 4
  %sub.ptr.lhs.cast.i.i50.i.i = ptrtoint ptr %10 to i32
  %sub.ptr.rhs.cast.i.i51.i.i = ptrtoint ptr %47 to i32
  %sub.ptr.sub.i.i52.i.i = sub i32 %sub.ptr.lhs.cast.i.i50.i.i, %sub.ptr.rhs.cast.i.i51.i.i
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i52.i.i) #12
  br label %nla_put_failure

if.end19.i:                                       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %bf.load.i)
  %tobool5.not.i = icmp ult i32 %bf.load.i, 16777216
  br i1 %tobool5.not.i, label %if.end19.i.if.end31.i_crit_edge, label %if.then23.i

if.end19.i.if.end31.i_crit_edge:                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end31.i

if.then23.i:                                      ; preds = %if.end19.i
  %48 = ptrtoint ptr %mpls to i32
  call void @__asan_load4_noabort(i32 %48)
  %bf.load24.i = load i32, ptr %mpls, align 4
  %bf.lshr25.i = lshr i32 %bf.load24.i, 24
  %conv26.i = trunc i32 %bf.lshr25.i to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i.i) #12
  %49 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %conv26.i, ptr %tmp.i.i, align 1
  %call.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 67, i32 noundef 1, ptr noundef nonnull %tmp.i.i) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool28.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool28.not.i, label %if.then23.i.if.end31.i_crit_edge, label %if.then23.i.nla_put_failure_crit_edge

if.then23.i.nla_put_failure_crit_edge:            ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nla_put_failure

if.then23.i.if.end31.i_crit_edge:                 ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end31.i

if.end31.i:                                       ; preds = %if.then23.i.if.end31.i_crit_edge, %if.end19.i.if.end31.i_crit_edge
  %50 = ptrtoint ptr %mpls28 to i32
  call void @__asan_load4_noabort(i32 %50)
  %bf.load32.i = load i32, ptr %mpls28, align 4
  %51 = and i32 %bf.load32.i, 7340032
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool35.not.i = icmp eq i32 %51, 0
  br i1 %tobool35.not.i, label %if.end31.i.if.end45.i_crit_edge, label %if.then36.i

if.end31.i.if.end45.i_crit_edge:                  ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end45.i

if.then36.i:                                      ; preds = %if.end31.i
  %52 = ptrtoint ptr %mpls to i32
  call void @__asan_load4_noabort(i32 %52)
  %bf.load37.i = load i32, ptr %mpls, align 4
  %bf.lshr38.i = lshr i32 %bf.load37.i, 20
  %53 = trunc i32 %bf.lshr38.i to i8
  %conv40.i = and i8 %53, 7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i100.i) #12
  %54 = ptrtoint ptr %tmp.i100.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %conv40.i, ptr %tmp.i100.i, align 1
  %call.i101.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 69, i32 noundef 1, ptr noundef nonnull %tmp.i100.i) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i100.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i101.i)
  %tobool42.not.i = icmp eq i32 %call.i101.i, 0
  br i1 %tobool42.not.i, label %if.then36.i.if.end45.i_crit_edge, label %if.then36.i.nla_put_failure_crit_edge

if.then36.i.nla_put_failure_crit_edge:            ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nla_put_failure

if.then36.i.if.end45.i_crit_edge:                 ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end45.i

if.end45.i:                                       ; preds = %if.then36.i.if.end45.i_crit_edge, %if.end31.i.if.end45.i_crit_edge
  %55 = ptrtoint ptr %mpls28 to i32
  call void @__asan_load4_noabort(i32 %55)
  %bf.load46.i = load i32, ptr %mpls28, align 4
  %bf.clear47.i = and i32 %bf.load46.i, 1048575
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.clear47.i)
  %tobool48.not.i = icmp eq i32 %bf.clear47.i, 0
  br i1 %tobool48.not.i, label %if.end45.i.if.end56.i_crit_edge, label %if.then49.i

if.end45.i.if.end56.i_crit_edge:                  ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end56.i

if.then49.i:                                      ; preds = %if.end45.i
  %56 = ptrtoint ptr %mpls to i32
  call void @__asan_load4_noabort(i32 %56)
  %bf.load50.i = load i32, ptr %mpls, align 4
  %bf.clear51.i = and i32 %bf.load50.i, 1048575
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i102.i) #12
  %57 = ptrtoint ptr %tmp.i102.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %bf.clear51.i, ptr %tmp.i102.i, align 4
  %call.i103.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 70, i32 noundef 4, ptr noundef nonnull %tmp.i102.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i102.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i103.i)
  %tobool53.not.i = icmp eq i32 %call.i103.i, 0
  br i1 %tobool53.not.i, label %if.then49.i.if.end56.i_crit_edge, label %if.then49.i.nla_put_failure_crit_edge

if.then49.i.nla_put_failure_crit_edge:            ; preds = %if.then49.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nla_put_failure

if.then49.i.if.end56.i_crit_edge:                 ; preds = %if.then49.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end56.i

if.end56.i:                                       ; preds = %if.then49.i.if.end56.i_crit_edge, %if.end45.i.if.end56.i_crit_edge
  %58 = ptrtoint ptr %mpls28 to i32
  call void @__asan_load4_noabort(i32 %58)
  %bf.load57.i = load i32, ptr %mpls28, align 4
  %59 = and i32 %bf.load57.i, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool60.not.i = icmp eq i32 %59, 0
  br i1 %tobool60.not.i, label %if.end56.i.if.end32_crit_edge, label %if.then61.i

if.end56.i.if.end32_crit_edge:                    ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end32

if.then61.i:                                      ; preds = %if.end56.i
  %60 = ptrtoint ptr %mpls to i32
  call void @__asan_load4_noabort(i32 %60)
  %bf.load62.i = load i32, ptr %mpls, align 4
  %bf.lshr63.i = lshr i32 %bf.load62.i, 23
  %61 = trunc i32 %bf.lshr63.i to i8
  %conv65.i = and i8 %61, 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i104.i) #12
  %62 = ptrtoint ptr %tmp.i104.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %conv65.i, ptr %tmp.i104.i, align 1
  %call.i105.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 68, i32 noundef 1, ptr noundef nonnull %tmp.i104.i) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i104.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i105.i)
  %tobool67.not.i = icmp eq i32 %call.i105.i, 0
  br i1 %tobool67.not.i, label %if.then61.i.if.end32_crit_edge, label %if.then61.i.nla_put_failure_crit_edge

if.then61.i.nla_put_failure_crit_edge:            ; preds = %if.then61.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nla_put_failure

if.then61.i.if.end32_crit_edge:                   ; preds = %if.then61.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end32

if.end32:                                         ; preds = %if.then61.i.if.end32_crit_edge, %if.end56.i.if.end32_crit_edge, %for.end.i.i, %if.end27.if.end32_crit_edge
  %vlan = getelementptr inbounds %struct.fl_flow_key, ptr %key, i32 0, i32 5
  %vlan33 = getelementptr inbounds %struct.fl_flow_key, ptr %mask, i32 0, i32 5
  %call34 = call fastcc i32 @fl_dump_key_vlan(ptr noundef %skb, i32 noundef 23, i32 noundef 24, ptr noundef %vlan, ptr noundef %vlan33)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end37, label %if.end32.nla_put_failure_crit_edge

if.end32.nla_put_failure_crit_edge:               ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #14
  br label %nla_put_failure

if.end37:                                         ; preds = %if.end32
  %cvlan = getelementptr inbounds %struct.fl_flow_key, ptr %key, i32 0, i32 6
  %cvlan38 = getelementptr inbounds %struct.fl_flow_key, ptr %mask, i32 0, i32 6
  %call39 = call fastcc i32 @fl_dump_key_vlan(ptr noundef %skb, i32 noundef 77, i32 noundef 78, ptr noundef %cvlan, ptr noundef %cvlan38)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %lor.lhs.false41, label %if.end37.nla_put_failure_crit_edge

if.end37.nla_put_failure_crit_edge:               ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #14
  br label %nla_put_failure

lor.lhs.false41:                                  ; preds = %if.end37
  %vlan_tpid = getelementptr inbounds %struct.fl_flow_key, ptr %mask, i32 0, i32 6, i32 1
  %63 = ptrtoint ptr %vlan_tpid to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %vlan_tpid, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %64)
  %tobool43.not = icmp eq i16 %64, 0
  br i1 %tobool43.not, label %lor.lhs.false41.if.end50_crit_edge, label %land.lhs.true44

lor.lhs.false41.if.end50_crit_edge:               ; preds = %lor.lhs.false41
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end50

land.lhs.true44:                                  ; preds = %lor.lhs.false41
  %vlan_tpid46 = getelementptr inbounds %struct.fl_flow_key, ptr %key, i32 0, i32 6, i32 1
  %65 = ptrtoint ptr %vlan_tpid46 to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %vlan_tpid46, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i) #12
  %67 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 %66, ptr %tmp.i, align 2
  %call.i579 = call i32 @nla_put(ptr noundef %skb, i32 noundef 25, i32 noundef 2, ptr noundef nonnull %tmp.i) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i579)
  %tobool48.not = icmp eq i32 %call.i579, 0
  br i1 %tobool48.not, label %land.lhs.true44.if.end50_crit_edge, label %land.lhs.true44.nla_put_failure_crit_edge

land.lhs.true44.nla_put_failure_crit_edge:        ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #14
  br label %nla_put_failure

land.lhs.true44.if.end50_crit_edge:               ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end50

if.end50:                                         ; preds = %land.lhs.true44.if.end50_crit_edge, %lor.lhs.false41.if.end50_crit_edge
  %68 = ptrtoint ptr %basic22 to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %basic22, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %69)
  %tobool53.not = icmp eq i16 %69, 0
  br i1 %tobool53.not, label %if.end50.if.end77_crit_edge, label %if.then54

if.end50.if.end77_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end77

if.then54:                                        ; preds = %if.end50
  %70 = ptrtoint ptr %vlan_tpid to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %vlan_tpid, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %71)
  %tobool57.not = icmp eq i16 %71, 0
  br i1 %tobool57.not, label %if.else, label %if.then58

if.then58:                                        ; preds = %if.then54
  %72 = ptrtoint ptr %basic to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %basic, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i580) #12
  %74 = ptrtoint ptr %tmp.i580 to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 %73, ptr %tmp.i580, align 2
  %call.i581 = call i32 @nla_put(ptr noundef %skb, i32 noundef 79, i32 noundef 2, ptr noundef nonnull %tmp.i580) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i580) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i581)
  %tobool62.not = icmp eq i32 %call.i581, 0
  br i1 %tobool62.not, label %if.then58.if.end77_crit_edge, label %if.then58.nla_put_failure_crit_edge

if.then58.nla_put_failure_crit_edge:              ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #14
  br label %nla_put_failure

if.then58.if.end77_crit_edge:                     ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end77

if.else:                                          ; preds = %if.then54
  %vlan_tpid66 = getelementptr inbounds %struct.fl_flow_key, ptr %mask, i32 0, i32 5, i32 1
  %75 = ptrtoint ptr %vlan_tpid66 to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %vlan_tpid66, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %76)
  %tobool67.not = icmp eq i16 %76, 0
  br i1 %tobool67.not, label %if.else.if.end77_crit_edge, label %if.then68

if.else.if.end77_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end77

if.then68:                                        ; preds = %if.else
  %77 = ptrtoint ptr %basic to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %basic, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i582) #12
  %79 = ptrtoint ptr %tmp.i582 to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 %78, ptr %tmp.i582, align 2
  %call.i583 = call i32 @nla_put(ptr noundef %skb, i32 noundef 25, i32 noundef 2, ptr noundef nonnull %tmp.i582) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i582) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i583)
  %tobool72.not = icmp eq i32 %call.i583, 0
  br i1 %tobool72.not, label %if.then68.if.end77_crit_edge, label %if.then68.nla_put_failure_crit_edge

if.then68.nla_put_failure_crit_edge:              ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #14
  br label %nla_put_failure

if.then68.if.end77_crit_edge:                     ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end77

if.end77:                                         ; preds = %if.then68.if.end77_crit_edge, %if.else.if.end77_crit_edge, %if.then58.if.end77_crit_edge, %if.end50.if.end77_crit_edge
  %80 = ptrtoint ptr %basic to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %basic, align 4
  %82 = zext i16 %81 to i64
  call void @__sanitizer_cov_trace_switch(i64 %82, ptr @__sancov_gen_cov_switch_values.66)
  switch i16 %81, label %if.end77.if.end99_crit_edge [
    i16 2048, label %if.end77.land.lhs.true88_crit_edge
    i16 -31011, label %if.end77.land.lhs.true88_crit_edge606
  ]

if.end77.land.lhs.true88_crit_edge606:            ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true88

if.end77.land.lhs.true88_crit_edge:               ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true88

if.end77.if.end99_crit_edge:                      ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end99

land.lhs.true88:                                  ; preds = %if.end77.land.lhs.true88_crit_edge, %if.end77.land.lhs.true88_crit_edge606
  %ip_proto = getelementptr inbounds %struct.fl_flow_key, ptr %key, i32 0, i32 3, i32 1
  %ip_proto91 = getelementptr inbounds %struct.fl_flow_key, ptr %mask, i32 0, i32 3, i32 1
  %call92 = call fastcc i32 @fl_dump_key_val(ptr noundef %skb, ptr noundef %ip_proto, i32 noundef 9, ptr noundef %ip_proto91, i32 noundef 0, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call92)
  %tobool93.not = icmp eq i32 %call92, 0
  br i1 %tobool93.not, label %lor.lhs.false94, label %land.lhs.true88.nla_put_failure_crit_edge

land.lhs.true88.nla_put_failure_crit_edge:        ; preds = %land.lhs.true88
  call void @__sanitizer_cov_trace_pc() #14
  br label %nla_put_failure

lor.lhs.false94:                                  ; preds = %land.lhs.true88
  %ip = getelementptr inbounds %struct.fl_flow_key, ptr %key, i32 0, i32 16
  %ip95 = getelementptr inbounds %struct.fl_flow_key, ptr %mask, i32 0, i32 16
  %call96 = call fastcc i32 @fl_dump_key_ip(ptr noundef %skb, i1 noundef zeroext false, ptr noundef %ip, ptr noundef %ip95)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call96)
  %tobool97.not = icmp eq i32 %call96, 0
  br i1 %tobool97.not, label %lor.lhs.false94.if.end99_crit_edge, label %lor.lhs.false94.nla_put_failure_crit_edge

lor.lhs.false94.nla_put_failure_crit_edge:        ; preds = %lor.lhs.false94
  call void @__sanitizer_cov_trace_pc() #14
  br label %nla_put_failure

lor.lhs.false94.if.end99_crit_edge:               ; preds = %lor.lhs.false94
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end99

if.end99:                                         ; preds = %lor.lhs.false94.if.end99_crit_edge, %if.end77.if.end99_crit_edge
  %addr_type = getelementptr inbounds %struct.fl_flow_key, ptr %key, i32 0, i32 1, i32 1
  %83 = ptrtoint ptr %addr_type to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %addr_type, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %84)
  %cmp101 = icmp eq i16 %84, 2
  br i1 %cmp101, label %land.lhs.true103, label %if.end99.if.else114_crit_edge

if.end99.if.else114_crit_edge:                    ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else114

land.lhs.true103:                                 ; preds = %if.end99
  %85 = getelementptr inbounds %struct.fl_flow_key, ptr %key, i32 0, i32 7
  %86 = getelementptr inbounds %struct.fl_flow_key, ptr %mask, i32 0, i32 7
  %call106 = call fastcc i32 @fl_dump_key_val(ptr noundef %skb, ptr noundef %85, i32 noundef 10, ptr noundef %86, i32 noundef 11, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call106)
  %tobool107.not = icmp eq i32 %call106, 0
  br i1 %tobool107.not, label %lor.lhs.false108, label %land.lhs.true103.nla_put_failure_crit_edge

land.lhs.true103.nla_put_failure_crit_edge:       ; preds = %land.lhs.true103
  call void @__sanitizer_cov_trace_pc() #14
  br label %nla_put_failure

lor.lhs.false108:                                 ; preds = %land.lhs.true103
  %dst109 = getelementptr inbounds %struct.fl_flow_key, ptr %key, i32 0, i32 7, i32 0, i32 0, i32 0, i32 0, i32 1
  %dst110 = getelementptr inbounds %struct.fl_flow_key, ptr %mask, i32 0, i32 7, i32 0, i32 0, i32 0, i32 0, i32 1
  %call111 = call fastcc i32 @fl_dump_key_val(ptr noundef %skb, ptr noundef %dst109, i32 noundef 12, ptr noundef %dst110, i32 noundef 13, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call111)
  %tobool112.not = icmp eq i32 %call111, 0
  br i1 %tobool112.not, label %if.else114thread-pre-split, label %lor.lhs.false108.nla_put_failure_crit_edge

lor.lhs.false108.nla_put_failure_crit_edge:       ; preds = %lor.lhs.false108
  call void @__sanitizer_cov_trace_pc() #14
  br label %nla_put_failure

if.else114thread-pre-split:                       ; preds = %lor.lhs.false108
  call void @__sanitizer_cov_trace_pc() #14
  %87 = ptrtoint ptr %addr_type to i32
  call void @__asan_load2_noabort(i32 %87)
  %.pr = load i16, ptr %addr_type, align 2
  br label %if.else114

if.else114:                                       ; preds = %if.else114thread-pre-split, %if.end99.if.else114_crit_edge
  %88 = phi i16 [ %.pr, %if.else114thread-pre-split ], [ %84, %if.end99.if.else114_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %88)
  %cmp118 = icmp eq i16 %88, 3
  br i1 %cmp118, label %land.lhs.true120, label %if.else114.if.end132_crit_edge

if.else114.if.end132_crit_edge:                   ; preds = %if.else114
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end132

land.lhs.true120:                                 ; preds = %if.else114
  %89 = getelementptr inbounds %struct.fl_flow_key, ptr %key, i32 0, i32 7
  %90 = getelementptr inbounds %struct.fl_flow_key, ptr %mask, i32 0, i32 7
  %call123 = call fastcc i32 @fl_dump_key_val(ptr noundef %skb, ptr noundef %89, i32 noundef 14, ptr noundef %90, i32 noundef 15, i32 noundef 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call123)
  %tobool124.not = icmp eq i32 %call123, 0
  br i1 %tobool124.not, label %lor.lhs.false125, label %land.lhs.true120.nla_put_failure_crit_edge

land.lhs.true120.nla_put_failure_crit_edge:       ; preds = %land.lhs.true120
  call void @__sanitizer_cov_trace_pc() #14
  br label %nla_put_failure

lor.lhs.false125:                                 ; preds = %land.lhs.true120
  %dst126 = getelementptr inbounds %struct.fl_flow_key, ptr %key, i32 0, i32 7, i32 0, i32 1
  %dst127 = getelementptr inbounds %struct.fl_flow_key, ptr %mask, i32 0, i32 7, i32 0, i32 1
  %call128 = call fastcc i32 @fl_dump_key_val(ptr noundef %skb, ptr noundef %dst126, i32 noundef 16, ptr noundef %dst127, i32 noundef 17, i32 noundef 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call128)
  %tobool129.not = icmp eq i32 %call128, 0
  br i1 %tobool129.not, label %lor.lhs.false125.if.end132_crit_edge, label %lor.lhs.false125.nla_put_failure_crit_edge

lor.lhs.false125.nla_put_failure_crit_edge:       ; preds = %lor.lhs.false125
  call void @__sanitizer_cov_trace_pc() #14
  br label %nla_put_failure

lor.lhs.false125.if.end132_crit_edge:             ; preds = %lor.lhs.false125
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end132

if.end132:                                        ; preds = %lor.lhs.false125.if.end132_crit_edge, %if.else114.if.end132_crit_edge
  %ip_proto134 = getelementptr inbounds %struct.fl_flow_key, ptr %key, i32 0, i32 3, i32 1
  %91 = ptrtoint ptr %ip_proto134 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %ip_proto134, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %92)
  %cmp136 = icmp eq i8 %92, 6
  br i1 %cmp136, label %land.lhs.true138, label %if.end132.if.else157_crit_edge

if.end132.if.else157_crit_edge:                   ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else157

land.lhs.true138:                                 ; preds = %if.end132
  %tp = getelementptr inbounds %struct.fl_flow_key, ptr %key, i32 0, i32 8
  %tp140 = getelementptr inbounds %struct.fl_flow_key, ptr %mask, i32 0, i32 8
  %call142 = call fastcc i32 @fl_dump_key_val(ptr noundef %skb, ptr noundef %tp, i32 noundef 18, ptr noundef %tp140, i32 noundef 35, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call142)
  %tobool143.not = icmp eq i32 %call142, 0
  br i1 %tobool143.not, label %lor.lhs.false144, label %land.lhs.true138.nla_put_failure_crit_edge

land.lhs.true138.nla_put_failure_crit_edge:       ; preds = %land.lhs.true138
  call void @__sanitizer_cov_trace_pc() #14
  br label %nla_put_failure

lor.lhs.false144:                                 ; preds = %land.lhs.true138
  %dst146 = getelementptr inbounds %struct.anon.165, ptr %tp, i32 0, i32 1
  %dst148 = getelementptr inbounds %struct.anon.165, ptr %tp140, i32 0, i32 1
  %call149 = call fastcc i32 @fl_dump_key_val(ptr noundef %skb, ptr noundef %dst146, i32 noundef 19, ptr noundef %dst148, i32 noundef 36, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call149)
  %tobool150.not = icmp eq i32 %call149, 0
  br i1 %tobool150.not, label %lor.lhs.false151, label %lor.lhs.false144.nla_put_failure_crit_edge

lor.lhs.false144.nla_put_failure_crit_edge:       ; preds = %lor.lhs.false144
  call void @__sanitizer_cov_trace_pc() #14
  br label %nla_put_failure

lor.lhs.false151:                                 ; preds = %lor.lhs.false144
  %tcp = getelementptr inbounds %struct.fl_flow_key, ptr %key, i32 0, i32 15
  %tcp152 = getelementptr inbounds %struct.fl_flow_key, ptr %mask, i32 0, i32 15
  %call154 = call fastcc i32 @fl_dump_key_val(ptr noundef %skb, ptr noundef %tcp, i32 noundef 71, ptr noundef %tcp152, i32 noundef 72, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call154)
  %tobool155.not = icmp eq i32 %call154, 0
  br i1 %tobool155.not, label %if.else157thread-pre-split, label %lor.lhs.false151.nla_put_failure_crit_edge

lor.lhs.false151.nla_put_failure_crit_edge:       ; preds = %lor.lhs.false151
  call void @__sanitizer_cov_trace_pc() #14
  br label %nla_put_failure

if.else157thread-pre-split:                       ; preds = %lor.lhs.false151
  call void @__sanitizer_cov_trace_pc() #14
  %93 = ptrtoint ptr %ip_proto134 to i32
  call void @__asan_load1_noabort(i32 %93)
  %.pr594 = load i8, ptr %ip_proto134, align 2
  br label %if.else157

if.else157:                                       ; preds = %if.else157thread-pre-split, %if.end132.if.else157_crit_edge
  %94 = phi i8 [ %.pr594, %if.else157thread-pre-split ], [ %92, %if.end132.if.else157_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %94)
  %cmp161 = icmp eq i8 %94, 17
  br i1 %cmp161, label %land.lhs.true163, label %if.else157.if.else178_crit_edge

if.else157.if.else178_crit_edge:                  ; preds = %if.else157
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else178

land.lhs.true163:                                 ; preds = %if.else157
  %tp164 = getelementptr inbounds %struct.fl_flow_key, ptr %key, i32 0, i32 8
  %tp166 = getelementptr inbounds %struct.fl_flow_key, ptr %mask, i32 0, i32 8
  %call168 = call fastcc i32 @fl_dump_key_val(ptr noundef %skb, ptr noundef %tp164, i32 noundef 20, ptr noundef %tp166, i32 noundef 37, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call168)
  %tobool169.not = icmp eq i32 %call168, 0
  br i1 %tobool169.not, label %lor.lhs.false170, label %land.lhs.true163.nla_put_failure_crit_edge

land.lhs.true163.nla_put_failure_crit_edge:       ; preds = %land.lhs.true163
  call void @__sanitizer_cov_trace_pc() #14
  br label %nla_put_failure

lor.lhs.false170:                                 ; preds = %land.lhs.true163
  %dst172 = getelementptr inbounds %struct.anon.165, ptr %tp164, i32 0, i32 1
  %dst174 = getelementptr inbounds %struct.anon.165, ptr %tp166, i32 0, i32 1
  %call175 = call fastcc i32 @fl_dump_key_val(ptr noundef %skb, ptr noundef %dst172, i32 noundef 21, ptr noundef %dst174, i32 noundef 38, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call175)
  %tobool176.not = icmp eq i32 %call175, 0
  br i1 %tobool176.not, label %lor.lhs.false170.if.else178_crit_edge, label %lor.lhs.false170.nla_put_failure_crit_edge

lor.lhs.false170.nla_put_failure_crit_edge:       ; preds = %lor.lhs.false170
  call void @__sanitizer_cov_trace_pc() #14
  br label %nla_put_failure

lor.lhs.false170.if.else178_crit_edge:            ; preds = %lor.lhs.false170
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else178

if.else178:                                       ; preds = %lor.lhs.false170.if.else178_crit_edge, %if.else157.if.else178_crit_edge
  %95 = ptrtoint ptr %ip_proto134 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %ip_proto134, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -124, i8 %96)
  %cmp182 = icmp eq i8 %96, -124
  br i1 %cmp182, label %land.lhs.true184, label %if.else178.if.else199_crit_edge

if.else178.if.else199_crit_edge:                  ; preds = %if.else178
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else199

land.lhs.true184:                                 ; preds = %if.else178
  %tp185 = getelementptr inbounds %struct.fl_flow_key, ptr %key, i32 0, i32 8
  %tp187 = getelementptr inbounds %struct.fl_flow_key, ptr %mask, i32 0, i32 8
  %call189 = call fastcc i32 @fl_dump_key_val(ptr noundef %skb, ptr noundef %tp185, i32 noundef 41, ptr noundef %tp187, i32 noundef 39, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call189)
  %tobool190.not = icmp eq i32 %call189, 0
  br i1 %tobool190.not, label %lor.lhs.false191, label %land.lhs.true184.nla_put_failure_crit_edge

land.lhs.true184.nla_put_failure_crit_edge:       ; preds = %land.lhs.true184
  call void @__sanitizer_cov_trace_pc() #14
  br label %nla_put_failure

lor.lhs.false191:                                 ; preds = %land.lhs.true184
  %dst193 = getelementptr inbounds %struct.anon.165, ptr %tp185, i32 0, i32 1
  %dst195 = getelementptr inbounds %struct.anon.165, ptr %tp187, i32 0, i32 1
  %call196 = call fastcc i32 @fl_dump_key_val(ptr noundef %skb, ptr noundef %dst193, i32 noundef 42, ptr noundef %dst195, i32 noundef 40, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call196)
  %tobool197.not = icmp eq i32 %call196, 0
  br i1 %tobool197.not, label %lor.lhs.false191.if.else199_crit_edge, label %lor.lhs.false191.nla_put_failure_crit_edge

lor.lhs.false191.nla_put_failure_crit_edge:       ; preds = %lor.lhs.false191
  call void @__sanitizer_cov_trace_pc() #14
  br label %nla_put_failure

lor.lhs.false191.if.else199_crit_edge:            ; preds = %lor.lhs.false191
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else199

if.else199:                                       ; preds = %lor.lhs.false191.if.else199_crit_edge, %if.else178.if.else199_crit_edge
  %97 = ptrtoint ptr %basic to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %basic, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %98)
  %cmp203 = icmp eq i16 %98, 2048
  br i1 %cmp203, label %land.lhs.true205, label %if.else199.if.else223_crit_edge

if.else199.if.else223_crit_edge:                  ; preds = %if.else199
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else223

land.lhs.true205:                                 ; preds = %if.else199
  %99 = ptrtoint ptr %ip_proto134 to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %ip_proto134, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %100)
  %cmp209 = icmp eq i8 %100, 1
  br i1 %cmp209, label %land.lhs.true211, label %land.lhs.true205.if.end301_crit_edge

land.lhs.true205.if.end301_crit_edge:             ; preds = %land.lhs.true205
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end301

land.lhs.true211:                                 ; preds = %land.lhs.true205
  %icmp = getelementptr inbounds %struct.fl_flow_key, ptr %key, i32 0, i32 9
  %icmp212 = getelementptr inbounds %struct.fl_flow_key, ptr %mask, i32 0, i32 9
  %call214 = call fastcc i32 @fl_dump_key_val(ptr noundef %skb, ptr noundef %icmp, i32 noundef 51, ptr noundef %icmp212, i32 noundef 52, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call214)
  %tobool215.not = icmp eq i32 %call214, 0
  br i1 %tobool215.not, label %lor.lhs.false216, label %land.lhs.true211.nla_put_failure_crit_edge

land.lhs.true211.nla_put_failure_crit_edge:       ; preds = %land.lhs.true211
  call void @__sanitizer_cov_trace_pc() #14
  br label %nla_put_failure

lor.lhs.false216:                                 ; preds = %land.lhs.true211
  %code = getelementptr inbounds %struct.fl_flow_key, ptr %key, i32 0, i32 9, i32 0, i32 1
  %code219 = getelementptr inbounds %struct.fl_flow_key, ptr %mask, i32 0, i32 9, i32 0, i32 1
  %call220 = call fastcc i32 @fl_dump_key_val(ptr noundef %skb, ptr noundef %code, i32 noundef 49, ptr noundef %code219, i32 noundef 50, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call220)
  %tobool221.not = icmp eq i32 %call220, 0
  br i1 %tobool221.not, label %if.else223thread-pre-split, label %lor.lhs.false216.nla_put_failure_crit_edge

lor.lhs.false216.nla_put_failure_crit_edge:       ; preds = %lor.lhs.false216
  call void @__sanitizer_cov_trace_pc() #14
  br label %nla_put_failure

if.else223thread-pre-split:                       ; preds = %lor.lhs.false216
  call void @__sanitizer_cov_trace_pc() #14
  %101 = ptrtoint ptr %basic to i32
  call void @__asan_load2_noabort(i32 %101)
  %.pr595 = load i16, ptr %basic, align 4
  br label %if.else223

if.else223:                                       ; preds = %if.else223thread-pre-split, %if.else199.if.else223_crit_edge
  %102 = phi i16 [ %.pr595, %if.else223thread-pre-split ], [ %98, %if.else199.if.else223_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 -31011, i16 %102)
  %cmp227 = icmp eq i16 %102, -31011
  br i1 %cmp227, label %land.lhs.true229, label %if.else223.if.else250_crit_edge

if.else223.if.else250_crit_edge:                  ; preds = %if.else223
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else250

land.lhs.true229:                                 ; preds = %if.else223
  %103 = ptrtoint ptr %ip_proto134 to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %ip_proto134, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 58, i8 %104)
  %cmp233 = icmp eq i8 %104, 58
  br i1 %cmp233, label %land.lhs.true235, label %land.lhs.true229.if.else250_crit_edge

land.lhs.true229.if.else250_crit_edge:            ; preds = %land.lhs.true229
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else250

land.lhs.true235:                                 ; preds = %land.lhs.true229
  %icmp236 = getelementptr inbounds %struct.fl_flow_key, ptr %key, i32 0, i32 9
  %icmp238 = getelementptr inbounds %struct.fl_flow_key, ptr %mask, i32 0, i32 9
  %call240 = call fastcc i32 @fl_dump_key_val(ptr noundef %skb, ptr noundef %icmp236, i32 noundef 55, ptr noundef %icmp238, i32 noundef 56, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call240)
  %tobool241.not = icmp eq i32 %call240, 0
  br i1 %tobool241.not, label %lor.lhs.false242, label %land.lhs.true235.nla_put_failure_crit_edge

land.lhs.true235.nla_put_failure_crit_edge:       ; preds = %land.lhs.true235
  call void @__sanitizer_cov_trace_pc() #14
  br label %nla_put_failure

lor.lhs.false242:                                 ; preds = %land.lhs.true235
  %code244 = getelementptr inbounds %struct.fl_flow_key, ptr %key, i32 0, i32 9, i32 0, i32 1
  %code246 = getelementptr inbounds %struct.fl_flow_key, ptr %mask, i32 0, i32 9, i32 0, i32 1
  %call247 = call fastcc i32 @fl_dump_key_val(ptr noundef %skb, ptr noundef %code244, i32 noundef 53, ptr noundef %code246, i32 noundef 54, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call247)
  %tobool248.not = icmp eq i32 %call247, 0
  br i1 %tobool248.not, label %lor.lhs.false242.if.else250_crit_edge, label %lor.lhs.false242.nla_put_failure_crit_edge

lor.lhs.false242.nla_put_failure_crit_edge:       ; preds = %lor.lhs.false242
  call void @__sanitizer_cov_trace_pc() #14
  br label %nla_put_failure

lor.lhs.false242.if.else250_crit_edge:            ; preds = %lor.lhs.false242
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else250

if.else250:                                       ; preds = %lor.lhs.false242.if.else250_crit_edge, %land.lhs.true229.if.else250_crit_edge, %if.else223.if.else250_crit_edge
  %105 = ptrtoint ptr %basic to i32
  call void @__asan_load2_noabort(i32 %105)
  %.pr598 = load i16, ptr %basic, align 4
  %106 = zext i16 %.pr598 to i64
  call void @__sanitizer_cov_trace_switch(i64 %106, ptr @__sancov_gen_cov_switch_values.67)
  switch i16 %.pr598, label %if.else250.if.end301thread-pre-split_crit_edge [
    i16 2054, label %if.else250.land.lhs.true262_crit_edge
    i16 -32715, label %if.else250.land.lhs.true262_crit_edge607
  ]

if.else250.land.lhs.true262_crit_edge607:         ; preds = %if.else250
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true262

if.else250.land.lhs.true262_crit_edge:            ; preds = %if.else250
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true262

if.else250.if.end301thread-pre-split_crit_edge:   ; preds = %if.else250
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end301thread-pre-split

land.lhs.true262:                                 ; preds = %if.else250.land.lhs.true262_crit_edge, %if.else250.land.lhs.true262_crit_edge607
  %arp = getelementptr inbounds %struct.fl_flow_key, ptr %key, i32 0, i32 10
  %arp263 = getelementptr inbounds %struct.fl_flow_key, ptr %mask, i32 0, i32 10
  %call265 = call fastcc i32 @fl_dump_key_val(ptr noundef %skb, ptr noundef %arp, i32 noundef 57, ptr noundef %arp263, i32 noundef 58, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call265)
  %tobool266.not = icmp eq i32 %call265, 0
  br i1 %tobool266.not, label %lor.lhs.false267, label %land.lhs.true262.nla_put_failure_crit_edge

land.lhs.true262.nla_put_failure_crit_edge:       ; preds = %land.lhs.true262
  call void @__sanitizer_cov_trace_pc() #14
  br label %nla_put_failure

lor.lhs.false267:                                 ; preds = %land.lhs.true262
  %tip = getelementptr inbounds %struct.fl_flow_key, ptr %key, i32 0, i32 10, i32 1
  %tip270 = getelementptr inbounds %struct.fl_flow_key, ptr %mask, i32 0, i32 10, i32 1
  %call271 = call fastcc i32 @fl_dump_key_val(ptr noundef %skb, ptr noundef %tip, i32 noundef 59, ptr noundef %tip270, i32 noundef 60, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call271)
  %tobool272.not = icmp eq i32 %call271, 0
  br i1 %tobool272.not, label %lor.lhs.false273, label %lor.lhs.false267.nla_put_failure_crit_edge

lor.lhs.false267.nla_put_failure_crit_edge:       ; preds = %lor.lhs.false267
  call void @__sanitizer_cov_trace_pc() #14
  br label %nla_put_failure

lor.lhs.false273:                                 ; preds = %lor.lhs.false267
  %op = getelementptr inbounds %struct.fl_flow_key, ptr %key, i32 0, i32 10, i32 2
  %op276 = getelementptr inbounds %struct.fl_flow_key, ptr %mask, i32 0, i32 10, i32 2
  %call277 = call fastcc i32 @fl_dump_key_val(ptr noundef %skb, ptr noundef %op, i32 noundef 61, ptr noundef %op276, i32 noundef 62, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call277)
  %tobool278.not = icmp eq i32 %call277, 0
  br i1 %tobool278.not, label %lor.lhs.false279, label %lor.lhs.false273.nla_put_failure_crit_edge

lor.lhs.false273.nla_put_failure_crit_edge:       ; preds = %lor.lhs.false273
  call void @__sanitizer_cov_trace_pc() #14
  br label %nla_put_failure

lor.lhs.false279:                                 ; preds = %lor.lhs.false273
  %sha = getelementptr inbounds %struct.fl_flow_key, ptr %key, i32 0, i32 10, i32 3
  %sha283 = getelementptr inbounds %struct.fl_flow_key, ptr %mask, i32 0, i32 10, i32 3
  %call285 = call fastcc i32 @fl_dump_key_val(ptr noundef %skb, ptr noundef %sha, i32 noundef 63, ptr noundef %sha283, i32 noundef 64, i32 noundef 6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call285)
  %tobool286.not = icmp eq i32 %call285, 0
  br i1 %tobool286.not, label %lor.lhs.false287, label %lor.lhs.false279.nla_put_failure_crit_edge

lor.lhs.false279.nla_put_failure_crit_edge:       ; preds = %lor.lhs.false279
  call void @__sanitizer_cov_trace_pc() #14
  br label %nla_put_failure

lor.lhs.false287:                                 ; preds = %lor.lhs.false279
  %tha = getelementptr inbounds %struct.fl_flow_key, ptr %key, i32 0, i32 10, i32 4
  %tha291 = getelementptr inbounds %struct.fl_flow_key, ptr %mask, i32 0, i32 10, i32 4
  %call293 = call fastcc i32 @fl_dump_key_val(ptr noundef %skb, ptr noundef %tha, i32 noundef 65, ptr noundef %tha291, i32 noundef 66, i32 noundef 6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call293)
  %tobool294.not = icmp eq i32 %call293, 0
  br i1 %tobool294.not, label %lor.lhs.false287.if.end301thread-pre-split_crit_edge, label %lor.lhs.false287.nla_put_failure_crit_edge

lor.lhs.false287.nla_put_failure_crit_edge:       ; preds = %lor.lhs.false287
  call void @__sanitizer_cov_trace_pc() #14
  br label %nla_put_failure

lor.lhs.false287.if.end301thread-pre-split_crit_edge: ; preds = %lor.lhs.false287
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end301thread-pre-split

if.end301thread-pre-split:                        ; preds = %lor.lhs.false287.if.end301thread-pre-split_crit_edge, %if.else250.if.end301thread-pre-split_crit_edge
  %107 = ptrtoint ptr %ip_proto134 to i32
  call void @__asan_load1_noabort(i32 %107)
  %.pr599 = load i8, ptr %ip_proto134, align 2
  br label %if.end301

if.end301:                                        ; preds = %if.end301thread-pre-split, %land.lhs.true205.if.end301_crit_edge
  %108 = phi i8 [ %.pr599, %if.end301thread-pre-split ], [ %100, %land.lhs.true205.if.end301_crit_edge ]
  %109 = zext i8 %108 to i64
  call void @__sanitizer_cov_trace_switch(i64 %109, ptr @__sancov_gen_cov_switch_values.68)
  switch i8 %108, label %if.end301.if.end323_crit_edge [
    i8 6, label %if.end301.land.lhs.true319_crit_edge
    i8 17, label %if.end301.land.lhs.true319_crit_edge608
    i8 -124, label %if.end301.land.lhs.true319_crit_edge609
  ]

if.end301.land.lhs.true319_crit_edge609:          ; preds = %if.end301
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true319

if.end301.land.lhs.true319_crit_edge608:          ; preds = %if.end301
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true319

if.end301.land.lhs.true319_crit_edge:             ; preds = %if.end301
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true319

if.end301.if.end323_crit_edge:                    ; preds = %if.end301
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end323

land.lhs.true319:                                 ; preds = %if.end301.land.lhs.true319_crit_edge, %if.end301.land.lhs.true319_crit_edge608, %if.end301.land.lhs.true319_crit_edge609
  %call320 = call fastcc i32 @fl_dump_key_port_range(ptr noundef %skb, ptr noundef %key, ptr noundef %mask)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call320)
  %tobool321.not = icmp eq i32 %call320, 0
  br i1 %tobool321.not, label %land.lhs.true319.if.end323_crit_edge, label %land.lhs.true319.nla_put_failure_crit_edge

land.lhs.true319.nla_put_failure_crit_edge:       ; preds = %land.lhs.true319
  call void @__sanitizer_cov_trace_pc() #14
  br label %nla_put_failure

land.lhs.true319.if.end323_crit_edge:             ; preds = %land.lhs.true319
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end323

if.end323:                                        ; preds = %land.lhs.true319.if.end323_crit_edge, %if.end301.if.end323_crit_edge
  %addr_type324 = getelementptr inbounds %struct.fl_flow_key, ptr %key, i32 0, i32 2, i32 1
  %110 = ptrtoint ptr %addr_type324 to i32
  call void @__asan_load2_noabort(i32 %110)
  %111 = load i16, ptr %addr_type324, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %111)
  %cmp326 = icmp eq i16 %111, 2
  br i1 %cmp326, label %land.lhs.true328, label %if.end323.if.else339_crit_edge

if.end323.if.else339_crit_edge:                   ; preds = %if.end323
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else339

land.lhs.true328:                                 ; preds = %if.end323
  %112 = getelementptr inbounds %struct.fl_flow_key, ptr %key, i32 0, i32 12
  %113 = getelementptr inbounds %struct.fl_flow_key, ptr %mask, i32 0, i32 12
  %call331 = call fastcc i32 @fl_dump_key_val(ptr noundef %skb, ptr noundef %112, i32 noundef 27, ptr noundef %113, i32 noundef 28, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call331)
  %tobool332.not = icmp eq i32 %call331, 0
  br i1 %tobool332.not, label %lor.lhs.false333, label %land.lhs.true328.nla_put_failure_crit_edge

land.lhs.true328.nla_put_failure_crit_edge:       ; preds = %land.lhs.true328
  call void @__sanitizer_cov_trace_pc() #14
  br label %nla_put_failure

lor.lhs.false333:                                 ; preds = %land.lhs.true328
  %dst334 = getelementptr inbounds %struct.fl_flow_key, ptr %key, i32 0, i32 12, i32 0, i32 0, i32 0, i32 0, i32 1
  %dst335 = getelementptr inbounds %struct.fl_flow_key, ptr %mask, i32 0, i32 12, i32 0, i32 0, i32 0, i32 0, i32 1
  %call336 = call fastcc i32 @fl_dump_key_val(ptr noundef %skb, ptr noundef %dst334, i32 noundef 29, ptr noundef %dst335, i32 noundef 30, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call336)
  %tobool337.not = icmp eq i32 %call336, 0
  br i1 %tobool337.not, label %if.else339thread-pre-split, label %lor.lhs.false333.nla_put_failure_crit_edge

lor.lhs.false333.nla_put_failure_crit_edge:       ; preds = %lor.lhs.false333
  call void @__sanitizer_cov_trace_pc() #14
  br label %nla_put_failure

if.else339thread-pre-split:                       ; preds = %lor.lhs.false333
  call void @__sanitizer_cov_trace_pc() #14
  %114 = ptrtoint ptr %addr_type324 to i32
  call void @__asan_load2_noabort(i32 %114)
  %.pr597 = load i16, ptr %addr_type324, align 2
  br label %if.else339

if.else339:                                       ; preds = %if.else339thread-pre-split, %if.end323.if.else339_crit_edge
  %115 = phi i16 [ %.pr597, %if.else339thread-pre-split ], [ %111, %if.end323.if.else339_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %115)
  %cmp343 = icmp eq i16 %115, 3
  br i1 %cmp343, label %land.lhs.true345, label %if.else339.if.end357_crit_edge

if.else339.if.end357_crit_edge:                   ; preds = %if.else339
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end357

land.lhs.true345:                                 ; preds = %if.else339
  %116 = getelementptr inbounds %struct.fl_flow_key, ptr %key, i32 0, i32 12
  %117 = getelementptr inbounds %struct.fl_flow_key, ptr %mask, i32 0, i32 12
  %call348 = call fastcc i32 @fl_dump_key_val(ptr noundef %skb, ptr noundef %116, i32 noundef 31, ptr noundef %117, i32 noundef 32, i32 noundef 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call348)
  %tobool349.not = icmp eq i32 %call348, 0
  br i1 %tobool349.not, label %lor.lhs.false350, label %land.lhs.true345.nla_put_failure_crit_edge

land.lhs.true345.nla_put_failure_crit_edge:       ; preds = %land.lhs.true345
  call void @__sanitizer_cov_trace_pc() #14
  br label %nla_put_failure

lor.lhs.false350:                                 ; preds = %land.lhs.true345
  %dst351 = getelementptr inbounds %struct.fl_flow_key, ptr %key, i32 0, i32 12, i32 0, i32 1
  %dst352 = getelementptr inbounds %struct.fl_flow_key, ptr %mask, i32 0, i32 12, i32 0, i32 1
  %call353 = call fastcc i32 @fl_dump_key_val(ptr noundef %skb, ptr noundef %dst351, i32 noundef 33, ptr noundef %dst352, i32 noundef 34, i32 noundef 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call353)
  %tobool354.not = icmp eq i32 %call353, 0
  br i1 %tobool354.not, label %lor.lhs.false350.if.end357_crit_edge, label %lor.lhs.false350.nla_put_failure_crit_edge

lor.lhs.false350.nla_put_failure_crit_edge:       ; preds = %lor.lhs.false350
  call void @__sanitizer_cov_trace_pc() #14
  br label %nla_put_failure

lor.lhs.false350.if.end357_crit_edge:             ; preds = %lor.lhs.false350
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end357

if.end357:                                        ; preds = %lor.lhs.false350.if.end357_crit_edge, %if.else339.if.end357_crit_edge
  %enc_key_id = getelementptr inbounds %struct.fl_flow_key, ptr %key, i32 0, i32 11
  %enc_key_id358 = getelementptr inbounds %struct.fl_flow_key, ptr %mask, i32 0, i32 11
  %call359 = call fastcc i32 @fl_dump_key_val(ptr noundef %skb, ptr noundef %enc_key_id, i32 noundef 26, ptr noundef %enc_key_id358, i32 noundef 0, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call359)
  %tobool360.not = icmp eq i32 %call359, 0
  br i1 %tobool360.not, label %lor.lhs.false361, label %if.end357.nla_put_failure_crit_edge

if.end357.nla_put_failure_crit_edge:              ; preds = %if.end357
  call void @__sanitizer_cov_trace_pc() #14
  br label %nla_put_failure

lor.lhs.false361:                                 ; preds = %if.end357
  %enc_tp = getelementptr inbounds %struct.fl_flow_key, ptr %key, i32 0, i32 13
  %enc_tp363 = getelementptr inbounds %struct.fl_flow_key, ptr %mask, i32 0, i32 13
  %call365 = call fastcc i32 @fl_dump_key_val(ptr noundef %skb, ptr noundef %enc_tp, i32 noundef 43, ptr noundef %enc_tp363, i32 noundef 44, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call365)
  %tobool366.not = icmp eq i32 %call365, 0
  br i1 %tobool366.not, label %lor.lhs.false367, label %lor.lhs.false361.nla_put_failure_crit_edge

lor.lhs.false361.nla_put_failure_crit_edge:       ; preds = %lor.lhs.false361
  call void @__sanitizer_cov_trace_pc() #14
  br label %nla_put_failure

lor.lhs.false367:                                 ; preds = %lor.lhs.false361
  %dst369 = getelementptr inbounds %struct.anon.165, ptr %enc_tp, i32 0, i32 1
  %dst371 = getelementptr inbounds %struct.anon.165, ptr %enc_tp363, i32 0, i32 1
  %call372 = call fastcc i32 @fl_dump_key_val(ptr noundef %skb, ptr noundef %dst369, i32 noundef 45, ptr noundef %dst371, i32 noundef 46, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call372)
  %tobool373.not = icmp eq i32 %call372, 0
  br i1 %tobool373.not, label %lor.lhs.false374, label %lor.lhs.false367.nla_put_failure_crit_edge

lor.lhs.false367.nla_put_failure_crit_edge:       ; preds = %lor.lhs.false367
  call void @__sanitizer_cov_trace_pc() #14
  br label %nla_put_failure

lor.lhs.false374:                                 ; preds = %lor.lhs.false367
  %enc_ip = getelementptr inbounds %struct.fl_flow_key, ptr %key, i32 0, i32 17
  %enc_ip375 = getelementptr inbounds %struct.fl_flow_key, ptr %mask, i32 0, i32 17
  %call376 = call fastcc i32 @fl_dump_key_ip(ptr noundef %skb, i1 noundef zeroext true, ptr noundef %enc_ip, ptr noundef %enc_ip375)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call376)
  %tobool377.not = icmp eq i32 %call376, 0
  br i1 %tobool377.not, label %lor.lhs.false378, label %lor.lhs.false374.nla_put_failure_crit_edge

lor.lhs.false374.nla_put_failure_crit_edge:       ; preds = %lor.lhs.false374
  call void @__sanitizer_cov_trace_pc() #14
  br label %nla_put_failure

lor.lhs.false378:                                 ; preds = %lor.lhs.false374
  %enc_opts = getelementptr inbounds %struct.fl_flow_key, ptr %key, i32 0, i32 18
  %enc_opts379 = getelementptr inbounds %struct.fl_flow_key, ptr %mask, i32 0, i32 18
  %call380 = call fastcc i32 @fl_dump_key_enc_opt(ptr noundef %skb, ptr noundef %enc_opts, ptr noundef %enc_opts379)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call380)
  %tobool381.not = icmp eq i32 %call380, 0
  br i1 %tobool381.not, label %if.end383, label %lor.lhs.false378.nla_put_failure_crit_edge

lor.lhs.false378.nla_put_failure_crit_edge:       ; preds = %lor.lhs.false378
  call void @__sanitizer_cov_trace_pc() #14
  br label %nla_put_failure

if.end383:                                        ; preds = %lor.lhs.false378
  %ct = getelementptr inbounds %struct.fl_flow_key, ptr %key, i32 0, i32 20
  %ct384 = getelementptr inbounds %struct.fl_flow_key, ptr %mask, i32 0, i32 20
  %call385 = call fastcc i32 @fl_dump_key_ct(ptr noundef %skb, ptr noundef %ct, ptr noundef %ct384)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call385)
  %tobool386.not = icmp eq i32 %call385, 0
  br i1 %tobool386.not, label %if.end388, label %if.end383.nla_put_failure_crit_edge

if.end383.nla_put_failure_crit_edge:              ; preds = %if.end383
  call void @__sanitizer_cov_trace_pc() #14
  br label %nla_put_failure

if.end388:                                        ; preds = %if.end383
  %flags390 = getelementptr inbounds %struct.fl_flow_key, ptr %key, i32 0, i32 1, i32 2
  %118 = ptrtoint ptr %flags390 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %flags390, align 4
  %flags392 = getelementptr inbounds %struct.fl_flow_key, ptr %mask, i32 0, i32 1, i32 2
  %120 = ptrtoint ptr %flags392 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %flags392, align 4
  %call393 = call fastcc i32 @fl_dump_key_flags(ptr noundef %skb, i32 noundef %119, i32 noundef %121)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call393)
  %tobool394.not = icmp eq i32 %call393, 0
  br i1 %tobool394.not, label %if.end396, label %if.end388.nla_put_failure_crit_edge

if.end388.nla_put_failure_crit_edge:              ; preds = %if.end388
  call void @__sanitizer_cov_trace_pc() #14
  br label %nla_put_failure

if.end396:                                        ; preds = %if.end388
  %hash = getelementptr inbounds %struct.fl_flow_key, ptr %key, i32 0, i32 21
  %hash398 = getelementptr inbounds %struct.fl_flow_key, ptr %mask, i32 0, i32 21
  %call400 = call fastcc i32 @fl_dump_key_val(ptr noundef %skb, ptr noundef %hash, i32 noundef 100, ptr noundef %hash398, i32 noundef 101, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call400)
  %tobool401.not = icmp eq i32 %call400, 0
  br i1 %tobool401.not, label %if.end396.return_crit_edge, label %if.end396.nla_put_failure_crit_edge

if.end396.nla_put_failure_crit_edge:              ; preds = %if.end396
  call void @__sanitizer_cov_trace_pc() #14
  br label %nla_put_failure

if.end396.return_crit_edge:                       ; preds = %if.end396
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

nla_put_failure:                                  ; preds = %if.end396.nla_put_failure_crit_edge, %if.end388.nla_put_failure_crit_edge, %if.end383.nla_put_failure_crit_edge, %lor.lhs.false378.nla_put_failure_crit_edge, %lor.lhs.false374.nla_put_failure_crit_edge, %lor.lhs.false367.nla_put_failure_crit_edge, %lor.lhs.false361.nla_put_failure_crit_edge, %if.end357.nla_put_failure_crit_edge, %lor.lhs.false350.nla_put_failure_crit_edge, %land.lhs.true345.nla_put_failure_crit_edge, %lor.lhs.false333.nla_put_failure_crit_edge, %land.lhs.true328.nla_put_failure_crit_edge, %land.lhs.true319.nla_put_failure_crit_edge, %lor.lhs.false287.nla_put_failure_crit_edge, %lor.lhs.false279.nla_put_failure_crit_edge, %lor.lhs.false273.nla_put_failure_crit_edge, %lor.lhs.false267.nla_put_failure_crit_edge, %land.lhs.true262.nla_put_failure_crit_edge, %lor.lhs.false242.nla_put_failure_crit_edge, %land.lhs.true235.nla_put_failure_crit_edge, %lor.lhs.false216.nla_put_failure_crit_edge, %land.lhs.true211.nla_put_failure_crit_edge, %lor.lhs.false191.nla_put_failure_crit_edge, %land.lhs.true184.nla_put_failure_crit_edge, %lor.lhs.false170.nla_put_failure_crit_edge, %land.lhs.true163.nla_put_failure_crit_edge, %lor.lhs.false151.nla_put_failure_crit_edge, %lor.lhs.false144.nla_put_failure_crit_edge, %land.lhs.true138.nla_put_failure_crit_edge, %lor.lhs.false125.nla_put_failure_crit_edge, %land.lhs.true120.nla_put_failure_crit_edge, %lor.lhs.false108.nla_put_failure_crit_edge, %land.lhs.true103.nla_put_failure_crit_edge, %lor.lhs.false94.nla_put_failure_crit_edge, %land.lhs.true88.nla_put_failure_crit_edge, %if.then68.nla_put_failure_crit_edge, %if.then58.nla_put_failure_crit_edge, %land.lhs.true44.nla_put_failure_crit_edge, %if.end37.nla_put_failure_crit_edge, %if.end32.nla_put_failure_crit_edge, %if.then61.i.nla_put_failure_crit_edge, %if.then49.i.nla_put_failure_crit_edge, %if.then36.i.nla_put_failure_crit_edge, %if.then23.i.nla_put_failure_crit_edge, %nla_nest_cancel.exit54.i.i, %if.then18.i.nla_put_failure_crit_edge, %if.end.i573.nla_put_failure_crit_edge, %if.end4.i563.nla_put_failure_crit_edge, %if.end.i562.nla_put_failure_crit_edge, %if.end4.i.nla_put_failure_crit_edge, %if.end.i.nla_put_failure_crit_edge, %land.lhs.true.nla_put_failure_crit_edge
  br label %return

return:                                           ; preds = %nla_put_failure, %if.end396.return_crit_edge
  %retval.0 = phi i32 [ -90, %nla_put_failure ], [ 0, %if.end396.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fl_hw_update_stats(ptr nocapture noundef readonly %tp, ptr noundef %f, i1 noundef zeroext %rtnl_held) unnamed_addr #2 align 64 {
entry:
  %cls_flower = alloca %struct.flow_cls_offload, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %chain = getelementptr inbounds %struct.tcf_proto, ptr %tp, i32 0, i32 7
  %0 = ptrtoint ptr %chain to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chain, align 4
  %block1 = getelementptr inbounds %struct.tcf_chain, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %block1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %block1, align 4
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %cls_flower) #12
  %4 = call ptr @memset(ptr %cls_flower, i32 0, i32 80)
  %index.i = getelementptr inbounds %struct.tcf_chain, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %index.i, align 4
  %7 = ptrtoint ptr %cls_flower to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %cls_flower, align 8
  %protocol.i = getelementptr inbounds %struct.tcf_proto, ptr %tp, i32 0, i32 3
  %8 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %protocol.i, align 4
  %protocol1.i = getelementptr inbounds %struct.flow_cls_common_offload, ptr %cls_flower, i32 0, i32 1
  %10 = ptrtoint ptr %protocol1.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %protocol1.i, align 4
  %prio.i = getelementptr inbounds %struct.tcf_proto, ptr %tp, i32 0, i32 4
  %11 = ptrtoint ptr %prio.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %prio.i, align 4
  %shr.i = lshr i32 %12, 16
  %prio2.i = getelementptr inbounds %struct.flow_cls_common_offload, ptr %cls_flower, i32 0, i32 2
  %13 = ptrtoint ptr %prio2.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %shr.i, ptr %prio2.i, align 8
  %command = getelementptr inbounds %struct.flow_cls_offload, ptr %cls_flower, i32 0, i32 1
  %14 = ptrtoint ptr %command to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 2, ptr %command, align 8
  %15 = ptrtoint ptr %f to i32
  %cookie = getelementptr inbounds %struct.flow_cls_offload, ptr %cls_flower, i32 0, i32 2
  %16 = ptrtoint ptr %cookie to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %cookie, align 4
  %classid = getelementptr inbounds %struct.cls_fl_filter, ptr %f, i32 0, i32 4, i32 0, i32 0, i32 1
  %17 = ptrtoint ptr %classid to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %classid, align 4
  %classid2 = getelementptr inbounds %struct.flow_cls_offload, ptr %cls_flower, i32 0, i32 5
  %19 = ptrtoint ptr %classid2 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %classid2, align 8
  %call = call i32 @tc_setup_cb_call(ptr noundef %3, i32 noundef 2, ptr noundef nonnull %cls_flower, i1 noundef zeroext false, i1 noundef zeroext %rtnl_held) #12
  %stats = getelementptr inbounds %struct.flow_cls_offload, ptr %cls_flower, i32 0, i32 4
  %bytes = getelementptr inbounds %struct.flow_cls_offload, ptr %cls_flower, i32 0, i32 4, i32 1
  %20 = ptrtoint ptr %bytes to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %bytes, align 8
  %22 = ptrtoint ptr %stats to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %stats, align 8
  %drops = getelementptr inbounds %struct.flow_cls_offload, ptr %cls_flower, i32 0, i32 4, i32 2
  %24 = ptrtoint ptr %drops to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %drops, align 8
  %lastused = getelementptr inbounds %struct.flow_cls_offload, ptr %cls_flower, i32 0, i32 4, i32 3
  %26 = ptrtoint ptr %lastused to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %lastused, align 8
  %used_hw_stats = getelementptr inbounds %struct.flow_cls_offload, ptr %cls_flower, i32 0, i32 4, i32 4
  %28 = ptrtoint ptr %used_hw_stats to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %used_hw_stats, align 8
  %conv = trunc i32 %29 to i8
  %used_hw_stats_valid = getelementptr inbounds %struct.flow_cls_offload, ptr %cls_flower, i32 0, i32 4, i32 5
  %30 = ptrtoint ptr %used_hw_stats_valid to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %used_hw_stats_valid, align 4, !range !203
  %nr_actions.i = getelementptr inbounds %struct.cls_fl_filter, ptr %f, i32 0, i32 3, i32 1
  %32 = ptrtoint ptr %nr_actions.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %nr_actions.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp16.i = icmp sgt i32 %33, 0
  br i1 %cmp16.i, label %for.body.lr.ph.i, label %entry.tcf_exts_hw_stats_update.exit_crit_edge

entry.tcf_exts_hw_stats_update.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %tcf_exts_hw_stats_update.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %actions.i = getelementptr inbounds %struct.cls_fl_filter, ptr %f, i32 0, i32 3, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.017.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %34 = ptrtoint ptr %actions.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %actions.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %35, i32 %i.017.i
  %36 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx.i, align 4
  %call.i = call i32 @tcf_action_update_hw_stats(ptr noundef %37) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %for.body.i.if.end.i_crit_edge, label %do.body.i

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

do.body.i:                                        ; preds = %for.body.i
  %38 = call i32 @llvm.read_register.i32(metadata !191) #12
  %and.i.i.i.i = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %41, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !241
  %42 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %37, align 16
  %stats_update.i.i = getelementptr inbounds %struct.tc_action_ops, ptr %43, i32 0, i32 11
  %44 = ptrtoint ptr %stats_update.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %stats_update.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %45, null
  br i1 %tobool.not.i.i, label %do.body.i.tcf_action_stats_update.exit.i_crit_edge, label %if.end.i.i

do.body.i.tcf_action_stats_update.exit.i_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tcf_action_stats_update.exit.i

if.end.i.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  call void %45(ptr noundef %37, i64 noundef %21, i64 noundef %23, i64 noundef %25, i64 noundef %27, i1 noundef zeroext true) #12
  br label %tcf_action_stats_update.exit.i

tcf_action_stats_update.exit.i:                   ; preds = %if.end.i.i, %do.body.i.tcf_action_stats_update.exit.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !242
  %46 = call i32 @llvm.read_register.i32(metadata !191) #12
  %and.i.i.i14.i = and i32 %46, -16384
  %47 = inttoptr i32 %and.i.i.i14.i to ptr
  %preempt_count.i.i15.i = getelementptr inbounds %struct.thread_info, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %preempt_count.i.i15.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %preempt_count.i.i15.i, align 4
  %sub.i.i = add i32 %49, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i15.i, align 4
  %used_hw_stats4.i = getelementptr inbounds %struct.tc_action, ptr %37, i32 0, i32 20
  %50 = ptrtoint ptr %used_hw_stats4.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %conv, ptr %used_hw_stats4.i, align 1
  %used_hw_stats_valid6.i = getelementptr inbounds %struct.tc_action, ptr %37, i32 0, i32 21
  %51 = ptrtoint ptr %used_hw_stats_valid6.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %31, ptr %used_hw_stats_valid6.i, align 2
  br label %if.end.i

if.end.i:                                         ; preds = %tcf_action_stats_update.exit.i, %for.body.i.if.end.i_crit_edge
  %inc.i = add nuw nsw i32 %i.017.i, 1
  %52 = ptrtoint ptr %nr_actions.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %nr_actions.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %53
  br i1 %cmp.i, label %if.end.i.for.body.i_crit_edge, label %if.end.i.tcf_exts_hw_stats_update.exit_crit_edge

if.end.i.tcf_exts_hw_stats_update.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tcf_exts_hw_stats_update.exit

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

tcf_exts_hw_stats_update.exit:                    ; preds = %if.end.i.tcf_exts_hw_stats_update.exit_crit_edge, %entry.tcf_exts_hw_stats_update.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %cls_flower) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcf_exts_dump(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcf_exts_dump_stats(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__dev_get_by_index(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fl_dump_key_val(ptr noundef %skb, ptr noundef %val, i32 noundef %val_type, ptr noundef %mask, i32 noundef %mask_type, i32 noundef %len) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @memchr_inv(ptr noundef %mask, i32 noundef 0, i32 noundef %len) #12
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @nla_put(ptr noundef %skb, i32 noundef %val_type, i32 noundef %len, ptr noundef %val) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mask_type)
  %cmp.not = icmp eq i32 %mask_type, 0
  br i1 %cmp.not, label %if.end4.if.end10_crit_edge, label %if.then5

if.end4.if.end10_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

if.then5:                                         ; preds = %if.end4
  %call6 = tail call i32 @nla_put(ptr noundef %skb, i32 noundef %mask_type, i32 noundef %len, ptr noundef %mask) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.then5.if.end10_crit_edge, label %if.then5.cleanup_crit_edge

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then5.if.end10_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

if.end10:                                         ; preds = %if.then5.if.end10_crit_edge, %if.end4.if.end10_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.then5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end10 ], [ 0, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ %call6, %if.then5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fl_dump_key_vlan(ptr noundef %skb, i32 noundef %vlan_id_key, i32 noundef %vlan_prio_key, ptr nocapture noundef readonly %vlan_key, ptr noundef %vlan_mask) unnamed_addr #2 align 64 {
entry:
  %tmp.i27 = alloca i8, align 1
  %tmp.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @memchr_inv(ptr noundef %vlan_mask, i32 noundef 0, i32 noundef 4) #12
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %vlan_mask to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %vlan_mask, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %bf.load)
  %tobool1.not = icmp ult i16 %bf.load, 16
  br i1 %tobool1.not, label %if.end.if.end9_crit_edge, label %if.then2

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

if.then2:                                         ; preds = %if.end
  %1 = ptrtoint ptr %vlan_key to i32
  call void @__asan_load2_noabort(i32 %1)
  %bf.load3 = load i16, ptr %vlan_key, align 2
  %bf.lshr4 = lshr i16 %bf.load3, 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i) #12
  %2 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %bf.lshr4, ptr %tmp.i, align 2
  %call.i = call i32 @nla_put(ptr noundef %skb, i32 noundef %vlan_id_key, i32 noundef 2, ptr noundef nonnull %tmp.i) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool6.not = icmp eq i32 %call.i, 0
  br i1 %tobool6.not, label %if.then2.if.end9_crit_edge, label %if.then2.cleanup_crit_edge

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then2.if.end9_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

if.end9:                                          ; preds = %if.then2.if.end9_crit_edge, %if.end.if.end9_crit_edge
  %3 = ptrtoint ptr %vlan_mask to i32
  call void @__asan_load2_noabort(i32 %3)
  %bf.load10 = load i16, ptr %vlan_mask, align 2
  %bf.clear = and i16 %bf.load10, 7
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.clear)
  %tobool11.not = icmp eq i16 %bf.clear, 0
  br i1 %tobool11.not, label %if.end9.if.end19_crit_edge, label %if.then12

if.end9.if.end19_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19

if.then12:                                        ; preds = %if.end9
  %4 = ptrtoint ptr %vlan_key to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load13 = load i16, ptr %vlan_key, align 2
  %5 = trunc i16 %bf.load13 to i8
  %conv = and i8 %5, 7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i27) #12
  %6 = ptrtoint ptr %tmp.i27 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv, ptr %tmp.i27, align 1
  %call.i28 = call i32 @nla_put(ptr noundef %skb, i32 noundef %vlan_prio_key, i32 noundef 1, ptr noundef nonnull %tmp.i27) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i27) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i28)
  %tobool16.not = icmp eq i32 %call.i28, 0
  br i1 %tobool16.not, label %if.then12.if.end19_crit_edge, label %if.then12.cleanup_crit_edge

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then12.if.end19_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19

if.end19:                                         ; preds = %if.then12.if.end19_crit_edge, %if.end9.if.end19_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.then12.cleanup_crit_edge, %if.then2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end19 ], [ 0, %entry.cleanup_crit_edge ], [ %call.i, %if.then2.cleanup_crit_edge ], [ %call.i28, %if.then12.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fl_dump_key_ip(ptr noundef %skb, i1 noundef zeroext %encap, ptr noundef %key, ptr noundef %mask) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %cond4 = select i1 %encap, i32 81, i32 74
  %call.i = tail call ptr @memchr_inv(ptr noundef %mask, i32 noundef 0, i32 noundef 1) #12
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.lor.lhs.false_crit_edge, label %if.end.i

entry.lor.lhs.false_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false

if.end.i:                                         ; preds = %entry
  %cond = select i1 %encap, i32 80, i32 73
  %call1.i = tail call i32 @nla_put(ptr noundef %skb, i32 noundef %cond, i32 noundef 1, ptr noundef %key) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4.i:                                        ; preds = %if.end.i
  %call6.i = tail call i32 @nla_put(ptr noundef %skb, i32 noundef %cond4, i32 noundef 1, ptr noundef %mask) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %if.end4.i.lor.lhs.false_crit_edge, label %if.end4.i.cleanup_crit_edge

if.end4.i.cleanup_crit_edge:                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4.i.lor.lhs.false_crit_edge:                ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end4.i.lor.lhs.false_crit_edge, %entry.lor.lhs.false_crit_edge
  %cond6 = select i1 %encap, i32 83, i32 76
  %ttl9 = getelementptr inbounds %struct.flow_dissector_key_ip, ptr %mask, i32 0, i32 1
  %call.i21 = tail call ptr @memchr_inv(ptr noundef %ttl9, i32 noundef 0, i32 noundef 1) #12
  %tobool.not.i22 = icmp eq ptr %call.i21, null
  br i1 %tobool.not.i22, label %lor.lhs.false.cleanup_crit_edge, label %if.end.i25

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i25:                                       ; preds = %lor.lhs.false
  %ttl = getelementptr inbounds %struct.flow_dissector_key_ip, ptr %key, i32 0, i32 1
  %cond2 = select i1 %encap, i32 82, i32 75
  %call1.i23 = tail call i32 @nla_put(ptr noundef %skb, i32 noundef %cond2, i32 noundef 1, ptr noundef %ttl) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i23)
  %tobool2.not.i24 = icmp eq i32 %call1.i23, 0
  br i1 %tobool2.not.i24, label %if.end4.i26, label %if.end.i25.cleanup_crit_edge

if.end.i25.cleanup_crit_edge:                     ; preds = %if.end.i25
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4.i26:                                      ; preds = %if.end.i25
  call void @__sanitizer_cov_trace_pc() #14
  %call6.i27 = tail call i32 @nla_put(ptr noundef %skb, i32 noundef %cond6, i32 noundef 1, ptr noundef %ttl9) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i27)
  %tobool7.not.i28 = icmp ne i32 %call6.i27, 0
  %spec.select = sext i1 %tobool7.not.i28 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end4.i26, %if.end.i25.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end4.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %if.end.i.cleanup_crit_edge ], [ -1, %if.end4.i.cleanup_crit_edge ], [ -1, %if.end.i25.cleanup_crit_edge ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ %spec.select, %if.end4.i26 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fl_dump_key_port_range(ptr noundef %skb, ptr noundef %key, ptr noundef %mask) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tp_range = getelementptr inbounds %struct.fl_flow_key, ptr %key, i32 0, i32 19
  %tp_range1 = getelementptr inbounds %struct.fl_flow_key, ptr %mask, i32 0, i32 19
  %dst3 = getelementptr inbounds %struct.anon.165, ptr %tp_range1, i32 0, i32 1
  %call.i = tail call ptr @memchr_inv(ptr noundef %dst3, i32 noundef 0, i32 noundef 2) #12
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.lor.lhs.false_crit_edge, label %if.end.i

entry.lor.lhs.false_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false

if.end.i:                                         ; preds = %entry
  %dst = getelementptr inbounds %struct.anon.165, ptr %tp_range, i32 0, i32 1
  %call1.i = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 89, i32 noundef 2, ptr noundef %dst) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.lor.lhs.false_crit_edge, label %if.end.i.return_crit_edge

if.end.i.return_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end.i.lor.lhs.false_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.i.lor.lhs.false_crit_edge, %entry.lor.lhs.false_crit_edge
  %tp_max = getelementptr inbounds %struct.fl_flow_key, ptr %key, i32 0, i32 19, i32 0, i32 1
  %tp_max7 = getelementptr inbounds %struct.fl_flow_key, ptr %mask, i32 0, i32 19, i32 0, i32 1
  %dst8 = getelementptr inbounds %struct.anon.165, ptr %tp_max7, i32 0, i32 1
  %call.i37 = tail call ptr @memchr_inv(ptr noundef %dst8, i32 noundef 0, i32 noundef 2) #12
  %tobool.not.i38 = icmp eq ptr %call.i37, null
  br i1 %tobool.not.i38, label %lor.lhs.false.lor.lhs.false11_crit_edge, label %if.end.i41

lor.lhs.false.lor.lhs.false11_crit_edge:          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false11

if.end.i41:                                       ; preds = %lor.lhs.false
  %dst5 = getelementptr inbounds %struct.anon.165, ptr %tp_max, i32 0, i32 1
  %call1.i39 = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 90, i32 noundef 2, ptr noundef %dst5) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i39)
  %tobool2.not.i40 = icmp eq i32 %call1.i39, 0
  br i1 %tobool2.not.i40, label %if.end.i41.lor.lhs.false11_crit_edge, label %if.end.i41.return_crit_edge

if.end.i41.return_crit_edge:                      ; preds = %if.end.i41
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end.i41.lor.lhs.false11_crit_edge:             ; preds = %if.end.i41
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false11

lor.lhs.false11:                                  ; preds = %if.end.i41.lor.lhs.false11_crit_edge, %lor.lhs.false.lor.lhs.false11_crit_edge
  %call.i45 = tail call ptr @memchr_inv(ptr noundef %tp_range1, i32 noundef 0, i32 noundef 2) #12
  %tobool.not.i46 = icmp eq ptr %call.i45, null
  br i1 %tobool.not.i46, label %lor.lhs.false11.lor.lhs.false19_crit_edge, label %if.end.i49

lor.lhs.false11.lor.lhs.false19_crit_edge:        ; preds = %lor.lhs.false11
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false19

if.end.i49:                                       ; preds = %lor.lhs.false11
  %call1.i47 = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 87, i32 noundef 2, ptr noundef %tp_range) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i47)
  %tobool2.not.i48 = icmp eq i32 %call1.i47, 0
  br i1 %tobool2.not.i48, label %if.end.i49.lor.lhs.false19_crit_edge, label %if.end.i49.return_crit_edge

if.end.i49.return_crit_edge:                      ; preds = %if.end.i49
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end.i49.lor.lhs.false19_crit_edge:             ; preds = %if.end.i49
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false19

lor.lhs.false19:                                  ; preds = %if.end.i49.lor.lhs.false19_crit_edge, %lor.lhs.false11.lor.lhs.false19_crit_edge
  %call.i53 = tail call ptr @memchr_inv(ptr noundef %tp_max7, i32 noundef 0, i32 noundef 2) #12
  %tobool.not.i54 = icmp eq ptr %call.i53, null
  br i1 %tobool.not.i54, label %lor.lhs.false19.return_crit_edge, label %if.end.i57

lor.lhs.false19.return_crit_edge:                 ; preds = %lor.lhs.false19
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end.i57:                                       ; preds = %lor.lhs.false19
  call void @__sanitizer_cov_trace_pc() #14
  %call1.i55 = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 88, i32 noundef 2, ptr noundef %tp_max) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i55)
  %tobool2.not.i56 = icmp ne i32 %call1.i55, 0
  %spec.select = sext i1 %tobool2.not.i56 to i32
  br label %return

return:                                           ; preds = %if.end.i57, %lor.lhs.false19.return_crit_edge, %if.end.i49.return_crit_edge, %if.end.i41.return_crit_edge, %if.end.i.return_crit_edge
  %retval.0 = phi i32 [ -1, %if.end.i.return_crit_edge ], [ -1, %if.end.i41.return_crit_edge ], [ -1, %if.end.i49.return_crit_edge ], [ 0, %lor.lhs.false19.return_crit_edge ], [ %spec.select, %if.end.i57 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fl_dump_key_enc_opt(ptr noundef %skb, ptr noundef %key_opts, ptr noundef %msk_opts) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @fl_dump_key_options(ptr noundef %skb, i32 noundef 84, ptr noundef %key_opts)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call1 = tail call fastcc i32 @fl_dump_key_options(ptr noundef %skb, i32 noundef 85, ptr noundef %msk_opts)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fl_dump_key_ct(ptr noundef %skb, ptr noundef %key, ptr noundef %mask) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @memchr_inv(ptr noundef %mask, i32 noundef 0, i32 noundef 2) #12
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 91, i32 noundef 2, ptr noundef %key) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %if.end.i.return_crit_edge

if.end.i.return_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end4.i:                                        ; preds = %if.end.i
  %call6.i = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 92, i32 noundef 2, ptr noundef %mask) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %if.end4.i.if.end_crit_edge, label %if.end4.i.return_crit_edge

if.end4.i.return_crit_edge:                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end4.i.if.end_crit_edge:                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end:                                           ; preds = %if.end4.i.if.end_crit_edge, %entry.if.end_crit_edge
  %ct_zone2 = getelementptr inbounds %struct.flow_dissector_key_ct, ptr %mask, i32 0, i32 1
  %call.i26 = tail call ptr @memchr_inv(ptr noundef %ct_zone2, i32 noundef 0, i32 noundef 2) #12
  %tobool.not.i27 = icmp eq ptr %call.i26, null
  br i1 %tobool.not.i27, label %if.end.if.end6_crit_edge, label %if.end.i30

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

if.end.i30:                                       ; preds = %if.end
  %ct_zone = getelementptr inbounds %struct.flow_dissector_key_ct, ptr %key, i32 0, i32 1
  %call1.i28 = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 93, i32 noundef 2, ptr noundef %ct_zone) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i28)
  %tobool2.not.i29 = icmp eq i32 %call1.i28, 0
  br i1 %tobool2.not.i29, label %if.end4.i31, label %if.end.i30.return_crit_edge

if.end.i30.return_crit_edge:                      ; preds = %if.end.i30
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end4.i31:                                      ; preds = %if.end.i30
  %call6.i32 = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 94, i32 noundef 2, ptr noundef %ct_zone2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i32)
  %tobool7.not.i33 = icmp eq i32 %call6.i32, 0
  br i1 %tobool7.not.i33, label %if.end4.i31.if.end6_crit_edge, label %if.end4.i31.return_crit_edge

if.end4.i31.return_crit_edge:                     ; preds = %if.end4.i31
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end4.i31.if.end6_crit_edge:                    ; preds = %if.end4.i31
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

if.end6:                                          ; preds = %if.end4.i31.if.end6_crit_edge, %if.end.if.end6_crit_edge
  %ct_mark7 = getelementptr inbounds %struct.flow_dissector_key_ct, ptr %mask, i32 0, i32 2
  %call.i37 = tail call ptr @memchr_inv(ptr noundef %ct_mark7, i32 noundef 0, i32 noundef 4) #12
  %tobool.not.i38 = icmp eq ptr %call.i37, null
  br i1 %tobool.not.i38, label %if.end6.if.end11_crit_edge, label %if.end.i41

if.end6.if.end11_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

if.end.i41:                                       ; preds = %if.end6
  %ct_mark = getelementptr inbounds %struct.flow_dissector_key_ct, ptr %key, i32 0, i32 2
  %call1.i39 = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 95, i32 noundef 4, ptr noundef %ct_mark) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i39)
  %tobool2.not.i40 = icmp eq i32 %call1.i39, 0
  br i1 %tobool2.not.i40, label %if.end4.i42, label %if.end.i41.return_crit_edge

if.end.i41.return_crit_edge:                      ; preds = %if.end.i41
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end4.i42:                                      ; preds = %if.end.i41
  %call6.i43 = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 96, i32 noundef 4, ptr noundef %ct_mark7) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i43)
  %tobool7.not.i44 = icmp eq i32 %call6.i43, 0
  br i1 %tobool7.not.i44, label %if.end4.i42.if.end11_crit_edge, label %if.end4.i42.return_crit_edge

if.end4.i42.return_crit_edge:                     ; preds = %if.end4.i42
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end4.i42.if.end11_crit_edge:                   ; preds = %if.end4.i42
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

if.end11:                                         ; preds = %if.end4.i42.if.end11_crit_edge, %if.end6.if.end11_crit_edge
  %ct_labels12 = getelementptr inbounds %struct.flow_dissector_key_ct, ptr %mask, i32 0, i32 3
  %call.i48 = tail call ptr @memchr_inv(ptr noundef %ct_labels12, i32 noundef 0, i32 noundef 16) #12
  %tobool.not.i49 = icmp eq ptr %call.i48, null
  br i1 %tobool.not.i49, label %if.end11.fl_dump_key_val.exit58.thread_crit_edge, label %if.end.i52

if.end11.fl_dump_key_val.exit58.thread_crit_edge: ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %fl_dump_key_val.exit58.thread

if.end.i52:                                       ; preds = %if.end11
  %ct_labels = getelementptr inbounds %struct.flow_dissector_key_ct, ptr %key, i32 0, i32 3
  %call1.i50 = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 97, i32 noundef 16, ptr noundef %ct_labels) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i50)
  %tobool2.not.i51 = icmp eq i32 %call1.i50, 0
  br i1 %tobool2.not.i51, label %if.end4.i53, label %if.end.i52.return_crit_edge

if.end.i52.return_crit_edge:                      ; preds = %if.end.i52
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end4.i53:                                      ; preds = %if.end.i52
  %call6.i54 = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 98, i32 noundef 16, ptr noundef %ct_labels12) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i54)
  %tobool7.not.i55 = icmp eq i32 %call6.i54, 0
  br i1 %tobool7.not.i55, label %if.end4.i53.fl_dump_key_val.exit58.thread_crit_edge, label %if.end4.i53.return_crit_edge

if.end4.i53.return_crit_edge:                     ; preds = %if.end4.i53
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end4.i53.fl_dump_key_val.exit58.thread_crit_edge: ; preds = %if.end4.i53
  call void @__sanitizer_cov_trace_pc() #14
  br label %fl_dump_key_val.exit58.thread

fl_dump_key_val.exit58.thread:                    ; preds = %if.end4.i53.fl_dump_key_val.exit58.thread_crit_edge, %if.end11.fl_dump_key_val.exit58.thread_crit_edge
  br label %return

return:                                           ; preds = %fl_dump_key_val.exit58.thread, %if.end4.i53.return_crit_edge, %if.end.i52.return_crit_edge, %if.end4.i42.return_crit_edge, %if.end.i41.return_crit_edge, %if.end4.i31.return_crit_edge, %if.end.i30.return_crit_edge, %if.end4.i.return_crit_edge, %if.end.i.return_crit_edge
  %retval.0 = phi i32 [ 0, %fl_dump_key_val.exit58.thread ], [ -90, %if.end4.i53.return_crit_edge ], [ -90, %if.end.i52.return_crit_edge ], [ -90, %if.end4.i42.return_crit_edge ], [ -90, %if.end.i41.return_crit_edge ], [ -90, %if.end4.i31.return_crit_edge ], [ -90, %if.end.i30.return_crit_edge ], [ -90, %if.end4.i.return_crit_edge ], [ -90, %if.end.i.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fl_dump_key_flags(ptr noundef %skb, i32 noundef %flags_key, i32 noundef %flags_mask) unnamed_addr #2 align 64 {
entry:
  %flags_mask.addr = alloca i32, align 4
  %_key = alloca i32, align 4
  %_mask = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %flags_mask.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %flags_mask, ptr %flags_mask.addr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %_key) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %_mask) #12
  %call = call ptr @memchr_inv(ptr noundef nonnull %flags_mask.addr, i32 noundef 0, i32 noundef 4) #12
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %flags_mask.addr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags_mask.addr, align 4
  %and.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %and1.i = and i32 %flags_key, 1
  %key.0 = select i1 %tobool.not.i, i32 0, i32 %and1.i
  %not.tobool.not.i = xor i1 %tobool.not.i, true
  %mask.0 = zext i1 %not.tobool.not.i to i32
  %and.i13 = and i32 %2, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i13)
  %tobool.not.i14 = icmp eq i32 %and.i13, 0
  %and1.i16 = and i32 %flags_key, 2
  %3 = select i1 %tobool.not.i14, i32 0, i32 %and1.i16
  %key.1 = or i32 %key.0, %3
  %4 = or i32 %and.i13, %mask.0
  %5 = ptrtoint ptr %_key to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %key.1, ptr %_key, align 4
  %6 = ptrtoint ptr %_mask to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %4, ptr %_mask, align 4
  %call1 = call i32 @nla_put(ptr noundef %skb, i32 noundef 47, i32 noundef 4, ptr noundef nonnull %_key) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call5 = call i32 @nla_put(ptr noundef %skb, i32 noundef 48, i32 noundef 4, ptr noundef nonnull %_mask) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end4 ], [ 0, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_mask) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_key) #12
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fl_dump_key_options(ptr noundef %skb, i32 noundef %enc_opt_type, ptr noundef %enc_opts) unnamed_addr #2 align 64 {
entry:
  %tmp.i43.i = alloca i8, align 1
  %tmp.i41.i = alloca i8, align 1
  %tmp.i39.i = alloca i32, align 4
  %tmp.i.i53 = alloca i8, align 1
  %tmp.i.i34 = alloca i32, align 4
  %tmp.i38.i = alloca i8, align 1
  %tmp.i.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %len = getelementptr inbounds %struct.flow_dissector_key_enc_opts, ptr %enc_opts, i32 0, i32 1
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %len, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %2 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tail.i.i, align 8
  %call1.i = tail call i32 @nla_put(ptr noundef %skb, i32 noundef %enc_opt_type, i32 noundef 0, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  %tobool1.not92 = icmp eq ptr %3, null
  %tobool1.not = select i1 %cmp.i, i1 true, i1 %tobool1.not92
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %dst_opt_type = getelementptr inbounds %struct.flow_dissector_key_enc_opts, ptr %enc_opts, i32 0, i32 2
  %4 = ptrtoint ptr %dst_opt_type to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %dst_opt_type, align 2
  %6 = zext i16 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.69)
  switch i16 %5, label %if.end3.if.then.i.i_crit_edge [
    i16 2048, label %sw.bb
    i16 4096, label %sw.bb8
    i16 16384, label %sw.bb13
  ]

if.end3.if.then.i.i_crit_edge:                    ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i

sw.bb:                                            ; preds = %if.end3
  %7 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tail.i.i, align 8
  %call1.i.i = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 0, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i.i = icmp slt i32 %call1.i.i, 0
  %tobool.not44.i = icmp eq ptr %8, null
  %tobool.not.i = select i1 %cmp.i.i, i1 true, i1 %tobool.not44.i
  br i1 %tobool.not.i, label %sw.bb.if.then.i.i_crit_edge, label %while.cond.preheader.i

sw.bb.if.then.i.i_crit_edge:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i

while.cond.preheader.i:                           ; preds = %sw.bb
  %9 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %len, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %cmp42.not.i = icmp eq i8 %10, 0
  br i1 %cmp42.not.i, label %while.cond.preheader.i.sw.epilog_crit_edge, label %while.cond.preheader.i.while.body.i_crit_edge

while.cond.preheader.i.while.body.i_crit_edge:    ; preds = %while.cond.preheader.i
  br label %while.body.i

while.cond.preheader.i.sw.epilog_crit_edge:       ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

while.body.i:                                     ; preds = %if.end14.i.while.body.i_crit_edge, %while.cond.preheader.i.while.body.i_crit_edge
  %opt_off.043.i = phi i32 [ %add20.i, %if.end14.i.while.body.i_crit_edge ], [ 0, %while.cond.preheader.i.while.body.i_crit_edge ]
  %arrayidx.i = getelementptr [255 x i8], ptr %enc_opts, i32 0, i32 %opt_off.043.i
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %arrayidx.i, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i.i) #12
  %13 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %tmp.i.i, align 2
  %call.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 2, ptr noundef nonnull %tmp.i.i) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool3.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool3.not.i, label %if.end5.i, label %while.body.i.if.then.i.i.i_crit_edge

while.body.i.if.then.i.i.i_crit_edge:             ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i.i

if.end5.i:                                        ; preds = %while.body.i
  %type.i = getelementptr inbounds %struct.geneve_opt, ptr %arrayidx.i, i32 0, i32 1
  %14 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %type.i, align 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i38.i) #12
  %16 = ptrtoint ptr %tmp.i38.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %tmp.i38.i, align 1
  %call.i39.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 1, ptr noundef nonnull %tmp.i38.i) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i38.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i39.i)
  %tobool7.not.i = icmp eq i32 %call.i39.i, 0
  br i1 %tobool7.not.i, label %if.end9.i, label %if.end5.i.if.then.i.i.i_crit_edge

if.end5.i.if.then.i.i.i_crit_edge:                ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i.i

if.end9.i:                                        ; preds = %if.end5.i
  %length.i = getelementptr inbounds %struct.geneve_opt, ptr %arrayidx.i, i32 0, i32 2
  %17 = ptrtoint ptr %length.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load.i = load i8, ptr %length.i, align 1
  %bf.clear.i = shl i8 %bf.load.i, 2
  %18 = and i8 %bf.clear.i, 124
  %mul.i = zext i8 %18 to i32
  %opt_data.i = getelementptr inbounds %struct.geneve_opt, ptr %arrayidx.i, i32 0, i32 3
  %call11.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef %mul.i, ptr noundef %opt_data.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool12.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool12.not.i, label %if.end14.i, label %if.end9.i.if.then.i.i.i_crit_edge

if.end9.i.if.then.i.i.i_crit_edge:                ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i.i

if.end14.i:                                       ; preds = %if.end9.i
  %19 = ptrtoint ptr %length.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %bf.load16.i = load i8, ptr %length.i, align 1
  %bf.clear17.i = shl i8 %bf.load16.i, 2
  %20 = and i8 %bf.clear17.i, 124
  %narrow.i = add nuw i8 %20, 4
  %add.i = zext i8 %narrow.i to i32
  %add20.i = add i32 %opt_off.043.i, %add.i
  %21 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %len, align 1
  %conv.i = zext i8 %22 to i32
  %cmp.i33 = icmp slt i32 %add20.i, %conv.i
  br i1 %cmp.i33, label %if.end14.i.while.body.i_crit_edge, label %if.end14.i.sw.epilog_crit_edge

if.end14.i.sw.epilog_crit_edge:                   ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.end14.i.while.body.i_crit_edge:                ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i

if.then.i.i.i:                                    ; preds = %if.end9.i.if.then.i.i.i_crit_edge, %if.end5.i.if.then.i.i.i_crit_edge, %while.body.i.if.then.i.i.i_crit_edge
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %23 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data.i.i.i, align 4
  %cmp.i.i.i = icmp ugt ptr %24, %8
  br i1 %cmp.i.i.i, label %if.then.i.i.i.if.then.i.i.sink.split.sink.split_crit_edge, label %if.then.i.i.i.if.then.i.i.sink.split_crit_edge, !prof !212

if.then.i.i.i.if.then.i.i.sink.split_crit_edge:   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i.sink.split

if.then.i.i.i.if.then.i.i.sink.split.sink.split_crit_edge: ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i.sink.split.sink.split

sw.bb8:                                           ; preds = %if.end3
  %25 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %tail.i.i, align 8
  %call1.i.i36 = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 0, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i36)
  %cmp.i.i37 = icmp slt i32 %call1.i.i36, 0
  %tobool.not13.i = icmp eq ptr %26, null
  %tobool.not.i38 = select i1 %cmp.i.i37, i1 true, i1 %tobool.not13.i
  br i1 %tobool.not.i38, label %sw.bb8.if.then.i.i_crit_edge, label %if.end.i

sw.bb8.if.then.i.i_crit_edge:                     ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i

if.end.i:                                         ; preds = %sw.bb8
  %27 = ptrtoint ptr %enc_opts to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %enc_opts, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i34) #12
  %29 = ptrtoint ptr %tmp.i.i34 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %tmp.i.i34, align 4
  %call.i.i39 = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %tmp.i.i34) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i34) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i39)
  %tobool2.not.i = icmp eq i32 %call.i.i39, 0
  br i1 %tobool2.not.i, label %if.end.i.sw.epilog_crit_edge, label %if.then.i.i.i46

if.end.i.sw.epilog_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.then.i.i.i46:                                  ; preds = %if.end.i
  %data.i.i.i44 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %30 = ptrtoint ptr %data.i.i.i44 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %data.i.i.i44, align 4
  %cmp.i.i.i45 = icmp ugt ptr %31, %26
  br i1 %cmp.i.i.i45, label %if.then.i.i.i46.if.then.i.i.sink.split.sink.split_crit_edge, label %if.then.i.i.i46.if.then.i.i.sink.split_crit_edge, !prof !212

if.then.i.i.i46.if.then.i.i.sink.split_crit_edge: ; preds = %if.then.i.i.i46
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i.sink.split

if.then.i.i.i46.if.then.i.i.sink.split.sink.split_crit_edge: ; preds = %if.then.i.i.i46
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i.sink.split.sink.split

sw.bb13:                                          ; preds = %if.end3
  %32 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %tail.i.i, align 8
  %call1.i.i55 = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 0, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i55)
  %cmp.i.i56 = icmp slt i32 %call1.i.i55, 0
  %tobool.not46.i = icmp eq ptr %33, null
  %tobool.not.i57 = select i1 %cmp.i.i56, i1 true, i1 %tobool.not46.i
  br i1 %tobool.not.i57, label %sw.bb13.if.then.i.i_crit_edge, label %if.end.i61

sw.bb13.if.then.i.i_crit_edge:                    ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i

if.end.i61:                                       ; preds = %sw.bb13
  %34 = ptrtoint ptr %enc_opts to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %enc_opts, align 4
  %conv.i58 = trunc i32 %35 to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i.i53) #12
  %36 = ptrtoint ptr %tmp.i.i53 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv.i58, ptr %tmp.i.i53, align 1
  %call.i.i59 = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 1, ptr noundef nonnull %tmp.i.i53) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i.i53) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i59)
  %tobool2.not.i60 = icmp eq i32 %call.i.i59, 0
  br i1 %tobool2.not.i60, label %if.end4.i63, label %if.end.i61.if.then.i.i.i71_crit_edge

if.end.i61.if.then.i.i.i71_crit_edge:             ; preds = %if.end.i61
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i.i71

if.end4.i63:                                      ; preds = %if.end.i61
  %37 = ptrtoint ptr %enc_opts to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %enc_opts, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %38)
  %cmp.i62 = icmp eq i32 %38, 1
  br i1 %cmp.i62, label %land.lhs.true.i, label %if.end4.i63.if.end10.i_crit_edge

if.end4.i63.if.end10.i_crit_edge:                 ; preds = %if.end4.i63
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10.i

land.lhs.true.i:                                  ; preds = %if.end4.i63
  %u.i = getelementptr inbounds %struct.erspan_metadata, ptr %enc_opts, i32 0, i32 1
  %39 = ptrtoint ptr %u.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %u.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i39.i) #12
  %41 = ptrtoint ptr %tmp.i39.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %tmp.i39.i, align 4
  %call.i40.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %tmp.i39.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i39.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i40.i)
  %tobool8.not.i = icmp eq i32 %call.i40.i, 0
  br i1 %tobool8.not.i, label %if.end10thread-pre-split.i, label %land.lhs.true.i.if.then.i.i.i71_crit_edge

land.lhs.true.i.if.then.i.i.i71_crit_edge:        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i.i71

if.end10thread-pre-split.i:                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  %42 = ptrtoint ptr %enc_opts to i32
  call void @__asan_load4_noabort(i32 %42)
  %.pr.i = load i32, ptr %enc_opts, align 4
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.end10thread-pre-split.i, %if.end4.i63.if.end10.i_crit_edge
  %43 = phi i32 [ %.pr.i, %if.end10thread-pre-split.i ], [ %38, %if.end4.i63.if.end10.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %43)
  %cmp12.i = icmp eq i32 %43, 2
  br i1 %cmp12.i, label %land.lhs.true14.i, label %if.end10.i.sw.epilog_crit_edge

if.end10.i.sw.epilog_crit_edge:                   ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

land.lhs.true14.i:                                ; preds = %if.end10.i
  %dir.i = getelementptr inbounds %struct.erspan_metadata, ptr %enc_opts, i32 0, i32 1, i32 0, i32 2
  %44 = ptrtoint ptr %dir.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %bf.load.i64 = load i16, ptr %dir.i, align 2
  %45 = trunc i16 %bf.load.i64 to i8
  %46 = lshr i8 %45, 3
  %bf.cast.i = and i8 %46, 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i41.i) #12
  %47 = ptrtoint ptr %tmp.i41.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %bf.cast.i, ptr %tmp.i41.i, align 1
  %call.i42.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 1, ptr noundef nonnull %tmp.i41.i) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i41.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i42.i)
  %tobool17.not.i = icmp eq i32 %call.i42.i, 0
  br i1 %tobool17.not.i, label %lor.lhs.false.i, label %land.lhs.true14.i.if.then.i.i.i71_crit_edge

land.lhs.true14.i.if.then.i.i.i71_crit_edge:      ; preds = %land.lhs.true14.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i.i71

lor.lhs.false.i:                                  ; preds = %land.lhs.true14.i
  %48 = ptrtoint ptr %dir.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %bf.load.i.i = load i16, ptr %dir.i, align 2
  %49 = lshr i16 %bf.load.i.i, 4
  %50 = trunc i16 %49 to i8
  %conv6.i.i = and i8 %50, 63
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i43.i) #12
  %51 = ptrtoint ptr %tmp.i43.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %conv6.i.i, ptr %tmp.i43.i, align 1
  %call.i44.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 4, i32 noundef 1, ptr noundef nonnull %tmp.i43.i) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i43.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i44.i)
  %tobool21.not.i = icmp eq i32 %call.i44.i, 0
  br i1 %tobool21.not.i, label %lor.lhs.false.i.sw.epilog_crit_edge, label %lor.lhs.false.i.if.then.i.i.i71_crit_edge

lor.lhs.false.i.if.then.i.i.i71_crit_edge:        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i.i71

lor.lhs.false.i.sw.epilog_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.then.i.i.i71:                                  ; preds = %lor.lhs.false.i.if.then.i.i.i71_crit_edge, %land.lhs.true14.i.if.then.i.i.i71_crit_edge, %land.lhs.true.i.if.then.i.i.i71_crit_edge, %if.end.i61.if.then.i.i.i71_crit_edge
  %data.i.i.i69 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %52 = ptrtoint ptr %data.i.i.i69 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %data.i.i.i69, align 4
  %cmp.i.i.i70 = icmp ugt ptr %53, %33
  br i1 %cmp.i.i.i70, label %if.then.i.i.i71.if.then.i.i.sink.split.sink.split_crit_edge, label %if.then.i.i.i71.if.then.i.i.sink.split_crit_edge, !prof !212

if.then.i.i.i71.if.then.i.i.sink.split_crit_edge: ; preds = %if.then.i.i.i71
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i.sink.split

if.then.i.i.i71.if.then.i.i.sink.split.sink.split_crit_edge: ; preds = %if.then.i.i.i71
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i.sink.split.sink.split

sw.epilog:                                        ; preds = %lor.lhs.false.i.sw.epilog_crit_edge, %if.end10.i.sw.epilog_crit_edge, %if.end.i.sw.epilog_crit_edge, %if.end14.i.sw.epilog_crit_edge, %while.cond.preheader.i.sw.epilog_crit_edge
  %.sink93 = phi ptr [ %8, %while.cond.preheader.i.sw.epilog_crit_edge ], [ %26, %if.end.i.sw.epilog_crit_edge ], [ %33, %if.end10.i.sw.epilog_crit_edge ], [ %33, %lor.lhs.false.i.sw.epilog_crit_edge ], [ %8, %if.end14.i.sw.epilog_crit_edge ]
  %54 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i.i65 = ptrtoint ptr %55 to i32
  %sub.ptr.rhs.cast.i.i66 = ptrtoint ptr %.sink93 to i32
  %sub.ptr.sub.i.i67 = sub i32 %sub.ptr.lhs.cast.i.i65, %sub.ptr.rhs.cast.i.i66
  %conv.i.i68 = trunc i32 %sub.ptr.sub.i.i67 to i16
  %56 = ptrtoint ptr %.sink93 to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %conv.i.i68, ptr %.sink93, align 2
  %57 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %57 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %3 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i79 = trunc i32 %sub.ptr.sub.i to i16
  %58 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 %conv.i79, ptr %3, align 2
  br label %cleanup

if.then.i.i.sink.split.sink.split:                ; preds = %if.then.i.i.i71.if.then.i.i.sink.split.sink.split_crit_edge, %if.then.i.i.i46.if.then.i.i.sink.split.sink.split_crit_edge, %if.then.i.i.i.if.then.i.i.sink.split.sink.split_crit_edge
  %data.i.i.i.sink.ph = phi ptr [ %data.i.i.i, %if.then.i.i.i.if.then.i.i.sink.split.sink.split_crit_edge ], [ %data.i.i.i44, %if.then.i.i.i46.if.then.i.i.sink.split.sink.split_crit_edge ], [ %data.i.i.i69, %if.then.i.i.i71.if.then.i.i.sink.split.sink.split_crit_edge ]
  %.sink96.ph = phi ptr [ %8, %if.then.i.i.i.if.then.i.i.sink.split.sink.split_crit_edge ], [ %26, %if.then.i.i.i46.if.then.i.i.sink.split.sink.split_crit_edge ], [ %33, %if.then.i.i.i71.if.then.i.i.sink.split.sink.split_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.55, i32 noundef 991, i32 noundef 9, ptr noundef null) #12
  br label %if.then.i.i.sink.split

if.then.i.i.sink.split:                           ; preds = %if.then.i.i.sink.split.sink.split, %if.then.i.i.i71.if.then.i.i.sink.split_crit_edge, %if.then.i.i.i46.if.then.i.i.sink.split_crit_edge, %if.then.i.i.i.if.then.i.i.sink.split_crit_edge
  %data.i.i.i.sink = phi ptr [ %data.i.i.i44, %if.then.i.i.i46.if.then.i.i.sink.split_crit_edge ], [ %data.i.i.i69, %if.then.i.i.i71.if.then.i.i.sink.split_crit_edge ], [ %data.i.i.i, %if.then.i.i.i.if.then.i.i.sink.split_crit_edge ], [ %data.i.i.i.sink.ph, %if.then.i.i.sink.split.sink.split ]
  %.sink96 = phi ptr [ %26, %if.then.i.i.i46.if.then.i.i.sink.split_crit_edge ], [ %33, %if.then.i.i.i71.if.then.i.i.sink.split_crit_edge ], [ %8, %if.then.i.i.i.if.then.i.i.sink.split_crit_edge ], [ %.sink96.ph, %if.then.i.i.sink.split.sink.split ]
  %59 = ptrtoint ptr %data.i.i.i.sink to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %data.i.i.i.sink, align 4
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %.sink96 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %60 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i.i) #12
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then.i.i.sink.split, %sw.bb13.if.then.i.i_crit_edge, %sw.bb8.if.then.i.i_crit_edge, %sw.bb.if.then.i.i_crit_edge, %if.end3.if.then.i.i_crit_edge
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %61 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %data.i.i, align 4
  %cmp.i.i80 = icmp ugt ptr %62, %3
  br i1 %cmp.i.i80, label %do.end.i.i, label %if.then.i.i.if.end.i.i_crit_edge, !prof !212

if.then.i.i.if.end.i.i_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.55, i32 noundef 991, i32 noundef 9, ptr noundef null) #12
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end.i.i, %if.then.i.i.if.end.i.i_crit_edge
  %63 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i81 = ptrtoint ptr %3 to i32
  %sub.ptr.rhs.cast.i.i82 = ptrtoint ptr %64 to i32
  %sub.ptr.sub.i.i83 = sub i32 %sub.ptr.lhs.cast.i.i81, %sub.ptr.rhs.cast.i.i82
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i83) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %sw.epilog, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ 0, %entry.cleanup_crit_edge ], [ -90, %if.end.i.i ], [ -90, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcf_action_update_hw_stats(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcf_exts_terse_dump(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_tcf_proto_ops(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #10

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 70)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 70)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { argmemonly nofree nounwind readonly willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { nobuiltin nounwind }
attributes #17 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !16, !17, !19, !20, !22, !24, !26, !28, !29, !30, !32, !33, !35, !37, !39, !40, !42, !43, !45, !46, !48, !50, !52, !54, !55, !57, !59, !61, !63, !65, !67, !69, !71, !72, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189}
!llvm.named.register.sp = !{!191}
!llvm.module.flags = !{!192, !193, !194, !195, !196, !197, !198, !199}
!llvm.ident = !{!200}

!0 = !{ptr @__initcall__kmod_cls_flower__647_3241_cls_fl_init6, !1, !"__initcall__kmod_cls_flower__647_3241_cls_fl_init6", i1 false, i1 false}
!1 = !{!"../net/sched/cls_flower.c", i32 3241, i32 1}
!2 = !{ptr @__exitcall_cls_fl_exit, !3, !"__exitcall_cls_fl_exit", i1 false, i1 false}
!3 = !{!"../net/sched/cls_flower.c", i32 3242, i32 1}
!4 = !{ptr @__UNIQUE_ID_author648, !5, !"__UNIQUE_ID_author648", i1 false, i1 false}
!5 = !{!"../net/sched/cls_flower.c", i32 3244, i32 1}
!6 = !{ptr @__UNIQUE_ID_description649, !7, !"__UNIQUE_ID_description649", i1 false, i1 false}
!7 = !{!"../net/sched/cls_flower.c", i32 3245, i32 1}
!8 = !{ptr @__UNIQUE_ID_file650, !9, !"__UNIQUE_ID_file650", i1 false, i1 false}
!9 = !{!"../net/sched/cls_flower.c", i32 3246, i32 1}
!10 = !{ptr @__UNIQUE_ID_license651, !9, !"__UNIQUE_ID_license651", i1 false, i1 false}
!11 = !{ptr @cls_fl_ops, !12, !"cls_fl_ops", i1 false, i1 false}
!12 = !{!"../net/sched/cls_flower.c", i32 3207, i32 29}
!13 = distinct !{null, !14, !"__warned", i1 false, i1 false}
!14 = !{!"../net/sched/cls_flower.c", i32 312, i32 29}
!15 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!17 = distinct !{null, !18, !"__warned", i1 false, i1 false}
!18 = !{!"../net/sched/cls_flower.c", i32 319, i32 2}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = distinct !{null, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../include/linux/if_vlan.h", i32 598, i32 8}
!22 = !{ptr @fl_ct_info_to_flower_map, !23, !"fl_ct_info_to_flower_map", i1 false, i1 false}
!23 = !{!"../net/sched/cls_flower.c", i32 294, i32 12}
!24 = distinct !{null, !25, !"__warned", i1 false, i1 false}
!25 = !{!"../net/sched/cls_flower.c", i32 268, i32 2}
!26 = distinct !{null, !27, !"__warned", i1 false, i1 false}
!27 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!28 = !{ptr @.str.5, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!30 = distinct !{null, !31, !"__warned", i1 false, i1 false}
!31 = !{!"../include/linux/rhashtable.h", i32 594, i32 8}
!32 = !{ptr @.str.7, !31, !"<string literal>", i1 false, i1 false}
!33 = distinct !{null, !34, !"__warned", i1 false, i1 false}
!34 = !{!"../include/linux/rhashtable.h", i32 614, i32 8}
!35 = distinct !{null, !36, !"__warned", i1 false, i1 false}
!36 = !{!"../include/linux/rhashtable.h", i32 369, i32 19}
!37 = distinct !{null, !38, !"__warned", i1 false, i1 false}
!38 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!39 = !{ptr @.str.9, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @fl_init.__key, !41, !"__key", i1 false, i1 false}
!41 = !{!"../net/sched/cls_flower.c", i32 354, i32 2}
!42 = !{ptr @.str.10, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @xa_init_flags.__key, !44, !"__key", i1 false, i1 false}
!44 = !{!"../include/linux/xarray.h", i32 378, i32 2}
!45 = !{ptr @.str.11, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @mask_ht_params, !47, !"mask_ht_params", i1 false, i1 false}
!47 = !{!"../net/sched/cls_flower.c", i32 133, i32 39}
!48 = distinct !{null, !49, !"__warned", i1 false, i1 false}
!49 = !{!"../include/linux/rhashtable.h", i32 1076, i32 8}
!50 = distinct !{null, !51, !"__warned", i1 false, i1 false}
!51 = !{!"../include/linux/rhashtable.h", i32 1085, i32 16}
!52 = distinct !{null, !53, !"__warned", i1 false, i1 false}
!53 = !{!"../include/linux/rhashtable.h", i32 1019, i32 12}
!54 = !{ptr @.str.13, !53, !"<string literal>", i1 false, i1 false}
!55 = distinct !{null, !56, !"__warned", i1 false, i1 false}
!56 = !{!"../include/linux/rhashtable.h", i32 1026, i32 11}
!57 = distinct !{null, !58, !"__warned", i1 false, i1 false}
!58 = !{!"../include/linux/rhashtable.h", i32 1032, i32 9}
!59 = distinct !{null, !60, !"__warned", i1 false, i1 false}
!60 = !{!"../include/linux/rhashtable.h", i32 1036, i32 11}
!61 = distinct !{null, !62, !"__warned", i1 false, i1 false}
!62 = !{!"../include/linux/rhashtable.h", i32 1004, i32 2}
!63 = distinct !{null, !64, !"__warned", i1 false, i1 false}
!64 = !{!"../include/linux/rhashtable.h", i32 377, i32 19}
!65 = !{ptr @fl_policy, !66, !"fl_policy", i1 false, i1 false}
!66 = !{!"../net/sched/cls_flower.c", i32 614, i32 32}
!67 = !{ptr @fl_set_parms.__msg, !68, !"__msg", i1 false, i1 false}
!68 = !{!"../net/sched/cls_flower.c", i32 1950, i32 3}
!69 = distinct !{null, !70, !"__already_done", i1 false, i1 false}
!70 = !{!"../include/net/sch_generic.h", i32 596, i32 2}
!71 = !{ptr @.str.18, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.19, !70, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @tcf_change_indev.__msg, !74, !"__msg", i1 false, i1 false}
!74 = !{!"../include/net/pkt_cls.h", i32 526, i32 3}
!75 = !{ptr @tcf_change_indev.__msg.20, !76, !"__msg", i1 false, i1 false}
!76 = !{!"../include/net/pkt_cls.h", i32 532, i32 3}
!77 = !{ptr @fl_set_key_mpls.__msg, !78, !"__msg", i1 false, i1 false}
!78 = !{!"../net/sched/cls_flower.c", i32 941, i32 4}
!79 = !{ptr @fl_set_key_mpls.__msg.21, !80, !"__msg", i1 false, i1 false}
!80 = !{!"../net/sched/cls_flower.c", i32 964, i32 4}
!81 = !{ptr @fl_set_key_mpls.__msg.22, !82, !"__msg", i1 false, i1 false}
!82 = !{!"../net/sched/cls_flower.c", i32 978, i32 4}
!83 = !{ptr @fl_set_key_mpls.__msg.23, !84, !"__msg", i1 false, i1 false}
!84 = !{!"../net/sched/cls_flower.c", i32 992, i32 4}
!85 = !{ptr @fl_set_key_mpls_opts.__msg, !86, !"__msg", i1 false, i1 false}
!86 = !{!"../net/sched/cls_flower.c", i32 903, i32 3}
!87 = !{ptr @fl_set_key_mpls_opts.__msg.24, !88, !"__msg", i1 false, i1 false}
!88 = !{!"../net/sched/cls_flower.c", i32 910, i32 4}
!89 = !{ptr @fl_set_key_mpls_opts.__msg.25, !90, !"__msg", i1 false, i1 false}
!90 = !{!"../net/sched/cls_flower.c", i32 920, i32 3}
!91 = !{ptr @fl_set_key_mpls_lse.__msg, !92, !"__msg", i1 false, i1 false}
!92 = !{!"../net/sched/cls_flower.c", i32 826, i32 3}
!93 = !{ptr @fl_set_key_mpls_lse.__msg.26, !94, !"__msg", i1 false, i1 false}
!94 = !{!"../net/sched/cls_flower.c", i32 836, i32 3}
!95 = !{ptr @fl_set_key_mpls_lse.__msg.27, !96, !"__msg", i1 false, i1 false}
!96 = !{!"../net/sched/cls_flower.c", i32 857, i32 4}
!97 = !{ptr @fl_set_key_mpls_lse.__msg.28, !98, !"__msg", i1 false, i1 false}
!98 = !{!"../net/sched/cls_flower.c", i32 869, i32 4}
!99 = !{ptr @fl_set_key_mpls_lse.__msg.29, !100, !"__msg", i1 false, i1 false}
!100 = !{!"../net/sched/cls_flower.c", i32 881, i32 4}
!101 = !{ptr @nla_parse_nested.__msg, !102, !"__msg", i1 false, i1 false}
!102 = !{!"../include/net/netlink.h", i32 1208, i32 3}
!103 = !{ptr @mpls_stack_entry_policy, !104, !"mpls_stack_entry_policy", i1 false, i1 false}
!104 = !{!"../net/sched/cls_flower.c", i32 750, i32 1}
!105 = !{ptr @fl_set_key_port_range.__msg, !106, !"__msg", i1 false, i1 false}
!106 = !{!"../net/sched/cls_flower.c", i32 791, i32 3}
!107 = !{ptr @fl_set_key_port_range.__msg.30, !108, !"__msg", i1 false, i1 false}
!108 = !{!"../net/sched/cls_flower.c", i32 799, i32 3}
!109 = !{ptr @fl_set_enc_opt.__msg, !110, !"__msg", i1 false, i1 false}
!110 = !{!"../net/sched/cls_flower.c", i32 1290, i32 4}
!111 = !{ptr @fl_set_enc_opt.__msg.31, !112, !"__msg", i1 false, i1 false}
!112 = !{!"../net/sched/cls_flower.c", i32 1301, i32 5}
!113 = !{ptr @fl_set_enc_opt.__msg.32, !114, !"__msg", i1 false, i1 false}
!114 = !{!"../net/sched/cls_flower.c", i32 1325, i32 5}
!115 = !{ptr @fl_set_enc_opt.__msg.33, !116, !"__msg", i1 false, i1 false}
!116 = !{!"../net/sched/cls_flower.c", i32 1331, i32 5}
!117 = !{ptr @fl_set_enc_opt.__msg.34, !118, !"__msg", i1 false, i1 false}
!118 = !{!"../net/sched/cls_flower.c", i32 1355, i32 5}
!119 = !{ptr @fl_set_enc_opt.__msg.35, !120, !"__msg", i1 false, i1 false}
!120 = !{!"../net/sched/cls_flower.c", i32 1361, i32 5}
!121 = !{ptr @fl_set_enc_opt.__msg.36, !122, !"__msg", i1 false, i1 false}
!122 = !{!"../net/sched/cls_flower.c", i32 1385, i32 5}
!123 = !{ptr @fl_set_enc_opt.__msg.37, !124, !"__msg", i1 false, i1 false}
!124 = !{!"../net/sched/cls_flower.c", i32 1390, i32 4}
!125 = !{ptr @fl_set_enc_opt.__msg.38, !126, !"__msg", i1 false, i1 false}
!126 = !{!"../net/sched/cls_flower.c", i32 1398, i32 4}
!127 = !{ptr @enc_opts_policy, !128, !"enc_opts_policy", i1 false, i1 false}
!128 = !{!"../net/sched/cls_flower.c", i32 720, i32 1}
!129 = !{ptr @fl_set_geneve_opt.__msg, !130, !"__msg", i1 false, i1 false}
!130 = !{!"../net/sched/cls_flower.c", i32 1102, i32 3}
!131 = !{ptr @fl_set_geneve_opt.__msg.40, !132, !"__msg", i1 false, i1 false}
!132 = !{!"../net/sched/cls_flower.c", i32 1119, i32 3}
!133 = !{ptr @fl_set_geneve_opt.__msg.41, !134, !"__msg", i1 false, i1 false}
!134 = !{!"../net/sched/cls_flower.c", i32 1132, i32 4}
!135 = !{ptr @fl_set_geneve_opt.__msg.42, !136, !"__msg", i1 false, i1 false}
!136 = !{!"../net/sched/cls_flower.c", i32 1136, i32 4}
!137 = !{ptr @fl_set_geneve_opt.__msg.43, !138, !"__msg", i1 false, i1 false}
!138 = !{!"../net/sched/cls_flower.c", i32 1143, i32 4}
!139 = !{ptr @geneve_opt_policy, !140, !"geneve_opt_policy", i1 false, i1 false}
!140 = !{!"../net/sched/cls_flower.c", i32 729, i32 1}
!141 = !{ptr @fl_set_vxlan_opt.__msg, !142, !"__msg", i1 false, i1 false}
!142 = !{!"../net/sched/cls_flower.c", i32 1178, i32 3}
!143 = !{ptr @fl_set_vxlan_opt.__msg.44, !144, !"__msg", i1 false, i1 false}
!144 = !{!"../net/sched/cls_flower.c", i32 1188, i32 3}
!145 = !{ptr @vxlan_opt_policy, !146, !"vxlan_opt_policy", i1 false, i1 false}
!146 = !{!"../net/sched/cls_flower.c", i32 737, i32 1}
!147 = !{ptr @fl_set_erspan_opt.__msg, !148, !"__msg", i1 false, i1 false}
!148 = !{!"../net/sched/cls_flower.c", i32 1216, i32 3}
!149 = !{ptr @fl_set_erspan_opt.__msg.45, !150, !"__msg", i1 false, i1 false}
!150 = !{!"../net/sched/cls_flower.c", i32 1226, i32 3}
!151 = !{ptr @fl_set_erspan_opt.__msg.46, !152, !"__msg", i1 false, i1 false}
!152 = !{!"../net/sched/cls_flower.c", i32 1235, i32 4}
!153 = !{ptr @fl_set_erspan_opt.__msg.47, !154, !"__msg", i1 false, i1 false}
!154 = !{!"../net/sched/cls_flower.c", i32 1246, i32 4}
!155 = !{ptr @fl_set_erspan_opt.__msg.48, !156, !"__msg", i1 false, i1 false}
!156 = !{!"../net/sched/cls_flower.c", i32 1258, i32 3}
!157 = !{ptr @erspan_opt_policy, !158, !"erspan_opt_policy", i1 false, i1 false}
!158 = !{!"../net/sched/cls_flower.c", i32 742, i32 1}
!159 = !{ptr @fl_validate_ct_state.__msg, !160, !"__msg", i1 false, i1 false}
!160 = !{!"../net/sched/cls_flower.c", i32 1411, i32 3}
!161 = !{ptr @fl_validate_ct_state.__msg.49, !162, !"__msg", i1 false, i1 false}
!162 = !{!"../net/sched/cls_flower.c", i32 1418, i32 3}
!163 = !{ptr @fl_validate_ct_state.__msg.50, !164, !"__msg", i1 false, i1 false}
!164 = !{!"../net/sched/cls_flower.c", i32 1426, i32 3}
!165 = !{ptr @fl_validate_ct_state.__msg.51, !166, !"__msg", i1 false, i1 false}
!166 = !{!"../net/sched/cls_flower.c", i32 1433, i32 3}
!167 = !{ptr @fl_set_key_flags.__msg, !168, !"__msg", i1 false, i1 false}
!168 = !{!"../net/sched/cls_flower.c", i32 1046, i32 3}
!169 = distinct !{null, !170, !"__warned", i1 false, i1 false}
!170 = !{!"../include/linux/rhashtable.h", i32 715, i32 8}
!171 = distinct !{null, !172, !"__warned", i1 false, i1 false}
!172 = !{!"../include/linux/rhashtable.h", i32 755, i32 10}
!173 = distinct !{null, !174, !"__warned", i1 false, i1 false}
!174 = !{!"../include/linux/rhashtable.h", i32 732, i32 2}
!175 = !{ptr @fl_ht_params, !176, !"fl_ht_params", i1 false, i1 false}
!176 = !{!"../net/sched/cls_flower.c", i32 1729, i32 39}
!177 = distinct !{null, !178, !"__warned", i1 false, i1 false}
!178 = !{!"../include/linux/rhashtable.h", i32 1210, i32 8}
!179 = distinct !{null, !180, !"__warned", i1 false, i1 false}
!180 = !{!"../include/linux/rhashtable.h", i32 1219, i32 16}
!181 = distinct !{null, !182, !"__warned", i1 false, i1 false}
!182 = !{!"../include/linux/rhashtable.h", i32 1163, i32 2}
!183 = !{ptr @fl_hw_replace_filter.__msg, !184, !"__msg", i1 false, i1 false}
!184 = !{!"../net/sched/cls_flower.c", i32 470, i32 4}
!185 = distinct !{null, !186, !"__already_done", i1 false, i1 false}
!186 = !{!"../net/sched/cls_flower.c", i32 2255, i32 2}
!187 = !{ptr @fl_reoffload.__msg, !188, !"__msg", i1 false, i1 false}
!188 = !{!"../net/sched/cls_flower.c", i32 2278, i32 5}
!189 = !{ptr @.str.55, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../include/net/netlink.h", i32 991, i32 3}
!191 = !{!"sp"}
!192 = !{i32 1, !"wchar_size", i32 2}
!193 = !{i32 1, !"min_enum_size", i32 4}
!194 = !{i32 8, !"branch-target-enforcement", i32 0}
!195 = !{i32 8, !"sign-return-address", i32 0}
!196 = !{i32 8, !"sign-return-address-all", i32 0}
!197 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!198 = !{i32 7, !"uwtable", i32 1}
!199 = !{i32 7, !"frame-pointer", i32 2}
!200 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!201 = !{i64 2158639492}
!202 = !{!"auto-init"}
!203 = !{i8 0, i8 2}
!204 = !{i64 2149448739}
!205 = !{i64 786006, i64 786030, i64 786051, i64 786068, i64 786085}
!206 = !{!"branch_weights", i32 2000, i32 1}
!207 = !{i64 2149449005}
!208 = !{i64 2151727766}
!209 = !{i64 2156660784}
!210 = !{i64 809038, i64 809055, i64 809079, i64 809105, i64 809123}
!211 = !{i64 2156661128}
!212 = !{!"branch_weights", i32 1, i32 2000}
!213 = !{i64 2151883192}
!214 = !{i64 2151886626}
!215 = !{i64 2151950568}
!216 = !{i64 2148304735, i64 2148304761, i64 2148304790, i64 2148304824, i64 2148304855, i64 2148304878}
!217 = !{i64 2148391801}
!218 = !{i64 2148306265, i64 2148306297, i64 2148306326, i64 2148306360, i64 2148306391, i64 2148306414}
!219 = !{i64 2149398249}
!220 = !{i64 2151845515}
!221 = !{!"branch_weights", i32 2146410443, i32 1073205}
!222 = !{i64 2148311128, i64 2148311160, i64 2148311189, i64 2148311223, i64 2148311254, i64 2148311277}
!223 = !{i64 2148400209}
!224 = !{i64 2151845675}
!225 = !{i64 2151845952}
!226 = !{i64 2151845794}
!227 = !{i64 2151846157}
!228 = !{i64 2151847220, i64 2151847712, i64 2151847257, i64 2151847313, i64 2151847347, i64 2151847371, i64 2151847412, i64 2151847433, i64 2151847461, i64 2151847495}
!229 = !{i64 2148399096}
!230 = !{i64 2148309515, i64 2148309547, i64 2148309576, i64 2148309610, i64 2148309641, i64 2148309664}
!231 = !{i64 2151848615}
!232 = !{i64 2151876265}
!233 = !{i64 2151878564}
!234 = !{i64 2151930502, i64 2151930993, i64 2151930539, i64 2151930595, i64 2151930629, i64 2151930653, i64 2151930694, i64 2151930715, i64 2151930743, i64 2151930777}
!235 = !{i64 2151968114}
!236 = !{i64 2151975281}
!237 = !{i64 2151713814}
!238 = !{i64 2151924648, i64 2151925139, i64 2151924685, i64 2151924741, i64 2151924775, i64 2151924799, i64 2151924840, i64 2151924861, i64 2151924889, i64 2151924923}
!239 = !{i64 2148303800, i64 2148303832, i64 2148303861, i64 2148303895, i64 2148303926, i64 2148303949}
!240 = !{i64 2148302270, i64 2148302296, i64 2148302325, i64 2148302359, i64 2148302390, i64 2148302413}
!241 = !{i64 2156663051}
!242 = !{i64 2156663148}
