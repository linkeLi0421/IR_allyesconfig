; ModuleID = '/llk/IR_all_yes/net/sched/cls_flow.c_pt.bc'
source_filename = "../net/sched/cls_flow.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tcf_proto_ops = type { %struct.list_head, [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.flow_dissector = type { i32, [28 x i16] }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, ptr, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [16 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.9 }
%union.anon.9 = type { [5 x %struct.uid_gid_extent] }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.atomic_t = type { i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.19, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.19 = type { %struct.anon.20 }
%struct.anon.20 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.nla_policy = type { i8, i8, i16, %union.anon.28 }
%union.anon.28 = type { i32 }
%struct.lock_class_key = type { %union.anon.7 }
%union.anon.7 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.vlan_hdr = type { i16, i16 }
%struct.flow_keys = type { %struct.flow_dissector_key_control, %struct.flow_dissector_key_basic, %struct.flow_dissector_key_tags, %struct.flow_dissector_key_vlan, %struct.flow_dissector_key_vlan, %struct.flow_dissector_key_keyid, %struct.flow_dissector_key_ports, %struct.flow_dissector_key_icmp, %struct.flow_dissector_key_addrs, [4 x i8] }
%struct.flow_dissector_key_control = type { i16, i16, i32 }
%struct.flow_dissector_key_basic = type { i16, i8, i8 }
%struct.flow_dissector_key_tags = type { i32 }
%struct.flow_dissector_key_vlan = type { %union.anon.160, i16 }
%union.anon.160 = type { %struct.anon.161 }
%struct.anon.161 = type { i16 }
%struct.flow_dissector_key_keyid = type { i32 }
%struct.flow_dissector_key_ports = type { %union.anon.162 }
%union.anon.162 = type { i32 }
%struct.flow_dissector_key_icmp = type { %struct.anon.164, i16 }
%struct.anon.164 = type { i8, i8 }
%struct.flow_dissector_key_addrs = type { %union.anon.165 }
%union.anon.165 = type { %struct.flow_dissector_key_ipv6_addrs }
%struct.flow_dissector_key_ipv6_addrs = type { %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.27 }
%union.anon.27 = type { [4 x i32] }
%struct.tcf_proto = type { ptr, ptr, ptr, i16, i32, ptr, ptr, ptr, %struct.spinlock, i8, %struct.refcount_struct, %struct.callback_head, %struct.hlist_node }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
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
%struct.anon.154 = type { i32, i32 }
%struct.flow_filter = type { %struct.list_head, %struct.tcf_exts, %struct.tcf_ematch_tree, ptr, %struct.timer_list, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.rcu_work }
%struct.tcf_exts = type { i32, i32, ptr, ptr, ptr, i32, i32 }
%struct.tcf_ematch_tree = type { %struct.tcf_ematch_tree_hdr, ptr }
%struct.tcf_ematch_tree_hdr = type { i16, i16 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.rcu_work = type { %struct.work_struct, %struct.callback_head, ptr }
%struct.nf_conn = type { %struct.nf_conntrack, %struct.spinlock, i32, %struct.nf_conntrack_zone, [2 x %struct.nf_conntrack_tuple_hash], i32, i16, %struct.possible_net_t, %struct.hlist_node, %struct.anon.180, ptr, i32, i32, ptr, %union.nf_conntrack_proto }
%struct.nf_conntrack = type { %struct.refcount_struct }
%struct.nf_conntrack_zone = type { i16, i8, i8 }
%struct.nf_conntrack_tuple_hash = type { %struct.hlist_nulls_node, %struct.nf_conntrack_tuple }
%struct.hlist_nulls_node = type { ptr, ptr }
%struct.nf_conntrack_tuple = type { %struct.nf_conntrack_man, %struct.anon.172 }
%struct.nf_conntrack_man = type { %union.nf_inet_addr, %union.nf_conntrack_man_proto, i16 }
%union.nf_inet_addr = type { [4 x i32] }
%union.nf_conntrack_man_proto = type { i16 }
%struct.anon.172 = type { %union.nf_inet_addr, %union.anon.173, i8, i8 }
%union.anon.173 = type { i16 }
%struct.possible_net_t = type { ptr }
%struct.anon.180 = type {}
%union.nf_conntrack_proto = type { %struct.nf_ct_dccp, [48 x i8] }
%struct.nf_ct_dccp = type { [2 x i8], i8, i8, i8, i64 }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, ptr }
%struct.sock_common = type { %union.anon.108, %union.anon.110, %union.anon.111, i16, i8, i8, i32, %union.anon.113, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.116, [0 x i32], %union.anon.117, i16, i16, %union.anon.118, %struct.refcount_struct, [0 x i32], %union.anon.119 }
%union.anon.108 = type { i64 }
%union.anon.110 = type { i32 }
%union.anon.111 = type { i32 }
%union.anon.113 = type { %struct.hlist_node }
%struct.atomic64_t = type { i64 }
%union.anon.116 = type { i32 }
%union.anon.117 = type { %struct.hlist_node }
%union.anon.118 = type { i32 }
%union.anon.119 = type { i32 }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.120, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.121, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.122, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.120 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.121 = type { ptr }
%union.anon.122 = type { ptr }
%struct.sk_buff_head = type { %union.anon.95, i32, %struct.spinlock }
%union.anon.95 = type { %struct.anon.96 }
%struct.anon.96 = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.socket = type { i32, i16, i32, ptr, ptr, ptr, [104 x i8], %struct.socket_wq }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [60 x i8] }
%struct.file = type { %union.anon.43, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.43 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.55 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.55 = type { %struct.callback_head }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.1, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.135, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.1 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%union.anon.135 = type { ptr }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.vlan_ethhdr = type { %union.anon.181, i16, i16, i16 }
%union.anon.181 = type { %struct.anon.182 }
%struct.anon.182 = type { [6 x i8], [6 x i8] }
%struct.flow_head = type { %struct.list_head, %struct.callback_head }
%struct.tcf_chain = type { %struct.mutex, ptr, %struct.list_head, ptr, i32, i32, i32, i8, i8, ptr, ptr, %struct.callback_head }
%struct.tcf_block = type { %struct.mutex, %struct.list_head, i32, i32, %struct.refcount_struct, ptr, ptr, %struct.rw_semaphore, %struct.flow_block, %struct.list_head, i8, %struct.atomic_t, i32, i32, %struct.anon.134, %struct.callback_head, [128 x %struct.hlist_head], %struct.mutex }
%struct.flow_block = type { %struct.list_head }
%struct.anon.134 = type { ptr, %struct.list_head }
%struct.Qdisc = type { ptr, ptr, i32, i32, ptr, ptr, %struct.hlist_node, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, [64 x i8], %struct.sk_buff_head, %struct.qdisc_skb_head, %struct.gnet_stats_basic_sync, %struct.gnet_stats_queue, i32, i32, ptr, %struct.sk_buff_head, [8 x i8], %struct.spinlock, %struct.spinlock, %struct.callback_head, ptr, [28 x i8], [0 x i32] }
%struct.qdisc_skb_head = type { ptr, ptr, i32, %struct.spinlock }
%struct.gnet_stats_basic_sync = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.gnet_stats_queue = type { i32, i32, i32, i32, i32 }
%struct.tcf_walker = type { i32, i32, i32, i8, i32, ptr }
%struct.tcmsg = type { i8, i8, i16, i32, i32, i32, i32 }
%struct.anon.163 = type { i16, i16 }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
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
%struct.ping_group_range = type { %struct.seqlock_t, [2 x %struct.kgid_t] }
%struct.siphash_key_t = type { [2 x i64] }
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.105, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
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

@cls_flow_ops = internal global %struct.tcf_proto_ops { %struct.list_head zeroinitializer, [16 x i8] c"flow\00\00\00\00\00\00\00\00\00\00\00\00", ptr @flow_classify, ptr @flow_init, ptr @flow_destroy, ptr @flow_get, ptr null, ptr @flow_change, ptr @flow_delete, ptr null, ptr @flow_walk, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @flow_dump, ptr null, ptr null, ptr null, i32 0 }, section ".data..read_mostly", align 4
@__initcall__kmod_cls_flow__620_720_cls_flow_init6 = internal global ptr @cls_flow_init, section ".initcall6.init", align 4
@__exitcall_cls_flow_exit = internal global ptr @cls_flow_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file621 = internal constant [33 x i8] c"cls_flow.file=net/sched/cls_flow\00", section ".modinfo", align 1
@__UNIQUE_ID_license622 = internal constant [21 x i8] c"cls_flow.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author623 = internal constant [50 x i8] c"cls_flow.author=Patrick McHardy <kaber@trash.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_description624 = internal constant [40 x i8] c"cls_flow.description=TC flow classifier\00", section ".modinfo", align 1
@flow_classify.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"net/sched/cls_flow.c\00", [43 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@flow_classify.__warned.2 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.3 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@flow_keys_dissector = external dso_local global %struct.flow_dissector, align 4
@.str.4 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/skbuff.h\00", [41 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/if_vlan.h\00", [40 x i8] zeroinitializer }, align 32
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@flow_destroy.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.6 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@flow_get.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@flow_change.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@flow_policy = internal constant { [13 x %struct.nla_policy], [56 x i8] } { [13 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.28 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.28 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.28 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.28 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.28 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.28 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.28 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.28 zeroinitializer }, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon.28 zeroinitializer }, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon.28 zeroinitializer }, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon.28 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.28 zeroinitializer }], [56 x i8] zeroinitializer }, align 32
@flow_change.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"(&fnew->perturb_timer)\00", [41 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.8 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/pkt_cls.h\00", [42 x i8] zeroinitializer }, align 32
@flow_delete.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@flow_walk.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/netlink.h\00", [42 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [20 x i64] [i64 18, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17]
@__sancov_gen_cov_switch_values.10 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.11 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.12 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@__sancov_gen_cov_switch_values.13 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.14 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.15 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@__sancov_gen_cov_switch_values.16 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.17 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.18 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.19 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.20 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.21 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 298, i32 27 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 305, i32 2 }
@___asan_gen_.32 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 1011, i32 2 }
@___asan_gen_.35 = private unnamed_addr constant [27 x i8] c"../include/linux/if_vlan.h\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 598, i32 8 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 594, i32 27 }
@___asan_gen_.40 = private unnamed_addr constant [12 x i8] c"flow_policy\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 353, i32 32 }
@___asan_gen_.43 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.47 = private constant [24 x i8] c"../net/sched/cls_flow.c\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 516, i32 2 }
@___asan_gen_.50 = private unnamed_addr constant [25 x i8] c"../include/net/pkt_cls.h\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 75, i32 2 }
@___asan_gen_.52 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.53 = private unnamed_addr constant [25 x i8] c"../include/net/netlink.h\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 991, i32 3 }
@llvm.compiler.used = appending global [18 x ptr] [ptr @__UNIQUE_ID_author623, ptr @__UNIQUE_ID_description624, ptr @__UNIQUE_ID_file621, ptr @__UNIQUE_ID_license622, ptr @__exitcall_cls_flow_exit, ptr @__initcall__kmod_cls_flow__620_720_cls_flow_init6, ptr @cls_flow_exit, ptr @.str, ptr @.str.1, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @flow_policy, ptr @flow_change.__key, ptr @.str.7, ptr @.str.8, ptr @.str.9], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flow_policy to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flow_change.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cls_flow_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 @unregister_tcf_proto_ops(ptr noundef nonnull @cls_flow_ops) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_tcf_proto_ops(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cls_flow_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @register_tcf_proto_ops(ptr noundef nonnull @cls_flow_ops) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @flow_classify(ptr noundef %skb, ptr noundef %tp, ptr noundef %res) #2 align 64 {
entry:
  %vhdr.i.i.i.i81.i = alloca %struct.vlan_hdr, align 2
  %vhdr.i.i.i.i.i = alloca %struct.vlan_hdr, align 2
  %keys = alloca [18 x i32], align 4
  %flow_keys = alloca %struct.flow_keys, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %root = getelementptr inbounds %struct.tcf_proto, ptr %tp, i32 0, i32 1
  %0 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %root, align 4
  %call = tail call i32 @rcu_read_lock_bh_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end7_crit_edge

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end7

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b115 = load i1, ptr @flow_classify.__warned, align 1
  br i1 %.b115, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @flow_classify.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 298, ptr noundef nonnull @.str.1) #8
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %entry.do.end7_crit_edge
  %call10 = tail call i32 @rcu_read_lock_any_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %land.lhs.true12, label %do.end7.do.end20_crit_edge

do.end7.do.end20_crit_edge:                       ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end20

land.lhs.true12:                                  ; preds = %do.end7
  %call13 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %land.lhs.true12.do.end20_crit_edge, label %land.lhs.true15

land.lhs.true12.do.end20_crit_edge:               ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end20

land.lhs.true15:                                  ; preds = %land.lhs.true12
  %.b113114 = load i1, ptr @flow_classify.__warned.2, align 1
  br i1 %.b113114, label %land.lhs.true15.do.end20_crit_edge, label %if.then17

land.lhs.true15.do.end20_crit_edge:               ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end20

if.then17:                                        ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @flow_classify.__warned.2, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 305, ptr noundef nonnull @.str.3) #8
  br label %do.end20

do.end20:                                         ; preds = %if.then17, %land.lhs.true15.do.end20_crit_edge, %land.lhs.true12.do.end20_crit_edge, %do.end7.do.end20_crit_edge
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %f.0131 = load volatile ptr, ptr %1, align 4
  %cmp.not132 = icmp eq ptr %f.0131, %1
  br i1 %cmp.not132, label %do.end20.cleanup74_crit_edge, label %for.body.lr.ph

do.end20.cleanup74_crit_edge:                     ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup74

for.body.lr.ph:                                   ; preds = %do.end20
  %l4_hash.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %hash.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 8
  %3 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %vlan_present.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %vlan_tci1.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 10
  %data.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %4 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %5 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %_nfct.i.i.i151.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 5
  %ports.i.i.i = getelementptr inbounds %struct.flow_keys, ptr %flow_keys, i32 0, i32 6
  %protocol.i.i.i82.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %mac_len.i.i.i.i83.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 8
  %6 = getelementptr inbounds %struct.vlan_hdr, ptr %vhdr.i.i.i.i81.i, i32 0, i32 1
  %len.i.i.i.i.i.i93.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %data_len.i.i.i.i.i.i94.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %tobool2.not.i.i.i.i.i.i95.i = icmp eq ptr %skb, null
  %7 = getelementptr inbounds %struct.vlan_hdr, ptr %vhdr.i.i.i.i.i, i32 0, i32 1
  %8 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 13
  %priority.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 6
  %skb_iif.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 7
  %ip_proto.i.i = getelementptr inbounds %struct.flow_keys, ptr %flow_keys, i32 0, i32 1, i32 1
  %classid57 = getelementptr inbounds %struct.anon.154, ptr %res, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.cond.backedge.for.body_crit_edge, %for.body.lr.ph
  %f.0133 = phi ptr [ %f.0131, %for.body.lr.ph ], [ %f.0, %for.cond.backedge.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %keys) #8
  %9 = call ptr @memset(ptr %keys, i32 255, i32 72)
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %flow_keys) #8
  %10 = call ptr @memset(ptr %flow_keys, i32 255, i32 72)
  %ematches = getelementptr inbounds %struct.flow_filter, ptr %f.0133, i32 0, i32 2
  %11 = ptrtoint ptr %ematches to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %ematches, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool.not.i = icmp eq i16 %12, 0
  br i1 %tobool.not.i, label %for.body.if.end30_crit_edge, label %tcf_em_tree_match.exit

for.body.if.end30_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

tcf_em_tree_match.exit:                           ; preds = %for.body
  %call.i = call i32 @__tcf_em_tree_match(ptr noundef %skb, ptr noundef %ematches, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool28.not = icmp eq i32 %call.i, 0
  br i1 %tobool28.not, label %cleanup, label %tcf_em_tree_match.exit.if.end30_crit_edge

tcf_em_tree_match.exit.if.end30_crit_edge:        ; preds = %tcf_em_tree_match.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

if.end30:                                         ; preds = %tcf_em_tree_match.exit.if.end30_crit_edge, %for.body.if.end30_crit_edge
  %keymask31 = getelementptr inbounds %struct.flow_filter, ptr %f.0133, i32 0, i32 8
  %13 = ptrtoint ptr %keymask31 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %keymask31, align 4
  %and = and i32 %14, 7711
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool32.not = icmp eq i32 %and, 0
  br i1 %tobool32.not, label %if.end30.if.end35_crit_edge, label %if.then33

if.end30.if.end35_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35

if.then33:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  %15 = call ptr @memset(ptr %flow_keys, i32 0, i32 72)
  %call.i116 = call zeroext i1 @__skb_flow_dissect(ptr noundef null, ptr noundef %skb, ptr noundef nonnull @flow_keys_dissector, ptr noundef nonnull %flow_keys, ptr noundef null, i16 noundef zeroext 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #8
  br label %if.end35

if.end35:                                         ; preds = %if.then33, %if.end30.if.end35_crit_edge
  %nkeys = getelementptr inbounds %struct.flow_filter, ptr %f.0133, i32 0, i32 7
  %16 = ptrtoint ptr %nkeys to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nkeys, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp37128.not = icmp eq i32 %17, 0
  br i1 %cmp37128.not, label %for.end.thread, label %if.end35.for.body38_crit_edge

if.end35.for.body38_crit_edge:                    ; preds = %if.end35
  br label %for.body38

for.body38:                                       ; preds = %flow_key_get.exit.for.body38_crit_edge, %if.end35.for.body38_crit_edge
  %keymask.0130 = phi i32 [ %and39, %flow_key_get.exit.for.body38_crit_edge ], [ %14, %if.end35.for.body38_crit_edge ]
  %n.0129 = phi i32 [ %inc, %flow_key_get.exit.for.body38_crit_edge ], [ 0, %if.end35.for.body38_crit_edge ]
  %18 = call i32 @llvm.cttz.i32(i32 %keymask.0130, i1 true), !range !53
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %keymask.0130)
  %iszero = icmp eq i32 %keymask.0130, 0
  %sub = select i1 %iszero, i32 -1, i32 %18
  %shl = shl nuw i32 1, %sub
  %neg = xor i32 %shl, -1
  %and39 = and i32 %keymask.0130, %neg
  %19 = zext i32 %sub to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values)
  switch i32 %sub, label %do.end.i [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb1.i
    i32 2, label %sw.bb3.i
    i32 3, label %sw.bb5.i
    i32 4, label %sw.bb7.i
    i32 5, label %sw.bb9.i
    i32 6, label %sw.bb11.i
    i32 7, label %sw.bb13.i
    i32 8, label %sw.bb15.i
    i32 9, label %sw.bb17.i
    i32 10, label %sw.bb19.i
    i32 11, label %sw.bb21.i
    i32 12, label %sw.bb23.i
    i32 13, label %sw.bb25.i
    i32 14, label %sw.bb27.i
    i32 15, label %sw.bb29.i
    i32 16, label %sw.bb31.i
    i32 17, label %sw.bb33.i
  ]

sw.bb.i:                                          ; preds = %for.body38
  %call.i.i = call i32 @flow_get_u32_src(ptr noundef nonnull %flow_keys) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %sw.bb.i.flow_key_get.exit_crit_edge

sw.bb.i.flow_key_get.exit_crit_edge:              ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %flow_key_get.exit

if.end.i.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %4, align 4
  %22 = ptrtoint ptr %21 to i32
  br label %flow_key_get.exit

sw.bb1.i:                                         ; preds = %for.body38
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i = call fastcc i32 @flow_get_dst(ptr noundef %skb, ptr noundef nonnull %flow_keys) #8
  br label %flow_key_get.exit

sw.bb3.i:                                         ; preds = %for.body38
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %ip_proto.i.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %ip_proto.i.i, align 2
  %conv.i.i = zext i8 %24 to i32
  br label %flow_key_get.exit

sw.bb5.i:                                         ; preds = %for.body38
  %25 = ptrtoint ptr %ports.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ports.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.i75.i = icmp eq i32 %26, 0
  br i1 %tobool.not.i75.i, label %if.end.i77.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %sw.bb5.i
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %ports.i.i.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %ports.i.i.i, align 4
  %conv.i76.i = zext i16 %28 to i32
  br label %flow_key_get.exit

if.end.i77.i:                                     ; preds = %sw.bb5.i
  call void @__sanitizer_cov_trace_pc() #10
  %29 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %4, align 4
  %31 = ptrtoint ptr %30 to i32
  br label %flow_key_get.exit

sw.bb7.i:                                         ; preds = %for.body38
  call void @__sanitizer_cov_trace_pc() #10
  %call8.i = call fastcc i32 @flow_get_proto_dst(ptr noundef %skb, ptr noundef nonnull %flow_keys) #8
  br label %flow_key_get.exit

sw.bb9.i:                                         ; preds = %for.body38
  call void @__sanitizer_cov_trace_pc() #10
  %32 = ptrtoint ptr %skb_iif.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %skb_iif.i.i, align 8
  br label %flow_key_get.exit

sw.bb11.i:                                        ; preds = %for.body38
  call void @__sanitizer_cov_trace_pc() #10
  %34 = ptrtoint ptr %priority.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %priority.i.i, align 4
  br label %flow_key_get.exit

sw.bb13.i:                                        ; preds = %for.body38
  call void @__sanitizer_cov_trace_pc() #10
  %36 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %8, align 4
  br label %flow_key_get.exit

sw.bb15.i:                                        ; preds = %for.body38
  call void @__sanitizer_cov_trace_pc() #10
  %38 = ptrtoint ptr %_nfct.i.i.i151.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %_nfct.i.i.i151.i, align 8
  %and.i.i.i = and i32 %39, -8
  br label %flow_key_get.exit

sw.bb17.i:                                        ; preds = %for.body38
  %40 = ptrtoint ptr %protocol.i.i.i82.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %protocol.i.i.i82.i, align 8
  %42 = ptrtoint ptr %mac_len.i.i.i.i83.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %mac_len.i.i.i.i83.i, align 4
  %conv.i.i.i.i.i = zext i16 %43 to i32
  %44 = zext i16 %41 to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values.10)
  switch i16 %41, label %sw.bb17.i.skb_protocol.exit.i.i_crit_edge [
    i16 -30552, label %sw.bb17.i.if.then.i.i.i.i.i_crit_edge
    i16 -32512, label %sw.bb17.i.if.then.i.i.i.i.i_crit_edge161
  ]

sw.bb17.i.if.then.i.i.i.i.i_crit_edge161:         ; preds = %sw.bb17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i.i.i.i

sw.bb17.i.if.then.i.i.i.i.i_crit_edge:            ; preds = %sw.bb17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i.i.i.i

sw.bb17.i.skb_protocol.exit.i.i_crit_edge:        ; preds = %sw.bb17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %skb_protocol.exit.i.i

if.then.i.i.i.i.i:                                ; preds = %sw.bb17.i.if.then.i.i.i.i.i_crit_edge, %sw.bb17.i.if.then.i.i.i.i.i_crit_edge161
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %43)
  %tobool.not.i.i.i.i.i = icmp eq i16 %43, 0
  br i1 %tobool.not.i.i.i.i.i, label %if.then.i.i.i.i.i.do.body27.i.i.i.i.i.preheader_crit_edge, label %if.then1.i.i.i.i.i

if.then.i.i.i.i.i.do.body27.i.i.i.i.i.preheader_crit_edge: ; preds = %if.then.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body27.i.i.i.i.i.preheader

if.then1.i.i.i.i.i:                               ; preds = %if.then.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %43)
  %cmp.i.i.i.i.i = icmp ult i16 %43, 4
  br i1 %cmp.i.i.i.i.i, label %do.end.i.i.i.i.i, label %if.end25.i.i.i.i.i, !prof !54

do.end.i.i.i.i.i:                                 ; preds = %if.then1.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 598, i32 noundef 9, ptr noundef null) #8
  br label %fallback.i.i

if.end25.i.i.i.i.i:                               ; preds = %if.then1.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i.i.i.i = add nsw i32 %conv.i.i.i.i.i, -4
  br label %do.body27.i.i.i.i.i.preheader

do.body27.i.i.i.i.i.preheader:                    ; preds = %if.end25.i.i.i.i.i, %if.then.i.i.i.i.i.do.body27.i.i.i.i.i.preheader_crit_edge
  %vlan_depth.1.i.i.i.i.i.ph = phi i32 [ 14, %if.then.i.i.i.i.i.do.body27.i.i.i.i.i.preheader_crit_edge ], [ %sub.i.i.i.i.i, %if.end25.i.i.i.i.i ]
  br label %do.body27.i.i.i.i.i

do.body27.i.i.i.i.i:                              ; preds = %do.body27.backedge.i.i.i.i.i, %do.body27.i.i.i.i.i.preheader
  %vlan_depth.1.i.i.i.i.i = phi i32 [ %add.i.i.i.i.i, %do.body27.backedge.i.i.i.i.i ], [ %vlan_depth.1.i.i.i.i.i.ph, %do.body27.i.i.i.i.i.preheader ]
  %parse_depth.0.i.i.i.i.i = phi i32 [ %dec.i.i.i.i.i, %do.body27.backedge.i.i.i.i.i ], [ 8, %do.body27.i.i.i.i.i.preheader ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vhdr.i.i.i.i.i) #8
  %45 = ptrtoint ptr %vhdr.i.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 -1, ptr %vhdr.i.i.i.i.i, align 2, !annotation !55
  %46 = ptrtoint ptr %7 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 -1, ptr %7, align 2, !annotation !55
  %47 = ptrtoint ptr %len.i.i.i.i.i.i93.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %len.i.i.i.i.i.i93.i, align 4
  %49 = ptrtoint ptr %data_len.i.i.i.i.i.i94.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %data_len.i.i.i.i.i.i94.i, align 8
  %51 = add i32 %vlan_depth.1.i.i.i.i.i, %50
  %sub.i1.i.i.i.i.i.i = sub i32 %48, %51
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub.i1.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp sgt i32 %sub.i1.i.i.i.i.i.i, 3
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i, !prof !56

if.then.i.i.i.i.i.i.i:                            ; preds = %do.body27.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %52 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %data.i.i.i.i, align 4
  %add.ptr.i.i.i.i.i.i.i = getelementptr i8, ptr %53, i32 %vlan_depth.1.i.i.i.i.i
  br label %skb_header_pointer.exit.i.i.i.i.i

if.end.i.i.i.i.i.i.i:                             ; preds = %do.body27.i.i.i.i.i
  br i1 %tobool2.not.i.i.i.i.i.i95.i, label %if.end.i.i.i.i.i.i.i.cleanup.thread.i.i.i.i.i_crit_edge, label %lor.lhs.false.i.i.i.i.i.i.i

if.end.i.i.i.i.i.i.i.cleanup.thread.i.i.i.i.i_crit_edge: ; preds = %if.end.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread.i.i.i.i.i

lor.lhs.false.i.i.i.i.i.i.i:                      ; preds = %if.end.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i.i.i.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %vlan_depth.1.i.i.i.i.i, ptr noundef nonnull %vhdr.i.i.i.i.i, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i.i.i.i)
  %cmp3.i.i.i.i.i.i.i = icmp slt i32 %call.i.i.i.i.i.i.i, 0
  %spec.select.i.i.i.i.i.i.i = select i1 %cmp3.i.i.i.i.i.i.i, ptr null, ptr %vhdr.i.i.i.i.i, !prof !54
  br label %skb_header_pointer.exit.i.i.i.i.i

skb_header_pointer.exit.i.i.i.i.i:                ; preds = %lor.lhs.false.i.i.i.i.i.i.i, %if.then.i.i.i.i.i.i.i
  %retval.0.i.i.i.i.i.i.i = phi ptr [ %add.ptr.i.i.i.i.i.i.i, %if.then.i.i.i.i.i.i.i ], [ %spec.select.i.i.i.i.i.i.i, %lor.lhs.false.i.i.i.i.i.i.i ]
  %tobool29.not.i.i.i.i.i = icmp eq ptr %retval.0.i.i.i.i.i.i.i, null
  %dec.i.i.i.i.i = add nsw i32 %parse_depth.0.i.i.i.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i.i.i.i)
  %tobool30.not.i.i.i.i.i = icmp eq i32 %dec.i.i.i.i.i, 0
  %54 = select i1 %tobool29.not.i.i.i.i.i, i1 true, i1 %tobool30.not.i.i.i.i.i, !prof !54
  br i1 %54, label %skb_header_pointer.exit.i.i.i.i.i.cleanup.thread.i.i.i.i.i_crit_edge, label %do.cond42.i.i.i.i.i, !prof !54

skb_header_pointer.exit.i.i.i.i.i.cleanup.thread.i.i.i.i.i_crit_edge: ; preds = %skb_header_pointer.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread.i.i.i.i.i

cleanup.thread.i.i.i.i.i:                         ; preds = %skb_header_pointer.exit.i.i.i.i.i.cleanup.thread.i.i.i.i.i_crit_edge, %if.end.i.i.i.i.i.i.i.cleanup.thread.i.i.i.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vhdr.i.i.i.i.i) #8
  br label %fallback.i.i

do.cond42.i.i.i.i.i:                              ; preds = %skb_header_pointer.exit.i.i.i.i.i
  %h_vlan_encapsulated_proto.i.i.i.i.i = getelementptr inbounds %struct.vlan_hdr, ptr %retval.0.i.i.i.i.i.i.i, i32 0, i32 1
  %55 = ptrtoint ptr %h_vlan_encapsulated_proto.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %h_vlan_encapsulated_proto.i.i.i.i.i, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vhdr.i.i.i.i.i) #8
  %57 = zext i16 %56 to i64
  call void @__sanitizer_cov_trace_switch(i64 %57, ptr @__sancov_gen_cov_switch_values.11)
  switch i16 %56, label %do.cond42.i.i.i.i.i.skb_protocol.exit.i.i_crit_edge [
    i16 -30552, label %do.cond42.i.i.i.i.i.do.body27.backedge.i.i.i.i.i_crit_edge
    i16 -32512, label %do.cond42.i.i.i.i.i.do.body27.backedge.i.i.i.i.i_crit_edge162
  ]

do.cond42.i.i.i.i.i.do.body27.backedge.i.i.i.i.i_crit_edge162: ; preds = %do.cond42.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body27.backedge.i.i.i.i.i

do.cond42.i.i.i.i.i.do.body27.backedge.i.i.i.i.i_crit_edge: ; preds = %do.cond42.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body27.backedge.i.i.i.i.i

do.cond42.i.i.i.i.i.skb_protocol.exit.i.i_crit_edge: ; preds = %do.cond42.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %skb_protocol.exit.i.i

do.body27.backedge.i.i.i.i.i:                     ; preds = %do.cond42.i.i.i.i.i.do.body27.backedge.i.i.i.i.i_crit_edge, %do.cond42.i.i.i.i.i.do.body27.backedge.i.i.i.i.i_crit_edge162
  %add.i.i.i.i.i = add nsw i32 %vlan_depth.1.i.i.i.i.i, 4
  br label %do.body27.i.i.i.i.i

skb_protocol.exit.i.i:                            ; preds = %do.cond42.i.i.i.i.i.skb_protocol.exit.i.i_crit_edge, %sw.bb17.i.skb_protocol.exit.i.i_crit_edge
  %retval.2.i.i.i.i.i = phi i16 [ %41, %sw.bb17.i.skb_protocol.exit.i.i_crit_edge ], [ %56, %do.cond42.i.i.i.i.i.skb_protocol.exit.i.i_crit_edge ]
  %58 = zext i16 %retval.2.i.i.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %58, ptr @__sancov_gen_cov_switch_values.12)
  switch i16 %retval.2.i.i.i.i.i, label %skb_protocol.exit.i.i.fallback.i.i_crit_edge [
    i16 2048, label %sw.bb.i.i
    i16 -31011, label %sw.bb6.i.i
  ]

skb_protocol.exit.i.i.fallback.i.i_crit_edge:     ; preds = %skb_protocol.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fallback.i.i

sw.bb.i.i:                                        ; preds = %skb_protocol.exit.i.i
  %59 = ptrtoint ptr %_nfct.i.i.i151.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %_nfct.i.i.i151.i, align 8
  %and1.i.i.i = and i32 %60, -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %cmp.i.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %cmp.i.i, label %sw.bb.i.i.fallback.i.i_crit_edge, label %cleanup.thread.i.i

sw.bb.i.i.fallback.i.i_crit_edge:                 ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fallback.i.i

cleanup.thread.i.i:                               ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %61 = inttoptr i32 %and1.i.i.i to ptr
  %and.i.i79.i = and i32 %60, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i.i79.i)
  %cmp3.i.i = icmp ugt i32 %and.i.i79.i, 2
  %cond.i.i = zext i1 %cmp3.i.i to i32
  %tuple.i.i = getelementptr %struct.nf_conn, ptr %61, i32 0, i32 4, i32 %cond.i.i, i32 1
  %62 = ptrtoint ptr %tuple.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %tuple.i.i, align 8
  br label %flow_key_get.exit

sw.bb6.i.i:                                       ; preds = %skb_protocol.exit.i.i
  %64 = ptrtoint ptr %_nfct.i.i.i151.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %_nfct.i.i.i151.i, align 8
  %and1.i38.i.i = and i32 %65, -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i38.i.i)
  %cmp10.i.i = icmp eq i32 %and1.i38.i.i, 0
  br i1 %cmp10.i.i, label %sw.bb6.i.i.fallback.i.i_crit_edge, label %cleanup24.thread.i.i

sw.bb6.i.i.fallback.i.i_crit_edge:                ; preds = %sw.bb6.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fallback.i.i

cleanup24.thread.i.i:                             ; preds = %sw.bb6.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %66 = inttoptr i32 %and1.i38.i.i to ptr
  %and.i37.i.i = and i32 %65, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i37.i.i)
  %cmp16.i.i = icmp ugt i32 %and.i37.i.i, 2
  %cond18.i.i = zext i1 %cmp16.i.i to i32
  %arrayidx23.i.i = getelementptr %struct.nf_conn, ptr %66, i32 0, i32 4, i32 %cond18.i.i, i32 1, i32 0, i32 0, i32 0, i32 3
  %67 = ptrtoint ptr %arrayidx23.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx23.i.i, align 4
  br label %flow_key_get.exit

fallback.i.i:                                     ; preds = %sw.bb6.i.i.fallback.i.i_crit_edge, %sw.bb.i.i.fallback.i.i_crit_edge, %skb_protocol.exit.i.i.fallback.i.i_crit_edge, %cleanup.thread.i.i.i.i.i, %do.end.i.i.i.i.i
  %call.i.i.i = call i32 @flow_get_u32_src(ptr noundef nonnull %flow_keys) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %fallback.i.i.flow_key_get.exit_crit_edge

fallback.i.i.flow_key_get.exit_crit_edge:         ; preds = %fallback.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %flow_key_get.exit

if.end.i.i.i:                                     ; preds = %fallback.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %69 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %4, align 4
  %71 = ptrtoint ptr %70 to i32
  br label %flow_key_get.exit

sw.bb19.i:                                        ; preds = %for.body38
  %72 = ptrtoint ptr %protocol.i.i.i82.i to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %protocol.i.i.i82.i, align 8
  %74 = ptrtoint ptr %mac_len.i.i.i.i83.i to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %mac_len.i.i.i.i83.i, align 4
  %conv.i.i.i.i84.i = zext i16 %75 to i32
  %76 = zext i16 %73 to i64
  call void @__sanitizer_cov_trace_switch(i64 %76, ptr @__sancov_gen_cov_switch_values.13)
  switch i16 %73, label %sw.bb19.i.skb_protocol.exit.i121.i_crit_edge [
    i16 -30552, label %sw.bb19.i.if.then.i.i.i.i86.i_crit_edge
    i16 -32512, label %sw.bb19.i.if.then.i.i.i.i86.i_crit_edge163
  ]

sw.bb19.i.if.then.i.i.i.i86.i_crit_edge163:       ; preds = %sw.bb19.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i.i.i86.i

sw.bb19.i.if.then.i.i.i.i86.i_crit_edge:          ; preds = %sw.bb19.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i.i.i86.i

sw.bb19.i.skb_protocol.exit.i121.i_crit_edge:     ; preds = %sw.bb19.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %skb_protocol.exit.i121.i

if.then.i.i.i.i86.i:                              ; preds = %sw.bb19.i.if.then.i.i.i.i86.i_crit_edge, %sw.bb19.i.if.then.i.i.i.i86.i_crit_edge163
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %75)
  %tobool.not.i.i.i.i85.i = icmp eq i16 %75, 0
  br i1 %tobool.not.i.i.i.i85.i, label %if.then.i.i.i.i86.i.do.body27.i.i.i.i102.i.preheader_crit_edge, label %if.then1.i.i.i.i88.i

if.then.i.i.i.i86.i.do.body27.i.i.i.i102.i.preheader_crit_edge: ; preds = %if.then.i.i.i.i86.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body27.i.i.i.i102.i.preheader

if.then1.i.i.i.i88.i:                             ; preds = %if.then.i.i.i.i86.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %75)
  %cmp.i.i.i.i87.i = icmp ult i16 %75, 4
  br i1 %cmp.i.i.i.i87.i, label %do.end.i.i.i.i89.i, label %if.end25.i.i.i.i91.i, !prof !54

do.end.i.i.i.i89.i:                               ; preds = %if.then1.i.i.i.i88.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 598, i32 noundef 9, ptr noundef null) #8
  br label %fallback.i139.i

if.end25.i.i.i.i91.i:                             ; preds = %if.then1.i.i.i.i88.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i.i.i90.i = add nsw i32 %conv.i.i.i.i84.i, -4
  br label %do.body27.i.i.i.i102.i.preheader

do.body27.i.i.i.i102.i.preheader:                 ; preds = %if.end25.i.i.i.i91.i, %if.then.i.i.i.i86.i.do.body27.i.i.i.i102.i.preheader_crit_edge
  %vlan_depth.1.i.i.i.i98.i.ph = phi i32 [ 14, %if.then.i.i.i.i86.i.do.body27.i.i.i.i102.i.preheader_crit_edge ], [ %sub.i.i.i.i90.i, %if.end25.i.i.i.i91.i ]
  br label %do.body27.i.i.i.i102.i

do.body27.i.i.i.i102.i:                           ; preds = %do.body27.backedge.i.i.i.i119.i, %do.body27.i.i.i.i102.i.preheader
  %vlan_depth.1.i.i.i.i98.i = phi i32 [ %add.i.i.i.i118.i, %do.body27.backedge.i.i.i.i119.i ], [ %vlan_depth.1.i.i.i.i98.i.ph, %do.body27.i.i.i.i102.i.preheader ]
  %parse_depth.0.i.i.i.i99.i = phi i32 [ %dec.i.i.i.i112.i, %do.body27.backedge.i.i.i.i119.i ], [ 8, %do.body27.i.i.i.i102.i.preheader ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vhdr.i.i.i.i81.i) #8
  %77 = ptrtoint ptr %vhdr.i.i.i.i81.i to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 -1, ptr %vhdr.i.i.i.i81.i, align 2, !annotation !55
  %78 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 -1, ptr %6, align 2, !annotation !55
  %79 = ptrtoint ptr %len.i.i.i.i.i.i93.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %len.i.i.i.i.i.i93.i, align 4
  %81 = ptrtoint ptr %data_len.i.i.i.i.i.i94.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %data_len.i.i.i.i.i.i94.i, align 8
  %83 = add i32 %vlan_depth.1.i.i.i.i98.i, %82
  %sub.i1.i.i.i.i.i100.i = sub i32 %80, %83
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub.i1.i.i.i.i.i100.i)
  %cmp.i.i.i.i.i.i101.i = icmp sgt i32 %sub.i1.i.i.i.i.i100.i, 3
  br i1 %cmp.i.i.i.i.i.i101.i, label %if.then.i.i.i.i.i.i104.i, label %if.end.i.i.i.i.i.i105.i, !prof !56

if.then.i.i.i.i.i.i104.i:                         ; preds = %do.body27.i.i.i.i102.i
  call void @__sanitizer_cov_trace_pc() #10
  %84 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %data.i.i.i.i, align 4
  %add.ptr.i.i.i.i.i.i103.i = getelementptr i8, ptr %85, i32 %vlan_depth.1.i.i.i.i98.i
  br label %skb_header_pointer.exit.i.i.i.i114.i

if.end.i.i.i.i.i.i105.i:                          ; preds = %do.body27.i.i.i.i102.i
  br i1 %tobool2.not.i.i.i.i.i.i95.i, label %if.end.i.i.i.i.i.i105.i.cleanup.thread.i.i.i.i115.i_crit_edge, label %lor.lhs.false.i.i.i.i.i.i109.i

if.end.i.i.i.i.i.i105.i.cleanup.thread.i.i.i.i115.i_crit_edge: ; preds = %if.end.i.i.i.i.i.i105.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread.i.i.i.i115.i

lor.lhs.false.i.i.i.i.i.i109.i:                   ; preds = %if.end.i.i.i.i.i.i105.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i.i.i.i106.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %vlan_depth.1.i.i.i.i98.i, ptr noundef nonnull %vhdr.i.i.i.i81.i, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i.i.i106.i)
  %cmp3.i.i.i.i.i.i107.i = icmp slt i32 %call.i.i.i.i.i.i106.i, 0
  %spec.select.i.i.i.i.i.i108.i = select i1 %cmp3.i.i.i.i.i.i107.i, ptr null, ptr %vhdr.i.i.i.i81.i, !prof !54
  br label %skb_header_pointer.exit.i.i.i.i114.i

skb_header_pointer.exit.i.i.i.i114.i:             ; preds = %lor.lhs.false.i.i.i.i.i.i109.i, %if.then.i.i.i.i.i.i104.i
  %retval.0.i.i.i.i.i.i110.i = phi ptr [ %add.ptr.i.i.i.i.i.i103.i, %if.then.i.i.i.i.i.i104.i ], [ %spec.select.i.i.i.i.i.i108.i, %lor.lhs.false.i.i.i.i.i.i109.i ]
  %tobool29.not.i.i.i.i111.i = icmp eq ptr %retval.0.i.i.i.i.i.i110.i, null
  %dec.i.i.i.i112.i = add nsw i32 %parse_depth.0.i.i.i.i99.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i.i.i112.i)
  %tobool30.not.i.i.i.i113.i = icmp eq i32 %dec.i.i.i.i112.i, 0
  %86 = select i1 %tobool29.not.i.i.i.i111.i, i1 true, i1 %tobool30.not.i.i.i.i113.i, !prof !54
  br i1 %86, label %skb_header_pointer.exit.i.i.i.i114.i.cleanup.thread.i.i.i.i115.i_crit_edge, label %do.cond42.i.i.i.i117.i, !prof !54

skb_header_pointer.exit.i.i.i.i114.i.cleanup.thread.i.i.i.i115.i_crit_edge: ; preds = %skb_header_pointer.exit.i.i.i.i114.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread.i.i.i.i115.i

cleanup.thread.i.i.i.i115.i:                      ; preds = %skb_header_pointer.exit.i.i.i.i114.i.cleanup.thread.i.i.i.i115.i_crit_edge, %if.end.i.i.i.i.i.i105.i.cleanup.thread.i.i.i.i115.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vhdr.i.i.i.i81.i) #8
  br label %fallback.i139.i

do.cond42.i.i.i.i117.i:                           ; preds = %skb_header_pointer.exit.i.i.i.i114.i
  %h_vlan_encapsulated_proto.i.i.i.i116.i = getelementptr inbounds %struct.vlan_hdr, ptr %retval.0.i.i.i.i.i.i110.i, i32 0, i32 1
  %87 = ptrtoint ptr %h_vlan_encapsulated_proto.i.i.i.i116.i to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %h_vlan_encapsulated_proto.i.i.i.i116.i, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vhdr.i.i.i.i81.i) #8
  %89 = zext i16 %88 to i64
  call void @__sanitizer_cov_trace_switch(i64 %89, ptr @__sancov_gen_cov_switch_values.14)
  switch i16 %88, label %do.cond42.i.i.i.i117.i.skb_protocol.exit.i121.i_crit_edge [
    i16 -30552, label %do.cond42.i.i.i.i117.i.do.body27.backedge.i.i.i.i119.i_crit_edge
    i16 -32512, label %do.cond42.i.i.i.i117.i.do.body27.backedge.i.i.i.i119.i_crit_edge164
  ]

do.cond42.i.i.i.i117.i.do.body27.backedge.i.i.i.i119.i_crit_edge164: ; preds = %do.cond42.i.i.i.i117.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body27.backedge.i.i.i.i119.i

do.cond42.i.i.i.i117.i.do.body27.backedge.i.i.i.i119.i_crit_edge: ; preds = %do.cond42.i.i.i.i117.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body27.backedge.i.i.i.i119.i

do.cond42.i.i.i.i117.i.skb_protocol.exit.i121.i_crit_edge: ; preds = %do.cond42.i.i.i.i117.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %skb_protocol.exit.i121.i

do.body27.backedge.i.i.i.i119.i:                  ; preds = %do.cond42.i.i.i.i117.i.do.body27.backedge.i.i.i.i119.i_crit_edge, %do.cond42.i.i.i.i117.i.do.body27.backedge.i.i.i.i119.i_crit_edge164
  %add.i.i.i.i118.i = add nsw i32 %vlan_depth.1.i.i.i.i98.i, 4
  br label %do.body27.i.i.i.i102.i

skb_protocol.exit.i121.i:                         ; preds = %do.cond42.i.i.i.i117.i.skb_protocol.exit.i121.i_crit_edge, %sw.bb19.i.skb_protocol.exit.i121.i_crit_edge
  %retval.2.i.i.i.i120.i = phi i16 [ %73, %sw.bb19.i.skb_protocol.exit.i121.i_crit_edge ], [ %88, %do.cond42.i.i.i.i117.i.skb_protocol.exit.i121.i_crit_edge ]
  %90 = zext i16 %retval.2.i.i.i.i120.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %90, ptr @__sancov_gen_cov_switch_values.15)
  switch i16 %retval.2.i.i.i.i120.i, label %skb_protocol.exit.i121.i.fallback.i139.i_crit_edge [
    i16 2048, label %sw.bb.i125.i
    i16 -31011, label %sw.bb6.i133.i
  ]

skb_protocol.exit.i121.i.fallback.i139.i_crit_edge: ; preds = %skb_protocol.exit.i121.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fallback.i139.i

sw.bb.i125.i:                                     ; preds = %skb_protocol.exit.i121.i
  %91 = ptrtoint ptr %_nfct.i.i.i151.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %_nfct.i.i.i151.i, align 8
  %and1.i.i123.i = and i32 %92, -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i123.i)
  %cmp.i124.i = icmp eq i32 %and1.i.i123.i, 0
  br i1 %cmp.i124.i, label %sw.bb.i125.i.fallback.i139.i_crit_edge, label %cleanup.thread.i129.i

sw.bb.i125.i.fallback.i139.i_crit_edge:           ; preds = %sw.bb.i125.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fallback.i139.i

cleanup.thread.i129.i:                            ; preds = %sw.bb.i125.i
  call void @__sanitizer_cov_trace_pc() #10
  %93 = inttoptr i32 %and1.i.i123.i to ptr
  %and.i.i126.i = and i32 %92, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i.i126.i)
  %cmp3.i127.i = icmp ugt i32 %and.i.i126.i, 2
  %cond.i128.i = zext i1 %cmp3.i127.i to i32
  %dst.i.i = getelementptr %struct.nf_conn, ptr %93, i32 0, i32 4, i32 %cond.i128.i, i32 1, i32 1
  %94 = ptrtoint ptr %dst.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %dst.i.i, align 4
  br label %flow_key_get.exit

sw.bb6.i133.i:                                    ; preds = %skb_protocol.exit.i121.i
  %96 = ptrtoint ptr %_nfct.i.i.i151.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %_nfct.i.i.i151.i, align 8
  %and1.i38.i131.i = and i32 %97, -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i38.i131.i)
  %cmp10.i132.i = icmp eq i32 %and1.i38.i131.i, 0
  br i1 %cmp10.i132.i, label %sw.bb6.i133.i.fallback.i139.i_crit_edge, label %cleanup24.thread.i138.i

sw.bb6.i133.i.fallback.i139.i_crit_edge:          ; preds = %sw.bb6.i133.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fallback.i139.i

cleanup24.thread.i138.i:                          ; preds = %sw.bb6.i133.i
  call void @__sanitizer_cov_trace_pc() #10
  %98 = inttoptr i32 %and1.i38.i131.i to ptr
  %and.i37.i134.i = and i32 %97, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i37.i134.i)
  %cmp16.i135.i = icmp ugt i32 %and.i37.i134.i, 2
  %cond18.i136.i = zext i1 %cmp16.i135.i to i32
  %arrayidx23.i137.i = getelementptr %struct.nf_conn, ptr %98, i32 0, i32 4, i32 %cond18.i136.i, i32 1, i32 1, i32 0, i32 0, i32 3
  %99 = ptrtoint ptr %arrayidx23.i137.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %arrayidx23.i137.i, align 8
  br label %flow_key_get.exit

fallback.i139.i:                                  ; preds = %sw.bb6.i133.i.fallback.i139.i_crit_edge, %sw.bb.i125.i.fallback.i139.i_crit_edge, %skb_protocol.exit.i121.i.fallback.i139.i_crit_edge, %cleanup.thread.i.i.i.i115.i, %do.end.i.i.i.i89.i
  %call28.i.i = call fastcc i32 @flow_get_dst(ptr noundef %skb, ptr noundef nonnull %flow_keys) #8
  br label %flow_key_get.exit

sw.bb21.i:                                        ; preds = %for.body38
  %101 = ptrtoint ptr %_nfct.i.i.i151.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %_nfct.i.i.i151.i, align 8
  %and1.i.i142.i = and i32 %102, -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i142.i)
  %cmp.i143.i = icmp eq i32 %and1.i.i142.i, 0
  br i1 %cmp.i143.i, label %fallback.i148.i, label %cleanup.thread.i146.i

cleanup.thread.i146.i:                            ; preds = %sw.bb21.i
  call void @__sanitizer_cov_trace_pc() #10
  %103 = inttoptr i32 %and1.i.i142.i to ptr
  %and.i.i144.i = and i32 %102, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i.i144.i)
  %cmp1.i.i = icmp ugt i32 %and.i.i144.i, 2
  %cond.i145.i = zext i1 %cmp1.i.i to i32
  %u.i.i = getelementptr %struct.nf_conn, ptr %103, i32 0, i32 4, i32 %cond.i145.i, i32 1, i32 0, i32 1
  %104 = ptrtoint ptr %u.i.i to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %u.i.i, align 8
  %phi.cast.i.i = zext i16 %105 to i32
  br label %flow_key_get.exit

fallback.i148.i:                                  ; preds = %sw.bb21.i
  %106 = ptrtoint ptr %ports.i.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %ports.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %107)
  %tobool.not.i.i147.i = icmp eq i32 %107, 0
  br i1 %tobool.not.i.i147.i, label %if.end.i.i149.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %fallback.i148.i
  call void @__sanitizer_cov_trace_pc() #10
  %108 = ptrtoint ptr %ports.i.i.i to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %ports.i.i.i, align 4
  %conv.i.i.i = zext i16 %109 to i32
  br label %flow_key_get.exit

if.end.i.i149.i:                                  ; preds = %fallback.i148.i
  call void @__sanitizer_cov_trace_pc() #10
  %110 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %4, align 4
  %112 = ptrtoint ptr %111 to i32
  br label %flow_key_get.exit

sw.bb23.i:                                        ; preds = %for.body38
  %113 = ptrtoint ptr %_nfct.i.i.i151.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %_nfct.i.i.i151.i, align 8
  %and1.i.i152.i = and i32 %114, -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i152.i)
  %cmp.i153.i = icmp eq i32 %and1.i.i152.i, 0
  br i1 %cmp.i153.i, label %fallback.i160.i, label %cleanup.thread.i159.i

cleanup.thread.i159.i:                            ; preds = %sw.bb23.i
  call void @__sanitizer_cov_trace_pc() #10
  %115 = inttoptr i32 %and1.i.i152.i to ptr
  %and.i.i154.i = and i32 %114, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i.i154.i)
  %cmp1.i155.i = icmp ugt i32 %and.i.i154.i, 2
  %cond.i156.i = zext i1 %cmp1.i155.i to i32
  %u.i157.i = getelementptr %struct.nf_conn, ptr %115, i32 0, i32 4, i32 %cond.i156.i, i32 1, i32 1, i32 1
  %116 = ptrtoint ptr %u.i157.i to i32
  call void @__asan_load2_noabort(i32 %116)
  %117 = load i16, ptr %u.i157.i, align 4
  %phi.cast.i158.i = zext i16 %117 to i32
  br label %flow_key_get.exit

fallback.i160.i:                                  ; preds = %sw.bb23.i
  call void @__sanitizer_cov_trace_pc() #10
  %call3.i.i = call fastcc i32 @flow_get_proto_dst(ptr noundef %skb, ptr noundef nonnull %flow_keys) #8
  br label %flow_key_get.exit

sw.bb25.i:                                        ; preds = %for.body38
  %118 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %5, align 8
  %and.i.i162.i = and i32 %119, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i162.i)
  %tobool.not.i.i163.i = icmp eq i32 %and.i.i162.i, 0
  br i1 %tobool.not.i.i163.i, label %sw.bb25.i.skb_dst.exit.i.i_crit_edge, label %land.lhs.true.i.i.i

sw.bb25.i.skb_dst.exit.i.i_crit_edge:             ; preds = %sw.bb25.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %skb_dst.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %sw.bb25.i
  %call.i.i164.i = call i32 @rcu_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i164.i)
  %tobool1.not.i.i.i = icmp eq i32 %call.i.i164.i, 0
  br i1 %tobool1.not.i.i.i, label %land.rhs.i.i.i, label %land.lhs.true.i.i.i.skb_dst.exitthread-pre-split.i.i_crit_edge

land.lhs.true.i.i.i.skb_dst.exitthread-pre-split.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %skb_dst.exitthread-pre-split.i.i

land.rhs.i.i.i:                                   ; preds = %land.lhs.true.i.i.i
  %call2.i.i.i = call i32 @rcu_read_lock_bh_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %call2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %do.end.i.i.i, label %land.rhs.i.i.i.skb_dst.exitthread-pre-split.i.i_crit_edge, !prof !54

land.rhs.i.i.i.skb_dst.exitthread-pre-split.i.i_crit_edge: ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %skb_dst.exitthread-pre-split.i.i

do.end.i.i.i:                                     ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1013, i32 noundef 9, ptr noundef null) #8
  br label %skb_dst.exitthread-pre-split.i.i

skb_dst.exitthread-pre-split.i.i:                 ; preds = %do.end.i.i.i, %land.rhs.i.i.i.skb_dst.exitthread-pre-split.i.i_crit_edge, %land.lhs.true.i.i.i.skb_dst.exitthread-pre-split.i.i_crit_edge
  %120 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %120)
  %.pr.i.i = load i32, ptr %5, align 8
  br label %skb_dst.exit.i.i

skb_dst.exit.i.i:                                 ; preds = %skb_dst.exitthread-pre-split.i.i, %sw.bb25.i.skb_dst.exit.i.i_crit_edge
  %121 = phi i32 [ %.pr.i.i, %skb_dst.exitthread-pre-split.i.i ], [ %119, %sw.bb25.i.skb_dst.exit.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %121)
  %tobool.not.i165.i = icmp ult i32 %121, 2
  br i1 %tobool.not.i165.i, label %skb_dst.exit.i.i.flow_key_get.exit_crit_edge, label %if.then.i166.i

skb_dst.exit.i.i.flow_key_get.exit_crit_edge:     ; preds = %skb_dst.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %flow_key_get.exit

if.then.i166.i:                                   ; preds = %skb_dst.exit.i.i
  %and.i3.i.i = and i32 %121, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i.i)
  %tobool.not.i4.i.i = icmp eq i32 %and.i3.i.i, 0
  br i1 %tobool.not.i4.i.i, label %if.then.i166.i.skb_dst.exit13.i.i_crit_edge, label %land.lhs.true.i7.i.i

if.then.i166.i.skb_dst.exit13.i.i_crit_edge:      ; preds = %if.then.i166.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %skb_dst.exit13.i.i

land.lhs.true.i7.i.i:                             ; preds = %if.then.i166.i
  %call.i5.i.i = call i32 @rcu_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i5.i.i)
  %tobool1.not.i6.i.i = icmp eq i32 %call.i5.i.i, 0
  br i1 %tobool1.not.i6.i.i, label %land.rhs.i10.i.i, label %land.lhs.true.i7.i.i.skb_dst.exit13.i.i_crit_edge

land.lhs.true.i7.i.i.skb_dst.exit13.i.i_crit_edge: ; preds = %land.lhs.true.i7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %skb_dst.exit13.i.i

land.rhs.i10.i.i:                                 ; preds = %land.lhs.true.i7.i.i
  %call2.i8.i.i = call i32 @rcu_read_lock_bh_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i8.i.i)
  %tobool3.not.i9.i.i = icmp eq i32 %call2.i8.i.i, 0
  br i1 %tobool3.not.i9.i.i, label %do.end.i11.i.i, label %land.rhs.i10.i.i.skb_dst.exit13.i.i_crit_edge, !prof !54

land.rhs.i10.i.i.skb_dst.exit13.i.i_crit_edge:    ; preds = %land.rhs.i10.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %skb_dst.exit13.i.i

do.end.i11.i.i:                                   ; preds = %land.rhs.i10.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1013, i32 noundef 9, ptr noundef null) #8
  br label %skb_dst.exit13.i.i

skb_dst.exit13.i.i:                               ; preds = %do.end.i11.i.i, %land.rhs.i10.i.i.skb_dst.exit13.i.i_crit_edge, %land.lhs.true.i7.i.i.skb_dst.exit13.i.i_crit_edge, %if.then.i166.i.skb_dst.exit13.i.i_crit_edge
  %122 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %5, align 8
  %and25.i12.i.i = and i32 %123, -2
  %124 = inttoptr i32 %and25.i12.i.i to ptr
  %tclassid.i.i = getelementptr inbounds %struct.dst_entry, ptr %124, i32 0, i32 17
  %125 = ptrtoint ptr %tclassid.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %tclassid.i.i, align 4
  br label %flow_key_get.exit

sw.bb27.i:                                        ; preds = %for.body38
  %127 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %4, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %128, null
  br i1 %tobool.not.i.i.i.i, label %sw.bb27.i.flow_key_get.exit_crit_edge, label %land.lhs.true.i.i.i.i

sw.bb27.i.flow_key_get.exit_crit_edge:            ; preds = %sw.bb27.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %flow_key_get.exit

land.lhs.true.i.i.i.i:                            ; preds = %sw.bb27.i
  %skc_state.i.i.i.i = getelementptr inbounds %struct.sock_common, ptr %128, i32 0, i32 4
  %129 = ptrtoint ptr %skc_state.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load volatile i8, ptr %skc_state.i.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %130)
  %cmp.i.i.i.i = icmp eq i8 %130, 12
  br i1 %cmp.i.i.i.i, label %skb_to_full_sk.exit.i.i, label %land.lhs.true.i.i.i.i.land.lhs.true.i.i_crit_edge

land.lhs.true.i.i.i.i.land.lhs.true.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true.i.i

skb_to_full_sk.exit.i.i:                          ; preds = %land.lhs.true.i.i.i.i
  %131 = getelementptr inbounds %struct.sock_common, ptr %128, i32 0, i32 13
  %132 = ptrtoint ptr %131 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %131, align 8
  %tobool.not.i168.i = icmp eq ptr %133, null
  br i1 %tobool.not.i168.i, label %skb_to_full_sk.exit.i.i.flow_key_get.exit_crit_edge, label %skb_to_full_sk.exit.i.i.land.lhs.true.i.i_crit_edge

skb_to_full_sk.exit.i.i.land.lhs.true.i.i_crit_edge: ; preds = %skb_to_full_sk.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true.i.i

skb_to_full_sk.exit.i.i.flow_key_get.exit_crit_edge: ; preds = %skb_to_full_sk.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %flow_key_get.exit

land.lhs.true.i.i:                                ; preds = %skb_to_full_sk.exit.i.i.land.lhs.true.i.i_crit_edge, %land.lhs.true.i.i.i.i.land.lhs.true.i.i_crit_edge
  %sk.addr.0.i.i17.i.i = phi ptr [ %133, %skb_to_full_sk.exit.i.i.land.lhs.true.i.i_crit_edge ], [ %128, %land.lhs.true.i.i.i.i.land.lhs.true.i.i_crit_edge ]
  %sk_socket.i.i = getelementptr inbounds %struct.sock, ptr %sk.addr.0.i.i17.i.i, i32 0, i32 71
  %134 = ptrtoint ptr %sk_socket.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %sk_socket.i.i, align 8
  %tobool1.not.i.i = icmp eq ptr %135, null
  br i1 %tobool1.not.i.i, label %land.lhs.true.i.i.flow_key_get.exit_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.flow_key_get.exit_crit_edge:    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %flow_key_get.exit

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %file.i.i = getelementptr inbounds %struct.socket, ptr %135, i32 0, i32 3
  %136 = ptrtoint ptr %file.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %file.i.i, align 4
  %tobool4.not.i.i = icmp eq ptr %137, null
  br i1 %tobool4.not.i.i, label %land.lhs.true2.i.i.flow_key_get.exit_crit_edge, label %if.then.i169.i

land.lhs.true2.i.i.flow_key_get.exit_crit_edge:   ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %flow_key_get.exit

if.then.i169.i:                                   ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %f_cred.i.i = getelementptr inbounds %struct.file, ptr %137, i32 0, i32 12
  %138 = ptrtoint ptr %f_cred.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %f_cred.i.i, align 8
  %fsuid.i.i = getelementptr inbounds %struct.cred, ptr %139, i32 0, i32 10
  %140 = ptrtoint ptr %fsuid.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %skuid.sroa.0.0.copyload.i.i = load i32, ptr %fsuid.i.i, align 4
  %.fca.0.insert.i.i = insertvalue [1 x i32] poison, i32 %skuid.sroa.0.0.copyload.i.i, 0
  %call7.i.i = call i32 @from_kuid(ptr noundef nonnull @init_user_ns, [1 x i32] %.fca.0.insert.i.i) #8
  br label %flow_key_get.exit

sw.bb29.i:                                        ; preds = %for.body38
  %141 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %4, align 4
  %tobool.not.i.i.i171.i = icmp eq ptr %142, null
  br i1 %tobool.not.i.i.i171.i, label %sw.bb29.i.flow_key_get.exit_crit_edge, label %land.lhs.true.i.i.i174.i

sw.bb29.i.flow_key_get.exit_crit_edge:            ; preds = %sw.bb29.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %flow_key_get.exit

land.lhs.true.i.i.i174.i:                         ; preds = %sw.bb29.i
  %skc_state.i.i.i172.i = getelementptr inbounds %struct.sock_common, ptr %142, i32 0, i32 4
  %143 = ptrtoint ptr %skc_state.i.i.i172.i to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load volatile i8, ptr %skc_state.i.i.i172.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %144)
  %cmp.i.i.i173.i = icmp eq i8 %144, 12
  br i1 %cmp.i.i.i173.i, label %skb_to_full_sk.exit.i176.i, label %land.lhs.true.i.i.i174.i.land.lhs.true.i180.i_crit_edge

land.lhs.true.i.i.i174.i.land.lhs.true.i180.i_crit_edge: ; preds = %land.lhs.true.i.i.i174.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true.i180.i

skb_to_full_sk.exit.i176.i:                       ; preds = %land.lhs.true.i.i.i174.i
  %145 = getelementptr inbounds %struct.sock_common, ptr %142, i32 0, i32 13
  %146 = ptrtoint ptr %145 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %145, align 8
  %tobool.not.i175.i = icmp eq ptr %147, null
  br i1 %tobool.not.i175.i, label %skb_to_full_sk.exit.i176.i.flow_key_get.exit_crit_edge, label %skb_to_full_sk.exit.i176.i.land.lhs.true.i180.i_crit_edge

skb_to_full_sk.exit.i176.i.land.lhs.true.i180.i_crit_edge: ; preds = %skb_to_full_sk.exit.i176.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true.i180.i

skb_to_full_sk.exit.i176.i.flow_key_get.exit_crit_edge: ; preds = %skb_to_full_sk.exit.i176.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %flow_key_get.exit

land.lhs.true.i180.i:                             ; preds = %skb_to_full_sk.exit.i176.i.land.lhs.true.i180.i_crit_edge, %land.lhs.true.i.i.i174.i.land.lhs.true.i180.i_crit_edge
  %sk.addr.0.i.i17.i177.i = phi ptr [ %147, %skb_to_full_sk.exit.i176.i.land.lhs.true.i180.i_crit_edge ], [ %142, %land.lhs.true.i.i.i174.i.land.lhs.true.i180.i_crit_edge ]
  %sk_socket.i178.i = getelementptr inbounds %struct.sock, ptr %sk.addr.0.i.i17.i177.i, i32 0, i32 71
  %148 = ptrtoint ptr %sk_socket.i178.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %sk_socket.i178.i, align 8
  %tobool1.not.i179.i = icmp eq ptr %149, null
  br i1 %tobool1.not.i179.i, label %land.lhs.true.i180.i.flow_key_get.exit_crit_edge, label %land.lhs.true2.i183.i

land.lhs.true.i180.i.flow_key_get.exit_crit_edge: ; preds = %land.lhs.true.i180.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %flow_key_get.exit

land.lhs.true2.i183.i:                            ; preds = %land.lhs.true.i180.i
  %file.i181.i = getelementptr inbounds %struct.socket, ptr %149, i32 0, i32 3
  %150 = ptrtoint ptr %file.i181.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %file.i181.i, align 4
  %tobool4.not.i182.i = icmp eq ptr %151, null
  br i1 %tobool4.not.i182.i, label %land.lhs.true2.i183.i.flow_key_get.exit_crit_edge, label %if.then.i187.i

land.lhs.true2.i183.i.flow_key_get.exit_crit_edge: ; preds = %land.lhs.true2.i183.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %flow_key_get.exit

if.then.i187.i:                                   ; preds = %land.lhs.true2.i183.i
  call void @__sanitizer_cov_trace_pc() #10
  %f_cred.i184.i = getelementptr inbounds %struct.file, ptr %151, i32 0, i32 12
  %152 = ptrtoint ptr %f_cred.i184.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %f_cred.i184.i, align 8
  %fsgid.i.i = getelementptr inbounds %struct.cred, ptr %153, i32 0, i32 11
  %154 = ptrtoint ptr %fsgid.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %skgid.sroa.0.0.copyload.i.i = load i32, ptr %fsgid.i.i, align 4
  %.fca.0.insert.i185.i = insertvalue [1 x i32] poison, i32 %skgid.sroa.0.0.copyload.i.i, 0
  %call7.i186.i = call i32 @from_kgid(ptr noundef nonnull @init_user_ns, [1 x i32] %.fca.0.insert.i185.i) #8
  br label %flow_key_get.exit

sw.bb31.i:                                        ; preds = %for.body38
  %155 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %3, align 8
  %features.i.i.i = getelementptr inbounds %struct.net_device, ptr %156, i32 0, i32 23
  %157 = ptrtoint ptr %features.i.i.i to i32
  call void @__asan_load8_noabort(i32 %157)
  %158 = load i64, ptr %features.i.i.i, align 16
  %and.i.i189.i = and i64 %158, 128
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i189.i)
  %tobool.not.i.i190.i = icmp eq i64 %and.i.i189.i, 0
  br i1 %tobool.not.i.i190.i, label %if.else.i.i.i, label %if.then.i.i192.i

if.then.i.i192.i:                                 ; preds = %sw.bb31.i
  %159 = ptrtoint ptr %vlan_present.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %159, i32 4)
  %bf.load.i.i.i.i = load i32, ptr %vlan_present.i.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load.i.i.i.i)
  %tobool.not.i.i.i191.i = icmp sgt i32 %bf.load.i.i.i.i, -1
  br i1 %tobool.not.i.i.i191.i, label %if.then.i.i192.i.flow_key_get.exit_crit_edge, label %if.then.i.i192.i.if.end.i193.i_crit_edge

if.then.i.i192.i.if.end.i193.i_crit_edge:         ; preds = %if.then.i.i192.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i193.i

if.then.i.i192.i.flow_key_get.exit_crit_edge:     ; preds = %if.then.i.i192.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %flow_key_get.exit

if.else.i.i.i:                                    ; preds = %sw.bb31.i
  %160 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %data.i.i.i.i, align 4
  %h_vlan_proto.i.i.i.i = getelementptr inbounds %struct.vlan_ethhdr, ptr %161, i32 0, i32 1
  %162 = ptrtoint ptr %h_vlan_proto.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %162)
  %163 = load i16, ptr %h_vlan_proto.i.i.i.i, align 2
  %164 = zext i16 %163 to i64
  call void @__sanitizer_cov_trace_switch(i64 %164, ptr @__sancov_gen_cov_switch_values.16)
  switch i16 %163, label %if.else.i.i.i.flow_key_get.exit_crit_edge [
    i16 -30552, label %if.else.i.i.i.if.end.i.i.i.i_crit_edge
    i16 -32512, label %if.else.i.i.i.if.end.i.i.i.i_crit_edge165
  ]

if.else.i.i.i.if.end.i.i.i.i_crit_edge165:        ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i.i.i

if.else.i.i.i.if.end.i.i.i.i_crit_edge:           ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i.i.i

if.else.i.i.i.flow_key_get.exit_crit_edge:        ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %flow_key_get.exit

if.end.i.i.i.i:                                   ; preds = %if.else.i.i.i.if.end.i.i.i.i_crit_edge, %if.else.i.i.i.if.end.i.i.i.i_crit_edge165
  %h_vlan_TCI.i.i.i.i = getelementptr inbounds %struct.vlan_ethhdr, ptr %161, i32 0, i32 2
  br label %if.end.i193.i

if.end.i193.i:                                    ; preds = %if.end.i.i.i.i, %if.then.i.i192.i.if.end.i193.i_crit_edge
  %vlan_tci1.i.sink.i.i.i = phi ptr [ %h_vlan_TCI.i.i.i.i, %if.end.i.i.i.i ], [ %vlan_tci1.i.i.i.i, %if.then.i.i192.i.if.end.i193.i_crit_edge ]
  %165 = ptrtoint ptr %vlan_tci1.i.sink.i.i.i to i32
  call void @__asan_load2_noabort(i32 %165)
  %166 = load i16, ptr %vlan_tci1.i.sink.i.i.i, align 2
  %167 = and i16 %166, 4095
  %and.i.i = zext i16 %167 to i32
  br label %flow_key_get.exit

sw.bb33.i:                                        ; preds = %for.body38
  %168 = ptrtoint ptr %l4_hash.i.i.i to i32
  call void @__asan_load2_noabort(i32 %168)
  %bf.load.i.i.i = load i16, ptr %l4_hash.i.i.i, align 8
  %169 = and i16 %bf.load.i.i.i, 192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %169)
  %170 = icmp eq i16 %169, 0
  br i1 %170, label %if.then.i.i195.i, label %sw.bb33.i.flow_get_rxhash.exit.i_crit_edge

sw.bb33.i.flow_get_rxhash.exit.i_crit_edge:       ; preds = %sw.bb33.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %flow_get_rxhash.exit.i

if.then.i.i195.i:                                 ; preds = %sw.bb33.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__skb_get_hash(ptr noundef %skb) #8
  br label %flow_get_rxhash.exit.i

flow_get_rxhash.exit.i:                           ; preds = %if.then.i.i195.i, %sw.bb33.i.flow_get_rxhash.exit.i_crit_edge
  %171 = ptrtoint ptr %hash.i.i.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %hash.i.i.i, align 4
  br label %flow_key_get.exit

do.end.i:                                         ; preds = %for.body38
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 280, i32 noundef 9, ptr noundef null) #8
  br label %flow_key_get.exit

flow_key_get.exit:                                ; preds = %do.end.i, %flow_get_rxhash.exit.i, %if.end.i193.i, %if.else.i.i.i.flow_key_get.exit_crit_edge, %if.then.i.i192.i.flow_key_get.exit_crit_edge, %if.then.i187.i, %land.lhs.true2.i183.i.flow_key_get.exit_crit_edge, %land.lhs.true.i180.i.flow_key_get.exit_crit_edge, %skb_to_full_sk.exit.i176.i.flow_key_get.exit_crit_edge, %sw.bb29.i.flow_key_get.exit_crit_edge, %if.then.i169.i, %land.lhs.true2.i.i.flow_key_get.exit_crit_edge, %land.lhs.true.i.i.flow_key_get.exit_crit_edge, %skb_to_full_sk.exit.i.i.flow_key_get.exit_crit_edge, %sw.bb27.i.flow_key_get.exit_crit_edge, %skb_dst.exit13.i.i, %skb_dst.exit.i.i.flow_key_get.exit_crit_edge, %fallback.i160.i, %cleanup.thread.i159.i, %if.end.i.i149.i, %if.then.i.i.i, %cleanup.thread.i146.i, %fallback.i139.i, %cleanup24.thread.i138.i, %cleanup.thread.i129.i, %if.end.i.i.i, %fallback.i.i.flow_key_get.exit_crit_edge, %cleanup24.thread.i.i, %cleanup.thread.i.i, %sw.bb15.i, %sw.bb13.i, %sw.bb11.i, %sw.bb9.i, %sw.bb7.i, %if.end.i77.i, %if.then.i.i, %sw.bb3.i, %sw.bb1.i, %if.end.i.i, %sw.bb.i.flow_key_get.exit_crit_edge
  %retval.0.i117 = phi i32 [ 0, %do.end.i ], [ %172, %flow_get_rxhash.exit.i ], [ %and.i.i.i, %sw.bb15.i ], [ %37, %sw.bb13.i ], [ %35, %sw.bb11.i ], [ %33, %sw.bb9.i ], [ %call8.i, %sw.bb7.i ], [ %conv.i.i, %sw.bb3.i ], [ %call2.i, %sw.bb1.i ], [ %22, %if.end.i.i ], [ %call.i.i, %sw.bb.i.flow_key_get.exit_crit_edge ], [ %conv.i76.i, %if.then.i.i ], [ %31, %if.end.i77.i ], [ %63, %cleanup.thread.i.i ], [ %68, %cleanup24.thread.i.i ], [ %71, %if.end.i.i.i ], [ %call.i.i.i, %fallback.i.i.flow_key_get.exit_crit_edge ], [ %call28.i.i, %fallback.i139.i ], [ %95, %cleanup.thread.i129.i ], [ %100, %cleanup24.thread.i138.i ], [ %phi.cast.i.i, %cleanup.thread.i146.i ], [ %conv.i.i.i, %if.then.i.i.i ], [ %112, %if.end.i.i149.i ], [ %call3.i.i, %fallback.i160.i ], [ %phi.cast.i158.i, %cleanup.thread.i159.i ], [ %126, %skb_dst.exit13.i.i ], [ 0, %skb_dst.exit.i.i.flow_key_get.exit_crit_edge ], [ %call7.i.i, %if.then.i169.i ], [ 0, %land.lhs.true2.i.i.flow_key_get.exit_crit_edge ], [ 0, %land.lhs.true.i.i.flow_key_get.exit_crit_edge ], [ 0, %skb_to_full_sk.exit.i.i.flow_key_get.exit_crit_edge ], [ 0, %sw.bb27.i.flow_key_get.exit_crit_edge ], [ %call7.i186.i, %if.then.i187.i ], [ 0, %land.lhs.true2.i183.i.flow_key_get.exit_crit_edge ], [ 0, %land.lhs.true.i180.i.flow_key_get.exit_crit_edge ], [ 0, %skb_to_full_sk.exit.i176.i.flow_key_get.exit_crit_edge ], [ 0, %sw.bb29.i.flow_key_get.exit_crit_edge ], [ %and.i.i, %if.end.i193.i ], [ 0, %if.else.i.i.i.flow_key_get.exit_crit_edge ], [ 0, %if.then.i.i192.i.flow_key_get.exit_crit_edge ]
  %arrayidx = getelementptr [18 x i32], ptr %keys, i32 0, i32 %n.0129
  %173 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 %retval.0.i117, ptr %arrayidx, align 4
  %inc = add nuw i32 %n.0129, 1
  %174 = ptrtoint ptr %nkeys to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %nkeys, align 4
  %cmp37 = icmp ult i32 %inc, %175
  br i1 %cmp37, label %flow_key_get.exit.for.body38_crit_edge, label %for.end

flow_key_get.exit.for.body38_crit_edge:           ; preds = %flow_key_get.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body38

for.end:                                          ; preds = %flow_key_get.exit
  %mode = getelementptr inbounds %struct.flow_filter, ptr %f.0133, i32 0, i32 9
  %176 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %177)
  %cmp41 = icmp eq i32 %177, 1
  br i1 %cmp41, label %if.then42, label %for.end.if.else_crit_edge

for.end.if.else_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

for.end.thread:                                   ; preds = %if.end35
  %mode139 = getelementptr inbounds %struct.flow_filter, ptr %f.0133, i32 0, i32 9
  %178 = ptrtoint ptr %mode139 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %mode139, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %179)
  %cmp41140 = icmp eq i32 %179, 1
  br i1 %cmp41140, label %while.end.i.thread, label %for.end.thread.if.else_crit_edge

for.end.thread.if.else_crit_edge:                 ; preds = %for.end.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

while.end.i.thread:                               ; preds = %for.end.thread
  call void @__sanitizer_cov_trace_pc() #10
  %hashrnd143 = getelementptr inbounds %struct.flow_filter, ptr %f.0133, i32 0, i32 16
  %180 = ptrtoint ptr %hashrnd143 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %hashrnd143, align 4
  %add1.i146 = add i32 %181, -559038737
  br label %if.end48

if.then42:                                        ; preds = %for.end
  %hashrnd = getelementptr inbounds %struct.flow_filter, ptr %f.0133, i32 0, i32 16
  %182 = ptrtoint ptr %hashrnd to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %hashrnd, align 4
  %shl.i = shl i32 %175, 2
  %add.i = add i32 %shl.i, -559038737
  %add1.i = add i32 %add.i, %183
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %175)
  %cmp147.i = icmp ugt i32 %175, 3
  br i1 %cmp147.i, label %if.then42.while.body.i_crit_edge, label %if.then42.while.end.i_crit_edge

if.then42.while.end.i_crit_edge:                  ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

if.then42.while.body.i_crit_edge:                 ; preds = %if.then42
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.then42.while.body.i_crit_edge
  %c.0152.i = phi i32 [ %xor26.i, %while.body.i.while.body.i_crit_edge ], [ %add1.i, %if.then42.while.body.i_crit_edge ]
  %b.0151.i = phi i32 [ %add27.i, %while.body.i.while.body.i_crit_edge ], [ %add1.i, %if.then42.while.body.i_crit_edge ]
  %a.0150.i = phi i32 [ %add23.i, %while.body.i.while.body.i_crit_edge ], [ %add1.i, %if.then42.while.body.i_crit_edge ]
  %k.addr.0149.i = phi ptr [ %add.ptr.i, %while.body.i.while.body.i_crit_edge ], [ %keys, %if.then42.while.body.i_crit_edge ]
  %length.addr.0148.i = phi i32 [ %sub28.i, %while.body.i.while.body.i_crit_edge ], [ %175, %if.then42.while.body.i_crit_edge ]
  %184 = ptrtoint ptr %k.addr.0149.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %k.addr.0149.i, align 4
  %add2.i = add i32 %185, %a.0150.i
  %arrayidx3.i = getelementptr i32, ptr %k.addr.0149.i, i32 1
  %186 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %arrayidx3.i, align 4
  %add4.i = add i32 %187, %b.0151.i
  %arrayidx5.i = getelementptr i32, ptr %k.addr.0149.i, i32 2
  %188 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %arrayidx5.i, align 4
  %add6.i = add i32 %189, %c.0152.i
  %sub.i = sub i32 %add2.i, %add6.i
  %or.i.i = call i32 @llvm.fshl.i32(i32 %add6.i, i32 %add6.i, i32 4) #8
  %xor.i = xor i32 %sub.i, %or.i.i
  %add7.i = add i32 %add6.i, %add4.i
  %sub8.i = sub i32 %add4.i, %xor.i
  %or.i135.i = call i32 @llvm.fshl.i32(i32 %xor.i, i32 %xor.i, i32 6) #8
  %xor10.i = xor i32 %sub8.i, %or.i135.i
  %add11.i = add i32 %xor.i, %add7.i
  %sub12.i = sub i32 %add7.i, %xor10.i
  %or.i136.i = call i32 @llvm.fshl.i32(i32 %xor10.i, i32 %xor10.i, i32 8) #8
  %xor14.i = xor i32 %sub12.i, %or.i136.i
  %add15.i = add i32 %xor10.i, %add11.i
  %sub16.i = sub i32 %add11.i, %xor14.i
  %or.i137.i = call i32 @llvm.fshl.i32(i32 %xor14.i, i32 %xor14.i, i32 16) #8
  %xor18.i = xor i32 %sub16.i, %or.i137.i
  %add19.i = add i32 %xor14.i, %add15.i
  %sub20.i = sub i32 %add15.i, %xor18.i
  %or.i138.i = call i32 @llvm.fshl.i32(i32 %xor18.i, i32 %xor18.i, i32 19) #8
  %xor22.i = xor i32 %sub20.i, %or.i138.i
  %add23.i = add i32 %xor18.i, %add19.i
  %sub24.i = sub i32 %add19.i, %xor22.i
  %or.i139.i = call i32 @llvm.fshl.i32(i32 %xor22.i, i32 %xor22.i, i32 4) #8
  %xor26.i = xor i32 %sub24.i, %or.i139.i
  %add27.i = add i32 %xor22.i, %add23.i
  %sub28.i = add i32 %length.addr.0148.i, -3
  %add.ptr.i = getelementptr i32, ptr %k.addr.0149.i, i32 3
  %cmp.i = icmp ugt i32 %sub28.i, 3
  br i1 %cmp.i, label %while.body.i.while.body.i_crit_edge, label %while.body.i.while.end.i_crit_edge

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

while.end.i:                                      ; preds = %while.body.i.while.end.i_crit_edge, %if.then42.while.end.i_crit_edge
  %length.addr.0.lcssa.i = phi i32 [ %175, %if.then42.while.end.i_crit_edge ], [ %sub28.i, %while.body.i.while.end.i_crit_edge ]
  %k.addr.0.lcssa.i = phi ptr [ %keys, %if.then42.while.end.i_crit_edge ], [ %add.ptr.i, %while.body.i.while.end.i_crit_edge ]
  %a.0.lcssa.i = phi i32 [ %add1.i, %if.then42.while.end.i_crit_edge ], [ %add23.i, %while.body.i.while.end.i_crit_edge ]
  %b.0.lcssa.i = phi i32 [ %add1.i, %if.then42.while.end.i_crit_edge ], [ %add27.i, %while.body.i.while.end.i_crit_edge ]
  %c.0.lcssa.i = phi i32 [ %add1.i, %if.then42.while.end.i_crit_edge ], [ %xor26.i, %while.body.i.while.end.i_crit_edge ]
  %190 = zext i32 %length.addr.0.lcssa.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %190, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %length.addr.0.lcssa.i, label %while.end.i.if.end48_crit_edge [
    i32 3, label %sw.bb.i118
    i32 2, label %while.end.i.sw.bb31.i119_crit_edge
    i32 1, label %while.end.i.sw.bb34.i_crit_edge
  ]

while.end.i.sw.bb34.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb34.i

while.end.i.sw.bb31.i119_crit_edge:               ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb31.i119

while.end.i.if.end48_crit_edge:                   ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end48

sw.bb.i118:                                       ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx29.i = getelementptr i32, ptr %k.addr.0.lcssa.i, i32 2
  %191 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %arrayidx29.i, align 4
  %add30.i = add i32 %192, %c.0.lcssa.i
  br label %sw.bb31.i119

sw.bb31.i119:                                     ; preds = %sw.bb.i118, %while.end.i.sw.bb31.i119_crit_edge
  %c.1.i = phi i32 [ %c.0.lcssa.i, %while.end.i.sw.bb31.i119_crit_edge ], [ %add30.i, %sw.bb.i118 ]
  %arrayidx32.i = getelementptr i32, ptr %k.addr.0.lcssa.i, i32 1
  %193 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %arrayidx32.i, align 4
  %add33.i = add i32 %194, %b.0.lcssa.i
  br label %sw.bb34.i

sw.bb34.i:                                        ; preds = %sw.bb31.i119, %while.end.i.sw.bb34.i_crit_edge
  %b.1.i = phi i32 [ %b.0.lcssa.i, %while.end.i.sw.bb34.i_crit_edge ], [ %add33.i, %sw.bb31.i119 ]
  %c.2.i = phi i32 [ %c.0.lcssa.i, %while.end.i.sw.bb34.i_crit_edge ], [ %c.1.i, %sw.bb31.i119 ]
  %195 = ptrtoint ptr %k.addr.0.lcssa.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %k.addr.0.lcssa.i, align 4
  %add36.i = add i32 %196, %a.0.lcssa.i
  %xor37.i = xor i32 %c.2.i, %b.1.i
  %or.i140.i = call i32 @llvm.fshl.i32(i32 %b.1.i, i32 %b.1.i, i32 14) #8
  %sub39.i = sub i32 %xor37.i, %or.i140.i
  %xor40.i = xor i32 %add36.i, %sub39.i
  %or.i141.i = call i32 @llvm.fshl.i32(i32 %sub39.i, i32 %sub39.i, i32 11) #8
  %sub42.i = sub i32 %xor40.i, %or.i141.i
  %xor43.i = xor i32 %sub42.i, %b.1.i
  %or.i142.i = call i32 @llvm.fshl.i32(i32 %sub42.i, i32 %sub42.i, i32 25) #8
  %sub45.i = sub i32 %xor43.i, %or.i142.i
  %xor46.i = xor i32 %sub45.i, %sub39.i
  %or.i143.i = call i32 @llvm.fshl.i32(i32 %sub45.i, i32 %sub45.i, i32 16) #8
  %sub48.i = sub i32 %xor46.i, %or.i143.i
  %xor49.i = xor i32 %sub48.i, %sub42.i
  %or.i144.i = call i32 @llvm.fshl.i32(i32 %sub48.i, i32 %sub48.i, i32 4) #8
  %sub51.i = sub i32 %xor49.i, %or.i144.i
  %xor52.i = xor i32 %sub51.i, %sub45.i
  %or.i145.i = call i32 @llvm.fshl.i32(i32 %sub51.i, i32 %sub51.i, i32 14) #8
  %sub54.i = sub i32 %xor52.i, %or.i145.i
  %xor55.i = xor i32 %sub54.i, %sub48.i
  %or.i146.i = call i32 @llvm.fshl.i32(i32 %sub54.i, i32 %sub54.i, i32 24) #8
  %sub57.i = sub i32 %xor55.i, %or.i146.i
  br label %if.end48

if.else:                                          ; preds = %for.end.thread.if.else_crit_edge, %for.end.if.else_crit_edge
  %197 = ptrtoint ptr %keys to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %keys, align 4
  %mask = getelementptr inbounds %struct.flow_filter, ptr %f.0133, i32 0, i32 10
  %199 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %mask, align 4
  %and46 = and i32 %200, %198
  %xor = getelementptr inbounds %struct.flow_filter, ptr %f.0133, i32 0, i32 11
  %201 = ptrtoint ptr %xor to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %xor, align 4
  %xor47 = xor i32 %and46, %202
  %rshift = getelementptr inbounds %struct.flow_filter, ptr %f.0133, i32 0, i32 12
  %203 = ptrtoint ptr %rshift to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %rshift, align 4
  %shr = lshr i32 %xor47, %204
  %addend = getelementptr inbounds %struct.flow_filter, ptr %f.0133, i32 0, i32 13
  %205 = ptrtoint ptr %addend to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %addend, align 4
  %add = add i32 %shr, %206
  br label %if.end48

if.end48:                                         ; preds = %if.else, %sw.bb34.i, %while.end.i.if.end48_crit_edge, %while.end.i.thread
  %classid.0 = phi i32 [ %add, %if.else ], [ %c.0.lcssa.i, %while.end.i.if.end48_crit_edge ], [ %sub57.i, %sw.bb34.i ], [ %add1.i146, %while.end.i.thread ]
  %divisor = getelementptr inbounds %struct.flow_filter, ptr %f.0133, i32 0, i32 14
  %207 = ptrtoint ptr %divisor to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %divisor, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %208)
  %tobool49.not = icmp eq i32 %208, 0
  br i1 %tobool49.not, label %if.end48.if.end52_crit_edge, label %if.then50

if.end48.if.end52_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end52

if.then50:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  %rem = urem i32 %classid.0, %208
  br label %if.end52

if.end52:                                         ; preds = %if.then50, %if.end48.if.end52_crit_edge
  %classid.1 = phi i32 [ %rem, %if.then50 ], [ %classid.0, %if.end48.if.end52_crit_edge ]
  %209 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %209)
  store i32 0, ptr %res, align 4
  %baseclass = getelementptr inbounds %struct.flow_filter, ptr %f.0133, i32 0, i32 15
  %210 = ptrtoint ptr %baseclass to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %baseclass, align 4
  %and53 = and i32 %211, -65536
  %add55 = add i32 %211, %classid.1
  %and56 = and i32 %add55, 65535
  %or = or i32 %and56, %and53
  %212 = ptrtoint ptr %classid57 to i32
  call void @__asan_store4_noabort(i32 %212)
  store i32 %or, ptr %classid57, align 4
  %actions.i = getelementptr inbounds %struct.flow_filter, ptr %f.0133, i32 0, i32 1, i32 2
  %213 = ptrtoint ptr %actions.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %actions.i, align 4
  %nr_actions.i = getelementptr inbounds %struct.flow_filter, ptr %f.0133, i32 0, i32 1, i32 1
  %215 = ptrtoint ptr %nr_actions.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %nr_actions.i, align 4
  %call.i120 = call i32 @tcf_action_exec(ptr noundef %skb, ptr noundef %214, i32 noundef %216, ptr noundef %res) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i120)
  %cmp59 = icmp slt i32 %call.i120, 0
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %flow_keys) #8
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %keys) #8
  br i1 %cmp59, label %if.end52.for.cond.backedge_crit_edge, label %if.end52.cleanup74_crit_edge

if.end52.cleanup74_crit_edge:                     ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup74

if.end52.for.cond.backedge_crit_edge:             ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.backedge

for.cond.backedge:                                ; preds = %cleanup, %if.end52.for.cond.backedge_crit_edge
  %217 = ptrtoint ptr %f.0133 to i32
  call void @__asan_load4_noabort(i32 %217)
  %f.0 = load volatile ptr, ptr %f.0133, align 4
  %cmp.not = icmp eq ptr %f.0, %1
  br i1 %cmp.not, label %for.cond.backedge.cleanup74_crit_edge, label %for.cond.backedge.for.body_crit_edge

for.cond.backedge.for.body_crit_edge:             ; preds = %for.cond.backedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.cond.backedge.cleanup74_crit_edge:            ; preds = %for.cond.backedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup74

cleanup:                                          ; preds = %tcf_em_tree_match.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %flow_keys) #8
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %keys) #8
  br label %for.cond.backedge

cleanup74:                                        ; preds = %for.cond.backedge.cleanup74_crit_edge, %if.end52.cleanup74_crit_edge, %do.end20.cleanup74_crit_edge
  %retval.2 = phi i32 [ -1, %do.end20.cleanup74_crit_edge ], [ %call.i120, %if.end52.cleanup74_crit_edge ], [ -1, %for.cond.backedge.cleanup74_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @flow_init(ptr noundef %tp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 16) #11
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %call7.i.i, ptr %call7.i.i, align 8
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i.i, ptr %prev.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !57
  %root23 = getelementptr inbounds %struct.tcf_proto, ptr %tp, i32 0, i32 1
  %3 = ptrtoint ptr %root23 to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %call7.i.i, ptr %root23, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -105, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @flow_destroy(ptr nocapture noundef readonly %tp, i1 noundef zeroext %rtnl_held, ptr nocapture noundef readnone %extack) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @lockdep_rtnl_is_held() #8
  br i1 %call, label %entry.do.end_crit_edge, label %land.lhs.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true2

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %.b40 = load i1, ptr @flow_destroy.__warned, align 1
  br i1 %.b40, label %land.lhs.true2.do.end_crit_edge, label %if.then

land.lhs.true2.do.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @flow_destroy.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 594, ptr noundef nonnull @.str.6) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true2.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %root = getelementptr inbounds %struct.tcf_proto, ptr %tp, i32 0, i32 1
  %0 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %root, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %cmp.not42 = icmp eq ptr %3, %1
  br i1 %cmp.not42, label %do.end.do.body22_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.do.body22_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body22

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end.for.body_crit_edge
  %f.043 = phi ptr [ %next.045, %for.inc.for.body_crit_edge ], [ %3, %do.end.for.body_crit_edge ]
  %4 = ptrtoint ptr %f.043 to i32
  call void @__asan_load4_noabort(i32 %4)
  %next.045 = load ptr, ptr %f.043, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %f.043) #8
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del_rcu.exit_crit_edge

for.body.list_del_rcu.exit_crit_edge:             ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del_rcu.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %f.043, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i, align 4
  %7 = ptrtoint ptr %f.043 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %f.043, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del_rcu.exit

list_del_rcu.exit:                                ; preds = %if.end.i.i, %for.body.list_del_rcu.exit_crit_edge
  %prev.i = getelementptr inbounds %struct.list_head, ptr %f.043, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %exts = getelementptr inbounds %struct.flow_filter, ptr %f.043, i32 0, i32 1
  %call13 = tail call fastcc zeroext i1 @tcf_exts_get_net(ptr noundef %exts)
  br i1 %call13, label %if.then14, label %if.else

if.then14:                                        ; preds = %list_del_rcu.exit
  call void @__sanitizer_cov_trace_pc() #10
  %rwork = getelementptr inbounds %struct.flow_filter, ptr %f.043, i32 0, i32 17
  %call15 = tail call zeroext i1 @tcf_queue_work(ptr noundef %rwork, ptr noundef nonnull @flow_destroy_filter_work) #8
  br label %for.inc

if.else:                                          ; preds = %list_del_rcu.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @__flow_destroy_filter(ptr noundef %f.043)
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.then14
  %cmp.not = icmp eq ptr %next.045, %1
  br i1 %cmp.not, label %for.inc.do.body22_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.do.body22_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body22

do.body22:                                        ; preds = %for.inc.do.body22_crit_edge, %do.end.do.body22_crit_edge
  %tobool23.not = icmp eq ptr %1, null
  br i1 %tobool23.not, label %do.body22.if.end28_crit_edge, label %do.end27

do.body22.if.end28_crit_edge:                     ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

do.end27:                                         ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #10
  %rcu = getelementptr inbounds %struct.flow_head, ptr %1, i32 0, i32 1
  tail call void @kvfree_call_rcu(ptr noundef %rcu, ptr noundef nonnull inttoptr (i32 8 to ptr)) #8
  br label %if.end28

if.end28:                                         ; preds = %do.end27, %do.body22.if.end28_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @flow_get(ptr nocapture noundef readonly %tp, i32 noundef %handle) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @lockdep_rtnl_is_held() #8
  br i1 %call, label %entry.do.end_crit_edge, label %land.lhs.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true2

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %.b20 = load i1, ptr @flow_get.__warned, align 1
  br i1 %.b20, label %land.lhs.true2.do.end_crit_edge, label %if.then

land.lhs.true2.do.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @flow_get.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 609, ptr noundef nonnull @.str.6) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true2.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %root = getelementptr inbounds %struct.tcf_proto, ptr %tp, i32 0, i32 1
  %0 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %root, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %do.end
  %f.0.in = phi ptr [ %1, %do.end ], [ %f.0, %for.body.for.cond_crit_edge ]
  %2 = ptrtoint ptr %f.0.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %f.0 = load ptr, ptr %f.0.in, align 4
  %cmp.not = icmp eq ptr %f.0, %1
  br i1 %cmp.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %handle6 = getelementptr inbounds %struct.flow_filter, ptr %f.0, i32 0, i32 6
  %3 = ptrtoint ptr %handle6 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %handle6, align 4
  %cmp7 = icmp eq i32 %4, %handle
  br i1 %cmp7, label %for.body.cleanup_crit_edge, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge
  %retval.0 = phi ptr [ %f.0, %for.body.cleanup_crit_edge ], [ null, %for.cond.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @flow_change(ptr noundef %net, ptr nocapture noundef readonly %in_skb, ptr noundef %tp, i32 noundef %base, i32 noundef %handle, ptr nocapture noundef readonly %tca, ptr nocapture noundef %arg, i32 noundef %flags, ptr noundef %extack) #2 align 64 {
entry:
  %tb = alloca [13 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @lockdep_rtnl_is_held() #8
  br i1 %call, label %entry.do.end_crit_edge, label %land.lhs.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true2

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %.b677 = load i1, ptr @flow_change.__warned, align 1
  br i1 %.b677, label %land.lhs.true2.do.end_crit_edge, label %if.then

land.lhs.true2.do.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @flow_change.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 393, ptr noundef nonnull @.str.6) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true2.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %root = getelementptr inbounds %struct.tcf_proto, ptr %tp, i32 0, i32 1
  %0 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %root, align 4
  %arrayidx = getelementptr ptr, ptr %tca, i32 2
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %tb) #8
  %4 = call ptr @memset(ptr %tb, i32 255, i32 52)
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %do.end.cleanup_crit_edge, label %if.end5

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %do.end
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 4
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %3, align 2
  %conv.i.i = zext i16 %6 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -4
  %call2.i = call i32 @__nla_parse(ptr noundef nonnull %tb, i32 noundef 12, ptr noundef %add.ptr.i.i, i32 noundef %sub.i.i, ptr noundef nonnull @flow_policy, i32 noundef 0, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp7 = icmp slt i32 %call2.i, 0
  br i1 %cmp7, label %if.end5.cleanup_crit_edge, label %if.end9

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %arrayidx10 = getelementptr inbounds [13 x ptr], ptr %tb, i32 0, i32 3
  %7 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx10, align 4
  %tobool11.not = icmp eq ptr %8, null
  br i1 %tobool11.not, label %if.end9.if.end18_crit_edge, label %if.then12

if.end9.if.end18_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

if.then12:                                        ; preds = %if.end9
  %add.ptr.i.i680 = getelementptr i8, ptr %8, i32 4
  %9 = ptrtoint ptr %add.ptr.i.i680 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %add.ptr.i.i680, align 4
  %and = and i32 %10, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp15 = icmp eq i32 %and, 0
  br i1 %cmp15, label %if.then12.cleanup_crit_edge, label %if.then12.if.end18_crit_edge

if.then12.if.end18_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end18:                                         ; preds = %if.then12.if.end18_crit_edge, %if.end9.if.end18_crit_edge
  %baseclass.0 = phi i32 [ %10, %if.then12.if.end18_crit_edge ], [ 0, %if.end9.if.end18_crit_edge ]
  %arrayidx19 = getelementptr inbounds [13 x ptr], ptr %tb, i32 0, i32 1
  %11 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx19, align 4
  %tobool20.not = icmp eq ptr %12, null
  br i1 %tobool20.not, label %if.end18.if.end323_crit_edge, label %if.then21

if.end18.if.end323_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end323

if.then21:                                        ; preds = %if.end18
  %add.ptr.i.i681 = getelementptr i8, ptr %12, i32 4
  %13 = ptrtoint ptr %add.ptr.i.i681 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %add.ptr.i.i681, align 4
  %call.i = call i32 @__sw_hweight32(i32 noundef %14) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp306 = icmp eq i32 %call.i, 0
  br i1 %cmp306, label %if.then21.cleanup_crit_edge, label %if.end309

if.then21.cleanup_crit_edge:                      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end309:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i = icmp ne i32 %14, 0
  %15 = call i32 @llvm.ctlz.i32(i32 %14, i1 true) #8, !range !53
  %sub.i.op = xor i32 %15, 30
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %sub.i.op)
  %cmp311698 = icmp ugt i32 %sub.i.op, 17
  %cmp311 = select i1 %tobool.not.i, i1 %cmp311698, i1 false
  br i1 %cmp311, label %if.end309.cleanup_crit_edge, label %if.end314

if.end309.cleanup_crit_edge:                      ; preds = %if.end309
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end314:                                        ; preds = %if.end309
  %and315 = and i32 %14, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and315)
  %tobool316.not = icmp eq i32 %and315, 0
  br i1 %tobool316.not, label %if.end314.if.end323_crit_edge, label %land.lhs.true317

if.end314.if.end323_crit_edge:                    ; preds = %if.end314
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end323

land.lhs.true317:                                 ; preds = %if.end314
  %sk = getelementptr inbounds %struct.sk_buff, ptr %in_skb, i32 0, i32 3, i32 24
  %16 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sk, align 8
  %sk_socket.i = getelementptr inbounds %struct.sock, ptr %17, i32 0, i32 71
  %18 = ptrtoint ptr %sk_socket.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sk_socket.i, align 8
  %file.i = getelementptr inbounds %struct.socket, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %file.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %file.i, align 4
  %f_cred.i = getelementptr inbounds %struct.file, ptr %21, i32 0, i32 12
  %22 = ptrtoint ptr %f_cred.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %f_cred.i, align 8
  %user_ns.i = getelementptr inbounds %struct.cred, ptr %23, i32 0, i32 25
  %24 = ptrtoint ptr %user_ns.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %user_ns.i, align 4
  %cmp319.not = icmp eq ptr %25, @init_user_ns
  br i1 %cmp319.not, label %land.lhs.true317.if.end323_crit_edge, label %land.lhs.true317.cleanup_crit_edge

land.lhs.true317.cleanup_crit_edge:               ; preds = %land.lhs.true317
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true317.if.end323_crit_edge:             ; preds = %land.lhs.true317
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end323

if.end323:                                        ; preds = %land.lhs.true317.if.end323_crit_edge, %if.end314.if.end323_crit_edge, %if.end18.if.end323_crit_edge
  %nkeys.0 = phi i32 [ %call.i, %land.lhs.true317.if.end323_crit_edge ], [ %call.i, %if.end314.if.end323_crit_edge ], [ 0, %if.end18.if.end323_crit_edge ]
  %keymask.0 = phi i32 [ %14, %land.lhs.true317.if.end323_crit_edge ], [ %14, %if.end314.if.end323_crit_edge ], [ 0, %if.end18.if.end323_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %26 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %26, i32 noundef 3520, i32 noundef 200) #11
  %tobool325.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool325.not, label %if.end323.cleanup_crit_edge, label %if.end327

if.end323.cleanup_crit_edge:                      ; preds = %if.end323
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end327:                                        ; preds = %if.end323
  %arrayidx328 = getelementptr inbounds [13 x ptr], ptr %tb, i32 0, i32 11
  %27 = ptrtoint ptr %arrayidx328 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx328, align 4
  %ematches = getelementptr inbounds %struct.flow_filter, ptr %call7.i.i, i32 0, i32 2
  %call329 = call i32 @tcf_em_tree_validate(ptr noundef %tp, ptr noundef %28, ptr noundef %ematches) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call329)
  %cmp330 = icmp slt i32 %call329, 0
  br i1 %cmp330, label %if.end327.err1_crit_edge, label %if.end333

if.end327.err1_crit_edge:                         ; preds = %if.end327
  call void @__sanitizer_cov_trace_pc() #10
  br label %err1

if.end333:                                        ; preds = %if.end327
  %exts = getelementptr inbounds %struct.flow_filter, ptr %call7.i.i, i32 0, i32 1
  %29 = ptrtoint ptr %exts to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %exts, align 8
  %nr_actions.i = getelementptr inbounds %struct.flow_filter, ptr %call7.i.i, i32 0, i32 1, i32 1
  %30 = ptrtoint ptr %nr_actions.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %nr_actions.i, align 4
  %net1.i = getelementptr inbounds %struct.flow_filter, ptr %call7.i.i, i32 0, i32 1, i32 3
  %31 = ptrtoint ptr %net1.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %net, ptr %net1.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %32 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %32, i32 noundef 3520, i32 noundef 128) #11
  %actions.i = getelementptr inbounds %struct.flow_filter, ptr %call7.i.i, i32 0, i32 1, i32 2
  %33 = ptrtoint ptr %actions.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call7.i.i.i.i, ptr %actions.i, align 8
  %tobool.not.i682 = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i682, label %if.end333.err2_crit_edge, label %if.end338

if.end333.err2_crit_edge:                         ; preds = %if.end333
  call void @__sanitizer_cov_trace_pc() #10
  br label %err2

if.end338:                                        ; preds = %if.end333
  %action3.i = getelementptr inbounds %struct.flow_filter, ptr %call7.i.i, i32 0, i32 1, i32 5
  %34 = ptrtoint ptr %action3.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 9, ptr %action3.i, align 4
  %police4.i = getelementptr inbounds %struct.flow_filter, ptr %call7.i.i, i32 0, i32 1, i32 6
  %35 = ptrtoint ptr %police4.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 10, ptr %police4.i, align 8
  %arrayidx340 = getelementptr ptr, ptr %tca, i32 5
  %36 = ptrtoint ptr %arrayidx340 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx340, align 4
  %call342 = call i32 @tcf_exts_validate(ptr noundef %net, ptr noundef %tp, ptr noundef nonnull %tb, ptr noundef %37, ptr noundef %exts, i32 noundef %flags, ptr noundef %extack) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call342)
  %cmp343 = icmp slt i32 %call342, 0
  br i1 %cmp343, label %if.end338.err2_crit_edge, label %if.end346

if.end338.err2_crit_edge:                         ; preds = %if.end338
  call void @__sanitizer_cov_trace_pc() #10
  br label %err2

if.end346:                                        ; preds = %if.end338
  %38 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arg, align 4
  %tobool347.not = icmp eq ptr %39, null
  br i1 %tobool347.not, label %if.else, label %if.then348

if.then348:                                       ; preds = %if.end346
  %handle349 = getelementptr inbounds %struct.flow_filter, ptr %39, i32 0, i32 6
  %40 = ptrtoint ptr %handle349 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %handle349, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %handle)
  %cmp350.not = icmp eq i32 %41, %handle
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %handle)
  %tobool353.not = icmp eq i32 %handle, 0
  %or.cond = or i1 %tobool353.not, %cmp350.not
  br i1 %or.cond, label %if.end355, label %if.then348.err2_crit_edge

if.then348.err2_crit_edge:                        ; preds = %if.then348
  call void @__sanitizer_cov_trace_pc() #10
  br label %err2

if.end355:                                        ; preds = %if.then348
  %tp356 = getelementptr inbounds %struct.flow_filter, ptr %39, i32 0, i32 3
  %42 = ptrtoint ptr %tp356 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %tp356, align 4
  %tp357 = getelementptr inbounds %struct.flow_filter, ptr %call7.i.i, i32 0, i32 3
  %44 = ptrtoint ptr %tp357 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %43, ptr %tp357, align 4
  %45 = ptrtoint ptr %handle349 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %handle349, align 4
  %handle359 = getelementptr inbounds %struct.flow_filter, ptr %call7.i.i, i32 0, i32 6
  %47 = ptrtoint ptr %handle359 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %handle359, align 4
  %nkeys360 = getelementptr inbounds %struct.flow_filter, ptr %39, i32 0, i32 7
  %48 = ptrtoint ptr %nkeys360 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %nkeys360, align 4
  %nkeys361 = getelementptr inbounds %struct.flow_filter, ptr %call7.i.i, i32 0, i32 7
  %50 = ptrtoint ptr %nkeys361 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %nkeys361, align 8
  %keymask362 = getelementptr inbounds %struct.flow_filter, ptr %39, i32 0, i32 8
  %51 = ptrtoint ptr %keymask362 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %keymask362, align 4
  %keymask363 = getelementptr inbounds %struct.flow_filter, ptr %call7.i.i, i32 0, i32 8
  %53 = ptrtoint ptr %keymask363 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %keymask363, align 4
  %mode364 = getelementptr inbounds %struct.flow_filter, ptr %39, i32 0, i32 9
  %54 = ptrtoint ptr %mode364 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %mode364, align 4
  %mode365 = getelementptr inbounds %struct.flow_filter, ptr %call7.i.i, i32 0, i32 9
  %56 = ptrtoint ptr %mode365 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %mode365, align 8
  %mask = getelementptr inbounds %struct.flow_filter, ptr %39, i32 0, i32 10
  %57 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %mask, align 4
  %mask366 = getelementptr inbounds %struct.flow_filter, ptr %call7.i.i, i32 0, i32 10
  %59 = ptrtoint ptr %mask366 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %mask366, align 4
  %xor = getelementptr inbounds %struct.flow_filter, ptr %39, i32 0, i32 11
  %60 = ptrtoint ptr %xor to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %xor, align 4
  %xor367 = getelementptr inbounds %struct.flow_filter, ptr %call7.i.i, i32 0, i32 11
  %62 = ptrtoint ptr %xor367 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %xor367, align 8
  %rshift = getelementptr inbounds %struct.flow_filter, ptr %39, i32 0, i32 12
  %63 = ptrtoint ptr %rshift to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %rshift, align 4
  %rshift368 = getelementptr inbounds %struct.flow_filter, ptr %call7.i.i, i32 0, i32 12
  %65 = ptrtoint ptr %rshift368 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %rshift368, align 4
  %addend = getelementptr inbounds %struct.flow_filter, ptr %39, i32 0, i32 13
  %66 = ptrtoint ptr %addend to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %addend, align 4
  %addend369 = getelementptr inbounds %struct.flow_filter, ptr %call7.i.i, i32 0, i32 13
  %68 = ptrtoint ptr %addend369 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %addend369, align 8
  %divisor = getelementptr inbounds %struct.flow_filter, ptr %39, i32 0, i32 14
  %69 = ptrtoint ptr %divisor to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %divisor, align 4
  %divisor370 = getelementptr inbounds %struct.flow_filter, ptr %call7.i.i, i32 0, i32 14
  %71 = ptrtoint ptr %divisor370 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %divisor370, align 4
  %baseclass371 = getelementptr inbounds %struct.flow_filter, ptr %39, i32 0, i32 15
  %72 = ptrtoint ptr %baseclass371 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %baseclass371, align 4
  %baseclass372 = getelementptr inbounds %struct.flow_filter, ptr %call7.i.i, i32 0, i32 15
  %74 = ptrtoint ptr %baseclass372 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %baseclass372, align 8
  %hashrnd = getelementptr inbounds %struct.flow_filter, ptr %39, i32 0, i32 16
  %75 = ptrtoint ptr %hashrnd to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %hashrnd, align 4
  %hashrnd373 = getelementptr inbounds %struct.flow_filter, ptr %call7.i.i, i32 0, i32 16
  %77 = ptrtoint ptr %hashrnd373 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %76, ptr %hashrnd373, align 4
  %arrayidx375 = getelementptr inbounds [13 x ptr], ptr %tb, i32 0, i32 2
  %78 = ptrtoint ptr %arrayidx375 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %arrayidx375, align 4
  %tobool376.not = icmp eq ptr %79, null
  %add.ptr.i.i683 = getelementptr i8, ptr %79, i32 4
  %spec.select = select i1 %tobool376.not, ptr %mode364, ptr %add.ptr.i.i683
  %80 = ptrtoint ptr %spec.select to i32
  call void @__asan_load4_noabort(i32 %80)
  %mode.0 = load i32, ptr %spec.select, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %mode.0)
  %cmp381.not = icmp eq i32 %mode.0, 1
  %cmp381.not.not = xor i1 %cmp381.not, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %nkeys.0)
  %cmp384 = icmp ugt i32 %nkeys.0, 1
  %or.cond678 = select i1 %cmp381.not.not, i1 %cmp384, i1 false
  br i1 %or.cond678, label %if.end355.err2_crit_edge, label %if.end387

if.end355.err2_crit_edge:                         ; preds = %if.end355
  call void @__sanitizer_cov_trace_pc() #10
  br label %err2

if.end387:                                        ; preds = %if.end355
  br i1 %cmp381.not, label %if.end392, label %if.end392.thread

if.end392:                                        ; preds = %if.end387
  %perturb_period391 = getelementptr inbounds %struct.flow_filter, ptr %39, i32 0, i32 5
  %81 = ptrtoint ptr %perturb_period391 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %perturb_period391, align 4
  %arrayidx393 = getelementptr inbounds [13 x ptr], ptr %tb, i32 0, i32 12
  %83 = ptrtoint ptr %arrayidx393 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %arrayidx393, align 4
  %tobool394.not = icmp eq ptr %84, null
  br i1 %tobool394.not, label %if.end392.do.body455_crit_edge, label %if.end399

if.end392.do.body455_crit_edge:                   ; preds = %if.end392
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body455

if.end392.thread:                                 ; preds = %if.end387
  %arrayidx393696 = getelementptr inbounds [13 x ptr], ptr %tb, i32 0, i32 12
  %85 = ptrtoint ptr %arrayidx393696 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %arrayidx393696, align 4
  %tobool394.not697 = icmp eq ptr %86, null
  br i1 %tobool394.not697, label %if.end392.thread.do.body455_crit_edge, label %if.end392.thread.err2_crit_edge

if.end392.thread.err2_crit_edge:                  ; preds = %if.end392.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %err2

if.end392.thread.do.body455_crit_edge:            ; preds = %if.end392.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body455

if.end399:                                        ; preds = %if.end392
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i684 = getelementptr i8, ptr %84, i32 4
  %87 = ptrtoint ptr %add.ptr.i.i684 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %add.ptr.i.i684, align 4
  %mul = mul i32 %88, 100
  br label %do.body455

if.else:                                          ; preds = %if.end346
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %handle)
  %tobool403.not = icmp eq i32 %handle, 0
  br i1 %tobool403.not, label %if.else.err2_crit_edge, label %if.end405

if.else.err2_crit_edge:                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %err2

if.end405:                                        ; preds = %if.else
  %89 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %arrayidx19, align 4
  %tobool407.not = icmp eq ptr %90, null
  br i1 %tobool407.not, label %if.end405.err2_crit_edge, label %if.end409

if.end405.err2_crit_edge:                         ; preds = %if.end405
  call void @__sanitizer_cov_trace_pc() #10
  br label %err2

if.end409:                                        ; preds = %if.end405
  %arrayidx410 = getelementptr inbounds [13 x ptr], ptr %tb, i32 0, i32 2
  %91 = ptrtoint ptr %arrayidx410 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %arrayidx410, align 4
  %tobool411.not = icmp eq ptr %92, null
  br i1 %tobool411.not, label %if.end409.if.end415_crit_edge, label %if.then412

if.end409.if.end415_crit_edge:                    ; preds = %if.end409
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end415

if.then412:                                       ; preds = %if.end409
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i685 = getelementptr i8, ptr %92, i32 4
  %93 = ptrtoint ptr %add.ptr.i.i685 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %add.ptr.i.i685, align 4
  br label %if.end415

if.end415:                                        ; preds = %if.then412, %if.end409.if.end415_crit_edge
  %mode.1 = phi i32 [ %94, %if.then412 ], [ 0, %if.end409.if.end415_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %mode.1)
  %cmp416.not = icmp eq i32 %mode.1, 1
  %cmp416.not.not = xor i1 %cmp416.not, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %nkeys.0)
  %cmp419 = icmp ugt i32 %nkeys.0, 1
  %or.cond679 = select i1 %cmp416.not.not, i1 %cmp419, i1 false
  br i1 %or.cond679, label %if.end415.err2_crit_edge, label %if.end422

if.end415.err2_crit_edge:                         ; preds = %if.end415
  call void @__sanitizer_cov_trace_pc() #10
  br label %err2

if.end422:                                        ; preds = %if.end415
  %arrayidx423 = getelementptr inbounds [13 x ptr], ptr %tb, i32 0, i32 12
  %95 = ptrtoint ptr %arrayidx423 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %arrayidx423, align 4
  %tobool424.not = icmp eq ptr %96, null
  br i1 %tobool424.not, label %if.end422.if.end433_crit_edge, label %if.then425

if.end422.if.end433_crit_edge:                    ; preds = %if.end422
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end433

if.then425:                                       ; preds = %if.end422
  br i1 %cmp416.not, label %if.end429, label %if.then425.err2_crit_edge

if.then425.err2_crit_edge:                        ; preds = %if.then425
  call void @__sanitizer_cov_trace_pc() #10
  br label %err2

if.end429:                                        ; preds = %if.then425
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i686 = getelementptr i8, ptr %96, i32 4
  %97 = ptrtoint ptr %add.ptr.i.i686 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %add.ptr.i.i686, align 4
  %mul432 = mul i32 %98, 100
  br label %if.end433

if.end433:                                        ; preds = %if.end429, %if.end422.if.end433_crit_edge
  %perturb_period.1 = phi i32 [ %mul432, %if.end429 ], [ 0, %if.end422.if.end433_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %baseclass.0)
  %cmp435 = icmp ult i32 %baseclass.0, 65536
  br i1 %cmp435, label %if.then437, label %if.end433.if.end442_crit_edge

if.end433.if.end442_crit_edge:                    ; preds = %if.end433
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end442

if.then437:                                       ; preds = %if.end433
  %chain = getelementptr inbounds %struct.tcf_proto, ptr %tp, i32 0, i32 7
  %99 = ptrtoint ptr %chain to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %chain, align 4
  %block = getelementptr inbounds %struct.tcf_chain, ptr %100, i32 0, i32 3
  %101 = ptrtoint ptr %block to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %block, align 4
  %index.i.i = getelementptr inbounds %struct.tcf_block, ptr %102, i32 0, i32 2
  %103 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %index.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %104)
  %tobool.i.not.i = icmp eq i32 %104, 0
  br i1 %tobool.i.not.i, label %if.then437.tcf_block_q.exit_crit_edge, label %do.end.i, !prof !56

if.then437.tcf_block_q.exit_crit_edge:            ; preds = %if.then437
  call void @__sanitizer_cov_trace_pc() #10
  br label %tcf_block_q.exit

do.end.i:                                         ; preds = %if.then437
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 75, i32 noundef 9, ptr noundef null) #8
  br label %tcf_block_q.exit

tcf_block_q.exit:                                 ; preds = %do.end.i, %if.then437.tcf_block_q.exit_crit_edge
  %q.i = getelementptr inbounds %struct.tcf_block, ptr %102, i32 0, i32 6
  %105 = ptrtoint ptr %q.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %q.i, align 4
  %handle439 = getelementptr inbounds %struct.Qdisc, ptr %106, i32 0, i32 7
  %107 = ptrtoint ptr %handle439 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %handle439, align 32
  %and440 = and i32 %108, -65536
  %or = or i32 %and440, %baseclass.0
  br label %if.end442

if.end442:                                        ; preds = %tcf_block_q.exit, %if.end433.if.end442_crit_edge
  %baseclass.1 = phi i32 [ %or, %tcf_block_q.exit ], [ %baseclass.0, %if.end433.if.end442_crit_edge ]
  %and443 = and i32 %baseclass.1, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and443)
  %cmp444 = icmp eq i32 %and443, 0
  %and447 = and i32 %baseclass.1, -65536
  %or448 = or i32 %and447, 1
  %baseclass.2 = select i1 %cmp444, i32 %or448, i32 %baseclass.1
  %handle450 = getelementptr inbounds %struct.flow_filter, ptr %call7.i.i, i32 0, i32 6
  %109 = ptrtoint ptr %handle450 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %handle, ptr %handle450, align 4
  %mask451 = getelementptr inbounds %struct.flow_filter, ptr %call7.i.i, i32 0, i32 10
  %110 = ptrtoint ptr %mask451 to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 -1, ptr %mask451, align 4
  %tp452 = getelementptr inbounds %struct.flow_filter, ptr %call7.i.i, i32 0, i32 3
  %111 = ptrtoint ptr %tp452 to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %tp, ptr %tp452, align 4
  %hashrnd453 = getelementptr inbounds %struct.flow_filter, ptr %call7.i.i, i32 0, i32 16
  call void @get_random_bytes(ptr noundef %hashrnd453, i32 noundef 4) #8
  br label %do.body455

do.body455:                                       ; preds = %if.end442, %if.end399, %if.end392.thread.do.body455_crit_edge, %if.end392.do.body455_crit_edge
  %perturb_period.2 = phi i32 [ %mul, %if.end399 ], [ %82, %if.end392.do.body455_crit_edge ], [ %perturb_period.1, %if.end442 ], [ 0, %if.end392.thread.do.body455_crit_edge ]
  %baseclass.3 = phi i32 [ %baseclass.0, %if.end399 ], [ %baseclass.0, %if.end392.do.body455_crit_edge ], [ %baseclass.2, %if.end442 ], [ %baseclass.0, %if.end392.thread.do.body455_crit_edge ]
  %mode.2 = phi i32 [ 1, %if.end399 ], [ 1, %if.end392.do.body455_crit_edge ], [ %mode.1, %if.end442 ], [ %mode.0, %if.end392.thread.do.body455_crit_edge ]
  %perturb_timer = getelementptr inbounds %struct.flow_filter, ptr %call7.i.i, i32 0, i32 4
  call void @init_timer_key(ptr noundef %perturb_timer, ptr noundef nonnull @flow_perturbation, i32 noundef 524288, ptr noundef nonnull @.str.7, ptr noundef nonnull @flow_change.__key) #8
  %chain458 = getelementptr inbounds %struct.tcf_proto, ptr %tp, i32 0, i32 7
  %112 = ptrtoint ptr %chain458 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %chain458, align 4
  %block459 = getelementptr inbounds %struct.tcf_chain, ptr %113, i32 0, i32 3
  %114 = ptrtoint ptr %block459 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %block459, align 4
  call void @tcf_block_netif_keep_dst(ptr noundef %115) #8
  %116 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %arrayidx19, align 4
  %tobool461.not = icmp eq ptr %117, null
  br i1 %tobool461.not, label %do.body455.if.end465_crit_edge, label %if.then462

do.body455.if.end465_crit_edge:                   ; preds = %do.body455
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end465

if.then462:                                       ; preds = %do.body455
  call void @__sanitizer_cov_trace_pc() #10
  %keymask463 = getelementptr inbounds %struct.flow_filter, ptr %call7.i.i, i32 0, i32 8
  %118 = ptrtoint ptr %keymask463 to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %keymask.0, ptr %keymask463, align 4
  %nkeys464 = getelementptr inbounds %struct.flow_filter, ptr %call7.i.i, i32 0, i32 7
  %119 = ptrtoint ptr %nkeys464 to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %nkeys.0, ptr %nkeys464, align 8
  br label %if.end465

if.end465:                                        ; preds = %if.then462, %do.body455.if.end465_crit_edge
  %mode466 = getelementptr inbounds %struct.flow_filter, ptr %call7.i.i, i32 0, i32 9
  %120 = ptrtoint ptr %mode466 to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %mode.2, ptr %mode466, align 8
  %arrayidx467 = getelementptr inbounds [13 x ptr], ptr %tb, i32 0, i32 6
  %121 = ptrtoint ptr %arrayidx467 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %arrayidx467, align 4
  %tobool468.not = icmp eq ptr %122, null
  br i1 %tobool468.not, label %if.end465.if.end473_crit_edge, label %if.then469

if.end465.if.end473_crit_edge:                    ; preds = %if.end465
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end473

if.then469:                                       ; preds = %if.end465
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i688 = getelementptr i8, ptr %122, i32 4
  %123 = ptrtoint ptr %add.ptr.i.i688 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %add.ptr.i.i688, align 4
  %mask472 = getelementptr inbounds %struct.flow_filter, ptr %call7.i.i, i32 0, i32 10
  %125 = ptrtoint ptr %mask472 to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %124, ptr %mask472, align 4
  br label %if.end473

if.end473:                                        ; preds = %if.then469, %if.end465.if.end473_crit_edge
  %arrayidx474 = getelementptr inbounds [13 x ptr], ptr %tb, i32 0, i32 7
  %126 = ptrtoint ptr %arrayidx474 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %arrayidx474, align 4
  %tobool475.not = icmp eq ptr %127, null
  br i1 %tobool475.not, label %if.end473.if.end480_crit_edge, label %if.then476

if.end473.if.end480_crit_edge:                    ; preds = %if.end473
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end480

if.then476:                                       ; preds = %if.end473
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i689 = getelementptr i8, ptr %127, i32 4
  %128 = ptrtoint ptr %add.ptr.i.i689 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %add.ptr.i.i689, align 4
  %xor479 = getelementptr inbounds %struct.flow_filter, ptr %call7.i.i, i32 0, i32 11
  %130 = ptrtoint ptr %xor479 to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %129, ptr %xor479, align 8
  br label %if.end480

if.end480:                                        ; preds = %if.then476, %if.end473.if.end480_crit_edge
  %arrayidx481 = getelementptr inbounds [13 x ptr], ptr %tb, i32 0, i32 4
  %131 = ptrtoint ptr %arrayidx481 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %arrayidx481, align 4
  %tobool482.not = icmp eq ptr %132, null
  br i1 %tobool482.not, label %if.end480.if.end487_crit_edge, label %if.then483

if.end480.if.end487_crit_edge:                    ; preds = %if.end480
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end487

if.then483:                                       ; preds = %if.end480
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i690 = getelementptr i8, ptr %132, i32 4
  %133 = ptrtoint ptr %add.ptr.i.i690 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %add.ptr.i.i690, align 4
  %rshift486 = getelementptr inbounds %struct.flow_filter, ptr %call7.i.i, i32 0, i32 12
  %135 = ptrtoint ptr %rshift486 to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %134, ptr %rshift486, align 4
  br label %if.end487

if.end487:                                        ; preds = %if.then483, %if.end480.if.end487_crit_edge
  %arrayidx488 = getelementptr inbounds [13 x ptr], ptr %tb, i32 0, i32 5
  %136 = ptrtoint ptr %arrayidx488 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %arrayidx488, align 4
  %tobool489.not = icmp eq ptr %137, null
  br i1 %tobool489.not, label %if.end487.if.end494_crit_edge, label %if.then490

if.end487.if.end494_crit_edge:                    ; preds = %if.end487
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end494

if.then490:                                       ; preds = %if.end487
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i691 = getelementptr i8, ptr %137, i32 4
  %138 = ptrtoint ptr %add.ptr.i.i691 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %add.ptr.i.i691, align 4
  %addend493 = getelementptr inbounds %struct.flow_filter, ptr %call7.i.i, i32 0, i32 13
  %140 = ptrtoint ptr %addend493 to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 %139, ptr %addend493, align 8
  br label %if.end494

if.end494:                                        ; preds = %if.then490, %if.end487.if.end494_crit_edge
  %arrayidx495 = getelementptr inbounds [13 x ptr], ptr %tb, i32 0, i32 8
  %141 = ptrtoint ptr %arrayidx495 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %arrayidx495, align 4
  %tobool496.not = icmp eq ptr %142, null
  br i1 %tobool496.not, label %if.end494.if.end501_crit_edge, label %if.then497

if.end494.if.end501_crit_edge:                    ; preds = %if.end494
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end501

if.then497:                                       ; preds = %if.end494
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i692 = getelementptr i8, ptr %142, i32 4
  %143 = ptrtoint ptr %add.ptr.i.i692 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %add.ptr.i.i692, align 4
  %divisor500 = getelementptr inbounds %struct.flow_filter, ptr %call7.i.i, i32 0, i32 14
  %145 = ptrtoint ptr %divisor500 to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 %144, ptr %divisor500, align 4
  br label %if.end501

if.end501:                                        ; preds = %if.then497, %if.end494.if.end501_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %baseclass.3)
  %tobool502.not = icmp eq i32 %baseclass.3, 0
  br i1 %tobool502.not, label %if.end501.if.end505_crit_edge, label %if.then503

if.end501.if.end505_crit_edge:                    ; preds = %if.end501
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end505

if.then503:                                       ; preds = %if.end501
  call void @__sanitizer_cov_trace_pc() #10
  %baseclass504 = getelementptr inbounds %struct.flow_filter, ptr %call7.i.i, i32 0, i32 15
  %146 = ptrtoint ptr %baseclass504 to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 %baseclass.3, ptr %baseclass504, align 8
  br label %if.end505

if.end505:                                        ; preds = %if.then503, %if.end501.if.end505_crit_edge
  %perturb_period506 = getelementptr inbounds %struct.flow_filter, ptr %call7.i.i, i32 0, i32 5
  %147 = ptrtoint ptr %perturb_period506 to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 %perturb_period.2, ptr %perturb_period506, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %perturb_period.2)
  %tobool507.not = icmp eq i32 %perturb_period.2, 0
  br i1 %tobool507.not, label %if.end505.if.end512_crit_edge, label %if.then508

if.end505.if.end512_crit_edge:                    ; preds = %if.end505
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end512

if.then508:                                       ; preds = %if.end505
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %148 = load volatile i32, ptr @jiffies, align 128
  %add510 = add i32 %148, %perturb_period.2
  %call511 = call i32 @mod_timer(ptr noundef %perturb_timer, i32 noundef %add510) #8
  br label %if.end512

if.end512:                                        ; preds = %if.then508, %if.end505.if.end512_crit_edge
  %149 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %arg, align 4
  %tobool513.not = icmp eq ptr %150, null
  br i1 %tobool513.not, label %if.then514, label %if.else515

if.then514:                                       ; preds = %if.end512
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @list_add_tail_rcu(ptr noundef nonnull %call7.i.i, ptr noundef %1)
  br label %if.end518

if.else515:                                       ; preds = %if.end512
  call void @__sanitizer_cov_trace_pc() #10
  %151 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %39, align 4
  %153 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %153)
  store ptr %152, ptr %call7.i.i, align 8
  %prev.i = getelementptr inbounds %struct.list_head, ptr %39, i32 0, i32 1
  %154 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %prev.i, align 4
  %prev2.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %156 = ptrtoint ptr %prev2.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store ptr %155, ptr %prev2.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !58
  %157 = ptrtoint ptr %prev2.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %prev2.i, align 4
  %159 = ptrtoint ptr %158 to i32
  call void @__asan_store4_noabort(i32 %159)
  store volatile ptr %call7.i.i, ptr %158, align 4
  %160 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %call7.i.i, align 8
  %prev38.i = getelementptr inbounds %struct.list_head, ptr %161, i32 0, i32 1
  %162 = ptrtoint ptr %prev38.i to i32
  call void @__asan_store4_noabort(i32 %162)
  store ptr %call7.i.i, ptr %prev38.i, align 4
  %163 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %163)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  br label %if.end518

if.end518:                                        ; preds = %if.else515, %if.then514
  %164 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %164)
  store ptr %call7.i.i, ptr %arg, align 4
  br i1 %tobool347.not, label %if.end518.cleanup_crit_edge, label %if.then520

if.end518.cleanup_crit_edge:                      ; preds = %if.end518
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then520:                                       ; preds = %if.end518
  call void @__sanitizer_cov_trace_pc() #10
  %exts521 = getelementptr inbounds %struct.flow_filter, ptr %39, i32 0, i32 1
  %call522 = call fastcc zeroext i1 @tcf_exts_get_net(ptr noundef %exts521)
  %rwork = getelementptr inbounds %struct.flow_filter, ptr %39, i32 0, i32 17
  %call523 = call zeroext i1 @tcf_queue_work(ptr noundef %rwork, ptr noundef nonnull @flow_destroy_filter_work) #8
  br label %cleanup

err2:                                             ; preds = %if.then425.err2_crit_edge, %if.end415.err2_crit_edge, %if.end405.err2_crit_edge, %if.else.err2_crit_edge, %if.end392.thread.err2_crit_edge, %if.end355.err2_crit_edge, %if.then348.err2_crit_edge, %if.end338.err2_crit_edge, %if.end333.err2_crit_edge
  %err.0 = phi i32 [ %call342, %if.end338.err2_crit_edge ], [ -22, %if.then425.err2_crit_edge ], [ -22, %if.end405.err2_crit_edge ], [ -22, %if.else.err2_crit_edge ], [ -22, %if.then348.err2_crit_edge ], [ -22, %if.end355.err2_crit_edge ], [ -22, %if.end415.err2_crit_edge ], [ -12, %if.end333.err2_crit_edge ], [ -22, %if.end392.thread.err2_crit_edge ]
  call void @tcf_exts_destroy(ptr noundef %exts) #8
  call void @tcf_em_tree_destroy(ptr noundef %ematches) #8
  br label %err1

err1:                                             ; preds = %err2, %if.end327.err1_crit_edge
  %err.1 = phi i32 [ %call329, %if.end327.err1_crit_edge ], [ %err.0, %err2 ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %err1, %if.then520, %if.end518.cleanup_crit_edge, %if.end323.cleanup_crit_edge, %land.lhs.true317.cleanup_crit_edge, %if.end309.cleanup_crit_edge, %if.then21.cleanup_crit_edge, %if.then12.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %err1 ], [ -22, %do.end.cleanup_crit_edge ], [ %call2.i, %if.end5.cleanup_crit_edge ], [ -22, %if.then12.cleanup_crit_edge ], [ -22, %if.then21.cleanup_crit_edge ], [ -95, %if.end309.cleanup_crit_edge ], [ -95, %land.lhs.true317.cleanup_crit_edge ], [ -105, %if.end323.cleanup_crit_edge ], [ 0, %if.then520 ], [ 0, %if.end518.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %tb) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @flow_delete(ptr nocapture noundef readonly %tp, ptr noundef %arg, ptr nocapture noundef writeonly %last, i1 noundef zeroext %rtnl_held, ptr nocapture noundef readnone %extack) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @lockdep_rtnl_is_held() #8
  br i1 %call, label %entry.do.end_crit_edge, label %land.lhs.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true2

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %.b11 = load i1, ptr @flow_delete.__warned, align 1
  br i1 %.b11, label %land.lhs.true2.do.end_crit_edge, label %if.then

land.lhs.true2.do.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @flow_delete.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 569, ptr noundef nonnull @.str.6) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true2.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %root = getelementptr inbounds %struct.tcf_proto, ptr %tp, i32 0, i32 1
  %0 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %root, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %arg) #8
  br i1 %call.i.i, label %if.end.i.i, label %do.end.list_del_rcu.exit_crit_edge

do.end.list_del_rcu.exit_crit_edge:               ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del_rcu.exit

if.end.i.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %arg, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arg, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del_rcu.exit

list_del_rcu.exit:                                ; preds = %if.end.i.i, %do.end.list_del_rcu.exit_crit_edge
  %prev.i = getelementptr inbounds %struct.list_head, ptr %arg, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %exts = getelementptr inbounds %struct.flow_filter, ptr %arg, i32 0, i32 1
  %call4 = tail call fastcc zeroext i1 @tcf_exts_get_net(ptr noundef %exts)
  %rwork = getelementptr inbounds %struct.flow_filter, ptr %arg, i32 0, i32 17
  %call5 = tail call zeroext i1 @tcf_queue_work(ptr noundef %rwork, ptr noundef nonnull @flow_destroy_filter_work) #8
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %1, align 4
  %cmp.i = icmp eq ptr %10, %1
  %frombool8 = zext i1 %cmp.i to i8
  %11 = ptrtoint ptr %last to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %frombool8, ptr %last, align 1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @flow_walk(ptr noundef %tp, ptr noundef %arg, i1 noundef zeroext %rtnl_held) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @lockdep_rtnl_is_held() #8
  br i1 %call, label %entry.do.end_crit_edge, label %land.lhs.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true2

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %.b29 = load i1, ptr @flow_walk.__warned, align 1
  br i1 %.b29, label %land.lhs.true2.do.end_crit_edge, label %if.then

land.lhs.true2.do.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @flow_walk.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 682, ptr noundef nonnull @.str.6) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true2.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %root = getelementptr inbounds %struct.tcf_proto, ptr %tp, i32 0, i32 1
  %0 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %root, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %f.030 = load ptr, ptr %1, align 4
  %cmp.not31 = icmp eq ptr %f.030, %1
  br i1 %cmp.not31, label %do.end.for.end_crit_edge, label %for.body.lr.ph

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end
  %count = getelementptr inbounds %struct.tcf_walker, ptr %arg, i32 0, i32 2
  %skip = getelementptr inbounds %struct.tcf_walker, ptr %arg, i32 0, i32 1
  %fn = getelementptr inbounds %struct.tcf_walker, ptr %arg, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %skip13.for.body_crit_edge, %for.body.lr.ph
  %f.032 = phi ptr [ %f.030, %for.body.lr.ph ], [ %f.0, %skip13.for.body_crit_edge ]
  %3 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %count, align 4
  %5 = ptrtoint ptr %skip to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %skip, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %6)
  %cmp6 = icmp slt i32 %4, %6
  br i1 %cmp6, label %for.body.skip13_crit_edge, label %if.end8

for.body.skip13_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %skip13

if.end8:                                          ; preds = %for.body
  %7 = ptrtoint ptr %fn to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fn, align 4
  %call9 = tail call i32 %8(ptr noundef %tp, ptr noundef %f.032, ptr noundef %arg) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.then11, label %if.end8.skip13_crit_edge

if.end8.skip13_crit_edge:                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %skip13

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %arg, align 4
  br label %for.end

skip13:                                           ; preds = %if.end8.skip13_crit_edge, %for.body.skip13_crit_edge
  %10 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %count, align 4
  %inc = add i32 %11, 1
  store i32 %inc, ptr %count, align 4
  %12 = ptrtoint ptr %f.032 to i32
  call void @__asan_load4_noabort(i32 %12)
  %f.0 = load ptr, ptr %f.032, align 4
  %cmp.not = icmp eq ptr %f.0, %1
  br i1 %cmp.not, label %skip13.for.end_crit_edge, label %skip13.for.body_crit_edge

skip13.for.body_crit_edge:                        ; preds = %skip13
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

skip13.for.end_crit_edge:                         ; preds = %skip13
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %skip13.for.end_crit_edge, %if.then11, %do.end.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @flow_dump(ptr nocapture noundef readnone %net, ptr nocapture noundef readnone %tp, ptr noundef %fh, ptr noundef %skb, ptr nocapture noundef writeonly %t, i1 noundef zeroext %rtnl_held) #2 align 64 {
entry:
  %tmp.i135 = alloca i32, align 4
  %tmp.i133 = alloca i32, align 4
  %tmp.i131 = alloca i32, align 4
  %tmp.i129 = alloca i32, align 4
  %tmp.i127 = alloca i32, align 4
  %tmp.i125 = alloca i32, align 4
  %tmp.i123 = alloca i32, align 4
  %tmp.i121 = alloca i32, align 4
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %fh, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %handle = getelementptr inbounds %struct.flow_filter, ptr %fh, i32 0, i32 6
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
  %call1.i = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 0, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  %cmp1138 = icmp eq ptr %6, null
  %cmp1 = select i1 %cmp.i, i1 true, i1 %cmp1138
  br i1 %cmp1, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %keymask = getelementptr inbounds %struct.flow_filter, ptr %fh, i32 0, i32 8
  %7 = ptrtoint ptr %keymask to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %keymask, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #8
  %9 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %tmp.i, align 4
  %call.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %tmp.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %lor.lhs.false, label %if.end3.if.then.i.i_crit_edge

if.end3.if.then.i.i_crit_edge:                    ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i

lor.lhs.false:                                    ; preds = %if.end3
  %mode = getelementptr inbounds %struct.flow_filter, ptr %fh, i32 0, i32 9
  %10 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mode, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i121) #8
  %12 = ptrtoint ptr %tmp.i121 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %tmp.i121, align 4
  %call.i122 = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %tmp.i121) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i121) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i122)
  %tobool6.not = icmp eq i32 %call.i122, 0
  br i1 %tobool6.not, label %if.end8, label %lor.lhs.false.if.then.i.i_crit_edge

lor.lhs.false.if.then.i.i_crit_edge:              ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i

if.end8:                                          ; preds = %lor.lhs.false
  %mask = getelementptr inbounds %struct.flow_filter, ptr %fh, i32 0, i32 10
  %13 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %14)
  %cmp9.not = icmp eq i32 %14, -1
  br i1 %cmp9.not, label %lor.lhs.false10, label %if.end8.if.then12_crit_edge

if.end8.if.then12_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then12

lor.lhs.false10:                                  ; preds = %if.end8
  %xor = getelementptr inbounds %struct.flow_filter, ptr %fh, i32 0, i32 11
  %15 = ptrtoint ptr %xor to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %xor, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp11.not = icmp eq i32 %16, 0
  br i1 %cmp11.not, label %lor.lhs.false10.if.end22_crit_edge, label %lor.lhs.false10.if.then12_crit_edge

lor.lhs.false10.if.then12_crit_edge:              ; preds = %lor.lhs.false10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then12

lor.lhs.false10.if.end22_crit_edge:               ; preds = %lor.lhs.false10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

if.then12:                                        ; preds = %lor.lhs.false10.if.then12_crit_edge, %if.end8.if.then12_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i123) #8
  %17 = ptrtoint ptr %tmp.i123 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %14, ptr %tmp.i123, align 4
  %call.i124 = call i32 @nla_put(ptr noundef %skb, i32 noundef 6, i32 noundef 4, ptr noundef nonnull %tmp.i123) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i123) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i124)
  %tobool15.not = icmp eq i32 %call.i124, 0
  br i1 %tobool15.not, label %lor.lhs.false16, label %if.then12.if.then.i.i_crit_edge

if.then12.if.then.i.i_crit_edge:                  ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i

lor.lhs.false16:                                  ; preds = %if.then12
  %xor17 = getelementptr inbounds %struct.flow_filter, ptr %fh, i32 0, i32 11
  %18 = ptrtoint ptr %xor17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %xor17, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i125) #8
  %20 = ptrtoint ptr %tmp.i125 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %tmp.i125, align 4
  %call.i126 = call i32 @nla_put(ptr noundef %skb, i32 noundef 7, i32 noundef 4, ptr noundef nonnull %tmp.i125) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i125) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i126)
  %tobool19.not = icmp eq i32 %call.i126, 0
  br i1 %tobool19.not, label %lor.lhs.false16.if.end22_crit_edge, label %lor.lhs.false16.if.then.i.i_crit_edge

lor.lhs.false16.if.then.i.i_crit_edge:            ; preds = %lor.lhs.false16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i

lor.lhs.false16.if.end22_crit_edge:               ; preds = %lor.lhs.false16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

if.end22:                                         ; preds = %lor.lhs.false16.if.end22_crit_edge, %lor.lhs.false10.if.end22_crit_edge
  %rshift = getelementptr inbounds %struct.flow_filter, ptr %fh, i32 0, i32 12
  %21 = ptrtoint ptr %rshift to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %rshift, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool23.not = icmp eq i32 %22, 0
  br i1 %tobool23.not, label %if.end22.if.end28_crit_edge, label %land.lhs.true

if.end22.if.end28_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

land.lhs.true:                                    ; preds = %if.end22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i127) #8
  %23 = ptrtoint ptr %tmp.i127 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %tmp.i127, align 4
  %call.i128 = call i32 @nla_put(ptr noundef %skb, i32 noundef 4, i32 noundef 4, ptr noundef nonnull %tmp.i127) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i127) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i128)
  %tobool26.not = icmp eq i32 %call.i128, 0
  br i1 %tobool26.not, label %land.lhs.true.if.end28_crit_edge, label %land.lhs.true.if.then.i.i_crit_edge

land.lhs.true.if.then.i.i_crit_edge:              ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i

land.lhs.true.if.end28_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

if.end28:                                         ; preds = %land.lhs.true.if.end28_crit_edge, %if.end22.if.end28_crit_edge
  %addend = getelementptr inbounds %struct.flow_filter, ptr %fh, i32 0, i32 13
  %24 = ptrtoint ptr %addend to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %addend, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool29.not = icmp eq i32 %25, 0
  br i1 %tobool29.not, label %if.end28.if.end35_crit_edge, label %land.lhs.true30

if.end28.if.end35_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35

land.lhs.true30:                                  ; preds = %if.end28
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i129) #8
  %26 = ptrtoint ptr %tmp.i129 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %tmp.i129, align 4
  %call.i130 = call i32 @nla_put(ptr noundef %skb, i32 noundef 5, i32 noundef 4, ptr noundef nonnull %tmp.i129) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i129) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i130)
  %tobool33.not = icmp eq i32 %call.i130, 0
  br i1 %tobool33.not, label %land.lhs.true30.if.end35_crit_edge, label %land.lhs.true30.if.then.i.i_crit_edge

land.lhs.true30.if.then.i.i_crit_edge:            ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i

land.lhs.true30.if.end35_crit_edge:               ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35

if.end35:                                         ; preds = %land.lhs.true30.if.end35_crit_edge, %if.end28.if.end35_crit_edge
  %divisor = getelementptr inbounds %struct.flow_filter, ptr %fh, i32 0, i32 14
  %27 = ptrtoint ptr %divisor to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %divisor, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool36.not = icmp eq i32 %28, 0
  br i1 %tobool36.not, label %if.end35.if.end42_crit_edge, label %land.lhs.true37

if.end35.if.end42_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42

land.lhs.true37:                                  ; preds = %if.end35
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i131) #8
  %29 = ptrtoint ptr %tmp.i131 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %tmp.i131, align 4
  %call.i132 = call i32 @nla_put(ptr noundef %skb, i32 noundef 8, i32 noundef 4, ptr noundef nonnull %tmp.i131) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i131) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i132)
  %tobool40.not = icmp eq i32 %call.i132, 0
  br i1 %tobool40.not, label %land.lhs.true37.if.end42_crit_edge, label %land.lhs.true37.if.then.i.i_crit_edge

land.lhs.true37.if.then.i.i_crit_edge:            ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i

land.lhs.true37.if.end42_crit_edge:               ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42

if.end42:                                         ; preds = %land.lhs.true37.if.end42_crit_edge, %if.end35.if.end42_crit_edge
  %baseclass = getelementptr inbounds %struct.flow_filter, ptr %fh, i32 0, i32 15
  %30 = ptrtoint ptr %baseclass to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %baseclass, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool43.not = icmp eq i32 %31, 0
  br i1 %tobool43.not, label %if.end42.if.end49_crit_edge, label %land.lhs.true44

if.end42.if.end49_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end49

land.lhs.true44:                                  ; preds = %if.end42
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i133) #8
  %32 = ptrtoint ptr %tmp.i133 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %tmp.i133, align 4
  %call.i134 = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 4, ptr noundef nonnull %tmp.i133) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i133) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i134)
  %tobool47.not = icmp eq i32 %call.i134, 0
  br i1 %tobool47.not, label %land.lhs.true44.if.end49_crit_edge, label %land.lhs.true44.if.then.i.i_crit_edge

land.lhs.true44.if.then.i.i_crit_edge:            ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i

land.lhs.true44.if.end49_crit_edge:               ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end49

if.end49:                                         ; preds = %land.lhs.true44.if.end49_crit_edge, %if.end42.if.end49_crit_edge
  %perturb_period = getelementptr inbounds %struct.flow_filter, ptr %fh, i32 0, i32 5
  %33 = ptrtoint ptr %perturb_period to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %perturb_period, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool50.not = icmp eq i32 %34, 0
  br i1 %tobool50.not, label %if.end49.if.end56_crit_edge, label %land.lhs.true51

if.end49.if.end56_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end56

land.lhs.true51:                                  ; preds = %if.end49
  %div = udiv i32 %34, 100
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i135) #8
  %35 = ptrtoint ptr %tmp.i135 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %div, ptr %tmp.i135, align 4
  %call.i136 = call i32 @nla_put(ptr noundef %skb, i32 noundef 12, i32 noundef 4, ptr noundef nonnull %tmp.i135) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i135) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i136)
  %tobool54.not = icmp eq i32 %call.i136, 0
  br i1 %tobool54.not, label %land.lhs.true51.if.end56_crit_edge, label %land.lhs.true51.if.then.i.i_crit_edge

land.lhs.true51.if.then.i.i_crit_edge:            ; preds = %land.lhs.true51
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i

land.lhs.true51.if.end56_crit_edge:               ; preds = %land.lhs.true51
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end56

if.end56:                                         ; preds = %land.lhs.true51.if.end56_crit_edge, %if.end49.if.end56_crit_edge
  %exts = getelementptr inbounds %struct.flow_filter, ptr %fh, i32 0, i32 1
  %call57 = call i32 @tcf_exts_dump(ptr noundef %skb, ptr noundef %exts) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %cmp58 = icmp slt i32 %call57, 0
  br i1 %cmp58, label %if.end56.if.then.i.i_crit_edge, label %if.end60

if.end56.if.then.i.i_crit_edge:                   ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i

if.end60:                                         ; preds = %if.end56
  %ematches = getelementptr inbounds %struct.flow_filter, ptr %fh, i32 0, i32 2
  %36 = ptrtoint ptr %ematches to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %ematches, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %37)
  %tobool61.not = icmp eq i16 %37, 0
  br i1 %tobool61.not, label %if.end60.if.end68_crit_edge, label %land.lhs.true62

if.end60.if.end68_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end68

land.lhs.true62:                                  ; preds = %if.end60
  %call64 = call i32 @tcf_em_tree_dump(ptr noundef %skb, ptr noundef %ematches, i32 noundef 11) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %cmp65 = icmp slt i32 %call64, 0
  br i1 %cmp65, label %land.lhs.true62.if.then.i.i_crit_edge, label %land.lhs.true62.if.end68_crit_edge

land.lhs.true62.if.end68_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end68

land.lhs.true62.if.then.i.i_crit_edge:            ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i

if.end68:                                         ; preds = %land.lhs.true62.if.end68_crit_edge, %if.end60.if.end68_crit_edge
  %38 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %39 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %6 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %40 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %conv.i, ptr %6, align 2
  %call71 = call i32 @tcf_exts_dump_stats(ptr noundef %skb, ptr noundef %exts) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %cmp72 = icmp slt i32 %call71, 0
  br i1 %cmp72, label %if.end68.if.then.i.i_crit_edge, label %if.end75

if.end68.if.then.i.i_crit_edge:                   ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i

if.end75:                                         ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #10
  %len76 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %41 = ptrtoint ptr %len76 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %len76, align 4
  br label %cleanup

if.then.i.i:                                      ; preds = %if.end68.if.then.i.i_crit_edge, %land.lhs.true62.if.then.i.i_crit_edge, %if.end56.if.then.i.i_crit_edge, %land.lhs.true51.if.then.i.i_crit_edge, %land.lhs.true44.if.then.i.i_crit_edge, %land.lhs.true37.if.then.i.i_crit_edge, %land.lhs.true30.if.then.i.i_crit_edge, %land.lhs.true.if.then.i.i_crit_edge, %lor.lhs.false16.if.then.i.i_crit_edge, %if.then12.if.then.i.i_crit_edge, %lor.lhs.false.if.then.i.i_crit_edge, %if.end3.if.then.i.i_crit_edge
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %43 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %data.i.i, align 4
  %cmp.i.i = icmp ugt ptr %44, %6
  br i1 %cmp.i.i, label %do.end.i.i, label %if.then.i.i.if.end.i.i_crit_edge, !prof !54

if.then.i.i.if.end.i.i_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 991, i32 noundef 9, ptr noundef null) #8
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end.i.i, %if.then.i.i.if.end.i.i_crit_edge
  %45 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %6 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %46 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %if.end75, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %1, %if.then ], [ %42, %if.end75 ], [ -1, %if.end.cleanup_crit_edge ], [ -1, %if.end.i.i ]
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

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__tcf_em_tree_match(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__skb_flow_dissect(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @flow_get_dst(ptr noundef %skb, ptr noundef %flow) unnamed_addr #2 align 64 {
entry:
  %vhdr.i.i.i = alloca %struct.vlan_hdr, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @flow_get_u32_dst(ptr noundef %flow) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 8
  %and.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.skb_dst.exit_crit_edge, label %land.lhs.true.i

if.end.skb_dst.exit_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %skb_dst.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call.i = tail call i32 @rcu_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %land.rhs.i, label %land.lhs.true.i.skb_dst.exit_crit_edge

land.lhs.true.i.skb_dst.exit_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %skb_dst.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %call2.i = tail call i32 @rcu_read_lock_bh_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %do.end.i, label %land.rhs.i.skb_dst.exit_crit_edge, !prof !54

land.rhs.i.skb_dst.exit_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %skb_dst.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1013, i32 noundef 9, ptr noundef null) #8
  br label %skb_dst.exit

skb_dst.exit:                                     ; preds = %do.end.i, %land.rhs.i.skb_dst.exit_crit_edge, %land.lhs.true.i.skb_dst.exit_crit_edge, %if.end.skb_dst.exit_crit_edge
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %0, align 8
  %and25.i = and i32 %4, -2
  %protocol.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %5 = ptrtoint ptr %protocol.i.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %protocol.i.i, align 8
  %mac_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 8
  %7 = ptrtoint ptr %mac_len.i.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %mac_len.i.i.i, align 4
  %conv.i.i.i = zext i16 %8 to i32
  %9 = zext i16 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.18)
  switch i16 %6, label %skb_dst.exit.skb_protocol.exit_crit_edge [
    i16 -30552, label %skb_dst.exit.if.then.i.i.i_crit_edge
    i16 -32512, label %skb_dst.exit.if.then.i.i.i_crit_edge7
  ]

skb_dst.exit.if.then.i.i.i_crit_edge7:            ; preds = %skb_dst.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i.i

skb_dst.exit.if.then.i.i.i_crit_edge:             ; preds = %skb_dst.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i.i

skb_dst.exit.skb_protocol.exit_crit_edge:         ; preds = %skb_dst.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %skb_protocol.exit

if.then.i.i.i:                                    ; preds = %skb_dst.exit.if.then.i.i.i_crit_edge, %skb_dst.exit.if.then.i.i.i_crit_edge7
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool.not.i.i.i = icmp eq i16 %8, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i.if.end26.i.i.i_crit_edge, label %if.then1.i.i.i

if.then.i.i.i.if.end26.i.i.i_crit_edge:           ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26.i.i.i

if.then1.i.i.i:                                   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %8)
  %cmp.i.i.i = icmp ult i16 %8, 4
  br i1 %cmp.i.i.i, label %do.end.i.i.i, label %if.end25.i.i.i, !prof !54

do.end.i.i.i:                                     ; preds = %if.then1.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 598, i32 noundef 9, ptr noundef null) #8
  br label %skb_protocol.exit

if.end25.i.i.i:                                   ; preds = %if.then1.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i.i = add nsw i32 %conv.i.i.i, -4
  br label %if.end26.i.i.i

if.end26.i.i.i:                                   ; preds = %if.end25.i.i.i, %if.then.i.i.i.if.end26.i.i.i_crit_edge
  %vlan_depth.0.i.i.i = phi i32 [ %sub.i.i.i, %if.end25.i.i.i ], [ 14, %if.then.i.i.i.if.end26.i.i.i_crit_edge ]
  %10 = getelementptr inbounds %struct.vlan_hdr, ptr %vhdr.i.i.i, i32 0, i32 1
  %len.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %data_len.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %tobool2.not.i.i.i.i.i = icmp eq ptr %skb, null
  %data.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  br label %do.body27.i.i.i

do.body27.i.i.i:                                  ; preds = %do.body27.backedge.i.i.i, %if.end26.i.i.i
  %vlan_depth.1.i.i.i = phi i32 [ %vlan_depth.0.i.i.i, %if.end26.i.i.i ], [ %add.i.i.i, %do.body27.backedge.i.i.i ]
  %parse_depth.0.i.i.i = phi i32 [ 8, %if.end26.i.i.i ], [ %dec.i.i.i, %do.body27.backedge.i.i.i ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vhdr.i.i.i) #8
  %11 = ptrtoint ptr %vhdr.i.i.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 -1, ptr %vhdr.i.i.i, align 2, !annotation !55
  %12 = ptrtoint ptr %10 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 -1, ptr %10, align 2, !annotation !55
  %13 = ptrtoint ptr %len.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %len.i.i.i.i.i, align 4
  %15 = ptrtoint ptr %data_len.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %data_len.i.i.i.i.i, align 8
  %17 = add i32 %vlan_depth.1.i.i.i, %16
  %sub.i1.i.i.i.i = sub i32 %14, %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub.i1.i.i.i.i)
  %cmp.i.i.i.i.i = icmp sgt i32 %sub.i1.i.i.i.i, 3
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i.i.i.i, label %if.end.i.i.i.i.i, !prof !56

if.then.i.i.i.i.i:                                ; preds = %do.body27.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data.i.i.i.i, align 4
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %19, i32 %vlan_depth.1.i.i.i
  br label %skb_header_pointer.exit.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %do.body27.i.i.i
  br i1 %tobool2.not.i.i.i.i.i, label %if.end.i.i.i.i.i.cleanup.thread.i.i.i_crit_edge, label %lor.lhs.false.i.i.i.i.i

if.end.i.i.i.i.i.cleanup.thread.i.i.i_crit_edge:  ; preds = %if.end.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread.i.i.i

lor.lhs.false.i.i.i.i.i:                          ; preds = %if.end.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %vlan_depth.1.i.i.i, ptr noundef nonnull %vhdr.i.i.i, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i.i)
  %cmp3.i.i.i.i.i = icmp slt i32 %call.i.i.i.i.i, 0
  %spec.select.i.i.i.i.i = select i1 %cmp3.i.i.i.i.i, ptr null, ptr %vhdr.i.i.i, !prof !54
  br label %skb_header_pointer.exit.i.i.i

skb_header_pointer.exit.i.i.i:                    ; preds = %lor.lhs.false.i.i.i.i.i, %if.then.i.i.i.i.i
  %retval.0.i.i.i.i.i = phi ptr [ %add.ptr.i.i.i.i.i, %if.then.i.i.i.i.i ], [ %spec.select.i.i.i.i.i, %lor.lhs.false.i.i.i.i.i ]
  %tobool29.not.i.i.i = icmp eq ptr %retval.0.i.i.i.i.i, null
  %dec.i.i.i = add nsw i32 %parse_depth.0.i.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i.i)
  %tobool30.not.i.i.i = icmp eq i32 %dec.i.i.i, 0
  %20 = select i1 %tobool29.not.i.i.i, i1 true, i1 %tobool30.not.i.i.i, !prof !54
  br i1 %20, label %skb_header_pointer.exit.i.i.i.cleanup.thread.i.i.i_crit_edge, label %do.cond42.i.i.i, !prof !54

skb_header_pointer.exit.i.i.i.cleanup.thread.i.i.i_crit_edge: ; preds = %skb_header_pointer.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread.i.i.i

cleanup.thread.i.i.i:                             ; preds = %skb_header_pointer.exit.i.i.i.cleanup.thread.i.i.i_crit_edge, %if.end.i.i.i.i.i.cleanup.thread.i.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vhdr.i.i.i) #8
  br label %skb_protocol.exit

do.cond42.i.i.i:                                  ; preds = %skb_header_pointer.exit.i.i.i
  %h_vlan_encapsulated_proto.i.i.i = getelementptr inbounds %struct.vlan_hdr, ptr %retval.0.i.i.i.i.i, i32 0, i32 1
  %21 = ptrtoint ptr %h_vlan_encapsulated_proto.i.i.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %h_vlan_encapsulated_proto.i.i.i, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vhdr.i.i.i) #8
  %23 = zext i16 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.19)
  switch i16 %22, label %do.cond42.i.i.i.skb_protocol.exit_crit_edge [
    i16 -30552, label %do.cond42.i.i.i.do.body27.backedge.i.i.i_crit_edge
    i16 -32512, label %do.cond42.i.i.i.do.body27.backedge.i.i.i_crit_edge8
  ]

do.cond42.i.i.i.do.body27.backedge.i.i.i_crit_edge8: ; preds = %do.cond42.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body27.backedge.i.i.i

do.cond42.i.i.i.do.body27.backedge.i.i.i_crit_edge: ; preds = %do.cond42.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body27.backedge.i.i.i

do.cond42.i.i.i.skb_protocol.exit_crit_edge:      ; preds = %do.cond42.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %skb_protocol.exit

do.body27.backedge.i.i.i:                         ; preds = %do.cond42.i.i.i.do.body27.backedge.i.i.i_crit_edge, %do.cond42.i.i.i.do.body27.backedge.i.i.i_crit_edge8
  %add.i.i.i = add nsw i32 %vlan_depth.1.i.i.i, 4
  br label %do.body27.i.i.i

skb_protocol.exit:                                ; preds = %do.cond42.i.i.i.skb_protocol.exit_crit_edge, %cleanup.thread.i.i.i, %do.end.i.i.i, %skb_dst.exit.skb_protocol.exit_crit_edge
  %retval.2.i.i.i = phi i16 [ 0, %do.end.i.i.i ], [ %6, %skb_dst.exit.skb_protocol.exit_crit_edge ], [ 0, %cleanup.thread.i.i.i ], [ %22, %do.cond42.i.i.i.skb_protocol.exit_crit_edge ]
  %conv = zext i16 %retval.2.i.i.i to i32
  %xor = xor i32 %and25.i, %conv
  br label %cleanup

cleanup:                                          ; preds = %skb_protocol.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %xor, %skb_protocol.exit ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @flow_get_proto_dst(ptr noundef %skb, ptr nocapture noundef readonly %flow) unnamed_addr #2 align 64 {
entry:
  %vhdr.i.i.i = alloca %struct.vlan_hdr, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ports = getelementptr inbounds %struct.flow_keys, ptr %flow, i32 0, i32 6
  %0 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dst = getelementptr inbounds %struct.anon.163, ptr %ports, i32 0, i32 1
  %2 = ptrtoint ptr %dst to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %dst, align 2
  %conv = zext i16 %3 to i32
  br label %return

if.end:                                           ; preds = %entry
  %4 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 8
  %and.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.skb_dst.exit_crit_edge, label %land.lhs.true.i

if.end.skb_dst.exit_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %skb_dst.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call.i = tail call i32 @rcu_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %land.rhs.i, label %land.lhs.true.i.skb_dst.exit_crit_edge

land.lhs.true.i.skb_dst.exit_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %skb_dst.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %call2.i = tail call i32 @rcu_read_lock_bh_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %do.end.i, label %land.rhs.i.skb_dst.exit_crit_edge, !prof !54

land.rhs.i.skb_dst.exit_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %skb_dst.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1013, i32 noundef 9, ptr noundef null) #8
  br label %skb_dst.exit

skb_dst.exit:                                     ; preds = %do.end.i, %land.rhs.i.skb_dst.exit_crit_edge, %land.lhs.true.i.skb_dst.exit_crit_edge, %if.end.skb_dst.exit_crit_edge
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %4, align 8
  %and25.i = and i32 %8, -2
  %protocol.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %9 = ptrtoint ptr %protocol.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %protocol.i.i, align 8
  %mac_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 8
  %11 = ptrtoint ptr %mac_len.i.i.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %mac_len.i.i.i, align 4
  %conv.i.i.i = zext i16 %12 to i32
  %13 = zext i16 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.20)
  switch i16 %10, label %skb_dst.exit.skb_protocol.exit_crit_edge [
    i16 -30552, label %skb_dst.exit.if.then.i.i.i_crit_edge
    i16 -32512, label %skb_dst.exit.if.then.i.i.i_crit_edge8
  ]

skb_dst.exit.if.then.i.i.i_crit_edge8:            ; preds = %skb_dst.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i.i

skb_dst.exit.if.then.i.i.i_crit_edge:             ; preds = %skb_dst.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i.i

skb_dst.exit.skb_protocol.exit_crit_edge:         ; preds = %skb_dst.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %skb_protocol.exit

if.then.i.i.i:                                    ; preds = %skb_dst.exit.if.then.i.i.i_crit_edge, %skb_dst.exit.if.then.i.i.i_crit_edge8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool.not.i.i.i = icmp eq i16 %12, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i.if.end26.i.i.i_crit_edge, label %if.then1.i.i.i

if.then.i.i.i.if.end26.i.i.i_crit_edge:           ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26.i.i.i

if.then1.i.i.i:                                   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %12)
  %cmp.i.i.i = icmp ult i16 %12, 4
  br i1 %cmp.i.i.i, label %do.end.i.i.i, label %if.end25.i.i.i, !prof !54

do.end.i.i.i:                                     ; preds = %if.then1.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 598, i32 noundef 9, ptr noundef null) #8
  br label %skb_protocol.exit

if.end25.i.i.i:                                   ; preds = %if.then1.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i.i = add nsw i32 %conv.i.i.i, -4
  br label %if.end26.i.i.i

if.end26.i.i.i:                                   ; preds = %if.end25.i.i.i, %if.then.i.i.i.if.end26.i.i.i_crit_edge
  %vlan_depth.0.i.i.i = phi i32 [ %sub.i.i.i, %if.end25.i.i.i ], [ 14, %if.then.i.i.i.if.end26.i.i.i_crit_edge ]
  %14 = getelementptr inbounds %struct.vlan_hdr, ptr %vhdr.i.i.i, i32 0, i32 1
  %len.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %data_len.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %tobool2.not.i.i.i.i.i = icmp eq ptr %skb, null
  %data.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  br label %do.body27.i.i.i

do.body27.i.i.i:                                  ; preds = %do.body27.backedge.i.i.i, %if.end26.i.i.i
  %vlan_depth.1.i.i.i = phi i32 [ %vlan_depth.0.i.i.i, %if.end26.i.i.i ], [ %add.i.i.i, %do.body27.backedge.i.i.i ]
  %parse_depth.0.i.i.i = phi i32 [ 8, %if.end26.i.i.i ], [ %dec.i.i.i, %do.body27.backedge.i.i.i ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vhdr.i.i.i) #8
  %15 = ptrtoint ptr %vhdr.i.i.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 -1, ptr %vhdr.i.i.i, align 2, !annotation !55
  %16 = ptrtoint ptr %14 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 -1, ptr %14, align 2, !annotation !55
  %17 = ptrtoint ptr %len.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %len.i.i.i.i.i, align 4
  %19 = ptrtoint ptr %data_len.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %data_len.i.i.i.i.i, align 8
  %21 = add i32 %vlan_depth.1.i.i.i, %20
  %sub.i1.i.i.i.i = sub i32 %18, %21
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub.i1.i.i.i.i)
  %cmp.i.i.i.i.i = icmp sgt i32 %sub.i1.i.i.i.i, 3
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i.i.i.i, label %if.end.i.i.i.i.i, !prof !56

if.then.i.i.i.i.i:                                ; preds = %do.body27.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %data.i.i.i.i, align 4
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %23, i32 %vlan_depth.1.i.i.i
  br label %skb_header_pointer.exit.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %do.body27.i.i.i
  br i1 %tobool2.not.i.i.i.i.i, label %if.end.i.i.i.i.i.cleanup.thread.i.i.i_crit_edge, label %lor.lhs.false.i.i.i.i.i

if.end.i.i.i.i.i.cleanup.thread.i.i.i_crit_edge:  ; preds = %if.end.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread.i.i.i

lor.lhs.false.i.i.i.i.i:                          ; preds = %if.end.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %vlan_depth.1.i.i.i, ptr noundef nonnull %vhdr.i.i.i, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i.i)
  %cmp3.i.i.i.i.i = icmp slt i32 %call.i.i.i.i.i, 0
  %spec.select.i.i.i.i.i = select i1 %cmp3.i.i.i.i.i, ptr null, ptr %vhdr.i.i.i, !prof !54
  br label %skb_header_pointer.exit.i.i.i

skb_header_pointer.exit.i.i.i:                    ; preds = %lor.lhs.false.i.i.i.i.i, %if.then.i.i.i.i.i
  %retval.0.i.i.i.i.i = phi ptr [ %add.ptr.i.i.i.i.i, %if.then.i.i.i.i.i ], [ %spec.select.i.i.i.i.i, %lor.lhs.false.i.i.i.i.i ]
  %tobool29.not.i.i.i = icmp eq ptr %retval.0.i.i.i.i.i, null
  %dec.i.i.i = add nsw i32 %parse_depth.0.i.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i.i)
  %tobool30.not.i.i.i = icmp eq i32 %dec.i.i.i, 0
  %24 = select i1 %tobool29.not.i.i.i, i1 true, i1 %tobool30.not.i.i.i, !prof !54
  br i1 %24, label %skb_header_pointer.exit.i.i.i.cleanup.thread.i.i.i_crit_edge, label %do.cond42.i.i.i, !prof !54

skb_header_pointer.exit.i.i.i.cleanup.thread.i.i.i_crit_edge: ; preds = %skb_header_pointer.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread.i.i.i

cleanup.thread.i.i.i:                             ; preds = %skb_header_pointer.exit.i.i.i.cleanup.thread.i.i.i_crit_edge, %if.end.i.i.i.i.i.cleanup.thread.i.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vhdr.i.i.i) #8
  br label %skb_protocol.exit

do.cond42.i.i.i:                                  ; preds = %skb_header_pointer.exit.i.i.i
  %h_vlan_encapsulated_proto.i.i.i = getelementptr inbounds %struct.vlan_hdr, ptr %retval.0.i.i.i.i.i, i32 0, i32 1
  %25 = ptrtoint ptr %h_vlan_encapsulated_proto.i.i.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %h_vlan_encapsulated_proto.i.i.i, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vhdr.i.i.i) #8
  %27 = zext i16 %26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.21)
  switch i16 %26, label %do.cond42.i.i.i.skb_protocol.exit_crit_edge [
    i16 -30552, label %do.cond42.i.i.i.do.body27.backedge.i.i.i_crit_edge
    i16 -32512, label %do.cond42.i.i.i.do.body27.backedge.i.i.i_crit_edge9
  ]

do.cond42.i.i.i.do.body27.backedge.i.i.i_crit_edge9: ; preds = %do.cond42.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body27.backedge.i.i.i

do.cond42.i.i.i.do.body27.backedge.i.i.i_crit_edge: ; preds = %do.cond42.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body27.backedge.i.i.i

do.cond42.i.i.i.skb_protocol.exit_crit_edge:      ; preds = %do.cond42.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %skb_protocol.exit

do.body27.backedge.i.i.i:                         ; preds = %do.cond42.i.i.i.do.body27.backedge.i.i.i_crit_edge, %do.cond42.i.i.i.do.body27.backedge.i.i.i_crit_edge9
  %add.i.i.i = add nsw i32 %vlan_depth.1.i.i.i, 4
  br label %do.body27.i.i.i

skb_protocol.exit:                                ; preds = %do.cond42.i.i.i.skb_protocol.exit_crit_edge, %cleanup.thread.i.i.i, %do.end.i.i.i, %skb_dst.exit.skb_protocol.exit_crit_edge
  %retval.2.i.i.i = phi i16 [ 0, %do.end.i.i.i ], [ %10, %skb_dst.exit.skb_protocol.exit_crit_edge ], [ 0, %cleanup.thread.i.i.i ], [ %26, %do.cond42.i.i.i.skb_protocol.exit_crit_edge ]
  %conv4 = zext i16 %retval.2.i.i.i to i32
  %xor = xor i32 %and25.i, %conv4
  br label %return

return:                                           ; preds = %skb_protocol.exit, %if.then
  %retval.0 = phi i32 [ %conv, %if.then ], [ %xor, %skb_protocol.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @flow_get_u32_src(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @flow_get_u32_dst(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kuid(ptr noundef, [1 x i32]) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kgid(ptr noundef, [1 x i32]) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__skb_get_hash(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcf_action_exec(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @lockdep_rtnl_is_held() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @tcf_exts_get_net(ptr noundef %exts) unnamed_addr #6 align 64 {
entry:
  %old.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  %net = getelementptr inbounds %struct.tcf_exts, ptr %exts, i32 0, i32 3
  %0 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net, align 4
  %count.i = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 14, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i) #8
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %count.i, i32 noundef 4) #8
  %2 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %count.i, align 4
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, %entry
  %4 = phi i32 [ %3, %entry ], [ %asmresult3.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge ]
  %5 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %old.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i.i.i.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i.i.i.i, label %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %do.cond.i.i.i.i

do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.i.i.i.i

do.cond.i.i.i.i:                                  ; preds = %do.body.i.i.i.i
  %add.i.i.i.i = add i32 %4, 1
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %count.i, i32 noundef 4) #8
  %call.i3.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i, i32 noundef 4) #8
  %6 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %old.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %count.i, i32 1, i32 3, i32 1) #8
  br label %do.body.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i:                            ; preds = %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i
  %8 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %count.i, ptr %count.i, i32 %7, i32 %add.i.i.i.i, ptr elementtype(i32) %count.i) #8, !srcloc !59
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %8, 0
  %tobool.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i:     ; preds = %do.body.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i = extractvalue { i32, i32 } %8, 1
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i, %7
  br i1 %cmp.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, !prof !56

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.i.i.i.i

if.end4.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge
  %9 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %old.i.i.i.i, align 4
  %add5.i.i.i.i = add i32 %10, 1
  %11 = or i32 %add5.i.i.i.i, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %.not.i.i.i.i = icmp sgt i32 %11, -1
  br i1 %.not.i.i.i.i, label %if.end4.i.i.i.i.maybe_get_net.exit_crit_edge, label %if.then10.i.i.i.i, !prof !56

if.end4.i.i.i.i.maybe_get_net.exit_crit_edge:     ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %maybe_get_net.exit

if.then10.i.i.i.i:                                ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @refcount_warn_saturate(ptr noundef %count.i, i32 noundef 0) #8
  br label %maybe_get_net.exit

maybe_get_net.exit:                               ; preds = %if.then10.i.i.i.i, %if.end4.i.i.i.i.maybe_get_net.exit_crit_edge
  %12 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %old.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool12.i.i.i.not.i = icmp eq i32 %13, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i) #8
  %spec.select.i = select i1 %tobool12.i.i.i.not.i, ptr null, ptr %1
  %14 = ptrtoint ptr %net to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %spec.select.i, ptr %net, align 4
  %tobool.not = icmp eq ptr %spec.select.i, null
  br i1 %tobool.not, label %maybe_get_net.exit.if.end_crit_edge, label %if.then

maybe_get_net.exit.if.end_crit_edge:              ; preds = %maybe_get_net.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %maybe_get_net.exit
  call void @__sanitizer_cov_trace_pc() #10
  %ns_tracker = getelementptr inbounds %struct.tcf_exts, ptr %exts, i32 0, i32 4
  %refcnt_tracker.i = getelementptr inbounds %struct.net, ptr %spec.select.i, i32 0, i32 15
  %call.i = call i32 @ref_tracker_alloc(ptr noundef %refcnt_tracker.i, ptr noundef %ns_tracker, i32 noundef 3264) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %maybe_get_net.exit.if.end_crit_edge
  %15 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %net, align 4
  %cmp = icmp ne ptr %16, null
  ret i1 %cmp
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @tcf_queue_work(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @flow_destroy_filter_work(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -144
  tail call void @rtnl_lock() #8
  tail call fastcc void @__flow_destroy_filter(ptr noundef %add.ptr)
  tail call void @rtnl_unlock() #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__flow_destroy_filter(ptr noundef %f) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %perturb_timer = getelementptr inbounds %struct.flow_filter, ptr %f, i32 0, i32 4
  %call = tail call i32 @del_timer_sync(ptr noundef %perturb_timer) #8
  %exts = getelementptr inbounds %struct.flow_filter, ptr %f, i32 0, i32 1
  tail call void @tcf_exts_destroy(ptr noundef %exts) #8
  %ematches = getelementptr inbounds %struct.flow_filter, ptr %f, i32 0, i32 2
  tail call void @tcf_em_tree_destroy(ptr noundef %ematches) #8
  %net.i = getelementptr inbounds %struct.flow_filter, ptr %f, i32 0, i32 1, i32 3
  %0 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.tcf_exts_put_net.exit_crit_edge, label %if.then.i

entry.tcf_exts_put_net.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %tcf_exts_put_net.exit

if.then.i:                                        ; preds = %entry
  %ns_tracker.i = getelementptr inbounds %struct.flow_filter, ptr %f, i32 0, i32 1, i32 4
  %refcnt_tracker.i.i.i = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 15
  %call.i.i.i = tail call i32 @ref_tracker_free(ptr noundef %refcnt_tracker.i.i.i, ptr noundef %ns_tracker.i) #8
  %count.i.i.i = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 14, i32 3
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i.i.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !60
  tail call void @llvm.prefetch.p0(ptr %count.i.i.i, i32 1, i32 3, i32 1) #8
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i.i.i, ptr %count.i.i.i, i32 1, ptr elementtype(i32) %count.i.i.i) #8, !srcloc !61
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.tcf_exts_put_net.exit_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !56

if.end5.i.i.i.i.i.i.tcf_exts_put_net.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tcf_exts_put_net.exit

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef %count.i.i.i, i32 noundef 3) #8
  br label %tcf_exts_put_net.exit

if.then.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !62
  tail call void @__put_net(ptr noundef nonnull %1) #8
  br label %tcf_exts_put_net.exit

tcf_exts_put_net.exit:                            ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.tcf_exts_put_net.exit_crit_edge, %entry.tcf_exts_put_net.exit_crit_edge
  tail call void @kfree(ptr noundef %f) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ref_tracker_alloc(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcf_exts_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcf_em_tree_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ref_tracker_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_net(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcf_em_tree_validate(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcf_exts_validate(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @flow_perturbation(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hashrnd = getelementptr i8, ptr %t, i32 92
  tail call void @get_random_bytes(ptr noundef %hashrnd, i32 noundef 4) #8
  %perturb_period = getelementptr i8, ptr %t, i32 48
  %0 = ptrtoint ptr %perturb_period to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %perturb_period, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %2, %1
  %call = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %add) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcf_block_netif_keep_dst(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @list_add_tail_rcu(ptr noundef %new, ptr noundef %head) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %prev = getelementptr inbounds %struct.list_head, ptr %head, i32 0, i32 1
  %0 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev, align 4
  %call.i = tail call zeroext i1 @__list_add_valid(ptr noundef %new, ptr noundef %1, ptr noundef %head) #8
  br i1 %call.i, label %if.end.i, label %entry.__list_add_rcu.exit_crit_edge

entry.__list_add_rcu.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %__list_add_rcu.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %new to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %head, ptr %new, align 4
  %prev2.i = getelementptr inbounds %struct.list_head, ptr %new, i32 0, i32 1
  %3 = ptrtoint ptr %prev2.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %1, ptr %prev2.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !63
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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__nla_parse(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight32(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcf_exts_dump(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcf_em_tree_dump(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcf_exts_dump_stats(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_tcf_proto_ops(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !16, !17, !19, !20, !22, !24, !26, !27, !29, !31, !33, !34, !36, !38, !40, !42}
!llvm.module.flags = !{!44, !45, !46, !47, !48, !49, !50, !51}
!llvm.ident = !{!52}

!0 = !{ptr @__initcall__kmod_cls_flow__620_720_cls_flow_init6, !1, !"__initcall__kmod_cls_flow__620_720_cls_flow_init6", i1 false, i1 false}
!1 = !{!"../net/sched/cls_flow.c", i32 720, i32 1}
!2 = !{ptr @__exitcall_cls_flow_exit, !3, !"__exitcall_cls_flow_exit", i1 false, i1 false}
!3 = !{!"../net/sched/cls_flow.c", i32 721, i32 1}
!4 = !{ptr @__UNIQUE_ID_file621, !5, !"__UNIQUE_ID_file621", i1 false, i1 false}
!5 = !{!"../net/sched/cls_flow.c", i32 723, i32 1}
!6 = !{ptr @__UNIQUE_ID_license622, !5, !"__UNIQUE_ID_license622", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_author623, !8, !"__UNIQUE_ID_author623", i1 false, i1 false}
!8 = !{!"../net/sched/cls_flow.c", i32 724, i32 1}
!9 = !{ptr @__UNIQUE_ID_description624, !10, !"__UNIQUE_ID_description624", i1 false, i1 false}
!10 = !{!"../net/sched/cls_flow.c", i32 725, i32 1}
!11 = !{ptr @cls_flow_ops, !12, !"cls_flow_ops", i1 false, i1 false}
!12 = !{!"../net/sched/cls_flow.c", i32 697, i32 29}
!13 = distinct !{null, !14, !"__warned", i1 false, i1 false}
!14 = !{!"../net/sched/cls_flow.c", i32 298, i32 27}
!15 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!17 = distinct !{null, !18, !"__warned", i1 false, i1 false}
!18 = !{!"../net/sched/cls_flow.c", i32 305, i32 2}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../include/linux/skbuff.h", i32 1011, i32 2}
!22 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../include/linux/if_vlan.h", i32 598, i32 8}
!24 = distinct !{null, !25, !"__warned", i1 false, i1 false}
!25 = !{!"../net/sched/cls_flow.c", i32 594, i32 27}
!26 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!27 = distinct !{null, !28, !"__warned", i1 false, i1 false}
!28 = !{!"../net/sched/cls_flow.c", i32 609, i32 27}
!29 = distinct !{null, !30, !"__warned", i1 false, i1 false}
!30 = !{!"../net/sched/cls_flow.c", i32 393, i32 27}
!31 = !{ptr @flow_change.__key, !32, !"__key", i1 false, i1 false}
!32 = !{!"../net/sched/cls_flow.c", i32 516, i32 2}
!33 = !{ptr @.str.7, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @flow_policy, !35, !"flow_policy", i1 false, i1 false}
!35 = !{!"../net/sched/cls_flow.c", i32 353, i32 32}
!36 = !{ptr @.str.8, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../include/net/pkt_cls.h", i32 75, i32 2}
!38 = distinct !{null, !39, !"__warned", i1 false, i1 false}
!39 = !{!"../net/sched/cls_flow.c", i32 569, i32 27}
!40 = distinct !{null, !41, !"__warned", i1 false, i1 false}
!41 = !{!"../net/sched/cls_flow.c", i32 682, i32 27}
!42 = !{ptr @.str.9, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../include/net/netlink.h", i32 991, i32 3}
!44 = !{i32 1, !"wchar_size", i32 2}
!45 = !{i32 1, !"min_enum_size", i32 4}
!46 = !{i32 8, !"branch-target-enforcement", i32 0}
!47 = !{i32 8, !"sign-return-address", i32 0}
!48 = !{i32 8, !"sign-return-address-all", i32 0}
!49 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!50 = !{i32 7, !"uwtable", i32 1}
!51 = !{i32 7, !"frame-pointer", i32 2}
!52 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!53 = !{i32 0, i32 33}
!54 = !{!"branch_weights", i32 1, i32 2000}
!55 = !{!"auto-init"}
!56 = !{!"branch_weights", i32 2000, i32 1}
!57 = !{i64 2158378610}
!58 = !{i64 2149800508}
!59 = !{i64 708377, i64 708401, i64 708422, i64 708439, i64 708456}
!60 = !{i64 2148314172}
!61 = !{i64 2148228636, i64 2148228668, i64 2148228697, i64 2148228731, i64 2148228762, i64 2148228785}
!62 = !{i64 2150632730}
!63 = !{i64 2149786580}
